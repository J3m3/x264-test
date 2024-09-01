	.text
	.file	"blk_prediction.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/blk_prediction.c" md5 0x69dce5edb3c13ffef2f69f94b9303fa4
	.file	1 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.globl	compute_residue                 # -- Begin function compute_residue
	.p2align	4, 0x90
	.type	compute_residue,@function
compute_residue:                        # @compute_residue
.Lfunc_begin0:
	.loc	0 31 0                          # ldecod_src/blk_prediction.c:31:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- $rdx
	#DEBUG_VALUE: compute_residue:mb_x <- $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- $r8d
	#DEBUG_VALUE: compute_residue:width <- $r9d
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
.Ltmp0:
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
                                        # kill: def $r9d killed $r9d def $r9
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
.Ltmp1:
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	movl	56(%rsp), %r10d
.Ltmp2:
	#DEBUG_VALUE: compute_residue:j <- 0
	.loc	0 36 17 prologue_end            # ldecod_src/blk_prediction.c:36:17
	testl	%r10d, %r10d
.Ltmp3:
	.loc	0 36 3 is_stmt 0                # ldecod_src/blk_prediction.c:36:3
	jle	.LBB0_20
.Ltmp4:
# %bb.1:                                # %for.body.lr.ph
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- $r8d
	#DEBUG_VALUE: compute_residue:width <- $r9d
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- 0
	.loc	0 0 3                           # ldecod_src/blk_prediction.c:0:3
	testl	%r9d, %r9d
	jle	.LBB0_20
.Ltmp5:
# %bb.2:                                # %for.body.us.preheader
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- $r8d
	#DEBUG_VALUE: compute_residue:width <- $r9d
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- 0
	movslq	%r8d, %rax
	movslq	%ecx, %rdx
	movq	%rax, %rcx
.Ltmp6:
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 36 17                         # ldecod_src/blk_prediction.c:36:17
	movl	%r10d, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
.Ltmp7:
	.loc	0 36 3                          # ldecod_src/blk_prediction.c:36:3
	leal	-1(%r9), %eax
	leaq	(%rdx,%rax), %r8
.Ltmp8:
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	leaq	(,%r8,4), %r10
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	addq	%r8, %r8
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483632, %eax               # imm = 0x7FFFFFF0
	leaq	(,%rax,4), %r8
	movq	%r8, -72(%rsp)                  # 8-byte Spill
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	leal	(%r9,%r9), %ebp
	andl	$-32, %ebp
	leaq	24(,%rcx,2), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	leaq	24(,%rdx,2), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leaq	48(,%rdx,4), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	xorl	%r12d, %r12d
	pxor	%xmm0, %xmm0
	movq	%r9, -112(%rsp)                 # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 112, DW_OP_minus] [$rsp+0]
	.loc	0 0 3                           # ldecod_src/blk_prediction.c:0:3
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	jmp	.LBB0_3
.Ltmp10:
	.p2align	4, 0x90
.LBB0_19:                               # %for.cond11.for.inc17_crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	.loc	0 36 28                         # ldecod_src/blk_prediction.c:36:28
	incq	%r12
.Ltmp11:
	#DEBUG_VALUE: compute_residue:j <- $r12
	.loc	0 36 17                         # ldecod_src/blk_prediction.c:36:17
	cmpq	-24(%rsp), %r12                 # 8-byte Folded Reload
.Ltmp12:
	.loc	0 36 3                          # ldecod_src/blk_prediction.c:36:3
	je	.LBB0_20
.Ltmp13:
.LBB0_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	.loc	0 38 15 is_stmt 1               # ldecod_src/blk_prediction.c:38:15
	movq	(%rdi,%r12,8), %r11
	leaq	(%r11,%rcx,2), %r14
.Ltmp14:
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	.loc	0 39 16                         # ldecod_src/blk_prediction.c:39:16
	movq	(%rsi,%r12,8), %r10
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r10,%rdx,2), %rbx
.Ltmp15:
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	.loc	0 0 16 is_stmt 0                # ldecod_src/blk_prediction.c:0:16
	movq	-8(%rsp), %rax                  # 8-byte Reload
	.loc	0 40 11 is_stmt 1               # ldecod_src/blk_prediction.c:40:11
	movq	(%rax,%r12,8), %r15
	leaq	(%r15,%rdx,4), %r13
.Ltmp16:
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 11 is_stmt 0                # ldecod_src/blk_prediction.c:0:11
	cmpl	$16, %r9d
.Ltmp17:
	.loc	0 41 5 is_stmt 1                # ldecod_src/blk_prediction.c:41:5
	jae	.LBB0_5
.Ltmp18:
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 5 is_stmt 0                 # ldecod_src/blk_prediction.c:0:5
	xorl	%r11d, %r11d
	.loc	0 41 5                          # ldecod_src/blk_prediction.c:41:5
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	jne	.LBB0_13
	jmp	.LBB0_12
.Ltmp19:
	.p2align	4, 0x90
.LBB0_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movq	%rdi, %r9
	movq	%rsi, %rcx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	.loc	0 41 5                          # ldecod_src/blk_prediction.c:41:5
	addq	%r15, %rax
	addq	$4, %rax
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r11,%rdx), %r8
	addq	$2, %r8
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	addq	%r10, %rdx
	addq	$2, %rdx
	cmpq	%r8, %r13
	setb	%sil
