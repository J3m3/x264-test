	.text
	.file	"rectangle.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/common/rectangle.c" md5 0x154c58775c5a1df58d61fff843eb534a
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "x264_src/common" "common.h" md5 0x5afac7bf2f5673f1628c455d7d320ad7
	.globl	x264_macroblock_cache_mv_4_4    # -- Begin function x264_macroblock_cache_mv_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_4_4,@function
x264_macroblock_cache_mv_4_4:           # @x264_macroblock_cache_mv_4_4
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_4_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_4_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 16
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	.file	4 "x264_src/common" "rectangle.h" md5 0xd042158b8d3023ac6d42be3fb9b0d384
	.loc	4 27 19 prologue_end            # x264_src/common/rectangle.h:27:19
	movl	%esi, %eax
	.loc	4 27 22 is_stmt 0               # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp0:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	.loc	4 81 32 is_stmt 1               # x264_src/common/rectangle.h:81:32
	movq	%rcx, (%rdi)
	.loc	4 82 32                         # x264_src/common/rectangle.h:82:32
	movq	%rcx, 8(%rdi)
	.loc	4 83 32                         # x264_src/common/rectangle.h:83:32
	movq	%rcx, 32(%rdi)
	.loc	4 84 32                         # x264_src/common/rectangle.h:84:32
	movq	%rcx, 40(%rdi)
.Ltmp1:
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	4 81 32                         # x264_src/common/rectangle.h:81:32
	movq	%rcx, 64(%rdi)
	.loc	4 82 32                         # x264_src/common/rectangle.h:82:32
	movq	%rcx, 72(%rdi)
	.loc	4 83 32                         # x264_src/common/rectangle.h:83:32
	movq	%rcx, 96(%rdi)
	.loc	4 84 32                         # x264_src/common/rectangle.h:84:32
	movq	%rcx, 104(%rdi)
