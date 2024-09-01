	.text
	.file	"timecode.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/input/timecode.c" md5 0x38d56a1630a2a8343c423fb69854a920
	.file	1 "x264_src" "muxers.h" md5 0xbcea0820748b2dc47392b7f6393a96ff
	.file	2 "x264_src/input" "input.h" md5 0xf28c863d273681dfcaca9779e9fcbd53
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "x264_src" "x264.h" md5 0x0b04871e4f52d5a4d8833c501cba2584
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function open_file
.LCPI0_0:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_2:
	.quad	0x4024000000000000              # double 10
.LCPI0_5:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI0_7:
	.quad	0x3ed4f8b588e368f1              # double 5.0000000000000004E-6
.LCPI0_8:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI0_9:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_14:
	.quad	0x0000000000000000              # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_4:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI0_6:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI0_10:
	.quad	4294967295                      # 0xffffffff
	.quad	4294967295                      # 0xffffffff
.LCPI0_11:
	.quad	4841369599423283200             # 0x4330000000000000
	.quad	4841369599423283200             # 0x4330000000000000
.LCPI0_12:
	.quad	4985484787499139072             # 0x4530000000000000
	.quad	4985484787499139072             # 0x4530000000000000
.LCPI0_13:
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.p2align	4, 0x90
	.type	open_file,@function
open_file:                              # @open_file
.Lfunc_begin0:
	.loc	0 385 0                         # x264_src/input/timecode.c:385:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: open_file:psz_filename <- $rdi
	#DEBUG_VALUE: open_file:p_handle <- $rsi
	#DEBUG_VALUE: open_file:info <- $rdx
	#DEBUG_VALUE: open_file:opt <- $rcx
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
	subq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp0:
	#DEBUG_VALUE: open_file:ret <- 0
	.loc	0 388 25 prologue_end           # x264_src/input/timecode.c:388:25
	movl	$128, %edi
.Ltmp1:
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	callq	malloc@PLT
.Ltmp2:
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:info <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 389 10                        # x264_src/input/timecode.c:389:10
	testq	%rax, %rax
.Ltmp3:
	.loc	0 389 9 is_stmt 0               # x264_src/input/timecode.c:389:9
	je	.LBB0_96
.Ltmp4:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $rbx
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- 0
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movq	%rax, %rbp
	.loc	0 394 16 is_stmt 1              # x264_src/input/timecode.c:394:16
	movq	input@GOTPCREL(%rip), %rax
.Ltmp5:
	#DEBUG_VALUE: open_file:h <- $rbp
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rbp)
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	32(%rax), %xmm2
	movupd	%xmm2, 32(%rbp)
	movupd	%xmm1, 16(%rbp)
	movupd	%xmm0, (%rbp)
	.loc	0 395 19                        # x264_src/input/timecode.c:395:19
	movq	(%r14), %rdi
	.loc	0 395 17 is_stmt 0              # x264_src/input/timecode.c:395:17
	movq	%rdi, 56(%rbp)
	.loc	0 396 22 is_stmt 1              # x264_src/input/timecode.c:396:22
	callq	*8(%rax)
.Ltmp6:
	.loc	0 396 20 is_stmt 0              # x264_src/input/timecode.c:396:20
	movl	%eax, 64(%rbp)
	.loc	0 397 20 is_stmt 1              # x264_src/input/timecode.c:397:20
	movl	24(%r12), %eax
	.loc	0 397 13 is_stmt 0              # x264_src/input/timecode.c:397:13
	movl	%eax, 96(%rbp)
.Ltmp7:
	.loc	0 398 14 is_stmt 1              # x264_src/input/timecode.c:398:14
	movq	16(%r12), %rdi
	.loc	0 398 9 is_stmt 0               # x264_src/input/timecode.c:398:9
	testq	%rdi, %rdi
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
.Ltmp8:
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 398 9                         # x264_src/input/timecode.c:398:9
	je	.LBB0_4
.Ltmp10:
# %bb.2:                                # %if.then7
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- 0
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movq	%r15, %rbx
.Ltmp11:
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	.loc	0 400 63 is_stmt 1              # x264_src/input/timecode.c:400:63
	leaq	80(%rbp), %r15
	.loc	0 400 81 is_stmt 0              # x264_src/input/timecode.c:400:81
	leaq	88(%rbp), %r13
	.loc	0 400 15                        # x264_src/input/timecode.c:400:15
	movl	$.L.str.1, %esi
	movq	%r15, %rdx
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp12:
	movl	%eax, %ebp
.Ltmp13:
	#DEBUG_VALUE: open_file:ret <- $ebp
	.loc	0 401 17 is_stmt 1              # x264_src/input/timecode.c:401:17
	cmpl	$1, %eax
.Ltmp14:
	.loc	0 401 13 is_stmt 0              # x264_src/input/timecode.c:401:13
	jne	.LBB0_5
.Ltmp15:
# %bb.3:                                # %if.then10
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- $ebp
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 402 45 is_stmt 1              # x264_src/input/timecode.c:402:45
	movq	16(%r12), %rdi
	.loc	0 402 31 is_stmt 0              # x264_src/input/timecode.c:402:31
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoul@PLT
.Ltmp16:
	.loc	0 402 29                        # x264_src/input/timecode.c:402:29
	movq	%rax, (%r15)
.Ltmp17:
	.loc	0 403 29 is_stmt 1              # x264_src/input/timecode.c:403:29
	shrq	$32, %rax
	.loc	0 403 42 is_stmt 0              # x264_src/input/timecode.c:403:42
	je	.LBB0_6
	jmp	.LBB0_95