.Ltmp20:
	#DEBUG_VALUE: compute_residue:mpr <- $rcx
	cmpq	%rax, %r14
	setb	%dil
.Ltmp21:
	#DEBUG_VALUE: compute_residue:curImg <- $r9
	cmpq	%rdx, %r13
	setb	%r8b
	cmpq	%rax, %rbx
	setb	%al
	testb	%dil, %sil
	jne	.LBB0_6
.Ltmp22:
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $r9
	#DEBUG_VALUE: compute_residue:mpr <- $rcx
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	andb	%al, %r8b
	jne	.LBB0_6
.Ltmp23:
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $r9
	#DEBUG_VALUE: compute_residue:mpr <- $rcx
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	addq	-72(%rsp), %r13                 # 8-byte Folded Reload
.Ltmp24:
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movq	-80(%rsp), %rax                 # 8-byte Reload
	.loc	0 41 5                          # ldecod_src/blk_prediction.c:41:5
	addq	%rax, %rbx
.Ltmp25:
	addq	%rax, %r14
.Ltmp26:
	addq	-88(%rsp), %r11                 # 8-byte Folded Reload
	addq	-96(%rsp), %r10                 # 8-byte Folded Reload
	addq	-104(%rsp), %r15                # 8-byte Folded Reload
	xorl	%r8d, %r8d
	movq	%rcx, %rsi
	movq	%r9, %rdi
.Ltmp27:
	.p2align	4, 0x90
.LBB0_9:                                # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 43 15 is_stmt 1               # ldecod_src/blk_prediction.c:43:15
	movq	-24(%r11,%r8), %xmm1            # xmm1 = mem[0],zero
	movq	-16(%r11,%r8), %xmm2            # xmm2 = mem[0],zero
	movq	-8(%r11,%r8), %xmm3             # xmm3 = mem[0],zero
	movq	(%r11,%r8), %xmm4               # xmm4 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	.loc	0 43 27 is_stmt 0               # ldecod_src/blk_prediction.c:43:27
	movq	-24(%r10,%r8), %xmm5            # xmm5 = mem[0],zero
	movq	-16(%r10,%r8), %xmm6            # xmm6 = mem[0],zero
	movq	-8(%r10,%r8), %xmm7             # xmm7 = mem[0],zero
	movq	(%r10,%r8), %xmm8               # xmm8 = mem[0],zero
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	psubd	%xmm5, %xmm1
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	psubd	%xmm6, %xmm2
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	psubd	%xmm7, %xmm3
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	psubd	%xmm8, %xmm4
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movdqu	%xmm1, -48(%r15,%r8,2)
	movdqu	%xmm2, -32(%r15,%r8,2)
	movdqu	%xmm3, -16(%r15,%r8,2)
	movdqu	%xmm4, (%r15,%r8,2)
	addq	$32, %r8
	cmpq	%r8, %rbp
	jne	.LBB0_9
.Ltmp28:
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 13                          # ldecod_src/blk_prediction.c:0:13
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r11d
	cmpl	-56(%rsp), %eax                 # 4-byte Folded Reload
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rcx                # 8-byte Reload
	.loc	0 41 5 is_stmt 1                # ldecod_src/blk_prediction.c:41:5
	je	.LBB0_19
.Ltmp29:
	.p2align	4, 0x90
# %bb.11:                               # %for.body13.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- 0
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	je	.LBB0_12
.Ltmp30:
.LBB0_13:                               # %for.body13.us.prol.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- 0
	negl	%r8d
	xorl	%r10d, %r10d
.Ltmp31:
	.p2align	4, 0x90
.LBB0_14:                               # %for.body13.us.prol
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	.loc	0 43 15                         # ldecod_src/blk_prediction.c:43:15
	movzwl	(%r14), %eax
.Ltmp32:
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r10d, $r11d
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	.loc	0 43 22 is_stmt 0               # ldecod_src/blk_prediction.c:43:22
	addq	$2, %r14
.Ltmp33:
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	movzwl	(%rbx), %edx
.Ltmp34:
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	.loc	0 43 35                         # ldecod_src/blk_prediction.c:43:35
	addq	$2, %rbx
.Ltmp35:
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	subl	%edx, %eax
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movl	%eax, (%r13)
	.loc	0 43 10                         # ldecod_src/blk_prediction.c:43:10
	addq	$4, %r13
.Ltmp36:
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10d, $r11d
	.loc	0 41 5 is_stmt 1                # ldecod_src/blk_prediction.c:41:5
	decl	%r10d
.Ltmp37:
	cmpl	%r10d, %r8d
	jne	.LBB0_14
.Ltmp38:
# %bb.15:                               # %for.body13.us.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	movl	%r11d, %r15d
	subl	%r10d, %r15d
	subl	%r9d, %r11d
	cmpl	$-4, %r11d
	ja	.LBB0_19
	jmp	.LBB0_17