.Ltmp2:
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 0
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- [DW_OP_plus_uconst 64, DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp3:
.Lfunc_end0:
	.size	x264_macroblock_cache_mv_4_4, .Lfunc_end0-x264_macroblock_cache_mv_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_4    # -- Begin function x264_macroblock_cache_mv_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_4,@function
x264_macroblock_cache_mv_2_4:           # @x264_macroblock_cache_mv_2_4
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 8
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	.loc	4 27 19 prologue_end            # x264_src/common/rectangle.h:27:19
	movl	%esi, %eax
	.loc	4 27 22 is_stmt 0               # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp4:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	.loc	4 52 26 is_stmt 1               # x264_src/common/rectangle.h:52:26
	movq	%rcx, (%rdi)
	.loc	4 54 26                         # x264_src/common/rectangle.h:54:26
	movq	%rcx, 32(%rdi)
	.loc	4 56 26                         # x264_src/common/rectangle.h:56:26
	movq	%rcx, 64(%rdi)
	.loc	4 57 26                         # x264_src/common/rectangle.h:57:26
	movq	%rcx, 96(%rdi)
.Ltmp5:
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp6:
.Lfunc_end1:
	.size	x264_macroblock_cache_mv_2_4, .Lfunc_end1-x264_macroblock_cache_mv_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_4_2    # -- Begin function x264_macroblock_cache_mv_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_4_2,@function
x264_macroblock_cache_mv_4_2:           # @x264_macroblock_cache_mv_4_2
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_4_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_4_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 16
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	.loc	4 27 19 prologue_end            # x264_src/common/rectangle.h:27:19
	movl	%esi, %eax
	.loc	4 27 22 is_stmt 0               # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp7:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	.loc	4 81 32 is_stmt 1               # x264_src/common/rectangle.h:81:32
	movq	%rcx, (%rdi)
	.loc	4 82 32                         # x264_src/common/rectangle.h:82:32
	movq	%rcx, 8(%rdi)
	.loc	4 83 32                         # x264_src/common/rectangle.h:83:32
	movq	%rcx, 32(%rdi)
	.loc	4 84 32                         # x264_src/common/rectangle.h:84:32
	movq	%rcx, 40(%rdi)
.Ltmp8:
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 0
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- [DW_OP_plus_uconst 64, DW_OP_stack_value] $rdi
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp9:
.Lfunc_end2:
	.size	x264_macroblock_cache_mv_4_2, .Lfunc_end2-x264_macroblock_cache_mv_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_2    # -- Begin function x264_macroblock_cache_mv_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_2,@function
x264_macroblock_cache_mv_2_2:           # @x264_macroblock_cache_mv_2_2
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 8
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	.loc	4 27 19 prologue_end            # x264_src/common/rectangle.h:27:19
	movl	%esi, %eax
	.loc	4 27 22 is_stmt 0               # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp10:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	.loc	4 52 26 is_stmt 1               # x264_src/common/rectangle.h:52:26
	movq	%rcx, (%rdi)
	.loc	4 54 26                         # x264_src/common/rectangle.h:54:26
	movq	%rcx, 32(%rdi)
.Ltmp11:
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp12:
.Lfunc_end3:
	.size	x264_macroblock_cache_mv_2_2, .Lfunc_end3-x264_macroblock_cache_mv_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_1    # -- Begin function x264_macroblock_cache_mv_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_1,@function
x264_macroblock_cache_mv_2_1:           # @x264_macroblock_cache_mv_2_1
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_1:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_2_1:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 8
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	.loc	4 27 19 prologue_end            # x264_src/common/rectangle.h:27:19
	movl	%esi, %eax
	.loc	4 27 22 is_stmt 0               # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp13:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	.loc	4 52 26 is_stmt 1               # x264_src/common/rectangle.h:52:26
	movq	%rcx, (%rdi)
.Ltmp14:
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp15:
.Lfunc_end4:
	.size	x264_macroblock_cache_mv_2_1, .Lfunc_end4-x264_macroblock_cache_mv_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_1_2    # -- Begin function x264_macroblock_cache_mv_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_1_2,@function
x264_macroblock_cache_mv_1_2:           # @x264_macroblock_cache_mv_1_2
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_1_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_1_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $esi
	.loc	4 41 22 prologue_end            # x264_src/common/rectangle.h:41:22
	movl	%esi, (%rdi)
	.loc	4 43 22                         # x264_src/common/rectangle.h:43:22
	movl	%esi, 32(%rdi)
.Ltmp16:
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp17:
.Lfunc_end5:
	.size	x264_macroblock_cache_mv_1_2, .Lfunc_end5-x264_macroblock_cache_mv_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_1_1    # -- Begin function x264_macroblock_cache_mv_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_1_1,@function
x264_macroblock_cache_mv_1_1:           # @x264_macroblock_cache_mv_1_1
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mv_1_1:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mv_1_1:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 32
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $esi
	.loc	4 41 22 prologue_end            # x264_src/common/rectangle.h:41:22
	movl	%esi, (%rdi)
.Ltmp18:
	.loc	0 51 1                          # x264_src/common/rectangle.c:51:1
	retq
.Ltmp19:
.Lfunc_end6:
	.size	x264_macroblock_cache_mv_1_1, .Lfunc_end6-x264_macroblock_cache_mv_1_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_4_4   # -- Begin function x264_macroblock_cache_mvd_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_4_4,@function
x264_macroblock_cache_mvd_4_4:          # @x264_macroblock_cache_mvd_4_4
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_4_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_4_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 8
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
.Ltmp20:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	.loc	4 27 22                         # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp21:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	.loc	4 52 26                         # x264_src/common/rectangle.h:52:26
	movq	%rcx, (%rdi)
	.loc	4 54 26                         # x264_src/common/rectangle.h:54:26
	movq	%rcx, 16(%rdi)
	.loc	4 56 26                         # x264_src/common/rectangle.h:56:26
	movq	%rcx, 32(%rdi)
	.loc	4 57 26                         # x264_src/common/rectangle.h:57:26
	movq	%rcx, 48(%rdi)
.Ltmp22:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp23:
.Lfunc_end7:
	.size	x264_macroblock_cache_mvd_4_4, .Lfunc_end7-x264_macroblock_cache_mvd_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_4   # -- Begin function x264_macroblock_cache_mvd_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_4,@function
x264_macroblock_cache_mvd_2_4:          # @x264_macroblock_cache_mvd_2_4
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
.Ltmp24:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	.loc	4 41 22                         # x264_src/common/rectangle.h:41:22
	movl	%eax, (%rdi)
	.loc	4 43 22                         # x264_src/common/rectangle.h:43:22
	movl	%eax, 16(%rdi)
	.loc	4 45 22                         # x264_src/common/rectangle.h:45:22
	movl	%eax, 32(%rdi)
	.loc	4 46 22                         # x264_src/common/rectangle.h:46:22
	movl	%eax, 48(%rdi)
.Ltmp25:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp26:
.Lfunc_end8:
	.size	x264_macroblock_cache_mvd_2_4, .Lfunc_end8-x264_macroblock_cache_mvd_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_4_2   # -- Begin function x264_macroblock_cache_mvd_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_4_2,@function
x264_macroblock_cache_mvd_4_2:          # @x264_macroblock_cache_mvd_4_2
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_4_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_4_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 8
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
.Ltmp27:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	.loc	4 27 22                         # x264_src/common/rectangle.h:27:22
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
.Ltmp28:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- $rcx
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	.loc	4 52 26                         # x264_src/common/rectangle.h:52:26
	movq	%rcx, (%rdi)
	.loc	4 54 26                         # x264_src/common/rectangle.h:54:26
	movq	%rcx, 16(%rdi)
.Ltmp29:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp30:
.Lfunc_end9:
	.size	x264_macroblock_cache_mvd_4_2, .Lfunc_end9-x264_macroblock_cache_mvd_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_2   # -- Begin function x264_macroblock_cache_mvd_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_2,@function
x264_macroblock_cache_mvd_2_2:          # @x264_macroblock_cache_mvd_2_2
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
.Ltmp31:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	.loc	4 41 22                         # x264_src/common/rectangle.h:41:22
	movl	%eax, (%rdi)
	.loc	4 43 22                         # x264_src/common/rectangle.h:43:22
	movl	%eax, 16(%rdi)
.Ltmp32:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp33:
.Lfunc_end10:
	.size	x264_macroblock_cache_mvd_2_2, .Lfunc_end10-x264_macroblock_cache_mvd_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_1   # -- Begin function x264_macroblock_cache_mvd_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_1,@function
x264_macroblock_cache_mvd_2_1:          # @x264_macroblock_cache_mvd_2_1
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_1:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_2_1:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
.Ltmp34:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	.loc	4 41 22                         # x264_src/common/rectangle.h:41:22
	movl	%eax, (%rdi)
.Ltmp35:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp36:
.Lfunc_end11:
	.size	x264_macroblock_cache_mvd_2_1, .Lfunc_end11-x264_macroblock_cache_mvd_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_1_2   # -- Begin function x264_macroblock_cache_mvd_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_1_2,@function
x264_macroblock_cache_mvd_1_2:          # @x264_macroblock_cache_mvd_1_2
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_1_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_1_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- $si
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_stack_value] 65537, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] 65537, $esi
	.loc	4 32 22 prologue_end            # x264_src/common/rectangle.h:32:22
	movw	%si, (%rdi)
	.loc	4 34 22                         # x264_src/common/rectangle.h:34:22
	movw	%si, 16(%rdi)
