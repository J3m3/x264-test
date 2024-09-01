	.text
	.file	"predict.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/common/predict.c" md5 0xaa72259b82ac6d1e4f1a8e559ed0b630
	.file	1 "x264_src/common" "predict.h" md5 0x5f9c3dfea82ca04aa9f99900c2f3609a
	.file	2 "x264_src/common" "macroblock.h" md5 0x15f4a9c1d53f4196a5f2b80807bb8b1a
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "x264_src/common" "common.h" md5 0x5afac7bf2f5673f1628c455d7d320ad7
	.globl	x264_predict_16x16_init         # -- Begin function x264_predict_16x16_init
	.p2align	4, 0x90
	.type	x264_predict_16x16_init,@function
x264_predict_16x16_init:                # @x264_predict_16x16_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_predict_16x16_init:cpu <- $edi
	#DEBUG_VALUE: x264_predict_16x16_init:pf <- $rsi
	.loc	0 712 29 prologue_end           # x264_src/common/predict.c:712:29
	movq	$predict_16x16_v, (%rsi)
	.loc	0 713 29                        # x264_src/common/predict.c:713:29
	movq	$predict_16x16_h, 8(%rsi)
	.loc	0 714 29                        # x264_src/common/predict.c:714:29
	movq	$predict_16x16_dc, 16(%rsi)
	.loc	0 715 29                        # x264_src/common/predict.c:715:29
	movq	$predict_16x16_p, 24(%rsi)
	.loc	0 716 29                        # x264_src/common/predict.c:716:29
	movq	$predict_16x16_dc_left, 32(%rsi)
	.loc	0 717 29                        # x264_src/common/predict.c:717:29
	movq	$predict_16x16_dc_top, 40(%rsi)
	.loc	0 718 29                        # x264_src/common/predict.c:718:29
	movq	$predict_16x16_dc_128, 48(%rsi)
	.loc	0 732 1                         # x264_src/common/predict.c:732:1
	retq
.Ltmp0:
.Lfunc_end0:
	.size	x264_predict_16x16_init, .Lfunc_end0-x264_predict_16x16_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_v
	.type	predict_16x16_v,@function
predict_16x16_v:                        # @predict_16x16_v
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_v:src <- $rdi
	.loc	0 105 19 prologue_end           # x264_src/common/predict.c:105:19
	movl	-32(%rdi), %eax
.Ltmp1:
	#DEBUG_VALUE: predict_16x16_v:v0 <- $eax
	.loc	0 106 19                        # x264_src/common/predict.c:106:19
	movl	-28(%rdi), %ecx
.Ltmp2:
	#DEBUG_VALUE: predict_16x16_v:v1 <- $ecx
	.loc	0 107 19                        # x264_src/common/predict.c:107:19
	movl	-24(%rdi), %edx
.Ltmp3:
	#DEBUG_VALUE: predict_16x16_v:v2 <- $edx
	.loc	0 108 19                        # x264_src/common/predict.c:108:19
	movl	-20(%rdi), %esi