.Ltmp39:
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $r9
	#DEBUG_VALUE: compute_residue:mpr <- $rcx
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:imgOrg <- $r14
	#DEBUG_VALUE: compute_residue:imgPred <- $rbx
	#DEBUG_VALUE: compute_residue:m7 <- $r13
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 5 is_stmt 0                 # ldecod_src/blk_prediction.c:0:5
	xorl	%r11d, %r11d
	movq	%rcx, %rsi
	movq	%r9, %rdi
	movq	-112(%rsp), %r9                 # 8-byte Reload
.Ltmp40:
	movq	-120(%rsp), %rcx                # 8-byte Reload
.Ltmp41:
	.loc	0 41 5                          # ldecod_src/blk_prediction.c:41:5
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	jne	.LBB0_13
.Ltmp42:
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- 0
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movl	%r11d, %r15d
	.loc	0 41 5                          # ldecod_src/blk_prediction.c:41:5
	subl	%r9d, %r11d
	cmpl	$-4, %r11d
	ja	.LBB0_19
.Ltmp43:
.LBB0_17:                               # %for.body13.us.preheader1
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	movl	%r9d, %r8d
	subl	%r15d, %r8d
	xorl	%r10d, %r10d
.Ltmp44:
	.p2align	4, 0x90
.LBB0_18:                               # %for.body13.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_constu 56, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: compute_residue:j <- $r12
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r10, $r15d
	#DEBUG_VALUE: compute_residue:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 16, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r10, $r13
	#DEBUG_VALUE: compute_residue:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r10, $rbx
	#DEBUG_VALUE: compute_residue:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r10, $r14
	#DEBUG_VALUE: compute_residue:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r14
	.loc	0 43 15 is_stmt 1               # ldecod_src/blk_prediction.c:43:15
	movzwl	(%r14,%r10,2), %eax
.Ltmp45:
	#DEBUG_VALUE: compute_residue:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $rbx
	.loc	0 43 27 is_stmt 0               # ldecod_src/blk_prediction.c:43:27
	movzwl	(%rbx,%r10,2), %edx
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	subl	%edx, %eax
.Ltmp46:
	#DEBUG_VALUE: compute_residue:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 16, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r13
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movl	%eax, (%r13,%r10,4)
.Ltmp47:
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r10
	#DEBUG_VALUE: compute_residue:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r14
	.loc	0 43 15                         # ldecod_src/blk_prediction.c:43:15
	movzwl	2(%r14,%r10,2), %eax
.Ltmp48:
	#DEBUG_VALUE: compute_residue:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $rbx
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	movzwl	2(%rbx,%r10,2), %edx
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	subl	%edx, %eax
.Ltmp49:
	#DEBUG_VALUE: compute_residue:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 16, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r13
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movl	%eax, 4(%r13,%r10,4)
.Ltmp50:
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r10
	#DEBUG_VALUE: compute_residue:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 6, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r14
	.loc	0 43 15                         # ldecod_src/blk_prediction.c:43:15
	movzwl	4(%r14,%r10,2), %eax
.Ltmp51:
	#DEBUG_VALUE: compute_residue:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 6, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $rbx
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	movzwl	4(%rbx,%r10,2), %edx
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	subl	%edx, %eax
.Ltmp52:
	#DEBUG_VALUE: compute_residue:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 16, DW_OP_mul, DW_OP_consts 12, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r13
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movl	%eax, 8(%r13,%r10,4)
.Ltmp53:
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] $r10
	#DEBUG_VALUE: compute_residue:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r14
	.loc	0 43 15                         # ldecod_src/blk_prediction.c:43:15
	movzwl	6(%r14,%r10,2), %eax
.Ltmp54:
	#DEBUG_VALUE: compute_residue:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $rbx
	.loc	0 43 27                         # ldecod_src/blk_prediction.c:43:27
	movzwl	6(%rbx,%r10,2), %edx
	.loc	0 43 25                         # ldecod_src/blk_prediction.c:43:25
	subl	%edx, %eax
.Ltmp55:
	#DEBUG_VALUE: compute_residue:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 16, DW_OP_mul, DW_OP_consts 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r13
	.loc	0 43 13                         # ldecod_src/blk_prediction.c:43:13
	movl	%eax, 12(%r13,%r10,4)
.Ltmp56:
	#DEBUG_VALUE: compute_residue:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $r10, $r15d
	.loc	0 41 19 is_stmt 1               # ldecod_src/blk_prediction.c:41:19
	addq	$4, %r10
.Ltmp57:
	cmpl	%r10d, %r8d
.Ltmp58:
	.loc	0 41 5 is_stmt 0                # ldecod_src/blk_prediction.c:41:5
	jne	.LBB0_18
	jmp	.LBB0_19
.Ltmp59:
.LBB0_20:                               # %for.end19
	#DEBUG_VALUE: compute_residue:curImg <- $rdi
	#DEBUG_VALUE: compute_residue:mpr <- $rsi
	#DEBUG_VALUE: compute_residue:mb_rres <- [DW_OP_constu 8, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: compute_residue:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: compute_residue:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: compute_residue:width <- [DW_OP_LLVM_entry_value 1] $r9d
	#DEBUG_VALUE: compute_residue:height <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 46 1 epilogue_begin is_stmt 1 # ldecod_src/blk_prediction.c:46:1
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
.Ltmp60:
.Lfunc_end0:
	.size	compute_residue, .Lfunc_end0-compute_residue
	.cfi_endproc
                                        # -- End function
	.globl	sample_reconstruct              # -- Begin function sample_reconstruct
	.p2align	4, 0x90
	.type	sample_reconstruct,@function