.Ltmp37:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp38:
.Lfunc_end12:
	.size	x264_macroblock_cache_mvd_1_2, .Lfunc_end12-x264_macroblock_cache_mvd_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_1_1   # -- Begin function x264_macroblock_cache_mvd_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_1_1,@function
x264_macroblock_cache_mvd_1_1:          # @x264_macroblock_cache_mvd_1_1
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_mvd_1_1:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_mvd_1_1:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 16
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- $si
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_stack_value] 65537, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] 65537, $esi
	.loc	4 32 22 prologue_end            # x264_src/common/rectangle.h:32:22
	movw	%si, (%rdi)
.Ltmp39:
	.loc	0 52 1                          # x264_src/common/rectangle.c:52:1
	retq
.Ltmp40:
.Lfunc_end13:
	.size	x264_macroblock_cache_mvd_1_1, .Lfunc_end13-x264_macroblock_cache_mvd_1_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_4_4   # -- Begin function x264_macroblock_cache_ref_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_4_4,@function
x264_macroblock_cache_ref_4_4:          # @x264_macroblock_cache_ref_4_4
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_ref_4_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_ref_4_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	imull	$16843009, %esi, %eax           # imm = 0x1010101
.Ltmp41:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 8
	.loc	4 41 22                         # x264_src/common/rectangle.h:41:22
	movl	%eax, (%rdi)
	.loc	4 43 22                         # x264_src/common/rectangle.h:43:22
	movl	%eax, 8(%rdi)
	.loc	4 45 22                         # x264_src/common/rectangle.h:45:22
	movl	%eax, 16(%rdi)
	.loc	4 46 22                         # x264_src/common/rectangle.h:46:22
	movl	%eax, 24(%rdi)
.Ltmp42:
	.loc	0 53 1                          # x264_src/common/rectangle.c:53:1
	retq