.Ltmp4:
	#DEBUG_VALUE: predict_16x16_v:v3 <- $esi
	#DEBUG_VALUE: i <- 0
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, (%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 4(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 8(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 12(%rdi)
.Ltmp5:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 32(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 36(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 40(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 44(%rdi)
.Ltmp6:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 64(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 68(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 72(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 76(%rdi)
.Ltmp7:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 96(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 100(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 104(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 108(%rdi)
.Ltmp8:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 128(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 132(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 136(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 140(%rdi)
.Ltmp9:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 160(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 164(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 168(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 172(%rdi)
.Ltmp10:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 192(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 196(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 200(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 204(%rdi)
.Ltmp11:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 224(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 228(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 232(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 236(%rdi)
.Ltmp12:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 256(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 260(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 264(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 268(%rdi)
.Ltmp13:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 288(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 292(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 296(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 300(%rdi)
.Ltmp14:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 320(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 324(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 328(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 332(%rdi)
.Ltmp15:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 352(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 356(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 360(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 364(%rdi)
.Ltmp16:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 384(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 388(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 392(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 396(%rdi)
.Ltmp17:
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 416(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 420(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 424(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 428(%rdi)
.Ltmp18:
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 448(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 452(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 456(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 460(%rdi)
.Ltmp19:
	#DEBUG_VALUE: i <- 15
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 480, DW_OP_stack_value] $rdi
	.loc	0 112 23                        # x264_src/common/predict.c:112:23
	movl	%eax, 480(%rdi)
	.loc	0 113 23                        # x264_src/common/predict.c:113:23
	movl	%ecx, 484(%rdi)
	.loc	0 114 23                        # x264_src/common/predict.c:114:23
	movl	%edx, 488(%rdi)
	.loc	0 115 23                        # x264_src/common/predict.c:115:23
	movl	%esi, 492(%rdi)
.Ltmp20:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_v:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 118 1                         # x264_src/common/predict.c:118:1
	retq
.Ltmp21:
.Lfunc_end1:
	.size	predict_16x16_v, .Lfunc_end1-predict_16x16_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_h
	.type	predict_16x16_h,@function
predict_16x16_h:                        # @predict_16x16_h
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_h:src <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 95 41 prologue_end            # x264_src/common/predict.c:95:41
	movzbl	-1(%rdi), %eax
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp22:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
.Ltmp23:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	31(%rdi), %eax
.Ltmp24:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp25:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 32(%rdi)
.Ltmp26:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	63(%rdi), %eax
.Ltmp27:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp28:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 64(%rdi)
.Ltmp29:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	95(%rdi), %eax
.Ltmp30:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp31:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 96(%rdi)
.Ltmp32:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	127(%rdi), %eax
.Ltmp33:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp34:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 128(%rdi)
.Ltmp35:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	159(%rdi), %eax
.Ltmp36:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp37:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 160(%rdi)
.Ltmp38:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	191(%rdi), %eax
.Ltmp39:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp40:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 192(%rdi)
.Ltmp41:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	223(%rdi), %eax
.Ltmp42:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp43:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 224(%rdi)
.Ltmp44:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	255(%rdi), %eax
.Ltmp45:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp46:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 256(%rdi)
.Ltmp47:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	287(%rdi), %eax
.Ltmp48:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp49:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 288(%rdi)
.Ltmp50:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	319(%rdi), %eax
.Ltmp51:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp52:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 320(%rdi)
.Ltmp53:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	351(%rdi), %eax
.Ltmp54:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp55:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 352(%rdi)
.Ltmp56:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	383(%rdi), %eax
.Ltmp57:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp58:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 384(%rdi)
.Ltmp59:
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	415(%rdi), %eax
.Ltmp60:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp61:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 416(%rdi)
.Ltmp62:
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	447(%rdi), %eax
.Ltmp63:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp64:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 448(%rdi)
.Ltmp65:
	#DEBUG_VALUE: i <- 15
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 480, DW_OP_stack_value] $rdi
	.loc	0 95 41                         # x264_src/common/predict.c:95:41
	movzbl	479(%rdi), %eax
.Ltmp66:
	.loc	0 95 39 is_stmt 0               # x264_src/common/predict.c:95:39
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp67:
	#DEBUG_VALUE: v <- $eax
	.loc	0 96 23 is_stmt 1               # x264_src/common/predict.c:96:23
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 480(%rdi)
.Ltmp68:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_h:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 102 1                         # x264_src/common/predict.c:102:1
	retq
.Ltmp69:
.Lfunc_end2:
	.size	predict_16x16_h, .Lfunc_end2-predict_16x16_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc
	.type	predict_16x16_dc,@function
predict_16x16_dc:                       # @predict_16x16_dc
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_dc:src <- $rdi
	#DEBUG_VALUE: predict_16x16_dc:dc <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 60 15 prologue_end            # x264_src/common/predict.c:60:15
	movzbl	-1(%rdi), %eax
.Ltmp70:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $eax
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-32(%rdi), %ecx
	.loc	0 61 12 is_stmt 0               # x264_src/common/predict.c:61:12
	addl	%eax, %ecx
.Ltmp71:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $ecx
	#DEBUG_VALUE: i <- 1
	.loc	0 60 15 is_stmt 1               # x264_src/common/predict.c:60:15
	movzbl	31(%rdi), %eax
.Ltmp72:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-31(%rdi), %edx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%eax, %edx
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%ecx, %edx
.Ltmp73:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $edx
	#DEBUG_VALUE: i <- 2
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	63(%rdi), %eax
.Ltmp74:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-30(%rdi), %ecx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp75:
	#DEBUG_VALUE: i <- 3
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	95(%rdi), %eax
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%ecx, %eax
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%edx, %eax
.Ltmp76:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $eax
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-29(%rdi), %ecx
.Ltmp77:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	#DEBUG_VALUE: i <- 4
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	127(%rdi), %edx
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%ecx, %edx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-28(%rdi), %ecx
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%edx, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp78:
	#DEBUG_VALUE: i <- 5
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	159(%rdi), %edx
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%ecx, %edx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%eax, %edx
.Ltmp79:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $edx
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-27(%rdi), %eax
.Ltmp80:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	#DEBUG_VALUE: i <- 6
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	191(%rdi), %ecx
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-26(%rdi), %eax
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%ecx, %eax
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp81:
	#DEBUG_VALUE: i <- 7
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	223(%rdi), %ecx
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-25(%rdi), %eax
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%ecx, %eax
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%edx, %eax
.Ltmp82:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $eax
	#DEBUG_VALUE: i <- 8
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	255(%rdi), %ecx
.Ltmp83:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-24(%rdi), %edx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%ecx, %edx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp84:
	#DEBUG_VALUE: i <- 9
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	287(%rdi), %ecx
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%edx, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-23(%rdi), %edx
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%ecx, %edx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp85:
	#DEBUG_VALUE: i <- 10
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	319(%rdi), %ecx
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%edx, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-22(%rdi), %edx
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%ecx, %edx
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%eax, %edx
.Ltmp86:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $edx
	#DEBUG_VALUE: i <- 11
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	351(%rdi), %eax
.Ltmp87:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-21(%rdi), %ecx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp88:
	#DEBUG_VALUE: i <- 12
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	383(%rdi), %eax
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%ecx, %eax
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-20(%rdi), %ecx
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp89:
	#DEBUG_VALUE: i <- 13
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	415(%rdi), %eax
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%ecx, %eax
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	.loc	0 61 15 is_stmt 0               # x264_src/common/predict.c:61:15
	movzbl	-19(%rdi), %ecx
	.loc	0 60 12 is_stmt 1               # x264_src/common/predict.c:60:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
.Ltmp90:
	#DEBUG_VALUE: i <- 14
	.loc	0 60 15 is_stmt 0               # x264_src/common/predict.c:60:15
	movzbl	447(%rdi), %eax
	.loc	0 61 12 is_stmt 1               # x264_src/common/predict.c:61:12
	addl	%ecx, %eax
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%edx, %eax
.Ltmp91:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $eax
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-18(%rdi), %ecx
.Ltmp92:
	#DEBUG_VALUE: predict_16x16_dc:dc <- undef
	#DEBUG_VALUE: i <- 15
	.loc	0 60 15                         # x264_src/common/predict.c:60:15
	movzbl	479(%rdi), %edx
	.loc	0 61 12                         # x264_src/common/predict.c:61:12
	addl	%ecx, %edx
	.loc	0 60 12                         # x264_src/common/predict.c:60:12
	addl	%eax, %edx
.Ltmp93:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $edx
	.loc	0 61 15                         # x264_src/common/predict.c:61:15
	movzbl	-17(%rdi), %eax
.Ltmp94:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc:dc <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $edx, $eax
	.loc	0 63 16                         # x264_src/common/predict.c:63:16
	addl	%edx, %eax
.Ltmp95:
	addl	$16, %eax
	.loc	0 63 23 is_stmt 0               # x264_src/common/predict.c:63:23
	shrl	$5, %eax
	.loc	0 63 29                         # x264_src/common/predict.c:63:29
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp96:
	#DEBUG_VALUE: predict_16x16_dc:dc <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 65 5 is_stmt 1                # x264_src/common/predict.c:65:5
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
.Ltmp97:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 32(%rdi)
.Ltmp98:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 64(%rdi)
.Ltmp99:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 96(%rdi)
.Ltmp100:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 128(%rdi)
.Ltmp101:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 160(%rdi)
.Ltmp102:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 192(%rdi)
.Ltmp103:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 224(%rdi)
.Ltmp104:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 256(%rdi)
.Ltmp105:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 288(%rdi)
.Ltmp106:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 320(%rdi)
.Ltmp107:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 352(%rdi)
.Ltmp108:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 384(%rdi)
.Ltmp109:
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 416(%rdi)
.Ltmp110:
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 448(%rdi)
.Ltmp111:
	#DEBUG_VALUE: i <- 15
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 480, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 480(%rdi)
.Ltmp112:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 66 1                          # x264_src/common/predict.c:66:1
	retq
.Ltmp113:
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
.Lfunc_begin4:
	.loc	0 120 0                         # x264_src/common/predict.c:120:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_p:src <- $rdi
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
.Ltmp114:
	#DEBUG_VALUE: predict_16x16_p:H <- 0
	#DEBUG_VALUE: predict_16x16_p:V <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 126 28 prologue_end           # x264_src/common/predict.c:126:28
	movzbl	-24(%rdi), %eax
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-26(%rdi), %ecx
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%ecx, %eax
.Ltmp115:
	#DEBUG_VALUE: predict_16x16_p:H <- $eax
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	255(%rdi), %ecx
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	191(%rdi), %edx
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%edx, %ecx
.Ltmp116:
	#DEBUG_VALUE: predict_16x16_p:V <- $ecx
	#DEBUG_VALUE: i <- 1
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-23(%rdi), %edx
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-27(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %edx
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	leal	(%rax,%rdx,2), %eax
.Ltmp117:
	#DEBUG_VALUE: predict_16x16_p:H <- $eax
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	287(%rdi), %edx
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	159(%rdi), %esi
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%esi, %edx
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	leal	(%rcx,%rdx,2), %ecx
.Ltmp118:
	#DEBUG_VALUE: predict_16x16_p:V <- $ecx
	#DEBUG_VALUE: i <- 2
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-22(%rdi), %edx
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-28(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %edx
	.loc	0 126 24                        # x264_src/common/predict.c:126:24
	leal	(%rdx,%rdx,2), %edx
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	addl	%eax, %edx
.Ltmp119:
	#DEBUG_VALUE: predict_16x16_p:H <- $edx
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	319(%rdi), %eax
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	127(%rdi), %esi
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%esi, %eax
	.loc	0 127 24                        # x264_src/common/predict.c:127:24
	leal	(%rax,%rax,2), %eax
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	addl	%ecx, %eax
.Ltmp120:
	#DEBUG_VALUE: predict_16x16_p:V <- $eax
	#DEBUG_VALUE: i <- 3
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-21(%rdi), %ecx
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-29(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %ecx
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	leal	(%rdx,%rcx,4), %ecx
.Ltmp121:
	#DEBUG_VALUE: predict_16x16_p:H <- $ecx
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	351(%rdi), %edx
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	95(%rdi), %esi
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%esi, %edx
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	leal	(%rax,%rdx,4), %eax
.Ltmp122:
	#DEBUG_VALUE: predict_16x16_p:V <- $eax
	#DEBUG_VALUE: i <- 4
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-20(%rdi), %edx
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-30(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %edx
	.loc	0 126 24                        # x264_src/common/predict.c:126:24
	leal	(%rdx,%rdx,4), %edx
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	addl	%ecx, %edx
.Ltmp123:
	#DEBUG_VALUE: predict_16x16_p:H <- $edx
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	383(%rdi), %ecx
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	63(%rdi), %esi
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%esi, %ecx
	.loc	0 127 24                        # x264_src/common/predict.c:127:24
	leal	(%rcx,%rcx,4), %ecx
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	addl	%eax, %ecx
.Ltmp124:
	#DEBUG_VALUE: predict_16x16_p:V <- $ecx
	#DEBUG_VALUE: i <- 5
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-19(%rdi), %eax
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-31(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %eax
	.loc	0 126 24                        # x264_src/common/predict.c:126:24
	leal	(%rax,%rax,2), %eax
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	leal	(%rdx,%rax,2), %eax
.Ltmp125:
	#DEBUG_VALUE: predict_16x16_p:H <- $eax
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	415(%rdi), %edx
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	31(%rdi), %esi
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%esi, %edx
	.loc	0 127 24                        # x264_src/common/predict.c:127:24
	leal	(%rdx,%rdx,2), %edx
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	leal	(%rcx,%rdx,2), %ecx
.Ltmp126:
	#DEBUG_VALUE: predict_16x16_p:V <- $ecx
	#DEBUG_VALUE: i <- 6
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-18(%rdi), %edx
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-32(%rdi), %esi
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	subl	%esi, %edx
	.loc	0 126 24                        # x264_src/common/predict.c:126:24
	leal	(,%rdx,8), %esi
	subl	%edx, %esi
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	addl	%eax, %esi
.Ltmp127:
	#DEBUG_VALUE: predict_16x16_p:H <- $esi
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	447(%rdi), %eax
	.loc	0 127 58 is_stmt 0              # x264_src/common/predict.c:127:58
	movzbl	-1(%rdi), %edx
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%edx, %eax
	.loc	0 127 24                        # x264_src/common/predict.c:127:24
	leal	(,%rax,8), %edx
	subl	%eax, %edx
	.loc	0 127 11                        # x264_src/common/predict.c:127:11
	addl	%ecx, %edx
.Ltmp128:
	#DEBUG_VALUE: predict_16x16_p:V <- $edx
	#DEBUG_VALUE: i <- 7
	.loc	0 126 28 is_stmt 1              # x264_src/common/predict.c:126:28
	movzbl	-17(%rdi), %eax
	.loc	0 126 57 is_stmt 0              # x264_src/common/predict.c:126:57
	movzbl	-33(%rdi), %ecx
	.loc	0 126 55                        # x264_src/common/predict.c:126:55
	movl	%eax, %r8d
	subl	%ecx, %r8d
	.loc	0 126 11                        # x264_src/common/predict.c:126:11
	leal	(%rsi,%r8,8), %esi
.Ltmp129:
	#DEBUG_VALUE: predict_16x16_p:H <- $esi
	.loc	0 127 28 is_stmt 1              # x264_src/common/predict.c:127:28
	movzbl	479(%rdi), %r8d
.Ltmp130:
	#DEBUG_VALUE: predict_16x16_p:V <- undef
	#DEBUG_VALUE: i <- 8
	.loc	0 130 45                        # x264_src/common/predict.c:130:45
	addl	%r8d, %eax
                                        # kill: def $r8d killed $r8d def $r8
.Ltmp131:
	.loc	0 127 56                        # x264_src/common/predict.c:127:56
	subl	%ecx, %r8d
	.loc	0 127 11 is_stmt 0              # x264_src/common/predict.c:127:11
	leal	(%rdx,%r8,8), %edx
.Ltmp132:
	#DEBUG_VALUE: predict_16x16_p:V <- $edx
	.loc	0 130 16 is_stmt 1              # x264_src/common/predict.c:130:16
	shll	$4, %eax
.Ltmp133:
	#DEBUG_VALUE: predict_16x16_p:a <- $eax
	.loc	0 131 21                        # x264_src/common/predict.c:131:21
	leal	(%rsi,%rsi,4), %ecx
	addl	$32, %ecx
	.loc	0 131 28 is_stmt 0              # x264_src/common/predict.c:131:28
	sarl	$6, %ecx
.Ltmp134:
	#DEBUG_VALUE: predict_16x16_p:b <- $ecx
	.loc	0 132 21 is_stmt 1              # x264_src/common/predict.c:132:21
	leal	(%rdx,%rdx,4), %edx
.Ltmp135:
	addl	$32, %edx
	.loc	0 132 28 is_stmt 0              # x264_src/common/predict.c:132:28
	sarl	$6, %edx
.Ltmp136:
	#DEBUG_VALUE: predict_16x16_p:c <- $edx
	.loc	0 0 28                          # x264_src/common/predict.c:0:28
	leal	(%rcx,%rdx), %esi
.Ltmp137:
	#DEBUG_VALUE: predict_16x16_p:i00 <- [DW_OP_LLVM_arg 0, DW_OP_constu 18446744073709551609, DW_OP_mul, DW_OP_plus_uconst 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $esi, $eax
	#DEBUG_VALUE: y <- 0
	.loc	0 136 5 is_stmt 1               # x264_src/common/predict.c:136:5
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
.Ltmp138:
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
.Ltmp139:
	.loc	0 0 5 is_stmt 0                 # x264_src/common/predict.c:0:5
	xorl	%r15d, %r15d
.Ltmp140:
	.p2align	4, 0x90
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: predict_16x16_p:src <- $rdi
	#DEBUG_VALUE: predict_16x16_p:a <- $eax
	#DEBUG_VALUE: predict_16x16_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 142 17 is_stmt 1              # x264_src/common/predict.c:142:17
	leal	(%rax,%rbx), %ebp
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%ebp, %xmm4
	.loc	0 142 17                        # x264_src/common/predict.c:142:17
	leal	(%rax,%r11), %ebp
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%ebp, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	.loc	0 142 17                        # x264_src/common/predict.c:142:17
	leal	(%rax,%r10), %ebp
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%ebp, %xmm0
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	.loc	0 142 17                        # x264_src/common/predict.c:142:17
	leal	(%rax,%r8), %ebp
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%ebp, %xmm0
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	.loc	0 142 17                        # x264_src/common/predict.c:142:17
	leal	(%rax,%rsi), %r12d
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
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
.Ltmp141:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm8, %xmm0
.Ltmp142:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm4
	movdqa	.LCPI4_0(%rip), %xmm7           # xmm7 = [2147483648,2147483648,2147483648,2147483648]
.Ltmp143:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm7, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm5           # xmm5 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm5, %xmm9
	pcmpgtd	%xmm0, %xmm9
.Ltmp144:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm0
.Ltmp145:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm11, %xmm2
	pxor	%xmm7, %xmm2
	movdqa	%xmm5, %xmm3
.Ltmp146:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
.Ltmp147:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm2, %xmm3
	movdqa	%xmm4, %xmm0
	pxor	%xmm7, %xmm0
.Ltmp148:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpcklqdq	%xmm12, %xmm10          # xmm10 = xmm10[0],xmm12[0]
.Ltmp149:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm13
.Ltmp150:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm10
.Ltmp151:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm8, %xmm0
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm11, %xmm2
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm10, %xmm14
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm7, %xmm14
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pandn	%xmm0, %xmm9
	por	%xmm8, %xmm9
	movdqa	.LCPI4_2(%rip), %xmm0           # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm9
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm9
	pand	%xmm0, %xmm12
	movdqa	%xmm0, %xmm8
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm14, %xmm13
.Ltmp152:
	.loc	0 141 42 is_stmt 1              # x264_src/common/predict.c:141:42
	addl	%edx, %r12d
	movd	%r12d, %xmm4
	addl	%ecx, %r12d
.Ltmp153:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm13, %xmm10
.Ltmp154:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm2
.Ltmp155:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pandn	%xmm1, %xmm13
.Ltmp156:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
.Ltmp157:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	por	%xmm10, %xmm13
.Ltmp158:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm3
.Ltmp159:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm8, %xmm13
.Ltmp160:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %r12d
.Ltmp161:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm13, %xmm12
.Ltmp162:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm13
	leal	(%r14,%r12), %r12d
	movd	%r12d, %xmm14
.Ltmp163:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm12, %xmm9
.Ltmp164:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm15
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	.loc	0 141 20 is_stmt 0              # x264_src/common/predict.c:141:20
	movdqu	%xmm9, (%rdi,%r15)
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
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
.Ltmp165:
	.loc	5 197 13 is_stmt 1              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm0
	movdqa	%xmm7, %xmm15
	pxor	%xmm7, %xmm0
.Ltmp166:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm2
.Ltmp167:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm5, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movdqa	%xmm10, %xmm0
.Ltmp168:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
.Ltmp169:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm7, %xmm0
	movdqa	%xmm5, %xmm2
	pcmpgtd	%xmm0, %xmm2
.Ltmp170:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpcklqdq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0]
.Ltmp171:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm14, %xmm0
	pxor	%xmm7, %xmm0
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm0, %xmm11
	movdqa	%xmm5, %xmm12
	.loc	5 197 12 is_stmt 0              # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
.Ltmp172:
	.loc	0 141 42 is_stmt 1              # x264_src/common/predict.c:141:42
	psrad	$5, %xmm8
.Ltmp173:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm6, %xmm1
	movdqa	%xmm14, %xmm3
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm8, %xmm13
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm7, %xmm13
	movdqa	.LCPI4_2(%rip), %xmm7           # xmm7 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm7, %xmm9
	pand	%xmm7, %xmm2
	packuswb	%xmm2, %xmm9
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm7, %xmm11
.Ltmp174:
	.loc	0 141 42 is_stmt 1              # x264_src/common/predict.c:141:42
	addl	%edx, %r12d
	movd	%r12d, %xmm4
.Ltmp175:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm13, %xmm12
.Ltmp176:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	addl	%ecx, %r12d
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
.Ltmp177:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm12, %xmm8
.Ltmp178:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm2
.Ltmp179:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pandn	%xmm3, %xmm12
.Ltmp180:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm5
	leal	(%rcx,%r12), %r12d
.Ltmp181:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	por	%xmm8, %xmm12
.Ltmp182:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm3
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm8
.Ltmp183:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm7, %xmm12
.Ltmp184:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm13
	leal	(%r14,%r12), %r12d
.Ltmp185:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm12, %xmm11
.Ltmp186:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm14
.Ltmp187:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm11, %xmm9
.Ltmp188:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %r12d
	.loc	0 141 20 is_stmt 0              # x264_src/common/predict.c:141:20
	movdqu	%xmm9, 32(%rdi,%r15)
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
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
.Ltmp189:
	.loc	5 197 13 is_stmt 1              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm0
.Ltmp190:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm13
.Ltmp191:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm15, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm11          # xmm11 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
.Ltmp192:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm0
.Ltmp193:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm5, %xmm2
	pxor	%xmm15, %xmm2
	movdqa	%xmm11, %xmm3
.Ltmp194:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
.Ltmp195:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm2, %xmm3
	movdqa	%xmm13, %xmm0
	pxor	%xmm15, %xmm0
.Ltmp196:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpcklqdq	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0]
.Ltmp197:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm11, %xmm9
	pcmpgtd	%xmm0, %xmm9
.Ltmp198:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm10
.Ltmp199:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm10, %xmm2
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm15, %xmm2
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pandn	%xmm0, %xmm8
	por	%xmm4, %xmm8
	movdqa	.LCPI4_2(%rip), %xmm15          # xmm15 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm15, %xmm8
	pcmpgtd	%xmm6, %xmm14
	pand	%xmm15, %xmm3
	packuswb	%xmm3, %xmm8
.Ltmp200:
	.loc	0 141 42 is_stmt 1              # x264_src/common/predict.c:141:42
	addl	%edx, %r12d
.Ltmp201:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm15, %xmm9
.Ltmp202:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm4
	addl	%ecx, %r12d
	movd	%r12d, %xmm13
.Ltmp203:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm2, %xmm11
.Ltmp204:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
.Ltmp205:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm11, %xmm10
.Ltmp206:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm7
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm5
.Ltmp207:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pandn	%xmm14, %xmm11
.Ltmp208:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm14
	leal	(%rcx,%r12), %r12d
.Ltmp209:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	por	%xmm10, %xmm11
.Ltmp210:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm1
.Ltmp211:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pand	%xmm15, %xmm11
.Ltmp212:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	leal	(%r14,%r12), %r12d
	movd	%r12d, %xmm2
	leal	(%rcx,%r12), %r12d
.Ltmp213:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm11, %xmm9
.Ltmp214:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
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
.Ltmp215:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	packuswb	%xmm9, %xmm8
.Ltmp216:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0],xmm10[1],xmm1[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	movdqa	-16(%rsp), %xmm13               # 16-byte Reload
	punpckldq	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	.loc	0 141 20 is_stmt 0              # x264_src/common/predict.c:141:20
	movdqu	%xmm8, 64(%rdi,%r15)
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm15, %xmm3           # xmm3 = xmm3[0],xmm15[0],xmm3[1],xmm15[1]
	punpcklqdq	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0]
	psrad	$5, %xmm5
	punpckldq	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	psrad	$5, %xmm4
.Ltmp217:
	.loc	5 197 13 is_stmt 1              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
.Ltmp218:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm13
	movdqa	.LCPI4_1(%rip), %xmm3           # xmm3 = [2147483904,2147483904,2147483904,2147483904]
.Ltmp219:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm3, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movdqa	%xmm5, %xmm0
.Ltmp220:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
.Ltmp221:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm1, %xmm0
	movdqa	%xmm3, %xmm10
	pcmpgtd	%xmm0, %xmm10
.Ltmp222:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	punpcklqdq	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0]
.Ltmp223:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm13, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	movdqa	%xmm3, %xmm9
	movdqa	%xmm3, %xmm11
.Ltmp224:
	.loc	0 141 42                        # x264_src/common/predict.c:141:42
	psrad	$5, %xmm6
.Ltmp225:
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm0, %xmm9
	.loc	5 197 12 is_stmt 0              # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm12
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	movdqa	%xmm6, %xmm0
	pxor	%xmm3, %xmm3
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	pcmpgtd	%xmm3, %xmm12
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm3, %xmm1
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pxor	%xmm2, %xmm0
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm13, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pxor	%xmm7, %xmm7
	movdqa	%xmm6, %xmm3
	.loc	5 197 13                        # x264_src/common/common.h:197:13
	pcmpgtd	%xmm0, %xmm11
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
.Ltmp226:
	.loc	0 141 20 is_stmt 1              # x264_src/common/predict.c:141:20
	movdqu	%xmm8, 96(%rdi,%r15)
	addl	%r9d, %r8d
	addl	%r9d, %r10d
	subq	$-128, %r15
	addl	%r9d, %r11d
	addl	%r9d, %esi
	addl	%r9d, %ebx
	cmpq	$512, %r15                      # imm = 0x200
	jne	.LBB4_1
.Ltmp227:
# %bb.2:                                # %for.cond.cleanup44
	#DEBUG_VALUE: predict_16x16_p:src <- $rdi
	#DEBUG_VALUE: predict_16x16_p:a <- $eax
	#DEBUG_VALUE: predict_16x16_p:b <- $ecx
	.loc	0 147 1 epilogue_begin          # x264_src/common/predict.c:147:1
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
.Ltmp228:
.Lfunc_end4:
	.size	predict_16x16_p, .Lfunc_end4-predict_16x16_p
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc_left
	.type	predict_16x16_dc_left,@function
predict_16x16_dc_left:                  # @predict_16x16_dc_left
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_dc_left:src <- $rdi
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 72 15 prologue_end            # x264_src/common/predict.c:72:15
	movzbl	-1(%rdi), %eax
.Ltmp229:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $eax
	movzbl	31(%rdi), %ecx
	.loc	0 72 12 is_stmt 0               # x264_src/common/predict.c:72:12
	addl	%eax, %ecx
.Ltmp230:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $ecx
	#DEBUG_VALUE: i <- 2
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	63(%rdi), %eax
.Ltmp231:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
	#DEBUG_VALUE: i <- 3
	movzbl	95(%rdi), %edx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%eax, %edx
	addl	%ecx, %edx
.Ltmp232:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $edx
	#DEBUG_VALUE: i <- 4
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	127(%rdi), %eax
.Ltmp233:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
	#DEBUG_VALUE: i <- 5
	movzbl	159(%rdi), %ecx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
.Ltmp234:
	#DEBUG_VALUE: i <- 6
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	191(%rdi), %eax
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%ecx, %eax
	addl	%edx, %eax
.Ltmp235:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $eax
	#DEBUG_VALUE: i <- 7
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	223(%rdi), %ecx
.Ltmp236:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
	#DEBUG_VALUE: i <- 8
	movzbl	255(%rdi), %edx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%ecx, %edx
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
.Ltmp237:
	#DEBUG_VALUE: i <- 9
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	287(%rdi), %ecx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%edx, %ecx
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
.Ltmp238:
	#DEBUG_VALUE: i <- 10
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	319(%rdi), %edx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%ecx, %edx
	addl	%eax, %edx
.Ltmp239:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $edx
	#DEBUG_VALUE: i <- 11
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	351(%rdi), %eax
.Ltmp240:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
	#DEBUG_VALUE: i <- 12
	movzbl	383(%rdi), %ecx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%eax, %ecx
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
.Ltmp241:
	#DEBUG_VALUE: i <- 13
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	415(%rdi), %eax
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%ecx, %eax
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- undef
.Ltmp242:
	#DEBUG_VALUE: i <- 14
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	447(%rdi), %ecx
	.loc	0 72 12                         # x264_src/common/predict.c:72:12
	addl	%eax, %ecx
	addl	%edx, %ecx
.Ltmp243:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $ecx
	#DEBUG_VALUE: i <- 15
	.loc	0 72 15                         # x264_src/common/predict.c:72:15
	movzbl	479(%rdi), %eax
.Ltmp244:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $ecx, $eax
	.loc	0 73 16 is_stmt 1               # x264_src/common/predict.c:73:16
	addl	%ecx, %eax
.Ltmp245:
	addl	$8, %eax
	.loc	0 73 22 is_stmt 0               # x264_src/common/predict.c:73:22
	shrl	$4, %eax
	.loc	0 73 28                         # x264_src/common/predict.c:73:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp246:
	#DEBUG_VALUE: predict_16x16_dc_left:dc <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 75 5 is_stmt 1                # x264_src/common/predict.c:75:5
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
.Ltmp247:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 32(%rdi)
.Ltmp248:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 64(%rdi)
.Ltmp249:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 96(%rdi)
.Ltmp250:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 128(%rdi)
.Ltmp251:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 160(%rdi)
.Ltmp252:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 192(%rdi)
.Ltmp253:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 224(%rdi)
.Ltmp254:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 256(%rdi)
.Ltmp255:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 288(%rdi)
.Ltmp256:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 320(%rdi)
.Ltmp257:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 352(%rdi)
.Ltmp258:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 384(%rdi)
.Ltmp259:
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 416(%rdi)
.Ltmp260:
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 448(%rdi)
.Ltmp261:
	#DEBUG_VALUE: i <- 15
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 480, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 480(%rdi)
.Ltmp262:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc_left:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 76 1                          # x264_src/common/predict.c:76:1
	retq
.Ltmp263:
.Lfunc_end5:
	.size	predict_16x16_dc_left, .Lfunc_end5-predict_16x16_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc_top
	.type	predict_16x16_dc_top,@function
predict_16x16_dc_top:                   # @predict_16x16_dc_top
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_dc_top:src <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: predict_16x16_dc_top:dc <- 0
	#DEBUG_VALUE: predict_16x16_dc_top:dc <- undef
	#DEBUG_VALUE: i <- 15
	.loc	0 82 15 prologue_end            # x264_src/common/predict.c:82:15
	movdqu	-32(%rdi), %xmm0
.Ltmp264:
	#DEBUG_VALUE: i <- 16
	.loc	0 83 16                         # x264_src/common/predict.c:83:16
	pxor	%xmm1, %xmm1
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	$8, %eax
	.loc	0 83 22 is_stmt 0               # x264_src/common/predict.c:83:22
	shrl	$4, %eax
	.loc	0 83 28                         # x264_src/common/predict.c:83:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp265:
	#DEBUG_VALUE: predict_16x16_dc_top:dc <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 85 5 is_stmt 1                # x264_src/common/predict.c:85:5
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
.Ltmp266:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 32(%rdi)
.Ltmp267:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 64(%rdi)
.Ltmp268:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 96(%rdi)
.Ltmp269:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 128(%rdi)
.Ltmp270:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 160(%rdi)
.Ltmp271:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 192(%rdi)
.Ltmp272:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 224(%rdi)
.Ltmp273:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 256(%rdi)
.Ltmp274:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 288(%rdi)
.Ltmp275:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 320(%rdi)
.Ltmp276:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 352(%rdi)
.Ltmp277:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 384(%rdi)
.Ltmp278:
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 416(%rdi)
.Ltmp279:
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 448(%rdi)
.Ltmp280:
	#DEBUG_VALUE: i <- 15
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 480, DW_OP_stack_value] $rdi
	movdqu	%xmm0, 480(%rdi)
.Ltmp281:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc_top:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 86 1                          # x264_src/common/predict.c:86:1
	retq
.Ltmp282:
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
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_16x16_dc_128:src <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 256, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 288, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 320, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 352, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 384, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 13
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 416, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 14
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 448, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: predict_16x16_dc_128:src <- [DW_OP_plus_uconst 480, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 89 5 prologue_end             # x264_src/common/predict.c:89:5
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
.Ltmp283:
	.loc	0 90 1                          # x264_src/common/predict.c:90:1
	retq
.Ltmp284:
.Lfunc_end7:
	.size	predict_16x16_dc_128, .Lfunc_end7-predict_16x16_dc_128
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_8x8c_init          # -- Begin function x264_predict_8x8c_init
	.p2align	4, 0x90
	.type	x264_predict_8x8c_init,@function
x264_predict_8x8c_init:                 # @x264_predict_8x8c_init
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_predict_8x8c_init:cpu <- $edi
	#DEBUG_VALUE: x264_predict_8x8c_init:pf <- $rsi
	.loc	0 736 30 prologue_end           # x264_src/common/predict.c:736:30
	movq	$predict_8x8c_v, 16(%rsi)
	.loc	0 737 30                        # x264_src/common/predict.c:737:30
	movq	$predict_8x8c_h, 8(%rsi)
	.loc	0 738 30                        # x264_src/common/predict.c:738:30
	movq	$predict_8x8c_dc, (%rsi)
	.loc	0 739 30                        # x264_src/common/predict.c:739:30
	movq	$predict_8x8c_p, 24(%rsi)
	.loc	0 740 30                        # x264_src/common/predict.c:740:30
	movq	$predict_8x8c_dc_left, 32(%rsi)
	.loc	0 741 30                        # x264_src/common/predict.c:741:30
	movq	$predict_8x8c_dc_top, 40(%rsi)
	.loc	0 742 30                        # x264_src/common/predict.c:742:30
	movq	$predict_8x8c_dc_128, 48(%rsi)
	.loc	0 756 1                         # x264_src/common/predict.c:756:1
	retq
.Ltmp285:
.Lfunc_end8:
	.size	x264_predict_8x8c_init, .Lfunc_end8-x264_predict_8x8c_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_v
	.type	predict_8x8c_v,@function
predict_8x8c_v:                         # @predict_8x8c_v
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_v:src <- $rdi
	.loc	0 259 19 prologue_end           # x264_src/common/predict.c:259:19
	movl	-32(%rdi), %eax
.Ltmp286:
	#DEBUG_VALUE: predict_8x8c_v:v0 <- $eax
	.loc	0 260 19                        # x264_src/common/predict.c:260:19
	movl	-28(%rdi), %ecx
.Ltmp287:
	#DEBUG_VALUE: predict_8x8c_v:v1 <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, (%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 4(%rdi)
.Ltmp288:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 32(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 36(%rdi)
.Ltmp289:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 64(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 68(%rdi)
.Ltmp290:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 96(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 100(%rdi)
.Ltmp291:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 128(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 132(%rdi)
.Ltmp292:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 160(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 164(%rdi)
.Ltmp293:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 192(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 196(%rdi)
.Ltmp294:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 264 22                        # x264_src/common/predict.c:264:22
	movl	%eax, 224(%rdi)
	.loc	0 265 22                        # x264_src/common/predict.c:265:22
	movl	%ecx, 228(%rdi)
.Ltmp295:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_8x8c_v:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 268 1                         # x264_src/common/predict.c:268:1
	retq
.Ltmp296:
.Lfunc_end9:
	.size	predict_8x8c_v, .Lfunc_end9-predict_8x8c_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_h
	.type	predict_8x8c_h,@function
predict_8x8c_h:                         # @predict_8x8c_h
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_h:src <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 251 35 prologue_end           # x264_src/common/predict.c:251:35
	movzbl	-1(%rdi), %eax
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp297:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, (%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 4(%rdi)
.Ltmp298:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	31(%rdi), %eax
.Ltmp299:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp300:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 32(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 36(%rdi)
.Ltmp301:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	63(%rdi), %eax
.Ltmp302:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp303:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 64(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 68(%rdi)
.Ltmp304:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	95(%rdi), %eax
.Ltmp305:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp306:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 96(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 100(%rdi)
.Ltmp307:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	127(%rdi), %eax
.Ltmp308:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp309:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 128(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 132(%rdi)
.Ltmp310:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	159(%rdi), %eax
.Ltmp311:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp312:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 160(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 164(%rdi)
.Ltmp313:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	191(%rdi), %eax
.Ltmp314:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp315:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 192(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 196(%rdi)
.Ltmp316:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 251 35                        # x264_src/common/predict.c:251:35
	movzbl	223(%rdi), %eax
.Ltmp317:
	.loc	0 251 33 is_stmt 0              # x264_src/common/predict.c:251:33
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp318:
	#DEBUG_VALUE: v <- $eax
	.loc	0 252 22 is_stmt 1              # x264_src/common/predict.c:252:22
	movl	%eax, 224(%rdi)
	.loc	0 253 22                        # x264_src/common/predict.c:253:22
	movl	%eax, 228(%rdi)
.Ltmp319:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: predict_8x8c_h:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 256 1                         # x264_src/common/predict.c:256:1
	retq
.Ltmp320:
.Lfunc_end10:
	.size	predict_8x8c_h, .Lfunc_end10-predict_8x8c_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc
	.type	predict_8x8c_dc,@function
predict_8x8c_dc:                        # @predict_8x8c_dc
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_dc:src <- $rdi
	#DEBUG_VALUE: predict_8x8c_dc:s0 <- 0
	#DEBUG_VALUE: predict_8x8c_dc:s1 <- 0
	#DEBUG_VALUE: predict_8x8c_dc:s2 <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: predict_8x8c_dc:s3 <- 0
	.loc	0 219 15 prologue_end           # x264_src/common/predict.c:219:15
	movzbl	-32(%rdi), %eax
.Ltmp321:
	#DEBUG_VALUE: predict_8x8c_dc:s0 <- $eax
	.loc	0 220 15                        # x264_src/common/predict.c:220:15
	movzbl	-28(%rdi), %ecx
.Ltmp322:
	#DEBUG_VALUE: predict_8x8c_dc:s1 <- $ecx
	.loc	0 221 15                        # x264_src/common/predict.c:221:15
	movzbl	-1(%rdi), %edx
.Ltmp323:
	#DEBUG_VALUE: predict_8x8c_dc:s2 <- $edx
	.loc	0 222 15                        # x264_src/common/predict.c:222:15
	movzbl	127(%rdi), %esi
.Ltmp324:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: predict_8x8c_dc:s3 <- $esi
	.loc	0 219 15                        # x264_src/common/predict.c:219:15
	movzbl	-31(%rdi), %r8d
	.loc	0 219 12 is_stmt 0              # x264_src/common/predict.c:219:12
	addl	%eax, %r8d
.Ltmp325:
	#DEBUG_VALUE: predict_8x8c_dc:s0 <- $r8d
	.loc	0 220 15 is_stmt 1              # x264_src/common/predict.c:220:15
	movzbl	-27(%rdi), %eax
	.loc	0 220 12 is_stmt 0              # x264_src/common/predict.c:220:12
	addl	%ecx, %eax
.Ltmp326:
	#DEBUG_VALUE: predict_8x8c_dc:s1 <- $eax
	.loc	0 221 15 is_stmt 1              # x264_src/common/predict.c:221:15
	movzbl	31(%rdi), %r9d
	.loc	0 221 12 is_stmt 0              # x264_src/common/predict.c:221:12
	addl	%edx, %r9d
.Ltmp327:
	#DEBUG_VALUE: predict_8x8c_dc:s2 <- $r9d
	.loc	0 222 15 is_stmt 1              # x264_src/common/predict.c:222:15
	movzbl	159(%rdi), %edx
	.loc	0 222 12 is_stmt 0              # x264_src/common/predict.c:222:12
	addl	%esi, %edx
.Ltmp328:
	#DEBUG_VALUE: predict_8x8c_dc:s3 <- $edx
	#DEBUG_VALUE: i <- 2
	.loc	0 219 15 is_stmt 1              # x264_src/common/predict.c:219:15
	movzbl	-30(%rdi), %esi
.Ltmp329:
	#DEBUG_VALUE: predict_8x8c_dc:s0 <- undef
	.loc	0 220 15                        # x264_src/common/predict.c:220:15
	movzbl	-26(%rdi), %ecx
	.loc	0 220 12 is_stmt 0              # x264_src/common/predict.c:220:12
	addl	%eax, %ecx
.Ltmp330:
	#DEBUG_VALUE: predict_8x8c_dc:s1 <- $ecx
	.loc	0 221 15 is_stmt 1              # x264_src/common/predict.c:221:15
	movzbl	63(%rdi), %r10d
.Ltmp331:
	#DEBUG_VALUE: predict_8x8c_dc:s2 <- undef
	.loc	0 222 15                        # x264_src/common/predict.c:222:15
	movzbl	191(%rdi), %eax
	.loc	0 222 12 is_stmt 0              # x264_src/common/predict.c:222:12
	addl	%edx, %eax
.Ltmp332:
	#DEBUG_VALUE: predict_8x8c_dc:s3 <- $eax
	#DEBUG_VALUE: i <- 3
	.loc	0 219 15 is_stmt 1              # x264_src/common/predict.c:219:15
	movzbl	-29(%rdi), %edx
	.loc	0 219 12 is_stmt 0              # x264_src/common/predict.c:219:12
	addl	%esi, %edx
	addl	%r8d, %edx
.Ltmp333:
	#DEBUG_VALUE: predict_8x8c_dc:s0 <- $edx
	.loc	0 220 15 is_stmt 1              # x264_src/common/predict.c:220:15
	movzbl	-25(%rdi), %esi
	.loc	0 220 12 is_stmt 0              # x264_src/common/predict.c:220:12
	leal	(%rcx,%rsi), %r8d
.Ltmp334:
	#DEBUG_VALUE: predict_8x8c_dc:s1 <- $r8d
	.loc	0 221 15 is_stmt 1              # x264_src/common/predict.c:221:15
	movzbl	95(%rdi), %r11d
	.loc	0 221 12 is_stmt 0              # x264_src/common/predict.c:221:12
	addl	%r10d, %r11d
	addl	%r9d, %r11d
.Ltmp335:
	#DEBUG_VALUE: predict_8x8c_dc:s2 <- $r11d
	.loc	0 222 15 is_stmt 1              # x264_src/common/predict.c:222:15
	movzbl	223(%rdi), %r9d
	.loc	0 222 12 is_stmt 0              # x264_src/common/predict.c:222:12
	leal	(%rax,%r9), %r10d
.Ltmp336:
	#DEBUG_VALUE: predict_8x8c_dc:s3 <- $r10d
	#DEBUG_VALUE: i <- 4
	.loc	0 228 31 is_stmt 1              # x264_src/common/predict.c:228:31
	addl	%r11d, %edx
.Ltmp337:
	addl	$4, %edx
	.loc	0 228 37 is_stmt 0              # x264_src/common/predict.c:228:37
	shrl	$3, %edx
	.loc	0 228 42                        # x264_src/common/predict.c:228:42
	imull	$16843009, %edx, %edx           # imm = 0x1010101
.Ltmp338:
	#DEBUG_VALUE: predict_8x8c_dc:dc0 <- $edx
	.loc	0 229 26 is_stmt 1              # x264_src/common/predict.c:229:26
	addl	%esi, %ecx
	addl	$2, %ecx
	.loc	0 229 32 is_stmt 0              # x264_src/common/predict.c:229:32
	shrl	$2, %ecx
	.loc	0 229 37                        # x264_src/common/predict.c:229:37
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
.Ltmp339:
	#DEBUG_VALUE: predict_8x8c_dc:dc1 <- $ecx
	.loc	0 230 26 is_stmt 1              # x264_src/common/predict.c:230:26
	addl	%r9d, %eax
	addl	$2, %eax
	.loc	0 230 32 is_stmt 0              # x264_src/common/predict.c:230:32
	shrl	$2, %eax
	.loc	0 231 31 is_stmt 1              # x264_src/common/predict.c:231:31
	leal	(%r10,%r8), %esi
	addl	$4, %esi
	.loc	0 231 37 is_stmt 0              # x264_src/common/predict.c:231:37
	shrl	$3, %esi
.Ltmp340:
	#DEBUG_VALUE: y <- 0
	.loc	0 235 22 is_stmt 1              # x264_src/common/predict.c:235:22
	movl	%edx, (%rdi)
	.loc	0 236 22                        # x264_src/common/predict.c:236:22
	movl	%ecx, 4(%rdi)
.Ltmp341:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 235 22                        # x264_src/common/predict.c:235:22
	movl	%edx, 32(%rdi)
	.loc	0 236 22                        # x264_src/common/predict.c:236:22
	movl	%ecx, 36(%rdi)
.Ltmp342:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 235 22                        # x264_src/common/predict.c:235:22
	movl	%edx, 64(%rdi)
	.loc	0 236 22                        # x264_src/common/predict.c:236:22
	movl	%ecx, 68(%rdi)
.Ltmp343:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 235 22                        # x264_src/common/predict.c:235:22
	movl	%edx, 96(%rdi)
	.loc	0 236 22                        # x264_src/common/predict.c:236:22
	movl	%ecx, 100(%rdi)
.Ltmp344:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 230 37                        # x264_src/common/predict.c:230:37
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp345:
	#DEBUG_VALUE: predict_8x8c_dc:dc2 <- $eax
	.loc	0 231 42                        # x264_src/common/predict.c:231:42
	imull	$16843009, %esi, %ecx           # imm = 0x1010101
.Ltmp346:
	#DEBUG_VALUE: predict_8x8c_dc:dc3 <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 242 22                        # x264_src/common/predict.c:242:22
	movl	%eax, 128(%rdi)
	.loc	0 243 22                        # x264_src/common/predict.c:243:22
	movl	%ecx, 132(%rdi)
.Ltmp347:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 242 22                        # x264_src/common/predict.c:242:22
	movl	%eax, 160(%rdi)
	.loc	0 243 22                        # x264_src/common/predict.c:243:22
	movl	%ecx, 164(%rdi)
.Ltmp348:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 242 22                        # x264_src/common/predict.c:242:22
	movl	%eax, 192(%rdi)
	.loc	0 243 22                        # x264_src/common/predict.c:243:22
	movl	%ecx, 196(%rdi)
.Ltmp349:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 242 22                        # x264_src/common/predict.c:242:22
	movl	%eax, 224(%rdi)
	.loc	0 243 22                        # x264_src/common/predict.c:243:22
	movl	%ecx, 228(%rdi)
.Ltmp350:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 246 1                         # x264_src/common/predict.c:246:1
	retq
.Ltmp351:
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
.Lfunc_begin12:
	.loc	0 270 0                         # x264_src/common/predict.c:270:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_p:src <- $rdi
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
.Ltmp352:
	#DEBUG_VALUE: predict_8x8c_p:H <- 0
	#DEBUG_VALUE: predict_8x8c_p:V <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 275 28 prologue_end           # x264_src/common/predict.c:275:28
	movzbl	-28(%rdi), %eax
	.loc	0 275 53 is_stmt 0              # x264_src/common/predict.c:275:53
	movzbl	-30(%rdi), %ecx
	.loc	0 275 51                        # x264_src/common/predict.c:275:51
	subl	%ecx, %eax
.Ltmp353:
	#DEBUG_VALUE: predict_8x8c_p:H <- $eax
	.loc	0 276 28 is_stmt 1              # x264_src/common/predict.c:276:28
	movzbl	127(%rdi), %ecx
	.loc	0 276 57 is_stmt 0              # x264_src/common/predict.c:276:57
	movzbl	63(%rdi), %edx
	.loc	0 276 55                        # x264_src/common/predict.c:276:55
	subl	%edx, %ecx
.Ltmp354:
	#DEBUG_VALUE: predict_8x8c_p:V <- $ecx
	#DEBUG_VALUE: i <- 1
	.loc	0 275 28 is_stmt 1              # x264_src/common/predict.c:275:28
	movzbl	-27(%rdi), %edx
	.loc	0 275 53 is_stmt 0              # x264_src/common/predict.c:275:53
	movzbl	-31(%rdi), %esi
	.loc	0 275 51                        # x264_src/common/predict.c:275:51
	subl	%esi, %edx
	.loc	0 275 11                        # x264_src/common/predict.c:275:11
	leal	(%rax,%rdx,2), %eax
.Ltmp355:
	#DEBUG_VALUE: predict_8x8c_p:H <- $eax
	.loc	0 276 28 is_stmt 1              # x264_src/common/predict.c:276:28
	movzbl	159(%rdi), %edx
	.loc	0 276 57 is_stmt 0              # x264_src/common/predict.c:276:57
	movzbl	31(%rdi), %esi
	.loc	0 276 55                        # x264_src/common/predict.c:276:55
	subl	%esi, %edx
	.loc	0 276 11                        # x264_src/common/predict.c:276:11
	leal	(%rcx,%rdx,2), %ecx
.Ltmp356:
	#DEBUG_VALUE: predict_8x8c_p:V <- $ecx
	#DEBUG_VALUE: i <- 2
	.loc	0 275 28 is_stmt 1              # x264_src/common/predict.c:275:28
	movzbl	-26(%rdi), %edx
	.loc	0 275 53 is_stmt 0              # x264_src/common/predict.c:275:53
	movzbl	-32(%rdi), %esi
	.loc	0 275 51                        # x264_src/common/predict.c:275:51
	subl	%esi, %edx
	.loc	0 275 24                        # x264_src/common/predict.c:275:24
	leal	(%rdx,%rdx,2), %edx
	.loc	0 275 11                        # x264_src/common/predict.c:275:11
	addl	%eax, %edx
.Ltmp357:
	#DEBUG_VALUE: predict_8x8c_p:H <- $edx
	.loc	0 276 28 is_stmt 1              # x264_src/common/predict.c:276:28
	movzbl	191(%rdi), %eax
	.loc	0 276 57 is_stmt 0              # x264_src/common/predict.c:276:57
	movzbl	-1(%rdi), %esi
	.loc	0 276 55                        # x264_src/common/predict.c:276:55
	subl	%esi, %eax
	.loc	0 276 24                        # x264_src/common/predict.c:276:24
	leal	(%rax,%rax,2), %esi
	.loc	0 276 11                        # x264_src/common/predict.c:276:11
	addl	%ecx, %esi
.Ltmp358:
	#DEBUG_VALUE: predict_8x8c_p:V <- $esi
	#DEBUG_VALUE: i <- 3
	.loc	0 275 28 is_stmt 1              # x264_src/common/predict.c:275:28
	movzbl	-25(%rdi), %eax
	.loc	0 275 53 is_stmt 0              # x264_src/common/predict.c:275:53
	movzbl	-33(%rdi), %ecx
	.loc	0 275 51                        # x264_src/common/predict.c:275:51
	movl	%eax, %r8d
	subl	%ecx, %r8d
	.loc	0 275 11                        # x264_src/common/predict.c:275:11
	leal	(%rdx,%r8,4), %edx
.Ltmp359:
	#DEBUG_VALUE: predict_8x8c_p:H <- $edx
	.loc	0 276 28 is_stmt 1              # x264_src/common/predict.c:276:28
	movzbl	223(%rdi), %r8d
.Ltmp360:
	#DEBUG_VALUE: predict_8x8c_p:V <- undef
	#DEBUG_VALUE: i <- 4
	.loc	0 279 42                        # x264_src/common/predict.c:279:42
	addl	%r8d, %eax
                                        # kill: def $r8d killed $r8d def $r8
.Ltmp361:
	.loc	0 276 55                        # x264_src/common/predict.c:276:55
	subl	%ecx, %r8d
	.loc	0 276 11 is_stmt 0              # x264_src/common/predict.c:276:11
	leal	(%rsi,%r8,4), %esi
.Ltmp362:
	#DEBUG_VALUE: predict_8x8c_p:V <- $esi
	.loc	0 279 16 is_stmt 1              # x264_src/common/predict.c:279:16
	shll	$4, %eax
.Ltmp363:
	#DEBUG_VALUE: predict_8x8c_p:a <- $eax
	.loc	0 280 18                        # x264_src/common/predict.c:280:18
	movl	%edx, %ecx
	shll	$4, %ecx
	.loc	0 280 22 is_stmt 0              # x264_src/common/predict.c:280:22
	addl	%edx, %ecx
	addl	$16, %ecx
	.loc	0 280 29                        # x264_src/common/predict.c:280:29
	sarl	$5, %ecx
.Ltmp364:
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	.loc	0 281 18 is_stmt 1              # x264_src/common/predict.c:281:18
	movl	%esi, %edx
.Ltmp365:
	shll	$4, %edx
	.loc	0 281 22 is_stmt 0              # x264_src/common/predict.c:281:22
	leal	(%rdx,%rsi), %r9d
	addl	$16, %r9d
	.loc	0 281 29                        # x264_src/common/predict.c:281:29
	sarl	$5, %r9d
.Ltmp366:
	#DEBUG_VALUE: predict_8x8c_p:c <- $r9d
	.loc	0 0 29                          # x264_src/common/predict.c:0:29
	leal	(%rcx,%r9), %edx
	leal	(%rdx,%rdx,2), %esi
.Ltmp367:
	negl	%esi
.Ltmp368:
	#DEBUG_VALUE: predict_8x8c_p:i00 <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $esi, $eax
	#DEBUG_VALUE: y <- 0
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
.Ltmp369:
	#DEBUG_VALUE: predict_8x8c_p:i00 <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_plus_uconst 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rsp, $eax
	.loc	0 284 5 is_stmt 1               # x264_src/common/predict.c:284:5
	addq	$96, %rdi
.Ltmp370:
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	leal	(%rcx,%rcx,2), %r8d
	movl	%r8d, %esi
	negl	%esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	addl	$16, %eax
.Ltmp371:
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
.Ltmp372:
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
.Ltmp373:
	.p2align	4, 0x90
.LBB12_9:                               # %pred.store.continue114
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 5 is_stmt 0                 # x264_src/common/predict.c:0:5
	addq	$4, %rbx
	subq	$-128, %rdi
	addl	%esi, %eax
	cmpq	$8, %rbx
	je	.LBB12_10
.Ltmp374:
.LBB12_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	cmpq	$7, %rbx
	.loc	0 284 5                         # x264_src/common/predict.c:284:5
	jbe	.LBB12_2
.Ltmp375:
# %bb.3:                                # %pred.store.continue
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 5                           # x264_src/common/predict.c:0:5
	cmpq	$7, %rbx
.Ltmp376:
	.loc	0 289 20 is_stmt 1              # x264_src/common/predict.c:289:20
	jbe	.LBB12_4
.Ltmp377:
.LBB12_5:                               # %pred.store.continue110
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 20 is_stmt 0                # x264_src/common/predict.c:0:20
	cmpq	$7, %rbx
	.loc	0 289 20                        # x264_src/common/predict.c:289:20
	jbe	.LBB12_6
.Ltmp378:
.LBB12_7:                               # %pred.store.continue112
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 20                          # x264_src/common/predict.c:0:20
	cmpq	$7, %rbx
	.loc	0 289 20                        # x264_src/common/predict.c:289:20
	ja	.LBB12_9
	jmp	.LBB12_8
.Ltmp379:
	.p2align	4, 0x90
.LBB12_2:                               # %pred.store.if
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	leal	(%rax,%rbp), %r12d
	movd	%r12d, %xmm6
	.loc	0 290 17 is_stmt 1              # x264_src/common/predict.c:290:17
	leal	(%r15,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm7
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r14,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm8
	movq	-128(%rsp), %r12                # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	addl	%eax, %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm4
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r11,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm9
	movq	-120(%rsp), %r12                # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm10
	movq	-112(%rsp), %r12                # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm11
	movq	32(%rsp), %r12                  # 8-byte Reload
.Ltmp380:
	.loc	0 0 0 is_stmt 0                 # x264_src/common/predict.c:0:0
	leal	(%r12,%rax), %r12d
.Ltmp381:
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm5
	punpckldq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	punpcklqdq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0]
	punpckldq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0],xmm10[1],xmm9[1]
	punpckldq	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	psrad	$5, %xmm4
	psrad	$5, %xmm5
.Ltmp382:
	.loc	5 197 12 is_stmt 1              # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm0, %xmm7
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm8, %xmm9
	movdqa	%xmm5, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm8, %xmm10
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
.Ltmp383:
	.loc	0 289 20 is_stmt 1              # x264_src/common/predict.c:289:20
	movq	%xmm10, -96(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_5
.Ltmp384:
.LBB12_4:                               # %pred.store.if109
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 20 is_stmt 0                # x264_src/common/predict.c:0:20
	movq	-96(%rsp), %r12                 # 8-byte Reload
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	addl	%eax, %r12d
	movd	%r12d, %xmm5
	movq	-88(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17 is_stmt 1              # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm6
	movq	-80(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm7
	movq	-72(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm4
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r13,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm8
	movq	-64(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm9
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%rdx,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm10
	movq	-104(%rsp), %r12                # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm11
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckldq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	punpckldq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	psrad	$5, %xmm11
	psrad	$5, %xmm4
.Ltmp385:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm11, %xmm6
	pcmpgtd	%xmm0, %xmm6
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm7, %xmm9
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
.Ltmp386:
	.loc	0 289 20 is_stmt 1              # x264_src/common/predict.c:289:20
	movq	%xmm9, -64(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_7
.Ltmp387:
.LBB12_6:                               # %pred.store.if111
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 20 is_stmt 0                # x264_src/common/predict.c:0:20
	movq	-32(%rsp), %r12                 # 8-byte Reload
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	addl	%eax, %r12d
	movd	%r12d, %xmm5
	movq	-24(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17 is_stmt 1              # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm6
	movq	-16(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm7
	movq	-8(%rsp), %r12                  # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm4
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r9,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm8
	movq	-56(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm9
	movq	-48(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm10
	movq	-40(%rsp), %r12                 # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm11
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckldq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	punpckldq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	psrad	$5, %xmm11
	psrad	$5, %xmm4
.Ltmp388:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm11, %xmm6
	pcmpgtd	%xmm0, %xmm6
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm7, %xmm9
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
.Ltmp389:
	.loc	0 289 20 is_stmt 1              # x264_src/common/predict.c:289:20
	movq	%xmm9, -32(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_9
.Ltmp390:
.LBB12_8:                               # %pred.store.if113
                                        #   in Loop: Header=BB12_1 Depth=1
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 0 20 is_stmt 0                # x264_src/common/predict.c:0:20
	movq	(%rsp), %r12                    # 8-byte Reload
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	addl	%eax, %r12d
	movd	%r12d, %xmm6
	.loc	0 290 17 is_stmt 1              # x264_src/common/predict.c:290:17
	leal	(%r8,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm7
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r10,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm8
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%rcx,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm4
	movq	16(%rsp), %r12                  # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm9
	movq	24(%rsp), %r12                  # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
	movd	%r12d, %xmm5
	movq	8(%rsp), %r12                   # 8-byte Reload
	.loc	0 290 17                        # x264_src/common/predict.c:290:17
	leal	(%r12,%rax), %r12d
	.loc	0 289 42                        # x264_src/common/predict.c:289:42
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
.Ltmp391:
	.loc	5 197 12                        # x264_src/common/common.h:197:12
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm0, %xmm7
	.loc	5 197 13 is_stmt 0              # x264_src/common/common.h:197:13
	movdqa	%xmm4, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm8, %xmm9
	movdqa	%xmm5, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm8, %xmm10
	.loc	5 197 12                        # x264_src/common/common.h:197:12
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
.Ltmp392:
	.loc	0 289 20 is_stmt 1              # x264_src/common/predict.c:289:20
	movq	%xmm10, (%rdi)
	jmp	.LBB12_9
.Ltmp393:
.LBB12_10:                              # %for.cond.cleanup44
	#DEBUG_VALUE: predict_8x8c_p:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: predict_8x8c_p:b <- $ecx
	.loc	0 295 1 epilogue_begin          # x264_src/common/predict.c:295:1
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
.Ltmp394:
.Lfunc_end12:
	.size	predict_8x8c_p, .Lfunc_end12-predict_8x8c_p
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_left
	.type	predict_8x8c_dc_left,@function
predict_8x8c_dc_left:                   # @predict_8x8c_dc_left
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- $rdi
	#DEBUG_VALUE: y <- 0
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- 0
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- 0
	.loc	0 169 16 prologue_end           # x264_src/common/predict.c:169:16
	movzbl	-1(%rdi), %eax
.Ltmp395:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- $eax
	.loc	0 170 16                        # x264_src/common/predict.c:170:16
	movzbl	127(%rdi), %ecx
.Ltmp396:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- $ecx
	.loc	0 169 16                        # x264_src/common/predict.c:169:16
	movzbl	31(%rdi), %edx
	.loc	0 169 13 is_stmt 0              # x264_src/common/predict.c:169:13
	addl	%eax, %edx
.Ltmp397:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- $edx
	.loc	0 170 16 is_stmt 1              # x264_src/common/predict.c:170:16
	movzbl	159(%rdi), %eax
	.loc	0 170 13 is_stmt 0              # x264_src/common/predict.c:170:13
	addl	%ecx, %eax
.Ltmp398:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- $eax
	#DEBUG_VALUE: y <- 2
	.loc	0 169 16 is_stmt 1              # x264_src/common/predict.c:169:16
	movzbl	63(%rdi), %ecx
	.loc	0 169 13 is_stmt 0              # x264_src/common/predict.c:169:13
	addl	%edx, %ecx
.Ltmp399:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- $ecx
	.loc	0 170 16 is_stmt 1              # x264_src/common/predict.c:170:16
	movzbl	191(%rdi), %edx
	.loc	0 170 13 is_stmt 0              # x264_src/common/predict.c:170:13
	addl	%eax, %edx
.Ltmp400:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- $edx
	#DEBUG_VALUE: y <- 3
	.loc	0 169 16 is_stmt 1              # x264_src/common/predict.c:169:16
	movzbl	95(%rdi), %eax
.Ltmp401:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $ecx, $eax
	.loc	0 170 16                        # x264_src/common/predict.c:170:16
	movzbl	223(%rdi), %esi
.Ltmp402:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $edx, $esi
	.loc	0 172 18                        # x264_src/common/predict.c:172:18
	addl	%ecx, %eax
.Ltmp403:
	addl	$2, %eax
	.loc	0 172 24 is_stmt 0              # x264_src/common/predict.c:172:24
	shrl	$2, %eax
	.loc	0 172 29                        # x264_src/common/predict.c:172:29
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp404:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc0 <- $eax
	.loc	0 173 18 is_stmt 1              # x264_src/common/predict.c:173:18
	leal	(%rsi,%rdx), %ecx
	addl	$2, %ecx
	.loc	0 173 24 is_stmt 0              # x264_src/common/predict.c:173:24
	shrl	$2, %ecx
.Ltmp405:
	#DEBUG_VALUE: y <- 0
	.loc	0 177 22 is_stmt 1              # x264_src/common/predict.c:177:22
	movl	%eax, (%rdi)
	.loc	0 178 22                        # x264_src/common/predict.c:178:22
	movl	%eax, 4(%rdi)
.Ltmp406:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 177 22                        # x264_src/common/predict.c:177:22
	movl	%eax, 32(%rdi)
	.loc	0 178 22                        # x264_src/common/predict.c:178:22
	movl	%eax, 36(%rdi)
.Ltmp407:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 177 22                        # x264_src/common/predict.c:177:22
	movl	%eax, 64(%rdi)
	.loc	0 178 22                        # x264_src/common/predict.c:178:22
	movl	%eax, 68(%rdi)
.Ltmp408:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 177 22                        # x264_src/common/predict.c:177:22
	movl	%eax, 96(%rdi)
	.loc	0 178 22                        # x264_src/common/predict.c:178:22
	movl	%eax, 100(%rdi)
.Ltmp409:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 173 29                        # x264_src/common/predict.c:173:29
	imull	$16843009, %ecx, %eax           # imm = 0x1010101
.Ltmp410:
	#DEBUG_VALUE: predict_8x8c_dc_left:dc1 <- $eax
	#DEBUG_VALUE: y <- 0
	.loc	0 183 22                        # x264_src/common/predict.c:183:22
	movl	%eax, 128(%rdi)
	.loc	0 184 22                        # x264_src/common/predict.c:184:22
	movl	%eax, 132(%rdi)
.Ltmp411:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 183 22                        # x264_src/common/predict.c:183:22
	movl	%eax, 160(%rdi)
	.loc	0 184 22                        # x264_src/common/predict.c:184:22
	movl	%eax, 164(%rdi)
.Ltmp412:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 183 22                        # x264_src/common/predict.c:183:22
	movl	%eax, 192(%rdi)
	.loc	0 184 22                        # x264_src/common/predict.c:184:22
	movl	%eax, 196(%rdi)
.Ltmp413:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 183 22                        # x264_src/common/predict.c:183:22
	movl	%eax, 224(%rdi)
	.loc	0 184 22                        # x264_src/common/predict.c:184:22
	movl	%eax, 228(%rdi)
.Ltmp414:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc_left:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 188 1                         # x264_src/common/predict.c:188:1
	retq
.Ltmp415:
.Lfunc_end13:
	.size	predict_8x8c_dc_left, .Lfunc_end13-predict_8x8c_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_top
	.type	predict_8x8c_dc_top,@function
predict_8x8c_dc_top:                    # @predict_8x8c_dc_top
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- $rdi
	#DEBUG_VALUE: x <- 0
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- 0
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- 0
	.loc	0 195 16 prologue_end           # x264_src/common/predict.c:195:16
	movzbl	-32(%rdi), %eax
.Ltmp416:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- $eax
	.loc	0 196 16                        # x264_src/common/predict.c:196:16
	movzbl	-28(%rdi), %ecx
.Ltmp417:
	#DEBUG_VALUE: x <- 1
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- $ecx
	.loc	0 195 16                        # x264_src/common/predict.c:195:16
	movzbl	-31(%rdi), %edx
	.loc	0 195 13 is_stmt 0              # x264_src/common/predict.c:195:13
	addl	%eax, %edx
.Ltmp418:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- $edx
	.loc	0 196 16 is_stmt 1              # x264_src/common/predict.c:196:16
	movzbl	-27(%rdi), %eax
	.loc	0 196 13 is_stmt 0              # x264_src/common/predict.c:196:13
	addl	%ecx, %eax
.Ltmp419:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- $eax
	#DEBUG_VALUE: x <- 2
	.loc	0 195 16 is_stmt 1              # x264_src/common/predict.c:195:16
	movzbl	-30(%rdi), %ecx
	.loc	0 195 13 is_stmt 0              # x264_src/common/predict.c:195:13
	addl	%edx, %ecx
.Ltmp420:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- $ecx
	.loc	0 196 16 is_stmt 1              # x264_src/common/predict.c:196:16
	movzbl	-26(%rdi), %edx
	.loc	0 196 13 is_stmt 0              # x264_src/common/predict.c:196:13
	addl	%eax, %edx
.Ltmp421:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- $edx
	#DEBUG_VALUE: x <- 3
	.loc	0 195 16 is_stmt 1              # x264_src/common/predict.c:195:16
	movzbl	-29(%rdi), %eax
.Ltmp422:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $ecx, $eax
	.loc	0 196 16                        # x264_src/common/predict.c:196:16
	movzbl	-25(%rdi), %esi
.Ltmp423:
	#DEBUG_VALUE: x <- 4
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $edx, $esi
	.loc	0 198 18                        # x264_src/common/predict.c:198:18
	addl	%ecx, %eax
.Ltmp424:
	addl	$2, %eax
	.loc	0 198 24 is_stmt 0              # x264_src/common/predict.c:198:24
	shrl	$2, %eax
	.loc	0 198 29                        # x264_src/common/predict.c:198:29
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp425:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc0 <- $eax
	.loc	0 199 18 is_stmt 1              # x264_src/common/predict.c:199:18
	leal	(%rsi,%rdx), %ecx
	addl	$2, %ecx
	.loc	0 199 24 is_stmt 0              # x264_src/common/predict.c:199:24
	shrl	$2, %ecx
	.loc	0 199 29                        # x264_src/common/predict.c:199:29
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
.Ltmp426:
	#DEBUG_VALUE: predict_8x8c_dc_top:dc1 <- $ecx
	#DEBUG_VALUE: y <- 0
	.loc	0 203 22 is_stmt 1              # x264_src/common/predict.c:203:22
	movl	%eax, (%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 4(%rdi)
.Ltmp427:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 32(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 36(%rdi)
.Ltmp428:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 64(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 68(%rdi)
.Ltmp429:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 96(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 100(%rdi)
.Ltmp430:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 128(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 132(%rdi)
.Ltmp431:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 160(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 164(%rdi)
.Ltmp432:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 192(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 196(%rdi)
.Ltmp433:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	.loc	0 203 22                        # x264_src/common/predict.c:203:22
	movl	%eax, 224(%rdi)
	.loc	0 204 22                        # x264_src/common/predict.c:204:22
	movl	%ecx, 228(%rdi)
.Ltmp434:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8c_dc_top:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 207 1                         # x264_src/common/predict.c:207:1
	retq
.Ltmp435:
.Lfunc_end14:
	.size	predict_8x8c_dc_top, .Lfunc_end14-predict_8x8c_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_128
	.type	predict_8x8c_dc_128,@function
predict_8x8c_dc_128:                    # @predict_8x8c_dc_128
.Lfunc_begin15:
	.loc	0 155 0                         # x264_src/common/predict.c:155:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- $rdi
	#DEBUG_VALUE: y <- 0
	movabsq	$-9187201950435737472, %rax     # imm = 0x8080808080808080
.Ltmp436:
	.loc	0 158 22 prologue_end           # x264_src/common/predict.c:158:22
	movq	%rax, (%rdi)
.Ltmp437:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movq	%rax, 32(%rdi)
.Ltmp438:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movq	%rax, 64(%rdi)
.Ltmp439:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movq	%rax, 96(%rdi)
.Ltmp440:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movq	%rax, 128(%rdi)
.Ltmp441:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movq	%rax, 160(%rdi)
.Ltmp442:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movq	%rax, 192(%rdi)
.Ltmp443:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movq	%rax, 224(%rdi)
.Ltmp444:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8c_dc_128:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 162 1                         # x264_src/common/predict.c:162:1
	retq
.Ltmp445:
.Lfunc_end15:
	.size	predict_8x8c_dc_128, .Lfunc_end15-predict_8x8c_dc_128
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_8x8_init           # -- Begin function x264_predict_8x8_init
	.p2align	4, 0x90
	.type	x264_predict_8x8_init,@function
x264_predict_8x8_init:                  # @x264_predict_8x8_init
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_predict_8x8_init:cpu <- $edi
	#DEBUG_VALUE: x264_predict_8x8_init:pf <- $rsi
	#DEBUG_VALUE: x264_predict_8x8_init:predict_filter <- $rdx
	.loc	0 760 27 prologue_end           # x264_src/common/predict.c:760:27
	movq	$predict_8x8_v, (%rsi)
	.loc	0 761 27                        # x264_src/common/predict.c:761:27
	movq	$predict_8x8_h, 8(%rsi)
	.loc	0 762 27                        # x264_src/common/predict.c:762:27
	movq	$predict_8x8_dc, 16(%rsi)
	.loc	0 763 27                        # x264_src/common/predict.c:763:27
	movq	$predict_8x8_ddl, 24(%rsi)
	.loc	0 764 27                        # x264_src/common/predict.c:764:27
	movq	$predict_8x8_ddr, 32(%rsi)
	.loc	0 765 27                        # x264_src/common/predict.c:765:27
	movq	$predict_8x8_vr, 40(%rsi)
	.loc	0 766 27                        # x264_src/common/predict.c:766:27
	movq	$predict_8x8_hd, 48(%rsi)
	.loc	0 767 27                        # x264_src/common/predict.c:767:27
	movq	$predict_8x8_vl, 56(%rsi)
	.loc	0 768 27                        # x264_src/common/predict.c:768:27
	movq	$predict_8x8_hu, 64(%rsi)
	.loc	0 769 27                        # x264_src/common/predict.c:769:27
	movq	$predict_8x8_dc_left, 72(%rsi)
	.loc	0 770 27                        # x264_src/common/predict.c:770:27
	movq	$predict_8x8_dc_top, 80(%rsi)
	.loc	0 771 27                        # x264_src/common/predict.c:771:27
	movq	$predict_8x8_dc_128, 88(%rsi)
	.loc	0 772 27                        # x264_src/common/predict.c:772:27
	movq	$predict_8x8_filter, (%rdx)
	.loc	0 781 1                         # x264_src/common/predict.c:781:1
	retq
.Ltmp446:
.Lfunc_end16:
	.size	x264_predict_8x8_init, .Lfunc_end16-x264_predict_8x8_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_v
	.type	predict_8x8_v,@function
predict_8x8_v:                          # @predict_8x8_v
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_v:src <- $rdi
	#DEBUG_VALUE: predict_8x8_v:edge <- $rsi
	.loc	0 558 20 prologue_end           # x264_src/common/predict.c:558:20
	movq	16(%rsi), %rax
.Ltmp447:
	#DEBUG_VALUE: predict_8x8_v:top <- $rax
	#DEBUG_VALUE: y <- 0
	.loc	0 560 34                        # x264_src/common/predict.c:560:34
	movq	%rax, (%rdi)
.Ltmp448:
	#DEBUG_VALUE: y <- 1
	movq	%rax, 32(%rdi)
.Ltmp449:
	#DEBUG_VALUE: y <- 2
	movq	%rax, 64(%rdi)
.Ltmp450:
	#DEBUG_VALUE: y <- 3
	movq	%rax, 96(%rdi)
.Ltmp451:
	#DEBUG_VALUE: y <- 4
	movq	%rax, 128(%rdi)
.Ltmp452:
	#DEBUG_VALUE: y <- 5
	movq	%rax, 160(%rdi)
.Ltmp453:
	#DEBUG_VALUE: y <- 6
	movq	%rax, 192(%rdi)
.Ltmp454:
	#DEBUG_VALUE: y <- 7
	movq	%rax, 224(%rdi)
.Ltmp455:
	#DEBUG_VALUE: y <- 8
	.loc	0 561 1                         # x264_src/common/predict.c:561:1
	retq
.Ltmp456:
.Lfunc_end17:
	.size	predict_8x8_v, .Lfunc_end17-predict_8x8_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_h
	.type	predict_8x8_h,@function
predict_8x8_h:                          # @predict_8x8_h
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_h:src <- $rdi
	#DEBUG_VALUE: predict_8x8_h:edge <- $rsi
	.loc	0 550 5 prologue_end            # x264_src/common/predict.c:550:5
	movzbl	14(%rsi), %eax
.Ltmp457:
	#DEBUG_VALUE: predict_8x8_h:l0 <- $eax
	movzbl	13(%rsi), %ecx
.Ltmp458:
	#DEBUG_VALUE: predict_8x8_h:l1 <- $ecx
	movzbl	12(%rsi), %edx
.Ltmp459:
	#DEBUG_VALUE: predict_8x8_h:l2 <- $edx
	movzbl	11(%rsi), %r8d
.Ltmp460:
	#DEBUG_VALUE: predict_8x8_h:l3 <- $r8d
	movzbl	10(%rsi), %r9d
.Ltmp461:
	#DEBUG_VALUE: predict_8x8_h:l4 <- $r9d
	movzbl	9(%rsi), %r10d
.Ltmp462:
	#DEBUG_VALUE: predict_8x8_h:l5 <- $r10d
	movzbl	8(%rsi), %r11d
.Ltmp463:
	#DEBUG_VALUE: predict_8x8_h:l6 <- $r11d
	movzbl	7(%rsi), %esi
.Ltmp464:
	#DEBUG_VALUE: predict_8x8_h:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: predict_8x8_h:l7 <- $esi
	.loc	0 553 5                         # x264_src/common/predict.c:553:5
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp465:
	movl	%eax, 4(%rdi)
	movl	%eax, (%rdi)
	.loc	0 553 13 is_stmt 0              # x264_src/common/predict.c:553:13
	imull	$16843009, %ecx, %eax           # imm = 0x1010101
	movl	%eax, 36(%rdi)
	movl	%eax, 32(%rdi)
	.loc	0 553 21                        # x264_src/common/predict.c:553:21
	imull	$16843009, %edx, %eax           # imm = 0x1010101
	movl	%eax, 68(%rdi)
	movl	%eax, 64(%rdi)
	.loc	0 553 29                        # x264_src/common/predict.c:553:29
	imull	$16843009, %r8d, %eax           # imm = 0x1010101
	movl	%eax, 100(%rdi)
	movl	%eax, 96(%rdi)
	.loc	0 553 37                        # x264_src/common/predict.c:553:37
	imull	$16843009, %r9d, %eax           # imm = 0x1010101
	movl	%eax, 132(%rdi)
	movl	%eax, 128(%rdi)
	.loc	0 553 45                        # x264_src/common/predict.c:553:45
	imull	$16843009, %r10d, %eax          # imm = 0x1010101
	movl	%eax, 164(%rdi)
	movl	%eax, 160(%rdi)
	.loc	0 553 53                        # x264_src/common/predict.c:553:53
	imull	$16843009, %r11d, %eax          # imm = 0x1010101
	movl	%eax, 196(%rdi)
	movl	%eax, 192(%rdi)
	.loc	0 553 61                        # x264_src/common/predict.c:553:61
	imull	$16843009, %esi, %eax           # imm = 0x1010101
	movl	%eax, 228(%rdi)
	movl	%eax, 224(%rdi)
	.loc	0 555 1 is_stmt 1               # x264_src/common/predict.c:555:1
	retq
.Ltmp466:
.Lfunc_end18:
	.size	predict_8x8_h, .Lfunc_end18-predict_8x8_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc
	.type	predict_8x8_dc,@function
predict_8x8_dc:                         # @predict_8x8_dc
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_dc:src <- $rdi
	#DEBUG_VALUE: predict_8x8_dc:edge <- $rsi
	.loc	0 542 5 prologue_end            # x264_src/common/predict.c:542:5
	movzbl	14(%rsi), %eax
.Ltmp467:
	#DEBUG_VALUE: predict_8x8_dc:l0 <- $eax
	movzbl	13(%rsi), %ecx
.Ltmp468:
	#DEBUG_VALUE: predict_8x8_dc:l1 <- $ecx
	.loc	0 544 23                        # x264_src/common/predict.c:544:23
	addl	%eax, %ecx
.Ltmp469:
	.loc	0 542 5                         # x264_src/common/predict.c:542:5
	movzbl	12(%rsi), %eax
.Ltmp470:
	#DEBUG_VALUE: predict_8x8_dc:l2 <- $eax
	movzbl	11(%rsi), %edx
.Ltmp471:
	#DEBUG_VALUE: predict_8x8_dc:l3 <- $edx
	.loc	0 544 26                        # x264_src/common/predict.c:544:26
	addl	%eax, %edx
.Ltmp472:
	.loc	0 544 29 is_stmt 0              # x264_src/common/predict.c:544:29
	addl	%ecx, %edx
	.loc	0 542 5 is_stmt 1               # x264_src/common/predict.c:542:5
	movzbl	10(%rsi), %eax
.Ltmp473:
	#DEBUG_VALUE: predict_8x8_dc:l4 <- $eax
	movzbl	9(%rsi), %ecx
.Ltmp474:
	#DEBUG_VALUE: predict_8x8_dc:l5 <- $ecx
	.loc	0 544 32                        # x264_src/common/predict.c:544:32
	addl	%eax, %ecx
.Ltmp475:
	.loc	0 542 5                         # x264_src/common/predict.c:542:5
	movzbl	8(%rsi), %eax
.Ltmp476:
	#DEBUG_VALUE: predict_8x8_dc:l6 <- $eax
	.loc	0 544 35                        # x264_src/common/predict.c:544:35
	addl	%ecx, %eax
.Ltmp477:
	.loc	0 544 38 is_stmt 0              # x264_src/common/predict.c:544:38
	addl	%edx, %eax
	.loc	0 542 5 is_stmt 1               # x264_src/common/predict.c:542:5
	movzbl	7(%rsi), %ecx
.Ltmp478:
	#DEBUG_VALUE: predict_8x8_dc:l7 <- $ecx
	.loc	0 543 5                         # x264_src/common/predict.c:543:5
	movzbl	16(%rsi), %edx
.Ltmp479:
	#DEBUG_VALUE: predict_8x8_dc:t0 <- $edx
	.loc	0 544 41                        # x264_src/common/predict.c:544:41
	addl	%ecx, %edx
.Ltmp480:
	.loc	0 543 5                         # x264_src/common/predict.c:543:5
	movzbl	17(%rsi), %ecx
.Ltmp481:
	#DEBUG_VALUE: predict_8x8_dc:t1 <- $ecx
	.loc	0 545 20                        # x264_src/common/predict.c:545:20
	addl	%edx, %ecx
.Ltmp482:
	.loc	0 543 5                         # x264_src/common/predict.c:543:5
	movzbl	18(%rsi), %edx
.Ltmp483:
	#DEBUG_VALUE: predict_8x8_dc:t2 <- $edx
	.loc	0 545 23                        # x264_src/common/predict.c:545:23
	addl	%ecx, %edx
.Ltmp484:
	.loc	0 545 26 is_stmt 0              # x264_src/common/predict.c:545:26
	addl	%eax, %edx
	.loc	0 543 5 is_stmt 1               # x264_src/common/predict.c:543:5
	movzbl	19(%rsi), %eax
.Ltmp485:
	#DEBUG_VALUE: predict_8x8_dc:t3 <- $eax
	movzbl	20(%rsi), %ecx
.Ltmp486:
	#DEBUG_VALUE: predict_8x8_dc:t4 <- $ecx
	.loc	0 545 29                        # x264_src/common/predict.c:545:29
	addl	%eax, %ecx
.Ltmp487:
	.loc	0 543 5                         # x264_src/common/predict.c:543:5
	movzbl	21(%rsi), %eax
.Ltmp488:
	#DEBUG_VALUE: predict_8x8_dc:t5 <- $eax
	.loc	0 545 32                        # x264_src/common/predict.c:545:32
	addl	%ecx, %eax
.Ltmp489:
	.loc	0 543 5                         # x264_src/common/predict.c:543:5
	movzbl	22(%rsi), %ecx
.Ltmp490:
	#DEBUG_VALUE: predict_8x8_dc:t6 <- $ecx
	.loc	0 545 35                        # x264_src/common/predict.c:545:35
	addl	%eax, %ecx
.Ltmp491:
	.loc	0 545 38 is_stmt 0              # x264_src/common/predict.c:545:38
	addl	%edx, %ecx
	.loc	0 543 5 is_stmt 1               # x264_src/common/predict.c:543:5
	movzbl	23(%rsi), %eax
.Ltmp492:
	#DEBUG_VALUE: predict_8x8_dc:t7 <- $eax
	.loc	0 545 44                        # x264_src/common/predict.c:545:44
	addl	%ecx, %eax
.Ltmp493:
	addl	$8, %eax
	.loc	0 545 48 is_stmt 0              # x264_src/common/predict.c:545:48
	shrl	$4, %eax
	.loc	0 545 54                        # x264_src/common/predict.c:545:54
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp494:
	#DEBUG_VALUE: predict_8x8_dc:dc <- $eax
	#DEBUG_VALUE: y <- 0
	.loc	0 546 5 is_stmt 1               # x264_src/common/predict.c:546:5
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
.Ltmp495:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
.Ltmp496:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
.Ltmp497:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
.Ltmp498:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
.Ltmp499:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
.Ltmp500:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
.Ltmp501:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
.Ltmp502:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8_dc:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 547 1                         # x264_src/common/predict.c:547:1
	retq
.Ltmp503:
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
.Lfunc_begin20:
	.loc	0 563 0                         # x264_src/common/predict.c:563:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_ddl:src <- $rdi
	#DEBUG_VALUE: predict_8x8_ddl:edge <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	.loc	0 564 5 prologue_end            # x264_src/common/predict.c:564:5
	movzbl	16(%rsi), %r9d
.Ltmp504:
	#DEBUG_VALUE: predict_8x8_ddl:t0 <- $r9d
	movzbl	17(%rsi), %r10d
.Ltmp505:
	#DEBUG_VALUE: predict_8x8_ddl:t1 <- $r10d
	movzbl	18(%rsi), %r11d
.Ltmp506:
	#DEBUG_VALUE: predict_8x8_ddl:t2 <- $r11d
	movzbl	19(%rsi), %ebx
.Ltmp507:
	#DEBUG_VALUE: predict_8x8_ddl:t3 <- $ebx
	.loc	0 565 5                         # x264_src/common/predict.c:565:5
	movzbl	28(%rsi), %r8d
.Ltmp508:
	#DEBUG_VALUE: predict_8x8_ddl:t12 <- $r8d
	movzbl	29(%rsi), %eax
	movzwl	%ax, %edx
.Ltmp509:
	#DEBUG_VALUE: predict_8x8_ddl:t13 <- $edx
	movzbl	30(%rsi), %eax
.Ltmp510:
	#DEBUG_VALUE: predict_8x8_ddl:t14 <- $eax
	movzbl	31(%rsi), %ecx
.Ltmp511:
	#DEBUG_VALUE: predict_8x8_ddl:t15 <- $ecx
	.loc	0 566 15                        # x264_src/common/predict.c:566:15
	addl	%r11d, %r9d
.Ltmp512:
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	.loc	0 567 24                        # x264_src/common/predict.c:567:24
	addl	%ebx, %r10d
.Ltmp513:
	addl	$2, %r10d
	leal	(%r10,%r11,2), %r10d
	shrl	$2, %r10d
	.loc	0 568 33                        # x264_src/common/predict.c:568:33
	leal	(%r11,%rbx,2), %r11d
.Ltmp514:
	addl	$2, %r11d
	.loc	0 564 5                         # x264_src/common/predict.c:564:5
	movd	20(%rsi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	.loc	0 569 42                        # x264_src/common/predict.c:569:42
	pextrw	$0, %xmm1, %r14d
	.loc	0 568 33                        # x264_src/common/predict.c:568:33
	addl	%r14d, %r11d
	.loc	0 569 42                        # x264_src/common/predict.c:569:42
	leal	(%rbx,%r14,2), %ebp
	addl	$2, %ebp
	pextrw	$1, %xmm1, %ebx
.Ltmp515:
	.loc	0 568 33                        # x264_src/common/predict.c:568:33
	shrl	$2, %r11d
	.loc	0 569 42                        # x264_src/common/predict.c:569:42
	addl	%ebp, %ebx
	.loc	0 565 5                         # x264_src/common/predict.c:565:5
	movl	24(%rsi), %esi
.Ltmp516:
	#DEBUG_VALUE: predict_8x8_ddl:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 570 51                        # x264_src/common/predict.c:570:51
	movzbl	%sil, %ebp
	.loc	0 565 5                         # x264_src/common/predict.c:565:5
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	.loc	0 570 51                        # x264_src/common/predict.c:570:51
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	paddw	%xmm1, %xmm0
	pinsrw	$0, %ebp, %xmm1
	.loc	0 569 42                        # x264_src/common/predict.c:569:42
	shrl	$2, %ebx
	.loc	0 570 51                        # x264_src/common/predict.c:570:51
	paddw	%xmm1, %xmm1
	pshuflw	$57, %xmm1, %xmm1               # xmm1 = xmm1[1,2,3,0,4,5,6,7]
	movdqa	.LCPI20_0(%rip), %xmm3          # xmm3 = [2,2,2,2,u,u,u,u]
	.loc	0 566 13                        # x264_src/common/predict.c:566:13
	movb	%r9b, (%rdi)
	.loc	0 567 22                        # x264_src/common/predict.c:567:22
	movb	%r10b, 1(%rdi)
	.loc	0 567 13 is_stmt 0              # x264_src/common/predict.c:567:13
	movb	%r10b, 32(%rdi)
	.loc	0 568 31 is_stmt 1              # x264_src/common/predict.c:568:31
	movb	%r11b, 2(%rdi)
	.loc	0 568 22 is_stmt 0              # x264_src/common/predict.c:568:22
	movb	%r11b, 33(%rdi)
	.loc	0 568 13                        # x264_src/common/predict.c:568:13
	movb	%r11b, 64(%rdi)
	.loc	0 569 40 is_stmt 1              # x264_src/common/predict.c:569:40
	movb	%bl, 3(%rdi)
	.loc	0 569 31 is_stmt 0              # x264_src/common/predict.c:569:31
	movb	%bl, 34(%rdi)
	.loc	0 569 22                        # x264_src/common/predict.c:569:22
	movb	%bl, 65(%rdi)
	.loc	0 569 13                        # x264_src/common/predict.c:569:13
	movb	%bl, 96(%rdi)
	.loc	0 570 51 is_stmt 1              # x264_src/common/predict.c:570:51
	paddw	%xmm3, %xmm0
	paddw	%xmm1, %xmm0
	psrlw	$2, %xmm0
	movdqa	.LCPI20_1(%rip), %xmm1          # xmm1 = [255,255,255,255,255,255,255,255]
	pand	%xmm1, %xmm0
	packuswb	%xmm0, %xmm0
	.loc	0 570 49 is_stmt 0              # x264_src/common/predict.c:570:49
	movd	%xmm0, 4(%rdi)
	.loc	0 570 40                        # x264_src/common/predict.c:570:40
	movd	%xmm0, 35(%rdi)
	.loc	0 570 31                        # x264_src/common/predict.c:570:31
	movd	%xmm0, 66(%rdi)
	.loc	0 570 22                        # x264_src/common/predict.c:570:22
	movd	%xmm0, 97(%rdi)
	.loc	0 570 13                        # x264_src/common/predict.c:570:13
	movd	%xmm0, 128(%rdi)
	.loc	0 574 69 is_stmt 1              # x264_src/common/predict.c:574:69
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
	.loc	0 574 67 is_stmt 0              # x264_src/common/predict.c:574:67
	movb	%r10b, 39(%rdi)
	.loc	0 574 58                        # x264_src/common/predict.c:574:58
	movb	%r10b, 70(%rdi)
	.loc	0 574 49                        # x264_src/common/predict.c:574:49
	movb	%r10b, 101(%rdi)
	.loc	0 571 13 is_stmt 1              # x264_src/common/predict.c:571:13
	pslld	$24, %xmm2
	movdqa	%xmm0, %xmm3
	psrld	$8, %xmm3
	por	%xmm2, %xmm3
	movd	%xmm3, 160(%rdi)
	.loc	0 575 58                        # x264_src/common/predict.c:575:58
	movb	%r11b, 71(%rdi)
	.loc	0 575 49 is_stmt 0              # x264_src/common/predict.c:575:49
	movb	%r11b, 102(%rdi)
	.loc	0 575 31                        # x264_src/common/predict.c:575:31
	movb	%r11b, 164(%rdi)
	.loc	0 572 13 is_stmt 1              # x264_src/common/predict.c:572:13
	movdqa	%xmm0, %xmm2
	psrld	$16, %xmm2
	punpcklwd	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	movd	%xmm2, 192(%rdi)
	.loc	0 576 49                        # x264_src/common/predict.c:576:49
	movb	%r9b, 103(%rdi)
	.loc	0 576 31 is_stmt 0              # x264_src/common/predict.c:576:31
	movb	%r9b, 165(%rdi)
	.loc	0 576 22                        # x264_src/common/predict.c:576:22
	movb	%r9b, 196(%rdi)
	.loc	0 573 13 is_stmt 1              # x264_src/common/predict.c:573:13
	psrld	$24, %xmm0
	movdqa	%xmm1, %xmm2
	pslld	$8, %xmm2
	por	%xmm0, %xmm2
	movd	%xmm2, 224(%rdi)
	.loc	0 574 40                        # x264_src/common/predict.c:574:40
	movd	%xmm1, 132(%rdi)
	.loc	0 577 31                        # x264_src/common/predict.c:577:31
	movb	%sil, 166(%rdi)
	.loc	0 577 22 is_stmt 0              # x264_src/common/predict.c:577:22
	movb	%sil, 197(%rdi)
	.loc	0 577 13                        # x264_src/common/predict.c:577:13
	movb	%sil, 228(%rdi)
	.loc	0 578 33 is_stmt 1              # x264_src/common/predict.c:578:33
	leal	(%r8,%rdx,2), %esi
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 578 31 is_stmt 0              # x264_src/common/predict.c:578:31
	movb	%sil, 167(%rdi)
	.loc	0 578 22                        # x264_src/common/predict.c:578:22
	movb	%sil, 198(%rdi)
	.loc	0 578 13                        # x264_src/common/predict.c:578:13
	movb	%sil, 229(%rdi)
	.loc	0 579 24 is_stmt 1              # x264_src/common/predict.c:579:24
	leal	(%rdx,%rax,2), %edx
.Ltmp517:
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	.loc	0 579 22 is_stmt 0              # x264_src/common/predict.c:579:22
	movb	%dl, 199(%rdi)
	.loc	0 579 13                        # x264_src/common/predict.c:579:13
	movb	%dl, 230(%rdi)
	.loc	0 580 15 is_stmt 1              # x264_src/common/predict.c:580:15
	addl	%ecx, %eax
.Ltmp518:
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 580 13 is_stmt 0              # x264_src/common/predict.c:580:13
	movb	%al, 231(%rdi)
	.loc	0 581 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:581:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp519:
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
.Lfunc_begin21:
	.loc	0 583 0                         # x264_src/common/predict.c:583:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_ddr:src <- $rdi
	#DEBUG_VALUE: predict_8x8_ddr:edge <- $rsi
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
	.loc	0 584 5 prologue_end            # x264_src/common/predict.c:584:5
	movzbl	16(%rsi), %r8d
.Ltmp520:
	#DEBUG_VALUE: predict_8x8_ddr:t0 <- $r8d
	movzbl	17(%rsi), %eax
.Ltmp521:
	#DEBUG_VALUE: predict_8x8_ddr:t1 <- $eax
	#DEBUG_VALUE: predict_8x8_ddr:t6 <- undef
	#DEBUG_VALUE: predict_8x8_ddr:t7 <- undef
	.loc	0 585 5                         # x264_src/common/predict.c:585:5
	movzbl	10(%rsi), %ebx
.Ltmp522:
	#DEBUG_VALUE: predict_8x8_ddr:l4 <- $ebx
	movzbl	9(%rsi), %ecx
	movzwl	%cx, %r14d
.Ltmp523:
	#DEBUG_VALUE: predict_8x8_ddr:l5 <- $r14d
	movzbl	8(%rsi), %ecx
.Ltmp524:
	#DEBUG_VALUE: predict_8x8_ddr:l6 <- $ecx
	movzbl	7(%rsi), %edx
.Ltmp525:
	#DEBUG_VALUE: predict_8x8_ddr:l7 <- $edx
	.loc	0 586 5                         # x264_src/common/predict.c:586:5
	movzbl	15(%rsi), %r10d
.Ltmp526:
	#DEBUG_VALUE: predict_8x8_ddr:lt <- $r10d
	.loc	0 587 15                        # x264_src/common/predict.c:587:15
	addl	%r14d, %edx
.Ltmp527:
	leal	(%rdx,%rcx,2), %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	.loc	0 588 24                        # x264_src/common/predict.c:588:24
	addl	%ebx, %ecx
.Ltmp528:
	leal	(%rcx,%r14,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	.loc	0 595 69                        # x264_src/common/predict.c:595:69
	leal	(%rax,%r8,2), %edx
	addl	$2, %edx
	addl	%r10d, %edx
	shrl	$2, %edx
	.loc	0 596 60                        # x264_src/common/predict.c:596:60
	leal	(%r8,%rax,2), %ecx
	addl	$2, %ecx
	.loc	0 584 5                         # x264_src/common/predict.c:584:5
	movd	18(%rsi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm1, %xmm1
	.loc	0 585 5                         # x264_src/common/predict.c:585:5
	movd	11(%rsi), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	.loc	0 589 33                        # x264_src/common/predict.c:589:33
	movdqa	%xmm2, %xmm3
	.loc	0 593 69                        # x264_src/common/predict.c:593:69
	pextrw	$3, %xmm2, %r15d
	.loc	0 589 33                        # x264_src/common/predict.c:589:33
	pshufd	$80, %xmm2, %xmm5               # xmm5 = xmm2[0,0,1,1]
	pinsrw	$3, %ebx, %xmm2
	.loc	0 584 5                         # x264_src/common/predict.c:584:5
	punpcklbw	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	.loc	0 589 33                        # x264_src/common/predict.c:589:33
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
.Ltmp529:
	.loc	0 593 69                        # x264_src/common/predict.c:593:69
	pextrw	$2, %xmm3, %ebx
.Ltmp530:
	.loc	0 589 33                        # x264_src/common/predict.c:589:33
	movzbl	-28(%rsp), %r12d
	.loc	0 593 69                        # x264_src/common/predict.c:593:69
	leal	(%rbx,%r15,2), %ebx
	addl	%r10d, %ebx
	shrl	$2, %ebx
	.loc	0 594 78                        # x264_src/common/predict.c:594:78
	addl	%r15d, %r8d
.Ltmp531:
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r10d
.Ltmp532:
	shrl	$2, %r10d
	.loc	0 598 42                        # x264_src/common/predict.c:598:42
	movzbl	22(%rsi), %r8d
	movzbl	23(%rsi), %esi
.Ltmp533:
	#DEBUG_VALUE: predict_8x8_ddr:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 587 13                        # x264_src/common/predict.c:587:13
	movb	%r9b, 224(%rdi)
	.loc	0 588 22                        # x264_src/common/predict.c:588:22
	movb	%r11b, 225(%rdi)
	.loc	0 588 13 is_stmt 0              # x264_src/common/predict.c:588:13
	movb	%r11b, 192(%rdi)
	.loc	0 590 13 is_stmt 1              # x264_src/common/predict.c:590:13
	movb	%r14b, 128(%rdi)
	.loc	0 591 22                        # x264_src/common/predict.c:591:22
	movb	%r12b, 129(%rdi)
	.loc	0 591 13 is_stmt 0              # x264_src/common/predict.c:591:13
	movb	%r12b, 96(%rdi)
	.loc	0 589 31 is_stmt 1              # x264_src/common/predict.c:589:31
	movd	%xmm4, 226(%rdi)
	.loc	0 589 22 is_stmt 0              # x264_src/common/predict.c:589:22
	movd	%xmm4, 193(%rdi)
	.loc	0 589 13                        # x264_src/common/predict.c:589:13
	movd	%xmm4, 160(%rdi)
	.loc	0 592 31 is_stmt 1              # x264_src/common/predict.c:592:31
	movb	%bpl, 130(%rdi)
	.loc	0 592 22 is_stmt 0              # x264_src/common/predict.c:592:22
	movb	%bpl, 97(%rdi)
	.loc	0 592 13                        # x264_src/common/predict.c:592:13
	movb	%bpl, 64(%rdi)
	.loc	0 593 67 is_stmt 1              # x264_src/common/predict.c:593:67
	movb	%bl, 230(%rdi)
	.loc	0 593 58 is_stmt 0              # x264_src/common/predict.c:593:58
	movb	%bl, 197(%rdi)
	.loc	0 593 49                        # x264_src/common/predict.c:593:49
	movb	%bl, 164(%rdi)
	.loc	0 593 40                        # x264_src/common/predict.c:593:40
	movb	%bl, 131(%rdi)
	.loc	0 593 31                        # x264_src/common/predict.c:593:31
	movb	%bl, 98(%rdi)
	.loc	0 593 22                        # x264_src/common/predict.c:593:22
	movb	%bl, 65(%rdi)
	.loc	0 593 13                        # x264_src/common/predict.c:593:13
	movb	%bl, 32(%rdi)
	.loc	0 594 76 is_stmt 1              # x264_src/common/predict.c:594:76
	movb	%r10b, 231(%rdi)
	.loc	0 594 67 is_stmt 0              # x264_src/common/predict.c:594:67
	movb	%r10b, 198(%rdi)
	.loc	0 594 58                        # x264_src/common/predict.c:594:58
	movb	%r10b, 165(%rdi)
	.loc	0 594 49                        # x264_src/common/predict.c:594:49
	movb	%r10b, 132(%rdi)
	.loc	0 594 40                        # x264_src/common/predict.c:594:40
	movb	%r10b, 99(%rdi)
	.loc	0 594 31                        # x264_src/common/predict.c:594:31
	movb	%r10b, 66(%rdi)
	.loc	0 594 22                        # x264_src/common/predict.c:594:22
	movb	%r10b, 33(%rdi)
	.loc	0 594 13                        # x264_src/common/predict.c:594:13
	movb	%r10b, (%rdi)
	.loc	0 595 67 is_stmt 1              # x264_src/common/predict.c:595:67
	movb	%dl, 199(%rdi)
	.loc	0 595 58 is_stmt 0              # x264_src/common/predict.c:595:58
	movb	%dl, 166(%rdi)
	.loc	0 595 49                        # x264_src/common/predict.c:595:49
	movb	%dl, 133(%rdi)
	.loc	0 595 40                        # x264_src/common/predict.c:595:40
	movb	%dl, 100(%rdi)
	.loc	0 595 31                        # x264_src/common/predict.c:595:31
	movb	%dl, 67(%rdi)
	.loc	0 595 22                        # x264_src/common/predict.c:595:22
	movb	%dl, 34(%rdi)
	.loc	0 597 51 is_stmt 1              # x264_src/common/predict.c:597:51
	pextrw	$0, %xmm0, %r9d
	.loc	0 595 13                        # x264_src/common/predict.c:595:13
	movb	%dl, 1(%rdi)
	.loc	0 596 60                        # x264_src/common/predict.c:596:60
	addl	%r9d, %ecx
	shrl	$2, %ecx
	.loc	0 596 58 is_stmt 0              # x264_src/common/predict.c:596:58
	movb	%cl, 167(%rdi)
	.loc	0 596 49                        # x264_src/common/predict.c:596:49
	movb	%cl, 134(%rdi)
	.loc	0 596 40                        # x264_src/common/predict.c:596:40
	movb	%cl, 101(%rdi)
	.loc	0 596 31                        # x264_src/common/predict.c:596:31
	movb	%cl, 68(%rdi)
	.loc	0 596 22                        # x264_src/common/predict.c:596:22
	movb	%cl, 35(%rdi)
	.loc	0 596 13                        # x264_src/common/predict.c:596:13
	movb	%cl, 2(%rdi)
	.loc	0 597 51 is_stmt 1              # x264_src/common/predict.c:597:51
	leal	(%rax,%r9,2), %eax
.Ltmp534:
	addl	$2, %eax
	pextrw	$1, %xmm0, %ecx
	addl	%eax, %ecx
	shrl	$2, %ecx
	.loc	0 597 49 is_stmt 0              # x264_src/common/predict.c:597:49
	movb	%cl, 135(%rdi)
	.loc	0 597 40                        # x264_src/common/predict.c:597:40
	movb	%cl, 102(%rdi)
	.loc	0 597 31                        # x264_src/common/predict.c:597:31
	movb	%cl, 69(%rdi)
	.loc	0 597 22                        # x264_src/common/predict.c:597:22
	movb	%cl, 36(%rdi)
	.loc	0 597 13                        # x264_src/common/predict.c:597:13
	movb	%cl, 3(%rdi)
	.loc	0 598 42 is_stmt 1              # x264_src/common/predict.c:598:42
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
	.loc	0 598 40 is_stmt 0              # x264_src/common/predict.c:598:40
	movb	%cl, 103(%rdi)
	.loc	0 598 31                        # x264_src/common/predict.c:598:31
	movb	%cl, 70(%rdi)
	.loc	0 598 22                        # x264_src/common/predict.c:598:22
	movb	%cl, 37(%rdi)
	.loc	0 599 31 is_stmt 1              # x264_src/common/predict.c:599:31
	movb	%dl, 71(%rdi)
	.loc	0 599 22 is_stmt 0              # x264_src/common/predict.c:599:22
	movb	%dl, 38(%rdi)
	.loc	0 600 22 is_stmt 1              # x264_src/common/predict.c:600:22
	movb	%al, 39(%rdi)
	.loc	0 598 13                        # x264_src/common/predict.c:598:13
	movd	%xmm4, 4(%rdi)
	.loc	0 603 1 epilogue_begin          # x264_src/common/predict.c:603:1
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
.Ltmp535:
.Lfunc_end21:
	.size	predict_8x8_ddr, .Lfunc_end21-predict_8x8_ddr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_vr
	.type	predict_8x8_vr,@function
predict_8x8_vr:                         # @predict_8x8_vr
.Lfunc_begin22:
	.loc	0 605 0                         # x264_src/common/predict.c:605:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_vr:src <- $rdi
	#DEBUG_VALUE: predict_8x8_vr:edge <- $rsi
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
	.loc	0 606 5 prologue_end            # x264_src/common/predict.c:606:5
	movzbl	16(%rsi), %ebx
.Ltmp536:
	#DEBUG_VALUE: predict_8x8_vr:t0 <- $ebx
	movzbl	17(%rsi), %r11d
.Ltmp537:
	#DEBUG_VALUE: predict_8x8_vr:t1 <- $r11d
	movzbl	18(%rsi), %r10d
.Ltmp538:
	#DEBUG_VALUE: predict_8x8_vr:t2 <- $r10d
	movzbl	19(%rsi), %r9d
.Ltmp539:
	#DEBUG_VALUE: predict_8x8_vr:t3 <- $r9d
	movzbl	20(%rsi), %r8d
.Ltmp540:
	#DEBUG_VALUE: predict_8x8_vr:t4 <- $r8d
	movzbl	21(%rsi), %eax
.Ltmp541:
	#DEBUG_VALUE: predict_8x8_vr:t5 <- $eax
	.loc	0 0 5 is_stmt 0                 # x264_src/common/predict.c:0:5
	movq	%rax, -24(%rsp)                 # 8-byte Spill
.Ltmp542:
	#DEBUG_VALUE: predict_8x8_vr:t5 <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rsp
	.loc	0 606 5                         # x264_src/common/predict.c:606:5
	movzbl	22(%rsi), %eax
.Ltmp543:
	#DEBUG_VALUE: predict_8x8_vr:t6 <- $eax
	.loc	0 0 5                           # x264_src/common/predict.c:0:5
	movq	%rax, -16(%rsp)                 # 8-byte Spill
.Ltmp544:
	#DEBUG_VALUE: predict_8x8_vr:t6 <- [DW_OP_constu 16, DW_OP_minus, DW_OP_deref] $rsp
	.loc	0 606 5                         # x264_src/common/predict.c:606:5
	movzbl	23(%rsi), %eax
.Ltmp545:
	#DEBUG_VALUE: predict_8x8_vr:t7 <- $eax
	.loc	0 0 5                           # x264_src/common/predict.c:0:5
	movq	%rax, -8(%rsp)                  # 8-byte Spill
.Ltmp546:
	#DEBUG_VALUE: predict_8x8_vr:t7 <- [DW_OP_constu 8, DW_OP_minus, DW_OP_deref] $rsp
	.loc	0 607 5 is_stmt 1               # x264_src/common/predict.c:607:5
	movzbl	14(%rsi), %r14d
.Ltmp547:
	#DEBUG_VALUE: predict_8x8_vr:l0 <- $r14d
	movzbl	13(%rsi), %r15d
.Ltmp548:
	#DEBUG_VALUE: predict_8x8_vr:l1 <- $r15d
	movzbl	12(%rsi), %r12d
.Ltmp549:
	#DEBUG_VALUE: predict_8x8_vr:l2 <- $r12d
	movzbl	11(%rsi), %r13d
.Ltmp550:
	#DEBUG_VALUE: predict_8x8_vr:l3 <- $r13d
	movzbl	10(%rsi), %ebp
.Ltmp551:
	#DEBUG_VALUE: predict_8x8_vr:l4 <- $ebp
	movzbl	9(%rsi), %ecx
.Ltmp552:
	#DEBUG_VALUE: predict_8x8_vr:l5 <- $ecx
	movzbl	8(%rsi), %eax
.Ltmp553:
	#DEBUG_VALUE: predict_8x8_vr:l6 <- $eax
	.loc	0 608 5                         # x264_src/common/predict.c:608:5
	movzbl	15(%rsi), %esi
.Ltmp554:
	#DEBUG_VALUE: predict_8x8_vr:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: predict_8x8_vr:lt <- $esi
	.loc	0 609 15                        # x264_src/common/predict.c:609:15
	leal	(%rcx,%r13), %edx
	leal	(%rdx,%rbp,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	.loc	0 609 13 is_stmt 0              # x264_src/common/predict.c:609:13
	movb	%dl, 192(%rdi)
	.loc	0 610 15 is_stmt 1              # x264_src/common/predict.c:610:15
	addl	%ebp, %eax
.Ltmp555:
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 610 13 is_stmt 0              # x264_src/common/predict.c:610:13
	movb	%al, 224(%rdi)
	.loc	0 611 24 is_stmt 1              # x264_src/common/predict.c:611:24
	leal	(%r15,%r13), %eax
	addl	$2, %eax
	leal	(%rax,%r12,2), %eax
	shrl	$2, %eax
	.loc	0 611 22 is_stmt 0              # x264_src/common/predict.c:611:22
	movb	%al, 193(%rdi)
	.loc	0 611 13                        # x264_src/common/predict.c:611:13
	movb	%al, 128(%rdi)
	.loc	0 612 24 is_stmt 1              # x264_src/common/predict.c:612:24
	leal	(%r12,%rbp), %eax
	addl	$2, %eax
	leal	(%rax,%r13,2), %eax
	shrl	$2, %eax
	.loc	0 612 22 is_stmt 0              # x264_src/common/predict.c:612:22
	movb	%al, 225(%rdi)
	.loc	0 612 13                        # x264_src/common/predict.c:612:13
	movb	%al, 160(%rdi)
	.loc	0 613 33 is_stmt 1              # x264_src/common/predict.c:613:33
	leal	(%r15,%r14,2), %eax
	addl	$2, %eax
	addl	%esi, %eax
	shrl	$2, %eax
	.loc	0 613 31 is_stmt 0              # x264_src/common/predict.c:613:31
	movb	%al, 194(%rdi)
	.loc	0 613 22                        # x264_src/common/predict.c:613:22
	movb	%al, 129(%rdi)
	.loc	0 613 13                        # x264_src/common/predict.c:613:13
	movb	%al, 64(%rdi)
	.loc	0 614 33 is_stmt 1              # x264_src/common/predict.c:614:33
	leal	(%r12,%r14), %eax
	addl	$2, %eax
	leal	(%rax,%r15,2), %eax
	shrl	$2, %eax
	.loc	0 614 31 is_stmt 0              # x264_src/common/predict.c:614:31
	movb	%al, 226(%rdi)
	.loc	0 614 22                        # x264_src/common/predict.c:614:22
	movb	%al, 161(%rdi)
	.loc	0 614 13                        # x264_src/common/predict.c:614:13
	movb	%al, 96(%rdi)
	.loc	0 615 42 is_stmt 1              # x264_src/common/predict.c:615:42
	leal	(%rbx,%r14), %eax
	addl	$2, %eax
	leal	(%rax,%rsi,2), %eax
	shrl	$2, %eax
	.loc	0 615 40 is_stmt 0              # x264_src/common/predict.c:615:40
	movb	%al, 227(%rdi)
	.loc	0 615 31                        # x264_src/common/predict.c:615:31
	movb	%al, 162(%rdi)
	.loc	0 615 22                        # x264_src/common/predict.c:615:22
	movb	%al, 97(%rdi)
	.loc	0 615 13                        # x264_src/common/predict.c:615:13
	movb	%al, 32(%rdi)
	.loc	0 616 42 is_stmt 1              # x264_src/common/predict.c:616:42
	leal	(%rbx,%rsi), %eax
	incl	%eax
	shrl	%eax
	.loc	0 616 40 is_stmt 0              # x264_src/common/predict.c:616:40
	movb	%al, 195(%rdi)
	.loc	0 616 31                        # x264_src/common/predict.c:616:31
	movb	%al, 130(%rdi)
	.loc	0 616 22                        # x264_src/common/predict.c:616:22
	movb	%al, 65(%rdi)
	.loc	0 616 13                        # x264_src/common/predict.c:616:13
	movb	%al, (%rdi)
	.loc	0 617 42 is_stmt 1              # x264_src/common/predict.c:617:42
	leal	(%r11,%rbx,2), %eax
	addl	$2, %eax
	addl	%esi, %eax
	shrl	$2, %eax
	.loc	0 617 40 is_stmt 0              # x264_src/common/predict.c:617:40
	movb	%al, 228(%rdi)
	.loc	0 617 31                        # x264_src/common/predict.c:617:31
	movb	%al, 163(%rdi)
	.loc	0 617 22                        # x264_src/common/predict.c:617:22
	movb	%al, 98(%rdi)
	.loc	0 617 13                        # x264_src/common/predict.c:617:13
	movb	%al, 33(%rdi)
	.loc	0 618 42 is_stmt 1              # x264_src/common/predict.c:618:42
	leal	(%rbx,%r11), %eax
	incl	%eax
	shrl	%eax
	.loc	0 618 40 is_stmt 0              # x264_src/common/predict.c:618:40
	movb	%al, 196(%rdi)
	.loc	0 618 31                        # x264_src/common/predict.c:618:31
	movb	%al, 131(%rdi)
	.loc	0 618 22                        # x264_src/common/predict.c:618:22
	movb	%al, 66(%rdi)
	.loc	0 618 13                        # x264_src/common/predict.c:618:13
	movb	%al, 1(%rdi)
	.loc	0 619 42 is_stmt 1              # x264_src/common/predict.c:619:42
	leal	(%rbx,%r11,2), %eax
	addl	$2, %eax
	addl	%r10d, %eax
	shrl	$2, %eax
	.loc	0 619 40 is_stmt 0              # x264_src/common/predict.c:619:40
	movb	%al, 229(%rdi)
	.loc	0 619 31                        # x264_src/common/predict.c:619:31
	movb	%al, 164(%rdi)
	.loc	0 619 22                        # x264_src/common/predict.c:619:22
	movb	%al, 99(%rdi)
	.loc	0 619 13                        # x264_src/common/predict.c:619:13
	movb	%al, 34(%rdi)
	.loc	0 620 42 is_stmt 1              # x264_src/common/predict.c:620:42
	leal	(%r11,%r10), %eax
	incl	%eax
	shrl	%eax
	.loc	0 620 40 is_stmt 0              # x264_src/common/predict.c:620:40
	movb	%al, 197(%rdi)
	.loc	0 620 31                        # x264_src/common/predict.c:620:31
	movb	%al, 132(%rdi)
	.loc	0 620 22                        # x264_src/common/predict.c:620:22
	movb	%al, 67(%rdi)
	.loc	0 620 13                        # x264_src/common/predict.c:620:13
	movb	%al, 2(%rdi)
	.loc	0 621 42 is_stmt 1              # x264_src/common/predict.c:621:42
	leal	(%r11,%r10,2), %eax
	addl	$2, %eax
	addl	%r9d, %eax
	shrl	$2, %eax
	.loc	0 621 40 is_stmt 0              # x264_src/common/predict.c:621:40
	movb	%al, 230(%rdi)
	.loc	0 621 31                        # x264_src/common/predict.c:621:31
	movb	%al, 165(%rdi)
	.loc	0 621 22                        # x264_src/common/predict.c:621:22
	movb	%al, 100(%rdi)
	.loc	0 621 13                        # x264_src/common/predict.c:621:13
	movb	%al, 35(%rdi)
	.loc	0 622 42 is_stmt 1              # x264_src/common/predict.c:622:42
	leal	(%r10,%r9), %eax
	incl	%eax
	shrl	%eax
	.loc	0 622 40 is_stmt 0              # x264_src/common/predict.c:622:40
	movb	%al, 198(%rdi)
	.loc	0 622 31                        # x264_src/common/predict.c:622:31
	movb	%al, 133(%rdi)
	.loc	0 622 22                        # x264_src/common/predict.c:622:22
	movb	%al, 68(%rdi)
	.loc	0 622 13                        # x264_src/common/predict.c:622:13
	movb	%al, 3(%rdi)
	.loc	0 623 42 is_stmt 1              # x264_src/common/predict.c:623:42
	leal	(%r10,%r9,2), %eax
	addl	%r8d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 623 40 is_stmt 0              # x264_src/common/predict.c:623:40
	movb	%al, 231(%rdi)
	.loc	0 623 31                        # x264_src/common/predict.c:623:31
	movb	%al, 166(%rdi)
	.loc	0 623 22                        # x264_src/common/predict.c:623:22
	movb	%al, 101(%rdi)
	.loc	0 623 13                        # x264_src/common/predict.c:623:13
	movb	%al, 36(%rdi)
	.loc	0 624 42 is_stmt 1              # x264_src/common/predict.c:624:42
	leal	(%r9,%r8), %eax
	incl	%eax
	shrl	%eax
	.loc	0 624 40 is_stmt 0              # x264_src/common/predict.c:624:40
	movb	%al, 199(%rdi)
	.loc	0 624 31                        # x264_src/common/predict.c:624:31
	movb	%al, 134(%rdi)
	.loc	0 624 22                        # x264_src/common/predict.c:624:22
	movb	%al, 69(%rdi)
	.loc	0 624 13                        # x264_src/common/predict.c:624:13
	movb	%al, 4(%rdi)
	.loc	0 625 33 is_stmt 1              # x264_src/common/predict.c:625:33
	leal	(%r9,%r8,2), %eax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 625 31 is_stmt 0              # x264_src/common/predict.c:625:31
	movb	%al, 167(%rdi)
	.loc	0 625 22                        # x264_src/common/predict.c:625:22
	movb	%al, 102(%rdi)
	.loc	0 625 13                        # x264_src/common/predict.c:625:13
	movb	%al, 37(%rdi)
	.loc	0 626 33 is_stmt 1              # x264_src/common/predict.c:626:33
	leal	(%r8,%rdx), %eax
	incl	%eax
	shrl	%eax
	.loc	0 626 31 is_stmt 0              # x264_src/common/predict.c:626:31
	movb	%al, 135(%rdi)
	.loc	0 626 22                        # x264_src/common/predict.c:626:22
	movb	%al, 70(%rdi)
	.loc	0 626 13                        # x264_src/common/predict.c:626:13
	movb	%al, 5(%rdi)
	.loc	0 627 24 is_stmt 1              # x264_src/common/predict.c:627:24
	leal	(%r8,%rdx,2), %eax
	movq	-16(%rsp), %rcx                 # 8-byte Reload
.Ltmp556:
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 627 22 is_stmt 0              # x264_src/common/predict.c:627:22
	movb	%al, 103(%rdi)
	.loc	0 627 13                        # x264_src/common/predict.c:627:13
	movb	%al, 38(%rdi)
	.loc	0 628 24 is_stmt 1              # x264_src/common/predict.c:628:24
	leal	(%rdx,%rcx), %eax
	incl	%eax
	shrl	%eax
	.loc	0 628 22 is_stmt 0              # x264_src/common/predict.c:628:22
	movb	%al, 71(%rdi)
	.loc	0 628 13                        # x264_src/common/predict.c:628:13
	movb	%al, 6(%rdi)
	.loc	0 629 15 is_stmt 1              # x264_src/common/predict.c:629:15
	leal	(%rdx,%rcx,2), %eax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 629 13 is_stmt 0              # x264_src/common/predict.c:629:13
	movb	%al, 39(%rdi)
	.loc	0 630 15 is_stmt 1              # x264_src/common/predict.c:630:15
	leal	(%rcx,%rdx), %eax
	incl	%eax
	shrl	%eax
	.loc	0 630 13 is_stmt 0              # x264_src/common/predict.c:630:13
	movb	%al, 7(%rdi)
	.loc	0 631 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:631:1
	popq	%rbx
.Ltmp557:
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp558:
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp559:
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp560:
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp561:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp562:
	.cfi_def_cfa_offset 8
	retq
.Ltmp563:
.Lfunc_end22:
	.size	predict_8x8_vr, .Lfunc_end22-predict_8x8_vr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_hd
	.type	predict_8x8_hd,@function
predict_8x8_hd:                         # @predict_8x8_hd
.Lfunc_begin23:
	.loc	0 633 0                         # x264_src/common/predict.c:633:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_hd:src <- $rdi
	#DEBUG_VALUE: predict_8x8_hd:edge <- $rsi
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
	.loc	0 634 5 prologue_end            # x264_src/common/predict.c:634:5
	movzbl	16(%rsi), %ebx
.Ltmp564:
	#DEBUG_VALUE: predict_8x8_hd:t0 <- $ebx
	movzbl	17(%rsi), %r11d
.Ltmp565:
	#DEBUG_VALUE: predict_8x8_hd:t1 <- $r11d
	#DEBUG_VALUE: predict_8x8_hd:t2 <- undef
	#DEBUG_VALUE: predict_8x8_hd:t3 <- undef
	#DEBUG_VALUE: predict_8x8_hd:t4 <- undef
	#DEBUG_VALUE: predict_8x8_hd:t5 <- undef
	#DEBUG_VALUE: predict_8x8_hd:t6 <- undef
	.loc	0 635 5                         # x264_src/common/predict.c:635:5
	movzbl	14(%rsi), %r14d
.Ltmp566:
	#DEBUG_VALUE: predict_8x8_hd:l0 <- $r14d
	movzbl	13(%rsi), %r12d
.Ltmp567:
	#DEBUG_VALUE: predict_8x8_hd:l1 <- $r12d
	movzbl	12(%rsi), %r13d
.Ltmp568:
	#DEBUG_VALUE: predict_8x8_hd:l2 <- $r13d
	movzbl	11(%rsi), %r10d
.Ltmp569:
	#DEBUG_VALUE: predict_8x8_hd:l3 <- $r10d
	movzbl	10(%rsi), %r9d
.Ltmp570:
	#DEBUG_VALUE: predict_8x8_hd:l4 <- $r9d
	movzbl	9(%rsi), %r8d
.Ltmp571:
	#DEBUG_VALUE: predict_8x8_hd:l5 <- $r8d
	movzbl	8(%rsi), %edx
.Ltmp572:
	#DEBUG_VALUE: predict_8x8_hd:l6 <- $edx
	movzbl	7(%rsi), %ecx
.Ltmp573:
	#DEBUG_VALUE: predict_8x8_hd:l7 <- $ecx
	.loc	0 636 5                         # x264_src/common/predict.c:636:5
	movzbl	15(%rsi), %r15d
.Ltmp574:
	#DEBUG_VALUE: predict_8x8_hd:lt <- $r15d
	.loc	0 637 24                        # x264_src/common/predict.c:637:24
	leal	(%rdx,%rcx), %eax
	incl	%eax
	shrl	%eax
	movzbl	%al, %ebp
.Ltmp575:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 637 35 is_stmt 0              # x264_src/common/predict.c:637:35
	leal	(%r8,%rdx,2), %eax
	addl	%ecx, %eax
.Ltmp576:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $eax
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %eax
.Ltmp577:
	subl	$-128, %eax
	andl	$261888, %eax                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %eax
.Ltmp578:
	#DEBUG_VALUE: predict_8x8_hd:p1 <- $eax
	.loc	2 0 13                          # x264_src/common/macroblock.h:0:13
	movl	%eax, -4(%rsp)                  # 4-byte Spill
.Ltmp579:
	#DEBUG_VALUE: predict_8x8_hd:p1 <- [DW_OP_constu 4, DW_OP_minus, DW_OP_deref] $rsp
	.loc	0 638 24 is_stmt 1              # x264_src/common/predict.c:638:24
	leal	(%r8,%rdx), %ecx
.Ltmp580:
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ebp
.Ltmp581:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 638 35 is_stmt 0              # x264_src/common/predict.c:638:35
	leal	(%r9,%r8,2), %ecx
	addl	%edx, %ecx
.Ltmp582:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $ecx
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %ecx
.Ltmp583:
	subl	$-128, %ecx
	andl	$261888, %ecx                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %ecx
.Ltmp584:
	#DEBUG_VALUE: predict_8x8_hd:p2 <- $ecx
	.loc	0 639 24 is_stmt 1              # x264_src/common/predict.c:639:24
	leal	(%r9,%r8), %edx
.Ltmp585:
	incl	%edx
	shrl	%edx
	movzbl	%dl, %ebp
.Ltmp586:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 639 35 is_stmt 0              # x264_src/common/predict.c:639:35
	leal	(%r10,%r9,2), %edx
	addl	%r8d, %edx
.Ltmp587:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $edx
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %edx
.Ltmp588:
	subl	$-128, %edx
	andl	$261888, %edx                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %edx
.Ltmp589:
	#DEBUG_VALUE: predict_8x8_hd:p3 <- $edx
	.loc	0 640 24 is_stmt 1              # x264_src/common/predict.c:640:24
	leal	(%r10,%r9), %r8d
.Ltmp590:
	incl	%r8d
	shrl	%r8d
	movzbl	%r8b, %ebp
.Ltmp591:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 640 35 is_stmt 0              # x264_src/common/predict.c:640:35
	leal	(%r13,%r10,2), %r8d
	addl	%r9d, %r8d
.Ltmp592:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r8d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r8d
.Ltmp593:
	subl	$-128, %r8d
	andl	$261888, %r8d                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %r8d
.Ltmp594:
	#DEBUG_VALUE: predict_8x8_hd:p4 <- $r8d
	.loc	0 641 24 is_stmt 1              # x264_src/common/predict.c:641:24
	leal	(%r10,%r13), %r9d
.Ltmp595:
	incl	%r9d
	shrl	%r9d
	movzbl	%r9b, %ebp
.Ltmp596:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 641 35 is_stmt 0              # x264_src/common/predict.c:641:35
	leal	(%r12,%r13,2), %r9d
	addl	%r10d, %r9d
.Ltmp597:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r9d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r9d
.Ltmp598:
	subl	$-128, %r9d
	andl	$261888, %r9d                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %r9d
.Ltmp599:
	#DEBUG_VALUE: predict_8x8_hd:p5 <- $r9d
	.loc	0 642 24 is_stmt 1              # x264_src/common/predict.c:642:24
	leal	(%r12,%r13), %r10d
.Ltmp600:
	incl	%r10d
	shrl	%r10d
	movzbl	%r10b, %ebp
.Ltmp601:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 642 35 is_stmt 0              # x264_src/common/predict.c:642:35
	leal	(%r14,%r12,2), %r10d
	addl	%r13d, %r10d
.Ltmp602:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r10d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r10d
.Ltmp603:
	subl	$-128, %r10d
	andl	$261888, %r10d                  # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %r10d
.Ltmp604:
	#DEBUG_VALUE: predict_8x8_hd:p6 <- $r10d
	.loc	0 643 24 is_stmt 1              # x264_src/common/predict.c:643:24
	leal	(%r14,%r12), %ebp
.Ltmp605:
	incl	%ebp
	shrl	%ebp
	movzbl	%bpl, %r13d
.Ltmp606:
	#DEBUG_VALUE: pack8to16:a <- $r13d
	.loc	0 643 35 is_stmt 0              # x264_src/common/predict.c:643:35
	leal	(%r12,%r14,2), %ebp
	addl	%r15d, %ebp
.Ltmp607:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $ebp
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %ebp
.Ltmp608:
	subl	$-128, %ebp
	andl	$261888, %ebp                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%r13d, %ebp
.Ltmp609:
	#DEBUG_VALUE: predict_8x8_hd:p7 <- $ebp
	.loc	0 644 24 is_stmt 1              # x264_src/common/predict.c:644:24
	leal	(%r14,%r15), %r12d
.Ltmp610:
	incl	%r12d
.Ltmp611:
	#DEBUG_VALUE: pack8to16:a <- undef
	.loc	0 644 35 is_stmt 0              # x264_src/common/predict.c:644:35
	addl	%ebx, %r14d
.Ltmp612:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r14d, $r15d
	#DEBUG_VALUE: predict_8x8_hd:p8 <- undef
	.loc	0 645 24 is_stmt 1              # x264_src/common/predict.c:645:24
	leal	(%r11,%rbx,2), %r13d
.Ltmp613:
	addl	$2, %r13d
	addl	%r15d, %r13d
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.Ltmp614:
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	shll	$7, %r15d
.Ltmp615:
	shll	$6, %r14d
	addl	%r15d, %r14d
	addl	$128, %r14d
.Ltmp616:
	.loc	0 634 5                         # x264_src/common/predict.c:634:5
	movzbl	18(%rsi), %r15d
.Ltmp617:
	#DEBUG_VALUE: predict_8x8_hd:t2 <- $r15d
	.loc	0 644 24                        # x264_src/common/predict.c:644:24
	shrl	%r12d
	movzbl	%r12b, %r12d
.Ltmp618:
	#DEBUG_VALUE: pack8to16:a <- $r12d
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	andl	$130816, %r14d                  # imm = 0x1FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%r12d, %r14d
.Ltmp619:
	#DEBUG_VALUE: predict_8x8_hd:p8 <- $r14d
	.loc	0 645 38 is_stmt 1              # x264_src/common/predict.c:645:38
	addl	%r15d, %ebx
.Ltmp620:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $ebx, $r11d
	#DEBUG_VALUE: pack8to16:a <- undef
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	movl	%r11d, %r12d
.Ltmp621:
	shll	$7, %r12d
	shll	$6, %ebx
.Ltmp622:
	addl	%r12d, %ebx
	addl	$128, %ebx
.Ltmp623:
	#DEBUG_VALUE: predict_8x8_hd:p9 <- undef
	.loc	0 634 5                         # x264_src/common/predict.c:634:5
	movzbl	19(%rsi), %r12d
.Ltmp624:
	#DEBUG_VALUE: predict_8x8_hd:t3 <- $r12d
	.loc	0 646 25                        # x264_src/common/predict.c:646:25
	addl	%r12d, %r11d
.Ltmp625:
	addl	$2, %r11d
	.loc	0 645 24                        # x264_src/common/predict.c:645:24
	shrl	$2, %r13d
.Ltmp626:
	#DEBUG_VALUE: pack8to16:a <- $r13d
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	andl	$130816, %ebx                   # imm = 0x1FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	addl	%r13d, %ebx
.Ltmp627:
	#DEBUG_VALUE: predict_8x8_hd:p9 <- $ebx
	.loc	0 634 5 is_stmt 1               # x264_src/common/predict.c:634:5
	movzbl	20(%rsi), %r13d
.Ltmp628:
	#DEBUG_VALUE: predict_8x8_hd:t4 <- $r13d
	.loc	0 646 25                        # x264_src/common/predict.c:646:25
	leal	(%r11,%r15,2), %eax
	.loc	0 646 39 is_stmt 0              # x264_src/common/predict.c:646:39
	addl	%r13d, %r15d
.Ltmp629:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r15d, $r12d
	#DEBUG_VALUE: pack8to16:a <- undef
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	movl	%r12d, %r11d
	shll	$7, %r11d
	shll	$6, %r15d
.Ltmp630:
	addl	%r15d, %r11d
	addl	$128, %r11d
.Ltmp631:
	.loc	0 646 25                        # x264_src/common/predict.c:646:25
	shrl	$2, %eax
.Ltmp632:
	#DEBUG_VALUE: pack8to16:a <- $eax
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	andl	$130816, %r11d                  # imm = 0x1FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	addl	%eax, %r11d
.Ltmp633:
	#DEBUG_VALUE: predict_8x8_hd:p10 <- $r11d
	.loc	0 634 5 is_stmt 1               # x264_src/common/predict.c:634:5
	movzbl	21(%rsi), %eax
.Ltmp634:
	#DEBUG_VALUE: predict_8x8_hd:t5 <- $eax
	movzbl	22(%rsi), %esi
.Ltmp635:
	#DEBUG_VALUE: predict_8x8_hd:t6 <- $esi
	#DEBUG_VALUE: predict_8x8_hd:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 647 25                        # x264_src/common/predict.c:647:25
	addl	%eax, %r12d
.Ltmp636:
	leal	(%r12,%r13,2), %r15d
	addl	$2, %r15d
	.loc	0 647 39 is_stmt 0              # x264_src/common/predict.c:647:39
	addl	%r13d, %esi
.Ltmp637:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $esi, $eax
	#DEBUG_VALUE: pack8to16:a <- undef
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$7, %eax
.Ltmp638:
	shll	$6, %esi
	addl	%eax, %esi
	addl	$128, %esi
.Ltmp639:
	.loc	0 647 25                        # x264_src/common/predict.c:647:25
	shrl	$2, %r15d
.Ltmp640:
	#DEBUG_VALUE: pack8to16:a <- $r15d
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	andl	$65280, %esi                    # imm = 0xFF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	addl	%r15d, %esi
.Ltmp641:
	#DEBUG_VALUE: predict_8x8_hd:p11 <- $esi
	#DEBUG_VALUE: pack16to32:b <- $ecx
	#DEBUG_VALUE: pack16to32:a <- [DW_OP_constu 4, DW_OP_minus, DW_OP_deref] $rsp
	#DEBUG_VALUE: pack16to32:b <- $edx
	#DEBUG_VALUE: pack16to32:a <- $ecx
	#DEBUG_VALUE: pack16to32:b <- $r8d
	#DEBUG_VALUE: pack16to32:a <- $edx
	#DEBUG_VALUE: pack16to32:b <- $r9d
	#DEBUG_VALUE: pack16to32:a <- $r8d
	#DEBUG_VALUE: pack16to32:b <- $r10d
	#DEBUG_VALUE: pack16to32:a <- $r9d
	#DEBUG_VALUE: pack16to32:b <- $ebp
	#DEBUG_VALUE: pack16to32:a <- $r10d
	#DEBUG_VALUE: pack16to32:b <- $r14d
	#DEBUG_VALUE: pack16to32:a <- $ebp
	#DEBUG_VALUE: pack16to32:b <- $ebx
	#DEBUG_VALUE: pack16to32:a <- $r14d
	#DEBUG_VALUE: pack16to32:a <- $ebx
	#DEBUG_VALUE: pack16to32:b <- $r11d
	#DEBUG_VALUE: pack16to32:a <- $r11d
	#DEBUG_VALUE: pack16to32:b <- $esi
	.loc	2 321 17 is_stmt 1              # x264_src/common/macroblock.h:321:17
	shll	$16, %esi
.Ltmp642:
	.loc	2 321 13 is_stmt 0              # x264_src/common/macroblock.h:321:13
	addl	%r11d, %esi
.Ltmp643:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r11d
.Ltmp644:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%ebx, %r11d
.Ltmp645:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %ebx
.Ltmp646:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r14d, %ebx
.Ltmp647:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r14d
.Ltmp648:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%ebp, %r14d
.Ltmp649:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %ebp
.Ltmp650:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r10d, %ebp
.Ltmp651:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r10d
.Ltmp652:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r9d, %r10d
.Ltmp653:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r9d
.Ltmp654:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r8d, %r9d
.Ltmp655:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r8d
.Ltmp656:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%edx, %r8d
.Ltmp657:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %edx
.Ltmp658:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%ecx, %edx
.Ltmp659:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %ecx
.Ltmp660:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	-4(%rsp), %ecx                  # 4-byte Folded Reload
.Ltmp661:
	.loc	0 648 15 is_stmt 1              # x264_src/common/predict.c:648:15
	movl	%ecx, 224(%rdi)
	.loc	0 649 15                        # x264_src/common/predict.c:649:15
	movl	%edx, 192(%rdi)
	.loc	0 650 26                        # x264_src/common/predict.c:650:26
	movl	%r8d, 160(%rdi)
	.loc	0 650 15 is_stmt 0              # x264_src/common/predict.c:650:15
	movl	%r8d, 228(%rdi)
	.loc	0 651 26 is_stmt 1              # x264_src/common/predict.c:651:26
	movl	%r9d, 128(%rdi)
	.loc	0 651 15 is_stmt 0              # x264_src/common/predict.c:651:15
	movl	%r9d, 196(%rdi)
	.loc	0 652 26 is_stmt 1              # x264_src/common/predict.c:652:26
	movl	%r10d, 96(%rdi)
	.loc	0 652 15 is_stmt 0              # x264_src/common/predict.c:652:15
	movl	%r10d, 164(%rdi)
	.loc	0 653 26 is_stmt 1              # x264_src/common/predict.c:653:26
	movl	%ebp, 64(%rdi)
	.loc	0 653 15 is_stmt 0              # x264_src/common/predict.c:653:15
	movl	%ebp, 132(%rdi)
	.loc	0 654 26 is_stmt 1              # x264_src/common/predict.c:654:26
	movl	%r14d, 32(%rdi)
	.loc	0 654 15 is_stmt 0              # x264_src/common/predict.c:654:15
	movl	%r14d, 100(%rdi)
	.loc	0 655 26 is_stmt 1              # x264_src/common/predict.c:655:26
	movl	%ebx, (%rdi)
	.loc	0 655 15 is_stmt 0              # x264_src/common/predict.c:655:15
	movl	%ebx, 68(%rdi)
	.loc	0 656 15 is_stmt 1              # x264_src/common/predict.c:656:15
	movl	%r11d, 36(%rdi)
	.loc	0 657 15                        # x264_src/common/predict.c:657:15
	movl	%esi, 4(%rdi)
	.loc	0 658 1 epilogue_begin          # x264_src/common/predict.c:658:1
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp662:
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp663:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp664:
.Lfunc_end23:
	.size	predict_8x8_hd, .Lfunc_end23-predict_8x8_hd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_vl
	.type	predict_8x8_vl,@function
predict_8x8_vl:                         # @predict_8x8_vl
.Lfunc_begin24:
	.loc	0 660 0                         # x264_src/common/predict.c:660:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_vl:src <- $rdi
	#DEBUG_VALUE: predict_8x8_vl:edge <- $rsi
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
	.loc	0 661 5 prologue_end            # x264_src/common/predict.c:661:5
	movzbl	16(%rsi), %ebp
.Ltmp665:
	#DEBUG_VALUE: predict_8x8_vl:t0 <- $ebp
	movzbl	17(%rsi), %r13d
.Ltmp666:
	#DEBUG_VALUE: predict_8x8_vl:t1 <- $r13d
	movzbl	18(%rsi), %r12d
.Ltmp667:
	#DEBUG_VALUE: predict_8x8_vl:t2 <- $r12d
	movzbl	19(%rsi), %r15d
.Ltmp668:
	#DEBUG_VALUE: predict_8x8_vl:t3 <- $r15d
	movzbl	20(%rsi), %r14d
.Ltmp669:
	#DEBUG_VALUE: predict_8x8_vl:t4 <- $r14d
	movzbl	21(%rsi), %ebx
.Ltmp670:
	#DEBUG_VALUE: predict_8x8_vl:t5 <- $ebx
	movzbl	22(%rsi), %r11d
.Ltmp671:
	#DEBUG_VALUE: predict_8x8_vl:t6 <- $r11d
	movzbl	23(%rsi), %r10d
.Ltmp672:
	#DEBUG_VALUE: predict_8x8_vl:t7 <- $r10d
	.loc	0 662 5                         # x264_src/common/predict.c:662:5
	movzbl	24(%rsi), %r9d
.Ltmp673:
	#DEBUG_VALUE: predict_8x8_vl:t8 <- $r9d
	movzbl	25(%rsi), %r8d
.Ltmp674:
	#DEBUG_VALUE: predict_8x8_vl:t9 <- $r8d
	movzbl	26(%rsi), %ecx
.Ltmp675:
	#DEBUG_VALUE: predict_8x8_vl:t10 <- $ecx
	movzbl	27(%rsi), %edx
.Ltmp676:
	#DEBUG_VALUE: predict_8x8_vl:t11 <- $edx
	movzbl	28(%rsi), %eax
.Ltmp677:
	#DEBUG_VALUE: predict_8x8_vl:t12 <- $eax
	.loc	0 663 15                        # x264_src/common/predict.c:663:15
	leal	1(%r13,%rbp), %esi
.Ltmp678:
	#DEBUG_VALUE: predict_8x8_vl:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	shrl	%esi
	.loc	0 663 13 is_stmt 0              # x264_src/common/predict.c:663:13
	movb	%sil, (%rdi)
	.loc	0 664 15 is_stmt 1              # x264_src/common/predict.c:664:15
	leal	(%r12,%rbp), %esi
	addl	$2, %esi
	leal	(%rsi,%r13,2), %esi
	shrl	$2, %esi
	.loc	0 664 13 is_stmt 0              # x264_src/common/predict.c:664:13
	movb	%sil, 32(%rdi)
	.loc	0 665 24 is_stmt 1              # x264_src/common/predict.c:665:24
	leal	(%r12,%r13), %esi
	incl	%esi
	shrl	%esi
	.loc	0 665 22 is_stmt 0              # x264_src/common/predict.c:665:22
	movb	%sil, 1(%rdi)
	.loc	0 665 13                        # x264_src/common/predict.c:665:13
	movb	%sil, 64(%rdi)
	.loc	0 666 24 is_stmt 1              # x264_src/common/predict.c:666:24
	leal	(%r15,%r13), %esi
	addl	$2, %esi
	leal	(%rsi,%r12,2), %esi
	shrl	$2, %esi
	.loc	0 666 22 is_stmt 0              # x264_src/common/predict.c:666:22
	movb	%sil, 33(%rdi)
	.loc	0 666 13                        # x264_src/common/predict.c:666:13
	movb	%sil, 96(%rdi)
	.loc	0 667 33 is_stmt 1              # x264_src/common/predict.c:667:33
	leal	(%r12,%r15), %esi
	incl	%esi
	shrl	%esi
	.loc	0 667 31 is_stmt 0              # x264_src/common/predict.c:667:31
	movb	%sil, 2(%rdi)
	.loc	0 667 22                        # x264_src/common/predict.c:667:22
	movb	%sil, 65(%rdi)
	.loc	0 667 13                        # x264_src/common/predict.c:667:13
	movb	%sil, 128(%rdi)
	.loc	0 668 33 is_stmt 1              # x264_src/common/predict.c:668:33
	leal	(%r12,%r15,2), %esi
	addl	$2, %esi
	addl	%r14d, %esi
	shrl	$2, %esi
	.loc	0 668 31 is_stmt 0              # x264_src/common/predict.c:668:31
	movb	%sil, 34(%rdi)
	.loc	0 668 22                        # x264_src/common/predict.c:668:22
	movb	%sil, 97(%rdi)
	.loc	0 668 13                        # x264_src/common/predict.c:668:13
	movb	%sil, 160(%rdi)
	.loc	0 669 42 is_stmt 1              # x264_src/common/predict.c:669:42
	leal	(%r15,%r14), %esi
	incl	%esi
	shrl	%esi
	.loc	0 669 40 is_stmt 0              # x264_src/common/predict.c:669:40
	movb	%sil, 3(%rdi)
	.loc	0 669 31                        # x264_src/common/predict.c:669:31
	movb	%sil, 66(%rdi)
	.loc	0 669 22                        # x264_src/common/predict.c:669:22
	movb	%sil, 129(%rdi)
	.loc	0 669 13                        # x264_src/common/predict.c:669:13
	movb	%sil, 192(%rdi)
	.loc	0 670 42 is_stmt 1              # x264_src/common/predict.c:670:42
	leal	(%r15,%r14,2), %esi
	addl	$2, %esi
	addl	%ebx, %esi
	shrl	$2, %esi
	.loc	0 670 40 is_stmt 0              # x264_src/common/predict.c:670:40
	movb	%sil, 35(%rdi)
	.loc	0 670 31                        # x264_src/common/predict.c:670:31
	movb	%sil, 98(%rdi)
	.loc	0 670 22                        # x264_src/common/predict.c:670:22
	movb	%sil, 161(%rdi)
	.loc	0 670 13                        # x264_src/common/predict.c:670:13
	movb	%sil, 224(%rdi)
	.loc	0 671 42 is_stmt 1              # x264_src/common/predict.c:671:42
	leal	(%r14,%rbx), %esi
	incl	%esi
	shrl	%esi
	.loc	0 671 40 is_stmt 0              # x264_src/common/predict.c:671:40
	movb	%sil, 4(%rdi)
	.loc	0 671 31                        # x264_src/common/predict.c:671:31
	movb	%sil, 67(%rdi)
	.loc	0 671 22                        # x264_src/common/predict.c:671:22
	movb	%sil, 130(%rdi)
	.loc	0 671 13                        # x264_src/common/predict.c:671:13
	movb	%sil, 193(%rdi)
	.loc	0 672 42 is_stmt 1              # x264_src/common/predict.c:672:42
	leal	(%r14,%rbx,2), %esi
	addl	%r11d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 672 40 is_stmt 0              # x264_src/common/predict.c:672:40
	movb	%sil, 36(%rdi)
	.loc	0 672 31                        # x264_src/common/predict.c:672:31
	movb	%sil, 99(%rdi)
	.loc	0 672 22                        # x264_src/common/predict.c:672:22
	movb	%sil, 162(%rdi)
	.loc	0 672 13                        # x264_src/common/predict.c:672:13
	movb	%sil, 225(%rdi)
	.loc	0 673 42 is_stmt 1              # x264_src/common/predict.c:673:42
	leal	(%rbx,%r11), %esi
	incl	%esi
	shrl	%esi
	.loc	0 673 40 is_stmt 0              # x264_src/common/predict.c:673:40
	movb	%sil, 5(%rdi)
	.loc	0 673 31                        # x264_src/common/predict.c:673:31
	movb	%sil, 68(%rdi)
	.loc	0 673 22                        # x264_src/common/predict.c:673:22
	movb	%sil, 131(%rdi)
	.loc	0 673 13                        # x264_src/common/predict.c:673:13
	movb	%sil, 194(%rdi)
	.loc	0 674 42 is_stmt 1              # x264_src/common/predict.c:674:42
	leal	(%rbx,%r11,2), %esi
	addl	%r10d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 674 40 is_stmt 0              # x264_src/common/predict.c:674:40
	movb	%sil, 37(%rdi)
	.loc	0 674 31                        # x264_src/common/predict.c:674:31
	movb	%sil, 100(%rdi)
	.loc	0 674 22                        # x264_src/common/predict.c:674:22
	movb	%sil, 163(%rdi)
	.loc	0 674 13                        # x264_src/common/predict.c:674:13
	movb	%sil, 226(%rdi)
	.loc	0 675 42 is_stmt 1              # x264_src/common/predict.c:675:42
	leal	(%r11,%r10), %esi
	incl	%esi
	shrl	%esi
	.loc	0 675 40 is_stmt 0              # x264_src/common/predict.c:675:40
	movb	%sil, 6(%rdi)
	.loc	0 675 31                        # x264_src/common/predict.c:675:31
	movb	%sil, 69(%rdi)
	.loc	0 675 22                        # x264_src/common/predict.c:675:22
	movb	%sil, 132(%rdi)
	.loc	0 675 13                        # x264_src/common/predict.c:675:13
	movb	%sil, 195(%rdi)
	.loc	0 676 42 is_stmt 1              # x264_src/common/predict.c:676:42
	leal	(%r11,%r10,2), %esi
	addl	%r9d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 676 40 is_stmt 0              # x264_src/common/predict.c:676:40
	movb	%sil, 38(%rdi)
	.loc	0 676 31                        # x264_src/common/predict.c:676:31
	movb	%sil, 101(%rdi)
	.loc	0 676 22                        # x264_src/common/predict.c:676:22
	movb	%sil, 164(%rdi)
	.loc	0 676 13                        # x264_src/common/predict.c:676:13
	movb	%sil, 227(%rdi)
	.loc	0 677 42 is_stmt 1              # x264_src/common/predict.c:677:42
	leal	(%r10,%r9), %esi
	incl	%esi
	shrl	%esi
	.loc	0 677 40 is_stmt 0              # x264_src/common/predict.c:677:40
	movb	%sil, 7(%rdi)
	.loc	0 677 31                        # x264_src/common/predict.c:677:31
	movb	%sil, 70(%rdi)
	.loc	0 677 22                        # x264_src/common/predict.c:677:22
	movb	%sil, 133(%rdi)
	.loc	0 677 13                        # x264_src/common/predict.c:677:13
	movb	%sil, 196(%rdi)
	.loc	0 678 42 is_stmt 1              # x264_src/common/predict.c:678:42
	leal	(%r10,%r9,2), %esi
	addl	%r8d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 678 40 is_stmt 0              # x264_src/common/predict.c:678:40
	movb	%sil, 39(%rdi)
	.loc	0 678 31                        # x264_src/common/predict.c:678:31
	movb	%sil, 102(%rdi)
	.loc	0 678 22                        # x264_src/common/predict.c:678:22
	movb	%sil, 165(%rdi)
	.loc	0 678 13                        # x264_src/common/predict.c:678:13
	movb	%sil, 228(%rdi)
	.loc	0 679 33 is_stmt 1              # x264_src/common/predict.c:679:33
	leal	(%r9,%r8), %esi
	incl	%esi
	shrl	%esi
	.loc	0 679 31 is_stmt 0              # x264_src/common/predict.c:679:31
	movb	%sil, 71(%rdi)
	.loc	0 679 22                        # x264_src/common/predict.c:679:22
	movb	%sil, 134(%rdi)
	.loc	0 679 13                        # x264_src/common/predict.c:679:13
	movb	%sil, 197(%rdi)
	.loc	0 680 33 is_stmt 1              # x264_src/common/predict.c:680:33
	leal	(%r9,%r8,2), %esi
	addl	%ecx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 680 31 is_stmt 0              # x264_src/common/predict.c:680:31
	movb	%sil, 103(%rdi)
	.loc	0 680 22                        # x264_src/common/predict.c:680:22
	movb	%sil, 166(%rdi)
	.loc	0 680 13                        # x264_src/common/predict.c:680:13
	movb	%sil, 229(%rdi)
	.loc	0 681 24 is_stmt 1              # x264_src/common/predict.c:681:24
	leal	(%r8,%rcx), %esi
	incl	%esi
	shrl	%esi
	.loc	0 681 22 is_stmt 0              # x264_src/common/predict.c:681:22
	movb	%sil, 135(%rdi)
	.loc	0 681 13                        # x264_src/common/predict.c:681:13
	movb	%sil, 198(%rdi)
	.loc	0 682 24 is_stmt 1              # x264_src/common/predict.c:682:24
	leal	(%r8,%rcx,2), %esi
	addl	%edx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 682 22 is_stmt 0              # x264_src/common/predict.c:682:22
	movb	%sil, 167(%rdi)
	.loc	0 682 13                        # x264_src/common/predict.c:682:13
	movb	%sil, 230(%rdi)
	.loc	0 683 15 is_stmt 1              # x264_src/common/predict.c:683:15
	leal	(%rcx,%rdx), %esi
	incl	%esi
	shrl	%esi
	.loc	0 683 13 is_stmt 0              # x264_src/common/predict.c:683:13
	movb	%sil, 199(%rdi)
	.loc	0 684 15 is_stmt 1              # x264_src/common/predict.c:684:15
	leal	(%rcx,%rdx,2), %ecx
.Ltmp679:
	addl	%ecx, %eax
.Ltmp680:
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 684 13 is_stmt 0              # x264_src/common/predict.c:684:13
	movb	%al, 231(%rdi)
	.loc	0 685 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:685:1
	popq	%rbx
.Ltmp681:
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp682:
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp683:
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp684:
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp685:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp686:
	.cfi_def_cfa_offset 8
	retq
.Ltmp687:
.Lfunc_end24:
	.size	predict_8x8_vl, .Lfunc_end24-predict_8x8_vl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_hu
	.type	predict_8x8_hu,@function
predict_8x8_hu:                         # @predict_8x8_hu
.Lfunc_begin25:
	.loc	0 687 0                         # x264_src/common/predict.c:687:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_hu:src <- $rdi
	#DEBUG_VALUE: predict_8x8_hu:edge <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	.loc	0 688 5 prologue_end            # x264_src/common/predict.c:688:5
	movzbl	14(%rsi), %eax
.Ltmp688:
	#DEBUG_VALUE: predict_8x8_hu:l0 <- $eax
	movzbl	13(%rsi), %ebx
.Ltmp689:
	#DEBUG_VALUE: predict_8x8_hu:l1 <- $ebx
	movzbl	12(%rsi), %r8d
.Ltmp690:
	#DEBUG_VALUE: predict_8x8_hu:l2 <- $r8d
	movzbl	11(%rsi), %r9d
.Ltmp691:
	#DEBUG_VALUE: predict_8x8_hu:l3 <- $r9d
	movzbl	10(%rsi), %r10d
.Ltmp692:
	#DEBUG_VALUE: predict_8x8_hu:l4 <- $r10d
	movzbl	9(%rsi), %r11d
.Ltmp693:
	#DEBUG_VALUE: predict_8x8_hu:l5 <- $r11d
	movzbl	8(%rsi), %ecx
.Ltmp694:
	#DEBUG_VALUE: predict_8x8_hu:l6 <- $ecx
	movzbl	7(%rsi), %edx
.Ltmp695:
	#DEBUG_VALUE: predict_8x8_hu:l7 <- $edx
	.loc	0 689 24                        # x264_src/common/predict.c:689:24
	leal	(%rbx,%rax), %esi
.Ltmp696:
	#DEBUG_VALUE: predict_8x8_hu:edge <- [DW_OP_LLVM_entry_value 1] $rsi
	incl	%esi
	shrl	%esi
	movzbl	%sil, %esi
.Ltmp697:
	#DEBUG_VALUE: pack8to16:a <- $esi
	.loc	0 689 35 is_stmt 0              # x264_src/common/predict.c:689:35
	leal	(%rax,%rbx,2), %eax
.Ltmp698:
	addl	%r8d, %eax
.Ltmp699:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $eax
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %eax
.Ltmp700:
	subl	$-128, %eax
	andl	$261888, %eax                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%esi, %eax
.Ltmp701:
	#DEBUG_VALUE: predict_8x8_hu:p1 <- $eax
	.loc	0 690 24 is_stmt 1              # x264_src/common/predict.c:690:24
	leal	(%rbx,%r8), %esi
.Ltmp702:
	incl	%esi
	shrl	%esi
	movzbl	%sil, %ebp
.Ltmp703:
	#DEBUG_VALUE: pack8to16:a <- $ebp
	.loc	0 690 35 is_stmt 0              # x264_src/common/predict.c:690:35
	leal	(%rbx,%r8,2), %esi
	addl	%r9d, %esi
.Ltmp704:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $esi
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %esi
.Ltmp705:
	subl	$-128, %esi
	andl	$261888, %esi                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebp, %esi
.Ltmp706:
	#DEBUG_VALUE: predict_8x8_hu:p2 <- $esi
	.loc	0 691 24 is_stmt 1              # x264_src/common/predict.c:691:24
	leal	(%r8,%r9), %ebx
.Ltmp707:
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
.Ltmp708:
	#DEBUG_VALUE: pack8to16:a <- $ebx
	.loc	0 691 35 is_stmt 0              # x264_src/common/predict.c:691:35
	leal	(%r8,%r9,2), %r8d
.Ltmp709:
	addl	%r10d, %r8d
.Ltmp710:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r8d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r8d
.Ltmp711:
	subl	$-128, %r8d
	andl	$261888, %r8d                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebx, %r8d
.Ltmp712:
	#DEBUG_VALUE: predict_8x8_hu:p3 <- $r8d
	.loc	0 692 24 is_stmt 1              # x264_src/common/predict.c:692:24
	leal	(%r9,%r10), %ebx
.Ltmp713:
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
.Ltmp714:
	#DEBUG_VALUE: pack8to16:a <- $ebx
	.loc	0 692 35 is_stmt 0              # x264_src/common/predict.c:692:35
	leal	(%r9,%r10,2), %r9d
.Ltmp715:
	addl	%r11d, %r9d
.Ltmp716:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r9d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r9d
.Ltmp717:
	subl	$-128, %r9d
	andl	$261888, %r9d                   # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebx, %r9d
.Ltmp718:
	#DEBUG_VALUE: predict_8x8_hu:p4 <- $r9d
	.loc	0 693 24 is_stmt 1              # x264_src/common/predict.c:693:24
	leal	(%r10,%r11), %ebx
.Ltmp719:
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
.Ltmp720:
	#DEBUG_VALUE: pack8to16:a <- $ebx
	.loc	0 693 35 is_stmt 0              # x264_src/common/predict.c:693:35
	leal	(%r10,%r11,2), %r10d
.Ltmp721:
	addl	%ecx, %r10d
.Ltmp722:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r10d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r10d
.Ltmp723:
	subl	$-128, %r10d
	andl	$261888, %r10d                  # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebx, %r10d
.Ltmp724:
	#DEBUG_VALUE: predict_8x8_hu:p5 <- $r10d
	.loc	0 694 24 is_stmt 1              # x264_src/common/predict.c:694:24
	leal	(%r11,%rcx), %ebx
.Ltmp725:
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
.Ltmp726:
	#DEBUG_VALUE: pack8to16:a <- $ebx
	.loc	0 694 35 is_stmt 0              # x264_src/common/predict.c:694:35
	leal	(%r11,%rcx,2), %r11d
.Ltmp727:
	addl	%edx, %r11d
.Ltmp728:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $r11d
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$6, %r11d
.Ltmp729:
	subl	$-128, %r11d
	andl	$261888, %r11d                  # imm = 0x3FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%ebx, %r11d
.Ltmp730:
	#DEBUG_VALUE: predict_8x8_hu:p6 <- $r11d
	.loc	0 695 24 is_stmt 1              # x264_src/common/predict.c:695:24
	leal	(%rdx,%rcx), %ebx
.Ltmp731:
	incl	%ebx
.Ltmp732:
	#DEBUG_VALUE: pack8to16:a <- undef
	.loc	0 695 35 is_stmt 0              # x264_src/common/predict.c:695:35
	addl	%edx, %ecx
.Ltmp733:
	#DEBUG_VALUE: pack8to16:b <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst 2, DW_OP_constu 2, DW_OP_shr, DW_OP_stack_value] $ecx, $edx
	#DEBUG_VALUE: predict_8x8_hu:p7 <- undef
	#DEBUG_VALUE: pack16to32:b <- $esi
	#DEBUG_VALUE: pack16to32:a <- $eax
	#DEBUG_VALUE: predict_8x8_hu:p8 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_stack_value] $edx
	#DEBUG_VALUE: pack16to32:b <- $r8d
	#DEBUG_VALUE: pack16to32:a <- $esi
	#DEBUG_VALUE: pack16to32:b <- $r9d
	#DEBUG_VALUE: pack16to32:a <- $r8d
	#DEBUG_VALUE: pack16to32:b <- $r10d
	#DEBUG_VALUE: pack16to32:a <- $r9d
	#DEBUG_VALUE: pack16to32:b <- $r11d
	#DEBUG_VALUE: pack16to32:a <- $r10d
	#DEBUG_VALUE: pack16to32:b <- undef
	#DEBUG_VALUE: pack16to32:a <- $r11d
	#DEBUG_VALUE: pack16to32:a <- undef
	#DEBUG_VALUE: pack16to32:b <- [DW_OP_constu 257, DW_OP_mul, DW_OP_stack_value] $edx
	.loc	2 321 17 is_stmt 1              # x264_src/common/macroblock.h:321:17
	imull	$16842752, %edx, %ebp           # imm = 0x1010000
.Ltmp734:
	#DEBUG_VALUE: pack16to32:a <- [DW_OP_constu 257, DW_OP_mul, DW_OP_stack_value] $edx
	#DEBUG_VALUE: pack16to32:b <- [DW_OP_constu 257, DW_OP_mul, DW_OP_stack_value] $edx
	.loc	2 321 13 is_stmt 0              # x264_src/common/macroblock.h:321:13
	imull	$16843009, %edx, %r14d          # imm = 0x1010101
.Ltmp735:
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	.loc	2 329 17 is_stmt 1              # x264_src/common/macroblock.h:329:17
	shll	$7, %edx
.Ltmp736:
	shll	$6, %ecx
	addl	%edx, %ecx
	addl	$128, %ecx
.Ltmp737:
	.loc	0 695 24                        # x264_src/common/predict.c:695:24
	shrl	%ebx
	movzbl	%bl, %edx
.Ltmp738:
	#DEBUG_VALUE: pack8to16:a <- $edx
	.loc	2 329 17                        # x264_src/common/macroblock.h:329:17
	andl	$130816, %ecx                   # imm = 0x1FF00
	.loc	2 329 13 is_stmt 0              # x264_src/common/macroblock.h:329:13
	orl	%edx, %ecx
.Ltmp739:
	#DEBUG_VALUE: pack16to32:a <- $ecx
	#DEBUG_VALUE: pack16to32:b <- $ecx
	#DEBUG_VALUE: predict_8x8_hu:p7 <- $ecx
	.loc	2 321 13 is_stmt 1              # x264_src/common/macroblock.h:321:13
	addl	%ecx, %ebp
.Ltmp740:
	.loc	2 321 17 is_stmt 0              # x264_src/common/macroblock.h:321:17
	shll	$16, %ecx
.Ltmp741:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r11d, %ecx
.Ltmp742:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r11d
.Ltmp743:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r10d, %r11d
.Ltmp744:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r10d
.Ltmp745:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r9d, %r10d
.Ltmp746:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r9d
.Ltmp747:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%r8d, %r9d
.Ltmp748:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %r8d
.Ltmp749:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%esi, %r8d
.Ltmp750:
	.loc	2 321 17                        # x264_src/common/macroblock.h:321:17
	shll	$16, %esi
.Ltmp751:
	.loc	2 321 13                        # x264_src/common/macroblock.h:321:13
	addl	%eax, %esi
.Ltmp752:
	.loc	0 697 15 is_stmt 1              # x264_src/common/predict.c:697:15
	movl	%esi, (%rdi)
	.loc	0 698 15                        # x264_src/common/predict.c:698:15
	movl	%r8d, 32(%rdi)
	.loc	0 699 26                        # x264_src/common/predict.c:699:26
	movl	%r9d, 64(%rdi)
	.loc	0 699 15 is_stmt 0              # x264_src/common/predict.c:699:15
	movl	%r9d, 4(%rdi)
	.loc	0 700 26 is_stmt 1              # x264_src/common/predict.c:700:26
	movl	%r10d, 96(%rdi)
	.loc	0 700 15 is_stmt 0              # x264_src/common/predict.c:700:15
	movl	%r10d, 36(%rdi)
	.loc	0 701 26 is_stmt 1              # x264_src/common/predict.c:701:26
	movl	%r11d, 128(%rdi)
	.loc	0 701 15 is_stmt 0              # x264_src/common/predict.c:701:15
	movl	%r11d, 68(%rdi)
	.loc	0 702 26 is_stmt 1              # x264_src/common/predict.c:702:26
	movl	%ecx, 160(%rdi)
	.loc	0 702 15 is_stmt 0              # x264_src/common/predict.c:702:15
	movl	%ecx, 100(%rdi)
	.loc	0 703 26 is_stmt 1              # x264_src/common/predict.c:703:26
	movl	%ebp, 192(%rdi)
	.loc	0 703 15 is_stmt 0              # x264_src/common/predict.c:703:15
	movl	%ebp, 132(%rdi)
	.loc	0 704 52 is_stmt 1              # x264_src/common/predict.c:704:52
	movl	%r14d, 228(%rdi)
	.loc	0 704 39 is_stmt 0              # x264_src/common/predict.c:704:39
	movl	%r14d, 224(%rdi)
	.loc	0 704 26                        # x264_src/common/predict.c:704:26
	movl	%r14d, 196(%rdi)
	.loc	0 704 15                        # x264_src/common/predict.c:704:15
	movl	%r14d, 164(%rdi)
	.loc	0 705 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:705:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp753:
.Lfunc_end25:
	.size	predict_8x8_hu, .Lfunc_end25-predict_8x8_hu
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_left
	.type	predict_8x8_dc_left,@function
predict_8x8_dc_left:                    # @predict_8x8_dc_left
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_dc_left:src <- $rdi
	#DEBUG_VALUE: predict_8x8_dc_left:edge <- $rsi
	.loc	0 530 5 prologue_end            # x264_src/common/predict.c:530:5
	movzbl	14(%rsi), %eax
.Ltmp754:
	#DEBUG_VALUE: predict_8x8_dc_left:l0 <- $eax
	movzbl	13(%rsi), %ecx
.Ltmp755:
	#DEBUG_VALUE: predict_8x8_dc_left:l1 <- $ecx
	.loc	0 531 23                        # x264_src/common/predict.c:531:23
	addl	%eax, %ecx
.Ltmp756:
	.loc	0 530 5                         # x264_src/common/predict.c:530:5
	movzbl	12(%rsi), %eax
.Ltmp757:
	#DEBUG_VALUE: predict_8x8_dc_left:l2 <- $eax
	movzbl	11(%rsi), %edx
.Ltmp758:
	#DEBUG_VALUE: predict_8x8_dc_left:l3 <- $edx
	.loc	0 531 26                        # x264_src/common/predict.c:531:26
	addl	%eax, %edx
.Ltmp759:
	.loc	0 531 29 is_stmt 0              # x264_src/common/predict.c:531:29
	addl	%ecx, %edx
	.loc	0 530 5 is_stmt 1               # x264_src/common/predict.c:530:5
	movzbl	10(%rsi), %eax
.Ltmp760:
	#DEBUG_VALUE: predict_8x8_dc_left:l4 <- $eax
	movzbl	9(%rsi), %ecx
.Ltmp761:
	#DEBUG_VALUE: predict_8x8_dc_left:l5 <- $ecx
	.loc	0 531 32                        # x264_src/common/predict.c:531:32
	addl	%eax, %ecx
.Ltmp762:
	.loc	0 530 5                         # x264_src/common/predict.c:530:5
	movzbl	8(%rsi), %eax
.Ltmp763:
	#DEBUG_VALUE: predict_8x8_dc_left:l6 <- $eax
	.loc	0 531 35                        # x264_src/common/predict.c:531:35
	addl	%ecx, %eax
.Ltmp764:
	.loc	0 531 38 is_stmt 0              # x264_src/common/predict.c:531:38
	addl	%edx, %eax
	.loc	0 530 5 is_stmt 1               # x264_src/common/predict.c:530:5
	movzbl	7(%rsi), %ecx
.Ltmp765:
	#DEBUG_VALUE: predict_8x8_dc_left:l7 <- $ecx
	.loc	0 531 44                        # x264_src/common/predict.c:531:44
	addl	%ecx, %eax
	addl	$4, %eax
	.loc	0 531 48 is_stmt 0              # x264_src/common/predict.c:531:48
	shrl	$3, %eax
	.loc	0 531 54                        # x264_src/common/predict.c:531:54
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp766:
	#DEBUG_VALUE: predict_8x8_dc_left:dc <- $eax
	#DEBUG_VALUE: y <- 0
	.loc	0 532 5 is_stmt 1               # x264_src/common/predict.c:532:5
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
.Ltmp767:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
.Ltmp768:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
.Ltmp769:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
.Ltmp770:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
.Ltmp771:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
.Ltmp772:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
.Ltmp773:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
.Ltmp774:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8_dc_left:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 533 1                         # x264_src/common/predict.c:533:1
	retq
.Ltmp775:
.Lfunc_end26:
	.size	predict_8x8_dc_left, .Lfunc_end26-predict_8x8_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_top
	.type	predict_8x8_dc_top,@function
predict_8x8_dc_top:                     # @predict_8x8_dc_top
.Lfunc_begin27:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_dc_top:src <- $rdi
	#DEBUG_VALUE: predict_8x8_dc_top:edge <- $rsi
	.loc	0 536 5 prologue_end            # x264_src/common/predict.c:536:5
	movzbl	16(%rsi), %eax
.Ltmp776:
	#DEBUG_VALUE: predict_8x8_dc_top:t0 <- $eax
	movzbl	17(%rsi), %ecx
.Ltmp777:
	#DEBUG_VALUE: predict_8x8_dc_top:t1 <- $ecx
	.loc	0 537 23                        # x264_src/common/predict.c:537:23
	addl	%eax, %ecx
.Ltmp778:
	.loc	0 536 5                         # x264_src/common/predict.c:536:5
	movzbl	18(%rsi), %eax
.Ltmp779:
	#DEBUG_VALUE: predict_8x8_dc_top:t2 <- $eax
	movzbl	19(%rsi), %edx
.Ltmp780:
	#DEBUG_VALUE: predict_8x8_dc_top:t3 <- $edx
	.loc	0 537 26                        # x264_src/common/predict.c:537:26
	addl	%eax, %edx
.Ltmp781:
	.loc	0 537 29 is_stmt 0              # x264_src/common/predict.c:537:29
	addl	%ecx, %edx
	.loc	0 536 5 is_stmt 1               # x264_src/common/predict.c:536:5
	movzbl	20(%rsi), %eax
.Ltmp782:
	#DEBUG_VALUE: predict_8x8_dc_top:t4 <- $eax
	movzbl	21(%rsi), %ecx
.Ltmp783:
	#DEBUG_VALUE: predict_8x8_dc_top:t5 <- $ecx
	.loc	0 537 32                        # x264_src/common/predict.c:537:32
	addl	%eax, %ecx
.Ltmp784:
	.loc	0 536 5                         # x264_src/common/predict.c:536:5
	movzbl	22(%rsi), %eax
.Ltmp785:
	#DEBUG_VALUE: predict_8x8_dc_top:t6 <- $eax
	.loc	0 537 35                        # x264_src/common/predict.c:537:35
	addl	%ecx, %eax
.Ltmp786:
	.loc	0 537 38 is_stmt 0              # x264_src/common/predict.c:537:38
	addl	%edx, %eax
	.loc	0 536 5 is_stmt 1               # x264_src/common/predict.c:536:5
	movzbl	23(%rsi), %ecx
.Ltmp787:
	#DEBUG_VALUE: predict_8x8_dc_top:t7 <- $ecx
	.loc	0 537 44                        # x264_src/common/predict.c:537:44
	addl	%ecx, %eax
	addl	$4, %eax
	.loc	0 537 48 is_stmt 0              # x264_src/common/predict.c:537:48
	shrl	$3, %eax
	.loc	0 537 54                        # x264_src/common/predict.c:537:54
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp788:
	#DEBUG_VALUE: predict_8x8_dc_top:dc <- $eax
	#DEBUG_VALUE: y <- 0
	.loc	0 538 5 is_stmt 1               # x264_src/common/predict.c:538:5
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
.Ltmp789:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
.Ltmp790:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
.Ltmp791:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
.Ltmp792:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
.Ltmp793:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
.Ltmp794:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
.Ltmp795:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
.Ltmp796:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8_dc_top:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 539 1                         # x264_src/common/predict.c:539:1
	retq
.Ltmp797:
.Lfunc_end27:
	.size	predict_8x8_dc_top, .Lfunc_end27-predict_8x8_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_128
	.type	predict_8x8_dc_128,@function
predict_8x8_dc_128:                     # @predict_8x8_dc_128
.Lfunc_begin28:
	.loc	0 525 0                         # x264_src/common/predict.c:525:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_dc_128:src <- $rdi
	#DEBUG_VALUE: y <- 0
	movabsq	$-9187201950435737472, %rax     # imm = 0x8080808080808080
.Ltmp798:
	.loc	0 526 5 prologue_end            # x264_src/common/predict.c:526:5
	movq	%rax, (%rdi)
.Ltmp799:
	#DEBUG_VALUE: y <- 1
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	movq	%rax, 32(%rdi)
.Ltmp800:
	#DEBUG_VALUE: y <- 2
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	movq	%rax, 64(%rdi)
.Ltmp801:
	#DEBUG_VALUE: y <- 3
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 96, DW_OP_stack_value] $rdi
	movq	%rax, 96(%rdi)
.Ltmp802:
	#DEBUG_VALUE: y <- 4
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 128, DW_OP_stack_value] $rdi
	movq	%rax, 128(%rdi)
.Ltmp803:
	#DEBUG_VALUE: y <- 5
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 160, DW_OP_stack_value] $rdi
	movq	%rax, 160(%rdi)
.Ltmp804:
	#DEBUG_VALUE: y <- 6
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 192, DW_OP_stack_value] $rdi
	movq	%rax, 192(%rdi)
.Ltmp805:
	#DEBUG_VALUE: y <- 7
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 224, DW_OP_stack_value] $rdi
	movq	%rax, 224(%rdi)
.Ltmp806:
	#DEBUG_VALUE: y <- 8
	#DEBUG_VALUE: predict_8x8_dc_128:src <- [DW_OP_plus_uconst 224, DW_OP_plus_uconst 32, DW_OP_stack_value] $rdi
	.loc	0 527 1                         # x264_src/common/predict.c:527:1
	retq
.Ltmp807:
.Lfunc_end28:
	.size	predict_8x8_dc_128, .Lfunc_end28-predict_8x8_dc_128
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_filter
	.type	predict_8x8_filter,@function
predict_8x8_filter:                     # @predict_8x8_filter
.Lfunc_begin29:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 466 19 prologue_end           # x264_src/common/predict.c:466:19
	testb	$1, %cl
.Ltmp808:
	.loc	0 466 9 is_stmt 0               # x264_src/common/predict.c:466:9
	je	.LBB29_2
.Ltmp809:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 468 21 is_stmt 1              # x264_src/common/predict.c:468:21
	movzbl	-32(%rdi), %eax
	.loc	0 468 35 is_stmt 0              # x264_src/common/predict.c:468:35
	movzbl	-33(%rdi), %r8d
	.loc	0 468 48                        # x264_src/common/predict.c:468:48
	movzbl	-1(%rdi), %r9d
	.loc	0 468 31                        # x264_src/common/predict.c:468:31
	leal	(%rax,%r8,2), %eax
	.loc	0 468 58                        # x264_src/common/predict.c:468:58
	addl	%r9d, %eax
	addl	$2, %eax
	.loc	0 468 63                        # x264_src/common/predict.c:468:63
	shrl	$2, %eax
	.loc	0 468 18                        # x264_src/common/predict.c:468:18
	movb	%al, 15(%rsi)
	.loc	0 469 22 is_stmt 1              # x264_src/common/predict.c:469:22
	testb	$8, %dl
	.loc	0 469 0 is_stmt 0               # x264_src/common/predict.c:469:0
	movzbl	-1(%rdi), %eax
	movzbl	-33(%rdi), %r8d
	cmovel	%eax, %r8d
	.loc	0 469 22                        # x264_src/common/predict.c:469:22
	movzbl	%r8b, %r8d
	.loc	0 470 34 is_stmt 1              # x264_src/common/predict.c:470:34
	movzbl	31(%rdi), %r9d
	.loc	0 470 18 is_stmt 0              # x264_src/common/predict.c:470:18
	leal	(%r8,%rax,2), %eax
	.loc	0 470 44                        # x264_src/common/predict.c:470:44
	addl	%r9d, %eax
	addl	$2, %eax
	.loc	0 470 49                        # x264_src/common/predict.c:470:49
	shrl	$2, %eax
	.loc	0 469 18 is_stmt 1              # x264_src/common/predict.c:469:18
	movb	%al, 14(%rsi)
	.loc	0 471 9                         # x264_src/common/predict.c:471:9
	movzbl	-1(%rdi), %eax
	movzbl	31(%rdi), %r8d
	movzbl	63(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 13(%rsi)
	.loc	0 471 15 is_stmt 0              # x264_src/common/predict.c:471:15
	movzbl	31(%rdi), %eax
	movzbl	63(%rdi), %r8d
	movzbl	95(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 12(%rsi)
	.loc	0 471 21                        # x264_src/common/predict.c:471:21
	movzbl	63(%rdi), %eax
	movzbl	95(%rdi), %r8d
	movzbl	127(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 11(%rsi)
	.loc	0 471 27                        # x264_src/common/predict.c:471:27
	movzbl	95(%rdi), %eax
	movzbl	127(%rdi), %r8d
	movzbl	159(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 10(%rsi)
	.loc	0 471 33                        # x264_src/common/predict.c:471:33
	movzbl	127(%rdi), %eax
	movzbl	159(%rdi), %r8d
	movzbl	191(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 9(%rsi)
	.loc	0 471 39                        # x264_src/common/predict.c:471:39
	movzbl	159(%rdi), %eax
	movzbl	191(%rdi), %r8d
	movzbl	223(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 8(%rsi)
	.loc	0 472 20 is_stmt 1              # x264_src/common/predict.c:472:20
	movzbl	191(%rdi), %eax
	.loc	0 472 34 is_stmt 0              # x264_src/common/predict.c:472:34
	movzbl	223(%rdi), %r8d
	.loc	0 472 33                        # x264_src/common/predict.c:472:33
	leal	(%r8,%r8,2), %r8d
	.loc	0 472 44                        # x264_src/common/predict.c:472:44
	addl	%r8d, %eax
	addl	$2, %eax
	.loc	0 472 49                        # x264_src/common/predict.c:472:49
	shrl	$2, %eax
	.loc	0 472 17                        # x264_src/common/predict.c:472:17
	movb	%al, 7(%rsi)
.Ltmp810:
.LBB29_2:                               # %if.end
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 475 19 is_stmt 1              # x264_src/common/predict.c:475:19
	testb	$2, %cl
.Ltmp811:
	.loc	0 475 9 is_stmt 0               # x264_src/common/predict.c:475:9
	je	.LBB29_9
.Ltmp812:
# %bb.3:                                # %if.then116
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	#DEBUG_VALUE: have_tr <- undef
	.loc	0 465 30 is_stmt 1              # x264_src/common/predict.c:465:30
	movl	%edx, %eax
	andl	$8, %eax
.Ltmp813:
	.loc	0 478 22                        # x264_src/common/predict.c:478:22
	cmpl	$1, %eax
	movq	%rdi, %rax
	adcq	$-33, %rax
	.loc	0 478 0 is_stmt 0               # x264_src/common/predict.c:478:0
	movzbl	(%rax), %eax
	.loc	0 479 22 is_stmt 1              # x264_src/common/predict.c:479:22
	movzbl	-32(%rdi), %r8d
	.loc	0 479 34 is_stmt 0              # x264_src/common/predict.c:479:34
	movzbl	-31(%rdi), %r9d
	.loc	0 479 18                        # x264_src/common/predict.c:479:18
	leal	(%rax,%r8,2), %eax
	.loc	0 479 44                        # x264_src/common/predict.c:479:44
	addl	%r9d, %eax
	addl	$2, %eax
	.loc	0 479 49                        # x264_src/common/predict.c:479:49
	shrl	$2, %eax
	.loc	0 478 18 is_stmt 1              # x264_src/common/predict.c:478:18
	movb	%al, 16(%rsi)
	.loc	0 480 9                         # x264_src/common/predict.c:480:9
	movzbl	-32(%rdi), %eax
	movzbl	-31(%rdi), %r8d
	movzbl	-30(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 17(%rsi)
	.loc	0 480 15 is_stmt 0              # x264_src/common/predict.c:480:15
	movzbl	-31(%rdi), %eax
	movzbl	-30(%rdi), %r8d
	movzbl	-29(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 18(%rsi)
	.loc	0 480 21                        # x264_src/common/predict.c:480:21
	movzbl	-30(%rdi), %eax
	movzbl	-29(%rdi), %r8d
	movzbl	-28(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 19(%rsi)
	.loc	0 480 27                        # x264_src/common/predict.c:480:27
	movzbl	-29(%rdi), %eax
	movzbl	-28(%rdi), %r8d
	movzbl	-27(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 20(%rsi)
	.loc	0 480 33                        # x264_src/common/predict.c:480:33
	movzbl	-28(%rdi), %eax
	movzbl	-27(%rdi), %r8d
	movzbl	-26(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 21(%rsi)
	.loc	0 480 39                        # x264_src/common/predict.c:480:39
	movzbl	-27(%rdi), %eax
	movzbl	-26(%rdi), %r8d
	movzbl	-25(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 22(%rsi)
	.loc	0 481 21 is_stmt 1              # x264_src/common/predict.c:481:21
	movzbl	-26(%rdi), %eax
	.loc	0 481 35 is_stmt 0              # x264_src/common/predict.c:481:35
	movzbl	-25(%rdi), %r8d
	.loc	0 481 31                        # x264_src/common/predict.c:481:31
	leal	(%rax,%r8,2), %eax
	.loc	0 482 21 is_stmt 1              # x264_src/common/predict.c:482:21
	testb	$4, %dl
	jne	.LBB29_6
.Ltmp814:
# %bb.4:                                # %cond.end229
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 482 54 is_stmt 0              # x264_src/common/predict.c:482:54
	addl	%r8d, %eax
	addl	$2, %eax
	.loc	0 482 59                        # x264_src/common/predict.c:482:59
	shrl	$2, %eax
	.loc	0 481 18 is_stmt 1              # x264_src/common/predict.c:481:18
	movb	%al, 23(%rsi)
.Ltmp815:
	.loc	0 484 23                        # x264_src/common/predict.c:484:23
	testb	$4, %cl
.Ltmp816:
	.loc	0 484 13 is_stmt 0              # x264_src/common/predict.c:484:13
	je	.LBB29_9
.Ltmp817:
# %bb.5:                                # %if.else
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 494 34 is_stmt 1              # x264_src/common/predict.c:494:34
	movzbl	-25(%rdi), %eax
	movabsq	$72340172838076673, %rcx        # imm = 0x101010101010101
.Ltmp818:
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 494 44 is_stmt 0              # x264_src/common/predict.c:494:44
	imulq	%rax, %rcx
	.loc	0 494 32                        # x264_src/common/predict.c:494:32
	movq	%rcx, 24(%rsi)
	.loc	0 495 28 is_stmt 1              # x264_src/common/predict.c:495:28
	movzbl	-25(%rdi), %eax
	movl	$32, %ecx
	jmp	.LBB29_8
.Ltmp819:
.LBB29_6:                               # %cond.end229.thread
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 482 31                        # x264_src/common/predict.c:482:31
	movzbl	-24(%rdi), %edx
.Ltmp820:
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 482 54 is_stmt 0              # x264_src/common/predict.c:482:54
	addl	%edx, %eax
	addl	$2, %eax
	.loc	0 482 59                        # x264_src/common/predict.c:482:59
	shrl	$2, %eax
	.loc	0 481 18 is_stmt 1              # x264_src/common/predict.c:481:18
	movb	%al, 23(%rsi)
.Ltmp821:
	.loc	0 484 23                        # x264_src/common/predict.c:484:23
	testb	$4, %cl
.Ltmp822:
	.loc	0 484 13 is_stmt 0              # x264_src/common/predict.c:484:13
	je	.LBB29_9
.Ltmp823:
# %bb.7:                                # %if.then240
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- $ecx
	.loc	0 488 17 is_stmt 1              # x264_src/common/predict.c:488:17
	movzbl	-25(%rdi), %eax
	movzbl	-24(%rdi), %ecx
.Ltmp824:
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- [DW_OP_LLVM_entry_value 1] $ecx
	movzbl	-23(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 24(%rsi)
	.loc	0 488 23 is_stmt 0              # x264_src/common/predict.c:488:23
	movzbl	-24(%rdi), %eax
	movzbl	-23(%rdi), %ecx
	movzbl	-22(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 25(%rsi)
	.loc	0 488 29                        # x264_src/common/predict.c:488:29
	movzbl	-23(%rdi), %eax
	movzbl	-22(%rdi), %ecx
	movzbl	-21(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 26(%rsi)
	.loc	0 488 36                        # x264_src/common/predict.c:488:36
	movzbl	-22(%rdi), %eax
	movzbl	-21(%rdi), %ecx
	movzbl	-20(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 27(%rsi)
	.loc	0 488 43                        # x264_src/common/predict.c:488:43
	movzbl	-21(%rdi), %eax
	movzbl	-20(%rdi), %ecx
	movzbl	-19(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 28(%rsi)
	.loc	0 488 50                        # x264_src/common/predict.c:488:50
	movzbl	-20(%rdi), %eax
	movzbl	-19(%rdi), %ecx
	movzbl	-18(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 29(%rsi)
	.loc	0 488 57                        # x264_src/common/predict.c:488:57
	movzbl	-19(%rdi), %eax
	movzbl	-18(%rdi), %ecx
	movzbl	-17(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 30(%rsi)
	.loc	0 490 29 is_stmt 1              # x264_src/common/predict.c:490:29
	movzbl	-18(%rdi), %eax
	.loc	0 490 44 is_stmt 0              # x264_src/common/predict.c:490:44
	movzbl	-17(%rdi), %ecx
	.loc	0 490 43                        # x264_src/common/predict.c:490:43
	leal	(%rcx,%rcx,2), %ecx
	.loc	0 490 55                        # x264_src/common/predict.c:490:55
	addl	%ecx, %eax
	addl	$2, %eax
	.loc	0 490 60                        # x264_src/common/predict.c:490:60
	shrl	$2, %eax
	.loc	0 490 26                        # x264_src/common/predict.c:490:26
	movb	%al, 32(%rsi)
	movl	$31, %ecx
.Ltmp825:
.LBB29_8:                               # %if.end350.sink.split
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 0 0                           # x264_src/common/predict.c:0:0
	movb	%al, (%rsi,%rcx)
.Ltmp826:
.LBB29_9:                               # %if.end350
	#DEBUG_VALUE: predict_8x8_filter:src <- $rdi
	#DEBUG_VALUE: predict_8x8_filter:edge <- $rsi
	#DEBUG_VALUE: predict_8x8_filter:i_neighbor <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: predict_8x8_filter:i_filters <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 499 1 is_stmt 1               # x264_src/common/predict.c:499:1
	retq
.Ltmp827:
.Lfunc_end29:
	.size	predict_8x8_filter, .Lfunc_end29-predict_8x8_filter
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_4x4_init           # -- Begin function x264_predict_4x4_init
	.p2align	4, 0x90
	.type	x264_predict_4x4_init,@function
x264_predict_4x4_init:                  # @x264_predict_4x4_init
.Lfunc_begin30:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_predict_4x4_init:cpu <- $edi
	#DEBUG_VALUE: x264_predict_4x4_init:pf <- $rsi
	.loc	0 785 27 prologue_end           # x264_src/common/predict.c:785:27
	movq	$predict_4x4_v, (%rsi)
	.loc	0 786 27                        # x264_src/common/predict.c:786:27
	movq	$predict_4x4_h, 8(%rsi)
	.loc	0 787 27                        # x264_src/common/predict.c:787:27
	movq	$predict_4x4_dc, 16(%rsi)
	.loc	0 788 27                        # x264_src/common/predict.c:788:27
	movq	$predict_4x4_ddl, 24(%rsi)
	.loc	0 789 27                        # x264_src/common/predict.c:789:27
	movq	$predict_4x4_ddr, 32(%rsi)
	.loc	0 790 27                        # x264_src/common/predict.c:790:27
	movq	$predict_4x4_vr, 40(%rsi)
	.loc	0 791 27                        # x264_src/common/predict.c:791:27
	movq	$predict_4x4_hd, 48(%rsi)
	.loc	0 792 27                        # x264_src/common/predict.c:792:27
	movq	$predict_4x4_vl, 56(%rsi)
	.loc	0 793 27                        # x264_src/common/predict.c:793:27
	movq	$predict_4x4_hu, 64(%rsi)
	.loc	0 794 27                        # x264_src/common/predict.c:794:27
	movq	$predict_4x4_dc_left, 72(%rsi)
	.loc	0 795 27                        # x264_src/common/predict.c:795:27
	movq	$predict_4x4_dc_top, 80(%rsi)
	.loc	0 796 27                        # x264_src/common/predict.c:796:27
	movq	$predict_4x4_dc_128, 88(%rsi)
	.loc	0 805 1                         # x264_src/common/predict.c:805:1
	retq
.Ltmp828:
.Lfunc_end30:
	.size	x264_predict_4x4_init, .Lfunc_end30-x264_predict_4x4_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_v
	.type	predict_4x4_v,@function
predict_4x4_v:                          # @predict_4x4_v
.Lfunc_begin31:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_v:src <- $rdi
	.loc	0 336 5 prologue_end            # x264_src/common/predict.c:336:5
	movl	-32(%rdi), %eax
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	.loc	0 337 1                         # x264_src/common/predict.c:337:1
	retq
.Ltmp829:
.Lfunc_end31:
	.size	predict_4x4_v, .Lfunc_end31-predict_4x4_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_h
	.type	predict_4x4_h,@function
predict_4x4_h:                          # @predict_4x4_h
.Lfunc_begin32:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_h:src <- $rdi
	.loc	0 329 18 prologue_end           # x264_src/common/predict.c:329:18
	movzbl	-1(%rdi), %eax
	.loc	0 329 28 is_stmt 0              # x264_src/common/predict.c:329:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	.loc	0 329 16                        # x264_src/common/predict.c:329:16
	movl	%eax, (%rdi)
	.loc	0 330 18 is_stmt 1              # x264_src/common/predict.c:330:18
	movzbl	31(%rdi), %eax
	.loc	0 330 28 is_stmt 0              # x264_src/common/predict.c:330:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	.loc	0 330 16                        # x264_src/common/predict.c:330:16
	movl	%eax, 32(%rdi)
	.loc	0 331 18 is_stmt 1              # x264_src/common/predict.c:331:18
	movzbl	63(%rdi), %eax
	.loc	0 331 28 is_stmt 0              # x264_src/common/predict.c:331:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	.loc	0 331 16                        # x264_src/common/predict.c:331:16
	movl	%eax, 64(%rdi)
	.loc	0 332 18 is_stmt 1              # x264_src/common/predict.c:332:18
	movzbl	95(%rdi), %eax
	.loc	0 332 28 is_stmt 0              # x264_src/common/predict.c:332:28
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	.loc	0 332 16                        # x264_src/common/predict.c:332:16
	movl	%eax, 96(%rdi)
	.loc	0 333 1 is_stmt 1               # x264_src/common/predict.c:333:1
	retq
.Ltmp830:
.Lfunc_end32:
	.size	predict_4x4_h, .Lfunc_end32-predict_4x4_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc
	.type	predict_4x4_dc,@function
predict_4x4_dc:                         # @predict_4x4_dc
.Lfunc_begin33:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_dc:src <- $rdi
	.loc	0 323 21 prologue_end           # x264_src/common/predict.c:323:21
	movzbl	-1(%rdi), %eax
	.loc	0 323 33 is_stmt 0              # x264_src/common/predict.c:323:33
	movzbl	31(%rdi), %ecx
	.loc	0 323 31                        # x264_src/common/predict.c:323:31
	addl	%eax, %ecx
	.loc	0 323 45                        # x264_src/common/predict.c:323:45
	movzbl	63(%rdi), %eax
	.loc	0 323 57                        # x264_src/common/predict.c:323:57
	movzbl	95(%rdi), %edx
	.loc	0 323 43                        # x264_src/common/predict.c:323:43
	addl	%eax, %edx
	.loc	0 323 55                        # x264_src/common/predict.c:323:55
	addl	%ecx, %edx
	.loc	0 324 21 is_stmt 1              # x264_src/common/predict.c:324:21
	movzbl	-32(%rdi), %eax
	.loc	0 324 33 is_stmt 0              # x264_src/common/predict.c:324:33
	movzbl	-31(%rdi), %ecx
	.loc	0 323 67 is_stmt 1              # x264_src/common/predict.c:323:67
	addl	%eax, %ecx
	.loc	0 324 45                        # x264_src/common/predict.c:324:45
	movzbl	-30(%rdi), %eax
	.loc	0 324 31 is_stmt 0              # x264_src/common/predict.c:324:31
	addl	%ecx, %eax
	.loc	0 324 43                        # x264_src/common/predict.c:324:43
	addl	%edx, %eax
	.loc	0 324 57                        # x264_src/common/predict.c:324:57
	movzbl	-29(%rdi), %ecx
	.loc	0 324 67                        # x264_src/common/predict.c:324:67
	addl	%ecx, %eax
	addl	$4, %eax
	.loc	0 324 72                        # x264_src/common/predict.c:324:72
	shrl	$3, %eax
	.loc	0 324 78                        # x264_src/common/predict.c:324:78
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp831:
	#DEBUG_VALUE: predict_4x4_dc:dc <- $eax
	.loc	0 325 5 is_stmt 1               # x264_src/common/predict.c:325:5
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	.loc	0 326 1                         # x264_src/common/predict.c:326:1
	retq
.Ltmp832:
.Lfunc_end33:
	.size	predict_4x4_dc, .Lfunc_end33-predict_4x4_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_ddl
	.type	predict_4x4_ddl,@function
predict_4x4_ddl:                        # @predict_4x4_ddl
.Lfunc_begin34:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_ddl:src <- $rdi
	.loc	0 362 5 prologue_end            # x264_src/common/predict.c:362:5
	movzbl	-32(%rdi), %r9d
.Ltmp833:
	#DEBUG_VALUE: predict_4x4_ddl:t0 <- $r9d
	movzbl	-31(%rdi), %r10d
.Ltmp834:
	#DEBUG_VALUE: predict_4x4_ddl:t1 <- $r10d
	movzbl	-30(%rdi), %r11d
.Ltmp835:
	#DEBUG_VALUE: predict_4x4_ddl:t2 <- $r11d
	movzbl	-29(%rdi), %r8d
.Ltmp836:
	#DEBUG_VALUE: predict_4x4_ddl:t3 <- $r8d
	.loc	0 363 5                         # x264_src/common/predict.c:363:5
	movzbl	-28(%rdi), %esi
.Ltmp837:
	#DEBUG_VALUE: predict_4x4_ddl:t4 <- $esi
	movzbl	-27(%rdi), %edx
.Ltmp838:
	#DEBUG_VALUE: predict_4x4_ddl:t5 <- $edx
	movzbl	-26(%rdi), %eax
.Ltmp839:
	#DEBUG_VALUE: predict_4x4_ddl:t6 <- $eax
	movzbl	-25(%rdi), %ecx
.Ltmp840:
	#DEBUG_VALUE: predict_4x4_ddl:t7 <- $ecx
	.loc	0 364 15                        # x264_src/common/predict.c:364:15
	addl	%r11d, %r9d
.Ltmp841:
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	.loc	0 364 13 is_stmt 0              # x264_src/common/predict.c:364:13
	movb	%r9b, (%rdi)
	.loc	0 365 24 is_stmt 1              # x264_src/common/predict.c:365:24
	leal	(%r8,%r10), %r9d
	addl	$2, %r9d
	leal	(%r9,%r11,2), %r9d
	shrl	$2, %r9d
	.loc	0 365 22 is_stmt 0              # x264_src/common/predict.c:365:22
	movb	%r9b, 32(%rdi)
	.loc	0 365 13                        # x264_src/common/predict.c:365:13
	movb	%r9b, 1(%rdi)
	.loc	0 366 33 is_stmt 1              # x264_src/common/predict.c:366:33
	leal	(%r11,%r8,2), %r9d
	addl	$2, %r9d
	addl	%esi, %r9d
	shrl	$2, %r9d
	.loc	0 366 31 is_stmt 0              # x264_src/common/predict.c:366:31
	movb	%r9b, 64(%rdi)
	.loc	0 366 22                        # x264_src/common/predict.c:366:22
	movb	%r9b, 33(%rdi)
	.loc	0 366 13                        # x264_src/common/predict.c:366:13
	movb	%r9b, 2(%rdi)
	.loc	0 367 42 is_stmt 1              # x264_src/common/predict.c:367:42
	leal	(%r8,%rsi,2), %r8d
.Ltmp842:
	addl	$2, %r8d
	addl	%edx, %r8d
	shrl	$2, %r8d
	.loc	0 367 40 is_stmt 0              # x264_src/common/predict.c:367:40
	movb	%r8b, 96(%rdi)
	.loc	0 367 31                        # x264_src/common/predict.c:367:31
	movb	%r8b, 65(%rdi)
	.loc	0 367 22                        # x264_src/common/predict.c:367:22
	movb	%r8b, 34(%rdi)
	.loc	0 367 13                        # x264_src/common/predict.c:367:13
	movb	%r8b, 3(%rdi)
	.loc	0 368 33 is_stmt 1              # x264_src/common/predict.c:368:33
	leal	(%rsi,%rdx,2), %esi
.Ltmp843:
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 368 31 is_stmt 0              # x264_src/common/predict.c:368:31
	movb	%sil, 97(%rdi)
	.loc	0 368 22                        # x264_src/common/predict.c:368:22
	movb	%sil, 66(%rdi)
	.loc	0 368 13                        # x264_src/common/predict.c:368:13
	movb	%sil, 35(%rdi)
	.loc	0 369 24 is_stmt 1              # x264_src/common/predict.c:369:24
	leal	(%rdx,%rax,2), %edx
.Ltmp844:
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	.loc	0 369 22 is_stmt 0              # x264_src/common/predict.c:369:22
	movb	%dl, 98(%rdi)
	.loc	0 369 13                        # x264_src/common/predict.c:369:13
	movb	%dl, 67(%rdi)
	.loc	0 370 15 is_stmt 1              # x264_src/common/predict.c:370:15
	addl	%ecx, %eax
.Ltmp845:
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 370 13 is_stmt 0              # x264_src/common/predict.c:370:13
	movb	%al, 99(%rdi)
	.loc	0 371 1 is_stmt 1               # x264_src/common/predict.c:371:1
	retq
.Ltmp846:
.Lfunc_end34:
	.size	predict_4x4_ddl, .Lfunc_end34-predict_4x4_ddl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_ddr
	.type	predict_4x4_ddr,@function
predict_4x4_ddr:                        # @predict_4x4_ddr
.Lfunc_begin35:
	.loc	0 373 0                         # x264_src/common/predict.c:373:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_ddr:src <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 374 14 prologue_end           # x264_src/common/predict.c:374:14
	movzbl	-33(%rdi), %r8d
.Ltmp847:
	#DEBUG_VALUE: predict_4x4_ddr:lt <- $r8d
	.loc	0 375 5                         # x264_src/common/predict.c:375:5
	movzbl	-1(%rdi), %esi
.Ltmp848:
	#DEBUG_VALUE: predict_4x4_ddr:l0 <- $esi
	movzbl	31(%rdi), %ecx
.Ltmp849:
	#DEBUG_VALUE: predict_4x4_ddr:l1 <- $ecx
	movzbl	63(%rdi), %edx
.Ltmp850:
	#DEBUG_VALUE: predict_4x4_ddr:l2 <- $edx
	movzbl	95(%rdi), %eax
.Ltmp851:
	#DEBUG_VALUE: predict_4x4_ddr:l3 <- $eax
	.loc	0 376 5                         # x264_src/common/predict.c:376:5
	movzbl	-32(%rdi), %r9d
.Ltmp852:
	#DEBUG_VALUE: predict_4x4_ddr:t0 <- $r9d
	movzbl	-31(%rdi), %r10d
.Ltmp853:
	#DEBUG_VALUE: predict_4x4_ddr:t1 <- $r10d
	movzbl	-30(%rdi), %r11d
.Ltmp854:
	#DEBUG_VALUE: predict_4x4_ddr:t2 <- $r11d
	movzbl	-29(%rdi), %ebx
.Ltmp855:
	#DEBUG_VALUE: predict_4x4_ddr:t3 <- $ebx
	.loc	0 377 15                        # x264_src/common/predict.c:377:15
	addl	%r10d, %ebx
.Ltmp856:
	leal	(%rbx,%r11,2), %ebx
	addl	$2, %ebx
	shrl	$2, %ebx
	.loc	0 377 13 is_stmt 0              # x264_src/common/predict.c:377:13
	movb	%bl, 3(%rdi)
	.loc	0 378 24 is_stmt 1              # x264_src/common/predict.c:378:24
	addl	%r9d, %r11d
.Ltmp857:
	leal	(%r11,%r10,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	.loc	0 378 22 is_stmt 0              # x264_src/common/predict.c:378:22
	movb	%r11b, 35(%rdi)
	.loc	0 378 13                        # x264_src/common/predict.c:378:13
	movb	%r11b, 2(%rdi)
	.loc	0 379 33 is_stmt 1              # x264_src/common/predict.c:379:33
	addl	%r8d, %r10d
.Ltmp858:
	addl	$2, %r10d
	leal	(%r10,%r9,2), %r10d
	shrl	$2, %r10d
	.loc	0 379 31 is_stmt 0              # x264_src/common/predict.c:379:31
	movb	%r10b, 67(%rdi)
	.loc	0 379 22                        # x264_src/common/predict.c:379:22
	movb	%r10b, 34(%rdi)
	.loc	0 379 13                        # x264_src/common/predict.c:379:13
	movb	%r10b, 1(%rdi)
	.loc	0 380 42 is_stmt 1              # x264_src/common/predict.c:380:42
	leal	(%rsi,%r8,2), %r10d
	addl	$2, %r10d
	addl	%r9d, %r10d
	shrl	$2, %r10d
	.loc	0 380 40 is_stmt 0              # x264_src/common/predict.c:380:40
	movb	%r10b, 99(%rdi)
	.loc	0 380 31                        # x264_src/common/predict.c:380:31
	movb	%r10b, 66(%rdi)
	.loc	0 380 22                        # x264_src/common/predict.c:380:22
	movb	%r10b, 33(%rdi)
	.loc	0 380 13                        # x264_src/common/predict.c:380:13
	movb	%r10b, (%rdi)
	.loc	0 381 33 is_stmt 1              # x264_src/common/predict.c:381:33
	leal	(%r8,%rsi,2), %r8d
.Ltmp859:
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	.loc	0 381 31 is_stmt 0              # x264_src/common/predict.c:381:31
	movb	%r8b, 98(%rdi)
	.loc	0 381 22                        # x264_src/common/predict.c:381:22
	movb	%r8b, 65(%rdi)
	.loc	0 381 13                        # x264_src/common/predict.c:381:13
	movb	%r8b, 32(%rdi)
	.loc	0 382 24 is_stmt 1              # x264_src/common/predict.c:382:24
	leal	(%rsi,%rcx,2), %esi
.Ltmp860:
	addl	$2, %esi
	addl	%edx, %esi
	shrl	$2, %esi
	.loc	0 382 22 is_stmt 0              # x264_src/common/predict.c:382:22
	movb	%sil, 97(%rdi)
	.loc	0 382 13                        # x264_src/common/predict.c:382:13
	movb	%sil, 64(%rdi)
	.loc	0 383 15 is_stmt 1              # x264_src/common/predict.c:383:15
	leal	(%rcx,%rdx,2), %ecx
.Ltmp861:
	addl	%ecx, %eax
.Ltmp862:
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 383 13 is_stmt 0              # x264_src/common/predict.c:383:13
	movb	%al, 96(%rdi)
	.loc	0 384 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:384:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp863:
.Lfunc_end35:
	.size	predict_4x4_ddr, .Lfunc_end35-predict_4x4_ddr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_vr
	.type	predict_4x4_vr,@function
predict_4x4_vr:                         # @predict_4x4_vr
.Lfunc_begin36:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_vr:src <- $rdi
	.loc	0 388 14 prologue_end           # x264_src/common/predict.c:388:14
	movzbl	-33(%rdi), %r8d
.Ltmp864:
	#DEBUG_VALUE: predict_4x4_vr:lt <- $r8d
	.loc	0 389 5                         # x264_src/common/predict.c:389:5
	movzbl	-1(%rdi), %r9d
.Ltmp865:
	#DEBUG_VALUE: predict_4x4_vr:l0 <- $r9d
	movzbl	31(%rdi), %r10d
.Ltmp866:
	#DEBUG_VALUE: predict_4x4_vr:l1 <- $r10d
	movzbl	63(%rdi), %r11d
.Ltmp867:
	#DEBUG_VALUE: predict_4x4_vr:l2 <- $r11d
	.loc	0 390 5                         # x264_src/common/predict.c:390:5
	movzbl	-32(%rdi), %esi
.Ltmp868:
	#DEBUG_VALUE: predict_4x4_vr:t0 <- $esi
	movzbl	-31(%rdi), %edx
.Ltmp869:
	#DEBUG_VALUE: predict_4x4_vr:t1 <- $edx
	movzbl	-30(%rdi), %eax
.Ltmp870:
	#DEBUG_VALUE: predict_4x4_vr:t2 <- $eax
	movzbl	-29(%rdi), %ecx
.Ltmp871:
	#DEBUG_VALUE: predict_4x4_vr:t3 <- $ecx
	.loc	0 391 15                        # x264_src/common/predict.c:391:15
	addl	%r9d, %r11d
.Ltmp872:
	addl	$2, %r11d
	leal	(%r11,%r10,2), %r11d
	shrl	$2, %r11d
	.loc	0 391 13 is_stmt 0              # x264_src/common/predict.c:391:13
	movb	%r11b, 96(%rdi)
	.loc	0 392 15 is_stmt 1              # x264_src/common/predict.c:392:15
	addl	%r8d, %r10d
.Ltmp873:
	addl	$2, %r10d
	leal	(%r10,%r9,2), %r10d
	shrl	$2, %r10d
	.loc	0 392 13 is_stmt 0              # x264_src/common/predict.c:392:13
	movb	%r10b, 64(%rdi)
	.loc	0 393 24 is_stmt 1              # x264_src/common/predict.c:393:24
	leal	(%r9,%r8,2), %r9d
.Ltmp874:
	addl	$2, %r9d
	addl	%esi, %r9d
	shrl	$2, %r9d
	.loc	0 393 22 is_stmt 0              # x264_src/common/predict.c:393:22
	movb	%r9b, 97(%rdi)
	.loc	0 393 13                        # x264_src/common/predict.c:393:13
	movb	%r9b, 32(%rdi)
	.loc	0 394 24 is_stmt 1              # x264_src/common/predict.c:394:24
	leal	(%rsi,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	.loc	0 394 22 is_stmt 0              # x264_src/common/predict.c:394:22
	movb	%r9b, 65(%rdi)
	.loc	0 394 13                        # x264_src/common/predict.c:394:13
	movb	%r9b, (%rdi)
	.loc	0 395 24 is_stmt 1              # x264_src/common/predict.c:395:24
	leal	(%r8,%rsi,2), %r8d
.Ltmp875:
	addl	$2, %r8d
	addl	%edx, %r8d
	shrl	$2, %r8d
	.loc	0 395 22 is_stmt 0              # x264_src/common/predict.c:395:22
	movb	%r8b, 98(%rdi)
	.loc	0 395 13                        # x264_src/common/predict.c:395:13
	movb	%r8b, 33(%rdi)
	.loc	0 396 24 is_stmt 1              # x264_src/common/predict.c:396:24
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
	shrl	%r8d
	.loc	0 396 22 is_stmt 0              # x264_src/common/predict.c:396:22
	movb	%r8b, 66(%rdi)
	.loc	0 396 13                        # x264_src/common/predict.c:396:13
	movb	%r8b, 1(%rdi)
	.loc	0 397 24 is_stmt 1              # x264_src/common/predict.c:397:24
	leal	(%rsi,%rdx,2), %esi
.Ltmp876:
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	.loc	0 397 22 is_stmt 0              # x264_src/common/predict.c:397:22
	movb	%sil, 99(%rdi)
	.loc	0 397 13                        # x264_src/common/predict.c:397:13
	movb	%sil, 34(%rdi)
	.loc	0 398 24 is_stmt 1              # x264_src/common/predict.c:398:24
	leal	(%rdx,%rax), %esi
	incl	%esi
	shrl	%esi
	.loc	0 398 22 is_stmt 0              # x264_src/common/predict.c:398:22
	movb	%sil, 67(%rdi)
	.loc	0 398 13                        # x264_src/common/predict.c:398:13
	movb	%sil, 2(%rdi)
	.loc	0 399 15 is_stmt 1              # x264_src/common/predict.c:399:15
	leal	(%rdx,%rax,2), %edx
.Ltmp877:
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	.loc	0 399 13 is_stmt 0              # x264_src/common/predict.c:399:13
	movb	%dl, 35(%rdi)
	.loc	0 400 15 is_stmt 1              # x264_src/common/predict.c:400:15
	addl	%ecx, %eax
.Ltmp878:
	incl	%eax
	shrl	%eax
	.loc	0 400 13 is_stmt 0              # x264_src/common/predict.c:400:13
	movb	%al, 3(%rdi)
	.loc	0 401 1 is_stmt 1               # x264_src/common/predict.c:401:1
	retq
.Ltmp879:
.Lfunc_end36:
	.size	predict_4x4_vr, .Lfunc_end36-predict_4x4_vr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_hd
	.type	predict_4x4_hd,@function
predict_4x4_hd:                         # @predict_4x4_hd
.Lfunc_begin37:
	.loc	0 404 0                         # x264_src/common/predict.c:404:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_hd:src <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 405 13 prologue_end           # x264_src/common/predict.c:405:13
	movzbl	-33(%rdi), %esi
.Ltmp880:
	#DEBUG_VALUE: predict_4x4_hd:lt <- $esi
	.loc	0 406 5                         # x264_src/common/predict.c:406:5
	movzbl	-1(%rdi), %r8d
.Ltmp881:
	#DEBUG_VALUE: predict_4x4_hd:l0 <- $r8d
	movzbl	31(%rdi), %r9d
.Ltmp882:
	#DEBUG_VALUE: predict_4x4_hd:l1 <- $r9d
	movzbl	63(%rdi), %r10d
.Ltmp883:
	#DEBUG_VALUE: predict_4x4_hd:l2 <- $r10d
	movzbl	95(%rdi), %r11d
.Ltmp884:
	#DEBUG_VALUE: predict_4x4_hd:l3 <- $r11d
	.loc	0 407 5                         # x264_src/common/predict.c:407:5
	movzbl	-32(%rdi), %ecx
.Ltmp885:
	#DEBUG_VALUE: predict_4x4_hd:t0 <- $ecx
	movzbl	-31(%rdi), %eax
.Ltmp886:
	#DEBUG_VALUE: predict_4x4_hd:t1 <- $eax
	movzbl	-30(%rdi), %edx
.Ltmp887:
	#DEBUG_VALUE: predict_4x4_hd:t2 <- $edx
	.loc	0 408 15                        # x264_src/common/predict.c:408:15
	leal	(%r10,%r11), %ebx
	incl	%ebx
	shrl	%ebx
	.loc	0 408 13 is_stmt 0              # x264_src/common/predict.c:408:13
	movb	%bl, 96(%rdi)
	.loc	0 409 15 is_stmt 1              # x264_src/common/predict.c:409:15
	leal	(%r9,%r10,2), %ebx
	addl	%ebx, %r11d
.Ltmp888:
	addl	$2, %r11d
	shrl	$2, %r11d
	.loc	0 409 13 is_stmt 0              # x264_src/common/predict.c:409:13
	movb	%r11b, 97(%rdi)
	.loc	0 410 24 is_stmt 1              # x264_src/common/predict.c:410:24
	leal	(%r9,%r10), %r11d
	incl	%r11d
	shrl	%r11d
	.loc	0 410 22 is_stmt 0              # x264_src/common/predict.c:410:22
	movb	%r11b, 98(%rdi)
	.loc	0 410 13                        # x264_src/common/predict.c:410:13
	movb	%r11b, 64(%rdi)
	.loc	0 411 24 is_stmt 1              # x264_src/common/predict.c:411:24
	leal	(%r8,%r9,2), %r11d
	addl	$2, %r11d
	addl	%r10d, %r11d
	shrl	$2, %r11d
	.loc	0 411 22 is_stmt 0              # x264_src/common/predict.c:411:22
	movb	%r11b, 99(%rdi)
	.loc	0 411 13                        # x264_src/common/predict.c:411:13
	movb	%r11b, 65(%rdi)
	.loc	0 412 24 is_stmt 1              # x264_src/common/predict.c:412:24
	leal	(%r8,%r9), %r10d
.Ltmp889:
	incl	%r10d
	shrl	%r10d
	.loc	0 412 22 is_stmt 0              # x264_src/common/predict.c:412:22
	movb	%r10b, 66(%rdi)
	.loc	0 412 13                        # x264_src/common/predict.c:412:13
	movb	%r10b, 32(%rdi)
	.loc	0 413 24 is_stmt 1              # x264_src/common/predict.c:413:24
	leal	(%rsi,%r8,2), %r10d
	addl	$2, %r10d
	addl	%r9d, %r10d
	shrl	$2, %r10d
	.loc	0 413 22 is_stmt 0              # x264_src/common/predict.c:413:22
	movb	%r10b, 67(%rdi)
	.loc	0 413 13                        # x264_src/common/predict.c:413:13
	movb	%r10b, 33(%rdi)
	.loc	0 414 24 is_stmt 1              # x264_src/common/predict.c:414:24
	leal	(%r8,%rsi), %r9d
.Ltmp890:
	incl	%r9d
	shrl	%r9d
	.loc	0 414 22 is_stmt 0              # x264_src/common/predict.c:414:22
	movb	%r9b, 34(%rdi)
	.loc	0 414 13                        # x264_src/common/predict.c:414:13
	movb	%r9b, (%rdi)
	.loc	0 415 24 is_stmt 1              # x264_src/common/predict.c:415:24
	leal	(%r8,%rsi,2), %r8d
.Ltmp891:
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	.loc	0 415 22 is_stmt 0              # x264_src/common/predict.c:415:22
	movb	%r8b, 35(%rdi)
	.loc	0 415 13                        # x264_src/common/predict.c:415:13
	movb	%r8b, 1(%rdi)
	.loc	0 416 15 is_stmt 1              # x264_src/common/predict.c:416:15
	addl	%eax, %esi
.Ltmp892:
	addl	$2, %esi
	leal	(%rsi,%rcx,2), %esi
	shrl	$2, %esi
	.loc	0 416 13 is_stmt 0              # x264_src/common/predict.c:416:13
	movb	%sil, 2(%rdi)
	.loc	0 417 15 is_stmt 1              # x264_src/common/predict.c:417:15
	addl	%ecx, %edx
.Ltmp893:
	leal	(%rdx,%rax,2), %eax
.Ltmp894:
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 417 13 is_stmt 0              # x264_src/common/predict.c:417:13
	movb	%al, 3(%rdi)
	.loc	0 418 1 epilogue_begin is_stmt 1 # x264_src/common/predict.c:418:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp895:
.Lfunc_end37:
	.size	predict_4x4_hd, .Lfunc_end37-predict_4x4_hd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_vl
	.type	predict_4x4_vl,@function
predict_4x4_vl:                         # @predict_4x4_vl
.Lfunc_begin38:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_vl:src <- $rdi
	.loc	0 422 5 prologue_end            # x264_src/common/predict.c:422:5
	movzbl	-32(%rdi), %r9d
.Ltmp896:
	#DEBUG_VALUE: predict_4x4_vl:t0 <- $r9d
	movzbl	-31(%rdi), %r10d
.Ltmp897:
	#DEBUG_VALUE: predict_4x4_vl:t1 <- $r10d
	movzbl	-30(%rdi), %r8d
.Ltmp898:
	#DEBUG_VALUE: predict_4x4_vl:t2 <- $r8d
	movzbl	-29(%rdi), %esi
.Ltmp899:
	#DEBUG_VALUE: predict_4x4_vl:t3 <- $esi
	.loc	0 423 5                         # x264_src/common/predict.c:423:5
	movzbl	-28(%rdi), %ecx
.Ltmp900:
	#DEBUG_VALUE: predict_4x4_vl:t4 <- $ecx
	movzbl	-27(%rdi), %edx
.Ltmp901:
	#DEBUG_VALUE: predict_4x4_vl:t5 <- $edx
	movzbl	-26(%rdi), %eax
.Ltmp902:
	#DEBUG_VALUE: predict_4x4_vl:t6 <- $eax
	.loc	0 424 15                        # x264_src/common/predict.c:424:15
	leal	(%r10,%r9), %r11d
	incl	%r11d
	shrl	%r11d
	.loc	0 424 13 is_stmt 0              # x264_src/common/predict.c:424:13
	movb	%r11b, (%rdi)
	.loc	0 425 15 is_stmt 1              # x264_src/common/predict.c:425:15
	addl	%r8d, %r9d
.Ltmp903:
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	.loc	0 425 13 is_stmt 0              # x264_src/common/predict.c:425:13
	movb	%r9b, 32(%rdi)
	.loc	0 426 24 is_stmt 1              # x264_src/common/predict.c:426:24
	leal	(%r10,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	.loc	0 426 22 is_stmt 0              # x264_src/common/predict.c:426:22
	movb	%r9b, 64(%rdi)
	.loc	0 426 13                        # x264_src/common/predict.c:426:13
	movb	%r9b, 1(%rdi)
	.loc	0 427 24 is_stmt 1              # x264_src/common/predict.c:427:24
	leal	(%rsi,%r10), %r9d
	addl	$2, %r9d
	leal	(%r9,%r8,2), %r9d
	shrl	$2, %r9d
	.loc	0 427 22 is_stmt 0              # x264_src/common/predict.c:427:22
	movb	%r9b, 96(%rdi)
	.loc	0 427 13                        # x264_src/common/predict.c:427:13
	movb	%r9b, 33(%rdi)
	.loc	0 428 24 is_stmt 1              # x264_src/common/predict.c:428:24
	leal	(%r8,%rsi), %r9d
	incl	%r9d
	shrl	%r9d
	.loc	0 428 22 is_stmt 0              # x264_src/common/predict.c:428:22
	movb	%r9b, 65(%rdi)
	.loc	0 428 13                        # x264_src/common/predict.c:428:13
	movb	%r9b, 2(%rdi)
	.loc	0 429 24 is_stmt 1              # x264_src/common/predict.c:429:24
	leal	(%r8,%rsi,2), %r8d
.Ltmp904:
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	.loc	0 429 22 is_stmt 0              # x264_src/common/predict.c:429:22
	movb	%r8b, 97(%rdi)
	.loc	0 429 13                        # x264_src/common/predict.c:429:13
	movb	%r8b, 34(%rdi)
	.loc	0 430 24 is_stmt 1              # x264_src/common/predict.c:430:24
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
	shrl	%r8d
	.loc	0 430 22 is_stmt 0              # x264_src/common/predict.c:430:22
	movb	%r8b, 66(%rdi)
	.loc	0 430 13                        # x264_src/common/predict.c:430:13
	movb	%r8b, 3(%rdi)
	.loc	0 431 24 is_stmt 1              # x264_src/common/predict.c:431:24
	leal	(%rsi,%rcx,2), %esi
.Ltmp905:
	addl	$2, %esi
	addl	%edx, %esi
	shrl	$2, %esi
	.loc	0 431 22 is_stmt 0              # x264_src/common/predict.c:431:22
	movb	%sil, 98(%rdi)
	.loc	0 431 13                        # x264_src/common/predict.c:431:13
	movb	%sil, 35(%rdi)
	.loc	0 432 15 is_stmt 1              # x264_src/common/predict.c:432:15
	leal	(%rcx,%rdx), %esi
	incl	%esi
	shrl	%esi
	.loc	0 432 13 is_stmt 0              # x264_src/common/predict.c:432:13
	movb	%sil, 67(%rdi)
	.loc	0 433 15 is_stmt 1              # x264_src/common/predict.c:433:15
	leal	(%rcx,%rdx,2), %ecx
.Ltmp906:
	addl	%ecx, %eax
.Ltmp907:
	addl	$2, %eax
	shrl	$2, %eax
	.loc	0 433 13 is_stmt 0              # x264_src/common/predict.c:433:13
	movb	%al, 99(%rdi)
	.loc	0 434 1 is_stmt 1               # x264_src/common/predict.c:434:1
	retq
.Ltmp908:
.Lfunc_end38:
	.size	predict_4x4_vl, .Lfunc_end38-predict_4x4_vl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_hu
	.type	predict_4x4_hu,@function
predict_4x4_hu:                         # @predict_4x4_hu
.Lfunc_begin39:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_hu:src <- $rdi
	.loc	0 438 5 prologue_end            # x264_src/common/predict.c:438:5
	movzbl	-1(%rdi), %edx
.Ltmp909:
	#DEBUG_VALUE: predict_4x4_hu:l0 <- $edx
	movzbl	31(%rdi), %esi
.Ltmp910:
	#DEBUG_VALUE: predict_4x4_hu:l1 <- $esi
	movzbl	63(%rdi), %ecx
.Ltmp911:
	#DEBUG_VALUE: predict_4x4_hu:l2 <- $ecx
	movzbl	95(%rdi), %eax
.Ltmp912:
	#DEBUG_VALUE: predict_4x4_hu:l3 <- $eax
	.loc	0 439 15                        # x264_src/common/predict.c:439:15
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
	shrl	%r8d
	.loc	0 439 13 is_stmt 0              # x264_src/common/predict.c:439:13
	movb	%r8b, (%rdi)
	.loc	0 440 15 is_stmt 1              # x264_src/common/predict.c:440:15
	addl	%ecx, %edx
.Ltmp913:
	addl	$2, %edx
	leal	(%rdx,%rsi,2), %edx
	shrl	$2, %edx
	.loc	0 440 13 is_stmt 0              # x264_src/common/predict.c:440:13
	movb	%dl, 1(%rdi)
	.loc	0 441 24 is_stmt 1              # x264_src/common/predict.c:441:24
	leal	(%rsi,%rcx), %edx
	incl	%edx
	shrl	%edx
	.loc	0 441 22 is_stmt 0              # x264_src/common/predict.c:441:22
	movb	%dl, 32(%rdi)
	.loc	0 441 13                        # x264_src/common/predict.c:441:13
	movb	%dl, 2(%rdi)
	.loc	0 442 24 is_stmt 1              # x264_src/common/predict.c:442:24
	addl	%eax, %esi
.Ltmp914:
	leal	(%rsi,%rcx,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	.loc	0 442 22 is_stmt 0              # x264_src/common/predict.c:442:22
	movb	%dl, 33(%rdi)
	.loc	0 442 13                        # x264_src/common/predict.c:442:13
	movb	%dl, 3(%rdi)
	.loc	0 443 24 is_stmt 1              # x264_src/common/predict.c:443:24
	leal	(%rcx,%rax), %edx
	incl	%edx
	shrl	%edx
	.loc	0 443 22 is_stmt 0              # x264_src/common/predict.c:443:22
	movb	%dl, 64(%rdi)
	.loc	0 443 13                        # x264_src/common/predict.c:443:13
	movb	%dl, 34(%rdi)
	.loc	0 444 24 is_stmt 1              # x264_src/common/predict.c:444:24
	addl	%eax, %ecx
.Ltmp915:
	addl	$2, %ecx
	leal	(%rcx,%rax,2), %ecx
	shrl	$2, %ecx
	.loc	0 444 22 is_stmt 0              # x264_src/common/predict.c:444:22
	movb	%cl, 65(%rdi)
	.loc	0 444 13                        # x264_src/common/predict.c:444:13
	movb	%cl, 35(%rdi)
	.loc	0 446 13 is_stmt 1              # x264_src/common/predict.c:446:13
	movb	%al, 66(%rdi)
	.loc	0 445 31                        # x264_src/common/predict.c:445:31
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movd	%xmm0, 96(%rdi)
	.loc	0 445 13 is_stmt 0              # x264_src/common/predict.c:445:13
	movb	%al, 67(%rdi)
	.loc	0 447 1 is_stmt 1               # x264_src/common/predict.c:447:1
	retq
.Ltmp916:
.Lfunc_end39:
	.size	predict_4x4_hu, .Lfunc_end39-predict_4x4_hu
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_left
	.type	predict_4x4_dc_left,@function
predict_4x4_dc_left:                    # @predict_4x4_dc_left
.Lfunc_begin40:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_dc_left:src <- $rdi
	.loc	0 313 21 prologue_end           # x264_src/common/predict.c:313:21
	movzbl	-1(%rdi), %eax
	.loc	0 313 33 is_stmt 0              # x264_src/common/predict.c:313:33
	movzbl	31(%rdi), %ecx
	.loc	0 313 31                        # x264_src/common/predict.c:313:31
	addl	%eax, %ecx
	.loc	0 313 45                        # x264_src/common/predict.c:313:45
	movzbl	63(%rdi), %eax
	.loc	0 313 43                        # x264_src/common/predict.c:313:43
	addl	%ecx, %eax
	.loc	0 313 57                        # x264_src/common/predict.c:313:57
	movzbl	95(%rdi), %ecx
	.loc	0 313 67                        # x264_src/common/predict.c:313:67
	addl	%ecx, %eax
	addl	$2, %eax
	.loc	0 313 72                        # x264_src/common/predict.c:313:72
	shrl	$2, %eax
	.loc	0 313 78                        # x264_src/common/predict.c:313:78
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp917:
	#DEBUG_VALUE: predict_4x4_dc_left:dc <- $eax
	.loc	0 314 5 is_stmt 1               # x264_src/common/predict.c:314:5
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	.loc	0 315 1                         # x264_src/common/predict.c:315:1
	retq
.Ltmp918:
.Lfunc_end40:
	.size	predict_4x4_dc_left, .Lfunc_end40-predict_4x4_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_top
	.type	predict_4x4_dc_top,@function
predict_4x4_dc_top:                     # @predict_4x4_dc_top
.Lfunc_begin41:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_dc_top:src <- $rdi
	.loc	0 318 21 prologue_end           # x264_src/common/predict.c:318:21
	movzbl	-32(%rdi), %eax
	.loc	0 318 33 is_stmt 0              # x264_src/common/predict.c:318:33
	movzbl	-31(%rdi), %ecx
	.loc	0 318 31                        # x264_src/common/predict.c:318:31
	addl	%eax, %ecx
	.loc	0 318 45                        # x264_src/common/predict.c:318:45
	movzbl	-30(%rdi), %eax
	.loc	0 318 43                        # x264_src/common/predict.c:318:43
	addl	%ecx, %eax
	.loc	0 318 57                        # x264_src/common/predict.c:318:57
	movzbl	-29(%rdi), %ecx
	.loc	0 318 67                        # x264_src/common/predict.c:318:67
	addl	%ecx, %eax
	addl	$2, %eax
	.loc	0 318 72                        # x264_src/common/predict.c:318:72
	shrl	$2, %eax
	.loc	0 318 78                        # x264_src/common/predict.c:318:78
	imull	$16843009, %eax, %eax           # imm = 0x1010101
.Ltmp919:
	#DEBUG_VALUE: predict_4x4_dc_top:dc <- $eax
	.loc	0 319 5 is_stmt 1               # x264_src/common/predict.c:319:5
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	.loc	0 320 1                         # x264_src/common/predict.c:320:1
	retq
.Ltmp920:
.Lfunc_end41:
	.size	predict_4x4_dc_top, .Lfunc_end41-predict_4x4_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_128
	.type	predict_4x4_dc_128,@function
predict_4x4_dc_128:                     # @predict_4x4_dc_128
.Lfunc_begin42:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: predict_4x4_dc_128:src <- $rdi
	.loc	0 309 5 prologue_end            # x264_src/common/predict.c:309:5
	movl	$-2139062144, 96(%rdi)          # imm = 0x80808080
	movl	$-2139062144, 64(%rdi)          # imm = 0x80808080
	movl	$-2139062144, 32(%rdi)          # imm = 0x80808080
	movl	$-2139062144, (%rdi)            # imm = 0x80808080
	.loc	0 310 1                         # x264_src/common/predict.c:310:1
	retq
.Ltmp921:
.Lfunc_end42:
	.size	predict_4x4_dc_128, .Lfunc_end42-predict_4x4_dc_128
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	305                             # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
	.long	.Ldebug_loc41-.Lloclists_table_base0
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
	.long	.Ldebug_loc47-.Lloclists_table_base0
	.long	.Ldebug_loc48-.Lloclists_table_base0
	.long	.Ldebug_loc49-.Lloclists_table_base0
	.long	.Ldebug_loc50-.Lloclists_table_base0
	.long	.Ldebug_loc51-.Lloclists_table_base0
	.long	.Ldebug_loc52-.Lloclists_table_base0
	.long	.Ldebug_loc53-.Lloclists_table_base0
	.long	.Ldebug_loc54-.Lloclists_table_base0
	.long	.Ldebug_loc55-.Lloclists_table_base0
	.long	.Ldebug_loc56-.Lloclists_table_base0
	.long	.Ldebug_loc57-.Lloclists_table_base0
	.long	.Ldebug_loc58-.Lloclists_table_base0
	.long	.Ldebug_loc59-.Lloclists_table_base0
	.long	.Ldebug_loc60-.Lloclists_table_base0
	.long	.Ldebug_loc61-.Lloclists_table_base0
	.long	.Ldebug_loc62-.Lloclists_table_base0
	.long	.Ldebug_loc63-.Lloclists_table_base0
	.long	.Ldebug_loc64-.Lloclists_table_base0
	.long	.Ldebug_loc65-.Lloclists_table_base0
	.long	.Ldebug_loc66-.Lloclists_table_base0
	.long	.Ldebug_loc67-.Lloclists_table_base0
	.long	.Ldebug_loc68-.Lloclists_table_base0
	.long	.Ldebug_loc69-.Lloclists_table_base0
	.long	.Ldebug_loc70-.Lloclists_table_base0
	.long	.Ldebug_loc71-.Lloclists_table_base0
	.long	.Ldebug_loc72-.Lloclists_table_base0
	.long	.Ldebug_loc73-.Lloclists_table_base0
	.long	.Ldebug_loc74-.Lloclists_table_base0
	.long	.Ldebug_loc75-.Lloclists_table_base0
	.long	.Ldebug_loc76-.Lloclists_table_base0
	.long	.Ldebug_loc77-.Lloclists_table_base0
	.long	.Ldebug_loc78-.Lloclists_table_base0
	.long	.Ldebug_loc79-.Lloclists_table_base0
	.long	.Ldebug_loc80-.Lloclists_table_base0
	.long	.Ldebug_loc81-.Lloclists_table_base0
	.long	.Ldebug_loc82-.Lloclists_table_base0
	.long	.Ldebug_loc83-.Lloclists_table_base0
	.long	.Ldebug_loc84-.Lloclists_table_base0
	.long	.Ldebug_loc85-.Lloclists_table_base0
	.long	.Ldebug_loc86-.Lloclists_table_base0
	.long	.Ldebug_loc87-.Lloclists_table_base0
	.long	.Ldebug_loc88-.Lloclists_table_base0
	.long	.Ldebug_loc89-.Lloclists_table_base0
	.long	.Ldebug_loc90-.Lloclists_table_base0
	.long	.Ldebug_loc91-.Lloclists_table_base0
	.long	.Ldebug_loc92-.Lloclists_table_base0
	.long	.Ldebug_loc93-.Lloclists_table_base0
	.long	.Ldebug_loc94-.Lloclists_table_base0
	.long	.Ldebug_loc95-.Lloclists_table_base0
	.long	.Ldebug_loc96-.Lloclists_table_base0
	.long	.Ldebug_loc97-.Lloclists_table_base0
	.long	.Ldebug_loc98-.Lloclists_table_base0
	.long	.Ldebug_loc99-.Lloclists_table_base0
	.long	.Ldebug_loc100-.Lloclists_table_base0
	.long	.Ldebug_loc101-.Lloclists_table_base0
	.long	.Ldebug_loc102-.Lloclists_table_base0
	.long	.Ldebug_loc103-.Lloclists_table_base0
	.long	.Ldebug_loc104-.Lloclists_table_base0
	.long	.Ldebug_loc105-.Lloclists_table_base0
	.long	.Ldebug_loc106-.Lloclists_table_base0
	.long	.Ldebug_loc107-.Lloclists_table_base0
	.long	.Ldebug_loc108-.Lloclists_table_base0
	.long	.Ldebug_loc109-.Lloclists_table_base0
	.long	.Ldebug_loc110-.Lloclists_table_base0
	.long	.Ldebug_loc111-.Lloclists_table_base0
	.long	.Ldebug_loc112-.Lloclists_table_base0
	.long	.Ldebug_loc113-.Lloclists_table_base0
	.long	.Ldebug_loc114-.Lloclists_table_base0
	.long	.Ldebug_loc115-.Lloclists_table_base0
	.long	.Ldebug_loc116-.Lloclists_table_base0
	.long	.Ldebug_loc117-.Lloclists_table_base0
	.long	.Ldebug_loc118-.Lloclists_table_base0
	.long	.Ldebug_loc119-.Lloclists_table_base0
	.long	.Ldebug_loc120-.Lloclists_table_base0
	.long	.Ldebug_loc121-.Lloclists_table_base0
	.long	.Ldebug_loc122-.Lloclists_table_base0
	.long	.Ldebug_loc123-.Lloclists_table_base0
	.long	.Ldebug_loc124-.Lloclists_table_base0
	.long	.Ldebug_loc125-.Lloclists_table_base0
	.long	.Ldebug_loc126-.Lloclists_table_base0
	.long	.Ldebug_loc127-.Lloclists_table_base0
	.long	.Ldebug_loc128-.Lloclists_table_base0
	.long	.Ldebug_loc129-.Lloclists_table_base0
	.long	.Ldebug_loc130-.Lloclists_table_base0
	.long	.Ldebug_loc131-.Lloclists_table_base0
	.long	.Ldebug_loc132-.Lloclists_table_base0
	.long	.Ldebug_loc133-.Lloclists_table_base0
	.long	.Ldebug_loc134-.Lloclists_table_base0
	.long	.Ldebug_loc135-.Lloclists_table_base0
	.long	.Ldebug_loc136-.Lloclists_table_base0
	.long	.Ldebug_loc137-.Lloclists_table_base0
	.long	.Ldebug_loc138-.Lloclists_table_base0
	.long	.Ldebug_loc139-.Lloclists_table_base0
	.long	.Ldebug_loc140-.Lloclists_table_base0
	.long	.Ldebug_loc141-.Lloclists_table_base0
	.long	.Ldebug_loc142-.Lloclists_table_base0
	.long	.Ldebug_loc143-.Lloclists_table_base0
	.long	.Ldebug_loc144-.Lloclists_table_base0
	.long	.Ldebug_loc145-.Lloclists_table_base0
	.long	.Ldebug_loc146-.Lloclists_table_base0
	.long	.Ldebug_loc147-.Lloclists_table_base0
	.long	.Ldebug_loc148-.Lloclists_table_base0
	.long	.Ldebug_loc149-.Lloclists_table_base0
	.long	.Ldebug_loc150-.Lloclists_table_base0
	.long	.Ldebug_loc151-.Lloclists_table_base0
	.long	.Ldebug_loc152-.Lloclists_table_base0
	.long	.Ldebug_loc153-.Lloclists_table_base0
	.long	.Ldebug_loc154-.Lloclists_table_base0
	.long	.Ldebug_loc155-.Lloclists_table_base0
	.long	.Ldebug_loc156-.Lloclists_table_base0
	.long	.Ldebug_loc157-.Lloclists_table_base0
	.long	.Ldebug_loc158-.Lloclists_table_base0
	.long	.Ldebug_loc159-.Lloclists_table_base0
	.long	.Ldebug_loc160-.Lloclists_table_base0
	.long	.Ldebug_loc161-.Lloclists_table_base0
	.long	.Ldebug_loc162-.Lloclists_table_base0
	.long	.Ldebug_loc163-.Lloclists_table_base0
	.long	.Ldebug_loc164-.Lloclists_table_base0
	.long	.Ldebug_loc165-.Lloclists_table_base0
	.long	.Ldebug_loc166-.Lloclists_table_base0
	.long	.Ldebug_loc167-.Lloclists_table_base0
	.long	.Ldebug_loc168-.Lloclists_table_base0
	.long	.Ldebug_loc169-.Lloclists_table_base0
	.long	.Ldebug_loc170-.Lloclists_table_base0
	.long	.Ldebug_loc171-.Lloclists_table_base0
	.long	.Ldebug_loc172-.Lloclists_table_base0
	.long	.Ldebug_loc173-.Lloclists_table_base0
	.long	.Ldebug_loc174-.Lloclists_table_base0
	.long	.Ldebug_loc175-.Lloclists_table_base0
	.long	.Ldebug_loc176-.Lloclists_table_base0
	.long	.Ldebug_loc177-.Lloclists_table_base0
	.long	.Ldebug_loc178-.Lloclists_table_base0
	.long	.Ldebug_loc179-.Lloclists_table_base0
	.long	.Ldebug_loc180-.Lloclists_table_base0
	.long	.Ldebug_loc181-.Lloclists_table_base0
	.long	.Ldebug_loc182-.Lloclists_table_base0
	.long	.Ldebug_loc183-.Lloclists_table_base0
	.long	.Ldebug_loc184-.Lloclists_table_base0
	.long	.Ldebug_loc185-.Lloclists_table_base0
	.long	.Ldebug_loc186-.Lloclists_table_base0
	.long	.Ldebug_loc187-.Lloclists_table_base0
	.long	.Ldebug_loc188-.Lloclists_table_base0
	.long	.Ldebug_loc189-.Lloclists_table_base0
	.long	.Ldebug_loc190-.Lloclists_table_base0
	.long	.Ldebug_loc191-.Lloclists_table_base0
	.long	.Ldebug_loc192-.Lloclists_table_base0
	.long	.Ldebug_loc193-.Lloclists_table_base0
	.long	.Ldebug_loc194-.Lloclists_table_base0
	.long	.Ldebug_loc195-.Lloclists_table_base0
	.long	.Ldebug_loc196-.Lloclists_table_base0
	.long	.Ldebug_loc197-.Lloclists_table_base0
	.long	.Ldebug_loc198-.Lloclists_table_base0
	.long	.Ldebug_loc199-.Lloclists_table_base0
	.long	.Ldebug_loc200-.Lloclists_table_base0
	.long	.Ldebug_loc201-.Lloclists_table_base0
	.long	.Ldebug_loc202-.Lloclists_table_base0
	.long	.Ldebug_loc203-.Lloclists_table_base0
	.long	.Ldebug_loc204-.Lloclists_table_base0
	.long	.Ldebug_loc205-.Lloclists_table_base0
	.long	.Ldebug_loc206-.Lloclists_table_base0
	.long	.Ldebug_loc207-.Lloclists_table_base0
	.long	.Ldebug_loc208-.Lloclists_table_base0
	.long	.Ldebug_loc209-.Lloclists_table_base0
	.long	.Ldebug_loc210-.Lloclists_table_base0
	.long	.Ldebug_loc211-.Lloclists_table_base0
	.long	.Ldebug_loc212-.Lloclists_table_base0
	.long	.Ldebug_loc213-.Lloclists_table_base0
	.long	.Ldebug_loc214-.Lloclists_table_base0
	.long	.Ldebug_loc215-.Lloclists_table_base0
	.long	.Ldebug_loc216-.Lloclists_table_base0
	.long	.Ldebug_loc217-.Lloclists_table_base0
	.long	.Ldebug_loc218-.Lloclists_table_base0
	.long	.Ldebug_loc219-.Lloclists_table_base0
	.long	.Ldebug_loc220-.Lloclists_table_base0
	.long	.Ldebug_loc221-.Lloclists_table_base0
	.long	.Ldebug_loc222-.Lloclists_table_base0
	.long	.Ldebug_loc223-.Lloclists_table_base0
	.long	.Ldebug_loc224-.Lloclists_table_base0
	.long	.Ldebug_loc225-.Lloclists_table_base0
	.long	.Ldebug_loc226-.Lloclists_table_base0
	.long	.Ldebug_loc227-.Lloclists_table_base0
	.long	.Ldebug_loc228-.Lloclists_table_base0
	.long	.Ldebug_loc229-.Lloclists_table_base0
	.long	.Ldebug_loc230-.Lloclists_table_base0
	.long	.Ldebug_loc231-.Lloclists_table_base0
	.long	.Ldebug_loc232-.Lloclists_table_base0
	.long	.Ldebug_loc233-.Lloclists_table_base0
	.long	.Ldebug_loc234-.Lloclists_table_base0
	.long	.Ldebug_loc235-.Lloclists_table_base0
	.long	.Ldebug_loc236-.Lloclists_table_base0
	.long	.Ldebug_loc237-.Lloclists_table_base0
	.long	.Ldebug_loc238-.Lloclists_table_base0
	.long	.Ldebug_loc239-.Lloclists_table_base0
	.long	.Ldebug_loc240-.Lloclists_table_base0
	.long	.Ldebug_loc241-.Lloclists_table_base0
	.long	.Ldebug_loc242-.Lloclists_table_base0
	.long	.Ldebug_loc243-.Lloclists_table_base0
	.long	.Ldebug_loc244-.Lloclists_table_base0
	.long	.Ldebug_loc245-.Lloclists_table_base0
	.long	.Ldebug_loc246-.Lloclists_table_base0
	.long	.Ldebug_loc247-.Lloclists_table_base0
	.long	.Ldebug_loc248-.Lloclists_table_base0
	.long	.Ldebug_loc249-.Lloclists_table_base0
	.long	.Ldebug_loc250-.Lloclists_table_base0
	.long	.Ldebug_loc251-.Lloclists_table_base0
	.long	.Ldebug_loc252-.Lloclists_table_base0
	.long	.Ldebug_loc253-.Lloclists_table_base0
	.long	.Ldebug_loc254-.Lloclists_table_base0
	.long	.Ldebug_loc255-.Lloclists_table_base0
	.long	.Ldebug_loc256-.Lloclists_table_base0
	.long	.Ldebug_loc257-.Lloclists_table_base0
	.long	.Ldebug_loc258-.Lloclists_table_base0
	.long	.Ldebug_loc259-.Lloclists_table_base0
	.long	.Ldebug_loc260-.Lloclists_table_base0
	.long	.Ldebug_loc261-.Lloclists_table_base0
	.long	.Ldebug_loc262-.Lloclists_table_base0
	.long	.Ldebug_loc263-.Lloclists_table_base0
	.long	.Ldebug_loc264-.Lloclists_table_base0
	.long	.Ldebug_loc265-.Lloclists_table_base0
	.long	.Ldebug_loc266-.Lloclists_table_base0
	.long	.Ldebug_loc267-.Lloclists_table_base0
	.long	.Ldebug_loc268-.Lloclists_table_base0
	.long	.Ldebug_loc269-.Lloclists_table_base0
	.long	.Ldebug_loc270-.Lloclists_table_base0
	.long	.Ldebug_loc271-.Lloclists_table_base0
	.long	.Ldebug_loc272-.Lloclists_table_base0
	.long	.Ldebug_loc273-.Lloclists_table_base0
	.long	.Ldebug_loc274-.Lloclists_table_base0
	.long	.Ldebug_loc275-.Lloclists_table_base0
	.long	.Ldebug_loc276-.Lloclists_table_base0
	.long	.Ldebug_loc277-.Lloclists_table_base0
	.long	.Ldebug_loc278-.Lloclists_table_base0
	.long	.Ldebug_loc279-.Lloclists_table_base0
	.long	.Ldebug_loc280-.Lloclists_table_base0
	.long	.Ldebug_loc281-.Lloclists_table_base0
	.long	.Ldebug_loc282-.Lloclists_table_base0
	.long	.Ldebug_loc283-.Lloclists_table_base0
	.long	.Ldebug_loc284-.Lloclists_table_base0
	.long	.Ldebug_loc285-.Lloclists_table_base0
	.long	.Ldebug_loc286-.Lloclists_table_base0
	.long	.Ldebug_loc287-.Lloclists_table_base0
	.long	.Ldebug_loc288-.Lloclists_table_base0
	.long	.Ldebug_loc289-.Lloclists_table_base0
	.long	.Ldebug_loc290-.Lloclists_table_base0
	.long	.Ldebug_loc291-.Lloclists_table_base0
	.long	.Ldebug_loc292-.Lloclists_table_base0
	.long	.Ldebug_loc293-.Lloclists_table_base0
	.long	.Ldebug_loc294-.Lloclists_table_base0
	.long	.Ldebug_loc295-.Lloclists_table_base0
	.long	.Ldebug_loc296-.Lloclists_table_base0
	.long	.Ldebug_loc297-.Lloclists_table_base0
	.long	.Ldebug_loc298-.Lloclists_table_base0
	.long	.Ldebug_loc299-.Lloclists_table_base0
	.long	.Ldebug_loc300-.Lloclists_table_base0
	.long	.Ldebug_loc301-.Lloclists_table_base0
	.long	.Ldebug_loc302-.Lloclists_table_base0
	.long	.Ldebug_loc303-.Lloclists_table_base0
	.long	.Ldebug_loc304-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 288
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 320
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 352
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 384
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 416
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 448
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 288
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 320
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 352
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 384
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 416
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 448
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 288
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 320
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 352
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 384
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 416
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 448
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	34                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	249                             # 18446744073709551609
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	30                              # DW_OP_mul
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp248-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp252-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp255-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp255-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 288
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp256-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp257-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 320
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp257-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 352
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 384
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 416
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 448
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp232-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp232-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp238-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp243-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp248-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp252-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp255-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp255-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp256-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp257-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp257-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp266-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp268-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp268-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp269-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp269-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp273-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 288
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 320
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp277-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 352
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp278-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 384
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 416
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 448
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp280-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp281-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 480
	.byte	3                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp266-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp268-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp268-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp269-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp269-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp273-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp277-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	11                              # 11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp278-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	13                              # 13
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	14                              # 14
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp280-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	15                              # 15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp281-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp288-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp289-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp286-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp288-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp289-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp301-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp301-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp307-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp313-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp301-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp301-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp307-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp313-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp302-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp350-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp321-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp325-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp325-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp329-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp337-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp323-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp331-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp339-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp346-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp346-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp346-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp350-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp370-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp370-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp353-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp353-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp357-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp365-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp358-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp362-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp358-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp363-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp368-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	16                              # 16
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	16                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	6                               # DW_OP_deref
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp406-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp406-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp408-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp408-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp409-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp409-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp411-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp398-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp398-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp410-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp410-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp397-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp397-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp401-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp401-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp403-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp404-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp410-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp406-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp406-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp408-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp408-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp409-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp409-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp410-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp411-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp427-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp427-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp428-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp433-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp433-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp434-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp434-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp417-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp417-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp417-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp417-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp426-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp426-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp416-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp416-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp418-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp422-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp422-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp425-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp426-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp427-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp427-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp428-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp433-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp433-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp434-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp434-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp438-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp438-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp439-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp439-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp440-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp440-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp442-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp442-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp443-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp443-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp438-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp438-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp439-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp439-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp440-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp440-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp442-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp442-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp443-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp443-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp447-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp447-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp448-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp449-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp449-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp451-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp452-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp452-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp454-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp454-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp455-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp457-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp458-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp459-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp497-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp497-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp498-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp499-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp502-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp502-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc84:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp473-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc85:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc86:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc87:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp478-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp481-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc88:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp479-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc89:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp481-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc90:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp483-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp484-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc91:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc92:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp486-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc93:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp489-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc94:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp490-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp491-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc95:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc96:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc97:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp497-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp497-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp498-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp499-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp502-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp502-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc98:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin20-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp516-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp516-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc99:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc100:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc101:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc102:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp515-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc103:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc104:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc105:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp510-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc106:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp511-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc107:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp533-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc108:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc109:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp521-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc110:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp530-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc111:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp529-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc112:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc113:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp525-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc114:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp526-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc115:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin22-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp554-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp554-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc116:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp557-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc117:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp537-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc118:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp538-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc119:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc120:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp540-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc121:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp542-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp542-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	104                             # -24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc122:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	112                             # -16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc123:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp546-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp546-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc124:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc125:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp561-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc126:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp549-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp558-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc127:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc128:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp551-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp562-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc129:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp556-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc130:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp553-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp555-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc131:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp554-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end22-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc132:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin23-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end23-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc133:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp564-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp620-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc134:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp565-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc135:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp617-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp629-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc136:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp624-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp636-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc137:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp628-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp662-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc138:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp634-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp638-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc139:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp637-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc140:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp612-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc141:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp567-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp610-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc142:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp606-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc143:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp569-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc144:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp570-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc145:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp590-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc146:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp572-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp585-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc147:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp573-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp580-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc148:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp574-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc149:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc150:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp578-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp579-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp579-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end23-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	124                             # -4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc151:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp583-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc152:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp660-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc153:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp587-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp588-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc154:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp589-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc155:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp593-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc156:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp594-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc157:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp597-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp598-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc158:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp599-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc159:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp603-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc160:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc161:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp607-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc162:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp609-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc163:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp621-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc164:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp612-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	26                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	34                              # DW_OP_plus
	.byte	35                              # DW_OP_plus_uconst
	.byte	2                               # 2
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc165:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp619-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc166:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	26                              # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	34                              # DW_OP_plus
	.byte	35                              # DW_OP_plus_uconst
	.byte	2                               # 2
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc167:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp628-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc168:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp646-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc169:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp629-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp630-.Lfunc_begin0         #   ending offset
	.byte	26                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	34                              # DW_OP_plus
	.byte	35                              # DW_OP_plus_uconst
	.byte	2                               # 2
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc170:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp632-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp634-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc171:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp644-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc172:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp637-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp638-.Lfunc_begin0         #   ending offset
	.byte	26                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	34                              # DW_OP_plus
	.byte	35                              # DW_OP_plus_uconst
	.byte	2                               # 2
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc173:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp663-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc174:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp642-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc175:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp660-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc176:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc177:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc178:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc179:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc180:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc181:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc182:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp646-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc183:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp644-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc184:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp642-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc185:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp678-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc186:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp665-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp686-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc187:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp666-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp683-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc188:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp667-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp682-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc189:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp668-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp685-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc190:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp669-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc191:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp670-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc192:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp671-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc193:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc194:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp673-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc195:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc196:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp675-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp679-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc197:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp676-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc198:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp677-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp680-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc199:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin25-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp696-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc200:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp688-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp698-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc201:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp689-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp707-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc202:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp690-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc203:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp691-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp715-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc204:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp692-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc205:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp693-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc206:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp733-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc207:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp695-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc208:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp699-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp700-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc209:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp701-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc210:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp705-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc211:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp706-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp751-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc212:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp710-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp711-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc213:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp749-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc214:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp716-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp717-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc215:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc216:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp722-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp723-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc217:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp724-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp745-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc218:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp728-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp729-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	2                               # 2
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc219:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp730-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp743-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc220:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp738-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc221:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	26                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	34                              # DW_OP_plus
	.byte	35                              # DW_OP_plus_uconst
	.byte	2                               # 2
	.byte	50                              # DW_OP_lit2
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc222:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp741-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc223:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp751-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc224:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	129                             # 257
	.byte	2                               # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc225:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp749-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc226:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc227:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp745-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc228:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp743-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc229:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp741-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc230:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp741-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc231:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	129                             # 257
	.byte	2                               # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc232:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin26-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp767-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp768-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp769-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp769-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp770-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp770-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp771-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp772-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp772-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp773-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp774-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp774-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc233:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp754-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp757-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc234:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp756-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc235:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp757-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp760-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc236:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp758-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp759-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc237:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp760-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp763-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc238:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp761-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc239:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp763-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp764-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc240:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp765-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc241:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp766-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc242:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp766-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp767-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp768-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp769-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp769-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp770-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp770-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp771-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp772-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp772-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp773-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp774-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp774-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc243:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin27-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp789-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp789-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp790-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp790-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp792-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp792-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp793-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp793-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp794-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp794-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp795-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp795-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp796-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp796-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc244:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp776-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp779-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc245:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp777-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp778-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc246:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp779-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp782-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc247:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp780-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc248:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp782-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc249:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp783-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp784-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc250:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp785-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp786-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc251:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp787-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc252:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc253:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp789-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp789-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp790-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp790-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp792-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp792-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp793-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp793-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp794-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp794-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp795-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp795-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp796-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp796-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc254:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin28-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp799-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp799-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp800-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp800-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp801-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp801-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp802-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 96
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp802-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp803-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp803-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp804-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	160                             # 160
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp804-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp805-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 192
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp805-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp806-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp806-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end28-.Lfunc_begin0     #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	224                             # 224
	.byte	1                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc255:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin28-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp799-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp799-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp800-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp800-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp801-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp801-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp802-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp802-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp803-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp803-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp804-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp804-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp805-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp805-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp806-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp806-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end28-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc256:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin29-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp820-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp820-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end29-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc257:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin29-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp818-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp818-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp819-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp824-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp824-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end29-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc258:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp831-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end33-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc259:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp833-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp841-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc260:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp834-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end34-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc261:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp835-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end34-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc262:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp836-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp842-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc263:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp837-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp843-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc264:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp838-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp844-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc265:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp839-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc266:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp840-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end34-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc267:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp847-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp859-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc268:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp848-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp860-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc269:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp849-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp861-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc270:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp850-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end35-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc271:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp851-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp862-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc272:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp852-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end35-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc273:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp853-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc274:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp854-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp857-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc275:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp855-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp856-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc276:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp864-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp875-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc277:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp865-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp874-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc278:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp866-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp873-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc279:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp867-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp872-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc280:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp868-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp876-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc281:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp869-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp877-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc282:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp870-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp878-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc283:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp871-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end36-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc284:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp880-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp892-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc285:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp881-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp891-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc286:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp882-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp890-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc287:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp883-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp889-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc288:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp884-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp888-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc289:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp885-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end37-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc290:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp886-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp894-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc291:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp887-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp893-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc292:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp896-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp903-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc293:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp897-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end38-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc294:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp898-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp904-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc295:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp899-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp905-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc296:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp900-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp906-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc297:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp901-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end38-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc298:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp902-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp907-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc299:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp909-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp913-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc300:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp910-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp914-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc301:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp911-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp915-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc302:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp912-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end39-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc303:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp917-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end40-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc304:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp919-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end41-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x1735 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x1f DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x34:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x37:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3a:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3d:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x40:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x43:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x46:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4a:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x4e:0x1f DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x57:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5a:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5d:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x60:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x63:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x69:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6d:0x2e DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x76:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7f:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x85:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x88:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8b:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x91:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x94:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x97:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x9b:0x2e DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa4:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa7:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xaa:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xad:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb0:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb3:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb6:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb9:0x3 DW_TAG_enumerator
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbc:0x3 DW_TAG_enumerator
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbf:0x3 DW_TAG_enumerator
	.byte	42                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc2:0x3 DW_TAG_enumerator
	.byte	43                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc5:0x3 DW_TAG_enumerator
	.byte	44                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xc9:0x1c DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xd2:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd5:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd8:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdb:0x3 DW_TAG_enumerator
	.byte	49                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xde:0x3 DW_TAG_enumerator
	.byte	50                              # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xe1:0x3 DW_TAG_enumerator
	.byte	51                              # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xe5:0x5 DW_TAG_pointer_type
	.long	234                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xea:0x8 DW_TAG_typedef
	.long	242                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xf2:0x20 DW_TAG_union_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xf6:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	274                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xff:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x108:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x112:0x8 DW_TAG_typedef
	.long	282                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x11a:0x8 DW_TAG_typedef
	.long	74                              # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x122:0xc DW_TAG_array_type
	.long	302                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x127:0x6 DW_TAG_subrange_type
	.long	322                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12e:0x8 DW_TAG_typedef
	.long	310                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x136:0x8 DW_TAG_typedef
	.long	318                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x13e:0x4 DW_TAG_base_type
	.byte	57                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x142:0x4 DW_TAG_base_type
	.byte	60                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x146:0xc DW_TAG_array_type
	.long	338                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x14b:0x6 DW_TAG_subrange_type
	.long	322                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x152:0x8 DW_TAG_typedef
	.long	346                             # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x15a:0x8 DW_TAG_typedef
	.long	354                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x162:0x4 DW_TAG_base_type
	.byte	62                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x166:0x5 DW_TAG_pointer_type
	.long	363                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x16b:0x8 DW_TAG_typedef
	.long	371                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x173:0x29 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x177:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	412                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x180:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	432                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x189:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	444                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x192:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	456                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x19c:0x8 DW_TAG_typedef
	.long	420                             # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1a4:0x8 DW_TAG_typedef
	.long	428                             # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1ac:0x4 DW_TAG_base_type
	.byte	66                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1b0:0xc DW_TAG_array_type
	.long	274                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1b5:0x6 DW_TAG_subrange_type
	.long	322                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1bc:0xc DW_TAG_array_type
	.long	302                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1c1:0x6 DW_TAG_subrange_type
	.long	322                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1c8:0xc DW_TAG_array_type
	.long	338                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1cd:0x6 DW_TAG_subrange_type
	.long	322                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1d4:0x23 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	710                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x1e0:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	710                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1eb:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	710                             # DW_AT_decl_line
	.long	5847                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1f7:0x49 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x202:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x20b:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x214:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x21d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x226:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x22f:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp20-.Ltmp4                  # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x235:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x240:0x35 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x24b:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x254:0x20 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp68-.Lfunc_begin2           # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x25a:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x263:0x10 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp68-.Lfunc_begin2           # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x269:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	5877                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x275:0x3e DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x280:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x289:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x292:0x10 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp94-.Lfunc_begin3           # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x298:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2a2:0x10 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp112-.Ltmp96                # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x2a8:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x2b3:0x11 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	338                             # DW_AT_type
                                        # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2bb:0x8 DW_TAG_formal_parameter
	.byte	72                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2c4:0x4 DW_TAG_base_type
	.byte	73                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x2c8:0x8f DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	20                              # Abbrev [20] 0x2d3:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2dd:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2e6:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2ef:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2f8:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x301:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x30a:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x313:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	16                              # Abbrev [16] 0x315:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x31f:0x37 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp227-.Ltmp137               # DW_AT_high_pc
	.byte	22                              # Abbrev [22] 0x325:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x32e:0x27 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp227-.Ltmp140               # DW_AT_high_pc
	.byte	23                              # Abbrev [23] 0x334:0x8 DW_TAG_variable
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x33c:0x18 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp227-.Ltmp140               # DW_AT_high_pc
	.byte	23                              # Abbrev [23] 0x342:0x8 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x34a:0x9 DW_TAG_inlined_subroutine
	.long	691                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	141                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x357:0x3e DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x362:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x36b:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x374:0x10 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp244-.Lfunc_begin5          # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x37a:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x384:0x10 DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp262-.Ltmp246               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x38a:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x395:0x3e DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x3a0:0x9 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3a9:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3b2:0x10 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp264-.Lfunc_begin6          # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x3b8:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x3c2:0x10 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp281-.Ltmp265               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x3c8:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x3d3:0x2b DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	20                              # Abbrev [20] 0x3de:0xf DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	117
	.ascii	"\340\003"
	.byte	35
	.byte	32
	.byte	159
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3ed:0x10 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp283-.Lfunc_begin7          # DW_AT_high_pc
	.byte	22                              # Abbrev [22] 0x3f3:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_const_value
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x3fe:0x23 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	734                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x40a:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	734                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x415:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	734                             # DW_AT_decl_line
	.long	5847                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x421:0x3c DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x42d:0xa DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x437:0xa DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x441:0xa DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x44b:0x11 DW_TAG_lexical_block
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp295-.Ltmp287               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x451:0xa DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x45d:0x35 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x468:0x9 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x471:0x20 DW_TAG_lexical_block
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp319-.Lfunc_begin10         # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x477:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x480:0x10 DW_TAG_lexical_block
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp319-.Lfunc_begin10         # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x486:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x492:0x8d DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x49d:0x9 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4a6:0x9 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4af:0x9 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4b8:0x9 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4c1:0x9 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4ca:0x9 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4d3:0x9 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4dc:0x9 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4e5:0x9 DW_TAG_variable
	.byte	45                              # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4ee:0x10 DW_TAG_lexical_block
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp336-.Lfunc_begin11         # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x4f4:0x9 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4fe:0x10 DW_TAG_lexical_block
	.byte	19                              # DW_AT_low_pc
	.long	.Ltmp344-.Ltmp340               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x504:0x9 DW_TAG_variable
	.byte	43                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x50e:0x10 DW_TAG_lexical_block
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp350-.Ltmp346               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x514:0x9 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x51f:0x93 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x52b:0xa DW_TAG_formal_parameter
	.byte	47                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x535:0xa DW_TAG_variable
	.byte	48                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x53f:0xa DW_TAG_variable
	.byte	49                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x549:0xa DW_TAG_variable
	.byte	51                              # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x553:0xa DW_TAG_variable
	.byte	52                              # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x55d:0xa DW_TAG_variable
	.byte	53                              # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x567:0xa DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	282                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x571:0xd DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x573:0xa DW_TAG_variable
	.byte	50                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x57e:0x33 DW_TAG_lexical_block
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp393-.Ltmp369               # DW_AT_high_pc
	.byte	28                              # Abbrev [28] 0x584:0xa DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	284                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x58e:0x22 DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x590:0x9 DW_TAG_variable
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x599:0x16 DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x59b:0x9 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5a4:0xa DW_TAG_inlined_subroutine
	.long	691                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	289                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x5b2:0x57 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x5bd:0x9 DW_TAG_formal_parameter
	.byte	55                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5c6:0x9 DW_TAG_variable
	.byte	57                              # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5cf:0x9 DW_TAG_variable
	.byte	58                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x5d8:0x10 DW_TAG_lexical_block
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp402-.Lfunc_begin13         # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x5de:0x9 DW_TAG_variable
	.byte	56                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x5e8:0x10 DW_TAG_lexical_block
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp409-.Ltmp405               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x5ee:0x9 DW_TAG_variable
	.byte	59                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x5f8:0x10 DW_TAG_lexical_block
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp414-.Ltmp410               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x5fe:0x9 DW_TAG_variable
	.byte	60                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x609:0x47 DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x614:0x9 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x61d:0x9 DW_TAG_variable
	.byte	63                              # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x626:0x9 DW_TAG_variable
	.byte	64                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x62f:0x10 DW_TAG_lexical_block
	.byte	26                              # DW_AT_low_pc
	.long	.Ltmp423-.Lfunc_begin14         # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x635:0x9 DW_TAG_variable
	.byte	62                              # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x63f:0x10 DW_TAG_lexical_block
	.byte	27                              # DW_AT_low_pc
	.long	.Ltmp434-.Ltmp426               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x645:0x9 DW_TAG_variable
	.byte	65                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x650:0x25 DW_TAG_subprogram
	.byte	28                              # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x65b:0x9 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x664:0x10 DW_TAG_lexical_block
	.byte	29                              # DW_AT_low_pc
	.long	.Ltmp444-.Ltmp436               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x66a:0x9 DW_TAG_variable
	.byte	67                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x675:0x2e DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	758                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x681:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	758                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x68c:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	758                             # DW_AT_decl_line
	.long	5882                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x697:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	758                             # DW_AT_decl_line
	.long	5912                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x6a3:0x3e DW_TAG_subprogram
	.byte	31                              # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	556                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x6af:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	556                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6ba:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	556                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6c5:0xa DW_TAG_variable
	.byte	68                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	558                             # DW_AT_decl_line
	.long	412                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x6cf:0x11 DW_TAG_lexical_block
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp455-.Ltmp447               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x6d5:0xa DW_TAG_variable
	.byte	69                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	559                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x6e1:0x72 DW_TAG_subprogram
	.byte	33                              # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x6ed:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x6f8:0xa DW_TAG_formal_parameter
	.byte	70                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x702:0xa DW_TAG_variable
	.byte	71                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x70c:0xa DW_TAG_variable
	.byte	72                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x716:0xa DW_TAG_variable
	.byte	73                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x720:0xa DW_TAG_variable
	.byte	74                              # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x72a:0xa DW_TAG_variable
	.byte	75                              # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x734:0xa DW_TAG_variable
	.byte	76                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x73e:0xa DW_TAG_variable
	.byte	77                              # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x748:0xa DW_TAG_variable
	.byte	78                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x753:0xdd DW_TAG_subprogram
	.byte	34                              # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x75f:0xa DW_TAG_formal_parameter
	.byte	79                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x769:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x774:0xa DW_TAG_variable
	.byte	80                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x77e:0xa DW_TAG_variable
	.byte	81                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x788:0xa DW_TAG_variable
	.byte	82                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x792:0xa DW_TAG_variable
	.byte	83                              # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x79c:0xa DW_TAG_variable
	.byte	84                              # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7a6:0xa DW_TAG_variable
	.byte	85                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7b0:0xa DW_TAG_variable
	.byte	86                              # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7ba:0xa DW_TAG_variable
	.byte	87                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7c4:0xa DW_TAG_variable
	.byte	88                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7ce:0xa DW_TAG_variable
	.byte	89                              # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7d8:0xa DW_TAG_variable
	.byte	90                              # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7e2:0xa DW_TAG_variable
	.byte	91                              # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7ec:0xa DW_TAG_variable
	.byte	92                              # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7f6:0xa DW_TAG_variable
	.byte	93                              # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x800:0xa DW_TAG_variable
	.byte	94                              # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x80a:0xa DW_TAG_variable
	.byte	95                              # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x814:0xa DW_TAG_variable
	.byte	96                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x81e:0x11 DW_TAG_lexical_block
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp502-.Ltmp494               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x824:0xa DW_TAG_variable
	.byte	97                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x830:0xba DW_TAG_subprogram
	.byte	36                              # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	562                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x83c:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	562                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x847:0xa DW_TAG_formal_parameter
	.byte	98                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	562                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x851:0xa DW_TAG_variable
	.byte	99                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x85b:0xa DW_TAG_variable
	.byte	100                             # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x865:0xa DW_TAG_variable
	.byte	101                             # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x86f:0xa DW_TAG_variable
	.byte	102                             # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x879:0xa DW_TAG_variable
	.byte	103                             # DW_AT_location
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x883:0xa DW_TAG_variable
	.byte	104                             # DW_AT_location
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x88d:0xa DW_TAG_variable
	.byte	105                             # DW_AT_location
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x897:0xa DW_TAG_variable
	.byte	106                             # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8a1:0x9 DW_TAG_variable
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8aa:0x9 DW_TAG_variable
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8b3:0x9 DW_TAG_variable
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8bc:0x9 DW_TAG_variable
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	564                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8c5:0x9 DW_TAG_variable
	.byte	167                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8ce:0x9 DW_TAG_variable
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8d7:0x9 DW_TAG_variable
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8e0:0x9 DW_TAG_variable
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	565                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x8ea:0xc2 DW_TAG_subprogram
	.byte	37                              # DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	582                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x8f6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	582                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x901:0xa DW_TAG_formal_parameter
	.byte	107                             # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	582                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x90b:0xa DW_TAG_variable
	.byte	108                             # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x915:0xa DW_TAG_variable
	.byte	109                             # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x91f:0xa DW_TAG_variable
	.byte	110                             # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x929:0xa DW_TAG_variable
	.byte	111                             # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x933:0xa DW_TAG_variable
	.byte	112                             # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x93d:0xa DW_TAG_variable
	.byte	113                             # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x947:0xa DW_TAG_variable
	.byte	114                             # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	586                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x951:0x9 DW_TAG_variable
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x95a:0x9 DW_TAG_variable
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x963:0x9 DW_TAG_variable
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x96c:0x9 DW_TAG_variable
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x975:0x9 DW_TAG_variable
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x97e:0x9 DW_TAG_variable
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x987:0x9 DW_TAG_variable
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x990:0x9 DW_TAG_variable
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x999:0x9 DW_TAG_variable
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x9a2:0x9 DW_TAG_variable
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	585                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x9ac:0xcf DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	604                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x9b8:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	604                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x9c3:0xa DW_TAG_formal_parameter
	.byte	115                             # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	604                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9cd:0xa DW_TAG_variable
	.byte	116                             # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9d7:0xa DW_TAG_variable
	.byte	117                             # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9e1:0xa DW_TAG_variable
	.byte	118                             # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9eb:0xa DW_TAG_variable
	.byte	119                             # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9f5:0xa DW_TAG_variable
	.byte	120                             # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9ff:0xa DW_TAG_variable
	.byte	121                             # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa09:0xa DW_TAG_variable
	.byte	122                             # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa13:0xa DW_TAG_variable
	.byte	123                             # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa1d:0xa DW_TAG_variable
	.byte	124                             # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa27:0xa DW_TAG_variable
	.byte	125                             # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa31:0xa DW_TAG_variable
	.byte	126                             # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa3b:0xa DW_TAG_variable
	.byte	127                             # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa45:0xb DW_TAG_variable
	.ascii	"\200\001"                      # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa50:0xb DW_TAG_variable
	.ascii	"\201\001"                      # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa5b:0xb DW_TAG_variable
	.ascii	"\202\001"                      # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa66:0xb DW_TAG_variable
	.ascii	"\203\001"                      # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	608                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xa71:0x9 DW_TAG_variable
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xa7b:0x1c DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	274                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0xa84:0x9 DW_TAG_formal_parameter
	.byte	69                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xa8d:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xa97:0x1c DW_TAG_subprogram
	.byte	75                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	274                             # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0xaa0:0x9 DW_TAG_formal_parameter
	.byte	69                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xaa9:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xab3:0x3a7 DW_TAG_subprogram
	.byte	39                              # DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	632                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0xabf:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	632                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xaca:0xb DW_TAG_formal_parameter
	.ascii	"\204\001"                      # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	632                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xad5:0xb DW_TAG_variable
	.ascii	"\205\001"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xae0:0xb DW_TAG_variable
	.ascii	"\206\001"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xaeb:0xb DW_TAG_variable
	.ascii	"\207\001"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xaf6:0xb DW_TAG_variable
	.ascii	"\210\001"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb01:0xb DW_TAG_variable
	.ascii	"\211\001"                      # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb0c:0xb DW_TAG_variable
	.ascii	"\212\001"                      # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb17:0xb DW_TAG_variable
	.ascii	"\213\001"                      # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb22:0xb DW_TAG_variable
	.ascii	"\214\001"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb2d:0xb DW_TAG_variable
	.ascii	"\215\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb38:0xb DW_TAG_variable
	.ascii	"\216\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb43:0xb DW_TAG_variable
	.ascii	"\217\001"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb4e:0xb DW_TAG_variable
	.ascii	"\220\001"                      # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb59:0xb DW_TAG_variable
	.ascii	"\221\001"                      # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb64:0xb DW_TAG_variable
	.ascii	"\222\001"                      # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb6f:0xb DW_TAG_variable
	.ascii	"\223\001"                      # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb7a:0xb DW_TAG_variable
	.ascii	"\224\001"                      # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	636                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb85:0xb DW_TAG_variable
	.ascii	"\226\001"                      # DW_AT_location
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	637                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb90:0xb DW_TAG_variable
	.ascii	"\230\001"                      # DW_AT_location
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb9b:0xb DW_TAG_variable
	.ascii	"\232\001"                      # DW_AT_location
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	639                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xba6:0xb DW_TAG_variable
	.ascii	"\234\001"                      # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbb1:0xb DW_TAG_variable
	.ascii	"\236\001"                      # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	641                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbbc:0xb DW_TAG_variable
	.ascii	"\240\001"                      # DW_AT_location
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	642                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbc7:0xb DW_TAG_variable
	.ascii	"\242\001"                      # DW_AT_location
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	643                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbd2:0xb DW_TAG_variable
	.ascii	"\245\001"                      # DW_AT_location
	.byte	179                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	644                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbdd:0xb DW_TAG_variable
	.ascii	"\250\001"                      # DW_AT_location
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	645                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbe8:0xb DW_TAG_variable
	.ascii	"\253\001"                      # DW_AT_location
	.byte	181                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	646                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbf3:0xb DW_TAG_variable
	.ascii	"\256\001"                      # DW_AT_location
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	647                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xbfe:0x9 DW_TAG_variable
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xc07:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	40                              # DW_AT_low_pc
	.long	.Ltmp579-.Ltmp576               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	637                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xc15:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xc1c:0x7 DW_TAG_formal_parameter
	.ascii	"\225\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc24:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	41                              # DW_AT_low_pc
	.long	.Ltmp584-.Ltmp582               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	638                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xc32:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xc39:0x7 DW_TAG_formal_parameter
	.ascii	"\227\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc41:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp589-.Ltmp587               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	639                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xc4f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xc56:0x7 DW_TAG_formal_parameter
	.ascii	"\231\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc5e:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	43                              # DW_AT_low_pc
	.long	.Ltmp594-.Ltmp592               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	640                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xc6c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xc73:0x7 DW_TAG_formal_parameter
	.ascii	"\233\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc7b:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.long	.Ltmp599-.Ltmp597               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	641                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xc89:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xc90:0x7 DW_TAG_formal_parameter
	.ascii	"\235\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc98:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	45                              # DW_AT_low_pc
	.long	.Ltmp604-.Ltmp602               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	642                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xca6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xcad:0x7 DW_TAG_formal_parameter
	.ascii	"\237\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xcb5:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.long	.Ltmp609-.Ltmp607               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	643                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xcc3:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xcca:0x7 DW_TAG_formal_parameter
	.ascii	"\241\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xcd2:0x19 DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	644                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xcdc:0x7 DW_TAG_formal_parameter
	.ascii	"\243\001"                      # DW_AT_location
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xce3:0x7 DW_TAG_formal_parameter
	.ascii	"\244\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xceb:0x19 DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	645                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xcf5:0x7 DW_TAG_formal_parameter
	.ascii	"\247\001"                      # DW_AT_location
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xcfc:0x7 DW_TAG_formal_parameter
	.ascii	"\246\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xd04:0x19 DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	646                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xd0e:0x7 DW_TAG_formal_parameter
	.ascii	"\252\001"                      # DW_AT_location
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xd15:0x7 DW_TAG_formal_parameter
	.ascii	"\251\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xd1d:0x19 DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	9                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	647                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xd27:0x7 DW_TAG_formal_parameter
	.ascii	"\255\001"                      # DW_AT_location
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xd2e:0x7 DW_TAG_formal_parameter
	.ascii	"\254\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xd36:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	47                              # DW_AT_low_pc
	.long	.Ltmp643-.Ltmp641               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	657                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xd44:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xd4b:0x7 DW_TAG_formal_parameter
	.ascii	"\270\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xd53:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	48                              # DW_AT_low_pc
	.long	.Ltmp645-.Ltmp643               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	656                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xd61:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xd68:0x7 DW_TAG_formal_parameter
	.ascii	"\267\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xd70:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	49                              # DW_AT_low_pc
	.long	.Ltmp647-.Ltmp645               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	655                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xd7e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xd85:0x7 DW_TAG_formal_parameter
	.ascii	"\266\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xd8d:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	50                              # DW_AT_low_pc
	.long	.Ltmp649-.Ltmp647               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	654                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xd9b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xda2:0x7 DW_TAG_formal_parameter
	.ascii	"\265\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xdaa:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	51                              # DW_AT_low_pc
	.long	.Ltmp651-.Ltmp649               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	653                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xdb8:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xdbf:0x7 DW_TAG_formal_parameter
	.ascii	"\264\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xdc7:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	52                              # DW_AT_low_pc
	.long	.Ltmp653-.Ltmp651               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	652                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xdd5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xddc:0x7 DW_TAG_formal_parameter
	.ascii	"\263\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xde4:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	53                              # DW_AT_low_pc
	.long	.Ltmp655-.Ltmp653               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	651                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xdf2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xdf9:0x7 DW_TAG_formal_parameter
	.ascii	"\262\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xe01:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	54                              # DW_AT_low_pc
	.long	.Ltmp657-.Ltmp655               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	650                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xe0f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xe16:0x7 DW_TAG_formal_parameter
	.ascii	"\261\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xe1e:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	55                              # DW_AT_low_pc
	.long	.Ltmp659-.Ltmp657               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	649                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xe2c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xe33:0x7 DW_TAG_formal_parameter
	.ascii	"\260\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xe3b:0x1e DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	56                              # DW_AT_low_pc
	.long	.Ltmp661-.Ltmp659               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	648                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xe49:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xe51:0x7 DW_TAG_formal_parameter
	.ascii	"\257\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xe5a:0xcd DW_TAG_subprogram
	.byte	57                              # DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	659                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0xe66:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	659                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xe71:0xb DW_TAG_formal_parameter
	.ascii	"\271\001"                      # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	659                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe7c:0xb DW_TAG_variable
	.ascii	"\272\001"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe87:0xb DW_TAG_variable
	.ascii	"\273\001"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe92:0xb DW_TAG_variable
	.ascii	"\274\001"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe9d:0xb DW_TAG_variable
	.ascii	"\275\001"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xea8:0xb DW_TAG_variable
	.ascii	"\276\001"                      # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xeb3:0xb DW_TAG_variable
	.ascii	"\277\001"                      # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xebe:0xb DW_TAG_variable
	.ascii	"\300\001"                      # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xec9:0xb DW_TAG_variable
	.ascii	"\301\001"                      # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xed4:0xb DW_TAG_variable
	.ascii	"\302\001"                      # DW_AT_location
	.byte	167                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xedf:0xb DW_TAG_variable
	.ascii	"\303\001"                      # DW_AT_location
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xeea:0xb DW_TAG_variable
	.ascii	"\304\001"                      # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xef5:0xb DW_TAG_variable
	.ascii	"\305\001"                      # DW_AT_location
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf00:0xb DW_TAG_variable
	.ascii	"\306\001"                      # DW_AT_location
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xf0b:0x9 DW_TAG_variable
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xf14:0x9 DW_TAG_variable
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xf1d:0x9 DW_TAG_variable
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xf27:0x298 DW_TAG_subprogram
	.byte	58                              # DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	686                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0xf33:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	686                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xf3e:0xb DW_TAG_formal_parameter
	.ascii	"\307\001"                      # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	686                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf49:0xb DW_TAG_variable
	.ascii	"\310\001"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf54:0xb DW_TAG_variable
	.ascii	"\311\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf5f:0xb DW_TAG_variable
	.ascii	"\312\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf6a:0xb DW_TAG_variable
	.ascii	"\313\001"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf75:0xb DW_TAG_variable
	.ascii	"\314\001"                      # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf80:0xb DW_TAG_variable
	.ascii	"\315\001"                      # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf8b:0xb DW_TAG_variable
	.ascii	"\316\001"                      # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xf96:0xb DW_TAG_variable
	.ascii	"\317\001"                      # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	688                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfa1:0xb DW_TAG_variable
	.ascii	"\321\001"                      # DW_AT_location
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	689                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfac:0xb DW_TAG_variable
	.ascii	"\323\001"                      # DW_AT_location
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	690                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfb7:0xb DW_TAG_variable
	.ascii	"\325\001"                      # DW_AT_location
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	691                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfc2:0xb DW_TAG_variable
	.ascii	"\327\001"                      # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	692                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfcd:0xb DW_TAG_variable
	.ascii	"\331\001"                      # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	693                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfd8:0xb DW_TAG_variable
	.ascii	"\333\001"                      # DW_AT_location
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	694                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfe3:0xb DW_TAG_variable
	.ascii	"\336\001"                      # DW_AT_location
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	695                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xfee:0xb DW_TAG_variable
	.ascii	"\340\001"                      # DW_AT_location
	.byte	179                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	696                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xff9:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	59                              # DW_AT_low_pc
	.long	.Ltmp701-.Ltmp699               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	689                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1007:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x100e:0x7 DW_TAG_formal_parameter
	.ascii	"\320\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1016:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	60                              # DW_AT_low_pc
	.long	.Ltmp706-.Ltmp704               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	690                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1024:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x102b:0x7 DW_TAG_formal_parameter
	.ascii	"\322\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1033:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	61                              # DW_AT_low_pc
	.long	.Ltmp712-.Ltmp710               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	691                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1041:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1048:0x7 DW_TAG_formal_parameter
	.ascii	"\324\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1050:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.long	.Ltmp718-.Ltmp716               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	692                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x105e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1065:0x7 DW_TAG_formal_parameter
	.ascii	"\326\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x106d:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	63                              # DW_AT_low_pc
	.long	.Ltmp724-.Ltmp722               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	693                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x107b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1082:0x7 DW_TAG_formal_parameter
	.ascii	"\330\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x108a:0x1d DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	64                              # DW_AT_low_pc
	.long	.Ltmp730-.Ltmp728               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	694                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1098:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x109f:0x7 DW_TAG_formal_parameter
	.ascii	"\332\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x10a7:0x19 DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	703                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x10b1:0x7 DW_TAG_formal_parameter
	.ascii	"\346\001"                      # DW_AT_location
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x10b8:0x7 DW_TAG_formal_parameter
	.ascii	"\347\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x10c0:0x37 DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	65                              # DW_AT_low_pc
	.long	.Ltmp735-.Ltmp734               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	704                             # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x10ce:0x14 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	113
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	159
	.long	2720                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x10e2:0x14 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	113
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	159
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x10f7:0x19 DW_TAG_inlined_subroutine
	.long	2683                            # DW_AT_abstract_origin
	.byte	11                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	695                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x1101:0x7 DW_TAG_formal_parameter
	.ascii	"\334\001"                      # DW_AT_location
	.long	2692                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1108:0x7 DW_TAG_formal_parameter
	.ascii	"\335\001"                      # DW_AT_location
	.long	2701                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1110:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	66                              # DW_AT_low_pc
	.long	.Ltmp742-.Ltmp740               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	702                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x111e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1125:0x7 DW_TAG_formal_parameter
	.ascii	"\345\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x112d:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	67                              # DW_AT_low_pc
	.long	.Ltmp744-.Ltmp742               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	701                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x113b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1142:0x7 DW_TAG_formal_parameter
	.ascii	"\344\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x114a:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	68                              # DW_AT_low_pc
	.long	.Ltmp746-.Ltmp744               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	700                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1158:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x115f:0x7 DW_TAG_formal_parameter
	.ascii	"\343\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1167:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	69                              # DW_AT_low_pc
	.long	.Ltmp748-.Ltmp746               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	699                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1175:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x117c:0x7 DW_TAG_formal_parameter
	.ascii	"\342\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1184:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	70                              # DW_AT_low_pc
	.long	.Ltmp750-.Ltmp748               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	698                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x1192:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x1199:0x7 DW_TAG_formal_parameter
	.ascii	"\341\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x11a1:0x1d DW_TAG_inlined_subroutine
	.long	2711                            # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.long	.Ltmp752-.Ltmp750               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	697                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x11af:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	2720                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x11b6:0x7 DW_TAG_formal_parameter
	.ascii	"\337\001"                      # DW_AT_location
	.long	2729                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x11bf:0x98 DW_TAG_subprogram
	.byte	72                              # DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x11cb:0xb DW_TAG_formal_parameter
	.ascii	"\350\001"                      # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x11d6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x11e1:0xb DW_TAG_variable
	.ascii	"\351\001"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x11ec:0xb DW_TAG_variable
	.ascii	"\352\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x11f7:0xb DW_TAG_variable
	.ascii	"\353\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1202:0xb DW_TAG_variable
	.ascii	"\354\001"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x120d:0xb DW_TAG_variable
	.ascii	"\355\001"                      # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1218:0xb DW_TAG_variable
	.ascii	"\356\001"                      # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1223:0xb DW_TAG_variable
	.ascii	"\357\001"                      # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x122e:0xb DW_TAG_variable
	.ascii	"\360\001"                      # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1239:0xb DW_TAG_variable
	.ascii	"\361\001"                      # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1244:0x12 DW_TAG_lexical_block
	.byte	73                              # DW_AT_low_pc
	.long	.Ltmp774-.Ltmp766               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x124a:0xb DW_TAG_variable
	.ascii	"\362\001"                      # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	532                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1257:0x98 DW_TAG_subprogram
	.byte	74                              # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x1263:0xb DW_TAG_formal_parameter
	.ascii	"\363\001"                      # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x126e:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1279:0xb DW_TAG_variable
	.ascii	"\364\001"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1284:0xb DW_TAG_variable
	.ascii	"\365\001"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x128f:0xb DW_TAG_variable
	.ascii	"\366\001"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x129a:0xb DW_TAG_variable
	.ascii	"\367\001"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x12a5:0xb DW_TAG_variable
	.ascii	"\370\001"                      # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x12b0:0xb DW_TAG_variable
	.ascii	"\371\001"                      # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x12bb:0xb DW_TAG_variable
	.ascii	"\372\001"                      # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x12c6:0xb DW_TAG_variable
	.ascii	"\373\001"                      # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x12d1:0xb DW_TAG_variable
	.ascii	"\374\001"                      # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	537                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x12dc:0x12 DW_TAG_lexical_block
	.byte	75                              # DW_AT_low_pc
	.long	.Ltmp796-.Ltmp788               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x12e2:0xb DW_TAG_variable
	.ascii	"\375\001"                      # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x12ef:0x33 DW_TAG_subprogram
	.byte	76                              # DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	524                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x12fb:0xb DW_TAG_formal_parameter
	.ascii	"\376\001"                      # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	524                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1306:0x9 DW_TAG_formal_parameter
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	524                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x130f:0x12 DW_TAG_lexical_block
	.byte	77                              # DW_AT_low_pc
	.long	.Ltmp806-.Ltmp798               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x1315:0xb DW_TAG_variable
	.ascii	"\377\001"                      # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1322:0x52 DW_TAG_subprogram
	.byte	78                              # DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x132e:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1339:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x1344:0xb DW_TAG_formal_parameter
	.ascii	"\200\002"                      # DW_AT_location
	.byte	183                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x134f:0xb DW_TAG_formal_parameter
	.ascii	"\201\002"                      # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x135a:0x9 DW_TAG_variable
	.byte	185                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	465                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1363:0x10 DW_TAG_lexical_block
	.byte	79                              # DW_AT_low_pc
	.long	.Ltmp826-.Ltmp813               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x1369:0x9 DW_TAG_variable
	.byte	186                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	477                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1374:0x23 DW_TAG_subprogram
	.byte	80                              # DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	783                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x1380:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	783                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x138b:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	783                             # DW_AT_decl_line
	.long	5847                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1397:0x18 DW_TAG_subprogram
	.byte	81                              # DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x13a3:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x13af:0x18 DW_TAG_subprogram
	.byte	82                              # DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x13bb:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x13c7:0x23 DW_TAG_subprogram
	.byte	83                              # DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x13d3:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x13de:0xb DW_TAG_variable
	.ascii	"\202\002"                      # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x13ea:0x70 DW_TAG_subprogram
	.byte	84                              # DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	360                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x13f6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	360                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1401:0xb DW_TAG_variable
	.ascii	"\203\002"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	362                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x140c:0xb DW_TAG_variable
	.ascii	"\204\002"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	362                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1417:0xb DW_TAG_variable
	.ascii	"\205\002"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	362                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1422:0xb DW_TAG_variable
	.ascii	"\206\002"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	362                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x142d:0xb DW_TAG_variable
	.ascii	"\207\002"                      # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1438:0xb DW_TAG_variable
	.ascii	"\210\002"                      # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1443:0xb DW_TAG_variable
	.ascii	"\211\002"                      # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x144e:0xb DW_TAG_variable
	.ascii	"\212\002"                      # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x145a:0x7b DW_TAG_subprogram
	.byte	85                              # DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	372                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1466:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	372                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1471:0xb DW_TAG_variable
	.ascii	"\213\002"                      # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	374                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x147c:0xb DW_TAG_variable
	.ascii	"\214\002"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1487:0xb DW_TAG_variable
	.ascii	"\215\002"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1492:0xb DW_TAG_variable
	.ascii	"\216\002"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x149d:0xb DW_TAG_variable
	.ascii	"\217\002"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14a8:0xb DW_TAG_variable
	.ascii	"\220\002"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14b3:0xb DW_TAG_variable
	.ascii	"\221\002"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14be:0xb DW_TAG_variable
	.ascii	"\222\002"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14c9:0xb DW_TAG_variable
	.ascii	"\223\002"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x14d5:0x79 DW_TAG_subprogram
	.byte	86                              # DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x14e1:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14ec:0xb DW_TAG_variable
	.ascii	"\224\002"                      # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14f7:0xb DW_TAG_variable
	.ascii	"\225\002"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1502:0xb DW_TAG_variable
	.ascii	"\226\002"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x150d:0xb DW_TAG_variable
	.ascii	"\227\002"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1518:0xb DW_TAG_variable
	.ascii	"\230\002"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1523:0xb DW_TAG_variable
	.ascii	"\231\002"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x152e:0xb DW_TAG_variable
	.ascii	"\232\002"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1539:0xb DW_TAG_variable
	.ascii	"\233\002"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1544:0x9 DW_TAG_variable
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x154e:0x79 DW_TAG_subprogram
	.byte	87                              # DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x155a:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1565:0xb DW_TAG_variable
	.ascii	"\234\002"                      # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	405                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1570:0xb DW_TAG_variable
	.ascii	"\235\002"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	406                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x157b:0xb DW_TAG_variable
	.ascii	"\236\002"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	406                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1586:0xb DW_TAG_variable
	.ascii	"\237\002"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	406                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1591:0xb DW_TAG_variable
	.ascii	"\240\002"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	406                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x159c:0xb DW_TAG_variable
	.ascii	"\241\002"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15a7:0xb DW_TAG_variable
	.ascii	"\242\002"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15b2:0xb DW_TAG_variable
	.ascii	"\243\002"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x15bd:0x9 DW_TAG_variable
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x15c7:0x6e DW_TAG_subprogram
	.byte	88                              # DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x15d3:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15de:0xb DW_TAG_variable
	.ascii	"\244\002"                      # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15e9:0xb DW_TAG_variable
	.ascii	"\245\002"                      # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15f4:0xb DW_TAG_variable
	.ascii	"\246\002"                      # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15ff:0xb DW_TAG_variable
	.ascii	"\247\002"                      # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x160a:0xb DW_TAG_variable
	.ascii	"\250\002"                      # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1615:0xb DW_TAG_variable
	.ascii	"\251\002"                      # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1620:0xb DW_TAG_variable
	.ascii	"\252\002"                      # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x162b:0x9 DW_TAG_variable
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1635:0x44 DW_TAG_subprogram
	.byte	89                              # DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	436                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1641:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	436                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x164c:0xb DW_TAG_variable
	.ascii	"\253\002"                      # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1657:0xb DW_TAG_variable
	.ascii	"\254\002"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1662:0xb DW_TAG_variable
	.ascii	"\255\002"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x166d:0xb DW_TAG_variable
	.ascii	"\256\002"                      # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1679:0x23 DW_TAG_subprogram
	.byte	90                              # DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1685:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1690:0xb DW_TAG_variable
	.ascii	"\257\002"                      # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x169c:0x23 DW_TAG_subprogram
	.byte	91                              # DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x16a8:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x16b3:0xb DW_TAG_variable
	.ascii	"\260\002"                      # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x16bf:0x18 DW_TAG_subprogram
	.byte	92                              # DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x16cb:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	5872                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x16d7:0x5 DW_TAG_pointer_type
	.long	5852                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x16dc:0x8 DW_TAG_typedef
	.long	5860                            # DW_AT_type
	.byte	121                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x16e4:0x5 DW_TAG_pointer_type
	.long	5865                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x16e9:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	38                              # Abbrev [38] 0x16ea:0x5 DW_TAG_formal_parameter
	.long	5872                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x16f0:0x5 DW_TAG_pointer_type
	.long	338                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x16f5:0x5 DW_TAG_const_type
	.long	274                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x16fa:0x5 DW_TAG_pointer_type
	.long	5887                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x16ff:0x8 DW_TAG_typedef
	.long	5895                            # DW_AT_type
	.byte	142                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1707:0x5 DW_TAG_pointer_type
	.long	5900                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x170c:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	38                              # Abbrev [38] 0x170d:0x5 DW_TAG_formal_parameter
	.long	5872                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1712:0x5 DW_TAG_formal_parameter
	.long	5872                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1718:0x5 DW_TAG_pointer_type
	.long	5917                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x171d:0x8 DW_TAG_typedef
	.long	5925                            # DW_AT_type
	.byte	144                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1725:0x5 DW_TAG_pointer_type
	.long	5930                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x172a:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	38                              # Abbrev [38] 0x172b:0x5 DW_TAG_formal_parameter
	.long	5872                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1730:0x5 DW_TAG_formal_parameter
	.long	5872                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1735:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x173a:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	12                              # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
	.long	.Ldebug_ranges6-.Lrnglists_table_base0
	.long	.Ldebug_ranges7-.Lrnglists_table_base0
	.long	.Ldebug_ranges8-.Lrnglists_table_base0
	.long	.Ldebug_ranges9-.Lrnglists_table_base0
	.long	.Ldebug_ranges10-.Lrnglists_table_base0
	.long	.Ldebug_ranges11-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp211-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp218-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp219-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp225-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp361-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp362-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp382-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp385-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp386-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp389-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp392-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp616-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp623-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp627-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp629-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp632-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges9:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp637-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp641-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges10:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp740-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges11:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp735-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp737-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp738-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp739-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	752                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/common/predict.c"     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=131
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=165
.Linfo_string4:
	.asciz	"I_PRED_16x16_V"                # string offset=178
.Linfo_string5:
	.asciz	"I_PRED_16x16_H"                # string offset=193
.Linfo_string6:
	.asciz	"I_PRED_16x16_DC"               # string offset=208
.Linfo_string7:
	.asciz	"I_PRED_16x16_P"                # string offset=224
.Linfo_string8:
	.asciz	"I_PRED_16x16_DC_LEFT"          # string offset=239
.Linfo_string9:
	.asciz	"I_PRED_16x16_DC_TOP"           # string offset=260
.Linfo_string10:
	.asciz	"I_PRED_16x16_DC_128"           # string offset=280
.Linfo_string11:
	.asciz	"intra16x16_pred_e"             # string offset=300
.Linfo_string12:
	.asciz	"I_PRED_CHROMA_DC"              # string offset=318
.Linfo_string13:
	.asciz	"I_PRED_CHROMA_H"               # string offset=335
.Linfo_string14:
	.asciz	"I_PRED_CHROMA_V"               # string offset=351
.Linfo_string15:
	.asciz	"I_PRED_CHROMA_P"               # string offset=367
.Linfo_string16:
	.asciz	"I_PRED_CHROMA_DC_LEFT"         # string offset=383
.Linfo_string17:
	.asciz	"I_PRED_CHROMA_DC_TOP"          # string offset=405
.Linfo_string18:
	.asciz	"I_PRED_CHROMA_DC_128"          # string offset=426
.Linfo_string19:
	.asciz	"intra_chroma_pred_e"           # string offset=447
.Linfo_string20:
	.asciz	"I_PRED_8x8_V"                  # string offset=467
.Linfo_string21:
	.asciz	"I_PRED_8x8_H"                  # string offset=480
.Linfo_string22:
	.asciz	"I_PRED_8x8_DC"                 # string offset=493
.Linfo_string23:
	.asciz	"I_PRED_8x8_DDL"                # string offset=507
.Linfo_string24:
	.asciz	"I_PRED_8x8_DDR"                # string offset=522
.Linfo_string25:
	.asciz	"I_PRED_8x8_VR"                 # string offset=537
.Linfo_string26:
	.asciz	"I_PRED_8x8_HD"                 # string offset=551
.Linfo_string27:
	.asciz	"I_PRED_8x8_VL"                 # string offset=565
.Linfo_string28:
	.asciz	"I_PRED_8x8_HU"                 # string offset=579
.Linfo_string29:
	.asciz	"I_PRED_8x8_DC_LEFT"            # string offset=593
.Linfo_string30:
	.asciz	"I_PRED_8x8_DC_TOP"             # string offset=612
.Linfo_string31:
	.asciz	"I_PRED_8x8_DC_128"             # string offset=630
.Linfo_string32:
	.asciz	"intra8x8_pred_e"               # string offset=648
.Linfo_string33:
	.asciz	"I_PRED_4x4_V"                  # string offset=664
.Linfo_string34:
	.asciz	"I_PRED_4x4_H"                  # string offset=677
.Linfo_string35:
	.asciz	"I_PRED_4x4_DC"                 # string offset=690
.Linfo_string36:
	.asciz	"I_PRED_4x4_DDL"                # string offset=704
.Linfo_string37:
	.asciz	"I_PRED_4x4_DDR"                # string offset=719
.Linfo_string38:
	.asciz	"I_PRED_4x4_VR"                 # string offset=734
.Linfo_string39:
	.asciz	"I_PRED_4x4_HD"                 # string offset=748
.Linfo_string40:
	.asciz	"I_PRED_4x4_VL"                 # string offset=762
.Linfo_string41:
	.asciz	"I_PRED_4x4_HU"                 # string offset=776
.Linfo_string42:
	.asciz	"I_PRED_4x4_DC_LEFT"            # string offset=790
.Linfo_string43:
	.asciz	"I_PRED_4x4_DC_TOP"             # string offset=809
.Linfo_string44:
	.asciz	"I_PRED_4x4_DC_128"             # string offset=827
.Linfo_string45:
	.asciz	"intra4x4_pred_e"               # string offset=845
.Linfo_string46:
	.asciz	"MB_LEFT"                       # string offset=861
.Linfo_string47:
	.asciz	"MB_TOP"                        # string offset=869
.Linfo_string48:
	.asciz	"MB_TOPRIGHT"                   # string offset=876
.Linfo_string49:
	.asciz	"MB_TOPLEFT"                    # string offset=888
.Linfo_string50:
	.asciz	"MB_PRIVATE"                    # string offset=899
.Linfo_string51:
	.asciz	"ALL_NEIGHBORS"                 # string offset=910
.Linfo_string52:
	.asciz	"macroblock_position_e"         # string offset=924
.Linfo_string53:
	.asciz	"i"                             # string offset=946
.Linfo_string54:
	.asciz	"__uint32_t"                    # string offset=948
.Linfo_string55:
	.asciz	"uint32_t"                      # string offset=959
.Linfo_string56:
	.asciz	"b"                             # string offset=968
.Linfo_string57:
	.asciz	"unsigned short"                # string offset=970
.Linfo_string58:
	.asciz	"__uint16_t"                    # string offset=985
.Linfo_string59:
	.asciz	"uint16_t"                      # string offset=996
.Linfo_string60:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1005
.Linfo_string61:
	.asciz	"c"                             # string offset=1025
.Linfo_string62:
	.asciz	"unsigned char"                 # string offset=1027
.Linfo_string63:
	.asciz	"__uint8_t"                     # string offset=1041
.Linfo_string64:
	.asciz	"uint8_t"                       # string offset=1051
.Linfo_string65:
	.asciz	"x264_union32_t"                # string offset=1059
.Linfo_string66:
	.asciz	"unsigned long"                 # string offset=1074
.Linfo_string67:
	.asciz	"__uint64_t"                    # string offset=1088
.Linfo_string68:
	.asciz	"uint64_t"                      # string offset=1099
.Linfo_string69:
	.asciz	"a"                             # string offset=1108
.Linfo_string70:
	.asciz	"x264_union64_t"                # string offset=1110
.Linfo_string71:
	.asciz	"x264_clip_uint8"               # string offset=1125
.Linfo_string72:
	.asciz	"x"                             # string offset=1141
.Linfo_string73:
	.asciz	"int"                           # string offset=1143
.Linfo_string74:
	.asciz	"pack8to16"                     # string offset=1147
.Linfo_string75:
	.asciz	"pack16to32"                    # string offset=1157
.Linfo_string76:
	.asciz	"x264_predict_16x16_init"       # string offset=1168
.Linfo_string77:
	.asciz	"predict_16x16_v"               # string offset=1192
.Linfo_string78:
	.asciz	"predict_16x16_h"               # string offset=1208
.Linfo_string79:
	.asciz	"predict_16x16_dc"              # string offset=1224
.Linfo_string80:
	.asciz	"predict_16x16_p"               # string offset=1241
.Linfo_string81:
	.asciz	"predict_16x16_dc_left"         # string offset=1257
.Linfo_string82:
	.asciz	"predict_16x16_dc_top"          # string offset=1279
.Linfo_string83:
	.asciz	"predict_16x16_dc_128"          # string offset=1300
.Linfo_string84:
	.asciz	"x264_predict_8x8c_init"        # string offset=1321
.Linfo_string85:
	.asciz	"predict_8x8c_v"                # string offset=1344
.Linfo_string86:
	.asciz	"predict_8x8c_h"                # string offset=1359
.Linfo_string87:
	.asciz	"predict_8x8c_dc"               # string offset=1374
.Linfo_string88:
	.asciz	"predict_8x8c_p"                # string offset=1390
.Linfo_string89:
	.asciz	"predict_8x8c_dc_left"          # string offset=1405
.Linfo_string90:
	.asciz	"predict_8x8c_dc_top"           # string offset=1426
.Linfo_string91:
	.asciz	"predict_8x8c_dc_128"           # string offset=1446
.Linfo_string92:
	.asciz	"x264_predict_8x8_init"         # string offset=1466
.Linfo_string93:
	.asciz	"predict_8x8_v"                 # string offset=1488
.Linfo_string94:
	.asciz	"predict_8x8_h"                 # string offset=1502
.Linfo_string95:
	.asciz	"predict_8x8_dc"                # string offset=1516
.Linfo_string96:
	.asciz	"predict_8x8_ddl"               # string offset=1531
.Linfo_string97:
	.asciz	"predict_8x8_ddr"               # string offset=1547
.Linfo_string98:
	.asciz	"predict_8x8_vr"                # string offset=1563
.Linfo_string99:
	.asciz	"predict_8x8_hd"                # string offset=1578
.Linfo_string100:
	.asciz	"predict_8x8_vl"                # string offset=1593
.Linfo_string101:
	.asciz	"predict_8x8_hu"                # string offset=1608
.Linfo_string102:
	.asciz	"predict_8x8_dc_left"           # string offset=1623
.Linfo_string103:
	.asciz	"predict_8x8_dc_top"            # string offset=1643
.Linfo_string104:
	.asciz	"predict_8x8_dc_128"            # string offset=1662
.Linfo_string105:
	.asciz	"predict_8x8_filter"            # string offset=1681
.Linfo_string106:
	.asciz	"x264_predict_4x4_init"         # string offset=1700
.Linfo_string107:
	.asciz	"predict_4x4_v"                 # string offset=1722
.Linfo_string108:
	.asciz	"predict_4x4_h"                 # string offset=1736
.Linfo_string109:
	.asciz	"predict_4x4_dc"                # string offset=1750
.Linfo_string110:
	.asciz	"predict_4x4_ddl"               # string offset=1765
.Linfo_string111:
	.asciz	"predict_4x4_ddr"               # string offset=1781
.Linfo_string112:
	.asciz	"predict_4x4_vr"                # string offset=1797
.Linfo_string113:
	.asciz	"predict_4x4_hd"                # string offset=1812
.Linfo_string114:
	.asciz	"predict_4x4_vl"                # string offset=1827
.Linfo_string115:
	.asciz	"predict_4x4_hu"                # string offset=1842
.Linfo_string116:
	.asciz	"predict_4x4_dc_left"           # string offset=1857
.Linfo_string117:
	.asciz	"predict_4x4_dc_top"            # string offset=1877
.Linfo_string118:
	.asciz	"predict_4x4_dc_128"            # string offset=1896
.Linfo_string119:
	.asciz	"cpu"                           # string offset=1915
.Linfo_string120:
	.asciz	"pf"                            # string offset=1919
.Linfo_string121:
	.asciz	"x264_predict_t"                # string offset=1922
.Linfo_string122:
	.asciz	"src"                           # string offset=1937
.Linfo_string123:
	.asciz	"v0"                            # string offset=1941
.Linfo_string124:
	.asciz	"v1"                            # string offset=1944
.Linfo_string125:
	.asciz	"v2"                            # string offset=1947
.Linfo_string126:
	.asciz	"v3"                            # string offset=1950
.Linfo_string127:
	.asciz	"v"                             # string offset=1953
.Linfo_string128:
	.asciz	"dc"                            # string offset=1955
.Linfo_string129:
	.asciz	"H"                             # string offset=1958
.Linfo_string130:
	.asciz	"V"                             # string offset=1960
.Linfo_string131:
	.asciz	"i00"                           # string offset=1962
.Linfo_string132:
	.asciz	"y"                             # string offset=1966
.Linfo_string133:
	.asciz	"pix"                           # string offset=1968
.Linfo_string134:
	.asciz	"s0"                            # string offset=1972
.Linfo_string135:
	.asciz	"s1"                            # string offset=1975
.Linfo_string136:
	.asciz	"s2"                            # string offset=1978
.Linfo_string137:
	.asciz	"s3"                            # string offset=1981
.Linfo_string138:
	.asciz	"dc0"                           # string offset=1984
.Linfo_string139:
	.asciz	"dc1"                           # string offset=1988
.Linfo_string140:
	.asciz	"dc2"                           # string offset=1992
.Linfo_string141:
	.asciz	"dc3"                           # string offset=1996
.Linfo_string142:
	.asciz	"x264_predict8x8_t"             # string offset=2000
.Linfo_string143:
	.asciz	"predict_filter"                # string offset=2018
.Linfo_string144:
	.asciz	"x264_predict_8x8_filter_t"     # string offset=2033
.Linfo_string145:
	.asciz	"edge"                          # string offset=2059
.Linfo_string146:
	.asciz	"top"                           # string offset=2064
.Linfo_string147:
	.asciz	"l0"                            # string offset=2068
.Linfo_string148:
	.asciz	"l1"                            # string offset=2071
.Linfo_string149:
	.asciz	"l2"                            # string offset=2074
.Linfo_string150:
	.asciz	"l3"                            # string offset=2077
.Linfo_string151:
	.asciz	"l4"                            # string offset=2080
.Linfo_string152:
	.asciz	"l5"                            # string offset=2083
.Linfo_string153:
	.asciz	"l6"                            # string offset=2086
.Linfo_string154:
	.asciz	"l7"                            # string offset=2089
.Linfo_string155:
	.asciz	"t0"                            # string offset=2092
.Linfo_string156:
	.asciz	"t1"                            # string offset=2095
.Linfo_string157:
	.asciz	"t2"                            # string offset=2098
.Linfo_string158:
	.asciz	"t3"                            # string offset=2101
.Linfo_string159:
	.asciz	"t4"                            # string offset=2104
.Linfo_string160:
	.asciz	"t5"                            # string offset=2107
.Linfo_string161:
	.asciz	"t6"                            # string offset=2110
.Linfo_string162:
	.asciz	"t7"                            # string offset=2113
.Linfo_string163:
	.asciz	"t12"                           # string offset=2116
.Linfo_string164:
	.asciz	"t13"                           # string offset=2120
.Linfo_string165:
	.asciz	"t14"                           # string offset=2124
.Linfo_string166:
	.asciz	"t15"                           # string offset=2128
.Linfo_string167:
	.asciz	"t8"                            # string offset=2132
.Linfo_string168:
	.asciz	"t9"                            # string offset=2135
.Linfo_string169:
	.asciz	"t10"                           # string offset=2138
.Linfo_string170:
	.asciz	"t11"                           # string offset=2142
.Linfo_string171:
	.asciz	"lt"                            # string offset=2146
.Linfo_string172:
	.asciz	"p1"                            # string offset=2149
.Linfo_string173:
	.asciz	"p2"                            # string offset=2152
.Linfo_string174:
	.asciz	"p3"                            # string offset=2155
.Linfo_string175:
	.asciz	"p4"                            # string offset=2158
.Linfo_string176:
	.asciz	"p5"                            # string offset=2161
.Linfo_string177:
	.asciz	"p6"                            # string offset=2164
.Linfo_string178:
	.asciz	"p7"                            # string offset=2167
.Linfo_string179:
	.asciz	"p8"                            # string offset=2170
.Linfo_string180:
	.asciz	"p9"                            # string offset=2173
.Linfo_string181:
	.asciz	"p10"                           # string offset=2176
.Linfo_string182:
	.asciz	"p11"                           # string offset=2180
.Linfo_string183:
	.asciz	"i_neighbor"                    # string offset=2184
.Linfo_string184:
	.asciz	"i_filters"                     # string offset=2195
.Linfo_string185:
	.asciz	"have_lt"                       # string offset=2205
.Linfo_string186:
	.asciz	"have_tr"                       # string offset=2213
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.long	.Linfo_string152
	.long	.Linfo_string153
	.long	.Linfo_string154
	.long	.Linfo_string155
	.long	.Linfo_string156
	.long	.Linfo_string157
	.long	.Linfo_string158
	.long	.Linfo_string159
	.long	.Linfo_string160
	.long	.Linfo_string161
	.long	.Linfo_string162
	.long	.Linfo_string163
	.long	.Linfo_string164
	.long	.Linfo_string165
	.long	.Linfo_string166
	.long	.Linfo_string167
	.long	.Linfo_string168
	.long	.Linfo_string169
	.long	.Linfo_string170
	.long	.Linfo_string171
	.long	.Linfo_string172
	.long	.Linfo_string173
	.long	.Linfo_string174
	.long	.Linfo_string175
	.long	.Linfo_string176
	.long	.Linfo_string177
	.long	.Linfo_string178
	.long	.Linfo_string179
	.long	.Linfo_string180
	.long	.Linfo_string181
	.long	.Linfo_string182
	.long	.Linfo_string183
	.long	.Linfo_string184
	.long	.Linfo_string185
	.long	.Linfo_string186
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp4
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Ltmp96
	.quad	.Lfunc_begin4
	.quad	.Ltmp137
	.quad	.Ltmp140
	.quad	.Lfunc_begin5
	.quad	.Ltmp246
	.quad	.Lfunc_begin6
	.quad	.Ltmp265
	.quad	.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Ltmp287
	.quad	.Lfunc_begin10
	.quad	.Lfunc_begin11
	.quad	.Ltmp340
	.quad	.Ltmp346
	.quad	.Lfunc_begin12
	.quad	.Ltmp369
	.quad	.Lfunc_begin13
	.quad	.Ltmp405
	.quad	.Ltmp410
	.quad	.Lfunc_begin14
	.quad	.Ltmp426
	.quad	.Lfunc_begin15
	.quad	.Ltmp436
	.quad	.Lfunc_begin16
	.quad	.Lfunc_begin17
	.quad	.Ltmp447
	.quad	.Lfunc_begin18
	.quad	.Lfunc_begin19
	.quad	.Ltmp494
	.quad	.Lfunc_begin20
	.quad	.Lfunc_begin21
	.quad	.Lfunc_begin22
	.quad	.Lfunc_begin23
	.quad	.Ltmp576
	.quad	.Ltmp582
	.quad	.Ltmp587
	.quad	.Ltmp592
	.quad	.Ltmp597
	.quad	.Ltmp602
	.quad	.Ltmp607
	.quad	.Ltmp641
	.quad	.Ltmp643
	.quad	.Ltmp645
	.quad	.Ltmp647
	.quad	.Ltmp649
	.quad	.Ltmp651
	.quad	.Ltmp653
	.quad	.Ltmp655
	.quad	.Ltmp657
	.quad	.Ltmp659
	.quad	.Lfunc_begin24
	.quad	.Lfunc_begin25
	.quad	.Ltmp699
	.quad	.Ltmp704
	.quad	.Ltmp710
	.quad	.Ltmp716
	.quad	.Ltmp722
	.quad	.Ltmp728
	.quad	.Ltmp734
	.quad	.Ltmp740
	.quad	.Ltmp742
	.quad	.Ltmp744
	.quad	.Ltmp746
	.quad	.Ltmp748
	.quad	.Ltmp750
	.quad	.Lfunc_begin26
	.quad	.Ltmp766
	.quad	.Lfunc_begin27
	.quad	.Ltmp788
	.quad	.Lfunc_begin28
	.quad	.Ltmp798
	.quad	.Lfunc_begin29
	.quad	.Ltmp813
	.quad	.Lfunc_begin30
	.quad	.Lfunc_begin31
	.quad	.Lfunc_begin32
	.quad	.Lfunc_begin33
	.quad	.Lfunc_begin34
	.quad	.Lfunc_begin35
	.quad	.Lfunc_begin36
	.quad	.Lfunc_begin37
	.quad	.Lfunc_begin38
	.quad	.Lfunc_begin39
	.quad	.Lfunc_begin40
	.quad	.Lfunc_begin41
	.quad	.Lfunc_begin42
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