sample_reconstruct:                     # @sample_reconstruct
.Lfunc_begin1:
	.loc	0 49 0                          # ldecod_src/blk_prediction.c:49:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: sample_reconstruct:curImg <- $rdi
	#DEBUG_VALUE: sample_reconstruct:mpr <- $rsi
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- $rdx
	#DEBUG_VALUE: sample_reconstruct:mb_x <- $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- $r9d
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp61:
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
                                        # kill: def $r9d killed $r9d def $r9
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
.Ltmp62:
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	movl	88(%rsp), %edi
.Ltmp63:
	#DEBUG_VALUE: sample_reconstruct:j <- 0
	.loc	0 54 17 prologue_end            # ldecod_src/blk_prediction.c:54:17
	testl	%edi, %edi
.Ltmp64:
	.loc	0 54 3 is_stmt 0                # ldecod_src/blk_prediction.c:54:3
	jle	.LBB1_22
.Ltmp65:
# %bb.1:                                # %for.body.lr.ph
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- $rsi
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- $rdx
	#DEBUG_VALUE: sample_reconstruct:mb_x <- $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- $r9d
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- 0
	.loc	0 0 3                           # ldecod_src/blk_prediction.c:0:3
	movl	%ecx, %r10d
	movl	104(%rsp), %eax
	leal	-1(%rax), %ecx
.Ltmp66:
	#DEBUG_VALUE: sample_reconstruct:mb_x <- $r10d
	movl	$1, %r11d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	testl	%r9d, %r9d
	jle	.LBB1_22
.Ltmp67:
# %bb.2:                                # %for.body.us.preheader
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- $rsi
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- $rdx
	#DEBUG_VALUE: sample_reconstruct:mb_x <- $r10d
	#DEBUG_VALUE: sample_reconstruct:opix_x <- $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- $r9d
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- 0
	movl	96(%rsp), %ebx
	movslq	%r8d, %rcx
	movslq	%r10d, %r8
.Ltmp68:
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	.loc	0 54 17                         # ldecod_src/blk_prediction.c:54:17
	movl	%edi, %edi
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
.Ltmp69:
	.loc	0 54 3                          # ldecod_src/blk_prediction.c:54:3
	leal	-1(%r9), %edi
	leaq	(%rcx,%rdi), %r10
.Ltmp70:
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	addq	%r10, %r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	addq	%r8, %rdi
	leaq	(,%rdi,4), %r10
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	addq	%rdi, %rdi
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	movl	%r9d, %edi
	movq	%rdi, -48(%rsp)                 # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	andl	$2147483632, %edi               # imm = 0x7FFFFFF0
	leaq	(,%rdi,4), %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	addl	%edi, %edi
	movq	%rdi, -72(%rsp)                 # 8-byte Spill
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movd	%eax, %xmm4
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	leal	(%r9,%r9), %edi
	andl	$-32, %edi
	movq	%rdi, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leaq	24(,%rcx,2), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leaq	24(%r8,%r8), %rcx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	pxor	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movss	%xmm4, %xmm3                    # xmm3 = xmm4[0],xmm3[1,2,3]
	movq	%r8, (%rsp)                     # 8-byte Spill
	leaq	48(,%r8,4), %rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	movq	%r9, -112(%rsp)                 # 8-byte Spill
.Ltmp71:
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 112, DW_OP_minus] [$rsp+0]
	.loc	0 0 3                           # ldecod_src/blk_prediction.c:0:3
	movq	%rdx, -120(%rsp)                # 8-byte Spill
.Ltmp72:
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	movq	%rsi, -128(%rsp)                # 8-byte Spill
.Ltmp73:
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	jmp	.LBB1_3
.Ltmp74:
	.p2align	4, 0x90
.LBB1_21:                               # %for.cond11.for.inc18_crit_edge.us
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	movq	24(%rsp), %r10                  # 8-byte Reload
.Ltmp75:
	.loc	0 54 28                         # ldecod_src/blk_prediction.c:54:28
	incq	%r10
.Ltmp76:
	#DEBUG_VALUE: sample_reconstruct:j <- $r10
	.loc	0 54 17                         # ldecod_src/blk_prediction.c:54:17
	cmpq	-8(%rsp), %r10                  # 8-byte Folded Reload
.Ltmp77:
	.loc	0 54 3                          # ldecod_src/blk_prediction.c:54:3
	je	.LBB1_22
.Ltmp78:
.LBB1_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- $r10
	.loc	0 0 3                           # ldecod_src/blk_prediction.c:0:3
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp79:
	.loc	0 56 15 is_stmt 1               # ldecod_src/blk_prediction.c:56:15
	movq	(%rcx,%r10,8), %rcx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leaq	(%rcx,%rdi,2), %r15
.Ltmp80:
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	.loc	0 57 16                         # ldecod_src/blk_prediction.c:57:16
	movq	(%rsi,%r10,8), %rbp
	movq	(%rsp), %r8                     # 8-byte Reload
	leaq	(%rbp,%r8,2), %r14