.Ltmp43:
.Lfunc_end14:
	.size	x264_macroblock_cache_ref_4_4, .Lfunc_end14-x264_macroblock_cache_ref_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_4   # -- Begin function x264_macroblock_cache_ref_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_4,@function
x264_macroblock_cache_ref_2_4:          # @x264_macroblock_cache_ref_2_4
.Lfunc_begin15:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_4:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_4:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	.loc	4 25 19 prologue_end            # x264_src/common/rectangle.h:25:19
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
.Ltmp44:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- $ax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 8
	.loc	4 32 22                         # x264_src/common/rectangle.h:32:22
	movw	%ax, (%rdi)
	.loc	4 34 22                         # x264_src/common/rectangle.h:34:22
	movw	%ax, 8(%rdi)
	.loc	4 36 22                         # x264_src/common/rectangle.h:36:22
	movw	%ax, 16(%rdi)
	.loc	4 37 22                         # x264_src/common/rectangle.h:37:22
	movw	%ax, 24(%rdi)
.Ltmp45:
	.loc	0 53 1                          # x264_src/common/rectangle.c:53:1
	retq
.Ltmp46:
.Lfunc_end15:
	.size	x264_macroblock_cache_ref_2_4, .Lfunc_end15-x264_macroblock_cache_ref_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_4_2   # -- Begin function x264_macroblock_cache_ref_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_4_2,@function
x264_macroblock_cache_ref_4_2:          # @x264_macroblock_cache_ref_4_2
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_ref_4_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_ref_4_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 4
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- [DW_OP_constu 257, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $esi
	.loc	4 26 19 prologue_end            # x264_src/common/rectangle.h:26:19
	imull	$16843009, %esi, %eax           # imm = 0x1010101
.Ltmp47:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] $eax
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 8
	.loc	4 41 22                         # x264_src/common/rectangle.h:41:22
	movl	%eax, (%rdi)
	.loc	4 43 22                         # x264_src/common/rectangle.h:43:22
	movl	%eax, 8(%rdi)
.Ltmp48:
	.loc	0 53 1                          # x264_src/common/rectangle.c:53:1
	retq
.Ltmp49:
.Lfunc_end16:
	.size	x264_macroblock_cache_ref_4_2, .Lfunc_end16-x264_macroblock_cache_ref_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_2   # -- Begin function x264_macroblock_cache_ref_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_2,@function
x264_macroblock_cache_ref_2_2:          # @x264_macroblock_cache_ref_2_2
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_2:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_2:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	.loc	4 25 19 prologue_end            # x264_src/common/rectangle.h:25:19
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
.Ltmp50:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- $ax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 8
	.loc	4 32 22                         # x264_src/common/rectangle.h:32:22
	movw	%ax, (%rdi)
	.loc	4 34 22                         # x264_src/common/rectangle.h:34:22
	movw	%ax, 8(%rdi)
.Ltmp51:
	.loc	0 53 1                          # x264_src/common/rectangle.c:53:1
	retq
.Ltmp52:
.Lfunc_end17:
	.size	x264_macroblock_cache_ref_2_2, .Lfunc_end17-x264_macroblock_cache_ref_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_1   # -- Begin function x264_macroblock_cache_ref_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_1,@function
x264_macroblock_cache_ref_2_1:          # @x264_macroblock_cache_ref_2_1
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_1:target <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_ref_2_1:val <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:dst <- $rdi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v <- $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:w <- 2
	#DEBUG_VALUE: x264_macroblock_cache_rect:h <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 1
	#DEBUG_VALUE: x264_macroblock_cache_rect:d <- $rdi
	.loc	4 25 19 prologue_end            # x264_src/common/rectangle.h:25:19
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
.Ltmp53:
	#DEBUG_VALUE: x264_macroblock_cache_rect:v2 <- $ax
	#DEBUG_VALUE: x264_macroblock_cache_rect:v4 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:v8 <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_constu 4294967297, DW_OP_mul, DW_OP_stack_value] 16843009, $esi
	#DEBUG_VALUE: x264_macroblock_cache_rect:s <- 8
	.loc	4 32 22                         # x264_src/common/rectangle.h:32:22
	movw	%ax, (%rdi)
.Ltmp54:
	.loc	0 53 1                          # x264_src/common/rectangle.c:53:1
	retq
