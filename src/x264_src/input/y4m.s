	.text
	.file	"y4m.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/input/y4m.c" md5 0xbd4a78066023f04fd68f7bcf30d32bbf
	.file	1 "x264_src" "muxers.h" md5 0xbcea0820748b2dc47392b7f6393a96ff
	.file	2 "x264_src/input" "input.h" md5 0xf28c863d273681dfcaca9779e9fcbd53
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "x264_src" "x264.h" md5 0x0b04871e4f52d5a4d8833c501cba2584
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	7 "x264_src/common" "common.h" md5 0x5afac7bf2f5673f1628c455d7d320ad7
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
.Lfunc_begin0:
	.loc	0 41 0                          # x264_src/input/y4m.c:41:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: open_file:psz_filename <- $rdi
	#DEBUG_VALUE: open_file:p_handle <- $rsi
	#DEBUG_VALUE: open_file:info <- $rdx
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
.Ltmp0:
	.loc	0 42 20 prologue_end            # x264_src/input/y4m.c:42:20
	movl	$32, %edi
.Ltmp1:
	#DEBUG_VALUE: open_file:psz_filename <- $r13
	callq	malloc@PLT
.Ltmp2:
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 0 20 is_stmt 0                # x264_src/input/y4m.c:0:20
	movl	$-1, %ebx
.Ltmp3:
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 49 10 is_stmt 1               # x264_src/input/y4m.c:49:10
	testq	%rax, %rax
.Ltmp4:
	.loc	0 49 9 is_stmt 0                # x264_src/input/y4m.c:49:9
	je	.LBB0_49
.Ltmp5:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: open_file:psz_filename <- $r13
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $rax
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 0 0                           # x264_src/input/y4m.c:0:0
	movq	%rax, %r15
	.loc	0 52 19 is_stmt 1               # x264_src/input/y4m.c:52:19
	movl	$0, 16(%rax)
	.loc	0 53 15                         # x264_src/input/y4m.c:53:15
	movl	$0, 40(%r12)
	cmpb	$45, (%r13)
	jne	.LBB0_3
.Ltmp6:
# %bb.2:                                # %sub_1
	#DEBUG_VALUE: open_file:psz_filename <- $r13
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 55 10                         # x264_src/input/y4m.c:55:10
	cmpb	$0, 1(%r13)
.Ltmp7:
	.loc	0 55 9 is_stmt 0                # x264_src/input/y4m.c:55:9
	je	.LBB0_10
.Ltmp8:
.LBB0_3:                                # %if.else
	#DEBUG_VALUE: open_file:psz_filename <- $r13
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 58 17 is_stmt 1               # x264_src/input/y4m.c:58:17
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	fopen64@PLT
.Ltmp9:
	movq	%rax, %r13
.Ltmp10:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 0 is_stmt 0                 # x264_src/input/y4m.c:0:0
	movq	%r13, (%r15)
.Ltmp11:
	.loc	0 59 15 is_stmt 1               # x264_src/input/y4m.c:59:15
	testq	%r13, %r13
.Ltmp12:
	.loc	0 59 9 is_stmt 0                # x264_src/input/y4m.c:59:9
	je	.LBB0_49
.Ltmp13:
.LBB0_4:                                # %if.end9
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 0 9                           # x264_src/input/y4m.c:0:9
	movq	%r14, 24(%rsp)                  # 8-byte Spill
.Ltmp14:
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 62 25 is_stmt 1               # x264_src/input/y4m.c:62:25
	movl	$6, 24(%r15)
	xorl	%r14d, %r14d
.Ltmp15:
	#DEBUG_VALUE: open_file:i <- 0
	.p2align	4, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:i <- $r14
	.loc	0 67 21                         # x264_src/input/y4m.c:67:21
	movq	%r13, %rdi
	callq	fgetc@PLT
.Ltmp16:
	.loc	0 67 19 is_stmt 0               # x264_src/input/y4m.c:67:19
	movb	%al, 32(%rsp,%r14)
.Ltmp17:
	.loc	0 68 23 is_stmt 1               # x264_src/input/y4m.c:68:23
	cmpb	$10, %al
.Ltmp18:
	.loc	0 68 13 is_stmt 0               # x264_src/input/y4m.c:68:13
	je	.LBB0_7
.Ltmp19:
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:i <- $r14
	.loc	0 0 0                           # x264_src/input/y4m.c:0:0
	incq	%r14
.Ltmp20:
	#DEBUG_VALUE: open_file:i <- $r14
	.loc	0 65 19 is_stmt 1               # x264_src/input/y4m.c:65:19
	cmpq	$80, %r14
.Ltmp21:
	.loc	0 65 5 is_stmt 0                # x264_src/input/y4m.c:65:5
	jne	.LBB0_5
	jmp	.LBB0_49
.Ltmp22:
.LBB0_7:                                # %lor.lhs.false
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:i <- $r14
	.loc	0 72 25 is_stmt 1               # x264_src/input/y4m.c:72:25
	movw	$32, 33(%rsp,%r14)
	movabsq	$5135599242606695769, %rax      # imm = 0x4745504D34565559
.Ltmp23:
	.loc	0 77 33                         # x264_src/input/y4m.c:77:33
	xorq	32(%rsp), %rax
	movzbl	40(%rsp), %ecx
	xorq	$50, %rcx
	orq	%rax, %rcx
.Ltmp24:
	.loc	0 77 9 is_stmt 0                # x264_src/input/y4m.c:77:9
	jne	.LBB0_49
.Ltmp25:
# %bb.8:                                # %if.end30
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:i <- $r14
	.loc	0 81 19 is_stmt 1               # x264_src/input/y4m.c:81:19
	leal	1(%r14), %eax
.Ltmp26:
	#DEBUG_VALUE: open_file:header_end <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 32, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_plus_uconst 1, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_stack_value] $rsp, $r14
	.loc	0 82 23                         # x264_src/input/y4m.c:82:23
	movl	%eax, 20(%r15)
.Ltmp27:
	#DEBUG_VALUE: tokstart <- [DW_OP_plus_uconst 32, DW_OP_plus_uconst 10, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:colorspace <- 0
	.loc	0 83 68                         # x264_src/input/y4m.c:83:68
	cmpq	$10, %r14
.Ltmp28:
	.loc	0 83 5 is_stmt 0                # x264_src/input/y4m.c:83:5
	jb	.LBB0_48
.Ltmp29:
# %bb.9:                                # %for.body39.lr.ph
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	#DEBUG_VALUE: open_file:i <- $r14
	#DEBUG_VALUE: open_file:header_end <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 32, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_plus_uconst 1, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_stack_value] $rsp, $r14
	#DEBUG_VALUE: tokstart <- [DW_OP_plus_uconst 32, DW_OP_plus_uconst 10, DW_OP_stack_value] $rsp
	.loc	0 0 5                           # x264_src/input/y4m.c:0:5
	addq	%rsp, %r14
.Ltmp30:
	addq	$33, %r14
	.loc	0 83 28                         # x264_src/input/y4m.c:83:28
	leaq	42(%rsp), %r13
.Ltmp31:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 0 28                          # x264_src/input/y4m.c:0:28
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB0_15
.Ltmp32:
.LBB0_10:                               # %if.then3
	#DEBUG_VALUE: open_file:psz_filename <- $r13
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- 0
	#DEBUG_VALUE: open_file:alt_colorspace <- 0
	.loc	0 56 17 is_stmt 1               # x264_src/input/y4m.c:56:17
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
.Ltmp33:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 0 is_stmt 0                 # x264_src/input/y4m.c:0:0
	movq	%r13, (%r15)
.Ltmp34:
	.loc	0 59 15 is_stmt 1               # x264_src/input/y4m.c:59:15
	testq	%r13, %r13
.Ltmp35:
	.loc	0 59 9 is_stmt 0                # x264_src/input/y4m.c:59:9
	jne	.LBB0_4
	jmp	.LBB0_49
.Ltmp36:
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 0 9                           # x264_src/input/y4m.c:0:9
	negl	%eax
.Ltmp37:
.LBB0_12:                               # %sw.bb53.tail
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 98 22 is_stmt 1               # x264_src/input/y4m.c:98:22
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	1(,%rcx,8), %eax
.Ltmp38:
	#DEBUG_VALUE: open_file:colorspace <- $eax
	.loc	0 0 22 is_stmt 0                # x264_src/input/y4m.c:0:22
	movl	%eax, 12(%rsp)                  # 4-byte Spill
.Ltmp39:
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
.LBB0_13:                               # %if.end99
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	#DEBUG_VALUE: tokstart <- $rbp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	movq	%rbp, %rdi
	movl	$32, %esi
	callq	strchr@PLT
.Ltmp40:
	movq	%rax, %r13
.Ltmp41:
	#DEBUG_VALUE: tokstart <- $r13
.LBB0_14:                               # %for.inc102
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	#DEBUG_VALUE: tokstart <- $r13
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	.loc	0 83 90 is_stmt 1               # x264_src/input/y4m.c:83:90
	incq	%r13
.Ltmp42:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 83 68 is_stmt 0               # x264_src/input/y4m.c:83:68
	cmpq	%r14, %r13
.Ltmp43:
	.loc	0 83 5                          # x264_src/input/y4m.c:83:5
	jae	.LBB0_47
.Ltmp44:
.LBB0_15:                               # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: tokstart <- $r13
	#DEBUG_VALUE: tokstart <- $r13
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	.loc	0 85 13 is_stmt 1               # x264_src/input/y4m.c:85:13
	movzbl	(%r13), %eax
	cmpl	$32, %eax
.Ltmp45:
	.loc	0 85 13 is_stmt 0               # x264_src/input/y4m.c:85:13
	je	.LBB0_14
.Ltmp46:
# %bb.16:                               # %if.end44
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 87 26 is_stmt 1               # x264_src/input/y4m.c:87:26
	leaq	1(%r13), %rbp
.Ltmp47:
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 87 9 is_stmt 0                # x264_src/input/y4m.c:87:9
	addl	$-65, %eax
	cmpl	$23, %eax
	ja	.LBB0_40
.Ltmp48:
# %bb.17:                               # %if.end44
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	jmpq	*.LJTI0_0(,%rax,8)
.Ltmp49:
.LBB0_18:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 135 21 is_stmt 1              # x264_src/input/y4m.c:135:21
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp50:
	.loc	0 135 57 is_stmt 0              # x264_src/input/y4m.c:135:57
	cmpl	$2, %eax
	.loc	0 135 62                        # x264_src/input/y4m.c:135:62
	jne	.LBB0_13