.Ltmp81:
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	.loc	0 0 16 is_stmt 0                # ldecod_src/blk_prediction.c:0:16
	movq	%r10, 24(%rsp)                  # 8-byte Spill
.Ltmp82:
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 58 11 is_stmt 1               # ldecod_src/blk_prediction.c:58:11
	movq	(%rdx,%r10,8), %rdi
	leaq	(%rdi,%r8,4), %r12
.Ltmp83:
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 11 is_stmt 0                # ldecod_src/blk_prediction.c:0:11
	cmpl	$16, %r9d
.Ltmp84:
	.loc	0 59 5 is_stmt 1                # ldecod_src/blk_prediction.c:59:5
	jae	.LBB1_5
.Ltmp85:
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 5 is_stmt 0                 # ldecod_src/blk_prediction.c:0:5
	xorl	%r8d, %r8d
	.loc	0 59 5                          # ldecod_src/blk_prediction.c:59:5
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	je	.LBB1_12
	jmp	.LBB1_13
.Ltmp86:
	.p2align	4, 0x90
.LBB1_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	.loc	0 59 5                          # ldecod_src/blk_prediction.c:59:5
	leaq	(%rcx,%rdx), %r10
	addq	$2, %r10
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdi,%rdx), %r8
	addq	$4, %r8
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	addq	%rbp, %rdx
	addq	$2, %rdx
	cmpq	%r8, %r15
	setb	%r9b
	cmpq	%r10, %r12
	setb	%sil
	cmpq	%rdx, %r15
	setb	%r8b
	cmpq	%r10, %r14
	setb	%r10b
	testb	%sil, %r9b
	jne	.LBB1_6
.Ltmp87:
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	andb	%r10b, %r8b
	jne	.LBB1_6
.Ltmp88:
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	addq	-64(%rsp), %r12                 # 8-byte Folded Reload
.Ltmp89:
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	.loc	0 59 5                          # ldecod_src/blk_prediction.c:59:5
	addq	%rdx, %r14
.Ltmp90:
	addq	%rdx, %r15
.Ltmp91:
	addq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	addq	-96(%rsp), %rbp                 # 8-byte Folded Reload
	addq	-104(%rsp), %rdi                # 8-byte Folded Reload
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	-80(%rsp), %r10                 # 8-byte Reload
.Ltmp92:
	.p2align	4, 0x90
.LBB1_9:                                # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 60 68 is_stmt 1               # ldecod_src/blk_prediction.c:60:68
	movdqu	-48(%rdi,%r8,2), %xmm6
	movdqu	-32(%rdi,%r8,2), %xmm7
	movdqu	-16(%rdi,%r8,2), %xmm5
	movdqu	(%rdi,%r8,2), %xmm4
.Ltmp93:
	.file	2 "ldecod_src/inc" "ifunctions.h" md5 0x279401589ed56df99e287ad9e5fc564b
	.loc	2 177 14                        # ldecod_src/inc/ifunctions.h:177:14
	paddd	%xmm0, %xmm6
	paddd	%xmm0, %xmm7
	paddd	%xmm0, %xmm5
	paddd	%xmm0, %xmm4
	.loc	2 177 31 is_stmt 0              # ldecod_src/inc/ifunctions.h:177:31
	psrad	%xmm3, %xmm6
	psrad	%xmm3, %xmm7
	psrad	%xmm3, %xmm5
	psrad	%xmm3, %xmm4
.Ltmp94:
	.loc	0 60 86 is_stmt 1               # ldecod_src/blk_prediction.c:60:86
	movq	-24(%rbp,%r8), %xmm8            # xmm8 = mem[0],zero
	movq	-16(%rbp,%r8), %xmm9            # xmm9 = mem[0],zero
	movq	-8(%rbp,%r8), %xmm10            # xmm10 = mem[0],zero
	movq	(%rbp,%r8), %xmm11              # xmm11 = mem[0],zero
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	.loc	0 60 84 is_stmt 0               # ldecod_src/blk_prediction.c:60:84
	paddd	%xmm6, %xmm8
	.loc	0 60 86                         # ldecod_src/blk_prediction.c:60:86
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	.loc	0 60 84                         # ldecod_src/blk_prediction.c:60:84
	paddd	%xmm7, %xmm9
	.loc	0 60 86                         # ldecod_src/blk_prediction.c:60:86
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	.loc	0 60 84                         # ldecod_src/blk_prediction.c:60:84
	paddd	%xmm5, %xmm10
	.loc	0 60 86                         # ldecod_src/blk_prediction.c:60:86
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	.loc	0 60 84                         # ldecod_src/blk_prediction.c:60:84
	paddd	%xmm4, %xmm11
.Ltmp95:
	.loc	2 49 10 is_stmt 1               # ldecod_src/inc/ifunctions.h:49:10
	movdqa	%xmm8, %xmm5
	pcmpgtd	%xmm2, %xmm5
	pand	%xmm8, %xmm5
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm9, %xmm6
	movdqa	%xmm10, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm10, %xmm7
	movdqa	%xmm11, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm11, %xmm4