.Ltmp55:
.Lfunc_end18:
	.size	x264_macroblock_cache_ref_2_1, .Lfunc_end18-x264_macroblock_cache_ref_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_1_2   # -- Begin function x264_macroblock_cache_ref_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_1_2,@function
x264_macroblock_cache_ref_1_2:          # @x264_macroblock_cache_ref_1_2
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 53 1 prologue_end             # x264_src/common/rectangle.c:53:1
	retq
.Ltmp56:
.Lfunc_end19:
	.size	x264_macroblock_cache_ref_1_2, .Lfunc_end19-x264_macroblock_cache_ref_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_1_1   # -- Begin function x264_macroblock_cache_ref_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_1_1,@function
x264_macroblock_cache_ref_1_1:          # @x264_macroblock_cache_ref_1_1
.Lfunc_begin20:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 53 1 prologue_end             # x264_src/common/rectangle.c:53:1
	retq
.Ltmp57:
.Lfunc_end20:
	.size	x264_macroblock_cache_ref_1_1, .Lfunc_end20-x264_macroblock_cache_ref_1_1
	.cfi_endproc
                                        # -- End function
	.type	x264_cache_mv_func_table,@object # @x264_cache_mv_func_table
	.data
	.globl	x264_cache_mv_func_table
	.p2align	4, 0x0
x264_cache_mv_func_table:
	.quad	x264_macroblock_cache_mv_1_1
	.quad	x264_macroblock_cache_mv_2_1
	.quad	x264_macroblock_cache_mv_1_2
	.quad	x264_macroblock_cache_mv_2_2
	.quad	0
	.quad	x264_macroblock_cache_mv_4_2
	.quad	0
	.quad	x264_macroblock_cache_mv_2_4
	.quad	0
	.quad	x264_macroblock_cache_mv_4_4
	.size	x264_cache_mv_func_table, 80

	.type	x264_cache_mvd_func_table,@object # @x264_cache_mvd_func_table
	.globl	x264_cache_mvd_func_table
	.p2align	4, 0x0
x264_cache_mvd_func_table:
	.quad	x264_macroblock_cache_mvd_1_1
	.quad	x264_macroblock_cache_mvd_2_1
	.quad	x264_macroblock_cache_mvd_1_2
	.quad	x264_macroblock_cache_mvd_2_2
	.quad	0
	.quad	x264_macroblock_cache_mvd_4_2
	.quad	0
	.quad	x264_macroblock_cache_mvd_2_4
	.quad	0
	.quad	x264_macroblock_cache_mvd_4_4
	.size	x264_cache_mvd_func_table, 80

	.type	x264_cache_ref_func_table,@object # @x264_cache_ref_func_table
	.globl	x264_cache_ref_func_table
	.p2align	4, 0x0