.Ltmp51:
# %bb.19:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	cmpl	$0, 4(%rsp)
	je	.LBB0_13
.Ltmp52:
# %bb.20:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	cmpl	$0, (%rsp)
	je	.LBB0_13
.Ltmp53:
# %bb.21:                               # %if.then87
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 137 21 is_stmt 1              # x264_src/input/y4m.c:137:21
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
.Ltmp54:
	.loc	0 138 40                        # x264_src/input/y4m.c:138:40
	movl	4(%rsp), %eax
	.loc	0 138 38 is_stmt 0              # x264_src/input/y4m.c:138:38
	movl	%eax, 20(%r12)
	.loc	0 139 40 is_stmt 1              # x264_src/input/y4m.c:139:40
	movl	(%rsp), %eax
	.loc	0 139 38 is_stmt 0              # x264_src/input/y4m.c:139:38
	movl	%eax, 24(%r12)
	jmp	.LBB0_13
.Ltmp55:
.LBB0_40:                               #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 0 38                          # x264_src/input/y4m.c:0:38
	movq	%rbp, %r13
.Ltmp56:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 87 9 is_stmt 1                # x264_src/input/y4m.c:87:9
	jmp	.LBB0_14
.Ltmp57:
.LBB0_22:                               # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 90 42                         # x264_src/input/y4m.c:90:42
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp58:
	.loc	0 90 40 is_stmt 0               # x264_src/input/y4m.c:90:40
	movl	%eax, 44(%r12)
	.loc	0 90 26                         # x264_src/input/y4m.c:90:26
	movl	%eax, 8(%r15)
	.loc	0 91 26 is_stmt 1               # x264_src/input/y4m.c:91:26
	movq	16(%rsp), %r13
.Ltmp59:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 96 17                         # x264_src/input/y4m.c:96:17
	jmp	.LBB0_14
.Ltmp60:
.LBB0_23:                               # %sub_0179
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 0 17 is_stmt 0                # x264_src/input/y4m.c:0:17
	movzbl	(%rbp), %eax
	subl	$52, %eax
	jne	.LBB0_11
.Ltmp61:
# %bb.24:                               # %sub_1180
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	movzbl	2(%r13), %eax
	subl	$50, %eax
	jne	.LBB0_11
.Ltmp62:
# %bb.25:                               # %sub_2
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	movzbl	3(%r13), %ecx
	movl	$48, %eax
	subl	%ecx, %eax
	jmp	.LBB0_12
.Ltmp63:
.LBB0_26:                               # %sw.bb90
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 144 22 is_stmt 1              # x264_src/input/y4m.c:144:22
	movl	$.L.str.5, %edi
	movl	$6, %edx
	movq	%rbp, %rsi
	callq	strncmp@PLT
.Ltmp64:
	testl	%eax, %eax
.Ltmp65:
	.loc	0 144 21 is_stmt 0              # x264_src/input/y4m.c:144:21
	jne	.LBB0_13
.Ltmp66:
# %bb.27:                               # %if.then93
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	#DEBUG_VALUE: tokstart <- undef
	.loc	0 0 21                          # x264_src/input/y4m.c:0:21
	movzbl	7(%r13), %eax
	subl	$52, %eax
	jne	.LBB0_45
.Ltmp67:
# %bb.28:                               # %sub_1183
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	movzbl	8(%r13), %eax
	subl	$50, %eax
	jne	.LBB0_45
.Ltmp68:
# %bb.29:                               # %sub_2184
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	movzbl	9(%r13), %ecx
	movl	$48, %eax
	subl	%ecx, %eax
	jmp	.LBB0_46
.Ltmp69:
.LBB0_30:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 125 21 is_stmt 1              # x264_src/input/y4m.c:125:21
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp70:
	.loc	0 125 57 is_stmt 0              # x264_src/input/y4m.c:125:57
	cmpl	$2, %eax
	.loc	0 125 62                        # x264_src/input/y4m.c:125:62
	jne	.LBB0_13
.Ltmp71:
# %bb.31:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	cmpl	$0, 4(%rsp)
	je	.LBB0_13
.Ltmp72:
# %bb.32:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	cmpl	$0, (%rsp)
	je	.LBB0_13
.Ltmp73:
# %bb.33:                               # %if.then76
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 127 21 is_stmt 1              # x264_src/input/y4m.c:127:21
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
.Ltmp74:
	.loc	0 128 37                        # x264_src/input/y4m.c:128:37
	movl	4(%rsp), %eax
	.loc	0 128 35 is_stmt 0              # x264_src/input/y4m.c:128:35
	movl	%eax, 4(%r12)
	.loc	0 129 37 is_stmt 1              # x264_src/input/y4m.c:129:37
	movl	(%rsp), %eax
	.loc	0 129 35 is_stmt 0              # x264_src/input/y4m.c:129:35
	movl	%eax, 8(%r12)
	jmp	.LBB0_13
.Ltmp75:
.LBB0_34:                               # %sw.bb49
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 94 44 is_stmt 1               # x264_src/input/y4m.c:94:44
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp76:
	.loc	0 94 42 is_stmt 0               # x264_src/input/y4m.c:94:42
	movl	%eax, 12(%r12)
	.loc	0 94 27                         # x264_src/input/y4m.c:94:27
	movl	%eax, 12(%r15)
	.loc	0 95 26 is_stmt 1               # x264_src/input/y4m.c:95:26
	movq	16(%rsp), %r13
.Ltmp77:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 96 17                         # x264_src/input/y4m.c:96:17
	jmp	.LBB0_14
.Ltmp78:
.LBB0_35:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $rbp
	.loc	0 105 25                        # x264_src/input/y4m.c:105:25
	movzbl	1(%r13), %eax
	.loc	0 105 34 is_stmt 0              # x264_src/input/y4m.c:105:34
	addq	$2, %r13
.Ltmp79:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 105 25                        # x264_src/input/y4m.c:105:25
	cmpl	$98, %eax
	.loc	0 105 17                        # x264_src/input/y4m.c:105:17
	je	.LBB0_43
.Ltmp80:
# %bb.36:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	cmpl	$109, %eax
	je	.LBB0_42
.Ltmp81:
# %bb.37:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	cmpl	$116, %eax
	jne	.LBB0_14
.Ltmp82:
# %bb.38:                               # %sw.bb63
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 108 42 is_stmt 1              # x264_src/input/y4m.c:108:42
	movl	$1, 16(%r12)
	.loc	0 109 35                        # x264_src/input/y4m.c:109:35
	movl	$1, 28(%r12)
	.loc	0 110 25                        # x264_src/input/y4m.c:110:25
	jmp	.LBB0_14
.Ltmp83:
.LBB0_45:                               #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 0 25 is_stmt 0                # x264_src/input/y4m.c:0:25
	negl	%eax
.Ltmp84:
.LBB0_46:                               # %if.then93.tail
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	addq	$7, %r13
.Ltmp85:
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 148 26 is_stmt 1              # x264_src/input/y4m.c:148:26
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	1(,%rcx,8), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
.Ltmp86:
	#DEBUG_VALUE: open_file:alt_colorspace <- undef
	.loc	0 0 26 is_stmt 0                # x264_src/input/y4m.c:0:26
	movq	%r13, %rbp
	jmp	.LBB0_13
.Ltmp87:
.LBB0_42:                               # %sw.bb67
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 116 42 is_stmt 1              # x264_src/input/y4m.c:116:42
	movl	$1, 16(%r12)
	.loc	0 117 25                        # x264_src/input/y4m.c:117:25
	jmp	.LBB0_14
.Ltmp88:
.LBB0_43:                               # %sw.bb64
                                        #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: tokstart <- $r13
	.loc	0 112 42                        # x264_src/input/y4m.c:112:42
	movl	$1, 16(%r12)
	.loc	0 113 35                        # x264_src/input/y4m.c:113:35
	movl	$0, 28(%r12)
	.loc	0 114 25                        # x264_src/input/y4m.c:114:25
	jmp	.LBB0_14
.Ltmp89:
.LBB0_47:                               # %for.cond.cleanup
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:colorspace <- [DW_OP_plus_uconst 12, DW_OP_deref] $rsp
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 0 25 is_stmt 0                # x264_src/input/y4m.c:0:25
	movl	12(%rsp), %eax                  # 4-byte Reload
.Ltmp90:
	.loc	0 158 20 is_stmt 1              # x264_src/input/y4m.c:158:20
	testl	%eax, %eax
	movl	8(%rsp), %ecx                   # 4-byte Reload
.Ltmp91:
	.loc	0 158 9 is_stmt 0               # x264_src/input/y4m.c:158:9
	cmovnel	%eax, %ecx
.Ltmp92:
	#DEBUG_VALUE: open_file:colorspace <- undef
	.loc	0 165 20 is_stmt 1              # x264_src/input/y4m.c:165:20
	cmpl	$2, %ecx
.Ltmp93:
	.loc	0 165 9 is_stmt 0               # x264_src/input/y4m.c:165:9
	jae	.LBB0_50
.Ltmp94:
.LBB0_48:                               # %if.end117
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 0 9                           # x264_src/input/y4m.c:0:9
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	0 171 15 is_stmt 1              # x264_src/input/y4m.c:171:15
	movq	%r15, (%rax)
	xorl	%ebx, %ebx
.Ltmp95:
.LBB0_49:                               # %cleanup
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- $r12
	.loc	0 173 1                         # x264_src/input/y4m.c:173:1
	movl	%ebx, %eax
	.loc	0 173 1 epilogue_begin is_stmt 0 # x264_src/input/y4m.c:173:1
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp96:
	#DEBUG_VALUE: open_file:info <- [DW_OP_LLVM_entry_value 1] $rdx
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
.Ltmp97:
.LBB0_50:                               # %if.then115
	.cfi_def_cfa_offset 192
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r12
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: open_file:alt_colorspace <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 167 18 is_stmt 1              # x264_src/input/y4m.c:167:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 167 9 is_stmt 0               # x264_src/input/y4m.c:167:9
	movl	$.L.str.6, %edi
	movl	$34, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp98:
	.loc	0 168 9 is_stmt 1               # x264_src/input/y4m.c:168:9
	jmp	.LBB0_49
.Ltmp99:
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_40
	.quad	.LBB0_23
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_30
	.quad	.LBB0_40
	.quad	.LBB0_34
	.quad	.LBB0_35
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_22
	.quad	.LBB0_26
	.file	8 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	10 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	13 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
.Lfunc_begin1:
	.loc	0 177 0                         # x264_src/input/y4m.c:177:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: get_frame_total:handle <- $rdi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp100:
	#DEBUG_VALUE: get_frame_total:h <- $rdi
	movq	%rdi, %rbx