.Ltmp96:
	.loc	2 44 10                         # ldecod_src/inc/ifunctions.h:44:10
	movdqa	%xmm1, %xmm8
	pcmpgtd	%xmm5, %xmm8
	pand	%xmm8, %xmm5
	pandn	%xmm1, %xmm8
	por	%xmm5, %xmm8
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pand	%xmm5, %xmm6
	pandn	%xmm1, %xmm5
	por	%xmm6, %xmm5
	movdqa	%xmm1, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm1, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm1, %xmm7
	por	%xmm4, %xmm7
.Ltmp97:
	.loc	0 60 19                         # ldecod_src/blk_prediction.c:60:19
	pshuflw	$232, %xmm8, %xmm4              # xmm4 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	.loc	0 60 17 is_stmt 0               # ldecod_src/blk_prediction.c:60:17
	punpcklqdq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0]
	.loc	0 60 19                         # ldecod_src/blk_prediction.c:60:19
	pshuflw	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm6              # xmm6 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	.loc	0 60 17                         # ldecod_src/blk_prediction.c:60:17
	punpcklqdq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0]
	movdqu	%xmm4, -24(%rcx,%r8)
	movdqu	%xmm5, -8(%rcx,%r8)
	addq	$32, %r8
	cmpq	%r8, %r10
	jne	.LBB1_9
.Ltmp98:
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 17                          # ldecod_src/blk_prediction.c:0:17
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %r8d
	cmpl	-48(%rsp), %ecx                 # 4-byte Folded Reload
	.loc	0 59 5 is_stmt 1                # ldecod_src/blk_prediction.c:59:5
	je	.LBB1_21
.Ltmp99:
	.p2align	4, 0x90