x264_cache_ref_func_table:
	.quad	x264_macroblock_cache_ref_1_1
	.quad	x264_macroblock_cache_ref_2_1
	.quad	x264_macroblock_cache_ref_1_2
	.quad	x264_macroblock_cache_ref_2_2
	.quad	0
	.quad	x264_macroblock_cache_ref_4_2
	.quad	0
	.quad	x264_macroblock_cache_ref_2_4
	.quad	0
	.quad	x264_macroblock_cache_ref_4_4
	.size	x264_cache_ref_func_table, 80

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	47                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	192                             # 64
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	27                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	27                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	27                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	27                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	16                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	33                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	27                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	16                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	33                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	16                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	33                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	129                             # 16843009
	.byte	130                             # 
	.byte	132                             # 
	.byte	8                               # 
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	30                              # DW_OP_mul
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	129                             # 4294967297
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	16                              # 
	.byte	30                              # DW_OP_mul
	.byte	159                             # DW_OP_stack_value
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
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
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
	.byte	3                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	1                               # Abbrev [1] 0xc:0xb94 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	38                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3e:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x43:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4a:0x5 DW_TAG_pointer_type
	.long	79                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4f:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x50:0x5 DW_TAG_formal_parameter
	.long	91                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x55:0x5 DW_TAG_formal_parameter
	.long	92                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5b:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x5c:0x8 DW_TAG_typedef
	.long	100                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x64:0x8 DW_TAG_typedef
	.long	108                             # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x6c:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x70:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x74:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x7f:0xb DW_TAG_variable
	.byte	9                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	10                              # Abbrev [10] 0x8a:0x8 DW_TAG_typedef
	.long	146                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x92:0x8 DW_TAG_typedef
	.long	154                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x9a:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x9e:0x5 DW_TAG_pointer_type
	.long	163                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa3:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xab:0x17 DW_TAG_union_type
	.byte	2                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xaf:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	194                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb8:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	214                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc2:0x8 DW_TAG_typedef
	.long	202                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xca:0x8 DW_TAG_typedef
	.long	210                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xd2:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xd6:0xc DW_TAG_array_type
	.long	226                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xdb:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xe2:0x8 DW_TAG_typedef
	.long	234                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xea:0x8 DW_TAG_typedef
	.long	242                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xf2:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xf6:0x5 DW_TAG_pointer_type
	.long	251                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xfb:0x8 DW_TAG_typedef
	.long	259                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x103:0x20 DW_TAG_union_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x107:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	92                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x110:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	291                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x119:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x123:0xc DW_TAG_array_type
	.long	194                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x128:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x12f:0xc DW_TAG_array_type
	.long	226                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x134:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13b:0x5 DW_TAG_pointer_type
	.long	320                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x140:0x8 DW_TAG_typedef
	.long	328                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x148:0x29 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x14c:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x155:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	369                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x15e:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x167:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x171:0xc DW_TAG_array_type
	.long	92                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x176:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x17d:0xc DW_TAG_array_type
	.long	194                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x182:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x189:0xc DW_TAG_array_type
	.long	226                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x18e:0x6 DW_TAG_subrange_type
	.long	112                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x195:0x4d DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x199:0x8 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1a1:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1a9:0x8 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1b1:0x8 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1b9:0x8 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1c1:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	486                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1c9:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	194                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1d1:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1d9:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1e2:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x1e6:0x5 DW_TAG_pointer_type
	.long	226                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1eb:0x7f DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x1f6:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x200:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x20a:0x5f DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp2-.Lfunc_begin0            # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x217:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x21e:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x224:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x22a:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x230:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x237:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x23d:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x25b:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x262:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x26a:0x80 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x275:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x27f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x289:0x60 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp5-.Lfunc_begin1            # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x296:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x29d:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x2a3:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x2a9:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x2af:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2b6:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2bd:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2db:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x2e2:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2ea:0x7f DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x2f5:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2ff:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x309:0x5f DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp8-.Lfunc_begin2            # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x316:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x31d:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x323:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x329:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x32f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x336:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x33c:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x35a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x361:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x369:0x80 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x374:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x37e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x388:0x60 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp11-.Lfunc_begin3           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x395:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x39c:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x3a2:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x3a8:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x3ae:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3b5:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3bc:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3da:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x3e1:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x3e9:0x80 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x3f4:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3fe:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x408:0x60 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp14-.Lfunc_begin4           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x415:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x41c:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x422:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x428:0x6 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x42e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x435:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x43c:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x45a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x461:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x469:0x9b DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x474:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x47e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x488:0x7b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp16-.Lfunc_begin5           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x495:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x49c:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x4a2:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x4a8:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_const_value
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x4ae:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4b5:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4bc:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4da:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4e1:0x21 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	16
	.ascii	"\201\200\200\200\020"
	.byte	30
	.byte	159
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x504:0x9b DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x50f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x519:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x523:0x7b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp18-.Lfunc_begin6           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x530:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x537:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x53d:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x543:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_const_value
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x549:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x550:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x557:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x575:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	465                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x57c:0x21 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	16
	.ascii	"\201\200\200\200\020"
	.byte	30
	.byte	159
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x59f:0x7b DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x5aa:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5b4:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x5be:0x5b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp22-.Lfunc_begin7           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x5cb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x5d2:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x5d8:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x5de:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x5e4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x5eb:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x5f2:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x60c:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x612:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x61a:0x7b DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x625:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x62f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x639:0x5b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp25-.Lfunc_begin8           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x646:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x64d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x653:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x659:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x65f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x666:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x66d:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x687:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x68d:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x695:0x7b DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x6a0:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x6aa:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x6b4:0x5b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp29-.Lfunc_begin9           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x6c1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x6c8:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x6ce:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x6d4:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x6da:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x6e1:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x6e8:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x702:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x708:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x710:0x7b DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x71b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x725:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x72f:0x5b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp32-.Lfunc_begin10          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x73c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x743:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x749:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x74f:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x755:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x75c:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x763:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x77d:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x783:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x78b:0x7b DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x796:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7a0:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7aa:0x5b DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp35-.Lfunc_begin11          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x7b7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x7be:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x7c4:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x7ca:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x7d0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x7d7:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x7de:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x7f8:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x7fe:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x806:0x97 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x811:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x81b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x825:0x77 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp37-.Lfunc_begin12          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x832:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x839:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x83f:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x845:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x84b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x852:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x859:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x860:0x15 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	16
	.ascii	"\201\200\004"
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	30
	.byte	159
	.long	465                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x875:0x26 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	16
	.ascii	"\201\200\004"
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	16
	.ascii	"\201\200\200\200\020"
	.byte	30
	.byte	159
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x89d:0x97 DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x8a8:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8b2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8bc:0x77 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp39-.Lfunc_begin13          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x8c9:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x8d0:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x8d6:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x8dc:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x8e2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x8e9:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x8f0:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x8f7:0x15 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	16
	.ascii	"\201\200\004"
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	30
	.byte	159
	.long	465                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x90c:0x26 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	16
	.ascii	"\201\200\004"
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	16
	.ascii	"\201\200\200\200\020"
	.byte	30
	.byte	159
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x934:0x7f DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x93f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x949:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x953:0x5f DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp42-.Lfunc_begin14          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x960:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x967:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x96d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x973:0x6 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x979:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x980:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x987:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x9a5:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x9ab:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x9b3:0x67 DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x9be:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9c8:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x9d2:0x47 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp45-.Lfunc_begin15          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x9df:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x9e6:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x9ec:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x9f2:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x9f8:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x9ff:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xa06:0x6 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xa0c:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xa12:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xa1a:0x7f DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0xa25:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa2f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa39:0x5f DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	19                              # DW_AT_low_pc
	.long	.Ltmp48-.Lfunc_begin16          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xa46:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xa4d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xa53:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0xa59:0x6 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa5f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xa66:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xa6d:0x1e DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	16
	.ascii	"\201\002"
	.byte	30
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xa8b:0x6 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xa91:0x6 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xa99:0x67 DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0xaa4:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xaae:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0xab8:0x47 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp51-.Lfunc_begin17          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xac5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xacc:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xad2:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0xad8:0x6 DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xade:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xae5:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xaec:0x6 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xaf2:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xaf8:0x6 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xb00:0x67 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0xb0b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb15:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb1f:0x47 DW_TAG_inlined_subroutine
	.long	405                             # DW_AT_abstract_origin
	.byte	21                              # DW_AT_low_pc
	.long	.Ltmp54-.Lfunc_begin18          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	1                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xb2c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	409                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xb33:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	417                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xb39:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	425                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0xb3f:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	433                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xb45:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	441                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xb4c:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	449                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xb53:0x6 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.long	457                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xb59:0x6 DW_TAG_variable
	.byte	45                              # DW_AT_location
	.long	465                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0xb5f:0x6 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.long	473                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xb67:0x1c DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xb72:0x8 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0xb7a:0x8 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xb83:0x1c DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xb8e:0x8 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	91                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0xb96:0x8 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	92                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	256                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/common/rectangle.c"   # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=133