.Ltmp18:
.LBB0_4:                                # %if.end22.thread
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- 0
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:ret <- 0
	.loc	0 409 8 is_stmt 1               # x264_src/input/timecode.c:409:8
	leaq	68(%rbp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movabsq	$4294967297, %rax               # imm = 0x100000001
	.loc	0 409 26 is_stmt 0              # x264_src/input/timecode.c:409:26
	movq	%rax, 68(%rbp)
	.loc	0 410 8 is_stmt 1               # x264_src/input/timecode.c:410:8
	leaq	72(%rbp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$1, %eax
	.loc	0 411 9                         # x264_src/input/timecode.c:411:9
	jmp	.LBB0_8
.Ltmp19:
.LBB0_5:                                # %if.end14thread-pre-split
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- $ebp
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 403 16                        # x264_src/input/timecode.c:403:16
	movq	(%r15), %rax
	.loc	0 403 29 is_stmt 0              # x264_src/input/timecode.c:403:29
	shrq	$32, %rax
	.loc	0 403 42                        # x264_src/input/timecode.c:403:42
	jne	.LBB0_95
.Ltmp20:
.LBB0_6:                                # %lor.lhs.false
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- $ebp
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 403 61                        # x264_src/input/timecode.c:403:61
	cmpl	$0, 4(%r13)
.Ltmp21:
	.loc	0 403 13                        # x264_src/input/timecode.c:403:13
	jne	.LBB0_95
.Ltmp22:
# %bb.7:                                # %if.end22
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- $ebp
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:ret <- $ebp
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movq	16(%rsp), %rdx                  # 8-byte Reload
	.loc	0 409 8 is_stmt 1               # x264_src/input/timecode.c:409:8
	leaq	68(%rdx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	.loc	0 410 32                        # x264_src/input/timecode.c:410:32
	xorl	%eax, %eax
	cmpl	$2, %ebp
	setl	%al
	.loc	0 410 8 is_stmt 0               # x264_src/input/timecode.c:410:8
	leaq	72(%rdx), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	.loc	0 409 28 is_stmt 1              # x264_src/input/timecode.c:409:28
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	movq	%rdx, %rbp
.Ltmp23:
	sete	%cl
	.loc	0 409 26 is_stmt 0              # x264_src/input/timecode.c:409:26
	movl	%ecx, 68(%rdx)
	.loc	0 410 26 is_stmt 1              # x264_src/input/timecode.c:410:26
	movl	%eax, 72(%rdx)
	movq	%rbx, %r15
.Ltmp24:
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	.loc	0 0 26 is_stmt 0                # x264_src/input/timecode.c:0:26
	movq	96(%rsp), %rbx                  # 8-byte Reload
	.loc	0 411 9 is_stmt 1               # x264_src/input/timecode.c:411:9
	jne	.LBB0_9
.Ltmp25:
.LBB0_8:                                # %if.then27
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 412 33                        # x264_src/input/timecode.c:412:33
	movl	8(%rbx), %ecx
	.loc	0 412 25 is_stmt 0              # x264_src/input/timecode.c:412:25
	movq	%rcx, 80(%rbp)
.Ltmp26:
.LBB0_9:                                # %if.end30
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 413 9 is_stmt 1               # x264_src/input/timecode.c:413:9
	testl	%eax, %eax
.Ltmp27:
	.loc	0 413 9 is_stmt 0               # x264_src/input/timecode.c:413:9
	je	.LBB0_11
.Ltmp28:
# %bb.10:                               # %if.then33
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 414 25 is_stmt 1              # x264_src/input/timecode.c:414:25
	movq	$0, 88(%rbp)
.Ltmp29:
.LBB0_11:                               # %if.end35
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 415 45                        # x264_src/input/timecode.c:415:45
	movq	16(%rbp), %rax
	.loc	0 415 34 is_stmt 0              # x264_src/input/timecode.c:415:34
	movq	%rax, timecode_input+16(%rip)
	.loc	0 416 45 is_stmt 1              # x264_src/input/timecode.c:416:45
	movq	40(%rbp), %rax
	.loc	0 416 34 is_stmt 0              # x264_src/input/timecode.c:416:34
	movq	%rax, timecode_input+40(%rip)
	.loc	0 418 15 is_stmt 1              # x264_src/input/timecode.c:418:15
	movq	%rbp, (%r14)
	.loc	0 420 17                        # x264_src/input/timecode.c:420:17
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	fopen64@PLT
.Ltmp30:
	#DEBUG_VALUE: open_file:tcfile_in <- $rax
	.loc	0 421 10                        # x264_src/input/timecode.c:421:10
	testq	%rax, %rax
.Ltmp31:
	.loc	0 421 9 is_stmt 0               # x264_src/input/timecode.c:421:9
	je	.LBB0_101
.Ltmp32:
# %bb.12:                               # %if.else
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $rax
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movq	%rax, %r14
.Ltmp33:
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	leaq	108(%rsp), %rdx
.Ltmp34:
	.loc	0 112 11 is_stmt 1              # x264_src/input/timecode.c:112:11
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
.Ltmp35:
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	callq	__isoc99_fscanf@PLT
.Ltmp36:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 113 13                        # x264_src/input/timecode.c:113:13
	cmpl	$1, %eax
	.loc	0 113 18 is_stmt 0              # x264_src/input/timecode.c:113:18
	jne	.LBB0_93
.Ltmp37:
# %bb.13:                               # %lor.lhs.false.i
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 113 22                        # x264_src/input/timecode.c:113:22
	movl	108(%rsp), %eax
.Ltmp38:
	.loc	0 113 32                        # x264_src/input/timecode.c:113:32
	leal	-3(%rax), %ecx
	cmpl	$-3, %ecx
	jbe	.LBB0_93
.Ltmp39:
# %bb.14:                               # %if.end.i
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 119 14 is_stmt 1              # x264_src/input/timecode.c:119:14
	cmpl	$1, %eax
.Ltmp40:
	.loc	0 119 9 is_stmt 0               # x264_src/input/timecode.c:119:9
	jne	.LBB0_38
.Ltmp41:
# %bb.15:                               # %if.then5.i
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 123 29 is_stmt 1              # x264_src/input/timecode.c:123:29
	movl	96(%rbp), %eax
	.loc	0 123 20 is_stmt 0              # x264_src/input/timecode.c:123:20
	movl	%eax, (%rsp)
.Ltmp42:
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 126 12 is_stmt 1              # x264_src/input/timecode.c:126:12
	movq	%rbp, %rax
	addq	$112, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	.loc	0 126 23 is_stmt 0              # x264_src/input/timecode.c:126:23
	movq	$0, 112(%rbp)
.Ltmp43:
	#DEBUG_VALUE: parse_tcfile:num <- 2
	.loc	0 0 23                          # x264_src/input/timecode.c:0:23
	leaq	128(%rsp), %rdi
.Ltmp44:
	.loc	0 127 23 is_stmt 1              # x264_src/input/timecode.c:127:23
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp45:
	.loc	0 0 23 is_stmt 0                # x264_src/input/timecode.c:0:23
	movl	$2, %r12d
.Ltmp46:
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 127 62                        # x264_src/input/timecode.c:127:62
	testq	%rax, %rax
.Ltmp47:
	.loc	0 127 9                         # x264_src/input/timecode.c:127:9
	je	.LBB0_20
.Ltmp48:
# %bb.16:                               # %for.body.i.preheader
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- 2
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movabsq	$34359747584, %rbx              # imm = 0x800002400
	leaq	128(%rsp), %r15
.Ltmp49:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.p2align	4, 0x90
.LBB0_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	.loc	0 129 17 is_stmt 1              # x264_src/input/timecode.c:129:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 129 32 is_stmt 0              # x264_src/input/timecode.c:129:32
	ja	.LBB0_98
.Ltmp50:
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	btq	%rax, %rbx
	jae	.LBB0_98
.Ltmp51:
# %bb.19:                               # %for.inc.i
                                        #   in Loop: Header=BB0_17 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 127 74 is_stmt 1              # x264_src/input/timecode.c:127:74
	incl	%r12d
.Ltmp52:
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	.loc	0 127 23 is_stmt 0              # x264_src/input/timecode.c:127:23
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp53:
	.loc	0 127 62                        # x264_src/input/timecode.c:127:62
	testq	%rax, %rax
.Ltmp54:
	.loc	0 127 9                         # x264_src/input/timecode.c:127:9
	jne	.LBB0_17
.Ltmp55:
.LBB0_20:                               # %for.end.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movq	24(%rsp), %rax                  # 8-byte Reload
.Ltmp56:
	.loc	0 138 16 is_stmt 1              # x264_src/input/timecode.c:138:16
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	.loc	0 138 27 is_stmt 0              # x264_src/input/timecode.c:138:27
	ucomisd	%xmm0, %xmm1
.Ltmp57:
	.loc	0 138 13                        # x264_src/input/timecode.c:138:13
	jae	.LBB0_175
.Ltmp58:
# %bb.21:                               # %if.end43.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 144 20 is_stmt 1              # x264_src/input/timecode.c:144:20
	movq	%r14, %rdi
	callq	ftell@PLT
.Ltmp59:
	.loc	0 0 20 is_stmt 0                # x264_src/input/timecode.c:0:20
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.Ltmp60:
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 145 27 is_stmt 1              # x264_src/input/timecode.c:145:27
	movl	$0, 100(%rbp)
.Ltmp61:
	#DEBUG_VALUE: parse_tcfile:seq_num <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_end <- -1
	#DEBUG_VALUE: prev_start <- -1
	.loc	0 0 27 is_stmt 0                # x264_src/input/timecode.c:0:27
	leaq	128(%rsp), %rdi
.Ltmp62:
	.loc	0 146 27 is_stmt 1              # x264_src/input/timecode.c:146:27
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp63:
	.loc	0 146 66 is_stmt 0              # x264_src/input/timecode.c:146:66
	testq	%rax, %rax
.Ltmp64:
	.loc	0 146 9                         # x264_src/input/timecode.c:146:9
	je	.LBB0_63
.Ltmp65:
# %bb.22:                               # %for.body50.i.preheader
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- 0
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movl	$-1, %r15d
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	movl	$-1, %ebx
	jmp	.LBB0_25
.Ltmp66:
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	movl	%ebx, %ebp
.Ltmp67:
	#DEBUG_VALUE: prev_start <- $ebp
	movl	%r15d, %r13d
.Ltmp68:
	#DEBUG_VALUE: prev_end <- $r13d
.LBB0_24:                               # %for.inc105.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebp
	#DEBUG_VALUE: prev_end <- $r13d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: prev_end <- $r13d
	#DEBUG_VALUE: prev_start <- $ebp
	.loc	0 146 78                        # x264_src/input/timecode.c:146:78
	incl	%r12d
.Ltmp69:
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	.loc	0 146 27                        # x264_src/input/timecode.c:146:27
	leaq	128(%rsp), %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp70:
	.loc	0 0 27                          # x264_src/input/timecode.c:0:27
	movl	%r13d, %r15d
.Ltmp71:
	#DEBUG_VALUE: prev_end <- $r15d
	movl	%ebp, %ebx
.Ltmp72:
	#DEBUG_VALUE: prev_start <- $ebx
	.loc	0 146 66                        # x264_src/input/timecode.c:146:66
	testq	%rax, %rax
	movq	16(%rsp), %rbp                  # 8-byte Reload
.Ltmp73:
	.loc	0 146 9                         # x264_src/input/timecode.c:146:9
	je	.LBB0_64
.Ltmp74:
.LBB0_25:                               # %for.body50.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: prev_start <- $ebx
	.loc	0 148 17 is_stmt 1              # x264_src/input/timecode.c:148:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 148 32 is_stmt 0              # x264_src/input/timecode.c:148:32
	ja	.LBB0_29
.Ltmp75:
# %bb.26:                               # %for.body50.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	movabsq	$34359747584, %rcx              # imm = 0x800002400
	btq	%rax, %rcx
	jae	.LBB0_29
.Ltmp76:
# %bb.27:                               # %if.then65.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 150 21 is_stmt 1              # x264_src/input/timecode.c:150:21
	movl	$.L.str.12, %esi
	leaq	128(%rsp), %rdi
	movq	%rsp, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp77:
	.loc	0 150 82 is_stmt 0              # x264_src/input/timecode.c:150:82
	cmpl	$1, %eax
.Ltmp78:
	.loc	0 150 21                        # x264_src/input/timecode.c:150:21
	jne	.LBB0_23
.Ltmp79:
# %bb.28:                               # %if.then70.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 151 41 is_stmt 1              # x264_src/input/timecode.c:151:41
	movl	(%rsp), %eax
	.loc	0 151 49 is_stmt 0              # x264_src/input/timecode.c:151:49
	subl	96(%rbp), %eax
	incl	%eax
	.loc	0 151 39                        # x264_src/input/timecode.c:151:39
	movl	%eax, 100(%rbp)
	jmp	.LBB0_23
.Ltmp80:
	.p2align	4, 0x90
.LBB0_29:                               # %if.end74.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 154 19 is_stmt 1              # x264_src/input/timecode.c:154:19
	movl	$.L.str.13, %esi
	leaq	128(%rsp), %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp81:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 155 26                        # x264_src/input/timecode.c:155:26
	cmpl	$-1, %eax
	je	.LBB0_31
.Ltmp82:
# %bb.30:                               # %if.end74.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	cmpl	$3, %eax
	jne	.LBB0_198
.Ltmp83:
.LBB0_31:                               # %if.end84.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 160 17                        # x264_src/input/timecode.c:160:17
	movl	4(%rsp), %ebp
	.loc	0 160 25 is_stmt 0              # x264_src/input/timecode.c:160:25
	movl	(%rsp), %r13d
	.loc	0 160 23                        # x264_src/input/timecode.c:160:23
	cmpl	%r13d, %ebp
	.loc	0 160 29                        # x264_src/input/timecode.c:160:29
	jg	.LBB0_184
.Ltmp84:
# %bb.32:                               # %if.end84.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	cmpl	%ebx, %ebp
	jle	.LBB0_184
.Ltmp85:
# %bb.33:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 160 59                        # x264_src/input/timecode.c:160:59
	cmpl	%r15d, %r13d
	.loc	0 160 71                        # x264_src/input/timecode.c:160:71
	jle	.LBB0_184
.Ltmp86:
# %bb.34:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	xorpd	%xmm0, %xmm0
	ucomisd	80(%rsp), %xmm0
	jae	.LBB0_184
.Ltmp87:
# %bb.35:                               # %if.end99.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: prev_start <- $ebp
	#DEBUG_VALUE: prev_end <- $r13d
	.loc	0 0 71                          # x264_src/input/timecode.c:0:71
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp88:
	.loc	0 167 17 is_stmt 1              # x264_src/input/timecode.c:167:17
	cmpl	$0, (%rax)
	.loc	0 167 38 is_stmt 0              # x264_src/input/timecode.c:167:38
	jne	.LBB0_37
.Ltmp89:
# %bb.36:                               # %lor.lhs.false100.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebp
	#DEBUG_VALUE: prev_end <- $r13d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 38                          # x264_src/input/timecode.c:0:38
	movq	88(%rsp), %rax                  # 8-byte Reload
	.loc	0 167 41                        # x264_src/input/timecode.c:167:41
	cmpl	$0, (%rax)
.Ltmp90:
	.loc	0 167 17                        # x264_src/input/timecode.c:167:17
	je	.LBB0_24
.Ltmp91:
.LBB0_37:                               # %if.then102.i
                                        #   in Loop: Header=BB0_25 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebp
	#DEBUG_VALUE: prev_end <- $r13d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 168 17 is_stmt 1              # x264_src/input/timecode.c:168:17
	incl	48(%rsp)                        # 4-byte Folded Spill
.Ltmp92:
	#DEBUG_VALUE: parse_tcfile:seq_num <- undef
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 17 is_stmt 0                # x264_src/input/timecode.c:0:17
	jmp	.LBB0_24
.Ltmp93:
.LBB0_38:                               # %if.else.i
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 246 29 is_stmt 1              # x264_src/input/timecode.c:246:29
	movq	%r14, %rdi
	callq	ftell@PLT
.Ltmp94:
	movq	%rax, %r15
.Ltmp95:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: file_pos <- $r15
	.loc	0 248 33                        # x264_src/input/timecode.c:248:33
	movl	$0, 100(%rbp)
.Ltmp96:
	#DEBUG_VALUE: parse_tcfile:num <- 0
	.loc	0 0 33 is_stmt 0                # x264_src/input/timecode.c:0:33
	leaq	128(%rsp), %rdi
	.loc	0 249 16 is_stmt 1              # x264_src/input/timecode.c:249:16
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp97:
	.loc	0 249 55 is_stmt 0              # x264_src/input/timecode.c:249:55
	testq	%rax, %rax
	.loc	0 249 9                         # x264_src/input/timecode.c:249:9
	je	.LBB0_48
.Ltmp98:
# %bb.39:                               # %while.body.lr.ph.i.preheader
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- 0
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	xorl	%ebx, %ebx
	leaq	128(%rsp), %r12
.Ltmp99:
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	movabsq	$34359747584, %r13              # imm = 0x800002400
.Ltmp100:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: file_pos <- $r15
	.p2align	4, 0x90
.LBB0_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 251 17 is_stmt 1              # x264_src/input/timecode.c:251:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 251 32 is_stmt 0              # x264_src/input/timecode.c:251:32
	ja	.LBB0_42
.Ltmp101:
# %bb.41:                               # %while.body.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	btq	%rax, %r13
	jb	.LBB0_46
.Ltmp102:
.LBB0_42:                               # %if.end377.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 257 21 is_stmt 1              # x264_src/input/timecode.c:257:21
	cmpl	96(%rbp), %ebx
.Ltmp103:
	.loc	0 257 17 is_stmt 0              # x264_src/input/timecode.c:257:17
	jl	.LBB0_44
.Ltmp104:
# %bb.43:                               # %if.then381.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 258 17 is_stmt 1              # x264_src/input/timecode.c:258:17
	incl	100(%rbp)
.Ltmp105:
.LBB0_44:                               # %if.end384.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 259 13                        # x264_src/input/timecode.c:259:13
	incl	%ebx
.Ltmp106:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: file_pos <- undef
.LBB0_45:                               # %if.end376.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:num <- undef
	#DEBUG_VALUE: file_pos <- $r15
	.loc	0 249 16                        # x264_src/input/timecode.c:249:16
	movq	%r12, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp107:
	.loc	0 249 55 is_stmt 0              # x264_src/input/timecode.c:249:55
	testq	%rax, %rax
	.loc	0 249 9                         # x264_src/input/timecode.c:249:9
	jne	.LBB0_40
	jmp	.LBB0_48
.Ltmp108:
.LBB0_46:                               # %if.then372.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 253 22 is_stmt 1              # x264_src/input/timecode.c:253:22
	testl	%ebx, %ebx
.Ltmp109:
	.loc	0 253 21 is_stmt 0              # x264_src/input/timecode.c:253:21
	jne	.LBB0_45
.Ltmp110:
# %bb.47:                               # %if.then374.i
                                        #   in Loop: Header=BB0_40 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 254 32 is_stmt 1              # x264_src/input/timecode.c:254:32
	movq	%r14, %rdi
	callq	ftell@PLT
.Ltmp111:
	movq	%rax, %r15
.Ltmp112:
	#DEBUG_VALUE: file_pos <- $r15
	.loc	0 0 32 is_stmt 0                # x264_src/input/timecode.c:0:32
	jmp	.LBB0_45
.Ltmp113:
.LBB0_48:                               # %while.end.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	.loc	0 261 28 is_stmt 1              # x264_src/input/timecode.c:261:28
	movslq	100(%rbp), %rax
	.loc	0 261 48 is_stmt 0              # x264_src/input/timecode.c:261:48
	movslq	96(%rbp), %rbx
	.loc	0 261 43                        # x264_src/input/timecode.c:261:43
	addq	%rax, %rbx
.Ltmp114:
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 262 14 is_stmt 1              # x264_src/input/timecode.c:262:14
	testl	%ebx, %ebx
.Ltmp115:
	.loc	0 262 13 is_stmt 0              # x264_src/input/timecode.c:262:13
	je	.LBB0_174
.Ltmp116:
# %bb.49:                               # %if.end392.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 267 9 is_stmt 1               # x264_src/input/timecode.c:267:9
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp117:
	.loc	0 269 43                        # x264_src/input/timecode.c:269:43
	leaq	(,%rbx,8), %rdi
	.loc	0 269 21 is_stmt 0              # x264_src/input/timecode.c:269:21
	callq	malloc@PLT
.Ltmp118:
	#DEBUG_VALUE: parse_tcfile:timecodes <- $rax
	.loc	0 270 14 is_stmt 1              # x264_src/input/timecode.c:270:14
	testq	%rax, %rax
.Ltmp119:
	.loc	0 270 13 is_stmt 0              # x264_src/input/timecode.c:270:13
	je	.LBB0_193
.Ltmp120:
# %bb.50:                               # %if.end399.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $rax
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movq	%rax, %r12
	leaq	128(%rsp), %r15
.Ltmp121:
	.loc	0 273 9 is_stmt 1               # x264_src/input/timecode.c:273:9
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp122:
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 274 15                        # x264_src/input/timecode.c:274:15
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp123:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 275 17                        # x264_src/input/timecode.c:275:17
	cmpl	$1, %eax
.Ltmp124:
	.loc	0 275 13 is_stmt 0              # x264_src/input/timecode.c:275:13
	jne	.LBB0_181
.Ltmp125:
# %bb.51:                               # %for.cond410.preheader.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
.Ltmp126:
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	cmpl	$2, %ebx
.Ltmp127:
	.loc	0 280 9 is_stmt 1               # x264_src/input/timecode.c:280:9
	jl	.LBB0_61
.Ltmp128:
# %bb.52:                               # %for.body413.lr.ph.preheader.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9 is_stmt 0                 # x264_src/input/timecode.c:0:9
	movl	24(%rsp), %eax                  # 4-byte Reload
.Ltmp129:
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movb	$1, %al
	movl	$1, %r15d
	leaq	128(%rsp), %r13
	movabsq	$34359747584, %rbx              # imm = 0x800002400
.Ltmp130:
	.p2align	4, 0x90
.LBB0_53:                               # %for.body413.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	testb	$1, %al
	je	.LBB0_56
.Ltmp131:
	.p2align	4, 0x90
.LBB0_54:                               # %for.body413.us.i
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 282 13 is_stmt 1              # x264_src/input/timecode.c:282:13
	movq	%r13, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp132:
	.loc	0 283 17                        # x264_src/input/timecode.c:283:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 283 32 is_stmt 0              # x264_src/input/timecode.c:283:32
	ja	.LBB0_58
.Ltmp133:
# %bb.55:                               # %for.body413.us.i
                                        #   in Loop: Header=BB0_54 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	btq	%rax, %rbx
	jb	.LBB0_54
	jmp	.LBB0_58
.Ltmp134:
	.p2align	4, 0x90
.LBB0_56:                               # %for.body413.lr.ph.split.i
                                        #   in Loop: Header=BB0_53 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 282 13 is_stmt 1              # x264_src/input/timecode.c:282:13
	movq	%r13, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp135:
	.loc	0 283 17                        # x264_src/input/timecode.c:283:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 283 32 is_stmt 0              # x264_src/input/timecode.c:283:32
	ja	.LBB0_58
.Ltmp136:
# %bb.57:                               # %for.body413.lr.ph.split.i
                                        #   in Loop: Header=BB0_53 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	btq	%rax, %rbx
	jb	.LBB0_61
.Ltmp137:
.LBB0_58:                               # %if.end431.i
                                        #   in Loop: Header=BB0_53 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 285 41 is_stmt 1              # x264_src/input/timecode.c:285:41
	leaq	(%r12,%r15,8), %rbp
	.loc	0 285 19 is_stmt 0              # x264_src/input/timecode.c:285:19
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp138:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 0 19                          # x264_src/input/timecode.c:0:19
	movsd	(%r12,%r15,8), %xmm0            # xmm0 = mem[0],zero
	.loc	0 286 28 is_stmt 1              # x264_src/input/timecode.c:286:28
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, (%r12,%r15,8)
.Ltmp139:
	.loc	0 287 21                        # x264_src/input/timecode.c:287:21
	cmpl	$1, %eax
	.loc	0 287 26 is_stmt 0              # x264_src/input/timecode.c:287:26
	jne	.LBB0_185
.Ltmp140:
# %bb.59:                               # %lor.lhs.false441.i
                                        #   in Loop: Header=BB0_53 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 287 47                        # x264_src/input/timecode.c:287:47
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	.loc	0 287 44                        # x264_src/input/timecode.c:287:44
	ucomisd	%xmm0, %xmm1
.Ltmp141:
	.loc	0 287 17                        # x264_src/input/timecode.c:287:17
	jae	.LBB0_185
.Ltmp142:
# %bb.60:                               # %if.end451.i
                                        #   in Loop: Header=BB0_53 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 292 13 is_stmt 1              # x264_src/input/timecode.c:292:13
	incq	%r15
.Ltmp143:
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	cmpq	24(%rsp), %r15                  # 8-byte Folded Reload
	setl	%al
.Ltmp144:
	cmpq	48(%rsp), %r15                  # 8-byte Folded Reload
	movq	16(%rsp), %rbp                  # 8-byte Reload
.Ltmp145:
	.loc	0 280 9 is_stmt 1               # x264_src/input/timecode.c:280:9
	jne	.LBB0_53
.Ltmp146:
.LBB0_61:                               # %for.end453.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9 is_stmt 0                 # x264_src/input/timecode.c:0:9
	movq	24(%rsp), %r13                  # 8-byte Reload
.Ltmp147:
	.loc	0 295 27 is_stmt 1              # x264_src/input/timecode.c:295:27
	cmpl	$1, %r13d
.Ltmp148:
	.loc	0 295 13 is_stmt 0              # x264_src/input/timecode.c:295:13
	jne	.LBB0_71
.Ltmp149:
# %bb.62:                               # %if.end555.thread.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movq	96(%rsp), %rbx                  # 8-byte Reload
.Ltmp150:
	.loc	0 296 37 is_stmt 1              # x264_src/input/timecode.c:296:37
	movl	4(%rbx), %eax
	.loc	0 296 29 is_stmt 0              # x264_src/input/timecode.c:296:29
	movq	%rax, 88(%rbp)
	xorl	%r15d, %r15d
.Ltmp151:
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 333 13 is_stmt 1              # x264_src/input/timecode.c:333:13
	jmp	.LBB0_107
.Ltmp152:
.LBB0_63:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- 0
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
.Ltmp153:
.LBB0_64:                               # %for.end107.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 172 48 is_stmt 1              # x264_src/input/timecode.c:172:48
	movl	96(%rbp), %eax
.Ltmp154:
	.loc	0 170 17                        # x264_src/input/timecode.c:170:17
	movl	100(%rbp), %ebx
	.loc	0 170 14 is_stmt 0              # x264_src/input/timecode.c:170:14
	testl	%ebx, %ebx
.Ltmp155:
	.loc	0 170 13                        # x264_src/input/timecode.c:170:13
	jne	.LBB0_66
.Ltmp156:
# %bb.65:                               # %if.then110.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 171 33 is_stmt 1              # x264_src/input/timecode.c:171:33
	movl	(%rsp), %ebx
	.loc	0 171 41 is_stmt 0              # x264_src/input/timecode.c:171:41
	subl	%eax, %ebx
	incl	%ebx
	.loc	0 171 31                        # x264_src/input/timecode.c:171:31
	movl	%ebx, 100(%rbp)
.Ltmp157:
.LBB0_66:                               # %if.end115.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 172 43 is_stmt 1              # x264_src/input/timecode.c:172:43
	addl	%eax, %ebx
.Ltmp158:
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 173 9                         # x264_src/input/timecode.c:173:9
	movq	%r14, %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp159:
	.loc	0 175 29                        # x264_src/input/timecode.c:175:29
	movslq	%ebx, %rdi
	.loc	0 175 43 is_stmt 0              # x264_src/input/timecode.c:175:43
	shlq	$3, %rdi
	.loc	0 175 21                        # x264_src/input/timecode.c:175:21
	callq	malloc@PLT
.Ltmp160:
	#DEBUG_VALUE: parse_tcfile:timecodes <- $rax
	.loc	0 176 14 is_stmt 1              # x264_src/input/timecode.c:176:14
	testq	%rax, %rax
.Ltmp161:
	.loc	0 176 13 is_stmt 0              # x264_src/input/timecode.c:176:13
	je	.LBB0_193
.Ltmp162:
# %bb.67:                               # %if.end124.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $rax
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movq	%rax, %r12
.Ltmp163:
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp164:
	.loc	0 178 13 is_stmt 1              # x264_src/input/timecode.c:178:13
	cmpl	$0, (%rax)
	.loc	0 178 34 is_stmt 0              # x264_src/input/timecode.c:178:34
	jne	.LBB0_69
.Ltmp165:
# %bb.68:                               # %lor.lhs.false127.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 34                          # x264_src/input/timecode.c:0:34
	movq	88(%rsp), %rax                  # 8-byte Reload
	.loc	0 178 37                        # x264_src/input/timecode.c:178:37
	cmpl	$0, (%rax)
.Ltmp166:
	.loc	0 178 13                        # x264_src/input/timecode.c:178:13
	je	.LBB0_110
.Ltmp167:
.LBB0_69:                               # %if.then130.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 180 28 is_stmt 1              # x264_src/input/timecode.c:180:28
	movslq	48(%rsp), %rax                  # 4-byte Folded Reload
	leaq	8(,%rax,8), %rdi
	.loc	0 180 20 is_stmt 0              # x264_src/input/timecode.c:180:20
	callq	malloc@PLT
.Ltmp168:
	movq	%rax, %r15
.Ltmp169:
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 181 18 is_stmt 1              # x264_src/input/timecode.c:181:18
	testq	%rax, %rax
.Ltmp170:
	.loc	0 181 17 is_stmt 0              # x264_src/input/timecode.c:181:17
	jne	.LBB0_111
.Ltmp171:
# %bb.70:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	xorl	%r15d, %r15d
.Ltmp172:
	#DEBUG_VALUE: parse_tcfile:fpss <- $rax
	.loc	0 181 17                        # x264_src/input/timecode.c:181:17
	jmp	.LBB0_190
.Ltmp173:
.LBB0_71:                               # %if.else458.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp174:
	.loc	0 297 18 is_stmt 1              # x264_src/input/timecode.c:297:18
	cmpl	$0, (%rax)
	movq	96(%rsp), %rbx                  # 8-byte Reload
.Ltmp175:
	.loc	0 297 18 is_stmt 0              # x264_src/input/timecode.c:297:18
	je	.LBB0_108
.Ltmp176:
# %bb.72:                               # %if.then461.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 299 28 is_stmt 1              # x264_src/input/timecode.c:299:28
	movslq	%r13d, %rax
	.loc	0 299 48 is_stmt 0              # x264_src/input/timecode.c:299:48
	leaq	-8(,%rax,8), %rdi
	.loc	0 299 20                        # x264_src/input/timecode.c:299:20
	callq	malloc@PLT
.Ltmp177:
	#DEBUG_VALUE: parse_tcfile:fpss <- $rax
	.loc	0 300 18 is_stmt 1              # x264_src/input/timecode.c:300:18
	testq	%rax, %rax
.Ltmp178:
	.loc	0 300 17 is_stmt 0              # x264_src/input/timecode.c:300:17
	je	.LBB0_186
.Ltmp179:
# %bb.73:                               # %for.cond469.preheader.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $rax
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.Ltmp180:
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	leal	-1(%r13), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	cmpl	$2, %r13d
.Ltmp181:
	#DEBUG_VALUE: parse_tcfile:num <- 0
	.loc	0 302 13 is_stmt 1              # x264_src/input/timecode.c:302:13
	jl	.LBB0_102
.Ltmp182:
# %bb.74:                               # %for.body473.lr.ph.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 302 31 is_stmt 0              # x264_src/input/timecode.c:302:31
	movl	32(%rsp), %r15d                 # 4-byte Reload
.Ltmp183:
	.loc	0 305 30 is_stmt 1              # x264_src/input/timecode.c:305:30
	movq	88(%rbp), %rax
	xorl	%r13d, %r13d
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jmp	.LBB0_76
.Ltmp184:
.LBB0_92:                               # %if.then527.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 30 is_stmt 0                # x264_src/input/timecode.c:0:30
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp185:
	.loc	0 322 46 is_stmt 1              # x264_src/input/timecode.c:322:46
	movl	$0, (%rcx)
.Ltmp186:
.LBB0_75:                               # %for.inc538.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 0 is_stmt 0                 # x264_src/input/timecode.c:0:0
	incq	%r13
.Ltmp187:
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	.loc	0 302 31 is_stmt 1              # x264_src/input/timecode.c:302:31
	cmpq	%r15, %r13
.Ltmp188:
	.loc	0 302 13 is_stmt 0              # x264_src/input/timecode.c:302:13
	je	.LBB0_102
.Ltmp189:
.LBB0_76:                               # %for.body473.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_84 Depth 2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	.loc	0 304 34 is_stmt 1              # x264_src/input/timecode.c:304:34
	movsd	8(%r12,%r13,8), %xmm2           # xmm2 = mem[0],zero
	.loc	0 304 53 is_stmt 0              # x264_src/input/timecode.c:304:53
	subsd	(%r12,%r13,8), %xmm2
	.loc	0 304 31                        # x264_src/input/timecode.c:304:31
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movq	64(%rsp), %rcx                  # 8-byte Reload
	.loc	0 304 27                        # x264_src/input/timecode.c:304:27
	movsd	%xmm0, (%rcx,%r13,8)
.Ltmp190:
	.loc	0 305 43 is_stmt 1              # x264_src/input/timecode.c:305:43
	testl	%eax, %eax
.Ltmp191:
	.loc	0 305 21 is_stmt 0              # x264_src/input/timecode.c:305:21
	js	.LBB0_75
.Ltmp192:
# %bb.77:                               # %if.then487.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: sigexp10:value <- $xmm0
	#DEBUG_VALUE: sigexp10:exponent <- undef
	.loc	0 0 21                          # x264_src/input/timecode.c:0:21
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp193:
	#DEBUG_VALUE: sigexp10:value <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 47 33 is_stmt 1               # x264_src/input/timecode.c:47:33
	callq	log10@PLT
.Ltmp194:
	.loc	0 47 26 is_stmt 0               # x264_src/input/timecode.c:47:26
	callq	floor@PLT
.Ltmp195:
	movapd	%xmm0, %xmm1
	.loc	0 47 17                         # x264_src/input/timecode.c:47:17
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
.Ltmp196:
	#DEBUG_VALUE: exponent <- $xmm0
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
.Ltmp197:
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	.loc	0 48 18 is_stmt 1               # x264_src/input/timecode.c:48:18
	divsd	%xmm0, %xmm2
.Ltmp198:
	#DEBUG_VALUE: fps_sig <- $xmm2
	.loc	0 0 18 is_stmt 0                # x264_src/input/timecode.c:0:18
	movq	80(%rbp), %rbx
.Ltmp199:
	.loc	0 314 42 is_stmt 1              # x264_src/input/timecode.c:314:42
	movq	%rbx, %xmm0
	punpckldq	.LCPI0_3(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI0_4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
.Ltmp200:
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: sigexp10:value <- undef
	.loc	0 0 42 is_stmt 0                # x264_src/input/timecode.c:0:42
	movapd	%xmm1, 48(%rsp)                 # 16-byte Spill
	.loc	0 314 50                        # x264_src/input/timecode.c:314:50
	mulsd	%xmm1, %xmm0
	.loc	0 314 35                        # x264_src/input/timecode.c:314:35
	callq	round@PLT
.Ltmp201:
	.loc	0 0 35                          # x264_src/input/timecode.c:0:35
	movsd	72(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	.loc	0 314 62                        # x264_src/input/timecode.c:314:62
	mulsd	%xmm2, %xmm0
	.loc	0 314 35                        # x264_src/input/timecode.c:314:35
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI0_5(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
.Ltmp202:
	.loc	0 315 37 is_stmt 1              # x264_src/input/timecode.c:315:37
	movq	%rsi, %rax
	shrq	$32, %rax
	.loc	0 315 50 is_stmt 0              # x264_src/input/timecode.c:315:50
	jne	.LBB0_82
.Ltmp203:
# %bb.78:                               # %lor.lhs.false503.i.preheader
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 311 21 is_stmt 1              # x264_src/input/timecode.c:311:21
	leaq	(%rbx,%rbx), %rbp
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	48(%rsp), %xmm1                 # 16-byte Reload
.Ltmp204:
	.p2align	4, 0x90
.LBB0_79:                               # %lor.lhs.false503.i
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_minus, DW_OP_LLVM_arg 1, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp, $rbx
	.loc	0 315 60                        # x264_src/input/timecode.c:315:60
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rsi, %xmm0
	.loc	0 315 76 is_stmt 0              # x264_src/input/timecode.c:315:76
	divsd	%xmm1, %xmm0
	.loc	0 315 87                        # x264_src/input/timecode.c:315:87
	divsd	%xmm2, %xmm0
	.loc	0 315 98                        # x264_src/input/timecode.c:315:98
	subsd	%xmm3, %xmm0
	.loc	0 315 53                        # x264_src/input/timecode.c:315:53
	andpd	.LCPI0_6(%rip), %xmm0
	.loc	0 315 110                       # x264_src/input/timecode.c:315:110
	movsd	.LCPI0_7(%rip), %xmm1           # xmm1 = [5.0000000000000004E-6,0.0E+0]
	ucomisd	%xmm0, %xmm1
.Ltmp205:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rbp
	.loc	0 315 29                        # x264_src/input/timecode.c:315:29
	ja	.LBB0_81
.Ltmp206:
# %bb.80:                               # %while.cond493.i
                                        #   in Loop: Header=BB0_79 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 29                          # x264_src/input/timecode.c:0:29
	movapd	%xmm3, %xmm1
.Ltmp207:
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: fps_den <- $rbp
	.loc	0 314 42 is_stmt 1              # x264_src/input/timecode.c:314:42
	movq	%rbp, %xmm0
	punpckldq	.LCPI0_3(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI0_4(%rip), %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3                    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	movapd	%xmm3, 48(%rsp)                 # 16-byte Spill
	.loc	0 314 50 is_stmt 0              # x264_src/input/timecode.c:314:50
	movapd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	.loc	0 314 35                        # x264_src/input/timecode.c:314:35
	callq	round@PLT
.Ltmp208:
	.loc	0 0 35                          # x264_src/input/timecode.c:0:35
	movapd	48(%rsp), %xmm1                 # 16-byte Reload
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	72(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	.loc	0 314 62                        # x264_src/input/timecode.c:314:62
	mulsd	%xmm2, %xmm0
	.loc	0 314 35                        # x264_src/input/timecode.c:314:35
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI0_5(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
.Ltmp209:
	#DEBUG_VALUE: fps_num <- $rsi
	.loc	0 315 37 is_stmt 1              # x264_src/input/timecode.c:315:37
	movq	%rsi, %rax
	shrq	$32, %rax
	.loc	0 315 50 is_stmt 0              # x264_src/input/timecode.c:315:50
	addq	%rbx, %rbp
.Ltmp210:
	.loc	0 315 37                        # x264_src/input/timecode.c:315:37
	testq	%rax, %rax
	je	.LBB0_79
	jmp	.LBB0_82
.Ltmp211:
.LBB0_81:                               # %while.end514.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 319 39 is_stmt 1              # x264_src/input/timecode.c:319:39
	testq	%rsi, %rsi
	.loc	0 319 47 is_stmt 0              # x264_src/input/timecode.c:319:47
	je	.LBB0_90
.Ltmp212:
	.p2align	4, 0x90
.LBB0_82:                               # %land.lhs.true516.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 47                          # x264_src/input/timecode.c:0:47
	movq	16(%rsp), %rbp                  # 8-byte Reload
	.loc	0 319 53                        # x264_src/input/timecode.c:319:53
	movq	88(%rbp), %rcx
	movq	%rcx, %rax
	movq	%rsi, %rdx
	.loc	0 319 50                        # x264_src/input/timecode.c:319:50
	testq	%rcx, %rcx
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	.loc	0 319 39                        # x264_src/input/timecode.c:319:39
	jne	.LBB0_84
	jmp	.LBB0_91
.Ltmp213:
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_84 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	xorl	%edx, %edx
	divl	%edi
.Ltmp214:
                                        # kill: def $edx killed $edx def $rdx
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp215:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp216:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	je	.LBB0_86
.Ltmp217:
.LBB0_84:                               # %while.body.i.i.i
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	%rdx, %rdi
.Ltmp218:
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB0_85
.Ltmp219:
# %bb.83:                               #   in Loop: Header=BB0_84 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	cqto
.Ltmp220:
	idivq	%rdi
.Ltmp221:
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp222:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp223:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	jne	.LBB0_84
.Ltmp224:
.LBB0_86:                               # %lcm.exit.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	1 46 16 is_stmt 1               # x264_src/muxers.h:46:16
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB0_88
.Ltmp225:
# %bb.87:                               #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	%rcx, %rax
	cqto
	idivq	%rdi
	jmp	.LBB0_89
.Ltmp226:
.LBB0_88:                               #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
.Ltmp227:
.LBB0_89:                               # %cond.end.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	1 46 32 is_stmt 0               # x264_src/muxers.h:46:32
	imulq	%rsi, %rax
.Ltmp228:
	.loc	0 319 37 is_stmt 1              # x264_src/input/timecode.c:319:37
	movq	%rax, 88(%rbp)
.Ltmp229:
	.loc	0 320 41                        # x264_src/input/timecode.c:320:41
	movq	%rax, %rcx
	shrq	$32, %rcx
.Ltmp230:
	.loc	0 320 25 is_stmt 0              # x264_src/input/timecode.c:320:25
	je	.LBB0_75
	jmp	.LBB0_92
.Ltmp231:
.LBB0_90:                               #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 25                          # x264_src/input/timecode.c:0:25
	xorl	%esi, %esi
	movq	16(%rsp), %rbp                  # 8-byte Reload
.Ltmp232:
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
.Ltmp233:
.LBB0_91:                               # %cond.false.i
                                        #   in Loop: Header=BB0_76 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $r13
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_sig <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 319 102 is_stmt 1             # x264_src/input/timecode.c:319:102
	movslq	%esi, %rax
	.loc	0 319 37 is_stmt 0              # x264_src/input/timecode.c:319:37
	movq	%rax, 88(%rbp)
.Ltmp234:
	.loc	0 320 41 is_stmt 1              # x264_src/input/timecode.c:320:41
	movq	%rax, %rcx
	shrq	$32, %rcx
.Ltmp235:
	.loc	0 320 25 is_stmt 0              # x264_src/input/timecode.c:320:25
	je	.LBB0_75
	jmp	.LBB0_92
.Ltmp236:
.LBB0_93:                               # %if.then.i
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 115 18 is_stmt 1              # x264_src/input/timecode.c:115:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 115 9 is_stmt 0               # x264_src/input/timecode.c:115:9
	movl	$.L.str.7, %edi
	movl	$46, %esi
.Ltmp237:
.LBB0_94:                               # %if.then52
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp238:
	.loc	0 116 9 is_stmt 1               # x264_src/input/timecode.c:116:9
	jmp	.LBB0_193
.Ltmp239:
.LBB0_95:                               # %if.then19
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- $ebp
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 405 22                        # x264_src/input/timecode.c:405:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 405 13 is_stmt 0              # x264_src/input/timecode.c:405:13
	movl	$.L.str.2, %edi
	movl	$63, %esi
	jmp	.LBB0_97
.Ltmp240:
.LBB0_96:                               # %if.then
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $rbx
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:ret <- 0
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 391 18 is_stmt 1              # x264_src/input/timecode.c:391:18
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp241:
	movq	(%rax), %rcx
	.loc	0 391 9 is_stmt 0               # x264_src/input/timecode.c:391:9
	movl	$.L.str, %edi
	movl	$32, %esi
.Ltmp242:
.LBB0_97:                               # %cleanup
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: open_file:opt <- $r12
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp243:
	jmp	.LBB0_196
.Ltmp244:
.LBB0_98:                               # %if.end22.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	leaq	128(%rsp), %rdi
.Ltmp245:
	.loc	0 131 17 is_stmt 1              # x264_src/input/timecode.c:131:17
	movl	$.L.str.8, %esi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp246:
	.loc	0 131 62 is_stmt 0              # x264_src/input/timecode.c:131:62
	cmpl	$1, %eax
	.loc	0 131 67                        # x264_src/input/timecode.c:131:67
	je	.LBB0_20
.Ltmp247:
# %bb.99:                               # %land.lhs.true28.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 0 67                          # x264_src/input/timecode.c:0:67
	leaq	128(%rsp), %rdi
	.loc	0 131 70                        # x264_src/input/timecode.c:131:70
	movl	$.L.str.9, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp248:
	.loc	0 131 115                       # x264_src/input/timecode.c:131:115
	cmpl	$1, %eax
.Ltmp249:
	.loc	0 131 17                        # x264_src/input/timecode.c:131:17
	je	.LBB0_20
.Ltmp250:
# %bb.100:                              # %if.then34.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 133 26 is_stmt 1              # x264_src/input/timecode.c:133:26
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 133 17 is_stmt 0              # x264_src/input/timecode.c:133:17
	movl	$.L.str.10, %edi
	movl	$62, %esi
	jmp	.LBB0_94
.Ltmp251:
.LBB0_101:                              # %if.then40
	#DEBUG_VALUE: open_file:psz_filename <- $r15
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- $r12
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $rax
	.loc	0 423 18 is_stmt 1              # x264_src/input/timecode.c:423:18
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp252:
	movq	(%rax), %rdi
	.loc	0 423 9 is_stmt 0               # x264_src/input/timecode.c:423:9
	movl	$.L.str.4, %esi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp253:
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	jmp	.LBB0_196
.Ltmp254:
.LBB0_102:                              # %for.end540.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	movq	88(%rsp), %rax                  # 8-byte Reload
.Ltmp255:
	.loc	0 327 17 is_stmt 1              # x264_src/input/timecode.c:327:17
	cmpl	$0, (%rax)
	movq	64(%rsp), %r15                  # 8-byte Reload
	.loc	0 327 38 is_stmt 0              # x264_src/input/timecode.c:327:38
	je	.LBB0_105
.Ltmp256:
# %bb.103:                              # %land.lhs.true543.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 38                          # x264_src/input/timecode.c:0:38
	movq	40(%rsp), %rax                  # 8-byte Reload
	.loc	0 327 42                        # x264_src/input/timecode.c:327:42
	cmpl	$0, (%rax)
.Ltmp257:
	.loc	0 327 17                        # x264_src/input/timecode.c:327:17
	jne	.LBB0_105
.Ltmp258:
# %bb.104:                              # %if.then546.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 328 21 is_stmt 1              # x264_src/input/timecode.c:328:21
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	32(%rsp), %edx                  # 4-byte Reload
	callq	try_mkv_timebase_den
.Ltmp259:
	.loc	0 328 72 is_stmt 0              # x264_src/input/timecode.c:328:72
	testl	%eax, %eax
.Ltmp260:
	.loc	0 328 21                        # x264_src/input/timecode.c:328:21
	js	.LBB0_190
.Ltmp261:
.LBB0_105:                              # %if.end553.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 330 13 is_stmt 1              # x264_src/input/timecode.c:330:13
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp262:
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	movq	24(%rsp), %r13                  # 8-byte Reload
	cmpl	$1, %r13d
.Ltmp263:
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	.loc	0 333 13 is_stmt 1              # x264_src/input/timecode.c:333:13
	jg	.LBB0_109
.Ltmp264:
.LBB0_106:                              # %if.end555.i.if.else568.i_crit_edge
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 336 43                        # x264_src/input/timecode.c:336:43
	movl	4(%rbx), %eax
.Ltmp265:
.LBB0_107:                              # %if.else568.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 336 29 is_stmt 0              # x264_src/input/timecode.c:336:29
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	.loc	0 336 59                        # x264_src/input/timecode.c:336:59
	movl	8(%rbx), %eax
	.loc	0 336 53                        # x264_src/input/timecode.c:336:53
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	.loc	0 336 51                        # x264_src/input/timecode.c:336:51
	divsd	%xmm1, %xmm0
	.loc	0 336 27                        # x264_src/input/timecode.c:336:27
	movsd	%xmm0, 112(%rbp)
.Ltmp266:
	.loc	0 337 28 is_stmt 1              # x264_src/input/timecode.c:337:28
	movsd	-8(%r12,%r13,8), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB0_139
.Ltmp267:
.LBB0_108:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 28 is_stmt 0                # x264_src/input/timecode.c:0:28
	xorl	%r15d, %r15d
	cmpl	$1, %r13d
.Ltmp268:
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 333 13 is_stmt 1              # x264_src/input/timecode.c:333:13
	jle	.LBB0_106
.Ltmp269:
.LBB0_109:                              # %if.then558.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 334 34                        # x264_src/input/timecode.c:334:34
	movl	%r13d, %eax
	movsd	-8(%r12,%rax,8), %xmm0          # xmm0 = mem[0],zero
	.loc	0 334 63 is_stmt 0              # x264_src/input/timecode.c:334:63
	movapd	%xmm0, %xmm1
	subsd	-16(%r12,%rax,8), %xmm1
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	.loc	0 334 31                        # x264_src/input/timecode.c:334:31
	divsd	%xmm1, %xmm2
	.loc	0 334 27                        # x264_src/input/timecode.c:334:27
	movsd	%xmm2, 112(%rbp)
	.loc	0 334 13                        # x264_src/input/timecode.c:334:13
	jmp	.LBB0_139
.Ltmp270:
.LBB0_110:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	xorl	%r15d, %r15d
.Ltmp271:
.LBB0_111:                              # %if.end138.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 185 38 is_stmt 1              # x264_src/input/timecode.c:185:38
	movsd	112(%rbp), %xmm0                # xmm0 = mem[0],zero
	.loc	0 185 22 is_stmt 0              # x264_src/input/timecode.c:185:22
	movq	%rbp, %rdi
	callq	correct_fps
.Ltmp272:
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 22                          # x264_src/input/timecode.c:0:22
	xorpd	%xmm1, %xmm1
.Ltmp273:
	.loc	0 186 24 is_stmt 1              # x264_src/input/timecode.c:186:24
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_190
.Ltmp274:
# %bb.112:                              # %if.end144.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 24 is_stmt 0                # x264_src/input/timecode.c:0:24
	movq	%r15, 64(%rsp)                  # 8-byte Spill
.Ltmp275:
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	.loc	0 188 22 is_stmt 1              # x264_src/input/timecode.c:188:22
	movq	$0, (%r12)
.Ltmp276:
	#DEBUG_VALUE: parse_tcfile:seq_num <- 0
	#DEBUG_VALUE: parse_tcfile:num <- 0
	.loc	0 0 22 is_stmt 0                # x264_src/input/timecode.c:0:22
	leal	-1(%rbx), %r8d
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
.Ltmp277:
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	cmpl	$2, %ebx
	movl	%r8d, 48(%rsp)                  # 4-byte Spill
.Ltmp278:
	.loc	0 189 9 is_stmt 1               # x264_src/input/timecode.c:189:9
	jl	.LBB0_135
.Ltmp279:
# %bb.113:                              # %for.body150.lr.ph.lr.ph.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- 0
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 9 is_stmt 0                 # x264_src/input/timecode.c:0:9
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	divsd	%xmm0, %xmm1
	.loc	0 189 9                         # x264_src/input/timecode.c:189:9
	movl	%r8d, %ebp
	leaq	128(%rsp), %r15
	movabsq	$34359747584, %r13              # imm = 0x800002400
	xorl	%ebx, %ebx
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp280:
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movsd	%xmm1, 72(%rsp)                 # 8-byte Spill
.Ltmp281:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	jmp	.LBB0_115
.Ltmp282:
.LBB0_114:                              #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp283:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	cmpl	%r8d, %ebx
	.loc	0 189 9                         # x264_src/input/timecode.c:189:9
	jge	.LBB0_135
.Ltmp284:
	.p2align	4, 0x90
.LBB0_115:                              # %for.body150.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_132 Depth 2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 191 13 is_stmt 1              # x264_src/input/timecode.c:191:13
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp285:
	.loc	0 192 17                        # x264_src/input/timecode.c:192:17
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 192 32 is_stmt 0              # x264_src/input/timecode.c:192:32
	ja	.LBB0_117
.Ltmp286:
# %bb.116:                              # %for.body150.us.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 32                          # x264_src/input/timecode.c:0:32
	btq	%rax, %r13
	jb	.LBB0_115
.Ltmp287:
.LBB0_117:                              # %if.end168.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 194 19 is_stmt 1              # x264_src/input/timecode.c:194:19
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp288:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 195 21                        # x264_src/input/timecode.c:195:21
	cmpl	$3, %eax
.Ltmp289:
	.loc	0 195 17 is_stmt 0              # x264_src/input/timecode.c:195:17
	jne	.LBB0_119
.Ltmp290:
# %bb.118:                              # %if.end168.if.end175_crit_edge.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movl	4(%rsp), %eax
.Ltmp291:
	movl	48(%rsp), %r8d                  # 4-byte Reload
.Ltmp292:
	#DEBUG_VALUE: parse_tcfile:num <- undef
	.loc	0 197 32 is_stmt 1              # x264_src/input/timecode.c:197:32
	cmpl	%r8d, %ebx
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp293:
	.loc	0 197 13 is_stmt 0              # x264_src/input/timecode.c:197:13
	jl	.LBB0_120
	jmp	.LBB0_125
.Ltmp294:
.LBB0_119:                              # %if.then173.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movl	48(%rsp), %r8d                  # 4-byte Reload
.Ltmp295:
	.loc	0 196 29 is_stmt 1              # x264_src/input/timecode.c:196:29
	movl	%r8d, (%rsp)
.Ltmp296:
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	.loc	0 196 23 is_stmt 0              # x264_src/input/timecode.c:196:23
	movl	%r8d, 4(%rsp)
	movl	%r8d, %eax
.Ltmp297:
	#DEBUG_VALUE: parse_tcfile:num <- undef
	.loc	0 197 32 is_stmt 1              # x264_src/input/timecode.c:197:32
	cmpl	%r8d, %ebx
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp298:
	.loc	0 197 13 is_stmt 0              # x264_src/input/timecode.c:197:13
	jge	.LBB0_125
.Ltmp299:
.LBB0_120:                              # %if.end175.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	cmpl	%eax, %ebx
	jge	.LBB0_125
.Ltmp300:
# %bb.121:                              # %for.body182.preheader.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movslq	%ebx, %rdx
	cltq
.Ltmp301:
	.loc	0 198 38 is_stmt 1              # x264_src/input/timecode.c:198:38
	movsd	(%r12,%rdx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp302:
	.loc	0 197 13                        # x264_src/input/timecode.c:197:13
	incq	%rdx
.Ltmp303:
	.p2align	4, 0x90
.LBB0_122:                              # %for.body182.i
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 198 38                        # x264_src/input/timecode.c:198:38
	movq	%rdx, %rcx
.Ltmp304:
	#DEBUG_VALUE: parse_tcfile:num <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 198 53 is_stmt 0              # x264_src/input/timecode.c:198:53
	addsd	%xmm1, %xmm0
	.loc	0 198 36                        # x264_src/input/timecode.c:198:36
	movsd	%xmm0, (%r12,%rdx,8)
.Ltmp305:
	.loc	0 197 13 is_stmt 1              # x264_src/input/timecode.c:197:13
	incl	%ebx
.Ltmp306:
	#DEBUG_VALUE: parse_tcfile:num <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 197 32 is_stmt 0              # x264_src/input/timecode.c:197:32
	cmpq	%rbp, %rdx
.Ltmp307:
	.loc	0 197 13                        # x264_src/input/timecode.c:197:13
	jge	.LBB0_124
.Ltmp308:
# %bb.123:                              # %for.body182.i
                                        #   in Loop: Header=BB0_122 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rcx
	jl	.LBB0_122
.Ltmp309:
.LBB0_124:                              # %for.end190.loopexit.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 197 32                        # x264_src/input/timecode.c:197:32
	cmpq	%rbp, %rcx
.Ltmp310:
	.loc	0 199 17 is_stmt 1              # x264_src/input/timecode.c:199:17
	jge	.LBB0_114
	jmp	.LBB0_126
.Ltmp311:
.LBB0_125:                              # %for.end190.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 197 32                        # x264_src/input/timecode.c:197:32
	cmpl	%r8d, %ebx
	jge	.LBB0_114
.Ltmp312:
.LBB0_126:                              # %if.then194.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 32 is_stmt 0                # x264_src/input/timecode.c:0:32
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp313:
	.loc	0 201 21 is_stmt 1              # x264_src/input/timecode.c:201:21
	cmpl	$0, (%rax)
	.loc	0 201 42 is_stmt 0              # x264_src/input/timecode.c:201:42
	jne	.LBB0_128
.Ltmp314:
# %bb.127:                              # %lor.lhs.false197.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 42                          # x264_src/input/timecode.c:0:42
	movq	88(%rsp), %rax                  # 8-byte Reload
	.loc	0 201 45                        # x264_src/input/timecode.c:201:45
	cmpl	$0, (%rax)
.Ltmp315:
	.loc	0 201 21                        # x264_src/input/timecode.c:201:21
	je	.LBB0_134
.Ltmp316:
.LBB0_128:                              # %if.then200.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 202 39 is_stmt 1              # x264_src/input/timecode.c:202:39
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movl	32(%rsp), %ecx                  # 4-byte Reload
	.loc	0 202 21 is_stmt 0              # x264_src/input/timecode.c:202:21
	movslq	%ecx, %rax
	.loc	0 202 33                        # x264_src/input/timecode.c:202:33
	incl	%ecx
.Ltmp317:
	#DEBUG_VALUE: parse_tcfile:seq_num <- $ecx
	.loc	0 0 33                          # x264_src/input/timecode.c:0:33
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
.Ltmp318:
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	movq	64(%rsp), %rcx                  # 8-byte Reload
	.loc	0 202 37                        # x264_src/input/timecode.c:202:37
	movsd	%xmm0, (%rcx,%rax,8)
.Ltmp319:
.LBB0_129:                              # %if.end204.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 37                          # x264_src/input/timecode.c:0:37
	movq	16(%rsp), %rdi                  # 8-byte Reload
	.loc	0 203 27 is_stmt 1              # x264_src/input/timecode.c:203:27
	callq	correct_fps
.Ltmp320:
	.loc	0 203 25 is_stmt 0              # x264_src/input/timecode.c:203:25
	movsd	%xmm0, 80(%rsp)
.Ltmp321:
	.loc	0 204 29 is_stmt 1              # x264_src/input/timecode.c:204:29
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
.Ltmp322:
	.loc	0 204 21 is_stmt 0              # x264_src/input/timecode.c:204:21
	ja	.LBB0_182
.Ltmp323:
# %bb.130:                              # %if.end209.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 206 28 is_stmt 1              # x264_src/input/timecode.c:206:28
	movl	4(%rsp), %ebx
.Ltmp324:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 0 28 is_stmt 0                # x264_src/input/timecode.c:0:28
	movslq	(%rsp), %rax
.Ltmp325:
	.loc	0 206 39                        # x264_src/input/timecode.c:206:39
	cmpl	%eax, %ebx
	setg	%cl
	movl	48(%rsp), %r8d                  # 4-byte Reload
	.loc	0 206 46                        # x264_src/input/timecode.c:206:46
	cmpl	%r8d, %ebx
	setge	%dl
.Ltmp326:
	.loc	0 206 17                        # x264_src/input/timecode.c:206:17
	orb	%cl, %dl
	jne	.LBB0_114
.Ltmp327:
# %bb.131:                              # %for.body218.lr.ph.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movslq	%ebx, %rcx
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	divsd	%xmm0, %xmm1
.Ltmp328:
	.loc	0 207 42 is_stmt 1              # x264_src/input/timecode.c:207:42
	movsd	(%r12,%rcx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp329:
	.p2align	4, 0x90
.LBB0_132:                              # %for.body218.i
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	.loc	0 207 57 is_stmt 0              # x264_src/input/timecode.c:207:57
	addsd	%xmm1, %xmm0
	.loc	0 207 35                        # x264_src/input/timecode.c:207:35
	leaq	1(%rcx), %rbx
	.loc	0 207 40                        # x264_src/input/timecode.c:207:40
	movsd	%xmm0, 8(%r12,%rcx,8)
.Ltmp330:
	#DEBUG_VALUE: parse_tcfile:num <- $rbx
	.loc	0 206 39 is_stmt 1              # x264_src/input/timecode.c:206:39
	cmpq	%rax, %rcx
.Ltmp331:
	.loc	0 206 17 is_stmt 0              # x264_src/input/timecode.c:206:17
	jge	.LBB0_114
.Ltmp332:
# %bb.133:                              # %for.body218.i
                                        #   in Loop: Header=BB0_132 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rbx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	%rbx, %rcx
	.loc	0 206 17                        # x264_src/input/timecode.c:206:17
	cmpq	%rbp, %rbx
	jl	.LBB0_132
	jmp	.LBB0_114
.Ltmp333:
.LBB0_134:                              # %lor.lhs.false197.if.end204_crit_edge.i
                                        #   in Loop: Header=BB0_115 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 203 40 is_stmt 1              # x264_src/input/timecode.c:203:40
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	.loc	0 201 21                        # x264_src/input/timecode.c:201:21
	jmp	.LBB0_129
.Ltmp334:
.LBB0_135:                              # %for.end230.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 21 is_stmt 0                # x264_src/input/timecode.c:0:21
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp335:
	.loc	0 210 13 is_stmt 1              # x264_src/input/timecode.c:210:13
	cmpl	$0, (%rax)
	.loc	0 210 34 is_stmt 0              # x264_src/input/timecode.c:210:34
	je	.LBB0_154
.Ltmp336:
# %bb.136:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 34                          # x264_src/input/timecode.c:0:34
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.Ltmp337:
.LBB0_137:                              # %if.then336.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp338:
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 239 13 is_stmt 1              # x264_src/input/timecode.c:239:13
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp339:
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	48(%rsp), %r8d                  # 4-byte Reload
.Ltmp340:
.LBB0_138:                              # %if.end337.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 241 23 is_stmt 1              # x264_src/input/timecode.c:241:23
	movsd	%xmm0, 112(%rbp)
	.loc	0 242 28                        # x264_src/input/timecode.c:242:28
	movslq	%r8d, %rax
	movsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp341:
.LBB0_139:                              # %cleanup580.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 0 0 is_stmt 0                 # x264_src/input/timecode.c:0:0
	movsd	%xmm0, 120(%rbp)
.Ltmp342:
	#DEBUG_VALUE: parse_tcfile:timecodes <- undef
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp343:
	.loc	0 340 9 is_stmt 1               # x264_src/input/timecode.c:340:9
	cmpl	$0, (%rax)
	.loc	0 340 30 is_stmt 0              # x264_src/input/timecode.c:340:30
	jne	.LBB0_148
.Ltmp344:
# %bb.140:                              # %lor.lhs.false586.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 0 30                          # x264_src/input/timecode.c:0:30
	movq	88(%rsp), %rax                  # 8-byte Reload
	.loc	0 340 33                        # x264_src/input/timecode.c:340:33
	cmpl	$0, (%rax)
.Ltmp345:
	.loc	0 340 9                         # x264_src/input/timecode.c:340:9
	jne	.LBB0_148
.Ltmp346:
# %bb.141:                              # %if.else601.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	88(%rbp), %rcx
.Ltmp347:
	.loc	0 347 43 is_stmt 1              # x264_src/input/timecode.c:347:43
	addq	%rax, %rcx
	incq	%rax
	cmpq	%rax, %rcx
	jb	.LBB0_183
.Ltmp348:
.LBB0_142:                              # %if.end611.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 354 25                        # x264_src/input/timecode.c:354:25
	movslq	100(%rbp), %rbx
	.loc	0 354 40 is_stmt 0              # x264_src/input/timecode.c:354:40
	leaq	(,%rbx,8), %rdi
	.loc	0 354 14                        # x264_src/input/timecode.c:354:14
	callq	malloc@PLT
.Ltmp349:
	.loc	0 354 12                        # x264_src/input/timecode.c:354:12
	movq	%rax, 104(%rbp)
.Ltmp350:
	.loc	0 355 10 is_stmt 1              # x264_src/input/timecode.c:355:10
	testq	%rax, %rax
	je	.LBB0_190
.Ltmp351:
# %bb.143:                              # %if.end619.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 357 47                        # x264_src/input/timecode.c:357:47
	movslq	96(%rbp), %rcx
	.loc	0 357 56 is_stmt 0              # x264_src/input/timecode.c:357:56
	movsd	88(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_4(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	.loc	0 357 82                        # x264_src/input/timecode.c:357:82
	movsd	80(%rbp), %xmm1                 # xmm1 = mem[0],zero
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	.loc	0 357 80                        # x264_src/input/timecode.c:357:80
	divsd	%xmm2, %xmm0
	.loc	0 357 99                        # x264_src/input/timecode.c:357:99
	mulsd	(%r12,%rcx,8), %xmm0
.Ltmp352:
	#DEBUG_VALUE: parse_tcfile:pts_seek_offset <- undef
	.loc	0 358 15 is_stmt 1              # x264_src/input/timecode.c:358:15
	movq	$0, (%rax)
.Ltmp353:
	#DEBUG_VALUE: parse_tcfile:num <- 1
	.loc	0 359 23                        # x264_src/input/timecode.c:359:23
	cmpl	$2, %ebx
	movq	96(%rsp), %rbx                  # 8-byte Reload
.Ltmp354:
	.loc	0 359 5 is_stmt 0               # x264_src/input/timecode.c:359:5
	jl	.LBB0_147
.Ltmp355:
# %bb.144:                              # %for.body636.i.preheader
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- 1
	.loc	0 0 5                           # x264_src/input/timecode.c:0:5
	addsd	.LCPI0_9(%rip), %xmm0
	cvttsd2si	%xmm0, %rcx
.Ltmp356:
	#DEBUG_VALUE: parse_tcfile:pts_seek_offset <- $rcx
	movl	$1, %edx
	movdqa	.LCPI0_10(%rip), %xmm0          # xmm0 = [4294967295,4294967295]
	movdqa	.LCPI0_11(%rip), %xmm1          # xmm1 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI0_12(%rip), %xmm2          # xmm2 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI0_13(%rip), %xmm3          # xmm3 = [1.9342813118337666E+25,1.9342813118337666E+25]
	movsd	.LCPI0_9(%rip), %xmm4           # xmm4 = [5.0E-1,0.0E+0]
.Ltmp357:
	.p2align	4, 0x90
.LBB0_145:                              # %for.body636.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:pts_seek_offset <- $rcx
	#DEBUG_VALUE: parse_tcfile:num <- $rdx
	.loc	0 361 47 is_stmt 1              # x264_src/input/timecode.c:361:47
	movslq	96(%rbp), %rsi
	.loc	0 361 34 is_stmt 0              # x264_src/input/timecode.c:361:34
	addq	%rdx, %rsi
	.loc	0 361 91                        # x264_src/input/timecode.c:361:91
	movdqu	80(%rbp), %xmm5
	.loc	0 361 62                        # x264_src/input/timecode.c:361:62
	movdqa	%xmm5, %xmm6
	pand	%xmm0, %xmm6
	por	%xmm1, %xmm6
	psrlq	$32, %xmm5
	por	%xmm2, %xmm5
	subpd	%xmm3, %xmm5
	addpd	%xmm6, %xmm5
	.loc	0 361 86                        # x264_src/input/timecode.c:361:86
	movapd	%xmm5, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	divsd	%xmm5, %xmm6
	.loc	0 361 105                       # x264_src/input/timecode.c:361:105
	mulsd	(%r12,%rsi,8), %xmm6
	addsd	%xmm4, %xmm6
	.loc	0 361 23                        # x264_src/input/timecode.c:361:23
	cvttsd2si	%xmm6, %rsi
	.loc	0 361 21                        # x264_src/input/timecode.c:361:21
	movq	%rsi, (%rax,%rdx,8)
	.loc	0 362 12 is_stmt 1              # x264_src/input/timecode.c:362:12
	movq	104(%rbp), %rax
	.loc	0 362 21 is_stmt 0              # x264_src/input/timecode.c:362:21
	subq	%rcx, (%rax,%rdx,8)
.Ltmp358:
	.loc	0 363 16 is_stmt 1              # x264_src/input/timecode.c:363:16
	movq	104(%rbp), %rax
	.loc	0 363 13 is_stmt 0              # x264_src/input/timecode.c:363:13
	movq	(%rax,%rdx,8), %rsi
	.loc	0 363 25                        # x264_src/input/timecode.c:363:25
	cmpq	-8(%rax,%rdx,8), %rsi
.Ltmp359:
	.loc	0 363 13                        # x264_src/input/timecode.c:363:13
	jle	.LBB0_189
.Ltmp360:
# %bb.146:                              # %for.inc667.i
                                        #   in Loop: Header=BB0_145 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $rdx
	#DEBUG_VALUE: parse_tcfile:pts_seek_offset <- $rcx
	.loc	0 359 47 is_stmt 1              # x264_src/input/timecode.c:359:47
	incq	%rdx
.Ltmp361:
	#DEBUG_VALUE: parse_tcfile:num <- $rdx
	.loc	0 359 28 is_stmt 0              # x264_src/input/timecode.c:359:28
	movslq	100(%rbp), %rsi
	.loc	0 359 23                        # x264_src/input/timecode.c:359:23
	cmpq	%rsi, %rdx
.Ltmp362:
	.loc	0 359 5                         # x264_src/input/timecode.c:359:5
	jl	.LBB0_145
.Ltmp363:
.LBB0_147:                              # %if.end58
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 370 5 is_stmt 1               # x264_src/input/timecode.c:370:5
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp364:
	.loc	0 440 5                         # x264_src/input/timecode.c:440:5
	movq	%r14, %rdi
	callq	fclose@PLT
.Ltmp365:
	.loc	0 442 29                        # x264_src/input/timecode.c:442:29
	movdqu	80(%rbp), %xmm0
	.loc	0 442 26 is_stmt 0              # x264_src/input/timecode.c:442:26
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	.loc	0 442 24                        # x264_src/input/timecode.c:442:24
	movq	%xmm0, 32(%rbx)
	.loc	0 444 15 is_stmt 1              # x264_src/input/timecode.c:444:15
	movl	$1, 40(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_197
.Ltmp366:
.LBB0_148:                              # %if.then589.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 342 30                        # x264_src/input/timecode.c:342:30
	movq	80(%rbp), %rsi
	.loc	0 342 47 is_stmt 0              # x264_src/input/timecode.c:342:47
	movq	88(%rbp), %rcx
	#DEBUG_VALUE: gcd:b <- $rcx
	#DEBUG_VALUE: gcd:a <- $rsi
	movq	%rsi, %rax
	movq	%rcx, %rdx
	jmp	.LBB0_150
.Ltmp367:
	.p2align	4, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_150 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	xorl	%edx, %edx
	divl	%edi
.Ltmp368:
                                        # kill: def $edx killed $edx def $rdx
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp369:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp370:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	je	.LBB0_152
.Ltmp371:
.LBB0_150:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	movq	%rdx, %rdi
.Ltmp372:
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB0_151
.Ltmp373:
# %bb.149:                              #   in Loop: Header=BB0_150 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	cqto
.Ltmp374:
	idivq	%rdi
.Ltmp375:
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp376:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp377:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	jne	.LBB0_150
.Ltmp378:
.LBB0_152:                              # %gcd.exit.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	.loc	0 343 25 is_stmt 1              # x264_src/input/timecode.c:343:25
	movq	%rsi, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB0_176
.Ltmp379:
# %bb.153:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %r8d
	jmp	.LBB0_177
.Ltmp380:
.LBB0_154:                              # %lor.lhs.false233.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 0 25 is_stmt 0                # x264_src/input/timecode.c:0:25
	movq	88(%rsp), %rax                  # 8-byte Reload
.Ltmp381:
	.loc	0 210 37 is_stmt 1              # x264_src/input/timecode.c:210:37
	cmpl	$0, (%rax)
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.Ltmp382:
	.loc	0 210 13 is_stmt 0              # x264_src/input/timecode.c:210:13
	je	.LBB0_188
.Ltmp383:
# %bb.155:                              # %if.then246.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 211 32 is_stmt 1              # x264_src/input/timecode.c:211:32
	movq	112(%rbp), %xmm0                # xmm0 = mem[0],zero
.Ltmp384:
	.loc	0 211 13 is_stmt 0              # x264_src/input/timecode.c:211:13
	movslq	32(%rsp), %rdx                  # 4-byte Folded Reload
	.loc	0 211 27                        # x264_src/input/timecode.c:211:27
	movq	%xmm0, (%r15,%rdx,8)
.Ltmp385:
	.loc	0 217 56 is_stmt 1              # x264_src/input/timecode.c:217:56
	incl	%edx
	.loc	0 217 17 is_stmt 0              # x264_src/input/timecode.c:217:17
	movq	%r15, %rdi
	movq	%rbp, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	try_mkv_timebase_den
.Ltmp386:
	.loc	0 217 62                        # x264_src/input/timecode.c:217:62
	testl	%eax, %eax
.Ltmp387:
	.loc	0 217 17                        # x264_src/input/timecode.c:217:17
	js	.LBB0_190
.Ltmp388:
# %bb.156:                              # %if.end252.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 219 13 is_stmt 1              # x264_src/input/timecode.c:219:13
	movq	%r14, %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp389:
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	0 220 43 is_stmt 1              # x264_src/input/timecode.c:220:43
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	#DEBUG_VALUE: sigexp10:value <- $xmm0
.Ltmp390:
	#DEBUG_VALUE: sigexp10:exponent <- undef
	.loc	0 0 43 is_stmt 0                # x264_src/input/timecode.c:0:43
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp391:
	#DEBUG_VALUE: sigexp10:value <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 47 33 is_stmt 1               # x264_src/input/timecode.c:47:33
	callq	log10@PLT
.Ltmp392:
	.loc	0 47 26 is_stmt 0               # x264_src/input/timecode.c:47:26
	callq	floor@PLT
.Ltmp393:
	movaps	%xmm0, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	.loc	0 47 17                         # x264_src/input/timecode.c:47:17
	callq	pow@PLT
.Ltmp394:
	#DEBUG_VALUE: exponent <- $xmm0
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
.Ltmp395:
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	0 48 18 is_stmt 1               # x264_src/input/timecode.c:48:18
	divsd	%xmm0, %xmm1
.Ltmp396:
	#DEBUG_VALUE: assume_fps_sig <- $xmm1
	.loc	0 0 18 is_stmt 0                # x264_src/input/timecode.c:0:18
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
.Ltmp397:
	.loc	0 221 71 is_stmt 1              # x264_src/input/timecode.c:221:71
	divsd	%xmm1, %xmm0
	.loc	0 221 47 is_stmt 0              # x264_src/input/timecode.c:221:47
	callq	round@PLT
.Ltmp398:
	.loc	0 221 90                        # x264_src/input/timecode.c:221:90
	divsd	72(%rsp), %xmm0                 # 8-byte Folded Reload
	.loc	0 221 43                        # x264_src/input/timecode.c:221:43
	movsd	.LCPI0_8(%rip), %xmm1           # xmm1 = [1.0E+9,0.0E+0]
	divsd	%xmm0, %xmm1
.Ltmp399:
	#DEBUG_VALUE: assume_fps <- $xmm1
	#DEBUG_VALUE: parse_tcfile:num <- 0
	.loc	0 0 43                          # x264_src/input/timecode.c:0:43
	movapd	%xmm1, %xmm0
	cmpl	$2, 120(%rsp)                   # 4-byte Folded Reload
.Ltmp400:
	.loc	0 222 13 is_stmt 1              # x264_src/input/timecode.c:222:13
	jl	.LBB0_137
.Ltmp401:
# %bb.157:                              # %for.body263.lr.ph.lr.ph.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- 0
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 13 is_stmt 0                # x264_src/input/timecode.c:0:13
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp402:
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	divsd	%xmm0, %xmm2
	.loc	0 222 13                        # x264_src/input/timecode.c:222:13
	movl	48(%rsp), %r13d                 # 4-byte Reload
	leaq	128(%rsp), %r15
	movabsq	$34359747584, %rbp              # imm = 0x800002400
	xorl	%ebx, %ebx
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
.Ltmp403:
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	jmp	.LBB0_159
.Ltmp404:
.LBB0_158:                              # %for.cond259.loopexit.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $eax
	movl	%eax, %ebx
	cmpl	%r8d, %eax
	.loc	0 222 13                        # x264_src/input/timecode.c:222:13
	jge	.LBB0_187
.Ltmp405:
	.p2align	4, 0x90
.LBB0_159:                              # %for.body263.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_171 Depth 2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 224 17 is_stmt 1              # x264_src/input/timecode.c:224:17
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
.Ltmp406:
	.loc	0 225 21                        # x264_src/input/timecode.c:225:21
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	.loc	0 225 36 is_stmt 0              # x264_src/input/timecode.c:225:36
	ja	.LBB0_161
.Ltmp407:
# %bb.160:                              # %for.body263.us.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 36                          # x264_src/input/timecode.c:0:36
	btq	%rax, %rbp
	jb	.LBB0_159
.Ltmp408:
.LBB0_161:                              # %if.end281.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 227 23 is_stmt 1              # x264_src/input/timecode.c:227:23
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp409:
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	.loc	0 228 25                        # x264_src/input/timecode.c:228:25
	cmpl	$3, %eax
.Ltmp410:
	.loc	0 228 21 is_stmt 0              # x264_src/input/timecode.c:228:21
	je	.LBB0_163
.Ltmp411:
# %bb.162:                              # %if.then286.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 21                          # x264_src/input/timecode.c:0:21
	movl	48(%rsp), %eax                  # 4-byte Reload
.Ltmp412:
	.loc	0 229 33 is_stmt 1              # x264_src/input/timecode.c:229:33
	movl	%eax, (%rsp)
.Ltmp413:
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	.loc	0 229 27 is_stmt 0              # x264_src/input/timecode.c:229:27
	movl	%eax, 4(%rsp)
.Ltmp414:
.LBB0_163:                              # %if.end288.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 230 41 is_stmt 1              # x264_src/input/timecode.c:230:41
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	#DEBUG_VALUE: sigexp10:value <- $xmm0
.Ltmp415:
	#DEBUG_VALUE: sigexp10:exponent <- undef
	.loc	0 0 41 is_stmt 0                # x264_src/input/timecode.c:0:41
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
.Ltmp416:
	#DEBUG_VALUE: sigexp10:value <- [DW_OP_plus_uconst 72, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 47 33 is_stmt 1               # x264_src/input/timecode.c:47:33
	callq	log10@PLT
.Ltmp417:
	.loc	0 47 26 is_stmt 0               # x264_src/input/timecode.c:47:26
	callq	floor@PLT
.Ltmp418:
	movaps	%xmm0, %xmm1
	.loc	0 47 17                         # x264_src/input/timecode.c:47:17
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
.Ltmp419:
	#DEBUG_VALUE: exponent <- $xmm0
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
.Ltmp420:
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	0 48 18 is_stmt 1               # x264_src/input/timecode.c:48:18
	divsd	%xmm0, %xmm1
.Ltmp421:
	#DEBUG_VALUE: seq_fps_sig <- $xmm1
	.loc	0 0 18 is_stmt 0                # x264_src/input/timecode.c:0:18
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
.Ltmp422:
	.loc	0 231 72 is_stmt 1              # x264_src/input/timecode.c:231:72
	divsd	%xmm1, %xmm0
	.loc	0 231 48 is_stmt 0              # x264_src/input/timecode.c:231:48
	callq	round@PLT
.Ltmp423:
	.loc	0 231 88                        # x264_src/input/timecode.c:231:88
	divsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	.loc	0 231 44                        # x264_src/input/timecode.c:231:44
	movsd	.LCPI0_8(%rip), %xmm1           # xmm1 = [1.0E+9,0.0E+0]
	divsd	%xmm0, %xmm1
	.loc	0 231 25                        # x264_src/input/timecode.c:231:25
	movsd	%xmm1, 80(%rsp)
	movl	4(%rsp), %eax
	movl	48(%rsp), %r8d                  # 4-byte Reload
	.loc	0 232 17 is_stmt 1              # x264_src/input/timecode.c:232:17
	cmpl	%eax, %r8d
	movl	%eax, %edx
	cmovll	%r8d, %edx
.Ltmp424:
	#DEBUG_VALUE: parse_tcfile:num <- undef
	.loc	0 232 36 is_stmt 0              # x264_src/input/timecode.c:232:36
	cmpl	%edx, %ebx
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
.Ltmp425:
	.loc	0 232 17                        # x264_src/input/timecode.c:232:17
	jge	.LBB0_169
.Ltmp426:
# %bb.164:                              # %for.body301.preheader.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movslq	%ebx, %rsi
.Ltmp427:
	.loc	0 233 42 is_stmt 1              # x264_src/input/timecode.c:233:42
	movsd	(%r12,%rsi,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp428:
	.loc	0 232 17                        # x264_src/input/timecode.c:232:17
	movl	%edx, %edi
	subl	%ebx, %edi
	andl	$3, %edi
	je	.LBB0_173
.Ltmp429:
# %bb.165:                              # %for.body301.i.prol.preheader
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	shll	$3, %edi
	movq	%rsi, %rcx
.Ltmp430:
	.p2align	4, 0x90
.LBB0_166:                              # %for.body301.i.prol
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	.loc	0 233 57                        # x264_src/input/timecode.c:233:57
	addsd	%xmm2, %xmm0
	.loc	0 233 40 is_stmt 0              # x264_src/input/timecode.c:233:40
	movsd	%xmm0, 8(%r12,%rcx,8)
	.loc	0 233 35                        # x264_src/input/timecode.c:233:35
	incq	%rcx
.Ltmp431:
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	.loc	0 232 17 is_stmt 1              # x264_src/input/timecode.c:232:17
	addq	$-8, %rdi
	jne	.LBB0_166
.Ltmp432:
# %bb.167:                              # %for.body301.i.prol.loopexit
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 232 0 is_stmt 0               # x264_src/input/timecode.c:232:0
	movslq	%edx, %rdx
	.loc	0 232 17                        # x264_src/input/timecode.c:232:17
	subq	%rdx, %rsi
	cmpq	$-4, %rsi
	ja	.LBB0_169
.Ltmp433:
	.p2align	4, 0x90
.LBB0_168:                              # %for.body301.i
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	.loc	0 233 57 is_stmt 1              # x264_src/input/timecode.c:233:57
	addsd	%xmm2, %xmm0
	.loc	0 233 40 is_stmt 0              # x264_src/input/timecode.c:233:40
	movsd	%xmm0, 8(%r12,%rcx,8)
.Ltmp434:
	#DEBUG_VALUE: parse_tcfile:num <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rcx
	.loc	0 233 57                        # x264_src/input/timecode.c:233:57
	addsd	%xmm2, %xmm0
	.loc	0 233 40                        # x264_src/input/timecode.c:233:40
	movsd	%xmm0, 16(%r12,%rcx,8)
.Ltmp435:
	#DEBUG_VALUE: parse_tcfile:num <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rcx
	.loc	0 233 57                        # x264_src/input/timecode.c:233:57
	addsd	%xmm2, %xmm0
	.loc	0 233 40                        # x264_src/input/timecode.c:233:40
	movsd	%xmm0, 24(%r12,%rcx,8)
.Ltmp436:
	#DEBUG_VALUE: parse_tcfile:num <- [DW_OP_plus_uconst 3, DW_OP_stack_value] $rcx
	.loc	0 233 57                        # x264_src/input/timecode.c:233:57
	addsd	%xmm2, %xmm0
	.loc	0 233 40                        # x264_src/input/timecode.c:233:40
	movsd	%xmm0, 32(%r12,%rcx,8)
	.loc	0 233 35                        # x264_src/input/timecode.c:233:35
	addq	$4, %rcx
.Ltmp437:
	#DEBUG_VALUE: parse_tcfile:num <- $rcx
	.loc	0 232 36 is_stmt 1              # x264_src/input/timecode.c:232:36
	cmpq	%rcx, %rdx
.Ltmp438:
	.loc	0 232 17 is_stmt 0              # x264_src/input/timecode.c:232:17
	jne	.LBB0_168
.Ltmp439:
.LBB0_169:                              # %for.cond312.preheader.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movslq	(%rsp), %rcx
.Ltmp440:
	#DEBUG_VALUE: parse_tcfile:num <- undef
	.loc	0 234 39 is_stmt 1              # x264_src/input/timecode.c:234:39
	cmpl	%ecx, %eax
	setg	%dl
	.loc	0 234 46 is_stmt 0              # x264_src/input/timecode.c:234:46
	cmpl	%r8d, %eax
	setge	%sil
.Ltmp441:
	.loc	0 234 17                        # x264_src/input/timecode.c:234:17
	orb	%dl, %sil
	jne	.LBB0_158
.Ltmp442:
# %bb.170:                              # %for.body320.lr.ph.i
                                        #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movslq	%eax, %rdx
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	divsd	%xmm1, %xmm0
.Ltmp443:
	.loc	0 235 42 is_stmt 1              # x264_src/input/timecode.c:235:42
	movsd	(%r12,%rdx,8), %xmm1            # xmm1 = mem[0],zero
.Ltmp444:
	.p2align	4, 0x90
.LBB0_171:                              # %for.body320.i
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rdx
	.loc	0 235 57 is_stmt 0              # x264_src/input/timecode.c:235:57
	addsd	%xmm0, %xmm1
	.loc	0 235 35                        # x264_src/input/timecode.c:235:35
	leaq	1(%rdx), %rax
	.loc	0 235 40                        # x264_src/input/timecode.c:235:40
	movsd	%xmm1, 8(%r12,%rdx,8)
.Ltmp445:
	#DEBUG_VALUE: parse_tcfile:num <- $rax
	.loc	0 234 39 is_stmt 1              # x264_src/input/timecode.c:234:39
	cmpq	%rcx, %rdx
.Ltmp446:
	.loc	0 234 17 is_stmt 0              # x264_src/input/timecode.c:234:17
	jge	.LBB0_158
.Ltmp447:
# %bb.172:                              # %for.body320.i
                                        #   in Loop: Header=BB0_171 Depth=2
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $rax
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	%rax, %rdx
	.loc	0 234 17                        # x264_src/input/timecode.c:234:17
	cmpq	%r13, %rax
	jl	.LBB0_171
	jmp	.LBB0_158
.Ltmp448:
.LBB0_173:                              #   in Loop: Header=BB0_159 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	%rsi, %rcx
.Ltmp449:
	.loc	0 232 0 is_stmt 1               # x264_src/input/timecode.c:232:0
	movslq	%edx, %rdx
	.loc	0 232 17 is_stmt 0              # x264_src/input/timecode.c:232:17
	subq	%rdx, %rsi
	cmpq	$-4, %rsi
	jbe	.LBB0_168
	jmp	.LBB0_169
.Ltmp450:
.LBB0_174:                              # %if.then390.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: file_pos <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 264 22 is_stmt 1              # x264_src/input/timecode.c:264:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 264 13 is_stmt 0              # x264_src/input/timecode.c:264:13
	movl	$.L.str.16, %edi
	movl	$59, %esi
	jmp	.LBB0_94
.Ltmp451:
.LBB0_175:                              # %if.then40.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: prev_start <- -1
	#DEBUG_VALUE: prev_end <- -1
	.loc	0 140 22 is_stmt 1              # x264_src/input/timecode.c:140:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 140 13 is_stmt 0              # x264_src/input/timecode.c:140:13
	movl	$.L.str.11, %esi
	movb	$1, %al
	callq	fprintf@PLT
.Ltmp452:
	.loc	0 141 13 is_stmt 1              # x264_src/input/timecode.c:141:13
	jmp	.LBB0_193
.Ltmp453:
.LBB0_176:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	.loc	0 343 25                        # x264_src/input/timecode.c:343:25
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %r8
.Ltmp454:
.LBB0_177:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	movq	%r8, 80(%rbp)
	.loc	0 344 25                        # x264_src/input/timecode.c:344:25
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB0_179
.Ltmp455:
# %bb.178:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_180
.Ltmp456:
.LBB0_179:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
.Ltmp457:
.LBB0_180:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: i <- $rdi
	movq	%rax, 88(%rbp)
	.loc	0 345 18                        # x264_src/input/timecode.c:345:18
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
.Ltmp458:
	.loc	0 345 9 is_stmt 0               # x264_src/input/timecode.c:345:9
	movl	$.L.str.20, %esi
	movq	%r8, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp459:
	.loc	0 0 9                           # x264_src/input/timecode.c:0:9
	jmp	.LBB0_142
.Ltmp460:
.LBB0_181:                              # %if.then407.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- $ebx
	.loc	0 277 22 is_stmt 1              # x264_src/input/timecode.c:277:22
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp461:
	movq	(%rax), %rcx
	.loc	0 277 13 is_stmt 0              # x264_src/input/timecode.c:277:13
	movl	$.L.str.18, %edi
	movl	$51, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp462:
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	jmp	.LBB0_186
.Ltmp463:
.LBB0_182:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.Ltmp464:
	.loc	0 204 21 is_stmt 1              # x264_src/input/timecode.c:204:21
	jmp	.LBB0_190
.Ltmp465:
.LBB0_183:                              # %if.then608.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	.loc	0 349 18                        # x264_src/input/timecode.c:349:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 349 9 is_stmt 0               # x264_src/input/timecode.c:349:9
	movl	$.L.str.21, %edi
	movl	$116, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp466:
	.loc	0 351 9 is_stmt 1               # x264_src/input/timecode.c:351:9
	jmp	.LBB0_190
.Ltmp467:
.LBB0_184:                              # %if.then96.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 162 26                        # x264_src/input/timecode.c:162:26
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp468:
	movq	(%rax), %rdi
	leaq	128(%rsp), %rcx
	.loc	0 162 17 is_stmt 0              # x264_src/input/timecode.c:162:17
	movl	$.L.str.15, %esi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp469:
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	16(%rsp), %rbp                  # 8-byte Reload
	.loc	0 163 17 is_stmt 1              # x264_src/input/timecode.c:163:17
	jmp	.LBB0_193
.Ltmp470:
.LBB0_185:                              # %if.then449.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r15
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 289 26                        # x264_src/input/timecode.c:289:26
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp471:
	movq	(%rax), %rdi
	.loc	0 289 17 is_stmt 0              # x264_src/input/timecode.c:289:17
	movl	$.L.str.19, %esi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp472:
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movq	16(%rsp), %rbp                  # 8-byte Reload
.Ltmp473:
.LBB0_186:                              # %if.then671.thread.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 375 9 is_stmt 1               # x264_src/input/timecode.c:375:9
	movq	%r12, %rdi
	jmp	.LBB0_192
.Ltmp474:
.LBB0_187:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:num <- $ebx
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 24, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 9 is_stmt 0                 # x264_src/input/timecode.c:0:9
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp475:
.LBB0_188:                              # %if.end334.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes_num <- [DW_OP_plus_uconst 120, DW_OP_deref] $rsp
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: assume_fps <- $xmm0
	#DEBUG_VALUE: assume_fps <- $xmm0
	.loc	0 238 13 is_stmt 1              # x264_src/input/timecode.c:238:13
	testq	%r15, %r15
.Ltmp476:
	.loc	0 238 13 is_stmt 0              # x264_src/input/timecode.c:238:13
	jne	.LBB0_137
	jmp	.LBB0_138
.Ltmp477:
.LBB0_189:                              # %fail.thread.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	#DEBUG_VALUE: parse_tcfile:fpss <- $r15
	#DEBUG_VALUE: parse_tcfile:num <- $rdx
	#DEBUG_VALUE: parse_tcfile:pts_seek_offset <- $rcx
	.loc	0 365 22 is_stmt 1              # x264_src/input/timecode.c:365:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 365 13 is_stmt 0              # x264_src/input/timecode.c:365:13
	movl	$.L.str.22, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp478:
	#DEBUG_LABEL: parse_tcfile:fail
.LBB0_190:                              # %if.then671.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 375 9 is_stmt 1               # x264_src/input/timecode.c:375:9
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp479:
	.loc	0 376 9                         # x264_src/input/timecode.c:376:9
	testq	%r15, %r15
.Ltmp480:
	.loc	0 376 9 is_stmt 0               # x264_src/input/timecode.c:376:9
	je	.LBB0_193
.Ltmp481:
# %bb.191:                              # %if.then674.i
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 377 9 is_stmt 1               # x264_src/input/timecode.c:377:9
	movq	%r15, %rdi
.Ltmp482:
.LBB0_192:                              # %if.then52
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- $r12
	.loc	0 0 0 is_stmt 0                 # x264_src/input/timecode.c:0:0
	callq	free@PLT
.Ltmp483:
.LBB0_193:                              # %if.then52
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	.loc	0 435 16 is_stmt 1              # x264_src/input/timecode.c:435:16
	movq	104(%rbp), %rdi
	.loc	0 435 13 is_stmt 0              # x264_src/input/timecode.c:435:13
	testq	%rdi, %rdi
.Ltmp484:
	.loc	0 435 13                        # x264_src/input/timecode.c:435:13
	je	.LBB0_195
.Ltmp485:
# %bb.194:                              # %if.then54
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	.loc	0 436 13 is_stmt 1              # x264_src/input/timecode.c:436:13
	callq	free@PLT
.Ltmp486:
.LBB0_195:                              # %if.end56
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	.loc	0 437 9                         # x264_src/input/timecode.c:437:9
	movq	%r14, %rdi
	callq	fclose@PLT
.Ltmp487:
.LBB0_196:                              # %cleanup
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 0 9 is_stmt 0                 # x264_src/input/timecode.c:0:9
	movl	$-1, %eax
.Ltmp488:
.LBB0_197:                              # %cleanup
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 447 1 epilogue_begin is_stmt 1 # x264_src/input/timecode.c:447:1
	addq	$392, %rsp                      # imm = 0x188
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
.Ltmp489:
.LBB0_198:                              # %if.then82.i
	.cfi_def_cfa_offset 448
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:tcfile_in <- $r14
	#DEBUG_VALUE: end <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:tcfile_in <- $r14
	#DEBUG_VALUE: parse_tcfile:h <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:info <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:timecodes <- 0
	#DEBUG_VALUE: parse_tcfile:fpss <- 0
	#DEBUG_VALUE: parse_tcfile:ret <- $eax
	#DEBUG_VALUE: parse_tcfile:num <- $r12d
	#DEBUG_VALUE: prev_start <- $ebx
	#DEBUG_VALUE: prev_end <- $r15d
	#DEBUG_VALUE: file_pos <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_tcfile:seq_num <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 157 26                        # x264_src/input/timecode.c:157:26
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp490:
	movq	(%rax), %rcx
	.loc	0 157 17 is_stmt 0              # x264_src/input/timecode.c:157:17
	movl	$.L.str.14, %edi
	movl	$39, %esi
	jmp	.LBB0_94
.Ltmp491:
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	10 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	11 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "mathcalls.h" md5 0x8c6e2d0d2bda65bc5ba1ca02b65383b7
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: get_frame_total:handle <- $rdi
	#DEBUG_VALUE: get_frame_total:h <- $rdi
	.loc	0 452 15 prologue_end is_stmt 1 # x264_src/input/timecode.c:452:15
	movl	64(%rdi), %eax
	.loc	0 452 5 is_stmt 0               # x264_src/input/timecode.c:452:5
	retq
.Ltmp492:
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function read_frame
.LCPI2_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI2_5:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	4294967295                      # 0xffffffff
	.quad	4294967295                      # 0xffffffff
.LCPI2_2:
	.quad	4841369599423283200             # 0x4330000000000000
	.quad	4841369599423283200             # 0x4330000000000000
.LCPI2_3:
	.quad	4985484787499139072             # 0x4530000000000000
	.quad	4985484787499139072             # 0x4530000000000000
.LCPI2_4:
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.p2align	4, 0x90
	.type	read_frame,@function
read_frame:                             # @read_frame
.Lfunc_begin2:
	.loc	0 456 0 is_stmt 1               # x264_src/input/timecode.c:456:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: read_frame:p_pic <- $rdi
	#DEBUG_VALUE: read_frame:handle <- $rsi
	#DEBUG_VALUE: read_frame:i_frame <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
.Ltmp493:
	#DEBUG_VALUE: read_frame:h <- $rsi
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp494:
	.loc	0 458 46 prologue_end           # x264_src/input/timecode.c:458:46
	movq	56(%rsi), %rsi
.Ltmp495:
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame:handle <- $r14
	.loc	0 458 15 is_stmt 0              # x264_src/input/timecode.c:458:15
	callq	*24(%r14)
.Ltmp496:
	#DEBUG_VALUE: read_frame:i_frame <- $ebp
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:ret <- $eax
	.loc	0 460 22 is_stmt 1              # x264_src/input/timecode.c:460:22
	movslq	96(%r14), %rdx
	.loc	0 460 17 is_stmt 0              # x264_src/input/timecode.c:460:17
	movslq	%ebp, %rcx
	subq	%rdx, %rcx
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movq	104(%r14), %rdx
	.loc	0 460 27                        # x264_src/input/timecode.c:460:27
	cmpl	100(%r14), %ecx
.Ltmp497:
	.loc	0 460 9                         # x264_src/input/timecode.c:460:9
	jge	.LBB2_2
.Ltmp498:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebp
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame:ret <- $eax
	.loc	0 463 24 is_stmt 1              # x264_src/input/timecode.c:463:24
	movq	(%rdx,%rcx,8), %rcx
	.loc	0 464 5                         # x264_src/input/timecode.c:464:5
	jmp	.LBB2_5
.Ltmp499:
.LBB2_2:                                # %if.else
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebp
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame:ret <- $eax
	.loc	0 467 13                        # x264_src/input/timecode.c:467:13
	testq	%rdx, %rdx
.Ltmp500:
	.loc	0 467 13 is_stmt 0              # x264_src/input/timecode.c:467:13
	jne	.LBB2_3
.Ltmp501:
.LBB2_4:                                # %if.end
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movsd	.LCPI2_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	.loc	0 474 31 is_stmt 1              # x264_src/input/timecode.c:474:31
	divsd	112(%r14), %xmm0
	.loc	0 474 26 is_stmt 0              # x264_src/input/timecode.c:474:26
	addsd	120(%r14), %xmm0
	movsd	%xmm0, 120(%r14)
	.loc	0 475 84 is_stmt 1              # x264_src/input/timecode.c:475:84
	movdqu	80(%r14), %xmm1
	movdqa	.LCPI2_1(%rip), %xmm2           # xmm2 = [4294967295,4294967295]
	.loc	0 475 55 is_stmt 0              # x264_src/input/timecode.c:475:55
	pand	%xmm1, %xmm2
	por	.LCPI2_2(%rip), %xmm2
	psrlq	$32, %xmm1
	por	.LCPI2_3(%rip), %xmm1
	subpd	.LCPI2_4(%rip), %xmm1
	addpd	%xmm2, %xmm1
	.loc	0 475 79                        # x264_src/input/timecode.c:475:79
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm1, %xmm2
	.loc	0 475 98                        # x264_src/input/timecode.c:475:98
	mulsd	%xmm0, %xmm2
	addsd	.LCPI2_5(%rip), %xmm2
	.loc	0 475 24                        # x264_src/input/timecode.c:475:24
	cvttsd2si	%xmm2, %rcx
.Ltmp502:
.LBB2_5:                                # %if.end14
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 0 0                           # x264_src/input/timecode.c:0:0
	movq	%rcx, 16(%rbx)
.Ltmp503:
	.loc	0 478 5 epilogue_begin is_stmt 1 # x264_src/input/timecode.c:478:5
	popq	%rbx
.Ltmp504:
	#DEBUG_VALUE: read_frame:p_pic <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp505:
	#DEBUG_VALUE: read_frame:handle <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp506:
.LBB2_3:                                # %if.then4
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: read_frame:p_pic <- $rbx
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebp
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame:ret <- $eax
	.loc	0 469 22                        # x264_src/input/timecode.c:469:22
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	.loc	0 470 91                        # x264_src/input/timecode.c:470:91
	movsd	112(%r14), %xmm0                # xmm0 = mem[0],zero
	.loc	0 469 13                        # x264_src/input/timecode.c:469:13
	movl	$.L.str.25, %esi
	movl	%ebp, %edx
	movl	%eax, %ebp
.Ltmp507:
	#DEBUG_VALUE: read_frame:ret <- $ebp
	#DEBUG_VALUE: read_frame:i_frame <- $edx
	movb	$1, %al
	callq	fprintf@PLT
.Ltmp508:
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 471 22                        # x264_src/input/timecode.c:471:22
	movq	104(%r14), %rdi
	.loc	0 471 13 is_stmt 0              # x264_src/input/timecode.c:471:13
	callq	free@PLT
.Ltmp509:
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movl	%ebp, %eax
	.loc	0 472 20 is_stmt 1              # x264_src/input/timecode.c:472:20
	movq	$0, 104(%r14)
	jmp	.LBB2_4
.Ltmp510:
.Lfunc_end2:
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function release_frame
	.type	release_frame,@function
release_frame:                          # @release_frame
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: release_frame:pic <- $rdi
	#DEBUG_VALUE: release_frame:handle <- $rsi
	#DEBUG_VALUE: release_frame:h <- $rsi
	.loc	0 484 18 prologue_end           # x264_src/input/timecode.c:484:18
	movq	32(%rsi), %rax
	.loc	0 484 9 is_stmt 0               # x264_src/input/timecode.c:484:9
	testq	%rax, %rax
.Ltmp511:
	.loc	0 484 9                         # x264_src/input/timecode.c:484:9
	je	.LBB3_1
.Ltmp512:
# %bb.2:                                # %if.then
	#DEBUG_VALUE: release_frame:pic <- $rdi
	#DEBUG_VALUE: release_frame:handle <- $rsi
	#DEBUG_VALUE: release_frame:h <- $rsi
	.loc	0 485 48 is_stmt 1              # x264_src/input/timecode.c:485:48
	movq	56(%rsi), %rsi
.Ltmp513:
	#DEBUG_VALUE: release_frame:handle <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 485 16 is_stmt 0              # x264_src/input/timecode.c:485:16
	jmpq	*%rax                           # TAILCALL
.Ltmp514:
.LBB3_1:                                # %cleanup
	#DEBUG_VALUE: release_frame:pic <- $rdi
	#DEBUG_VALUE: release_frame:handle <- $rsi
	#DEBUG_VALUE: release_frame:h <- $rsi
	.loc	0 487 1 is_stmt 1               # x264_src/input/timecode.c:487:1
	xorl	%eax, %eax
	retq
.Ltmp515:
.Lfunc_end3:
	.size	release_frame, .Lfunc_end3-release_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
.Lfunc_begin4:
	.loc	0 490 0                         # x264_src/input/timecode.c:490:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: close_file:handle <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
.Ltmp516:
	#DEBUG_VALUE: close_file:h <- $rdi
	movq	%rdi, %rbx
.Ltmp517:
	.loc	0 492 12 prologue_end           # x264_src/input/timecode.c:492:12
	movq	104(%rdi), %rdi
.Ltmp518:
	#DEBUG_VALUE: close_file:h <- $rbx
	#DEBUG_VALUE: close_file:handle <- $rbx
	.loc	0 492 9 is_stmt 0               # x264_src/input/timecode.c:492:9
	testq	%rdi, %rdi
.Ltmp519:
	.loc	0 492 9                         # x264_src/input/timecode.c:492:9
	je	.LBB4_2
.Ltmp520:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: close_file:handle <- $rbx
	#DEBUG_VALUE: close_file:h <- $rbx
	.loc	0 493 9 is_stmt 1               # x264_src/input/timecode.c:493:9
	callq	free@PLT
.Ltmp521:
.LBB4_2:                                # %if.end
	#DEBUG_VALUE: close_file:handle <- $rbx
	#DEBUG_VALUE: close_file:h <- $rbx
	.loc	0 494 29                        # x264_src/input/timecode.c:494:29
	movq	56(%rbx), %rdi
	.loc	0 494 5 is_stmt 0               # x264_src/input/timecode.c:494:5
	callq	*48(%rbx)
.Ltmp522:
	.loc	0 495 5 is_stmt 1               # x264_src/input/timecode.c:495:5
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp523:
	.loc	0 496 5                         # x264_src/input/timecode.c:496:5
	xorl	%eax, %eax
	.loc	0 496 5 epilogue_begin is_stmt 0 # x264_src/input/timecode.c:496:5
	popq	%rbx
.Ltmp524:
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp525:
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function correct_fps
.LCPI5_0:
	.quad	0x4024000000000000              # double 10
.LCPI5_3:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI5_5:
	.quad	0x3ed4f8b588e368f1              # double 5.0000000000000004E-6
.LCPI5_6:
	.quad	0xbff0000000000000              # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI5_4:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.text
	.p2align	4, 0x90
	.type	correct_fps,@function
correct_fps:                            # @correct_fps
.Lfunc_begin5:
	.loc	0 55 0 is_stmt 1                # x264_src/input/timecode.c:55:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: correct_fps:fps <- $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rdi
	#DEBUG_VALUE: sigexp10:value <- $xmm0
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
.Ltmp526:
	#DEBUG_VALUE: correct_fps:i <- 1
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
.Ltmp527:
	#DEBUG_VALUE: sigexp10:value <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 47 33 prologue_end            # x264_src/input/timecode.c:47:33
	callq	log10@PLT
.Ltmp528:
	#DEBUG_VALUE: correct_fps:h <- $rbx
	.loc	0 47 26 is_stmt 0               # x264_src/input/timecode.c:47:26
	callq	floor@PLT
.Ltmp529:
	movaps	%xmm0, %xmm1
	movsd	.LCPI5_0(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	.loc	0 47 17                         # x264_src/input/timecode.c:47:17
	callq	pow@PLT
.Ltmp530:
	#DEBUG_VALUE: correct_fps:exponent <- $xmm0
	#DEBUG_VALUE: correct_fps:fps_sig <- undef
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp531:
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	80(%rbx), %r14
.Ltmp532:
	.loc	0 63 26 is_stmt 1               # x264_src/input/timecode.c:63:26
	movq	%r14, %xmm3
	punpckldq	.LCPI5_1(%rip), %xmm3   # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1]
	movsd	(%rsp), %xmm2                   # 8-byte Reload
                                        # xmm2 = mem[0],zero
.Ltmp533:
	.loc	0 48 18                         # x264_src/input/timecode.c:48:18
	divsd	%xmm0, %xmm2
.Ltmp534:
	#DEBUG_VALUE: correct_fps:fps_sig <- $xmm2
	.loc	0 63 26                         # x264_src/input/timecode.c:63:26
	subpd	.LCPI5_2(%rip), %xmm3
	movapd	%xmm3, %xmm1
	unpckhpd	%xmm3, %xmm1                    # xmm1 = xmm1[1],xmm3[1]
	addsd	%xmm3, %xmm1
	movsd	%xmm2, (%rsp)                   # 8-byte Spill
.Ltmp535:
	#DEBUG_VALUE: sigexp10:value <- undef
	#DEBUG_VALUE: correct_fps:fps <- undef
	.loc	0 63 34 is_stmt 0               # x264_src/input/timecode.c:63:34
	movapd	%xmm2, %xmm0
	movapd	%xmm1, 16(%rsp)                 # 16-byte Spill
	mulsd	%xmm1, %xmm0
	.loc	0 63 19                         # x264_src/input/timecode.c:63:19
	callq	round@PLT
.Ltmp536:
	.loc	0 0 19                          # x264_src/input/timecode.c:0:19
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.loc	0 63 46                         # x264_src/input/timecode.c:63:46
	mulsd	%xmm3, %xmm0
	.loc	0 63 19                         # x264_src/input/timecode.c:63:19
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI5_3(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
.Ltmp537:
	.loc	0 64 21 is_stmt 1               # x264_src/input/timecode.c:64:21
	movq	%rsi, %rax
	shrq	$32, %rax
.Ltmp538:
	.loc	0 64 13 is_stmt 0               # x264_src/input/timecode.c:64:13
	jne	.LBB5_4
.Ltmp539:
# %bb.1:                                # %if.end.preheader
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- 1
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 60 5 is_stmt 1                # x264_src/input/timecode.c:60:5
	leaq	(%r14,%r14), %r15
.Ltmp540:
	.p2align	4, 0x90
.LBB5_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_minus, DW_OP_LLVM_arg 1, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15, $r14
	.loc	0 70 20                         # x264_src/input/timecode.c:70:20
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rsi, %xmm0
	.loc	0 70 36 is_stmt 0               # x264_src/input/timecode.c:70:36
	divsd	16(%rsp), %xmm0                 # 16-byte Folded Reload
	.loc	0 70 47                         # x264_src/input/timecode.c:70:47
	movapd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	movsd	(%rsp), %xmm2                   # 8-byte Reload
                                        # xmm2 = mem[0],zero
	.loc	0 70 58                         # x264_src/input/timecode.c:70:58
	subsd	%xmm2, %xmm1
	.loc	0 70 13                         # x264_src/input/timecode.c:70:13
	andpd	.LCPI5_4(%rip), %xmm1
	.loc	0 70 70                         # x264_src/input/timecode.c:70:70
	movsd	.LCPI5_5(%rip), %xmm4           # xmm4 = [5.0000000000000004E-6,0.0E+0]
	ucomisd	%xmm1, %xmm4
.Ltmp541:
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	.loc	0 0 70                          # x264_src/input/timecode.c:0:70
	ja	.LBB5_5
.Ltmp542:
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movapd	%xmm2, %xmm1
.Ltmp543:
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_mul, DW_OP_minus, DW_OP_LLVM_arg 1, DW_OP_div, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] $r15, $r14
	#DEBUG_VALUE: correct_fps:fps_den <- $r15
	.loc	0 63 26 is_stmt 1               # x264_src/input/timecode.c:63:26
	movq	%r15, %xmm0
	punpckldq	.LCPI5_1(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI5_2(%rip), %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2                    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	.loc	0 63 34 is_stmt 0               # x264_src/input/timecode.c:63:34
	movapd	%xmm1, %xmm0
	movapd	%xmm2, 16(%rsp)                 # 16-byte Spill
	mulsd	%xmm2, %xmm0
	.loc	0 63 19                         # x264_src/input/timecode.c:63:19
	callq	round@PLT
.Ltmp544:
	.loc	0 0 19                          # x264_src/input/timecode.c:0:19
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.loc	0 63 46                         # x264_src/input/timecode.c:63:46
	mulsd	%xmm3, %xmm0
	.loc	0 63 19                         # x264_src/input/timecode.c:63:19
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI5_3(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
.Ltmp545:
	#DEBUG_VALUE: correct_fps:fps_num <- $rsi
	.loc	0 64 21 is_stmt 1               # x264_src/input/timecode.c:64:21
	movq	%rsi, %rax
	shrq	$32, %rax
.Ltmp546:
	.loc	0 64 13 is_stmt 0               # x264_src/input/timecode.c:64:13
	addq	%r14, %r15
.Ltmp547:
	.loc	0 64 21                         # x264_src/input/timecode.c:64:21
	testq	%rax, %rax
.Ltmp548:
	.loc	0 64 13                         # x264_src/input/timecode.c:64:13
	je	.LBB5_2
.Ltmp549:
.LBB5_4:                                # %if.then
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 66 22 is_stmt 1               # x264_src/input/timecode.c:66:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 66 13 is_stmt 0               # x264_src/input/timecode.c:66:13
	movl	$.L.str.23, %edi
	movl	$125, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp550:
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	movsd	.LCPI5_6(%rip), %xmm0           # xmm0 = [-1.0E+0,0.0E+0]
	.loc	0 68 13 is_stmt 1               # x264_src/input/timecode.c:68:13
	jmp	.LBB5_18
.Ltmp551:
.LBB5_5:                                # %while.end
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 74 9                          # x264_src/input/timecode.c:74:9
	cmpl	$0, 72(%rbx)
.Ltmp552:
	.loc	0 74 9 is_stmt 0                # x264_src/input/timecode.c:74:9
	je	.LBB5_18
.Ltmp553:
# %bb.6:                                # %if.then14
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 76 30 is_stmt 1               # x264_src/input/timecode.c:76:30
	movq	88(%rbx), %rcx
	.loc	0 76 27 is_stmt 0               # x264_src/input/timecode.c:76:27
	testq	%rcx, %rcx
	je	.LBB5_15
.Ltmp554:
# %bb.7:
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 0 27                          # x264_src/input/timecode.c:0:27
	movq	%rcx, %rax
	movq	%rsi, %rdx
	jmp	.LBB5_8
.Ltmp555:
	.p2align	4, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=1
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	cqto
.Ltmp556:
	idivq	%rdi
.Ltmp557:
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp558:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp559:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	je	.LBB5_12
.Ltmp560:
.LBB5_8:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	%rdx, %rdi
.Ltmp561:
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	jne	.LBB5_10
.Ltmp562:
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rdi
	#DEBUG_VALUE: gcd:a <- $rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
.Ltmp563:
                                        # kill: def $edx killed $edx def $rdx
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rdi, %rax
.Ltmp564:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp565:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	jne	.LBB5_8
.Ltmp566:
.LBB5_12:                               # %lcm.exit
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	1 46 16 is_stmt 1               # x264_src/muxers.h:46:16
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB5_13
.Ltmp567:
# %bb.14:
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	%rcx, %rax
	cqto
	idivq	%rdi
	.loc	1 46 32 is_stmt 0               # x264_src/muxers.h:46:32
	imulq	%rsi, %rax
.Ltmp568:
	.loc	0 76 25 is_stmt 1               # x264_src/input/timecode.c:76:25
	movq	%rax, 88(%rbx)
.Ltmp569:
	.loc	0 77 29                         # x264_src/input/timecode.c:77:29
	shrq	$32, %rax
.Ltmp570:
	.loc	0 77 13 is_stmt 0               # x264_src/input/timecode.c:77:13
	jne	.LBB5_17
	jmp	.LBB5_18
.Ltmp571:
.LBB5_15:                               # %cond.false
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 76 79 is_stmt 1               # x264_src/input/timecode.c:76:79
	movslq	%esi, %rax
	.loc	0 76 25 is_stmt 0               # x264_src/input/timecode.c:76:25
	movq	%rax, 88(%rbx)
.Ltmp572:
	.loc	0 77 29 is_stmt 1               # x264_src/input/timecode.c:77:29
	shrq	$32, %rax
.Ltmp573:
	.loc	0 77 13 is_stmt 0               # x264_src/input/timecode.c:77:13
	je	.LBB5_18
.Ltmp574:
.LBB5_17:                               # %if.then24
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 78 34 is_stmt 1               # x264_src/input/timecode.c:78:34
	movl	$0, 72(%rbx)
.Ltmp575:
.LBB5_18:                               # %cleanup
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 81 1 epilogue_begin           # x264_src/input/timecode.c:81:1
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
.Ltmp576:
	#DEBUG_VALUE: correct_fps:h <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp577:
.LBB5_13:
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: correct_fps:fps <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: correct_fps:h <- $rbx
	#DEBUG_VALUE: correct_fps:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	#DEBUG_VALUE: correct_fps:exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: correct_fps:fps_sig <- [DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	1 46 16                         # x264_src/muxers.h:46:16
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	.loc	1 46 32 is_stmt 0               # x264_src/muxers.h:46:32
	imulq	%rsi, %rax
.Ltmp578:
	.loc	0 76 25 is_stmt 1               # x264_src/input/timecode.c:76:25
	movq	%rax, 88(%rbx)
.Ltmp579:
	.loc	0 77 29                         # x264_src/input/timecode.c:77:29
	shrq	$32, %rax
.Ltmp580:
	.loc	0 77 13 is_stmt 0               # x264_src/input/timecode.c:77:13
	jne	.LBB5_17
	jmp	.LBB5_18
.Ltmp581:
.Lfunc_end5:
	.size	correct_fps, .Lfunc_end5-correct_fps
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function try_mkv_timebase_den
.LCPI6_0:
	.quad	0x4024000000000000              # double 10
.LCPI6_1:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI6_2:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
	.text
	.p2align	4, 0x90
	.type	try_mkv_timebase_den,@function
try_mkv_timebase_den:                   # @try_mkv_timebase_den
.Lfunc_begin6:
	.loc	0 84 0 is_stmt 1                # x264_src/input/timecode.c:84:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $rdi
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rsi
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $edx
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
	.loc	0 85 21 prologue_end            # x264_src/input/timecode.c:85:21
	movq	$0, 80(%rsi)
	.loc	0 86 21                         # x264_src/input/timecode.c:86:21
	movq	$1000000000, 88(%rsi)           # imm = 0x3B9ACA00
.Ltmp582:
	#DEBUG_VALUE: num <- 0
	.loc	0 87 27                         # x264_src/input/timecode.c:87:27
	testl	%edx, %edx
.Ltmp583:
	.loc	0 87 5 is_stmt 0                # x264_src/input/timecode.c:87:5
	jle	.LBB6_1
.Ltmp584:
# %bb.2:                                # %for.body.preheader
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $rdi
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rsi
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $edx
	#DEBUG_VALUE: num <- 0
	.loc	0 0 5                           # x264_src/input/timecode.c:0:5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	.loc	0 87 5                          # x264_src/input/timecode.c:87:5
	movl	%edx, %r12d
.Ltmp585:
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	.loc	0 0 5                           # x264_src/input/timecode.c:0:5
	movb	$1, %bpl
	xorl	%r13d, %r13d
	leaq	1(%rax), %r15
.Ltmp586:
	.p2align	4, 0x90
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	.loc	0 91 36 is_stmt 1               # x264_src/input/timecode.c:91:36
	movsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
	#DEBUG_VALUE: sigexp10:value <- $xmm0
.Ltmp587:
	#DEBUG_VALUE: sigexp10:exponent <- undef
	.loc	0 0 36 is_stmt 0                # x264_src/input/timecode.c:0:36
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
.Ltmp588:
	#DEBUG_VALUE: sigexp10:value <- [DW_OP_plus_uconst 16, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 47 33 is_stmt 1               # x264_src/input/timecode.c:47:33
	callq	log10@PLT
.Ltmp589:
	.loc	0 47 26 is_stmt 0               # x264_src/input/timecode.c:47:26
	callq	floor@PLT
.Ltmp590:
	movaps	%xmm0, %xmm1
	.loc	0 47 17                         # x264_src/input/timecode.c:47:17
	movsd	.LCPI6_0(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
.Ltmp591:
	#DEBUG_VALUE: exponent <- $xmm0
	.loc	0 0 17                          # x264_src/input/timecode.c:0:17
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp592:
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	0 48 18 is_stmt 1               # x264_src/input/timecode.c:48:18
	divsd	%xmm0, %xmm1
.Ltmp593:
	#DEBUG_VALUE: fps_sig <- $xmm1
	.loc	0 92 43                         # x264_src/input/timecode.c:92:43
	movsd	.LCPI6_1(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	.loc	0 92 19 is_stmt 0               # x264_src/input/timecode.c:92:19
	callq	round@PLT
.Ltmp594:
	.loc	0 92 55                         # x264_src/input/timecode.c:92:55
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	.loc	0 92 19                         # x264_src/input/timecode.c:92:19
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI6_2(%rip), %xmm0
	cvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
.Ltmp595:
	#DEBUG_VALUE: fps_den <- $rdx
	.loc	0 93 35 is_stmt 1               # x264_src/input/timecode.c:93:35
	je	.LBB6_10
.Ltmp596:
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_den <- $rdx
	.loc	0 93 41 is_stmt 0               # x264_src/input/timecode.c:93:41
	movq	80(%rbx), %rax
	.loc	0 93 38                         # x264_src/input/timecode.c:93:38
	testq	%rax, %rax
	.loc	0 93 27                         # x264_src/input/timecode.c:93:27
	jne	.LBB6_6
.Ltmp597:
.LBB6_10:                               # %cond.false
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: fps_den <- $rdx
	.loc	0 93 90                         # x264_src/input/timecode.c:93:90
	movslq	%edx, %rcx
.Ltmp598:
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 93 25                         # x264_src/input/timecode.c:93:25
	movq	%rcx, 80(%rbx)
.Ltmp599:
	.loc	0 94 42 is_stmt 1               # x264_src/input/timecode.c:94:42
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	addq	%rax, %rcx
	cmpq	%r15, %rcx
.Ltmp600:
	#DEBUG_VALUE: num <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	jb	.LBB6_12
.Ltmp601:
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	.loc	0 87 42                         # x264_src/input/timecode.c:87:42
	incq	%r13
.Ltmp602:
	#DEBUG_VALUE: num <- $r13
	.loc	0 87 27 is_stmt 0               # x264_src/input/timecode.c:87:27
	cmpq	%r12, %r13
	setb	%bpl
	jne	.LBB6_4
	jmp	.LBB6_13
.Ltmp603:
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_6 Depth=2
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rcx
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	cqto
.Ltmp604:
	idivq	%rcx
.Ltmp605:
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rcx, %rax
.Ltmp606:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp607:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	je	.LBB6_11
.Ltmp608:
.LBB6_6:                                # %while.body.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movq	%rdx, %rcx
.Ltmp609:
	#DEBUG_VALUE: gcd:b <- $rcx
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB6_8
.Ltmp610:
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=2
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: gcd:b <- $rcx
	#DEBUG_VALUE: gcd:a <- $rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
.Ltmp611:
                                        # kill: def $edx killed $edx def $rdx
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%rcx, %rax
.Ltmp612:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp613:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	jne	.LBB6_6
	jmp	.LBB6_11
.Ltmp614:
.LBB6_1:
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $rdi
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rsi
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $edx
	#DEBUG_VALUE: num <- 0
	xorl	%ebp, %ebp
.Ltmp615:
.LBB6_13:                               # %cleanup17
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: try_mkv_timebase_den:h <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- [DW_OP_LLVM_entry_value 1] $edx
	movzbl	%bpl, %eax
	andl	$1, %eax
	negl	%eax
	.loc	0 102 1 epilogue_begin is_stmt 1 # x264_src/input/timecode.c:102:1
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
	retq
.Ltmp616:
.LBB6_12:                               # %if.then
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: try_mkv_timebase_den:fpss <- $r14
	#DEBUG_VALUE: try_mkv_timebase_den:h <- $rbx
	#DEBUG_VALUE: try_mkv_timebase_den:loop_num <- $r12d
	#DEBUG_VALUE: num <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	#DEBUG_VALUE: exponent <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	.loc	0 96 22                         # x264_src/input/timecode.c:96:22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 96 13 is_stmt 0               # x264_src/input/timecode.c:96:13
	movl	$.L.str.24, %edi
	movl	$101, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp617:
	.loc	0 0 13                          # x264_src/input/timecode.c:0:13
	jmp	.LBB6_13
.Ltmp618:
.Lfunc_end6:
	.size	try_mkv_timebase_den, .Lfunc_end6-try_mkv_timebase_den
	.cfi_endproc
                                        # -- End function
	.type	timecode_input,@object          # @timecode_input
	.data
	.globl	timecode_input
	.p2align	3, 0x0
timecode_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	0
	.quad	read_frame
	.quad	release_frame
	.quad	0
	.quad	close_file
	.size	timecode_input, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timecode [error]: malloc failed\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%lu/%lu"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"timecode [error]: timebase you specified exceeds H.264 maximum\n"
	.size	.L.str.2, 64

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"timecode [error]: can't open `%s'\n"
	.size	.L.str.4, 35

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"# timecode format v%d"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"timecode [error]: unsupported timecode format\n"
	.size	.L.str.7, 47

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"assume %lf"
	.size	.L.str.8, 11

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Assume %lf"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"timecode [error]: tcfile parsing error: assumed fps not found\n"
	.size	.L.str.10, 63

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"timecode [error]: invalid assumed fps %.6f\n"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"# TDecimate Mode 3:  Last Frame = %d"
	.size	.L.str.12, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%d,%d,%lf"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"timecode [error]: invalid input tcfile\n"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"timecode [error]: invalid input tcfile at line %d: %s\n"
	.size	.L.str.15, 55

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"timecode [error]: input tcfile doesn't have any timecodes!\n"
	.size	.L.str.16, 60

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%lf"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"timecode [error]: invalid input tcfile for frame 0\n"
	.size	.L.str.18, 52

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"timecode [error]: invalid input tcfile for frame %d\n"
	.size	.L.str.19, 53

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"timecode [info]: automatic timebase generation %lu/%lu\n"
	.size	.L.str.20, 56

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"timecode [error]: automatic timebase generation failed.\n                  Specify an appropriate timebase manually.\n"
	.size	.L.str.21, 117

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"timecode [error]: invalid timebase or timecode for frame %d\n"
	.size	.L.str.22, 61

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"timecode [error]: tcfile fps correction failed.\n                  Specify an appropriate timebase manually or remake tcfile.\n"
	.size	.L.str.23, 126

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"timecode [error]: automatic timebase generation failed.\n                  Specify timebase manually.\n"
	.size	.L.str.24, 102

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"timecode [info]: input timecode file missing data for frame %d and later\n                 assuming constant fps %.6f\n"
	.size	.L.str.25, 118

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	69                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp487-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp489-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp252-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp282-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp296-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp268-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp268-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp465-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp477-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp478-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp409-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp468-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp471-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp490-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp281-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp282-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp283-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp329-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp329-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp353-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp357-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp403-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp404-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp404-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp434-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp434-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp435-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp435-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp436-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp439-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp445-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp477-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp478-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp475-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp281-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp317-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp318-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp451-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp277-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp451-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	30                              # DW_OP_mul
	.byte	28                              # DW_OP_minus
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp211-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp218-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp223-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp218-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp280-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp384-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp401-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp401-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp475-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp477-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp478-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp370-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp377-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp368-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp374-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp368-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp458-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp404-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp404-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp506-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp506-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp506-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp513-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp516-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp535-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	97                              # DW_OP_reg17
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp535-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp526-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp540-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp540-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	30                              # DW_OP_mul
	.byte	28                              # DW_OP_minus
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp543-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp547-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	30                              # DW_OP_mul
	.byte	28                              # DW_OP_minus
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp551-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp575-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp530-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp534-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp547-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp549-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp561-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp565-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp556-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp561-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp557-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp563-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp615-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp616-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp615-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp616-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp585-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp585-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp615-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp616-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp602-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp591-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp601-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp593-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp594-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp598-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp607-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp609-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp609-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp611-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp611-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
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
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	35                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
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
	.byte	55                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	56                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	57                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	58                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	38                              # DW_FORM_strx2
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	60                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	62                              # Abbreviation Code
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
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	63                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	64                              # Abbreviation Code
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
	.byte	65                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	66                              # Abbreviation Code
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
	.byte	67                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	68                              # Abbreviation Code
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
	.byte	69                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	70                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	71                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	1                               # Abbrev [1] 0xc:0x151f DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xc DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	55                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x37:0x8 DW_TAG_typedef
	.long	63                              # DW_AT_type
	.byte	197                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3f:0x44 DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x43:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	131                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x4c:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x55:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x5e:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	2181                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x67:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	2207                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x70:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	2228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x79:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x83:0x5 DW_TAG_pointer_type
	.long	136                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x88:0x1a DW_TAG_subroutine_type
	.long	162                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x8d:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x92:0x5 DW_TAG_formal_parameter
	.long	175                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x97:0x5 DW_TAG_formal_parameter
	.long	189                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x9c:0x5 DW_TAG_formal_parameter
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa2:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xa6:0x5 DW_TAG_pointer_type
	.long	171                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xab:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xaf:0x5 DW_TAG_pointer_type
	.long	180                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xb4:0x8 DW_TAG_typedef
	.long	188                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xbc:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0xbd:0x5 DW_TAG_pointer_type
	.long	194                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xc2:0x8 DW_TAG_typedef
	.long	202                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xca:0x71 DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xce:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd7:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xe0:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xe9:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xf2:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xfb:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x104:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x10d:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x116:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x11f:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x128:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x131:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x13b:0x8 DW_TAG_typedef
	.long	323                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x143:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x14b:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x14f:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x154:0x8 DW_TAG_typedef
	.long	348                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x15c:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x160:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x169:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x172:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x17b:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x185:0x5 DW_TAG_pointer_type
	.long	394                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x18a:0xb DW_TAG_subroutine_type
	.long	162                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x18f:0x5 DW_TAG_formal_parameter
	.long	180                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x195:0x5 DW_TAG_pointer_type
	.long	410                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x19a:0x1a DW_TAG_subroutine_type
	.long	162                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x19f:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a4:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a9:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1ae:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1b4:0x5 DW_TAG_pointer_type
	.long	441                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1b9:0x9 DW_TAG_typedef
	.long	450                             # DW_AT_type
	.byte	192                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1c2:0x6a DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1c7:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d1:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	523                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1db:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1e5:0xa DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ef:0xa DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	556                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1f9:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	556                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x203:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20d:0xa DW_TAG_member
	.byte	179                             # DW_AT_name
	.long	2038                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x217:0xa DW_TAG_member
	.byte	184                             # DW_AT_name
	.long	2122                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x221:0xa DW_TAG_member
	.byte	191                             # DW_AT_name
	.long	188                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x22c:0x8 DW_TAG_typedef
	.long	564                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x234:0x8 DW_TAG_typedef
	.long	572                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x23c:0x4 DW_TAG_base_type
	.byte	36                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x240:0x5 DW_TAG_pointer_type
	.long	581                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x245:0x9 DW_TAG_typedef
	.long	590                             # DW_AT_type
	.byte	178                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x24e:0x4b9 DW_TAG_structure_type
	.byte	178                             # DW_AT_name
	.short	704                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x254:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x25d:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x266:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x26f:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x278:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x281:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x28a:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x293:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x29c:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2a5:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2ae:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2b7:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	704                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x2c0:0x56 DW_TAG_structure_type
	.byte	36                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x2c4:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2cd:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2d6:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2df:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2e8:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2f1:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2fa:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x303:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x30c:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x316:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x31f:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x328:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x331:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x33a:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x343:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x34c:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x355:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x35e:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x367:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x370:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x379:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x382:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x38b:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x394:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x39d:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3a6:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3af:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3b8:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3c1:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3ca:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3d3:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x3dc:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1835                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x3e5:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1835                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x3ef:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1847                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	352                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x3f9:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	188                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x403:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x40d:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.short	372                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x417:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x421:0xb DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1068                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x42c:0xf6 DW_TAG_structure_type
	.byte	100                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x431:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x43b:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x445:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x44f:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x459:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x463:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x46d:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x477:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	267                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x481:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x48b:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x495:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x49f:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a9:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b3:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4bd:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c7:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4d1:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4db:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e5:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ef:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f9:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x503:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1937                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50d:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x517:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x522:0xb DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1325                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.short	488                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x52d:0x11e DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x532:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x53c:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x546:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x550:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x55a:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x564:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x56e:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x578:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x582:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x58c:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x596:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5a0:0xa DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5aa:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5b4:0xa DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5be:0xa DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5c8:0xa DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d2:0xa DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5dc:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5e6:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5f0:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5fa:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x604:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x60e:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x618:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x622:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x62c:0xa DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	1949                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x636:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x640:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x64b:0xb DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.short	632                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x656:0xb DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	331                             # DW_AT_decl_line
	.short	636                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x661:0xb DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	332                             # DW_AT_decl_line
	.short	640                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x66c:0xb DW_TAG_member
	.byte	164                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.short	644                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x677:0xb DW_TAG_member
	.byte	165                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.short	648                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x682:0xb DW_TAG_member
	.byte	166                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.short	652                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x68d:0xb DW_TAG_member
	.byte	167                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.short	656                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x698:0xb DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.short	660                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6a3:0xb DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.short	664                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6ae:0xb DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.short	668                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6b9:0xb DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.short	672                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6c4:0xb DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.short	676                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6cf:0xb DW_TAG_member
	.byte	173                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.short	680                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6da:0xb DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	367                             # DW_AT_decl_line
	.short	684                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6e5:0xb DW_TAG_member
	.byte	175                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.short	688                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6f0:0xb DW_TAG_member
	.byte	176                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.short	692                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6fb:0xb DW_TAG_member
	.byte	177                             # DW_AT_name
	.long	2026                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.short	696                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x707:0xc DW_TAG_array_type
	.long	1811                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x70c:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x713:0x8 DW_TAG_typedef
	.long	1819                            # DW_AT_type
	.byte	83                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x71b:0x8 DW_TAG_typedef
	.long	1827                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x723:0x4 DW_TAG_base_type
	.byte	81                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x727:0x4 DW_TAG_base_type
	.byte	84                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	17                              # Abbrev [17] 0x72b:0xc DW_TAG_array_type
	.long	1811                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x730:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x737:0x5 DW_TAG_pointer_type
	.long	1852                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x73c:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x73d:0x5 DW_TAG_formal_parameter
	.long	188                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x742:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x747:0x5 DW_TAG_formal_parameter
	.long	1874                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x74c:0x5 DW_TAG_formal_parameter
	.long	1884                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x752:0x5 DW_TAG_pointer_type
	.long	1879                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x757:0x5 DW_TAG_const_type
	.long	171                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x75c:0x5 DW_TAG_pointer_type
	.long	1889                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x761:0x2c DW_TAG_structure_type
	.byte	95                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x764:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x76e:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x778:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	188                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x782:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	188                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x78d:0x4 DW_TAG_base_type
	.byte	120                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x791:0xc DW_TAG_array_type
	.long	162                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x796:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x79d:0x5 DW_TAG_pointer_type
	.long	1954                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x7a2:0x8 DW_TAG_typedef
	.long	1962                            # DW_AT_type
	.byte	158                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x7aa:0x3b DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x7ae:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x7b7:0x9 DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x7c0:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x7c9:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x7d2:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x7db:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	2021                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7e5:0x5 DW_TAG_pointer_type
	.long	590                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7ea:0x5 DW_TAG_pointer_type
	.long	2031                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x7ef:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x7f0:0x5 DW_TAG_formal_parameter
	.long	188                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7f6:0x9 DW_TAG_typedef
	.long	2047                            # DW_AT_type
	.byte	183                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	511                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7ff:0x2e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x804:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	507                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x80e:0xa DW_TAG_member
	.byte	180                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	508                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x818:0xa DW_TAG_member
	.byte	181                             # DW_AT_name
	.long	2093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	509                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x822:0xa DW_TAG_member
	.byte	182                             # DW_AT_name
	.long	2105                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	510                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x82d:0xc DW_TAG_array_type
	.long	162                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x832:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x839:0xc DW_TAG_array_type
	.long	2117                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x83e:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x845:0x5 DW_TAG_pointer_type
	.long	1811                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x84a:0x9 DW_TAG_typedef
	.long	2131                            # DW_AT_type
	.byte	190                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x853:0x2e DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x858:0xa DW_TAG_member
	.byte	185                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x862:0xa DW_TAG_member
	.byte	187                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x86c:0xa DW_TAG_member
	.byte	188                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x876:0xa DW_TAG_member
	.byte	189                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x881:0x4 DW_TAG_base_type
	.byte	186                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x885:0x5 DW_TAG_pointer_type
	.long	2186                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x88a:0x15 DW_TAG_subroutine_type
	.long	162                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x88f:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x894:0x5 DW_TAG_formal_parameter
	.long	180                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x899:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x89f:0x5 DW_TAG_pointer_type
	.long	2212                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8a4:0x10 DW_TAG_subroutine_type
	.long	162                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x8a9:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8ae:0x5 DW_TAG_formal_parameter
	.long	180                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8b4:0x5 DW_TAG_pointer_type
	.long	2233                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x8b9:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x8ba:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8c0:0xb DW_TAG_variable
	.long	2251                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	17                              # Abbrev [17] 0x8cb:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8d0:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8d7:0xb DW_TAG_variable
	.long	2274                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	400                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	17                              # Abbrev [17] 0x8e2:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8e7:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8ee:0xb DW_TAG_variable
	.long	2297                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	405                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	17                              # Abbrev [17] 0x8f9:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8fe:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x905:0xb DW_TAG_variable
	.long	2320                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	17                              # Abbrev [17] 0x910:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x915:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x91c:0xb DW_TAG_variable
	.long	2343                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	17                              # Abbrev [17] 0x927:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x92c:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	35                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x933:0x8 DW_TAG_variable
	.long	2363                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	428                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x93b:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x940:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	72                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x947:0xa DW_TAG_variable
	.long	2385                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	17                              # Abbrev [17] 0x951:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x956:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x95d:0xa DW_TAG_variable
	.long	2407                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	17                              # Abbrev [17] 0x967:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x96c:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	47                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x973:0xa DW_TAG_variable
	.long	2429                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	17                              # Abbrev [17] 0x97d:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x982:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x989:0xa DW_TAG_variable
	.long	2429                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	25                              # Abbrev [25] 0x993:0xa DW_TAG_variable
	.long	2461                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	17                              # Abbrev [17] 0x99d:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9a2:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	63                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x9a9:0xa DW_TAG_variable
	.long	2483                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	17                              # Abbrev [17] 0x9b3:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9b8:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	44                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x9bf:0xa DW_TAG_variable
	.long	2505                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	17                              # Abbrev [17] 0x9c9:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9ce:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	37                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x9d5:0xa DW_TAG_variable
	.long	2527                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	17                              # Abbrev [17] 0x9df:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9e4:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x9eb:0xa DW_TAG_variable
	.long	2549                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	17                              # Abbrev [17] 0x9f5:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9fa:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	40                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xa01:0xa DW_TAG_variable
	.long	2571                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	17                              # Abbrev [17] 0xa0b:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa10:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	55                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa17:0xb DW_TAG_variable
	.long	2594                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	17                              # Abbrev [17] 0xa22:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa27:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	60                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa2e:0xb DW_TAG_variable
	.long	2617                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	17                              # Abbrev [17] 0xa39:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa3e:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa45:0xb DW_TAG_variable
	.long	2640                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	17                              # Abbrev [17] 0xa50:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa55:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	52                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa5c:0xb DW_TAG_variable
	.long	2663                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	289                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	17                              # Abbrev [17] 0xa67:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa6c:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	53                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa73:0xb DW_TAG_variable
	.long	2686                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	17                              # Abbrev [17] 0xa7e:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa83:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	56                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa8a:0xb DW_TAG_variable
	.long	2709                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	17                              # Abbrev [17] 0xa95:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa9a:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	117                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xaa1:0xb DW_TAG_variable
	.long	2732                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	365                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	17                              # Abbrev [17] 0xaac:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xab1:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	61                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xab8:0xa DW_TAG_variable
	.long	2754                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	23
	.byte	17                              # Abbrev [17] 0xac2:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xac7:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	126                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xace:0xa DW_TAG_variable
	.long	2776                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	24
	.byte	17                              # Abbrev [17] 0xad8:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xadd:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	102                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xae4:0xb DW_TAG_variable
	.long	2799                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	469                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	25
	.byte	17                              # Abbrev [17] 0xaef:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xaf4:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	118                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0xafb:0x11d DW_TAG_subprogram
	.byte	198                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0xb03:0x8 DW_TAG_formal_parameter
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	3096                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb0b:0x8 DW_TAG_formal_parameter
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb13:0x8 DW_TAG_formal_parameter
	.byte	254                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xb1b:0x8 DW_TAG_variable
	.byte	255                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	3618                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb23:0x9 DW_TAG_variable
	.short	256                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb2c:0x9 DW_TAG_variable
	.short	257                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	3631                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb35:0x9 DW_TAG_variable
	.short	258                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	3631                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb3e:0x9 DW_TAG_variable
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb47:0x9 DW_TAG_variable
	.short	260                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb50:0x9 DW_TAG_variable
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb59:0x9 DW_TAG_variable
	.short	262                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb62:0x9 DW_TAG_variable
	.short	263                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xb6b:0x6 DW_TAG_label
	.short	264                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0xb71:0x5d DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0xb72:0x9 DW_TAG_variable
	.short	265                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb7b:0x9 DW_TAG_variable
	.short	266                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb84:0x9 DW_TAG_variable
	.short	267                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb8d:0x9 DW_TAG_variable
	.short	268                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb96:0x9 DW_TAG_variable
	.short	269                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb9f:0x9 DW_TAG_variable
	.short	270                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0xba8:0x8 DW_TAG_variable
	.byte	251                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xbb0:0x1d DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0xbb1:0x9 DW_TAG_variable
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xbba:0x9 DW_TAG_variable
	.short	272                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xbc3:0x9 DW_TAG_variable
	.short	273                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xbce:0x3d DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0xbcf:0x9 DW_TAG_variable
	.short	270                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xbd8:0x32 DW_TAG_lexical_block
	.byte	32                              # Abbrev [32] 0xbd9:0xa DW_TAG_variable
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xbe3:0xa DW_TAG_variable
	.short	274                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xbed:0xa DW_TAG_variable
	.short	275                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xbf7:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xc00:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xc0b:0xc DW_TAG_lexical_block
	.byte	32                              # Abbrev [32] 0xc0c:0xa DW_TAG_variable
	.short	275                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xc18:0x5 DW_TAG_pointer_type
	.long	3101                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xc1d:0x8 DW_TAG_typedef
	.long	3109                            # DW_AT_type
	.byte	240                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0xc25:0x10b DW_TAG_structure_type
	.byte	239                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xc2a:0x9 DW_TAG_member
	.byte	200                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc33:0x9 DW_TAG_member
	.byte	201                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc3c:0x9 DW_TAG_member
	.byte	202                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc45:0x9 DW_TAG_member
	.byte	203                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc4e:0x9 DW_TAG_member
	.byte	204                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc57:0x9 DW_TAG_member
	.byte	205                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc60:0x9 DW_TAG_member
	.byte	206                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc69:0x9 DW_TAG_member
	.byte	207                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc72:0x9 DW_TAG_member
	.byte	208                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc7b:0x9 DW_TAG_member
	.byte	209                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc84:0x9 DW_TAG_member
	.byte	210                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc8d:0x9 DW_TAG_member
	.byte	211                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc96:0x9 DW_TAG_member
	.byte	212                             # DW_AT_name
	.long	3376                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xc9f:0x9 DW_TAG_member
	.byte	214                             # DW_AT_name
	.long	3383                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xca8:0x9 DW_TAG_member
	.byte	215                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcb1:0x9 DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcba:0x9 DW_TAG_member
	.byte	217                             # DW_AT_name
	.long	3388                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcc3:0x9 DW_TAG_member
	.byte	219                             # DW_AT_name
	.long	3396                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xccc:0x9 DW_TAG_member
	.byte	221                             # DW_AT_name
	.long	3400                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcd5:0x9 DW_TAG_member
	.byte	223                             # DW_AT_name
	.long	3404                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcde:0x9 DW_TAG_member
	.byte	224                             # DW_AT_name
	.long	3416                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xce7:0x9 DW_TAG_member
	.byte	226                             # DW_AT_name
	.long	3425                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcf0:0x9 DW_TAG_member
	.byte	228                             # DW_AT_name
	.long	3433                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xcf9:0x9 DW_TAG_member
	.byte	230                             # DW_AT_name
	.long	3440                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd02:0x9 DW_TAG_member
	.byte	232                             # DW_AT_name
	.long	3383                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd0b:0x9 DW_TAG_member
	.byte	233                             # DW_AT_name
	.long	188                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd14:0x9 DW_TAG_member
	.byte	234                             # DW_AT_name
	.long	3447                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd1d:0x9 DW_TAG_member
	.byte	237                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xd26:0x9 DW_TAG_member
	.byte	238                             # DW_AT_name
	.long	3459                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd30:0x5 DW_TAG_pointer_type
	.long	3381                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xd35:0x2 DW_TAG_structure_type
	.byte	213                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	6                               # Abbrev [6] 0xd37:0x5 DW_TAG_pointer_type
	.long	3109                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xd3c:0x8 DW_TAG_typedef
	.long	572                             # DW_AT_type
	.byte	218                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xd44:0x4 DW_TAG_base_type
	.byte	220                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xd48:0x4 DW_TAG_base_type
	.byte	222                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xd4c:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xd51:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd58:0x5 DW_TAG_pointer_type
	.long	3421                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0xd5d:0x4 DW_TAG_typedef
	.byte	225                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xd61:0x8 DW_TAG_typedef
	.long	572                             # DW_AT_type
	.byte	227                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xd69:0x5 DW_TAG_pointer_type
	.long	3438                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xd6e:0x2 DW_TAG_structure_type
	.byte	229                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	6                               # Abbrev [6] 0xd70:0x5 DW_TAG_pointer_type
	.long	3445                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xd75:0x2 DW_TAG_structure_type
	.byte	231                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	3                               # Abbrev [3] 0xd77:0x8 DW_TAG_typedef
	.long	3455                            # DW_AT_type
	.byte	236                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xd7f:0x4 DW_TAG_base_type
	.byte	235                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xd83:0xc DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xd88:0x6 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd8f:0x5 DW_TAG_pointer_type
	.long	3476                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xd94:0x8 DW_TAG_typedef
	.long	3484                            # DW_AT_type
	.byte	253                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xd9c:0x71 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xda0:0x9 DW_TAG_member
	.byte	242                             # DW_AT_name
	.long	55                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xda9:0x9 DW_TAG_member
	.byte	243                             # DW_AT_name
	.long	180                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdb2:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdbb:0x9 DW_TAG_member
	.byte	245                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdc4:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdcd:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	3597                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdd6:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	3597                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xddf:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xde8:0x9 DW_TAG_member
	.byte	249                             # DW_AT_name
	.long	162                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdf1:0x9 DW_TAG_member
	.byte	250                             # DW_AT_name
	.long	3613                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xdfa:0x9 DW_TAG_member
	.byte	251                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0xe03:0x9 DW_TAG_member
	.byte	252                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe0d:0x8 DW_TAG_typedef
	.long	3605                            # DW_AT_type
	.byte	248                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xe15:0x8 DW_TAG_typedef
	.long	3455                            # DW_AT_type
	.byte	247                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xe1d:0x5 DW_TAG_pointer_type
	.long	556                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xe22:0xd DW_TAG_array_type
	.long	171                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0xe27:0x7 DW_TAG_subrange_type
	.long	1831                            # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe2f:0x5 DW_TAG_pointer_type
	.long	2177                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xe34:0x1c DW_TAG_subprogram
	.short	276                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2177                            # DW_AT_type
                                        # DW_AT_inline
	.byte	39                              # Abbrev [39] 0xe3d:0x9 DW_TAG_formal_parameter
	.short	277                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0xe46:0x9 DW_TAG_formal_parameter
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	3631                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0xe50:0x27 DW_TAG_subprogram
	.short	278                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	556                             # DW_AT_type
                                        # DW_AT_inline
	.byte	39                              # Abbrev [39] 0xe59:0x9 DW_TAG_formal_parameter
	.short	279                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0xe62:0x9 DW_TAG_formal_parameter
	.short	280                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xe6b:0xb DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0xe6c:0x9 DW_TAG_variable
	.short	281                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0xe77:0x1c DW_TAG_subprogram
	.short	282                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	556                             # DW_AT_type
                                        # DW_AT_inline
	.byte	39                              # Abbrev [39] 0xe80:0x9 DW_TAG_formal_parameter
	.short	279                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0xe89:0x9 DW_TAG_formal_parameter
	.short	280                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	556                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xe93:0x343 DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0xea3:0xb DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.short	301                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0xeae:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	243                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.long	175                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0xeb8:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	254                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0xec2:0xb DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.short	302                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0xecd:0xb DW_TAG_variable
	.byte	4                               # DW_AT_location
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0xed8:0xa DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0xee2:0xa DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.long	3096                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0xeec:0x183 DW_TAG_inlined_subroutine
	.long	2811                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	433                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0xef6:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	2819                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0xefc:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	2827                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0xf02:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	2835                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xf08:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\001"
	.long	2843                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xf11:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\354"
	.long	2851                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf1a:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	2860                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf20:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	2869                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf26:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	2878                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf2c:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	2887                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf32:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	2896                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf38:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.long	2905                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf3e:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	2914                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0xf44:0x6 DW_TAG_label
	.long	2923                            # DW_AT_abstract_origin
	.byte	88                              # DW_AT_low_pc
	.byte	50                              # Abbrev [50] 0xf4a:0x7e DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	47                              # Abbrev [47] 0xf4c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	2930                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xf55:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	4
	.long	2939                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf5d:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	2948                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf63:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.long	2957                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf69:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.long	2966                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf6f:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.long	2975                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf75:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.long	2984                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xf7b:0x4c DW_TAG_lexical_block
	.byte	27                              # DW_AT_low_pc
	.long	.Ltmp450-.Ltmp385               # DW_AT_high_pc
	.byte	48                              # Abbrev [48] 0xf81:0x6 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.long	2993                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf87:0x6 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.long	3002                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xf8d:0x6 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.long	3011                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0xf93:0x19 DW_TAG_inlined_subroutine
	.long	3636                            # DW_AT_abstract_origin
	.byte	28                              # DW_AT_low_pc
	.long	.Ltmp397-.Ltmp391               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	220                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	53                              # Abbrev [53] 0xfa0:0xb DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	148
	.byte	16
	.byte	159
	.long	3645                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xfac:0x1a DW_TAG_inlined_subroutine
	.long	3636                            # DW_AT_abstract_origin
	.byte	29                              # DW_AT_low_pc
	.long	.Ltmp422-.Ltmp416               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	230                             # DW_AT_call_line
	.byte	31                              # DW_AT_call_column
	.byte	53                              # Abbrev [53] 0xfb9:0xc DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	145
	.asciz	"\310"
	.byte	148
	.byte	16
	.byte	159
	.long	3645                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0xfc8:0x75 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	48                              # Abbrev [48] 0xfca:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.long	3023                            # DW_AT_abstract_origin
	.byte	50                              # Abbrev [50] 0xfd0:0x6c DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	48                              # Abbrev [48] 0xfd2:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	3033                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xfd8:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	3043                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xfde:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	3053                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xfe4:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.long	3063                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0xfea:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	3072                            # DW_AT_abstract_origin
	.byte	54                              # Abbrev [54] 0xff0:0x15 DW_TAG_inlined_subroutine
	.long	3636                            # DW_AT_abstract_origin
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp199-.Ltmp193               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	310                             # DW_AT_call_line
	.byte	38                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0xffe:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	3645                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1005:0x36 DW_TAG_inlined_subroutine
	.long	3703                            # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp228-.Ltmp213               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	319                             # DW_AT_call_line
	.byte	68                              # DW_AT_call_column
	.byte	52                              # Abbrev [52] 0x1013:0x27 DW_TAG_inlined_subroutine
	.long	3664                            # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp224-.Ltmp213               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x1020:0x6 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.long	3673                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x1026:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	3682                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x102c:0xd DW_TAG_lexical_block
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp224-.Ltmp213               # DW_AT_high_pc
	.byte	48                              # Abbrev [48] 0x1032:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.long	3692                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x103d:0x31 DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	48                              # Abbrev [48] 0x103f:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	3084                            # DW_AT_abstract_origin
	.byte	54                              # Abbrev [54] 0x1045:0x28 DW_TAG_inlined_subroutine
	.long	3664                            # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp378-.Ltmp367               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	342                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x1053:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.long	3673                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x1059:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.long	3682                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x105f:0xd DW_TAG_lexical_block
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp378-.Ltmp367               # DW_AT_high_pc
	.byte	48                              # Abbrev [48] 0x1065:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.long	3692                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x106f:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	56                              # Abbrev [56] 0x1075:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	34                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1079:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x107f:0x6 DW_TAG_call_site
	.long	4611                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1085:0x6 DW_TAG_call_site
	.long	4646                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x108b:0x6 DW_TAG_call_site
	.long	4669                            # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1091:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1097:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x109d:0x6 DW_TAG_call_site
	.long	4729                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10a3:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10a9:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10af:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10b5:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10bb:0x6 DW_TAG_call_site
	.long	4729                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10c1:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10c7:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10cd:0x6 DW_TAG_call_site
	.long	4729                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10d3:0x6 DW_TAG_call_site
	.long	4745                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10d9:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10df:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10e5:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10eb:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10f1:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10f7:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x10fd:0x6 DW_TAG_call_site
	.long	4745                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1103:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1109:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x110f:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1115:0x6 DW_TAG_call_site
	.long	4771                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x111b:0x6 DW_TAG_call_site
	.long	4786                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1121:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1127:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x112d:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1133:0x6 DW_TAG_call_site
	.long	4828                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1139:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x113f:0x6 DW_TAG_call_site
	.long	5007                            # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1145:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	69                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x114b:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	70                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1151:0x6 DW_TAG_call_site
	.long	5007                            # DW_AT_call_origin
	.byte	71                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1157:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	72                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x115d:0x6 DW_TAG_call_site
	.long	4566                            # DW_AT_call_origin
	.byte	73                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1163:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	74                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1169:0x6 DW_TAG_call_site
	.long	5168                            # DW_AT_call_origin
	.byte	75                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x116f:0x6 DW_TAG_call_site
	.long	4828                            # DW_AT_call_origin
	.byte	76                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1175:0x6 DW_TAG_call_site
	.long	4745                            # DW_AT_call_origin
	.byte	77                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x117b:0x6 DW_TAG_call_site
	.long	4771                            # DW_AT_call_origin
	.byte	78                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1181:0x6 DW_TAG_call_site
	.long	4786                            # DW_AT_call_origin
	.byte	79                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1187:0x6 DW_TAG_call_site
	.long	4698                            # DW_AT_call_origin
	.byte	80                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x118d:0x6 DW_TAG_call_site
	.long	4582                            # DW_AT_call_origin
	.byte	81                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1193:0x6 DW_TAG_call_site
	.long	4771                            # DW_AT_call_origin
	.byte	82                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1199:0x6 DW_TAG_call_site
	.long	4786                            # DW_AT_call_origin
	.byte	83                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x119f:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	84                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11a5:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	85                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11ab:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	86                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11b1:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	87                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11b7:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	88                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11bd:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	89                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11c3:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	90                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11c9:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	91                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x11cf:0x6 DW_TAG_call_site
	.long	5168                            # DW_AT_call_origin
	.byte	92                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x11d6:0x10 DW_TAG_subprogram
	.short	283                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	188                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x11e0:0x5 DW_TAG_formal_parameter
	.long	3447                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	58                              # Abbrev [58] 0x11e6:0x18 DW_TAG_subprogram
	.short	284                             # DW_AT_linkage_name
	.short	285                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x11f2:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11f7:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	59                              # Abbrev [59] 0x11fc:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x11fe:0x5 DW_TAG_restrict_type
	.long	1874                            # DW_AT_type
	.byte	61                              # Abbrev [61] 0x1203:0x19 DW_TAG_subprogram
	.short	286                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3455                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x120c:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1211:0x5 DW_TAG_formal_parameter
	.long	4636                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1216:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x121c:0x5 DW_TAG_restrict_type
	.long	4641                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1221:0x5 DW_TAG_pointer_type
	.long	166                             # DW_AT_type
	.byte	58                              # Abbrev [58] 0x1226:0x17 DW_TAG_subprogram
	.short	287                             # DW_AT_linkage_name
	.short	288                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3096                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1232:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1237:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	58                              # Abbrev [58] 0x123d:0x18 DW_TAG_subprogram
	.short	289                             # DW_AT_linkage_name
	.short	290                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	434                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1249:0x5 DW_TAG_formal_parameter
	.long	4693                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x124e:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	59                              # Abbrev [59] 0x1253:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x1255:0x5 DW_TAG_restrict_type
	.long	3096                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0x125a:0x1a DW_TAG_subprogram
	.short	291                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1264:0x5 DW_TAG_formal_parameter
	.long	4724                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1269:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x126e:0x5 DW_TAG_formal_parameter
	.long	4693                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x1274:0x5 DW_TAG_restrict_type
	.long	166                             # DW_AT_type
	.byte	57                              # Abbrev [57] 0x1279:0x10 DW_TAG_subprogram
	.short	292                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	718                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	572                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1283:0x5 DW_TAG_formal_parameter
	.long	3096                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x1289:0x1a DW_TAG_subprogram
	.short	293                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	713                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1293:0x5 DW_TAG_formal_parameter
	.long	3096                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1298:0x5 DW_TAG_formal_parameter
	.long	572                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x129d:0x5 DW_TAG_formal_parameter
	.long	162                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x12a3:0xf DW_TAG_subprogram
	.short	294                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2177                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x12ac:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x12b2:0x14 DW_TAG_subprogram
	.short	295                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2177                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x12bb:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12c0:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x12c6:0x16 DW_TAG_subprogram
	.short	296                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x12d0:0x5 DW_TAG_formal_parameter
	.long	4693                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12d5:0x5 DW_TAG_formal_parameter
	.long	4606                            # DW_AT_type
	.byte	59                              # Abbrev [59] 0x12da:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x12dc:0xa7 DW_TAG_subprogram
	.byte	108                             # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	300                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	63                              # Abbrev [63] 0x12ec:0xa DW_TAG_formal_parameter
	.byte	59                              # DW_AT_location
	.short	258                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	3631                            # DW_AT_type
	.byte	64                              # Abbrev [64] 0x12f6:0x9 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x12ff:0xa DW_TAG_formal_parameter
	.byte	61                              # DW_AT_location
	.short	308                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x1309:0x6d DW_TAG_lexical_block
	.byte	7                               # DW_AT_ranges
	.byte	65                              # Abbrev [65] 0x130b:0xa DW_TAG_variable
	.byte	62                              # DW_AT_location
	.short	260                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x1315:0x60 DW_TAG_lexical_block
	.byte	8                               # DW_AT_ranges
	.byte	65                              # Abbrev [65] 0x1317:0xa DW_TAG_variable
	.byte	63                              # DW_AT_location
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1321:0xa DW_TAG_variable
	.byte	64                              # DW_AT_location
	.short	274                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x132b:0x9 DW_TAG_variable
	.byte	65                              # DW_AT_location
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x1334:0x19 DW_TAG_inlined_subroutine
	.long	3636                            # DW_AT_abstract_origin
	.byte	109                             # DW_AT_low_pc
	.long	.Ltmp593-.Ltmp588               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	91                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	53                              # Abbrev [53] 0x1341:0xb DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	148
	.byte	16
	.byte	159
	.long	3645                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x134d:0x27 DW_TAG_inlined_subroutine
	.long	3664                            # DW_AT_abstract_origin
	.byte	110                             # DW_AT_low_pc
	.long	.Ltmp614-.Ltmp603               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	93                              # DW_AT_call_line
	.byte	56                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x135a:0x6 DW_TAG_formal_parameter
	.byte	67                              # DW_AT_location
	.long	3673                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x1360:0x6 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_location
	.long	3682                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x1366:0xd DW_TAG_lexical_block
	.byte	110                             # DW_AT_low_pc
	.long	.Ltmp614-.Ltmp603               # DW_AT_high_pc
	.byte	48                              # Abbrev [48] 0x136c:0x6 DW_TAG_variable
	.byte	68                              # DW_AT_location
	.long	3692                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1376:0x6 DW_TAG_call_site
	.long	4771                            # DW_AT_call_origin
	.byte	111                             # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x137c:0x6 DW_TAG_call_site
	.long	4786                            # DW_AT_call_origin
	.byte	112                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	67                              # Abbrev [67] 0x1383:0xc DW_TAG_subprogram
	.short	297                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1389:0x5 DW_TAG_formal_parameter
	.long	188                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x138f:0xa1 DW_TAG_subprogram
	.byte	104                             # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	299                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2177                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x139f:0xa DW_TAG_formal_parameter
	.byte	48                              # DW_AT_location
	.short	307                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	64                              # Abbrev [64] 0x13a9:0x9 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x13b2:0xa DW_TAG_variable
	.byte	51                              # DW_AT_location
	.short	275                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	65                              # Abbrev [65] 0x13bc:0xa DW_TAG_variable
	.byte	52                              # DW_AT_location
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x13c6:0xa DW_TAG_variable
	.byte	53                              # DW_AT_location
	.short	274                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	2177                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x13d0:0x9 DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x13d9:0x9 DW_TAG_variable
	.byte	55                              # DW_AT_location
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	68                              # Abbrev [68] 0x13e2:0x10 DW_TAG_inlined_subroutine
	.long	3636                            # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x13eb:0x6 DW_TAG_formal_parameter
	.byte	50                              # DW_AT_location
	.long	3645                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	68                              # Abbrev [68] 0x13f2:0x31 DW_TAG_inlined_subroutine
	.long	3703                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	76                              # DW_AT_call_line
	.byte	45                              # DW_AT_call_column
	.byte	52                              # Abbrev [52] 0x13fb:0x27 DW_TAG_inlined_subroutine
	.long	3664                            # DW_AT_abstract_origin
	.byte	105                             # DW_AT_low_pc
	.long	.Ltmp566-.Ltmp555               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x1408:0x6 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_location
	.long	3673                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x140e:0x6 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_location
	.long	3682                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x1414:0xd DW_TAG_lexical_block
	.byte	105                             # DW_AT_low_pc
	.long	.Ltmp566-.Ltmp555               # DW_AT_high_pc
	.byte	48                              # Abbrev [48] 0x141a:0x6 DW_TAG_variable
	.byte	58                              # DW_AT_location
	.long	3692                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1423:0x6 DW_TAG_call_site
	.long	4771                            # DW_AT_call_origin
	.byte	106                             # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1429:0x6 DW_TAG_call_site
	.long	4786                            # DW_AT_call_origin
	.byte	107                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x1430:0xf DW_TAG_subprogram
	.short	298                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1439:0x5 DW_TAG_formal_parameter
	.long	3096                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x143f:0x28 DW_TAG_subprogram
	.byte	93                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	449                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	69                              # Abbrev [69] 0x144f:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.short	303                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	449                             # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	70                              # Abbrev [70] 0x145b:0xb DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x1467:0x57 DW_TAG_subprogram
	.byte	94                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x1477:0xb DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.short	304                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x1482:0xb DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.short	303                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x148d:0xb DW_TAG_formal_parameter
	.byte	41                              # DW_AT_location
	.short	305                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1498:0xa DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	457                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x14a2:0xb DW_TAG_variable
	.byte	43                              # DW_AT_location
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	56                              # Abbrev [56] 0x14ad:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	94
	.byte	95                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x14b1:0x6 DW_TAG_call_site
	.long	4806                            # DW_AT_call_origin
	.byte	96                              # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x14b7:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	97                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x14be:0x36 DW_TAG_subprogram
	.byte	98                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	194                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	69                              # Abbrev [69] 0x14ce:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.short	306                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x14da:0xb DW_TAG_formal_parameter
	.byte	44                              # DW_AT_location
	.short	303                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x14e5:0xa DW_TAG_variable
	.byte	45                              # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	71                              # Abbrev [71] 0x14ef:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	99                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x14f4:0x36 DW_TAG_subprogram
	.byte	100                             # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	196                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x1504:0xb DW_TAG_formal_parameter
	.byte	46                              # DW_AT_location
	.short	303                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x150f:0xa DW_TAG_variable
	.byte	47                              # DW_AT_location
	.byte	241                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
	.long	3471                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1519:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	101                             # DW_AT_call_return_pc
	.byte	56                              # Abbrev [56] 0x151f:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	102                             # DW_AT_call_return_pc
	.byte	55                              # Abbrev [55] 0x1523:0x6 DW_TAG_call_site
	.long	4995                            # DW_AT_call_origin
	.byte	103                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	9                               # Offset entry count
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
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp255-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp364-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp491-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp453-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp475-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp491-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp255-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp451-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp533-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp601-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	1240                            # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/input/timecode.c"     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=131
.Linfo_string3:
	.asciz	"timecode_input"                # string offset=165
.Linfo_string4:
	.asciz	"open_file"                     # string offset=180
.Linfo_string5:
	.asciz	"int"                           # string offset=190
.Linfo_string6:
	.asciz	"char"                          # string offset=194
.Linfo_string7:
	.asciz	"hnd_t"                         # string offset=199
.Linfo_string8:
	.asciz	"csp"                           # string offset=205
.Linfo_string9:
	.asciz	"fps_num"                       # string offset=209
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=217
.Linfo_string11:
	.asciz	"__uint32_t"                    # string offset=230
.Linfo_string12:
	.asciz	"uint32_t"                      # string offset=241
.Linfo_string13:
	.asciz	"fps_den"                       # string offset=250
.Linfo_string14:
	.asciz	"height"                        # string offset=258
.Linfo_string15:
	.asciz	"interlaced"                    # string offset=265
.Linfo_string16:
	.asciz	"sar_width"                     # string offset=276
.Linfo_string17:
	.asciz	"sar_height"                    # string offset=286
.Linfo_string18:
	.asciz	"tff"                           # string offset=297
.Linfo_string19:
	.asciz	"timebase_num"                  # string offset=301
.Linfo_string20:
	.asciz	"timebase_den"                  # string offset=314
.Linfo_string21:
	.asciz	"vfr"                           # string offset=327
.Linfo_string22:
	.asciz	"width"                         # string offset=331
.Linfo_string23:
	.asciz	"video_info_t"                  # string offset=337
.Linfo_string24:
	.asciz	"index"                         # string offset=350
.Linfo_string25:
	.asciz	"resolution"                    # string offset=356
.Linfo_string26:
	.asciz	"timebase"                      # string offset=367
.Linfo_string27:
	.asciz	"seek"                          # string offset=376
.Linfo_string28:
	.asciz	"cli_input_opt_t"               # string offset=381
.Linfo_string29:
	.asciz	"get_frame_total"               # string offset=397
.Linfo_string30:
	.asciz	"picture_alloc"                 # string offset=413
.Linfo_string31:
	.asciz	"i_type"                        # string offset=427
.Linfo_string32:
	.asciz	"i_qpplus1"                     # string offset=434
.Linfo_string33:
	.asciz	"i_pic_struct"                  # string offset=444
.Linfo_string34:
	.asciz	"b_keyframe"                    # string offset=457
.Linfo_string35:
	.asciz	"i_pts"                         # string offset=468
.Linfo_string36:
	.asciz	"long"                          # string offset=474
.Linfo_string37:
	.asciz	"__int64_t"                     # string offset=479
.Linfo_string38:
	.asciz	"int64_t"                       # string offset=489
.Linfo_string39:
	.asciz	"i_dts"                         # string offset=497
.Linfo_string40:
	.asciz	"param"                         # string offset=503
.Linfo_string41:
	.asciz	"cpu"                           # string offset=509
.Linfo_string42:
	.asciz	"i_threads"                     # string offset=513
.Linfo_string43:
	.asciz	"b_sliced_threads"              # string offset=523
.Linfo_string44:
	.asciz	"b_deterministic"               # string offset=540
.Linfo_string45:
	.asciz	"i_sync_lookahead"              # string offset=556
.Linfo_string46:
	.asciz	"i_width"                       # string offset=573
.Linfo_string47:
	.asciz	"i_height"                      # string offset=581
.Linfo_string48:
	.asciz	"i_csp"                         # string offset=590
.Linfo_string49:
	.asciz	"i_level_idc"                   # string offset=596
.Linfo_string50:
	.asciz	"i_frame_total"                 # string offset=608
.Linfo_string51:
	.asciz	"i_nal_hrd"                     # string offset=622
.Linfo_string52:
	.asciz	"vui"                           # string offset=632
.Linfo_string53:
	.asciz	"i_sar_height"                  # string offset=636
.Linfo_string54:
	.asciz	"i_sar_width"                   # string offset=649
.Linfo_string55:
	.asciz	"i_overscan"                    # string offset=661
.Linfo_string56:
	.asciz	"i_vidformat"                   # string offset=672
.Linfo_string57:
	.asciz	"b_fullrange"                   # string offset=684
.Linfo_string58:
	.asciz	"i_colorprim"                   # string offset=696
.Linfo_string59:
	.asciz	"i_transfer"                    # string offset=708
.Linfo_string60:
	.asciz	"i_colmatrix"                   # string offset=719
.Linfo_string61:
	.asciz	"i_chroma_loc"                  # string offset=731
.Linfo_string62:
	.asciz	"i_frame_reference"             # string offset=744
.Linfo_string63:
	.asciz	"i_keyint_max"                  # string offset=762
.Linfo_string64:
	.asciz	"i_keyint_min"                  # string offset=775
.Linfo_string65:
	.asciz	"i_scenecut_threshold"          # string offset=788
.Linfo_string66:
	.asciz	"b_intra_refresh"               # string offset=809
.Linfo_string67:
	.asciz	"i_bframe"                      # string offset=825
.Linfo_string68:
	.asciz	"i_bframe_adaptive"             # string offset=834
.Linfo_string69:
	.asciz	"i_bframe_bias"                 # string offset=852
.Linfo_string70:
	.asciz	"i_bframe_pyramid"              # string offset=866
.Linfo_string71:
	.asciz	"b_deblocking_filter"           # string offset=883
.Linfo_string72:
	.asciz	"i_deblocking_filter_alphac0"   # string offset=903
.Linfo_string73:
	.asciz	"i_deblocking_filter_beta"      # string offset=931
.Linfo_string74:
	.asciz	"b_cabac"                       # string offset=956
.Linfo_string75:
	.asciz	"i_cabac_init_idc"              # string offset=964
.Linfo_string76:
	.asciz	"b_interlaced"                  # string offset=981
.Linfo_string77:
	.asciz	"b_constrained_intra"           # string offset=994
.Linfo_string78:
	.asciz	"i_cqm_preset"                  # string offset=1014
.Linfo_string79:
	.asciz	"psz_cqm_file"                  # string offset=1027
.Linfo_string80:
	.asciz	"cqm_4iy"                       # string offset=1040
.Linfo_string81:
	.asciz	"unsigned char"                 # string offset=1048
.Linfo_string82:
	.asciz	"__uint8_t"                     # string offset=1062
.Linfo_string83:
	.asciz	"uint8_t"                       # string offset=1072
.Linfo_string84:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1080
.Linfo_string85:
	.asciz	"cqm_4ic"                       # string offset=1100
.Linfo_string86:
	.asciz	"cqm_4py"                       # string offset=1108
.Linfo_string87:
	.asciz	"cqm_4pc"                       # string offset=1116
.Linfo_string88:
	.asciz	"cqm_8iy"                       # string offset=1124
.Linfo_string89:
	.asciz	"cqm_8py"                       # string offset=1132
.Linfo_string90:
	.asciz	"pf_log"                        # string offset=1140
.Linfo_string91:
	.asciz	"gp_offset"                     # string offset=1147
.Linfo_string92:
	.asciz	"fp_offset"                     # string offset=1157
.Linfo_string93:
	.asciz	"overflow_arg_area"             # string offset=1167
.Linfo_string94:
	.asciz	"reg_save_area"                 # string offset=1185
.Linfo_string95:
	.asciz	"__va_list_tag"                 # string offset=1199
.Linfo_string96:
	.asciz	"p_log_private"                 # string offset=1213
.Linfo_string97:
	.asciz	"i_log_level"                   # string offset=1227
.Linfo_string98:
	.asciz	"b_visualize"                   # string offset=1239
.Linfo_string99:
	.asciz	"psz_dump_yuv"                  # string offset=1251
.Linfo_string100:
	.asciz	"analyse"                       # string offset=1264
.Linfo_string101:
	.asciz	"intra"                         # string offset=1272
.Linfo_string102:
	.asciz	"inter"                         # string offset=1278
.Linfo_string103:
	.asciz	"b_transform_8x8"               # string offset=1284
.Linfo_string104:
	.asciz	"i_weighted_pred"               # string offset=1300
.Linfo_string105:
	.asciz	"b_weighted_bipred"             # string offset=1316
.Linfo_string106:
	.asciz	"i_direct_mv_pred"              # string offset=1334
.Linfo_string107:
	.asciz	"i_chroma_qp_offset"            # string offset=1351
.Linfo_string108:
	.asciz	"i_me_method"                   # string offset=1370
.Linfo_string109:
	.asciz	"i_me_range"                    # string offset=1382
.Linfo_string110:
	.asciz	"i_mv_range"                    # string offset=1393
.Linfo_string111:
	.asciz	"i_mv_range_thread"             # string offset=1404
.Linfo_string112:
	.asciz	"i_subpel_refine"               # string offset=1422
.Linfo_string113:
	.asciz	"b_chroma_me"                   # string offset=1438
.Linfo_string114:
	.asciz	"b_mixed_references"            # string offset=1450
.Linfo_string115:
	.asciz	"i_trellis"                     # string offset=1469
.Linfo_string116:
	.asciz	"b_fast_pskip"                  # string offset=1479
.Linfo_string117:
	.asciz	"b_dct_decimate"                # string offset=1492
.Linfo_string118:
	.asciz	"i_noise_reduction"             # string offset=1507
.Linfo_string119:
	.asciz	"f_psy_rd"                      # string offset=1525
.Linfo_string120:
	.asciz	"float"                         # string offset=1534
.Linfo_string121:
	.asciz	"f_psy_trellis"                 # string offset=1540
.Linfo_string122:
	.asciz	"b_psy"                         # string offset=1554
.Linfo_string123:
	.asciz	"i_luma_deadzone"               # string offset=1560
.Linfo_string124:
	.asciz	"b_psnr"                        # string offset=1576
.Linfo_string125:
	.asciz	"b_ssim"                        # string offset=1583
.Linfo_string126:
	.asciz	"rc"                            # string offset=1590
.Linfo_string127:
	.asciz	"i_rc_method"                   # string offset=1593
.Linfo_string128:
	.asciz	"i_qp_constant"                 # string offset=1605
.Linfo_string129:
	.asciz	"i_qp_min"                      # string offset=1619
.Linfo_string130:
	.asciz	"i_qp_max"                      # string offset=1628
.Linfo_string131:
	.asciz	"i_qp_step"                     # string offset=1637
.Linfo_string132:
	.asciz	"i_bitrate"                     # string offset=1647
.Linfo_string133:
	.asciz	"f_rf_constant"                 # string offset=1657
.Linfo_string134:
	.asciz	"f_rf_constant_max"             # string offset=1671
.Linfo_string135:
	.asciz	"f_rate_tolerance"              # string offset=1689
.Linfo_string136:
	.asciz	"i_vbv_max_bitrate"             # string offset=1706
.Linfo_string137:
	.asciz	"i_vbv_buffer_size"             # string offset=1724
.Linfo_string138:
	.asciz	"f_vbv_buffer_init"             # string offset=1742
.Linfo_string139:
	.asciz	"f_ip_factor"                   # string offset=1760
.Linfo_string140:
	.asciz	"f_pb_factor"                   # string offset=1772
.Linfo_string141:
	.asciz	"i_aq_mode"                     # string offset=1784
.Linfo_string142:
	.asciz	"f_aq_strength"                 # string offset=1794
.Linfo_string143:
	.asciz	"b_mb_tree"                     # string offset=1808
.Linfo_string144:
	.asciz	"i_lookahead"                   # string offset=1818
.Linfo_string145:
	.asciz	"b_stat_write"                  # string offset=1830
.Linfo_string146:
	.asciz	"psz_stat_out"                  # string offset=1843
.Linfo_string147:
	.asciz	"b_stat_read"                   # string offset=1856
.Linfo_string148:
	.asciz	"psz_stat_in"                   # string offset=1868
.Linfo_string149:
	.asciz	"f_qcompress"                   # string offset=1880
.Linfo_string150:
	.asciz	"f_qblur"                       # string offset=1892
.Linfo_string151:
	.asciz	"f_complexity_blur"             # string offset=1900
.Linfo_string152:
	.asciz	"zones"                         # string offset=1918
.Linfo_string153:
	.asciz	"i_start"                       # string offset=1924
.Linfo_string154:
	.asciz	"i_end"                         # string offset=1932
.Linfo_string155:
	.asciz	"b_force_qp"                    # string offset=1938
.Linfo_string156:
	.asciz	"i_qp"                          # string offset=1949
.Linfo_string157:
	.asciz	"f_bitrate_factor"              # string offset=1954
.Linfo_string158:
	.asciz	"x264_zone_t"                   # string offset=1971
.Linfo_string159:
	.asciz	"i_zones"                       # string offset=1983
.Linfo_string160:
	.asciz	"psz_zones"                     # string offset=1991
.Linfo_string161:
	.asciz	"b_aud"                         # string offset=2001
.Linfo_string162:
	.asciz	"b_repeat_headers"              # string offset=2007
.Linfo_string163:
	.asciz	"b_annexb"                      # string offset=2024
.Linfo_string164:
	.asciz	"i_sps_id"                      # string offset=2033
.Linfo_string165:
	.asciz	"b_vfr_input"                   # string offset=2042
.Linfo_string166:
	.asciz	"i_fps_num"                     # string offset=2054
.Linfo_string167:
	.asciz	"i_fps_den"                     # string offset=2064
.Linfo_string168:
	.asciz	"i_timebase_num"                # string offset=2074
.Linfo_string169:
	.asciz	"i_timebase_den"                # string offset=2089
.Linfo_string170:
	.asciz	"b_dts_compress"                # string offset=2104
.Linfo_string171:
	.asciz	"b_tff"                         # string offset=2119
.Linfo_string172:
	.asciz	"b_pic_struct"                  # string offset=2125
.Linfo_string173:
	.asciz	"b_fake_interlaced"             # string offset=2138
.Linfo_string174:
	.asciz	"i_slice_max_size"              # string offset=2156
.Linfo_string175:
	.asciz	"i_slice_max_mbs"               # string offset=2173
.Linfo_string176:
	.asciz	"i_slice_count"                 # string offset=2189
.Linfo_string177:
	.asciz	"param_free"                    # string offset=2203
.Linfo_string178:
	.asciz	"x264_param_t"                  # string offset=2214
.Linfo_string179:
	.asciz	"img"                           # string offset=2227
.Linfo_string180:
	.asciz	"i_plane"                       # string offset=2231
.Linfo_string181:
	.asciz	"i_stride"                      # string offset=2239
.Linfo_string182:
	.asciz	"plane"                         # string offset=2248
.Linfo_string183:
	.asciz	"x264_image_t"                  # string offset=2254
.Linfo_string184:
	.asciz	"hrd_timing"                    # string offset=2267
.Linfo_string185:
	.asciz	"cpb_initial_arrival_time"      # string offset=2278
.Linfo_string186:
	.asciz	"double"                        # string offset=2303
.Linfo_string187:
	.asciz	"cpb_final_arrival_time"        # string offset=2310
.Linfo_string188:
	.asciz	"cpb_removal_time"              # string offset=2333
.Linfo_string189:
	.asciz	"dpb_output_time"               # string offset=2350
.Linfo_string190:
	.asciz	"x264_hrd_t"                    # string offset=2366
.Linfo_string191:
	.asciz	"opaque"                        # string offset=2377
.Linfo_string192:
	.asciz	"x264_picture_t"                # string offset=2384
.Linfo_string193:
	.asciz	"read_frame"                    # string offset=2399
.Linfo_string194:
	.asciz	"release_frame"                 # string offset=2410
.Linfo_string195:
	.asciz	"picture_clean"                 # string offset=2424
.Linfo_string196:
	.asciz	"close_file"                    # string offset=2438
.Linfo_string197:
	.asciz	"cli_input_t"                   # string offset=2449
.Linfo_string198:
	.asciz	"parse_tcfile"                  # string offset=2461
.Linfo_string199:
	.asciz	"tcfile_in"                     # string offset=2474
.Linfo_string200:
	.asciz	"_flags"                        # string offset=2484
.Linfo_string201:
	.asciz	"_IO_read_ptr"                  # string offset=2491
.Linfo_string202:
	.asciz	"_IO_read_end"                  # string offset=2504
.Linfo_string203:
	.asciz	"_IO_read_base"                 # string offset=2517
.Linfo_string204:
	.asciz	"_IO_write_base"                # string offset=2531
.Linfo_string205:
	.asciz	"_IO_write_ptr"                 # string offset=2546
.Linfo_string206:
	.asciz	"_IO_write_end"                 # string offset=2560
.Linfo_string207:
	.asciz	"_IO_buf_base"                  # string offset=2574
.Linfo_string208:
	.asciz	"_IO_buf_end"                   # string offset=2587
.Linfo_string209:
	.asciz	"_IO_save_base"                 # string offset=2599
.Linfo_string210:
	.asciz	"_IO_backup_base"               # string offset=2613
.Linfo_string211:
	.asciz	"_IO_save_end"                  # string offset=2629
.Linfo_string212:
	.asciz	"_markers"                      # string offset=2642
.Linfo_string213:
	.asciz	"_IO_marker"                    # string offset=2651
.Linfo_string214:
	.asciz	"_chain"                        # string offset=2662
.Linfo_string215:
	.asciz	"_fileno"                       # string offset=2669
.Linfo_string216:
	.asciz	"_flags2"                       # string offset=2677
.Linfo_string217:
	.asciz	"_old_offset"                   # string offset=2685
.Linfo_string218:
	.asciz	"__off_t"                       # string offset=2697
.Linfo_string219:
	.asciz	"_cur_column"                   # string offset=2705
.Linfo_string220:
	.asciz	"unsigned short"                # string offset=2717
.Linfo_string221:
	.asciz	"_vtable_offset"                # string offset=2732
.Linfo_string222:
	.asciz	"signed char"                   # string offset=2747
.Linfo_string223:
	.asciz	"_shortbuf"                     # string offset=2759
.Linfo_string224:
	.asciz	"_lock"                         # string offset=2769
.Linfo_string225:
	.asciz	"_IO_lock_t"                    # string offset=2775
.Linfo_string226:
	.asciz	"_offset"                       # string offset=2786
.Linfo_string227:
	.asciz	"__off64_t"                     # string offset=2794
.Linfo_string228:
	.asciz	"_codecvt"                      # string offset=2804
.Linfo_string229:
	.asciz	"_IO_codecvt"                   # string offset=2813
.Linfo_string230:
	.asciz	"_wide_data"                    # string offset=2825
.Linfo_string231:
	.asciz	"_IO_wide_data"                 # string offset=2836
.Linfo_string232:
	.asciz	"_freeres_list"                 # string offset=2850
.Linfo_string233:
	.asciz	"_freeres_buf"                  # string offset=2864
.Linfo_string234:
	.asciz	"__pad5"                        # string offset=2877
.Linfo_string235:
	.asciz	"unsigned long"                 # string offset=2884
.Linfo_string236:
	.asciz	"size_t"                        # string offset=2898
.Linfo_string237:
	.asciz	"_mode"                         # string offset=2905
.Linfo_string238:
	.asciz	"_unused2"                      # string offset=2911
.Linfo_string239:
	.asciz	"_IO_FILE"                      # string offset=2920
.Linfo_string240:
	.asciz	"FILE"                          # string offset=2929
.Linfo_string241:
	.asciz	"h"                             # string offset=2934
.Linfo_string242:
	.asciz	"input"                         # string offset=2936
.Linfo_string243:
	.asciz	"p_handle"                      # string offset=2942
.Linfo_string244:
	.asciz	"frame_total"                   # string offset=2951
.Linfo_string245:
	.asciz	"auto_timebase_num"             # string offset=2963
.Linfo_string246:
	.asciz	"auto_timebase_den"             # string offset=2981
.Linfo_string247:
	.asciz	"__uint64_t"                    # string offset=2999
.Linfo_string248:
	.asciz	"uint64_t"                      # string offset=3010
.Linfo_string249:
	.asciz	"stored_pts_num"                # string offset=3019
.Linfo_string250:
	.asciz	"pts"                           # string offset=3034
.Linfo_string251:
	.asciz	"assume_fps"                    # string offset=3038
.Linfo_string252:
	.asciz	"last_timecode"                 # string offset=3049
.Linfo_string253:
	.asciz	"timecode_hnd_t"                # string offset=3063
.Linfo_string254:
	.asciz	"info"                          # string offset=3078
.Linfo_string255:
	.asciz	"buff"                          # string offset=3083
.Linfo_string256:
	.asciz	"tcfv"                          # string offset=3088
.Linfo_string257:
	.asciz	"timecodes"                     # string offset=3093
.Linfo_string258:
	.asciz	"fpss"                          # string offset=3103
.Linfo_string259:
	.asciz	"ret"                           # string offset=3108
.Linfo_string260:
	.asciz	"num"                           # string offset=3112
.Linfo_string261:
	.asciz	"seq_num"                       # string offset=3116
.Linfo_string262:
	.asciz	"timecodes_num"                 # string offset=3124
.Linfo_string263:
	.asciz	"pts_seek_offset"               # string offset=3138
.Linfo_string264:
	.asciz	"fail"                          # string offset=3154
.Linfo_string265:
	.asciz	"seq_fps"                       # string offset=3159
.Linfo_string266:
	.asciz	"start"                         # string offset=3167
.Linfo_string267:
	.asciz	"end"                           # string offset=3173
.Linfo_string268:
	.asciz	"prev_start"                    # string offset=3177
.Linfo_string269:
	.asciz	"prev_end"                      # string offset=3188
.Linfo_string270:
	.asciz	"file_pos"                      # string offset=3197
.Linfo_string271:
	.asciz	"exponent"                      # string offset=3206
.Linfo_string272:
	.asciz	"assume_fps_sig"                # string offset=3215
.Linfo_string273:
	.asciz	"seq_fps_sig"                   # string offset=3230
.Linfo_string274:
	.asciz	"fps_sig"                       # string offset=3242
.Linfo_string275:
	.asciz	"i"                             # string offset=3250
.Linfo_string276:
	.asciz	"sigexp10"                      # string offset=3252
.Linfo_string277:
	.asciz	"value"                         # string offset=3261
.Linfo_string278:
	.asciz	"gcd"                           # string offset=3267
.Linfo_string279:
	.asciz	"a"                             # string offset=3271
.Linfo_string280:
	.asciz	"b"                             # string offset=3273
.Linfo_string281:
	.asciz	"c"                             # string offset=3275
.Linfo_string282:
	.asciz	"lcm"                           # string offset=3277
.Linfo_string283:
	.asciz	"malloc"                        # string offset=3281
.Linfo_string284:
	.asciz	"__isoc99_sscanf"               # string offset=3288
.Linfo_string285:
	.asciz	"sscanf"                        # string offset=3304
.Linfo_string286:
	.asciz	"strtoul"                       # string offset=3311
.Linfo_string287:
	.asciz	"fopen64"                       # string offset=3319
.Linfo_string288:
	.asciz	"fopen"                         # string offset=3327
.Linfo_string289:
	.asciz	"__isoc99_fscanf"               # string offset=3333
.Linfo_string290:
	.asciz	"fscanf"                        # string offset=3349
.Linfo_string291:
	.asciz	"fgets"                         # string offset=3356
.Linfo_string292:
	.asciz	"ftell"                         # string offset=3362
.Linfo_string293:
	.asciz	"fseek"                         # string offset=3368
.Linfo_string294:
	.asciz	"log10"                         # string offset=3374
.Linfo_string295:
	.asciz	"pow"                           # string offset=3380
.Linfo_string296:
	.asciz	"fprintf"                       # string offset=3384
.Linfo_string297:
	.asciz	"free"                          # string offset=3392
.Linfo_string298:
	.asciz	"fclose"                        # string offset=3397
.Linfo_string299:
	.asciz	"correct_fps"                   # string offset=3404
.Linfo_string300:
	.asciz	"try_mkv_timebase_den"          # string offset=3416
.Linfo_string301:
	.asciz	"psz_filename"                  # string offset=3437
.Linfo_string302:
	.asciz	"opt"                           # string offset=3450
.Linfo_string303:
	.asciz	"handle"                        # string offset=3454
.Linfo_string304:
	.asciz	"p_pic"                         # string offset=3461
.Linfo_string305:
	.asciz	"i_frame"                       # string offset=3467
.Linfo_string306:
	.asciz	"pic"                           # string offset=3475
.Linfo_string307:
	.asciz	"fps"                           # string offset=3479
.Linfo_string308:
	.asciz	"loop_num"                      # string offset=3483
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
	.long	.Linfo_string187
	.long	.Linfo_string188
	.long	.Linfo_string189
	.long	.Linfo_string190
	.long	.Linfo_string191
	.long	.Linfo_string192
	.long	.Linfo_string193
	.long	.Linfo_string194
	.long	.Linfo_string195
	.long	.Linfo_string196
	.long	.Linfo_string197
	.long	.Linfo_string198
	.long	.Linfo_string199
	.long	.Linfo_string200
	.long	.Linfo_string201
	.long	.Linfo_string202
	.long	.Linfo_string203
	.long	.Linfo_string204
	.long	.Linfo_string205
	.long	.Linfo_string206
	.long	.Linfo_string207
	.long	.Linfo_string208
	.long	.Linfo_string209
	.long	.Linfo_string210
	.long	.Linfo_string211
	.long	.Linfo_string212
	.long	.Linfo_string213
	.long	.Linfo_string214
	.long	.Linfo_string215
	.long	.Linfo_string216
	.long	.Linfo_string217
	.long	.Linfo_string218
	.long	.Linfo_string219
	.long	.Linfo_string220
	.long	.Linfo_string221
	.long	.Linfo_string222
	.long	.Linfo_string223
	.long	.Linfo_string224
	.long	.Linfo_string225
	.long	.Linfo_string226
	.long	.Linfo_string227
	.long	.Linfo_string228
	.long	.Linfo_string229
	.long	.Linfo_string230
	.long	.Linfo_string231
	.long	.Linfo_string232
	.long	.Linfo_string233
	.long	.Linfo_string234
	.long	.Linfo_string235
	.long	.Linfo_string236
	.long	.Linfo_string237
	.long	.Linfo_string238
	.long	.Linfo_string239
	.long	.Linfo_string240
	.long	.Linfo_string241
	.long	.Linfo_string242
	.long	.Linfo_string243
	.long	.Linfo_string244
	.long	.Linfo_string245
	.long	.Linfo_string246
	.long	.Linfo_string247
	.long	.Linfo_string248
	.long	.Linfo_string249
	.long	.Linfo_string250
	.long	.Linfo_string251
	.long	.Linfo_string252
	.long	.Linfo_string253
	.long	.Linfo_string254
	.long	.Linfo_string255
	.long	.Linfo_string256
	.long	.Linfo_string257
	.long	.Linfo_string258
	.long	.Linfo_string259
	.long	.Linfo_string260
	.long	.Linfo_string261
	.long	.Linfo_string262
	.long	.Linfo_string263
	.long	.Linfo_string264
	.long	.Linfo_string265
	.long	.Linfo_string266
	.long	.Linfo_string267
	.long	.Linfo_string268
	.long	.Linfo_string269
	.long	.Linfo_string270
	.long	.Linfo_string271
	.long	.Linfo_string272
	.long	.Linfo_string273
	.long	.Linfo_string274
	.long	.Linfo_string275
	.long	.Linfo_string276
	.long	.Linfo_string277
	.long	.Linfo_string278
	.long	.Linfo_string279
	.long	.Linfo_string280
	.long	.Linfo_string281
	.long	.Linfo_string282
	.long	.Linfo_string283
	.long	.Linfo_string284
	.long	.Linfo_string285
	.long	.Linfo_string286
	.long	.Linfo_string287
	.long	.Linfo_string288
	.long	.Linfo_string289
	.long	.Linfo_string290
	.long	.Linfo_string291
	.long	.Linfo_string292
	.long	.Linfo_string293
	.long	.Linfo_string294
	.long	.Linfo_string295
	.long	.Linfo_string296
	.long	.Linfo_string297
	.long	.Linfo_string298
	.long	.Linfo_string299
	.long	.Linfo_string300
	.long	.Linfo_string301
	.long	.Linfo_string302
	.long	.Linfo_string303
	.long	.Linfo_string304
	.long	.Linfo_string305
	.long	.Linfo_string306
	.long	.Linfo_string307
	.long	.Linfo_string308
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	timecode_input
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.Lfunc_begin0
	.quad	.Ltmp385
	.quad	.Ltmp391
	.quad	.Ltmp416
	.quad	.Ltmp193
	.quad	.Ltmp213
	.quad	.Ltmp367
	.quad	.Ltmp2
	.quad	.Ltmp6
	.quad	.Ltmp12
	.quad	.Ltmp16
	.quad	.Ltmp30
	.quad	.Ltmp36
	.quad	.Ltmp45
	.quad	.Ltmp53
	.quad	.Ltmp59
	.quad	.Ltmp63
	.quad	.Ltmp70
	.quad	.Ltmp77
	.quad	.Ltmp81
	.quad	.Ltmp94
	.quad	.Ltmp97
	.quad	.Ltmp107
	.quad	.Ltmp111
	.quad	.Ltmp117
	.quad	.Ltmp118
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp132
	.quad	.Ltmp135
	.quad	.Ltmp138
	.quad	.Ltmp159
	.quad	.Ltmp160
	.quad	.Ltmp168
	.quad	.Ltmp177
	.quad	.Ltmp194
	.quad	.Ltmp196
	.quad	.Ltmp246
	.quad	.Ltmp248
	.quad	.Ltmp253
	.quad	.Ltmp259
	.quad	.Ltmp262
	.quad	.Ltmp272
	.quad	.Ltmp285
	.quad	.Ltmp288
	.quad	.Ltmp320
	.quad	.Ltmp339
	.quad	.Ltmp349
	.quad	.Ltmp364
	.quad	.Ltmp365
	.quad	.Ltmp386
	.quad	.Ltmp389
	.quad	.Ltmp392
	.quad	.Ltmp394
	.quad	.Ltmp406
	.quad	.Ltmp409
	.quad	.Ltmp417
	.quad	.Ltmp419
	.quad	.Ltmp452
	.quad	.Ltmp459
	.quad	.Ltmp469
	.quad	.Ltmp472
	.quad	.Ltmp478
	.quad	.Ltmp479
	.quad	.Ltmp483
	.quad	.Ltmp486
	.quad	.Ltmp487
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp496
	.quad	.Ltmp508
	.quad	.Ltmp509
	.quad	.Lfunc_begin3
	.quad	.Ltmp513
	.quad	.Lfunc_begin4
	.quad	.Ltmp521
	.quad	.Ltmp522
	.quad	.Ltmp523
	.quad	.Lfunc_begin5
	.quad	.Ltmp555
	.quad	.Ltmp528
	.quad	.Ltmp530
	.quad	.Lfunc_begin6
	.quad	.Ltmp588
	.quad	.Ltmp603
	.quad	.Ltmp589
	.quad	.Ltmp591
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