.Ltmp101:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- 0
	.loc	0 183 39 prologue_end           # x264_src/input/y4m.c:183:39
	movq	(%rdi), %rdi
.Ltmp102:
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	.loc	0 183 29 is_stmt 0              # x264_src/input/y4m.c:183:29
	callq	ftell@PLT
.Ltmp103:
	movq	%rax, %r14
.Ltmp104:
	#DEBUG_VALUE: init_pos <- $r14
	.loc	0 184 19 is_stmt 1              # x264_src/input/y4m.c:184:19
	movq	(%rbx), %rdi
	.loc	0 184 9 is_stmt 0               # x264_src/input/y4m.c:184:9
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
.Ltmp105:
	.loc	0 185 37 is_stmt 1              # x264_src/input/y4m.c:185:37
	movq	(%rbx), %rdi
	.loc	0 185 27 is_stmt 0              # x264_src/input/y4m.c:185:27
	callq	ftell@PLT
.Ltmp106:
	movq	%rax, %r15
.Ltmp107:
	#DEBUG_VALUE: i_size <- $r15
	.loc	0 186 19 is_stmt 1              # x264_src/input/y4m.c:186:19
	movq	(%rbx), %rdi
	.loc	0 186 9 is_stmt 0               # x264_src/input/y4m.c:186:9
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp108:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- undef
	.loc	0 187 44 is_stmt 1              # x264_src/input/y4m.c:187:44
	movslq	20(%rbx), %rcx
	.loc	0 188 38                        # x264_src/input/y4m.c:188:38
	movl	8(%rbx), %edx
	.loc	0 188 43 is_stmt 0              # x264_src/input/y4m.c:188:43
	imull	12(%rbx), %edx
	.loc	0 187 39 is_stmt 1              # x264_src/input/y4m.c:187:39
	subq	%rcx, %r15
.Ltmp109:
	.loc	0 188 33                        # x264_src/input/y4m.c:188:33
	leal	(%rdx,%rdx,2), %ecx
	.loc	0 188 54 is_stmt 0              # x264_src/input/y4m.c:188:54
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	.loc	0 188 60                        # x264_src/input/y4m.c:188:60
	movslq	24(%rbx), %rsi
	.loc	0 188 56                        # x264_src/input/y4m.c:188:56
	movslq	%edx, %rcx
	addq	%rsi, %rcx
	.loc	0 187 60 is_stmt 1              # x264_src/input/y4m.c:187:60
	movq	%r15, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB1_1
.Ltmp110:
# %bb.2:
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: init_pos <- $r14
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rcx
.Ltmp111:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- $eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 191 5 epilogue_begin          # x264_src/input/y4m.c:191:5
	popq	%rbx
.Ltmp112:
	#DEBUG_VALUE: get_frame_total:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp114:
.LBB1_1:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: init_pos <- $r14
	.loc	0 187 60                        # x264_src/input/y4m.c:187:60
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%ecx
.Ltmp115:
                                        # kill: def $eax killed $eax def $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- $eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 191 5 epilogue_begin          # x264_src/input/y4m.c:191:5
	popq	%rbx
.Ltmp116:
	#DEBUG_VALUE: get_frame_total:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp118:
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_frame
	.type	read_frame,@function
read_frame:                             # @read_frame
.Lfunc_begin2:
	.loc	0 231 0                         # x264_src/input/y4m.c:231:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: read_frame:p_pic <- $rdi
	#DEBUG_VALUE: read_frame:handle <- $rsi
	#DEBUG_VALUE: read_frame:i_frame <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp119:
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 234 17 prologue_end           # x264_src/input/y4m.c:234:17
	cmpl	%edx, 16(%rsi)
.Ltmp120:
	.loc	0 234 9 is_stmt 0               # x264_src/input/y4m.c:234:9
	jge	.LBB2_2
.Ltmp121:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 237 23 is_stmt 1              # x264_src/input/y4m.c:237:23
	movq	(%r14), %rdi
	.loc	0 237 52 is_stmt 0              # x264_src/input/y4m.c:237:52
	movl	8(%r14), %eax
	.loc	0 237 57                        # x264_src/input/y4m.c:237:57
	imull	12(%r14), %eax
	.loc	0 237 27                        # x264_src/input/y4m.c:237:27
	movslq	%ebx, %rcx
	.loc	0 237 47                        # x264_src/input/y4m.c:237:47
	leal	(%rax,%rax,2), %eax
	.loc	0 237 68                        # x264_src/input/y4m.c:237:68
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	.loc	0 237 74                        # x264_src/input/y4m.c:237:74
	movslq	24(%r14), %rax
	.loc	0 237 70                        # x264_src/input/y4m.c:237:70
	movslq	%edx, %rdx
	addq	%rax, %rdx
	.loc	0 237 44                        # x264_src/input/y4m.c:237:44
	imulq	%rcx, %rdx
	.loc	0 238 23 is_stmt 1              # x264_src/input/y4m.c:238:23
	movslq	20(%r14), %rsi
	.loc	0 238 18 is_stmt 0              # x264_src/input/y4m.c:238:18
	addq	%rdx, %rsi
	.loc	0 237 13 is_stmt 1              # x264_src/input/y4m.c:237:13
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp122:
.LBB2_2:                                # %if.end17
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- 0
	.loc	0 201 42                        # x264_src/input/y4m.c:201:42
	movq	(%r14), %rcx
	movq	%rsp, %rdi
	.loc	0 201 15 is_stmt 0              # x264_src/input/y4m.c:201:15
	movl	$1, %esi
	movl	$5, %edx
	callq	fread@PLT
.Ltmp123:
	.loc	0 201 47                        # x264_src/input/y4m.c:201:47
	cmpl	$5, %eax
.Ltmp124:
	.loc	0 201 9                         # x264_src/input/y4m.c:201:9
	jne	.LBB2_12
.Ltmp125:
# %bb.3:                                # %if.end.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- 0
	.loc	0 204 18 is_stmt 1              # x264_src/input/y4m.c:204:18
	movb	$0, 5(%rsp)
	movl	$1296126534, %eax               # imm = 0x4D415246
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
.Ltmp126:
	.loc	0 205 9                         # x264_src/input/y4m.c:205:9
	xorl	(%rsp), %eax
	movzbl	4(%rsp), %ecx
	xorl	$69, %ecx
	orl	%eax, %ecx
.Ltmp127:
	.loc	0 205 9 is_stmt 0               # x264_src/input/y4m.c:205:9
	jne	.LBB2_15
.Ltmp128:
# %bb.4:                                # %land.rhs.i.preheader
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- 0
	.loc	0 0 9                           # x264_src/input/y4m.c:0:9
	movl	$6, %ebp
.Ltmp129:
	.p2align	4, 0x90
.LBB2_5:                                # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 213 46 is_stmt 1              # x264_src/input/y4m.c:213:46
	movq	(%r14), %rdi
	.loc	0 213 36 is_stmt 0              # x264_src/input/y4m.c:213:36
	callq	fgetc@PLT
.Ltmp130:
	.loc	0 213 51                        # x264_src/input/y4m.c:213:51
	cmpl	$10, %eax
	.loc	0 213 5                         # x264_src/input/y4m.c:213:5
	je	.LBB2_8
.Ltmp131:
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 213 14                        # x264_src/input/y4m.c:213:14
	incl	%ebp
.Ltmp132:
	cmpl	$86, %ebp
	.loc	0 213 33                        # x264_src/input/y4m.c:213:33
	jne	.LBB2_5
.Ltmp133:
# %bb.7:                                # %if.then19.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	.loc	0 217 18 is_stmt 1              # x264_src/input/y4m.c:217:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 217 9 is_stmt 0               # x264_src/input/y4m.c:217:9
	movl	$.L.str.9, %edi
	movl	$31, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp134:
	.loc	0 0 9                           # x264_src/input/y4m.c:0:9
	jmp	.LBB2_12
.Ltmp135:
.LBB2_8:                                # %if.end21.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 220 25 is_stmt 1              # x264_src/input/y4m.c:220:25
	movl	%ebp, 24(%r14)
.Ltmp136:
	.loc	0 222 16                        # x264_src/input/y4m.c:222:16
	movq	64(%r15), %rdi
	.loc	0 222 40 is_stmt 0              # x264_src/input/y4m.c:222:40
	movslq	8(%r14), %rax
	.loc	0 222 51                        # x264_src/input/y4m.c:222:51
	movslq	12(%r14), %rsi
	.loc	0 222 46                        # x264_src/input/y4m.c:222:46
	imulq	%rax, %rsi
	.loc	0 222 65                        # x264_src/input/y4m.c:222:65
	movq	(%r14), %rcx
	.loc	0 222 9                         # x264_src/input/y4m.c:222:9
	movl	$1, %edx
	callq	fread@PLT
.Ltmp137:
	.loc	0 222 70                        # x264_src/input/y4m.c:222:70
	testq	%rax, %rax
	.loc	0 223 6 is_stmt 1               # x264_src/input/y4m.c:223:6
	je	.LBB2_12
.Ltmp138:
# %bb.9:                                # %lor.lhs.false.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 223 51 is_stmt 0              # x264_src/input/y4m.c:223:51
	movl	12(%r14), %eax
	.loc	0 223 46                        # x264_src/input/y4m.c:223:46
	imull	8(%r14), %eax
	.loc	0 223 58                        # x264_src/input/y4m.c:223:58
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	.loc	0 223 16                        # x264_src/input/y4m.c:223:16
	movq	72(%r15), %rdi
	.loc	0 223 58                        # x264_src/input/y4m.c:223:58
	sarl	$2, %ecx
	.loc	0 223 37                        # x264_src/input/y4m.c:223:37
	movslq	%ecx, %rsi
	.loc	0 223 69                        # x264_src/input/y4m.c:223:69
	movq	(%r14), %rcx
	.loc	0 223 9                         # x264_src/input/y4m.c:223:9
	movl	$1, %edx
	callq	fread@PLT
.Ltmp139:
	.loc	0 223 74                        # x264_src/input/y4m.c:223:74
	testq	%rax, %rax
	.loc	0 224 6 is_stmt 1               # x264_src/input/y4m.c:224:6
	je	.LBB2_12