# %bb.11:                               # %for.body13.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	jne	.LBB1_13
.Ltmp100:
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 5 is_stmt 0                 # ldecod_src/blk_prediction.c:0:5
	movl	%r8d, %ecx
	.loc	0 59 5                          # ldecod_src/blk_prediction.c:59:5
	cmpl	-16(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB1_21
	jmp	.LBB1_15
.Ltmp101:
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	-128(%rsp), %rsi                # 8-byte Reload
	.loc	0 59 5                          # ldecod_src/blk_prediction.c:59:5
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	je	.LBB1_12
.Ltmp102:
.LBB1_13:                               # %for.body13.us.prol
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- 0
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movl	(%r12), %edi
.Ltmp103:
	.loc	2 177 14 is_stmt 1              # ldecod_src/inc/ifunctions.h:177:14
	addl	%r11d, %edi
.Ltmp104:
	#DEBUG_VALUE: sample_reconstruct:i <- $r8d
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	#DEBUG_VALUE: sample_reconstruct:m7 <- undef
	#DEBUG_VALUE: rshift_rnd_sf:x <- undef
	#DEBUG_VALUE: rshift_rnd_sf:a <- $eax
	.loc	2 177 31 is_stmt 0              # ldecod_src/inc/ifunctions.h:177:31
	movl	%eax, %ecx
	sarl	%cl, %edi
.Ltmp105:
	.loc	0 60 71 is_stmt 1               # ldecod_src/blk_prediction.c:60:71
	addq	$4, %r12
.Ltmp106:
	#DEBUG_VALUE: sample_reconstruct:m7 <- $r12
	.loc	0 60 86 is_stmt 0               # ldecod_src/blk_prediction.c:60:86
	movzwl	(%r14), %ecx
	.loc	0 60 94                         # ldecod_src/blk_prediction.c:60:94
	addq	$2, %r14
.Ltmp107:
	#DEBUG_VALUE: sample_reconstruct:imgPred <- $r14
	.loc	0 60 84                         # ldecod_src/blk_prediction.c:60:84
	addl	%edi, %ecx
.Ltmp108:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imax:a <- $ecx
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: imax:b <- 0
	.loc	2 49 10 is_stmt 1               # ldecod_src/inc/ifunctions.h:49:10
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
.Ltmp109:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imin:a <- $ecx
	#DEBUG_VALUE: imin:b <- $ebx
	.loc	2 44 10                         # ldecod_src/inc/ifunctions.h:44:10
	cmpl	%ebx, %ecx
	cmovgel	%ebx, %ecx
.Ltmp110:
	#DEBUG_VALUE: iClip1:x <- $ecx
	.loc	0 60 17                         # ldecod_src/blk_prediction.c:60:17
	movw	%cx, (%r15)
	.loc	0 60 14 is_stmt 0               # ldecod_src/blk_prediction.c:60:14
	addq	$2, %r15
.Ltmp111:
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- $r15
	.loc	0 59 23 is_stmt 1               # ldecod_src/blk_prediction.c:59:23
	leal	1(%r8), %ecx
.Ltmp112:
	#DEBUG_VALUE: sample_reconstruct:i <- $ecx
	.loc	0 59 5 is_stmt 0                # ldecod_src/blk_prediction.c:59:5
	cmpl	-16(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB1_21
.Ltmp113:
.LBB1_15:                               # %for.body13.us.preheader1
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	xorl	%edi, %edi
	jmp	.LBB1_16
.Ltmp114:
	.p2align	4, 0x90
.LBB1_20:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: sample_reconstruct:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	.loc	0 60 17 is_stmt 1               # ldecod_src/blk_prediction.c:60:17
	movw	%cx, 2(%r15,%rdi,2)
.Ltmp115:
	#DEBUG_VALUE: sample_reconstruct:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 59 15                         # ldecod_src/blk_prediction.c:59:15
	addq	$2, %rdi
.Ltmp116:
	cmpl	%edi, %r10d
.Ltmp117:
	.loc	0 59 5 is_stmt 0                # ldecod_src/blk_prediction.c:59:5
	je	.LBB1_21
.Ltmp118:
.LBB1_16:                               # %for.body13.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: rshift_rnd_sf:x <- undef
	#DEBUG_VALUE: rshift_rnd_sf:a <- $eax
	.loc	0 0 5                           # ldecod_src/blk_prediction.c:0:5
	movl	(%r12,%rdi,4), %r8d
.Ltmp119:
	.loc	2 177 14 is_stmt 1              # ldecod_src/inc/ifunctions.h:177:14
	addl	%r11d, %r8d
	.loc	2 177 31 is_stmt 0              # ldecod_src/inc/ifunctions.h:177:31
	movl	%eax, %ecx
	sarl	%cl, %r8d
.Ltmp120:
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	.loc	0 60 86 is_stmt 1               # ldecod_src/blk_prediction.c:60:86
	movzwl	(%r14,%rdi,2), %ecx
	.loc	0 60 84 is_stmt 0               # ldecod_src/blk_prediction.c:60:84
	addl	%r8d, %ecx
.Ltmp121:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imax:a <- $ecx
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: imax:b <- 0
	.loc	2 49 10 is_stmt 1               # ldecod_src/inc/ifunctions.h:49:10
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
.Ltmp122:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imin:a <- $ecx
	#DEBUG_VALUE: imin:b <- $ebx
	.loc	2 44 10                         # ldecod_src/inc/ifunctions.h:44:10
	cmpl	%ebx, %ecx
	jl	.LBB1_18
.Ltmp123:
# %bb.17:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: rshift_rnd_sf:a <- $eax
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: imax:b <- 0
	#DEBUG_VALUE: imin:a <- $ecx
	#DEBUG_VALUE: imin:b <- $ebx
	.loc	2 0 10 is_stmt 0                # ldecod_src/inc/ifunctions.h:0:10
	movl	%ebx, %ecx
.Ltmp124:
.LBB1_18:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: rshift_rnd_sf:a <- $eax
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: imax:b <- 0
	#DEBUG_VALUE: imin:b <- $ebx
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	.loc	0 60 17 is_stmt 1               # ldecod_src/blk_prediction.c:60:17
	movw	%cx, (%r15,%rdi,2)
.Ltmp125:
	#DEBUG_VALUE: sample_reconstruct:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: rshift_rnd_sf:x <- undef
	.loc	0 0 17 is_stmt 0                # ldecod_src/blk_prediction.c:0:17
	movl	4(%r12,%rdi,4), %r8d
.Ltmp126:
	.loc	2 177 14 is_stmt 1              # ldecod_src/inc/ifunctions.h:177:14
	addl	%r11d, %r8d
	.loc	2 177 31 is_stmt 0              # ldecod_src/inc/ifunctions.h:177:31
	movl	%eax, %ecx
	sarl	%cl, %r8d
.Ltmp127:
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	.loc	0 60 86 is_stmt 1               # ldecod_src/blk_prediction.c:60:86
	movzwl	2(%r14,%rdi,2), %ecx
	.loc	0 60 84 is_stmt 0               # ldecod_src/blk_prediction.c:60:84
	addl	%r8d, %ecx
.Ltmp128:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imax:a <- $ecx
	.loc	2 49 10 is_stmt 1               # ldecod_src/inc/ifunctions.h:49:10
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
.Ltmp129:
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: imin:a <- $ecx
	.loc	2 44 10                         # ldecod_src/inc/ifunctions.h:44:10
	cmpl	%ebx, %ecx
	jl	.LBB1_20
.Ltmp130:
# %bb.19:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_constu 128, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_constu 120, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:j <- [DW_OP_plus_uconst 24, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sample_reconstruct:imgOrg <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r15
	#DEBUG_VALUE: sample_reconstruct:imgPred <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 4, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r14
	#DEBUG_VALUE: sample_reconstruct:m7 <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 8, DW_OP_mul, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdi, $r12
	#DEBUG_VALUE: sample_reconstruct:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: rshift_rnd_sf:a <- $eax
	#DEBUG_VALUE: iClip1:x <- $ecx
	#DEBUG_VALUE: iClip1:high <- $ebx
	#DEBUG_VALUE: imax:b <- 0
	#DEBUG_VALUE: imin:a <- $ecx
	#DEBUG_VALUE: imin:b <- $ebx
	.loc	2 0 10 is_stmt 0                # ldecod_src/inc/ifunctions.h:0:10
	movl	%ebx, %ecx
	jmp	.LBB1_20
.Ltmp131:
.LBB1_22:                               # %for.end20
	#DEBUG_VALUE: sample_reconstruct:curImg <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:mpr <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: sample_reconstruct:mb_rres <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: sample_reconstruct:mb_x <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: sample_reconstruct:opix_x <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: sample_reconstruct:width <- [DW_OP_LLVM_entry_value 1] $r9d
	#DEBUG_VALUE: sample_reconstruct:height <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:max_imgpel_value <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: sample_reconstruct:dq_bits <- [DW_OP_plus_uconst 104] [$rsp+0]
	.loc	0 62 1 epilogue_begin is_stmt 1 # ldecod_src/blk_prediction.c:62:1
	addq	$32, %rsp
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
.Ltmp132:
.Lfunc_end1:
	.size	sample_reconstruct, .Lfunc_end1-sample_reconstruct
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	29                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	72                              # -56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	30                              # DW_OP_mul
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	12                              # 12
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	123                             # DW_OP_breg11
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
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	26                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	19                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	127                             # DW_OP_breg15
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
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	22                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # -128
	.byte	127                             # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	136                             # -120
	.byte	127                             # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # -112
	.byte	127                             # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
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
	.byte	1                               # Abbrev [1] 0xc:0x20f DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x33:0x8 DW_TAG_typedef
	.long	59                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x3b:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x3f:0x7a DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x4a:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x53:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5c:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	528                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x65:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6e:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x77:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x80:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	56
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8b:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x94:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9d:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xa6:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	533                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xaf:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb9:0x19 DW_TAG_subprogram
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	210                             # DW_AT_type
                                        # DW_AT_inline
	.byte	9                               # Abbrev [9] 0xc1:0x8 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc9:0x8 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xd2:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xd6:0x19 DW_TAG_subprogram
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	210                             # DW_AT_type
                                        # DW_AT_inline
	.byte	9                               # Abbrev [9] 0xde:0x8 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xe6:0x8 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xef:0x19 DW_TAG_subprogram
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	210                             # DW_AT_type
                                        # DW_AT_inline
	.byte	9                               # Abbrev [9] 0xf7:0x8 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xff:0x8 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x108:0x19 DW_TAG_subprogram
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	210                             # DW_AT_type
                                        # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x110:0x8 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x118:0x8 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x121:0xe5 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x12c:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x135:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x13e:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	528                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x147:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x150:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x159:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x162:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\330"
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x16e:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x17a:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\350"
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x186:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x18f:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x198:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a1:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	533                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1aa:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1b3:0x10 DW_TAG_inlined_subroutine
	.long	185                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x1bc:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	201                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1c3:0x42 DW_TAG_inlined_subroutine
	.long	239                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x1cc:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	247                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1d2:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	255                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x1d8:0x16 DW_TAG_inlined_subroutine
	.long	214                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	192                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x1e1:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	222                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1e7:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	230                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1ee:0x16 DW_TAG_inlined_subroutine
	.long	264                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	193                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x1f7:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	272                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1fd:0x6 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.long	280                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x206:0x5 DW_TAG_pointer_type
	.long	523                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x20b:0x5 DW_TAG_pointer_type
	.long	43                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x210:0x5 DW_TAG_pointer_type
	.long	533                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x215:0x5 DW_TAG_pointer_type
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	128                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/blk_prediction.c"   # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=133
.Linfo_string3:
	.asciz	"unsigned short"                # string offset=167
.Linfo_string4:
	.asciz	"uint16"                        # string offset=182
.Linfo_string5:
	.asciz	"imgpel"                        # string offset=189
.Linfo_string6:
	.asciz	"rshift_rnd_sf"                 # string offset=196
.Linfo_string7:
	.asciz	"int"                           # string offset=210
.Linfo_string8:
	.asciz	"x"                             # string offset=214
.Linfo_string9:
	.asciz	"a"                             # string offset=216
.Linfo_string10:
	.asciz	"imax"                          # string offset=218
.Linfo_string11:
	.asciz	"b"                             # string offset=223
.Linfo_string12:
	.asciz	"iClip1"                        # string offset=225
.Linfo_string13:
	.asciz	"high"                          # string offset=232
.Linfo_string14:
	.asciz	"imin"                          # string offset=237
.Linfo_string15:
	.asciz	"compute_residue"               # string offset=242
.Linfo_string16:
	.asciz	"sample_reconstruct"            # string offset=258
.Linfo_string17:
	.asciz	"curImg"                        # string offset=277
.Linfo_string18:
	.asciz	"mpr"                           # string offset=284
.Linfo_string19:
	.asciz	"mb_rres"                       # string offset=288
.Linfo_string20:
	.asciz	"mb_x"                          # string offset=296
.Linfo_string21:
	.asciz	"opix_x"                        # string offset=301
.Linfo_string22:
	.asciz	"width"                         # string offset=308
.Linfo_string23:
	.asciz	"height"                        # string offset=314
.Linfo_string24:
	.asciz	"j"                             # string offset=321
.Linfo_string25:
	.asciz	"imgOrg"                        # string offset=323
.Linfo_string26:
	.asciz	"imgPred"                       # string offset=330
.Linfo_string27:
	.asciz	"m7"                            # string offset=338
.Linfo_string28:
	.asciz	"i"                             # string offset=341
.Linfo_string29:
	.asciz	"max_imgpel_value"              # string offset=343
.Linfo_string30:
	.asciz	"dq_bits"                       # string offset=360
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