.Linfo_string3:
	.asciz	"x264_cache_mv_func_table"      # string offset=167
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=192
.Linfo_string5:
	.asciz	"__uint32_t"                    # string offset=205
.Linfo_string6:
	.asciz	"uint32_t"                      # string offset=216
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=225
.Linfo_string8:
	.asciz	"x264_cache_mvd_func_table"     # string offset=245
.Linfo_string9:
	.asciz	"x264_cache_ref_func_table"     # string offset=271
.Linfo_string10:
	.asciz	"unsigned long"                 # string offset=297
.Linfo_string11:
	.asciz	"__uint64_t"                    # string offset=311
.Linfo_string12:
	.asciz	"uint64_t"                      # string offset=322
.Linfo_string13:
	.asciz	"i"                             # string offset=331
.Linfo_string14:
	.asciz	"unsigned short"                # string offset=333
.Linfo_string15:
	.asciz	"__uint16_t"                    # string offset=348
.Linfo_string16:
	.asciz	"uint16_t"                      # string offset=359
.Linfo_string17:
	.asciz	"c"                             # string offset=368
.Linfo_string18:
	.asciz	"unsigned char"                 # string offset=370
.Linfo_string19:
	.asciz	"__uint8_t"                     # string offset=384
.Linfo_string20:
	.asciz	"uint8_t"                       # string offset=394
.Linfo_string21:
	.asciz	"x264_union16_t"                # string offset=402