.Ltmp140:
# %bb.10:                               # %read_frame_internal.exit
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 224 51 is_stmt 0              # x264_src/input/y4m.c:224:51
	movl	12(%r14), %eax
	.loc	0 224 46                        # x264_src/input/y4m.c:224:46
	imull	8(%r14), %eax
	.loc	0 224 58                        # x264_src/input/y4m.c:224:58
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	.loc	0 224 16                        # x264_src/input/y4m.c:224:16
	movq	80(%r15), %rdi
	.loc	0 224 58                        # x264_src/input/y4m.c:224:58
	sarl	$2, %ecx
	.loc	0 224 37                        # x264_src/input/y4m.c:224:37
	movslq	%ecx, %rsi
	.loc	0 224 69                        # x264_src/input/y4m.c:224:69
	movq	(%r14), %rcx
	.loc	0 224 9                         # x264_src/input/y4m.c:224:9
	movl	$1, %edx
	callq	fread@PLT
.Ltmp141:
	.loc	0 224 74                        # x264_src/input/y4m.c:224:74
	testq	%rax, %rax
.Ltmp142:
	.loc	0 248 9 is_stmt 1               # x264_src/input/y4m.c:248:9
	je	.LBB2_12
.Ltmp143:
# %bb.11:                               # %if.end21
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 251 28                        # x264_src/input/y4m.c:251:28
	incl	%ebx
.Ltmp144:
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 251 19 is_stmt 0              # x264_src/input/y4m.c:251:19
	movl	%ebx, 16(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_13
.Ltmp145:
.LBB2_15:                               # %if.then6.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	#DEBUG_VALUE: read_frame_internal:i <- 0
	.loc	0 207 18 is_stmt 1              # x264_src/input/y4m.c:207:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 208 18                        # x264_src/input/y4m.c:208:18
	movl	(%rsp), %edx
	movq	%rsp, %rcx
	.loc	0 207 9                         # x264_src/input/y4m.c:207:9
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp146:
.LBB2_12:                               # %read_frame_internal.exit.thread
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:header <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	#DEBUG_VALUE: read_frame_internal:slen <- 5
	.loc	0 0 9 is_stmt 0                 # x264_src/input/y4m.c:0:9
	movl	$-1, %eax
.Ltmp147:
.LBB2_13:                               # %cleanup
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 253 1 epilogue_begin is_stmt 1 # x264_src/input/y4m.c:253:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp148:
	#DEBUG_VALUE: read_frame:handle <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp149:
	#DEBUG_VALUE: read_frame:p_pic <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp150:
.Lfunc_end2:
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:h <- $rdi
	.loc	0 258 10 prologue_end           # x264_src/input/y4m.c:258:10
	testq	%rdi, %rdi
	.loc	0 258 12 is_stmt 0              # x264_src/input/y4m.c:258:12
	je	.LBB3_3
.Ltmp151:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:h <- $rdi
	.loc	0 258 19                        # x264_src/input/y4m.c:258:19
	movq	(%rdi), %rax
	.loc	0 258 16                        # x264_src/input/y4m.c:258:16
	testq	%rax, %rax
.Ltmp152:
	.loc	0 258 9                         # x264_src/input/y4m.c:258:9
	je	.LBB3_3
.Ltmp153:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:h <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp154:
	#DEBUG_VALUE: close_file:h <- $rbx
	#DEBUG_VALUE: close_file:handle <- $rbx
	.loc	0 260 5 is_stmt 1               # x264_src/input/y4m.c:260:5
	movq	%rax, %rdi
	callq	fclose@PLT
.Ltmp155:
	.loc	0 261 5                         # x264_src/input/y4m.c:261:5
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp156:
	.loc	0 0 5 is_stmt 0                 # x264_src/input/y4m.c:0:5
	popq	%rbx
.Ltmp157:
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB3_3:                                # %cleanup
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 263 1 is_stmt 1               # x264_src/input/y4m.c:263:1
	xorl	%eax, %eax
	retq
.Ltmp158:
.Lfunc_end3:
	.size	close_file, .Lfunc_end3-close_file
	.cfi_endproc
                                        # -- End function
	.type	y4m_input,@object               # @y4m_input
	.section	.rodata,"a",@progbits
	.globl	y4m_input
	.p2align	3, 0x0
y4m_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	x264_picture_alloc
	.quad	read_frame
	.quad	0
	.quad	x264_picture_clean
	.quad	close_file
	.size	y4m_input, 56

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"YUV4MPEG2"
	.size	.L.str.2, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u:%u"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"YSCSS="
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"y4m [error]: colorspace unhandled\n"
	.size	.L.str.6, 35

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FRAME"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"y4m [error]: bad header magic (%x <=> %s)\n"
	.size	.L.str.8, 43

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"y4m [error]: bad frame header!\n"
	.size	.L.str.9, 32

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	25                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	12                              # 12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	12                              # 12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	28                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	35                              # DW_OP_plus_uconst
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	54                              # DW_OP_lit6
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	53                              # DW_OP_lit5
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	54                              # DW_OP_lit6
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
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
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
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
	.byte	27                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	53                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
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
	.byte	55                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xf41 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x5 DW_TAG_base_type
	.short	275                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x30:0x5 DW_TAG_base_type
	.short	274                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x35:0xc DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	65                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x41:0x5 DW_TAG_const_type
	.long	70                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x46:0x8 DW_TAG_typedef
	.long	78                              # DW_AT_type
	.byte	197                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4e:0x44 DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x52:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x5b:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	404                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x64:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x6d:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	2196                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x76:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	2222                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7f:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x88:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	404                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x92:0x5 DW_TAG_pointer_type
	.long	151                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x97:0x1a DW_TAG_subroutine_type
	.long	177                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x9c:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa1:0x5 DW_TAG_formal_parameter
	.long	190                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa6:0x5 DW_TAG_formal_parameter
	.long	204                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xab:0x5 DW_TAG_formal_parameter
	.long	350                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb1:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xb5:0x5 DW_TAG_pointer_type
	.long	186                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xba:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xbe:0x5 DW_TAG_pointer_type
	.long	195                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3:0x8 DW_TAG_typedef
	.long	203                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xcb:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0xcc:0x5 DW_TAG_pointer_type
	.long	209                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd1:0x8 DW_TAG_typedef
	.long	217                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xd9:0x71 DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xdd:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xe6:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xef:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xf8:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x101:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x10a:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x113:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x11c:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x125:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x12e:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x137:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x140:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x14a:0x8 DW_TAG_typedef
	.long	338                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x152:0x8 DW_TAG_typedef
	.long	346                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x15a:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x15e:0x5 DW_TAG_pointer_type
	.long	355                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x163:0x8 DW_TAG_typedef
	.long	363                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x16b:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x16f:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x178:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x181:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x18a:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x194:0x5 DW_TAG_pointer_type
	.long	409                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x199:0xb DW_TAG_subroutine_type
	.long	177                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x19e:0x5 DW_TAG_formal_parameter
	.long	195                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1a4:0x5 DW_TAG_pointer_type
	.long	425                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1a9:0x1a DW_TAG_subroutine_type
	.long	177                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x1ae:0x5 DW_TAG_formal_parameter
	.long	451                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1b3:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1b8:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1bd:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1c3:0x5 DW_TAG_pointer_type
	.long	456                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1c8:0x9 DW_TAG_typedef
	.long	465                             # DW_AT_type
	.byte	192                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1d1:0x6a DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1d6:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1e0:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	523                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1ea:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1f4:0xa DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1fe:0xa DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	571                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x208:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	571                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x212:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	591                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x21c:0xa DW_TAG_member
	.byte	179                             # DW_AT_name
	.long	2053                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x226:0xa DW_TAG_member
	.byte	184                             # DW_AT_name
	.long	2137                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x230:0xa DW_TAG_member
	.byte	191                             # DW_AT_name
	.long	203                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x23b:0x8 DW_TAG_typedef
	.long	579                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x243:0x8 DW_TAG_typedef
	.long	587                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x24b:0x4 DW_TAG_base_type
	.byte	36                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x24f:0x5 DW_TAG_pointer_type
	.long	596                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x254:0x9 DW_TAG_typedef
	.long	605                             # DW_AT_type
	.byte	178                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x25d:0x4b9 DW_TAG_structure_type
	.byte	178                             # DW_AT_name
	.short	704                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x263:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x26c:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x275:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x27e:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x287:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x290:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x299:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2a2:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2ab:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2b4:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2bd:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2c6:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2cf:0x56 DW_TAG_structure_type
	.byte	36                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2d3:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2dc:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2e5:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2ee:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2f7:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x300:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x309:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x312:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x31b:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x325:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x32e:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x337:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x340:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x349:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x352:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x35b:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x364:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x36d:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x376:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x37f:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x388:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x391:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x39a:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3a3:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3ac:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3b5:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3be:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3c7:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1814                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3d0:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1814                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3d9:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1814                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3e2:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1814                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x3eb:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1850                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3f4:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1850                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3fe:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1862                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	352                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x408:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	203                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x412:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x41c:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.short	372                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x426:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x430:0xb DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1083                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x43b:0xf6 DW_TAG_structure_type
	.byte	100                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x440:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x44a:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x454:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x45e:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x468:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x472:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x47c:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x486:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	267                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x490:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x49a:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4a4:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4ae:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4b8:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4c2:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4cc:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4d6:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4e0:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4ea:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4f4:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4fe:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x508:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x512:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1952                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x51c:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x526:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x531:0xb DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1340                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.short	488                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x53c:0x11e DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x541:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x54b:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x555:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x55f:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x569:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x573:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x57d:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x587:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x591:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x59b:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5a5:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5af:0xa DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5b9:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5c3:0xa DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5cd:0xa DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5d7:0xa DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5e1:0xa DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5eb:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5f5:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5ff:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x609:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x613:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x61d:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x627:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x631:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x63b:0xa DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	1964                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x645:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x64f:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x65a:0xb DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.short	632                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x665:0xb DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	331                             # DW_AT_decl_line
	.short	636                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x670:0xb DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	332                             # DW_AT_decl_line
	.short	640                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x67b:0xb DW_TAG_member
	.byte	164                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.short	644                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x686:0xb DW_TAG_member
	.byte	165                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.short	648                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x691:0xb DW_TAG_member
	.byte	166                             # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.short	652                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x69c:0xb DW_TAG_member
	.byte	167                             # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.short	656                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6a7:0xb DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.short	660                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6b2:0xb DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.short	664                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6bd:0xb DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.short	668                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6c8:0xb DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.short	672                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6d3:0xb DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.short	676                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6de:0xb DW_TAG_member
	.byte	173                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.short	680                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6e9:0xb DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	367                             # DW_AT_decl_line
	.short	684                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6f4:0xb DW_TAG_member
	.byte	175                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.short	688                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x6ff:0xb DW_TAG_member
	.byte	176                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.short	692                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x70a:0xb DW_TAG_member
	.byte	177                             # DW_AT_name
	.long	2041                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.short	696                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x716:0xc DW_TAG_array_type
	.long	1826                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x71b:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x722:0x8 DW_TAG_typedef
	.long	1834                            # DW_AT_type
	.byte	83                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x72a:0x8 DW_TAG_typedef
	.long	1842                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x732:0x4 DW_TAG_base_type
	.byte	81                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0x736:0x4 DW_TAG_base_type
	.byte	84                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	19                              # Abbrev [19] 0x73a:0xc DW_TAG_array_type
	.long	1826                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x73f:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x746:0x5 DW_TAG_pointer_type
	.long	1867                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x74b:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x74c:0x5 DW_TAG_formal_parameter
	.long	203                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x751:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x756:0x5 DW_TAG_formal_parameter
	.long	1889                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x75b:0x5 DW_TAG_formal_parameter
	.long	1899                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x761:0x5 DW_TAG_pointer_type
	.long	1894                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x766:0x5 DW_TAG_const_type
	.long	186                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x76b:0x5 DW_TAG_pointer_type
	.long	1904                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x770:0x2c DW_TAG_structure_type
	.byte	95                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x773:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x77d:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x787:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	203                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x791:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	203                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x79c:0x4 DW_TAG_base_type
	.byte	120                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x7a0:0xc DW_TAG_array_type
	.long	177                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x7a5:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x7ac:0x5 DW_TAG_pointer_type
	.long	1969                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7b1:0x8 DW_TAG_typedef
	.long	1977                            # DW_AT_type
	.byte	158                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x7b9:0x3b DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x7bd:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7c6:0x9 DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7cf:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7d8:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7e1:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x7ea:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	2036                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x7f4:0x5 DW_TAG_pointer_type
	.long	605                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x7f9:0x5 DW_TAG_pointer_type
	.long	2046                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7fe:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x7ff:0x5 DW_TAG_formal_parameter
	.long	203                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x805:0x9 DW_TAG_typedef
	.long	2062                            # DW_AT_type
	.byte	183                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	511                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x80e:0x2e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x813:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	507                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x81d:0xa DW_TAG_member
	.byte	180                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	508                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x827:0xa DW_TAG_member
	.byte	181                             # DW_AT_name
	.long	2108                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	509                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x831:0xa DW_TAG_member
	.byte	182                             # DW_AT_name
	.long	2120                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	510                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x83c:0xc DW_TAG_array_type
	.long	177                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x841:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x848:0xc DW_TAG_array_type
	.long	2132                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x84d:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x854:0x5 DW_TAG_pointer_type
	.long	1826                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x859:0x9 DW_TAG_typedef
	.long	2146                            # DW_AT_type
	.byte	190                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x862:0x2e DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x867:0xa DW_TAG_member
	.byte	185                             # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x871:0xa DW_TAG_member
	.byte	187                             # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x87b:0xa DW_TAG_member
	.byte	188                             # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x885:0xa DW_TAG_member
	.byte	189                             # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x890:0x4 DW_TAG_base_type
	.byte	186                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x894:0x5 DW_TAG_pointer_type
	.long	2201                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x899:0x15 DW_TAG_subroutine_type
	.long	177                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x89e:0x5 DW_TAG_formal_parameter
	.long	451                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x8a3:0x5 DW_TAG_formal_parameter
	.long	195                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x8a8:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8ae:0x5 DW_TAG_pointer_type
	.long	2227                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8b3:0x10 DW_TAG_subroutine_type
	.long	177                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x8b8:0x5 DW_TAG_formal_parameter
	.long	451                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x8bd:0x5 DW_TAG_formal_parameter
	.long	195                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8c3:0x5 DW_TAG_pointer_type
	.long	2248                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x8c8:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x8c9:0x5 DW_TAG_formal_parameter
	.long	451                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x8cf:0x7 DW_TAG_variable
	.long	2262                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x8d6:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x8db:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x8e2:0xa DW_TAG_variable
	.long	2284                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	19                              # Abbrev [19] 0x8ec:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x8f1:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x8f8:0xa DW_TAG_variable
	.long	2306                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	19                              # Abbrev [19] 0x902:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x907:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x90e:0x7 DW_TAG_variable
	.long	2325                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x915:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x91a:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x921:0xa DW_TAG_variable
	.long	2347                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	19                              # Abbrev [19] 0x92b:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x930:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x937:0xa DW_TAG_variable
	.long	2369                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	19                              # Abbrev [19] 0x941:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x946:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x94d:0xa DW_TAG_variable
	.long	2391                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	19                              # Abbrev [19] 0x957:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x95c:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	35                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x963:0xa DW_TAG_variable
	.long	2347                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	25                              # Abbrev [25] 0x96d:0xa DW_TAG_variable
	.long	2423                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	19                              # Abbrev [19] 0x977:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x97c:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	43                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x983:0xa DW_TAG_variable
	.long	2445                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	19                              # Abbrev [19] 0x98d:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x992:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x999:0x8 DW_TAG_typedef
	.long	2465                            # DW_AT_type
	.byte	200                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x9a1:0x8 DW_TAG_typedef
	.long	2473                            # DW_AT_type
	.byte	199                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9a9:0x4 DW_TAG_base_type
	.byte	198                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x9ad:0x5 DW_TAG_pointer_type
	.long	2482                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9b2:0x8 DW_TAG_typedef
	.long	2490                            # DW_AT_type
	.byte	207                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x9ba:0x20 DW_TAG_union_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x9be:0x9 DW_TAG_member
	.byte	201                             # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x9c7:0x9 DW_TAG_member
	.byte	202                             # DW_AT_name
	.long	2522                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x9d0:0x9 DW_TAG_member
	.byte	206                             # DW_AT_name
	.long	2554                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x9da:0xc DW_TAG_array_type
	.long	2534                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x9df:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x9e6:0x8 DW_TAG_typedef
	.long	2542                            # DW_AT_type
	.byte	205                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x9ee:0x8 DW_TAG_typedef
	.long	2550                            # DW_AT_type
	.byte	204                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9f6:0x4 DW_TAG_base_type
	.byte	203                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x9fa:0xc DW_TAG_array_type
	.long	1826                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x9ff:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xa06:0xe7 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xa15:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.short	279                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xa1f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.short	280                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	190                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xa29:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.short	281                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	204                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xa33:0x9 DW_TAG_formal_parameter
	.short	286                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	350                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xa3c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	4
	.short	276                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xa48:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.short	277                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0xa54:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.short	268                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	3904                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0xa60:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.short	278                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa6c:0xa DW_TAG_variable
	.byte	3                               # DW_AT_location
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	3528                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa76:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.short	282                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa80:0xa DW_TAG_variable
	.byte	5                               # DW_AT_location
	.short	283                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xa8a:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	201                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa93:0xa DW_TAG_variable
	.byte	7                               # DW_AT_location
	.short	284                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xa9d:0xd DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0xa9f:0xa DW_TAG_variable
	.byte	8                               # DW_AT_location
	.short	285                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xaaa:0x6 DW_TAG_call_site
	.long	2797                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xab0:0x6 DW_TAG_call_site
	.long	2820                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xab6:0x6 DW_TAG_call_site
	.long	3205                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xabc:0x6 DW_TAG_call_site
	.long	3220                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xac2:0x6 DW_TAG_call_site
	.long	3239                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xac8:0x6 DW_TAG_call_site
	.long	3261                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xace:0x6 DW_TAG_call_site
	.long	3281                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xad4:0x6 DW_TAG_call_site
	.long	3315                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xada:0x6 DW_TAG_call_site
	.long	3239                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xae0:0x6 DW_TAG_call_site
	.long	3261                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xae6:0x6 DW_TAG_call_site
	.long	3281                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xaed:0xf DW_TAG_subprogram
	.byte	208                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	203                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xaf6:0x5 DW_TAG_formal_parameter
	.long	2812                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xafc:0x8 DW_TAG_typedef
	.long	2473                            # DW_AT_type
	.byte	209                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	36                              # Abbrev [36] 0xb04:0x15 DW_TAG_subprogram
	.byte	210                             # DW_AT_linkage_name
	.byte	211                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2841                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xb0e:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb13:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb19:0x5 DW_TAG_pointer_type
	.long	2846                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb1e:0x8 DW_TAG_typedef
	.long	2854                            # DW_AT_type
	.byte	249                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0xb26:0x10b DW_TAG_structure_type
	.byte	248                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xb2b:0x9 DW_TAG_member
	.byte	212                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb34:0x9 DW_TAG_member
	.byte	213                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb3d:0x9 DW_TAG_member
	.byte	214                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb46:0x9 DW_TAG_member
	.byte	215                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb4f:0x9 DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb58:0x9 DW_TAG_member
	.byte	217                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb61:0x9 DW_TAG_member
	.byte	218                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb6a:0x9 DW_TAG_member
	.byte	219                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb73:0x9 DW_TAG_member
	.byte	220                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb7c:0x9 DW_TAG_member
	.byte	221                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb85:0x9 DW_TAG_member
	.byte	222                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb8e:0x9 DW_TAG_member
	.byte	223                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb97:0x9 DW_TAG_member
	.byte	224                             # DW_AT_name
	.long	3121                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xba0:0x9 DW_TAG_member
	.byte	226                             # DW_AT_name
	.long	3128                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xba9:0x9 DW_TAG_member
	.byte	227                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbb2:0x9 DW_TAG_member
	.byte	228                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbbb:0x9 DW_TAG_member
	.byte	229                             # DW_AT_name
	.long	3133                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbc4:0x9 DW_TAG_member
	.byte	231                             # DW_AT_name
	.long	2550                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbcd:0x9 DW_TAG_member
	.byte	232                             # DW_AT_name
	.long	3141                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbd6:0x9 DW_TAG_member
	.byte	234                             # DW_AT_name
	.long	3145                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbdf:0x9 DW_TAG_member
	.byte	235                             # DW_AT_name
	.long	3157                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbe8:0x9 DW_TAG_member
	.byte	237                             # DW_AT_name
	.long	3166                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbf1:0x9 DW_TAG_member
	.byte	239                             # DW_AT_name
	.long	3174                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbfa:0x9 DW_TAG_member
	.byte	241                             # DW_AT_name
	.long	3181                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc03:0x9 DW_TAG_member
	.byte	243                             # DW_AT_name
	.long	3128                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc0c:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	203                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc15:0x9 DW_TAG_member
	.byte	245                             # DW_AT_name
	.long	2812                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc1e:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xc27:0x9 DW_TAG_member
	.byte	247                             # DW_AT_name
	.long	3188                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc31:0x5 DW_TAG_pointer_type
	.long	3126                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xc36:0x2 DW_TAG_structure_type
	.byte	225                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0xc38:0x5 DW_TAG_pointer_type
	.long	2854                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3d:0x8 DW_TAG_typedef
	.long	587                             # DW_AT_type
	.byte	230                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc45:0x4 DW_TAG_base_type
	.byte	233                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xc49:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc4e:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc55:0x5 DW_TAG_pointer_type
	.long	3162                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0xc5a:0x4 DW_TAG_typedef
	.byte	236                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xc5e:0x8 DW_TAG_typedef
	.long	587                             # DW_AT_type
	.byte	238                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc66:0x5 DW_TAG_pointer_type
	.long	3179                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xc6b:0x2 DW_TAG_structure_type
	.byte	240                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0xc6d:0x5 DW_TAG_pointer_type
	.long	3186                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xc72:0x2 DW_TAG_structure_type
	.byte	242                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	19                              # Abbrev [19] 0xc74:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc79:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xc80:0x5 DW_TAG_restrict_type
	.long	1889                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xc85:0xf DW_TAG_subprogram
	.byte	250                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xc8e:0x5 DW_TAG_formal_parameter
	.long	2841                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xc94:0x13 DW_TAG_subprogram
	.byte	251                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xc9c:0x5 DW_TAG_formal_parameter
	.long	1889                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xca1:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xca7:0x16 DW_TAG_subprogram
	.byte	252                             # DW_AT_linkage_name
	.byte	253                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xcb1:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcb6:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xcbb:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xcbd:0xf DW_TAG_subprogram
	.byte	254                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xcc1:0x5 DW_TAG_formal_parameter
	.long	3276                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcc6:0x5 DW_TAG_formal_parameter
	.long	3276                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xccc:0x5 DW_TAG_pointer_type
	.long	330                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0xcd1:0x18 DW_TAG_subprogram
	.byte	255                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xcd9:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcde:0x5 DW_TAG_formal_parameter
	.long	3305                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xce3:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xce9:0x5 DW_TAG_restrict_type
	.long	3310                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcee:0x5 DW_TAG_pointer_type
	.long	181                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0xcf3:0x19 DW_TAG_subprogram
	.short	256                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xcfc:0x5 DW_TAG_formal_parameter
	.long	1889                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd01:0x5 DW_TAG_formal_parameter
	.long	1889                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd06:0x5 DW_TAG_formal_parameter
	.long	2812                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xd0c:0x5c DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xd1b:0xa DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.short	287                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xd25:0xa DW_TAG_variable
	.byte	10                              # DW_AT_location
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.long	3528                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xd2f:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0xd38:0x17 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0xd3a:0xa DW_TAG_variable
	.byte	12                              # DW_AT_location
	.short	288                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	2457                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xd44:0xa DW_TAG_variable
	.byte	13                              # DW_AT_location
	.short	289                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	2457                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xd4f:0x6 DW_TAG_call_site
	.long	3432                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xd55:0x6 DW_TAG_call_site
	.long	3448                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xd5b:0x6 DW_TAG_call_site
	.long	3432                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xd61:0x6 DW_TAG_call_site
	.long	3448                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xd68:0x10 DW_TAG_subprogram
	.short	257                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	718                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xd72:0x5 DW_TAG_formal_parameter
	.long	2841                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xd78:0x1a DW_TAG_subprogram
	.short	258                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	713                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xd82:0x5 DW_TAG_formal_parameter
	.long	2841                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd87:0x5 DW_TAG_formal_parameter
	.long	587                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd8c:0x5 DW_TAG_formal_parameter
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xd92:0x36 DW_TAG_subprogram
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_inline
	.byte	29                              # Abbrev [29] 0xd9b:0x9 DW_TAG_formal_parameter
	.short	260                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	451                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xda4:0x9 DW_TAG_formal_parameter
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	3528                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0xdad:0x9 DW_TAG_variable
	.short	268                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	3615                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0xdb6:0x9 DW_TAG_variable
	.short	269                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0xdbf:0x8 DW_TAG_variable
	.byte	201                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xdc8:0x5 DW_TAG_pointer_type
	.long	3533                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0xdcd:0x9 DW_TAG_typedef
	.long	3542                            # DW_AT_type
	.short	267                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xdd6:0x49 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0xdda:0xa DW_TAG_member
	.short	262                             # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xde4:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xded:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	50                              # Abbrev [50] 0xdf6:0xa DW_TAG_member
	.short	263                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	50                              # Abbrev [50] 0xe00:0xa DW_TAG_member
	.short	264                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	50                              # Abbrev [50] 0xe0a:0xa DW_TAG_member
	.short	265                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	50                              # Abbrev [50] 0xe14:0xa DW_TAG_member
	.short	266                             # DW_AT_name
	.long	177                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xe1f:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xe24:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xe2b:0x8a DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xe3a:0xa DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.short	260                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	451                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xe44:0xa DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.short	287                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xe4e:0xa DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.short	290                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	177                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xe58:0xa DW_TAG_variable
	.byte	17                              # DW_AT_location
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.long	3528                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0xe62:0x28 DW_TAG_inlined_subroutine
	.long	3474                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	248                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	52                              # Abbrev [52] 0xe6b:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	3483                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0xe71:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	3492                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xe77:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	3501                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xe7d:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	3510                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xe83:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	3519                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xe8a:0x6 DW_TAG_call_site
	.long	3448                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xe90:0x6 DW_TAG_call_site
	.long	3765                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xe96:0x6 DW_TAG_call_site
	.long	3205                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xe9c:0x6 DW_TAG_call_site
	.long	3765                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xea2:0x6 DW_TAG_call_site
	.long	3765                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xea8:0x6 DW_TAG_call_site
	.long	3765                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xeae:0x6 DW_TAG_call_site
	.long	3806                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xeb5:0x1f DW_TAG_subprogram
	.short	270                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	675                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2473                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xebf:0x5 DW_TAG_formal_parameter
	.long	3796                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xec4:0x5 DW_TAG_formal_parameter
	.long	2812                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xec9:0x5 DW_TAG_formal_parameter
	.long	2812                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xece:0x5 DW_TAG_formal_parameter
	.long	3801                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xed4:0x5 DW_TAG_restrict_type
	.long	203                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0xed9:0x5 DW_TAG_restrict_type
	.long	2841                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0xede:0x16 DW_TAG_subprogram
	.short	271                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xee8:0x5 DW_TAG_formal_parameter
	.long	3801                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xeed:0x5 DW_TAG_formal_parameter
	.long	3200                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xef2:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xef4:0x31 DW_TAG_subprogram
	.byte	34                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	196                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xf03:0xa DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.short	287                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	54                              # Abbrev [54] 0xf0d:0xb DW_TAG_variable
	.byte	24                              # DW_AT_location
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.long	3528                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0xf18:0x6 DW_TAG_call_site
	.long	3877                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0xf1e:0x6 DW_TAG_call_site
	.long	3892                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xf25:0xf DW_TAG_subprogram
	.short	272                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xf2e:0x5 DW_TAG_formal_parameter
	.long	2841                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0xf34:0xc DW_TAG_subprogram
	.short	273                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xf3a:0x5 DW_TAG_formal_parameter
	.long	203                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xf40:0xc DW_TAG_array_type
	.long	186                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xf45:0x6 DW_TAG_subrange_type
	.long	1846                            # DW_AT_type
	.byte	90                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	1168                            # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/input/y4m.c"          # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=126
.Linfo_string3:
	.asciz	"y4m_input"                     # string offset=160
.Linfo_string4:
	.asciz	"open_file"                     # string offset=170
.Linfo_string5:
	.asciz	"int"                           # string offset=180
.Linfo_string6:
	.asciz	"char"                          # string offset=184
.Linfo_string7:
	.asciz	"hnd_t"                         # string offset=189
.Linfo_string8:
	.asciz	"csp"                           # string offset=195
.Linfo_string9:
	.asciz	"fps_num"                       # string offset=199
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=207
.Linfo_string11:
	.asciz	"__uint32_t"                    # string offset=220
.Linfo_string12:
	.asciz	"uint32_t"                      # string offset=231
.Linfo_string13:
	.asciz	"fps_den"                       # string offset=240
.Linfo_string14:
	.asciz	"height"                        # string offset=248
.Linfo_string15:
	.asciz	"interlaced"                    # string offset=255
.Linfo_string16:
	.asciz	"sar_width"                     # string offset=266
.Linfo_string17:
	.asciz	"sar_height"                    # string offset=276
.Linfo_string18:
	.asciz	"tff"                           # string offset=287
.Linfo_string19:
	.asciz	"timebase_num"                  # string offset=291
.Linfo_string20:
	.asciz	"timebase_den"                  # string offset=304
.Linfo_string21:
	.asciz	"vfr"                           # string offset=317
.Linfo_string22:
	.asciz	"width"                         # string offset=321
.Linfo_string23:
	.asciz	"video_info_t"                  # string offset=327
.Linfo_string24:
	.asciz	"index"                         # string offset=340
.Linfo_string25:
	.asciz	"resolution"                    # string offset=346
.Linfo_string26:
	.asciz	"timebase"                      # string offset=357
.Linfo_string27:
	.asciz	"seek"                          # string offset=366
.Linfo_string28:
	.asciz	"cli_input_opt_t"               # string offset=371
.Linfo_string29:
	.asciz	"get_frame_total"               # string offset=387
.Linfo_string30:
	.asciz	"picture_alloc"                 # string offset=403
.Linfo_string31:
	.asciz	"i_type"                        # string offset=417
.Linfo_string32:
	.asciz	"i_qpplus1"                     # string offset=424
.Linfo_string33:
	.asciz	"i_pic_struct"                  # string offset=434
.Linfo_string34:
	.asciz	"b_keyframe"                    # string offset=447
.Linfo_string35:
	.asciz	"i_pts"                         # string offset=458
.Linfo_string36:
	.asciz	"long"                          # string offset=464
.Linfo_string37:
	.asciz	"__int64_t"                     # string offset=469
.Linfo_string38:
	.asciz	"int64_t"                       # string offset=479
.Linfo_string39:
	.asciz	"i_dts"                         # string offset=487
.Linfo_string40:
	.asciz	"param"                         # string offset=493
.Linfo_string41:
	.asciz	"cpu"                           # string offset=499
.Linfo_string42:
	.asciz	"i_threads"                     # string offset=503
.Linfo_string43:
	.asciz	"b_sliced_threads"              # string offset=513
.Linfo_string44:
	.asciz	"b_deterministic"               # string offset=530
.Linfo_string45:
	.asciz	"i_sync_lookahead"              # string offset=546
.Linfo_string46:
	.asciz	"i_width"                       # string offset=563
.Linfo_string47:
	.asciz	"i_height"                      # string offset=571
.Linfo_string48:
	.asciz	"i_csp"                         # string offset=580
.Linfo_string49:
	.asciz	"i_level_idc"                   # string offset=586
.Linfo_string50:
	.asciz	"i_frame_total"                 # string offset=598
.Linfo_string51:
	.asciz	"i_nal_hrd"                     # string offset=612
.Linfo_string52:
	.asciz	"vui"                           # string offset=622
.Linfo_string53:
	.asciz	"i_sar_height"                  # string offset=626
.Linfo_string54:
	.asciz	"i_sar_width"                   # string offset=639
.Linfo_string55:
	.asciz	"i_overscan"                    # string offset=651
.Linfo_string56:
	.asciz	"i_vidformat"                   # string offset=662
.Linfo_string57:
	.asciz	"b_fullrange"                   # string offset=674
.Linfo_string58:
	.asciz	"i_colorprim"                   # string offset=686
.Linfo_string59:
	.asciz	"i_transfer"                    # string offset=698
.Linfo_string60:
	.asciz	"i_colmatrix"                   # string offset=709
.Linfo_string61:
	.asciz	"i_chroma_loc"                  # string offset=721
.Linfo_string62:
	.asciz	"i_frame_reference"             # string offset=734
.Linfo_string63:
	.asciz	"i_keyint_max"                  # string offset=752
.Linfo_string64:
	.asciz	"i_keyint_min"                  # string offset=765
.Linfo_string65:
	.asciz	"i_scenecut_threshold"          # string offset=778
.Linfo_string66:
	.asciz	"b_intra_refresh"               # string offset=799
.Linfo_string67:
	.asciz	"i_bframe"                      # string offset=815
.Linfo_string68:
	.asciz	"i_bframe_adaptive"             # string offset=824
.Linfo_string69:
	.asciz	"i_bframe_bias"                 # string offset=842
.Linfo_string70:
	.asciz	"i_bframe_pyramid"              # string offset=856
.Linfo_string71:
	.asciz	"b_deblocking_filter"           # string offset=873
.Linfo_string72:
	.asciz	"i_deblocking_filter_alphac0"   # string offset=893
.Linfo_string73:
	.asciz	"i_deblocking_filter_beta"      # string offset=921
.Linfo_string74:
	.asciz	"b_cabac"                       # string offset=946
.Linfo_string75:
	.asciz	"i_cabac_init_idc"              # string offset=954
.Linfo_string76:
	.asciz	"b_interlaced"                  # string offset=971
.Linfo_string77:
	.asciz	"b_constrained_intra"           # string offset=984
.Linfo_string78:
	.asciz	"i_cqm_preset"                  # string offset=1004
.Linfo_string79:
	.asciz	"psz_cqm_file"                  # string offset=1017
.Linfo_string80:
	.asciz	"cqm_4iy"                       # string offset=1030
.Linfo_string81:
	.asciz	"unsigned char"                 # string offset=1038
.Linfo_string82:
	.asciz	"__uint8_t"                     # string offset=1052
.Linfo_string83:
	.asciz	"uint8_t"                       # string offset=1062
.Linfo_string84:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1070
.Linfo_string85:
	.asciz	"cqm_4ic"                       # string offset=1090
.Linfo_string86:
	.asciz	"cqm_4py"                       # string offset=1098
.Linfo_string87:
	.asciz	"cqm_4pc"                       # string offset=1106
.Linfo_string88:
	.asciz	"cqm_8iy"                       # string offset=1114
.Linfo_string89:
	.asciz	"cqm_8py"                       # string offset=1122
.Linfo_string90:
	.asciz	"pf_log"                        # string offset=1130
.Linfo_string91:
	.asciz	"gp_offset"                     # string offset=1137
.Linfo_string92:
	.asciz	"fp_offset"                     # string offset=1147
.Linfo_string93:
	.asciz	"overflow_arg_area"             # string offset=1157
.Linfo_string94:
	.asciz	"reg_save_area"                 # string offset=1175
.Linfo_string95:
	.asciz	"__va_list_tag"                 # string offset=1189
.Linfo_string96:
	.asciz	"p_log_private"                 # string offset=1203
.Linfo_string97:
	.asciz	"i_log_level"                   # string offset=1217
.Linfo_string98:
	.asciz	"b_visualize"                   # string offset=1229
.Linfo_string99:
	.asciz	"psz_dump_yuv"                  # string offset=1241
.Linfo_string100:
	.asciz	"analyse"                       # string offset=1254
.Linfo_string101:
	.asciz	"intra"                         # string offset=1262
.Linfo_string102:
	.asciz	"inter"                         # string offset=1268
.Linfo_string103:
	.asciz	"b_transform_8x8"               # string offset=1274
.Linfo_string104:
	.asciz	"i_weighted_pred"               # string offset=1290
.Linfo_string105:
	.asciz	"b_weighted_bipred"             # string offset=1306
.Linfo_string106:
	.asciz	"i_direct_mv_pred"              # string offset=1324
.Linfo_string107:
	.asciz	"i_chroma_qp_offset"            # string offset=1341
.Linfo_string108:
	.asciz	"i_me_method"                   # string offset=1360
.Linfo_string109:
	.asciz	"i_me_range"                    # string offset=1372
.Linfo_string110:
	.asciz	"i_mv_range"                    # string offset=1383
.Linfo_string111:
	.asciz	"i_mv_range_thread"             # string offset=1394
.Linfo_string112:
	.asciz	"i_subpel_refine"               # string offset=1412
.Linfo_string113:
	.asciz	"b_chroma_me"                   # string offset=1428
.Linfo_string114:
	.asciz	"b_mixed_references"            # string offset=1440
.Linfo_string115:
	.asciz	"i_trellis"                     # string offset=1459
.Linfo_string116:
	.asciz	"b_fast_pskip"                  # string offset=1469
.Linfo_string117:
	.asciz	"b_dct_decimate"                # string offset=1482
.Linfo_string118:
	.asciz	"i_noise_reduction"             # string offset=1497
.Linfo_string119:
	.asciz	"f_psy_rd"                      # string offset=1515
.Linfo_string120:
	.asciz	"float"                         # string offset=1524
.Linfo_string121:
	.asciz	"f_psy_trellis"                 # string offset=1530
.Linfo_string122:
	.asciz	"b_psy"                         # string offset=1544
.Linfo_string123:
	.asciz	"i_luma_deadzone"               # string offset=1550
.Linfo_string124:
	.asciz	"b_psnr"                        # string offset=1566
.Linfo_string125:
	.asciz	"b_ssim"                        # string offset=1573
.Linfo_string126:
	.asciz	"rc"                            # string offset=1580
.Linfo_string127:
	.asciz	"i_rc_method"                   # string offset=1583
.Linfo_string128:
	.asciz	"i_qp_constant"                 # string offset=1595
.Linfo_string129:
	.asciz	"i_qp_min"                      # string offset=1609
.Linfo_string130:
	.asciz	"i_qp_max"                      # string offset=1618
.Linfo_string131:
	.asciz	"i_qp_step"                     # string offset=1627
.Linfo_string132:
	.asciz	"i_bitrate"                     # string offset=1637
.Linfo_string133:
	.asciz	"f_rf_constant"                 # string offset=1647
.Linfo_string134:
	.asciz	"f_rf_constant_max"             # string offset=1661
.Linfo_string135:
	.asciz	"f_rate_tolerance"              # string offset=1679
.Linfo_string136:
	.asciz	"i_vbv_max_bitrate"             # string offset=1696
.Linfo_string137:
	.asciz	"i_vbv_buffer_size"             # string offset=1714
.Linfo_string138:
	.asciz	"f_vbv_buffer_init"             # string offset=1732
.Linfo_string139:
	.asciz	"f_ip_factor"                   # string offset=1750
.Linfo_string140:
	.asciz	"f_pb_factor"                   # string offset=1762
.Linfo_string141:
	.asciz	"i_aq_mode"                     # string offset=1774
.Linfo_string142:
	.asciz	"f_aq_strength"                 # string offset=1784
.Linfo_string143:
	.asciz	"b_mb_tree"                     # string offset=1798
.Linfo_string144:
	.asciz	"i_lookahead"                   # string offset=1808
.Linfo_string145:
	.asciz	"b_stat_write"                  # string offset=1820
.Linfo_string146:
	.asciz	"psz_stat_out"                  # string offset=1833
.Linfo_string147:
	.asciz	"b_stat_read"                   # string offset=1846
.Linfo_string148:
	.asciz	"psz_stat_in"                   # string offset=1858
.Linfo_string149:
	.asciz	"f_qcompress"                   # string offset=1870
.Linfo_string150:
	.asciz	"f_qblur"                       # string offset=1882
.Linfo_string151:
	.asciz	"f_complexity_blur"             # string offset=1890
.Linfo_string152:
	.asciz	"zones"                         # string offset=1908
.Linfo_string153:
	.asciz	"i_start"                       # string offset=1914
.Linfo_string154:
	.asciz	"i_end"                         # string offset=1922
.Linfo_string155:
	.asciz	"b_force_qp"                    # string offset=1928
.Linfo_string156:
	.asciz	"i_qp"                          # string offset=1939
.Linfo_string157:
	.asciz	"f_bitrate_factor"              # string offset=1944
.Linfo_string158:
	.asciz	"x264_zone_t"                   # string offset=1961
.Linfo_string159:
	.asciz	"i_zones"                       # string offset=1973
.Linfo_string160:
	.asciz	"psz_zones"                     # string offset=1981
.Linfo_string161:
	.asciz	"b_aud"                         # string offset=1991
.Linfo_string162:
	.asciz	"b_repeat_headers"              # string offset=1997
.Linfo_string163:
	.asciz	"b_annexb"                      # string offset=2014
.Linfo_string164:
	.asciz	"i_sps_id"                      # string offset=2023
.Linfo_string165:
	.asciz	"b_vfr_input"                   # string offset=2032
.Linfo_string166:
	.asciz	"i_fps_num"                     # string offset=2044
.Linfo_string167:
	.asciz	"i_fps_den"                     # string offset=2054
.Linfo_string168:
	.asciz	"i_timebase_num"                # string offset=2064
.Linfo_string169:
	.asciz	"i_timebase_den"                # string offset=2079
.Linfo_string170:
	.asciz	"b_dts_compress"                # string offset=2094
.Linfo_string171:
	.asciz	"b_tff"                         # string offset=2109
.Linfo_string172:
	.asciz	"b_pic_struct"                  # string offset=2115
.Linfo_string173:
	.asciz	"b_fake_interlaced"             # string offset=2128
.Linfo_string174:
	.asciz	"i_slice_max_size"              # string offset=2146
.Linfo_string175:
	.asciz	"i_slice_max_mbs"               # string offset=2163
.Linfo_string176:
	.asciz	"i_slice_count"                 # string offset=2179
.Linfo_string177:
	.asciz	"param_free"                    # string offset=2193
.Linfo_string178:
	.asciz	"x264_param_t"                  # string offset=2204
.Linfo_string179:
	.asciz	"img"                           # string offset=2217
.Linfo_string180:
	.asciz	"i_plane"                       # string offset=2221
.Linfo_string181:
	.asciz	"i_stride"                      # string offset=2229
.Linfo_string182:
	.asciz	"plane"                         # string offset=2238
.Linfo_string183:
	.asciz	"x264_image_t"                  # string offset=2244
.Linfo_string184:
	.asciz	"hrd_timing"                    # string offset=2257
.Linfo_string185:
	.asciz	"cpb_initial_arrival_time"      # string offset=2268
.Linfo_string186:
	.asciz	"double"                        # string offset=2293
.Linfo_string187:
	.asciz	"cpb_final_arrival_time"        # string offset=2300
.Linfo_string188:
	.asciz	"cpb_removal_time"              # string offset=2323
.Linfo_string189:
	.asciz	"dpb_output_time"               # string offset=2340
.Linfo_string190:
	.asciz	"x264_hrd_t"                    # string offset=2356
.Linfo_string191:
	.asciz	"opaque"                        # string offset=2367
.Linfo_string192:
	.asciz	"x264_picture_t"                # string offset=2374
.Linfo_string193:
	.asciz	"read_frame"                    # string offset=2389
.Linfo_string194:
	.asciz	"release_frame"                 # string offset=2400
.Linfo_string195:
	.asciz	"picture_clean"                 # string offset=2414
.Linfo_string196:
	.asciz	"close_file"                    # string offset=2428
.Linfo_string197:
	.asciz	"cli_input_t"                   # string offset=2439
.Linfo_string198:
	.asciz	"unsigned long"                 # string offset=2451
.Linfo_string199:
	.asciz	"__uint64_t"                    # string offset=2465
.Linfo_string200:
	.asciz	"uint64_t"                      # string offset=2476
.Linfo_string201:
	.asciz	"i"                             # string offset=2485
.Linfo_string202:
	.asciz	"b"                             # string offset=2487
.Linfo_string203:
	.asciz	"unsigned short"                # string offset=2489
.Linfo_string204:
	.asciz	"__uint16_t"                    # string offset=2504
.Linfo_string205:
	.asciz	"uint16_t"                      # string offset=2515
.Linfo_string206:
	.asciz	"c"                             # string offset=2524
.Linfo_string207:
	.asciz	"x264_union32_t"                # string offset=2526
.Linfo_string208:
	.asciz	"malloc"                        # string offset=2541
.Linfo_string209:
	.asciz	"size_t"                        # string offset=2548
.Linfo_string210:
	.asciz	"fopen64"                       # string offset=2555
.Linfo_string211:
	.asciz	"fopen"                         # string offset=2563
.Linfo_string212:
	.asciz	"_flags"                        # string offset=2569
.Linfo_string213:
	.asciz	"_IO_read_ptr"                  # string offset=2576
.Linfo_string214:
	.asciz	"_IO_read_end"                  # string offset=2589
.Linfo_string215:
	.asciz	"_IO_read_base"                 # string offset=2602
.Linfo_string216:
	.asciz	"_IO_write_base"                # string offset=2616
.Linfo_string217:
	.asciz	"_IO_write_ptr"                 # string offset=2631
.Linfo_string218:
	.asciz	"_IO_write_end"                 # string offset=2645
.Linfo_string219:
	.asciz	"_IO_buf_base"                  # string offset=2659
.Linfo_string220:
	.asciz	"_IO_buf_end"                   # string offset=2672
.Linfo_string221:
	.asciz	"_IO_save_base"                 # string offset=2684
.Linfo_string222:
	.asciz	"_IO_backup_base"               # string offset=2698
.Linfo_string223:
	.asciz	"_IO_save_end"                  # string offset=2714
.Linfo_string224:
	.asciz	"_markers"                      # string offset=2727
.Linfo_string225:
	.asciz	"_IO_marker"                    # string offset=2736
.Linfo_string226:
	.asciz	"_chain"                        # string offset=2747
.Linfo_string227:
	.asciz	"_fileno"                       # string offset=2754
.Linfo_string228:
	.asciz	"_flags2"                       # string offset=2762
.Linfo_string229:
	.asciz	"_old_offset"                   # string offset=2770
.Linfo_string230:
	.asciz	"__off_t"                       # string offset=2782
.Linfo_string231:
	.asciz	"_cur_column"                   # string offset=2790
.Linfo_string232:
	.asciz	"_vtable_offset"                # string offset=2802
.Linfo_string233:
	.asciz	"signed char"                   # string offset=2817
.Linfo_string234:
	.asciz	"_shortbuf"                     # string offset=2829
.Linfo_string235:
	.asciz	"_lock"                         # string offset=2839
.Linfo_string236:
	.asciz	"_IO_lock_t"                    # string offset=2845
.Linfo_string237:
	.asciz	"_offset"                       # string offset=2856
.Linfo_string238:
	.asciz	"__off64_t"                     # string offset=2864
.Linfo_string239:
	.asciz	"_codecvt"                      # string offset=2874
.Linfo_string240:
	.asciz	"_IO_codecvt"                   # string offset=2883
.Linfo_string241:
	.asciz	"_wide_data"                    # string offset=2895
.Linfo_string242:
	.asciz	"_IO_wide_data"                 # string offset=2906
.Linfo_string243:
	.asciz	"_freeres_list"                 # string offset=2920
.Linfo_string244:
	.asciz	"_freeres_buf"                  # string offset=2934
.Linfo_string245:
	.asciz	"__pad5"                        # string offset=2947
.Linfo_string246:
	.asciz	"_mode"                         # string offset=2954
.Linfo_string247:
	.asciz	"_unused2"                      # string offset=2960
.Linfo_string248:
	.asciz	"_IO_FILE"                      # string offset=2969
.Linfo_string249:
	.asciz	"FILE"                          # string offset=2978
.Linfo_string250:
	.asciz	"fgetc"                         # string offset=2983
.Linfo_string251:
	.asciz	"strchr"                        # string offset=2989
.Linfo_string252:
	.asciz	"__isoc99_sscanf"               # string offset=2996
.Linfo_string253:
	.asciz	"sscanf"                        # string offset=3012
.Linfo_string254:
	.asciz	"x264_reduce_fraction"          # string offset=3019
.Linfo_string255:
	.asciz	"strtol"                        # string offset=3040
.Linfo_string256:
	.asciz	"strncmp"                       # string offset=3047
.Linfo_string257:
	.asciz	"ftell"                         # string offset=3055
.Linfo_string258:
	.asciz	"fseek"                         # string offset=3061
.Linfo_string259:
	.asciz	"read_frame_internal"           # string offset=3067
.Linfo_string260:
	.asciz	"p_pic"                         # string offset=3087
.Linfo_string261:
	.asciz	"h"                             # string offset=3093
.Linfo_string262:
	.asciz	"fh"                            # string offset=3095
.Linfo_string263:
	.asciz	"next_frame"                    # string offset=3098
.Linfo_string264:
	.asciz	"seq_header_len"                # string offset=3109
.Linfo_string265:
	.asciz	"frame_header_len"              # string offset=3124
.Linfo_string266:
	.asciz	"frame_size"                    # string offset=3141
.Linfo_string267:
	.asciz	"y4m_hnd_t"                     # string offset=3152
.Linfo_string268:
	.asciz	"header"                        # string offset=3162
.Linfo_string269:
	.asciz	"slen"                          # string offset=3169
.Linfo_string270:
	.asciz	"fread"                         # string offset=3174
.Linfo_string271:
	.asciz	"fprintf"                       # string offset=3180
.Linfo_string272:
	.asciz	"fclose"                        # string offset=3188
.Linfo_string273:
	.asciz	"free"                          # string offset=3195
.Linfo_string274:
	.asciz	"DW_ATE_unsigned_32"            # string offset=3200
.Linfo_string275:
	.asciz	"DW_ATE_unsigned_64"            # string offset=3219
.Linfo_string276:
	.asciz	"n"                             # string offset=3238
.Linfo_string277:
	.asciz	"d"                             # string offset=3240
.Linfo_string278:
	.asciz	"tokend"                        # string offset=3242
.Linfo_string279:
	.asciz	"psz_filename"                  # string offset=3249
.Linfo_string280:
	.asciz	"p_handle"                      # string offset=3262
.Linfo_string281:
	.asciz	"info"                          # string offset=3271
.Linfo_string282:
	.asciz	"colorspace"                    # string offset=3276
.Linfo_string283:
	.asciz	"alt_colorspace"                # string offset=3287
.Linfo_string284:
	.asciz	"header_end"                    # string offset=3302
.Linfo_string285:
	.asciz	"tokstart"                      # string offset=3313
.Linfo_string286:
	.asciz	"opt"                           # string offset=3322
.Linfo_string287:
	.asciz	"handle"                        # string offset=3326
.Linfo_string288:
	.asciz	"init_pos"                      # string offset=3333
.Linfo_string289:
	.asciz	"i_size"                        # string offset=3342
.Linfo_string290:
	.asciz	"i_frame"                       # string offset=3349
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	y4m_input
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp9
	.quad	.Ltmp16
	.quad	.Ltmp40
	.quad	.Ltmp50
	.quad	.Ltmp54
	.quad	.Ltmp58
	.quad	.Ltmp64
	.quad	.Ltmp70
	.quad	.Ltmp74
	.quad	.Ltmp76
	.quad	.Lfunc_begin1
	.quad	.Ltmp103
	.quad	.Ltmp105
	.quad	.Ltmp106
	.quad	.Ltmp108
	.quad	.Lfunc_begin2
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp130
	.quad	.Ltmp137
	.quad	.Ltmp139
	.quad	.Ltmp141
	.quad	.Ltmp146
	.quad	.Lfunc_begin3
	.quad	.Ltmp155
	.quad	.Ltmp156
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