.Linfo_string22:
	.asciz	"b"                             # string offset=417
.Linfo_string23:
	.asciz	"x264_union32_t"                # string offset=419
.Linfo_string24:
	.asciz	"a"                             # string offset=434
.Linfo_string25:
	.asciz	"x264_union64_t"                # string offset=436
.Linfo_string26:
	.asciz	"x264_macroblock_cache_rect"    # string offset=451
.Linfo_string27:
	.asciz	"dst"                           # string offset=478
.Linfo_string28:
	.asciz	"w"                             # string offset=482
.Linfo_string29:
	.asciz	"int"                           # string offset=484
.Linfo_string30:
	.asciz	"h"                             # string offset=488
.Linfo_string31:
	.asciz	"s"                             # string offset=490
.Linfo_string32:
	.asciz	"v"                             # string offset=492
.Linfo_string33:
	.asciz	"d"                             # string offset=494
.Linfo_string34:
	.asciz	"v2"                            # string offset=496
.Linfo_string35:
	.asciz	"v4"                            # string offset=499
.Linfo_string36:
	.asciz	"v8"                            # string offset=502
.Linfo_string37:
	.asciz	"DW_ATE_unsigned_64"            # string offset=505
.Linfo_string38:
	.asciz	"DW_ATE_unsigned_16"            # string offset=524
.Linfo_string39:
	.asciz	"DW_ATE_unsigned_32"            # string offset=543
.Linfo_string40:
	.asciz	"x264_macroblock_cache_mv_4_4"  # string offset=562
.Linfo_string41:
	.asciz	"x264_macroblock_cache_mv_2_4"  # string offset=591
.Linfo_string42:
	.asciz	"x264_macroblock_cache_mv_4_2"  # string offset=620
.Linfo_string43:
	.asciz	"x264_macroblock_cache_mv_2_2"  # string offset=649
.Linfo_string44:
	.asciz	"x264_macroblock_cache_mv_2_1"  # string offset=678
.Linfo_string45:
	.asciz	"x264_macroblock_cache_mv_1_2"  # string offset=707
.Linfo_string46:
	.asciz	"x264_macroblock_cache_mv_1_1"  # string offset=736
.Linfo_string47:
	.asciz	"x264_macroblock_cache_mvd_4_4" # string offset=765
.Linfo_string48:
	.asciz	"x264_macroblock_cache_mvd_2_4" # string offset=795
.Linfo_string49:
	.asciz	"x264_macroblock_cache_mvd_4_2" # string offset=825
.Linfo_string50:
	.asciz	"x264_macroblock_cache_mvd_2_2" # string offset=855
.Linfo_string51:
	.asciz	"x264_macroblock_cache_mvd_2_1" # string offset=885
.Linfo_string52:
	.asciz	"x264_macroblock_cache_mvd_1_2" # string offset=915
.Linfo_string53:
	.asciz	"x264_macroblock_cache_mvd_1_1" # string offset=945
.Linfo_string54:
	.asciz	"x264_macroblock_cache_ref_4_4" # string offset=975
.Linfo_string55:
	.asciz	"x264_macroblock_cache_ref_2_4" # string offset=1005
.Linfo_string56:
	.asciz	"x264_macroblock_cache_ref_4_2" # string offset=1035
.Linfo_string57:
	.asciz	"x264_macroblock_cache_ref_2_2" # string offset=1065
.Linfo_string58:
	.asciz	"x264_macroblock_cache_ref_2_1" # string offset=1095
.Linfo_string59:
	.asciz	"x264_macroblock_cache_ref_1_2" # string offset=1125
.Linfo_string60:
	.asciz	"x264_macroblock_cache_ref_1_1" # string offset=1155
.Linfo_string61:
	.asciz	"target"                        # string offset=1185
.Linfo_string62:
	.asciz	"val"                           # string offset=1192
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	x264_cache_mv_func_table
	.quad	x264_cache_mvd_func_table
	.quad	x264_cache_ref_func_table
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Lfunc_begin6
	.quad	.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Lfunc_begin10
	.quad	.Lfunc_begin11
	.quad	.Lfunc_begin12
	.quad	.Lfunc_begin13
	.quad	.Lfunc_begin14
	.quad	.Lfunc_begin15
	.quad	.Lfunc_begin16
	.quad	.Lfunc_begin17
	.quad	.Lfunc_begin18
	.quad	.Lfunc_begin19
	.quad	.Lfunc_begin20
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
