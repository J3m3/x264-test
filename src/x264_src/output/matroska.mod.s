	.text
	.file	"matroska.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/output/matroska.c" md5 0x1a7ca5fe13daa7a376c13c3ae71ee0de
	.file	1 "x264_src" "muxers.h" md5 0xbcea0820748b2dc47392b7f6393a96ff
	.file	2 "x264_src/output" "output.h" md5 0x2609bd03b72b40b15579de35b2e5f690
	.file	3 "x264_src" "x264.h" md5 0x0b04871e4f52d5a4d8833c501cba2584
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
.Lfunc_begin0:
	.loc	0 39 0                          # x264_src/output/matroska.c:39:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: open_file:psz_filename <- $rdi
	#DEBUG_VALUE: open_file:p_handle <- $rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
.Ltmp0:
	.loc	0 42 15 prologue_end            # x264_src/output/matroska.c:42:15
	movq	$0, (%rsi)
	.loc	0 44 14                         # x264_src/output/matroska.c:44:14
	movl	$1, %edi
.Ltmp1:
	#DEBUG_VALUE: open_file:psz_filename <- $r12
	movl	$48, %esi
.Ltmp2:
	#DEBUG_VALUE: open_file:p_handle <- $r14
	callq	calloc@PLT
.Ltmp3:
	#DEBUG_VALUE: open_file:p_mkv <- $rax
	.loc	0 0 14 is_stmt 0                # x264_src/output/matroska.c:0:14
	movl	$-1, %ebx
.Ltmp4:
	.loc	0 45 10 is_stmt 1               # x264_src/output/matroska.c:45:10
	testq	%rax, %rax
.Ltmp5:
	.loc	0 45 9 is_stmt 0                # x264_src/output/matroska.c:45:9
	je	.LBB0_4
.Ltmp6:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: open_file:psz_filename <- $r12
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:p_mkv <- $rax
	.loc	0 0 0                           # x264_src/output/matroska.c:0:0
	movq	%rax, %r15
	.loc	0 50 16 is_stmt 1               # x264_src/output/matroska.c:50:16
	movq	%r12, %rdi
	callq	mk_create_writer@PLT
.Ltmp7:
	#DEBUG_VALUE: open_file:p_mkv <- $r15
	.loc	0 50 14 is_stmt 0               # x264_src/output/matroska.c:50:14
	movq	%rax, (%r15)
.Ltmp8:
	.loc	0 51 10 is_stmt 1               # x264_src/output/matroska.c:51:10
	testq	%rax, %rax
.Ltmp9:
	.loc	0 51 9 is_stmt 0                # x264_src/output/matroska.c:51:9
	je	.LBB0_2
.Ltmp10:
# %bb.3:                                # %if.end5
	#DEBUG_VALUE: open_file:psz_filename <- $r12
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:p_mkv <- $r15
	.loc	0 57 15 is_stmt 1               # x264_src/output/matroska.c:57:15
	movq	%r15, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB0_4
.Ltmp11:
.LBB0_2:                                # %if.then4
	#DEBUG_VALUE: open_file:psz_filename <- $r12
	#DEBUG_VALUE: open_file:p_handle <- $r14
	#DEBUG_VALUE: open_file:p_mkv <- $r15
	.loc	0 53 9                          # x264_src/output/matroska.c:53:9
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp12:
.LBB0_4:                                # %cleanup
	#DEBUG_VALUE: open_file:psz_filename <- $r12
	#DEBUG_VALUE: open_file:p_handle <- $r14
	.loc	0 60 1                          # x264_src/output/matroska.c:60:1
	movl	%ebx, %eax
	.loc	0 60 1 epilogue_begin is_stmt 0 # x264_src/output/matroska.c:60:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp13:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp14:
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp15:
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
	.file	7 "x264_src/output" "matroska_ebml.h" md5 0x1745c5eb41455b01e98496f56a8b1e8e
	.file	8 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_param
	.type	set_param,@function
set_param:                              # @set_param
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 67 18 prologue_end is_stmt 1  # x264_src/output/matroska.c:67:18
	movl	652(%rsi), %ecx
	testq	%rcx, %rcx
	.loc	0 67 32 is_stmt 0               # x264_src/output/matroska.c:67:32
	je	.LBB1_3
.Ltmp16:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 67 36                         # x264_src/output/matroska.c:67:36
	cmpl	$0, 648(%rsi)
.Ltmp17:
	.loc	0 67 9                          # x264_src/output/matroska.c:67:9
	je	.LBB1_4
.Ltmp18:
.LBB1_3:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 0 9                           # x264_src/output/matroska.c:0:9
	xorl	%eax, %eax
.Ltmp19:
.LBB1_7:                                # %if.end
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	movq	%rax, 24(%rdi)
.Ltmp20:
	.loc	0 77 29 is_stmt 1               # x264_src/output/matroska.c:77:29
	movl	20(%rsi), %eax
	.loc	0 77 18 is_stmt 0               # x264_src/output/matroska.c:77:18
	movl	%eax, 8(%rdi)
	.loc	0 78 30 is_stmt 1               # x264_src/output/matroska.c:78:30
	movslq	24(%rsi), %rcx
	.loc	0 78 19 is_stmt 0               # x264_src/output/matroska.c:78:19
	movl	%ecx, 12(%rdi)
.Ltmp21:
	.loc	0 80 22 is_stmt 1               # x264_src/output/matroska.c:80:22
	movslq	48(%rsi), %rax
	testq	%rax, %rax
	.loc	0 80 34 is_stmt 0               # x264_src/output/matroska.c:80:34
	je	.LBB1_10
.Ltmp22:
# %bb.8:                                # %land.lhs.true5
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 80 50                         # x264_src/output/matroska.c:80:50
	movslq	44(%rsi), %rdx
	testq	%rdx, %rdx
.Ltmp23:
	.loc	0 80 9                          # x264_src/output/matroska.c:80:9
	je	.LBB1_10
.Ltmp24:
# %bb.9:                                # %if.then8
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 82 32 is_stmt 1               # x264_src/output/matroska.c:82:32
	movslq	20(%rsi), %r8
	.loc	0 82 41 is_stmt 0               # x264_src/output/matroska.c:82:41
	imulq	%rax, %r8
.Ltmp25:
	#DEBUG_VALUE: set_param:dw <- $r8
	.loc	0 83 41 is_stmt 1               # x264_src/output/matroska.c:83:41
	imulq	%rdx, %rcx
.Ltmp26:
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	.loc	0 91 12                         # x264_src/output/matroska.c:91:12
	testq	%r8, %r8
	.loc	0 91 16 is_stmt 0               # x264_src/output/matroska.c:91:16
	jg	.LBB1_11
	jmp	.LBB1_21
.Ltmp27:
.LBB1_10:                               # %if.else21
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 87 23 is_stmt 1               # x264_src/output/matroska.c:87:23
	movslq	20(%rsi), %r8
.Ltmp28:
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	.loc	0 91 12                         # x264_src/output/matroska.c:91:12
	testq	%r8, %r8
	.loc	0 91 16 is_stmt 0               # x264_src/output/matroska.c:91:16
	jle	.LBB1_21
.Ltmp29:
.LBB1_11:                               # %if.end26
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	testq	%rcx, %rcx
	jle	.LBB1_21
.Ltmp30:
# %bb.12:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	.loc	0 0 16                          # x264_src/output/matroska.c:0:16
	movq	%r8, %rax
	movq	%rcx, %rdx
	jmp	.LBB1_14
.Ltmp31:
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_14 Depth=1
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: gcd:b <- $r9
	#DEBUG_VALUE: gcd:a <- $rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	xorl	%edx, %edx
	divl	%r9d
.Ltmp32:
                                        # kill: def $edx killed $edx def $rdx
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%r9, %rax
.Ltmp33:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp34:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	je	.LBB1_16
.Ltmp35:
.LBB1_14:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	movq	%rdx, %r9
.Ltmp36:
	#DEBUG_VALUE: gcd:b <- $rdx
	#DEBUG_VALUE: gcd:a <- $rax
	.loc	1 36 23 is_stmt 1               # x264_src/muxers.h:36:23
	movq	%rax, %rdx
.Ltmp37:
	#DEBUG_VALUE: gcd:b <- $r9
	orq	%r9, %rdx
	shrq	$32, %rdx
	je	.LBB1_15
.Ltmp38:
# %bb.13:                               #   in Loop: Header=BB1_14 Depth=1
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: gcd:b <- $r9
	#DEBUG_VALUE: gcd:a <- $rax
	xorl	%edx, %edx
	divq	%r9
.Ltmp39:
	#DEBUG_VALUE: c <- $rdx
	.loc	1 0 23 is_stmt 0                # x264_src/muxers.h:0:23
	movq	%r9, %rax
.Ltmp40:
	.loc	1 37 14 is_stmt 1               # x264_src/muxers.h:37:14
	testq	%rdx, %rdx
.Ltmp41:
	#DEBUG_VALUE: gcd:b <- undef
	#DEBUG_VALUE: gcd:a <- undef
	.loc	1 0 14 is_stmt 0                # x264_src/muxers.h:0:14
	jne	.LBB1_14
.Ltmp42:
.LBB1_16:                               # %gcd.exit
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: x <- $rax
	.loc	0 94 12 is_stmt 1               # x264_src/output/matroska.c:94:12
	movq	%r8, %rax
.Ltmp43:
	#DEBUG_VALUE: x <- $r9
	orq	%r9, %rax
	shrq	$32, %rax
	je	.LBB1_19
.Ltmp44:
# %bb.17:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: x <- $r9
	movq	%r8, %rax
	cqto
	idivq	%r9
	movq	%rax, %r8
.Ltmp45:
	#DEBUG_VALUE: set_param:dw <- $rax
	.loc	0 95 12                         # x264_src/output/matroska.c:95:12
	movq	%rcx, %rax
.Ltmp46:
	#DEBUG_VALUE: set_param:dw <- $r8
	orq	%r9, %rax
	shrq	$32, %rax
	je	.LBB1_20
.Ltmp47:
.LBB1_18:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: x <- $r9
	movq	%rcx, %rax
	cqto
	idivq	%r9
	movq	%rax, %rcx
.Ltmp48:
	.loc	0 0 12 is_stmt 0                # x264_src/output/matroska.c:0:12
	jmp	.LBB1_21
.Ltmp49:
.LBB1_4:                                # %if.then
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	.loc	0 69 51 is_stmt 1               # x264_src/output/matroska.c:69:51
	movl	656(%rsi), %eax
	.loc	0 69 61 is_stmt 0               # x264_src/output/matroska.c:69:61
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	.loc	0 70 53 is_stmt 1               # x264_src/output/matroska.c:70:53
	testq	%rdx, %rax
	je	.LBB1_6
.Ltmp50:
# %bb.5:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB1_7
.Ltmp51:
.LBB1_19:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: x <- $r9
	.loc	0 94 12                         # x264_src/output/matroska.c:94:12
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %r8d
.Ltmp52:
	#DEBUG_VALUE: set_param:dw <- $r8
	.loc	0 95 12                         # x264_src/output/matroska.c:95:12
	movq	%rcx, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB1_18
.Ltmp53:
.LBB1_20:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	#DEBUG_VALUE: x <- $r9
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %ecx
.Ltmp54:
.LBB1_21:                               # %if.end35
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dw <- $r8
	#DEBUG_VALUE: set_param:dh <- $rcx
	.loc	0 98 20                         # x264_src/output/matroska.c:98:20
	movl	%r8d, 16(%rdi)
	.loc	0 99 21                         # x264_src/output/matroska.c:99:21
	movl	%ecx, 20(%rdi)
	.loc	0 100 38                        # x264_src/output/matroska.c:100:38
	movl	660(%rsi), %eax
	.loc	0 100 27 is_stmt 0              # x264_src/output/matroska.c:100:27
	movl	%eax, 36(%rdi)
	.loc	0 101 38 is_stmt 1              # x264_src/output/matroska.c:101:38
	movl	664(%rsi), %eax
	.loc	0 101 27 is_stmt 0              # x264_src/output/matroska.c:101:27
	movl	%eax, 40(%rdi)
	.loc	0 103 5 is_stmt 1               # x264_src/output/matroska.c:103:5
	xorl	%eax, %eax
	retq
.Ltmp55:
.LBB1_6:
	#DEBUG_VALUE: set_param:handle <- $rdi
	#DEBUG_VALUE: set_param:p_param <- $rsi
	#DEBUG_VALUE: set_param:p_mkv <- $rdi
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 70 53                         # x264_src/output/matroska.c:70:53
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB1_7
.Ltmp56:
.Lfunc_end1:
	.size	set_param, .Lfunc_end1-set_param
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function write_headers
	.type	write_headers,@function
write_headers:                          # @write_headers
.Lfunc_begin2:
	.loc	0 107 0                         # x264_src/output/matroska.c:107:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: write_headers:handle <- $rdi
	#DEBUG_VALUE: write_headers:p_nal <- $rsi
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
.Ltmp57:
	#DEBUG_VALUE: write_headers:p_mkv <- $rdi
	#DEBUG_VALUE: write_headers:sps_size <- undef
	#DEBUG_VALUE: write_headers:pps_size <- undef
	#DEBUG_VALUE: write_headers:sei_size <- undef
	#DEBUG_VALUE: write_headers:sps <- undef
	#DEBUG_VALUE: write_headers:pps <- undef
	#DEBUG_VALUE: write_headers:sei <- undef
	.loc	0 122 17 prologue_end           # x264_src/output/matroska.c:122:17
	movl	8(%rdi), %r14d
	movl	$-1, %eax
	.loc	0 122 10 is_stmt 0              # x264_src/output/matroska.c:122:10
	testl	%r14d, %r14d
	.loc	0 122 23                        # x264_src/output/matroska.c:122:23
	je	.LBB2_12
.Ltmp58:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: write_headers:handle <- $rdi
	#DEBUG_VALUE: write_headers:p_nal <- $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- $rdi
	.loc	0 122 34                        # x264_src/output/matroska.c:122:34
	movl	12(%rdi), %r15d
	.loc	0 122 27                        # x264_src/output/matroska.c:122:27
	testl	%r15d, %r15d
	.loc	0 122 41                        # x264_src/output/matroska.c:122:41
	je	.LBB2_12
.Ltmp59:
# %bb.2:                                # %lor.lhs.false13
	#DEBUG_VALUE: write_headers:handle <- $rdi
	#DEBUG_VALUE: write_headers:p_nal <- $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- $rdi
	.loc	0 123 17 is_stmt 1              # x264_src/output/matroska.c:123:17
	movl	16(%rdi), %r12d
	.loc	0 123 10 is_stmt 0              # x264_src/output/matroska.c:123:10
	testl	%r12d, %r12d
	.loc	0 123 25                        # x264_src/output/matroska.c:123:25
	je	.LBB2_12
.Ltmp60:
# %bb.3:                                # %lor.lhs.false15
	#DEBUG_VALUE: write_headers:handle <- $rdi
	#DEBUG_VALUE: write_headers:p_nal <- $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- $rdi
	.loc	0 123 36                        # x264_src/output/matroska.c:123:36
	movl	20(%rdi), %ecx
	.loc	0 123 29                        # x264_src/output/matroska.c:123:29
	testl	%ecx, %ecx
.Ltmp61:
	.loc	0 122 9 is_stmt 1               # x264_src/output/matroska.c:122:9
	je	.LBB2_12
.Ltmp62:
# %bb.4:                                # %if.end
	#DEBUG_VALUE: write_headers:handle <- $rdi
	#DEBUG_VALUE: write_headers:p_nal <- $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- $rdi
	.loc	0 0 9 is_stmt 0                 # x264_src/output/matroska.c:0:9
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
.Ltmp63:
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	movslq	8(%rsi), %rdx
	movslq	32(%rsi), %rcx
	addq	$-4, %rcx
.Ltmp64:
	#DEBUG_VALUE: write_headers:pps_size <- $ecx
	movl	56(%rsi), %eax
.Ltmp65:
	#DEBUG_VALUE: write_headers:sei_size <- $eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	16(%rsi), %r13
	movq	40(%rsi), %rax
.Ltmp66:
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsi), %rax
.Ltmp67:
	#DEBUG_VALUE: write_headers:sei <- $rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbx
	.loc	0 126 45 is_stmt 1              # x264_src/output/matroska.c:126:45
	leaq	(%rdx,%rcx), %rdi
	addq	$7, %rdi
.Ltmp68:
	#DEBUG_VALUE: write_headers:avcC_len <- $edi
	.loc	0 0 45 is_stmt 0                # x264_src/output/matroska.c:0:45
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
.Ltmp69:
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 127 12 is_stmt 1              # x264_src/output/matroska.c:127:12
	callq	malloc@PLT
.Ltmp70:
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:avcC <- $rax
	.loc	0 128 10                        # x264_src/output/matroska.c:128:10
	testq	%rax, %rax
.Ltmp71:
	.loc	0 128 9 is_stmt 0               # x264_src/output/matroska.c:128:9
	je	.LBB2_11
.Ltmp72:
# %bb.5:                                # %if.end22
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC <- $rax
	.loc	0 0 9                           # x264_src/output/matroska.c:0:9
	movq	%rax, %rbp
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	addq	$-4, %rbx
.Ltmp73:
	#DEBUG_VALUE: write_headers:sps_size <- $ebx
	leaq	4(%r13), %rsi
.Ltmp74:
	#DEBUG_VALUE: write_headers:sps <- $rsi
	addq	$4, 24(%rsp)                    # 8-byte Folded Spill
.Ltmp75:
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 131 13 is_stmt 1              # x264_src/output/matroska.c:131:13
	movb	$1, (%rax)
	.loc	0 132 15                        # x264_src/output/matroska.c:132:15
	movzbl	5(%r13), %eax
.Ltmp76:
	#DEBUG_VALUE: write_headers:avcC <- $rbp
	.loc	0 132 13 is_stmt 0              # x264_src/output/matroska.c:132:13
	movb	%al, 1(%rbp)
	.loc	0 133 15 is_stmt 1              # x264_src/output/matroska.c:133:15
	movzbl	6(%r13), %eax
	.loc	0 133 13 is_stmt 0              # x264_src/output/matroska.c:133:13
	movb	%al, 2(%rbp)
	.loc	0 134 15 is_stmt 1              # x264_src/output/matroska.c:134:15
	movzbl	7(%r13), %eax
	.loc	0 134 13 is_stmt 0              # x264_src/output/matroska.c:134:13
	movb	%al, 3(%rbp)
	.loc	0 135 13 is_stmt 1              # x264_src/output/matroska.c:135:13
	movw	$-7681, 4(%rbp)                 # imm = 0xE1FF
	.loc	0 138 13                        # x264_src/output/matroska.c:138:13
	movb	%bh, 6(%rbp)
	.loc	0 139 13                        # x264_src/output/matroska.c:139:13
	movb	%bl, 7(%rbp)
	.loc	0 141 17                        # x264_src/output/matroska.c:141:17
	leaq	8(%rbp), %rdi
	.loc	0 141 5 is_stmt 0               # x264_src/output/matroska.c:141:5
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp77:
	.loc	0 0 5                           # x264_src/output/matroska.c:0:5
	movq	32(%rsp), %rcx                  # 8-byte Reload
	.loc	0 143 22 is_stmt 1              # x264_src/output/matroska.c:143:22
	movb	$1, 4(%rbp,%rcx)
	movq	64(%rsp), %rax                  # 8-byte Reload
	.loc	0 144 22                        # x264_src/output/matroska.c:144:22
	movb	%ah, 5(%rbp,%rcx)
	.loc	0 145 23                        # x264_src/output/matroska.c:145:23
	movb	%al, 6(%rbp,%rcx)
	movq	%rbx, %r13
	.loc	0 147 20                        # x264_src/output/matroska.c:147:20
	leaq	11(%rbp,%rbx), %rdi
	.loc	0 147 36 is_stmt 0              # x264_src/output/matroska.c:147:36
	movslq	%eax, %rdx
	movq	%rax, %rbx
.Ltmp78:
	.loc	0 0 36                          # x264_src/output/matroska.c:0:36
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.loc	0 147 5                         # x264_src/output/matroska.c:147:5
	callq	memcpy@PLT
.Ltmp79:
	.loc	0 0 5                           # x264_src/output/matroska.c:0:5
	movq	8(%rsp), %rax                   # 8-byte Reload
	.loc	0 149 34 is_stmt 1              # x264_src/output/matroska.c:149:34
	movq	(%rax), %rdi
	.loc	0 150 50                        # x264_src/output/matroska.c:150:50
	movq	24(%rax), %r9
	.loc	0 149 11                        # x264_src/output/matroska.c:149:11
	subq	$8, %rsp
.Ltmp80:
	.cfi_adjust_cfa_offset 8
	movl	$.L.str, %esi
	movl	$.L.str.1, %edx
	movq	%rbp, %rcx
	movq	56(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$50000                          # imm = 0xC350
	.cfi_adjust_cfa_offset 8
	callq	mk_writeHeader@PLT
.Ltmp81:
	#DEBUG_VALUE: write_headers:ret <- $eax
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
.Ltmp82:
	.loc	0 153 13                        # x264_src/output/matroska.c:153:13
	testl	%eax, %eax
.Ltmp83:
	.loc	0 153 9 is_stmt 0               # x264_src/output/matroska.c:153:9
	js	.LBB2_12
.Ltmp84:
# %bb.6:                                # %if.end59
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:sps_size <- $r13d
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC <- $rbp
	#DEBUG_VALUE: write_headers:ret <- $eax
	.loc	0 156 5 is_stmt 1               # x264_src/output/matroska.c:156:5
	movq	%rbp, %rdi
	callq	free@PLT
.Ltmp85:
	.loc	0 0 5 is_stmt 0                 # x264_src/output/matroska.c:0:5
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp86:
	.loc	0 160 10 is_stmt 1              # x264_src/output/matroska.c:160:10
	cmpb	$0, 32(%rax)
	movl	20(%rsp), %ebp                  # 4-byte Reload
.Ltmp87:
	.loc	0 160 9 is_stmt 0               # x264_src/output/matroska.c:160:9
	jne	.LBB2_9
.Ltmp88:
# %bb.7:                                # %if.then61
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:sps_size <- $r13d
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 162 36 is_stmt 1              # x264_src/output/matroska.c:162:36
	movq	(%rax), %rdi
	.loc	0 162 13 is_stmt 0              # x264_src/output/matroska.c:162:13
	callq	mk_start_frame@PLT
.Ltmp89:
	.loc	0 162 40                        # x264_src/output/matroska.c:162:40
	testl	%eax, %eax
.Ltmp90:
	.loc	0 162 13                        # x264_src/output/matroska.c:162:13
	js	.LBB2_11
.Ltmp91:
# %bb.8:                                # %if.end67
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:sps_size <- $r13d
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 13                          # x264_src/output/matroska.c:0:13
	movq	8(%rsp), %rax                   # 8-byte Reload
	.loc	0 164 32 is_stmt 1              # x264_src/output/matroska.c:164:32
	movb	$1, 32(%rax)
.Ltmp92:
.LBB2_9:                                # %if.end69
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:sps_size <- $r13d
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 166 35                        # x264_src/output/matroska.c:166:35
	movq	(%rax), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	.loc	0 166 9 is_stmt 0               # x264_src/output/matroska.c:166:9
	movl	%ebp, %edx
	callq	mk_add_frame_data@PLT
.Ltmp93:
	.loc	0 166 54                        # x264_src/output/matroska.c:166:54
	testl	%eax, %eax
	movl	$-1, %eax
.Ltmp94:
	.loc	0 166 9                         # x264_src/output/matroska.c:166:9
	js	.LBB2_12
.Ltmp95:
# %bb.10:                               # %if.end75
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:sps_size <- $r13d
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:pps <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 169 21 is_stmt 1              # x264_src/output/matroska.c:169:21
	addl	%r13d, %ebp
	.loc	0 169 32 is_stmt 0              # x264_src/output/matroska.c:169:32
	addl	%ebx, %ebp
	movl	%ebp, %eax
	jmp	.LBB2_12
.Ltmp96:
.LBB2_11:
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_headers:p_mkv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: write_headers:pps_size <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei_size <- [DW_OP_plus_uconst 20, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:sei <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: write_headers:avcC_len <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 32                          # x264_src/output/matroska.c:0:32
	movl	$-1, %eax
.Ltmp97:
.LBB2_12:                               # %cleanup
	#DEBUG_VALUE: write_headers:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: write_headers:p_nal <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 170 1 epilogue_begin is_stmt 1 # x264_src/output/matroska.c:170:1
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
.Ltmp98:
.Lfunc_end2:
	.size	write_headers, .Lfunc_end2-write_headers
	.cfi_endproc
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function write_frame
.LCPI3_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI3_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
	.type	write_frame,@function
write_frame:                            # @write_frame
.Lfunc_begin3:
	.loc	0 173 0                         # x264_src/output/matroska.c:173:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: write_frame:handle <- $rdi
	#DEBUG_VALUE: write_frame:p_nalu <- $rsi
	#DEBUG_VALUE: write_frame:i_size <- $edx
	#DEBUG_VALUE: write_frame:p_picture <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp99:
	#DEBUG_VALUE: write_frame:p_mkv <- $rdi
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rdi, %r15
.Ltmp100:
	.loc	0 176 10 prologue_end           # x264_src/output/matroska.c:176:10
	cmpb	$0, 32(%rdi)
.Ltmp101:
	.loc	0 176 9 is_stmt 0               # x264_src/output/matroska.c:176:9
	jne	.LBB3_3
.Ltmp102:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- $rsi
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	.loc	0 0 9                           # x264_src/output/matroska.c:0:9
	movq	%rsi, %r12
.Ltmp103:
	#DEBUG_VALUE: write_frame:p_nalu <- $r12
	.loc	0 178 36 is_stmt 1              # x264_src/output/matroska.c:178:36
	movq	(%r15), %rdi
	.loc	0 178 13 is_stmt 0              # x264_src/output/matroska.c:178:13
	callq	mk_start_frame@PLT
.Ltmp104:
	.loc	0 178 40                        # x264_src/output/matroska.c:178:40
	testl	%eax, %eax
.Ltmp105:
	.loc	0 178 13                        # x264_src/output/matroska.c:178:13
	js	.LBB3_6
.Ltmp106:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- $r12
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	.loc	0 180 32 is_stmt 1              # x264_src/output/matroska.c:180:32
	movb	$1, 32(%r15)
	movq	%r12, %rsi
.Ltmp107:
.LBB3_3:                                # %if.end3
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- $rsi
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	.loc	0 183 35                        # x264_src/output/matroska.c:183:35
	movq	(%r15), %rdi
	.loc	0 183 9 is_stmt 0               # x264_src/output/matroska.c:183:9
	movl	%ebx, %edx
	callq	mk_add_frame_data@PLT
.Ltmp108:
	#DEBUG_VALUE: write_frame:p_nalu <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 183 55                        # x264_src/output/matroska.c:183:55
	testl	%eax, %eax
.Ltmp109:
	.loc	0 183 9                         # x264_src/output/matroska.c:183:9
	js	.LBB3_6
.Ltmp110:
# %bb.4:                                # %if.end8
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	.loc	0 186 34 is_stmt 1              # x264_src/output/matroska.c:186:34
	cvtsi2sdq	16(%r14), %xmm0
	.loc	0 186 51 is_stmt 0              # x264_src/output/matroska.c:186:51
	mulsd	.LCPI3_0(%rip), %xmm0
	.loc	0 186 66                        # x264_src/output/matroska.c:186:66
	movl	36(%r15), %eax
	.loc	0 186 59                        # x264_src/output/matroska.c:186:59
	cvtsi2sd	%rax, %xmm1
	.loc	0 186 57                        # x264_src/output/matroska.c:186:57
	mulsd	%xmm0, %xmm1
	.loc	0 186 90                        # x264_src/output/matroska.c:186:90
	movl	40(%r15), %eax
	.loc	0 186 83                        # x264_src/output/matroska.c:186:83
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	.loc	0 186 81                        # x264_src/output/matroska.c:186:81
	divsd	%xmm0, %xmm1
	.loc	0 186 106                       # x264_src/output/matroska.c:186:106
	addsd	.LCPI3_1(%rip), %xmm1
	.loc	0 186 23                        # x264_src/output/matroska.c:186:23
	cvttsd2si	%xmm1, %rsi
.Ltmp111:
	#DEBUG_VALUE: write_frame:i_stamp <- $rsi
	.loc	0 188 28 is_stmt 1              # x264_src/output/matroska.c:188:28
	movb	$0, 32(%r15)
.Ltmp112:
	.loc	0 190 36                        # x264_src/output/matroska.c:190:36
	movq	(%r15), %rdi
	.loc	0 190 59 is_stmt 0              # x264_src/output/matroska.c:190:59
	movl	12(%r14), %edx
	.loc	0 190 89                        # x264_src/output/matroska.c:190:89
	xorl	%ecx, %ecx
	cmpl	$5, (%r14)
	sete	%cl
	.loc	0 190 9                         # x264_src/output/matroska.c:190:9
	callq	mk_set_frame_flags@PLT
.Ltmp113:
	.loc	0 0 0                           # x264_src/output/matroska.c:0:0
	testl	%eax, %eax
	movl	$-1, %eax
	cmovnsl	%ebx, %eax
	jmp	.LBB3_7
.Ltmp114:
.LBB3_6:
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	movl	$-1, %eax
.Ltmp115:
.LBB3_7:                                # %cleanup22
	#DEBUG_VALUE: write_frame:handle <- $r15
	#DEBUG_VALUE: write_frame:p_nalu <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: write_frame:i_size <- $ebx
	#DEBUG_VALUE: write_frame:p_picture <- $r14
	#DEBUG_VALUE: write_frame:p_mkv <- $r15
	.loc	0 194 1 epilogue_begin is_stmt 1 # x264_src/output/matroska.c:194:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp116:
	#DEBUG_VALUE: write_frame:i_size <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp117:
	#DEBUG_VALUE: write_frame:p_picture <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp118:
	#DEBUG_VALUE: write_frame:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp119:
.Lfunc_end3:
	.size	write_frame, .Lfunc_end3-write_frame
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function close_file
.LCPI4_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
	.type	close_file,@function
close_file:                             # @close_file
.Lfunc_begin4:
	.loc	0 197 0                         # x264_src/output/matroska.c:197:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:largest_pts <- $rsi
	#DEBUG_VALUE: close_file:second_largest_pts <- $rdx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
.Ltmp120:
	#DEBUG_VALUE: close_file:p_mkv <- $rdi
	movq	%rdi, %rbx
.Ltmp121:
	.loc	0 202 44 prologue_end           # x264_src/output/matroska.c:202:44
	subq	%rdx, %rsi
.Ltmp122:
	#DEBUG_VALUE: close_file:largest_pts <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 202 75 is_stmt 0              # x264_src/output/matroska.c:202:75
	movl	36(%rdi), %eax
	.loc	0 202 99                        # x264_src/output/matroska.c:202:99
	movl	40(%rdi), %ecx
	.loc	0 202 66                        # x264_src/output/matroska.c:202:66
	imulq	%rsi, %rax
	.loc	0 202 90                        # x264_src/output/matroska.c:202:90
	movq	%rax, %rdx
.Ltmp123:
	#DEBUG_VALUE: close_file:second_largest_pts <- [DW_OP_LLVM_entry_value 1] $rdx
	shrq	$32, %rdx
	je	.LBB4_1
.Ltmp124:
# %bb.2:
	#DEBUG_VALUE: close_file:handle <- $rbx
	#DEBUG_VALUE: close_file:largest_pts <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: close_file:second_largest_pts <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: close_file:p_mkv <- $rbx
	cqto
	idivq	%rcx
	jmp	.LBB4_3
.Ltmp125:
.LBB4_1:
	#DEBUG_VALUE: close_file:handle <- $rbx
	#DEBUG_VALUE: close_file:largest_pts <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: close_file:second_largest_pts <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: close_file:p_mkv <- $rbx
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.Ltmp126:
.LBB4_3:
	#DEBUG_VALUE: close_file:handle <- $rbx
	#DEBUG_VALUE: close_file:largest_pts <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: close_file:second_largest_pts <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: close_file:p_mkv <- $rbx
	.loc	0 202 30                        # x264_src/output/matroska.c:202:30
	cvtsi2sd	%rax, %xmm0
	.loc	0 202 115                       # x264_src/output/matroska.c:202:115
	addsd	.LCPI4_0(%rip), %xmm0
	.loc	0 202 20                        # x264_src/output/matroska.c:202:20
	cvttsd2si	%xmm0, %rsi
.Ltmp127:
	#DEBUG_VALUE: close_file:i_last_delta <- $rsi
	.loc	0 204 28 is_stmt 1              # x264_src/output/matroska.c:204:28
	movq	(%rbx), %rdi
	.loc	0 204 11 is_stmt 0              # x264_src/output/matroska.c:204:11
	callq	mk_close@PLT
.Ltmp128:
	movl	%eax, %ebp
.Ltmp129:
	#DEBUG_VALUE: close_file:ret <- $ebp
	.loc	0 206 5 is_stmt 1               # x264_src/output/matroska.c:206:5
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp130:
	.loc	0 208 5                         # x264_src/output/matroska.c:208:5
	movl	%ebp, %eax
	.loc	0 208 5 epilogue_begin is_stmt 0 # x264_src/output/matroska.c:208:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp131:
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp132:
	#DEBUG_VALUE: close_file:ret <- $eax
	.cfi_def_cfa_offset 8
	retq
.Ltmp133:
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.type	mkv_output,@object              # @mkv_output
	.section	.rodata,"a",@progbits
	.globl	mkv_output
	.p2align	3, 0x0
mkv_output:
	.quad	open_file
	.quad	set_param
	.quad	write_headers
	.quad	write_frame
	.quad	close_file
	.size	mkv_output, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x264"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"V_MPEG4/ISO/AVC"
	.size	.L.str.1, 16

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	33                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	20                              # 20
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
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
	.byte	3                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	37                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0xba1 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	54                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x36:0x5 DW_TAG_const_type
	.long	59                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3b:0x8 DW_TAG_typedef
	.long	67                              # DW_AT_type
	.byte	181                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x43:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x47:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	117                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x50:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x59:0x9 DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	1664                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x62:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	1750                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6b:0x9 DW_TAG_member
	.byte	180                             # DW_AT_name
	.long	2059                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x75:0x5 DW_TAG_pointer_type
	.long	122                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x7a:0x10 DW_TAG_subroutine_type
	.long	138                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x7f:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x84:0x5 DW_TAG_formal_parameter
	.long	151                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8a:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8e:0x5 DW_TAG_pointer_type
	.long	147                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x93:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x97:0x5 DW_TAG_pointer_type
	.long	156                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9c:0x8 DW_TAG_typedef
	.long	164                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa4:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0xa5:0x5 DW_TAG_pointer_type
	.long	170                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xaa:0x10 DW_TAG_subroutine_type
	.long	138                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0xaf:0x5 DW_TAG_formal_parameter
	.long	156                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb4:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xba:0x5 DW_TAG_pointer_type
	.long	191                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xbf:0x9 DW_TAG_typedef
	.long	200                             # DW_AT_type
	.byte	150                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xc8:0x4b9 DW_TAG_structure_type
	.byte	150                             # DW_AT_name
	.short	704                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xce:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xd7:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xe0:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xe9:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xf2:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xfb:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x104:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x10d:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x116:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x11f:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x128:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x131:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	314                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x13a:0x56 DW_TAG_structure_type
	.byte	36                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x13e:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x147:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x150:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x159:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x162:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x16b:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x174:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x17d:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x186:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x190:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x199:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1a2:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1ab:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1b4:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1bd:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1c6:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1cf:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1d8:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1e1:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1ea:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1f3:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x1fc:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x205:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x20e:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x217:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x220:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x229:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x232:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	1413                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x23b:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1413                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x244:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1413                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x24d:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1413                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x256:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1449                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x25f:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	1449                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x269:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1461                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	352                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x273:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	164                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x27d:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x287:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.short	372                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x291:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x29b:0xb DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x2a6:0xf6 DW_TAG_structure_type
	.byte	100                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x2ab:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2b5:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2bf:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2c9:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2d3:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2dd:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2e7:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2f1:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	267                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x2fb:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x305:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x30f:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x319:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x323:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x32d:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x337:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x341:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x34b:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x355:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x35f:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x369:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x373:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x37d:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x387:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x391:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x39c:0xb DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	935                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.short	488                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x3a7:0x11e DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x3ac:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3b6:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3c0:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3ca:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3d4:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3de:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3e8:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3f2:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x3fc:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x406:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x410:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x41a:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x424:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x42e:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x438:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x442:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x44c:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x456:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x460:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x46a:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x474:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x47e:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x488:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x492:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x49c:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x4a6:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1559                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x4b0:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x4ba:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x4c5:0xb DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.short	632                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4d0:0xb DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	331                             # DW_AT_decl_line
	.short	636                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4db:0xb DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	332                             # DW_AT_decl_line
	.short	640                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4e6:0xb DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.short	644                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4f1:0xb DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.short	648                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4fc:0xb DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.short	652                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x507:0xb DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.short	656                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x512:0xb DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.short	660                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x51d:0xb DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.short	664                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x528:0xb DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.short	668                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x533:0xb DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.short	672                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x53e:0xb DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.short	676                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x549:0xb DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.short	680                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x554:0xb DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	367                             # DW_AT_decl_line
	.short	684                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x55f:0xb DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.short	688                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x56a:0xb DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.short	692                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x575:0xb DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	1652                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.short	696                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x581:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x585:0xc DW_TAG_array_type
	.long	1425                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x58a:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x591:0x8 DW_TAG_typedef
	.long	1433                            # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x599:0x8 DW_TAG_typedef
	.long	1441                            # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5a1:0x4 DW_TAG_base_type
	.byte	50                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x5a5:0x4 DW_TAG_base_type
	.byte	53                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	18                              # Abbrev [18] 0x5a9:0xc DW_TAG_array_type
	.long	1425                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x5ae:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5b5:0x5 DW_TAG_pointer_type
	.long	1466                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x5ba:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x5bb:0x5 DW_TAG_formal_parameter
	.long	164                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5c0:0x5 DW_TAG_formal_parameter
	.long	138                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5c5:0x5 DW_TAG_formal_parameter
	.long	1488                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5ca:0x5 DW_TAG_formal_parameter
	.long	1498                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5d0:0x5 DW_TAG_pointer_type
	.long	1493                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x5d5:0x5 DW_TAG_const_type
	.long	147                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5da:0x5 DW_TAG_pointer_type
	.long	1503                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5df:0x28 DW_TAG_structure_type
	.byte	64                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x5e2:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5eb:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5f4:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	164                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5fd:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	164                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x607:0x4 DW_TAG_base_type
	.byte	89                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x60b:0xc DW_TAG_array_type
	.long	138                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x610:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x617:0x5 DW_TAG_pointer_type
	.long	1564                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x61c:0x8 DW_TAG_typedef
	.long	1572                            # DW_AT_type
	.byte	128                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x624:0x3b DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x628:0x9 DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x631:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x63a:0x9 DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x643:0x9 DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x64c:0x9 DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x655:0x9 DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	1631                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x65f:0x5 DW_TAG_pointer_type
	.long	200                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x664:0x8 DW_TAG_typedef
	.long	1644                            # DW_AT_type
	.byte	138                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x66c:0x8 DW_TAG_typedef
	.long	1409                            # DW_AT_type
	.byte	137                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x674:0x5 DW_TAG_pointer_type
	.long	1657                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x679:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x67a:0x5 DW_TAG_formal_parameter
	.long	164                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x680:0x5 DW_TAG_pointer_type
	.long	1669                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x685:0x10 DW_TAG_subroutine_type
	.long	138                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x68a:0x5 DW_TAG_formal_parameter
	.long	156                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x68f:0x5 DW_TAG_formal_parameter
	.long	1685                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x695:0x5 DW_TAG_pointer_type
	.long	1690                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x69a:0x9 DW_TAG_typedef
	.long	1699                            # DW_AT_type
	.byte	156                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	604                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x6a3:0x2e DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	593                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x6a8:0xa DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6b2:0xa DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	596                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6bc:0xa DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	599                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6c6:0xa DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	1745                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	603                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6d1:0x5 DW_TAG_pointer_type
	.long	1425                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6d6:0x5 DW_TAG_pointer_type
	.long	1755                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6db:0x1a DW_TAG_subroutine_type
	.long	138                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x6e0:0x5 DW_TAG_formal_parameter
	.long	156                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6e5:0x5 DW_TAG_formal_parameter
	.long	1745                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6ea:0x5 DW_TAG_formal_parameter
	.long	138                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6ef:0x5 DW_TAG_formal_parameter
	.long	1781                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6f5:0x5 DW_TAG_pointer_type
	.long	1786                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6fa:0x9 DW_TAG_typedef
	.long	1795                            # DW_AT_type
	.byte	179                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x703:0x6a DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x708:0xa DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x712:0xa DW_TAG_member
	.byte	158                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	523                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x71c:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x726:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x730:0xa DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	1901                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x73a:0xa DW_TAG_member
	.byte	165                             # DW_AT_name
	.long	1901                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x744:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	186                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x74e:0xa DW_TAG_member
	.byte	166                             # DW_AT_name
	.long	1921                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x758:0xa DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	2000                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x762:0xa DW_TAG_member
	.byte	178                             # DW_AT_name
	.long	164                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x76d:0x8 DW_TAG_typedef
	.long	1909                            # DW_AT_type
	.byte	164                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x775:0x8 DW_TAG_typedef
	.long	1917                            # DW_AT_type
	.byte	163                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x77d:0x4 DW_TAG_base_type
	.byte	162                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x781:0x9 DW_TAG_typedef
	.long	1930                            # DW_AT_type
	.byte	170                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	511                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x78a:0x2e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x78f:0xa DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	507                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x799:0xa DW_TAG_member
	.byte	167                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	508                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7a3:0xa DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	1976                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	509                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7ad:0xa DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	1988                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	510                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x7b8:0xc DW_TAG_array_type
	.long	138                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7bd:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x7c4:0xc DW_TAG_array_type
	.long	1745                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7c9:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7d0:0x9 DW_TAG_typedef
	.long	2009                            # DW_AT_type
	.byte	177                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x7d9:0x2e DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x7de:0xa DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	2055                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7e8:0xa DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	2055                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7f2:0xa DW_TAG_member
	.byte	175                             # DW_AT_name
	.long	2055                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7fc:0xa DW_TAG_member
	.byte	176                             # DW_AT_name
	.long	2055                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x807:0x4 DW_TAG_base_type
	.byte	173                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x80b:0x5 DW_TAG_pointer_type
	.long	2064                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x810:0x15 DW_TAG_subroutine_type
	.long	138                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x815:0x5 DW_TAG_formal_parameter
	.long	156                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x81a:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x81f:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x825:0xa DW_TAG_variable
	.long	2095                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	18                              # Abbrev [18] 0x82f:0xc DW_TAG_array_type
	.long	147                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x834:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x83b:0xa DW_TAG_variable
	.long	2117                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	18                              # Abbrev [18] 0x845:0xc DW_TAG_array_type
	.long	147                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x84a:0x6 DW_TAG_subrange_type
	.long	1445                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x851:0x37 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x860:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	197                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x869:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	198                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	151                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x872:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	2885                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x87b:0x6 DW_TAG_call_site
	.long	2184                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x881:0x6 DW_TAG_call_site
	.long	2213                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x888:0xe DW_TAG_subprogram
	.byte	182                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2198                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x890:0x5 DW_TAG_formal_parameter
	.long	1488                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x896:0x5 DW_TAG_pointer_type
	.long	2203                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x89b:0x8 DW_TAG_typedef
	.long	2211                            # DW_AT_type
	.byte	183                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x8a3:0x2 DW_TAG_structure_type
	.byte	183                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	30                              # Abbrev [30] 0x8a5:0xb DW_TAG_subprogram
	.byte	184                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x8aa:0x5 DW_TAG_formal_parameter
	.long	164                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x8b0:0x23 DW_TAG_subprogram
	.byte	185                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1901                            # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x8b8:0x8 DW_TAG_formal_parameter
	.byte	186                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8c0:0x8 DW_TAG_formal_parameter
	.byte	187                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x8c8:0xa DW_TAG_lexical_block
	.byte	34                              # Abbrev [34] 0x8c9:0x8 DW_TAG_variable
	.byte	188                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x8d3:0x73 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8e2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	156                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8ec:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	210                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x8f6:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	2885                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x900:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	211                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x909:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	212                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x912:0x33 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x914:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	213                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x91d:0x27 DW_TAG_inlined_subroutine
	.long	2224                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp42-.Ltmp31                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	93                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0x92a:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	2232                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x930:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	2240                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x936:0xd DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp42-.Ltmp31                 # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x93c:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	2249                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x946:0x9e DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\200\177"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x959:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	156                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x962:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	214                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x96b:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	2885                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x974:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	215                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x97d:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	216                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x986:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	217                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x98f:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	218                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x998:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	219                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x9a1:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	220                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x9aa:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	221                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x9b3:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	222                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x9bc:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	223                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9c5:0x6 DW_TAG_call_site
	.long	2532                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x9cb:0x6 DW_TAG_call_site
	.long	2559                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x9d1:0x6 DW_TAG_call_site
	.long	2213                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x9d7:0x6 DW_TAG_call_site
	.long	2629                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x9dd:0x6 DW_TAG_call_site
	.long	2643                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9e4:0xf DW_TAG_subprogram
	.byte	189                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	164                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x9ed:0x5 DW_TAG_formal_parameter
	.long	2547                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x9f3:0x8 DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.byte	191                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9fb:0x4 DW_TAG_base_type
	.byte	190                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	28                              # Abbrev [28] 0x9ff:0x40 DW_TAG_subprogram
	.byte	192                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xa07:0x5 DW_TAG_formal_parameter
	.long	2198                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa0c:0x5 DW_TAG_formal_parameter
	.long	1488                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa11:0x5 DW_TAG_formal_parameter
	.long	1488                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa16:0x5 DW_TAG_formal_parameter
	.long	2623                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa1b:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa20:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa25:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa2a:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa2f:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa34:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa39:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa3f:0x5 DW_TAG_pointer_type
	.long	2628                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0xa44:0x1 DW_TAG_const_type
	.byte	28                              # Abbrev [28] 0xa45:0xe DW_TAG_subprogram
	.byte	193                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xa4d:0x5 DW_TAG_formal_parameter
	.long	2198                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0xa53:0x18 DW_TAG_subprogram
	.byte	194                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xa5b:0x5 DW_TAG_formal_parameter
	.long	2198                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa60:0x5 DW_TAG_formal_parameter
	.long	2623                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa65:0x5 DW_TAG_formal_parameter
	.long	1409                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xa6b:0x58 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0xa7a:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	156                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0xa83:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	224                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xa8c:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	225                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0xa95:0x9 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	1781                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xa9e:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	2885                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xaa7:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	227                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xab0:0x6 DW_TAG_call_site
	.long	2629                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0xab6:0x6 DW_TAG_call_site
	.long	2643                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0xabc:0x6 DW_TAG_call_site
	.long	2755                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0xac3:0x1d DW_TAG_subprogram
	.byte	195                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xacb:0x5 DW_TAG_formal_parameter
	.long	2198                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xad0:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xad5:0x5 DW_TAG_formal_parameter
	.long	138                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xada:0x5 DW_TAG_formal_parameter
	.long	138                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0xae0:0x52 DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0xaef:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	209                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	156                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0xaf8:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	228                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xb01:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	229                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xb0a:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	2885                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xb13:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	230                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	1901                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xb1c:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	223                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb25:0x6 DW_TAG_call_site
	.long	2866                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0xb2b:0x6 DW_TAG_call_site
	.long	2213                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0xb32:0x13 DW_TAG_subprogram
	.byte	196                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	138                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xb3a:0x5 DW_TAG_formal_parameter
	.long	2198                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb3f:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb45:0x5 DW_TAG_pointer_type
	.long	2890                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb4a:0x8 DW_TAG_typedef
	.long	2898                            # DW_AT_type
	.byte	208                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xb52:0x56 DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xb56:0x9 DW_TAG_member
	.byte	200                             # DW_AT_name
	.long	2198                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb5f:0x9 DW_TAG_member
	.byte	201                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb68:0x9 DW_TAG_member
	.byte	202                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb71:0x9 DW_TAG_member
	.byte	203                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb7a:0x9 DW_TAG_member
	.byte	204                             # DW_AT_name
	.long	138                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb83:0x9 DW_TAG_member
	.byte	205                             # DW_AT_name
	.long	1901                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb8c:0x9 DW_TAG_member
	.byte	206                             # DW_AT_name
	.long	2984                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb95:0x9 DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xb9e:0x9 DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xba8:0x4 DW_TAG_base_type
	.byte	207                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	928                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/output/matroska.c"    # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=132
.Linfo_string3:
	.asciz	"mkv_output"                    # string offset=166
.Linfo_string4:
	.asciz	"open_file"                     # string offset=177
.Linfo_string5:
	.asciz	"int"                           # string offset=187
.Linfo_string6:
	.asciz	"char"                          # string offset=191
.Linfo_string7:
	.asciz	"hnd_t"                         # string offset=196
.Linfo_string8:
	.asciz	"set_param"                     # string offset=202
.Linfo_string9:
	.asciz	"cpu"                           # string offset=212
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=216
.Linfo_string11:
	.asciz	"i_threads"                     # string offset=229
.Linfo_string12:
	.asciz	"b_sliced_threads"              # string offset=239
.Linfo_string13:
	.asciz	"b_deterministic"               # string offset=256
.Linfo_string14:
	.asciz	"i_sync_lookahead"              # string offset=272
.Linfo_string15:
	.asciz	"i_width"                       # string offset=289
.Linfo_string16:
	.asciz	"i_height"                      # string offset=297
.Linfo_string17:
	.asciz	"i_csp"                         # string offset=306
.Linfo_string18:
	.asciz	"i_level_idc"                   # string offset=312
.Linfo_string19:
	.asciz	"i_frame_total"                 # string offset=324
.Linfo_string20:
	.asciz	"i_nal_hrd"                     # string offset=338
.Linfo_string21:
	.asciz	"vui"                           # string offset=348
.Linfo_string22:
	.asciz	"i_sar_height"                  # string offset=352
.Linfo_string23:
	.asciz	"i_sar_width"                   # string offset=365
.Linfo_string24:
	.asciz	"i_overscan"                    # string offset=377
.Linfo_string25:
	.asciz	"i_vidformat"                   # string offset=388
.Linfo_string26:
	.asciz	"b_fullrange"                   # string offset=400
.Linfo_string27:
	.asciz	"i_colorprim"                   # string offset=412
.Linfo_string28:
	.asciz	"i_transfer"                    # string offset=424
.Linfo_string29:
	.asciz	"i_colmatrix"                   # string offset=435
.Linfo_string30:
	.asciz	"i_chroma_loc"                  # string offset=447
.Linfo_string31:
	.asciz	"i_frame_reference"             # string offset=460
.Linfo_string32:
	.asciz	"i_keyint_max"                  # string offset=478
.Linfo_string33:
	.asciz	"i_keyint_min"                  # string offset=491
.Linfo_string34:
	.asciz	"i_scenecut_threshold"          # string offset=504
.Linfo_string35:
	.asciz	"b_intra_refresh"               # string offset=525
.Linfo_string36:
	.asciz	"i_bframe"                      # string offset=541
.Linfo_string37:
	.asciz	"i_bframe_adaptive"             # string offset=550
.Linfo_string38:
	.asciz	"i_bframe_bias"                 # string offset=568
.Linfo_string39:
	.asciz	"i_bframe_pyramid"              # string offset=582
.Linfo_string40:
	.asciz	"b_deblocking_filter"           # string offset=599
.Linfo_string41:
	.asciz	"i_deblocking_filter_alphac0"   # string offset=619
.Linfo_string42:
	.asciz	"i_deblocking_filter_beta"      # string offset=647
.Linfo_string43:
	.asciz	"b_cabac"                       # string offset=672
.Linfo_string44:
	.asciz	"i_cabac_init_idc"              # string offset=680
.Linfo_string45:
	.asciz	"b_interlaced"                  # string offset=697
.Linfo_string46:
	.asciz	"b_constrained_intra"           # string offset=710
.Linfo_string47:
	.asciz	"i_cqm_preset"                  # string offset=730
.Linfo_string48:
	.asciz	"psz_cqm_file"                  # string offset=743
.Linfo_string49:
	.asciz	"cqm_4iy"                       # string offset=756
.Linfo_string50:
	.asciz	"unsigned char"                 # string offset=764
.Linfo_string51:
	.asciz	"__uint8_t"                     # string offset=778
.Linfo_string52:
	.asciz	"uint8_t"                       # string offset=788
.Linfo_string53:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=796
.Linfo_string54:
	.asciz	"cqm_4ic"                       # string offset=816
.Linfo_string55:
	.asciz	"cqm_4py"                       # string offset=824
.Linfo_string56:
	.asciz	"cqm_4pc"                       # string offset=832
.Linfo_string57:
	.asciz	"cqm_8iy"                       # string offset=840
.Linfo_string58:
	.asciz	"cqm_8py"                       # string offset=848
.Linfo_string59:
	.asciz	"pf_log"                        # string offset=856
.Linfo_string60:
	.asciz	"gp_offset"                     # string offset=863
.Linfo_string61:
	.asciz	"fp_offset"                     # string offset=873
.Linfo_string62:
	.asciz	"overflow_arg_area"             # string offset=883
.Linfo_string63:
	.asciz	"reg_save_area"                 # string offset=901
.Linfo_string64:
	.asciz	"__va_list_tag"                 # string offset=915
.Linfo_string65:
	.asciz	"p_log_private"                 # string offset=929
.Linfo_string66:
	.asciz	"i_log_level"                   # string offset=943
.Linfo_string67:
	.asciz	"b_visualize"                   # string offset=955
.Linfo_string68:
	.asciz	"psz_dump_yuv"                  # string offset=967
.Linfo_string69:
	.asciz	"analyse"                       # string offset=980
.Linfo_string70:
	.asciz	"intra"                         # string offset=988
.Linfo_string71:
	.asciz	"inter"                         # string offset=994
.Linfo_string72:
	.asciz	"b_transform_8x8"               # string offset=1000
.Linfo_string73:
	.asciz	"i_weighted_pred"               # string offset=1016
.Linfo_string74:
	.asciz	"b_weighted_bipred"             # string offset=1032
.Linfo_string75:
	.asciz	"i_direct_mv_pred"              # string offset=1050
.Linfo_string76:
	.asciz	"i_chroma_qp_offset"            # string offset=1067
.Linfo_string77:
	.asciz	"i_me_method"                   # string offset=1086
.Linfo_string78:
	.asciz	"i_me_range"                    # string offset=1098
.Linfo_string79:
	.asciz	"i_mv_range"                    # string offset=1109
.Linfo_string80:
	.asciz	"i_mv_range_thread"             # string offset=1120
.Linfo_string81:
	.asciz	"i_subpel_refine"               # string offset=1138
.Linfo_string82:
	.asciz	"b_chroma_me"                   # string offset=1154
.Linfo_string83:
	.asciz	"b_mixed_references"            # string offset=1166
.Linfo_string84:
	.asciz	"i_trellis"                     # string offset=1185
.Linfo_string85:
	.asciz	"b_fast_pskip"                  # string offset=1195
.Linfo_string86:
	.asciz	"b_dct_decimate"                # string offset=1208
.Linfo_string87:
	.asciz	"i_noise_reduction"             # string offset=1223
.Linfo_string88:
	.asciz	"f_psy_rd"                      # string offset=1241
.Linfo_string89:
	.asciz	"float"                         # string offset=1250
.Linfo_string90:
	.asciz	"f_psy_trellis"                 # string offset=1256
.Linfo_string91:
	.asciz	"b_psy"                         # string offset=1270
.Linfo_string92:
	.asciz	"i_luma_deadzone"               # string offset=1276
.Linfo_string93:
	.asciz	"b_psnr"                        # string offset=1292
.Linfo_string94:
	.asciz	"b_ssim"                        # string offset=1299
.Linfo_string95:
	.asciz	"rc"                            # string offset=1306
.Linfo_string96:
	.asciz	"i_rc_method"                   # string offset=1309
.Linfo_string97:
	.asciz	"i_qp_constant"                 # string offset=1321
.Linfo_string98:
	.asciz	"i_qp_min"                      # string offset=1335
.Linfo_string99:
	.asciz	"i_qp_max"                      # string offset=1344
.Linfo_string100:
	.asciz	"i_qp_step"                     # string offset=1353
.Linfo_string101:
	.asciz	"i_bitrate"                     # string offset=1363
.Linfo_string102:
	.asciz	"f_rf_constant"                 # string offset=1373
.Linfo_string103:
	.asciz	"f_rf_constant_max"             # string offset=1387
.Linfo_string104:
	.asciz	"f_rate_tolerance"              # string offset=1405
.Linfo_string105:
	.asciz	"i_vbv_max_bitrate"             # string offset=1422
.Linfo_string106:
	.asciz	"i_vbv_buffer_size"             # string offset=1440
.Linfo_string107:
	.asciz	"f_vbv_buffer_init"             # string offset=1458
.Linfo_string108:
	.asciz	"f_ip_factor"                   # string offset=1476
.Linfo_string109:
	.asciz	"f_pb_factor"                   # string offset=1488
.Linfo_string110:
	.asciz	"i_aq_mode"                     # string offset=1500
.Linfo_string111:
	.asciz	"f_aq_strength"                 # string offset=1510
.Linfo_string112:
	.asciz	"b_mb_tree"                     # string offset=1524
.Linfo_string113:
	.asciz	"i_lookahead"                   # string offset=1534
.Linfo_string114:
	.asciz	"b_stat_write"                  # string offset=1546
.Linfo_string115:
	.asciz	"psz_stat_out"                  # string offset=1559
.Linfo_string116:
	.asciz	"b_stat_read"                   # string offset=1572
.Linfo_string117:
	.asciz	"psz_stat_in"                   # string offset=1584
.Linfo_string118:
	.asciz	"f_qcompress"                   # string offset=1596
.Linfo_string119:
	.asciz	"f_qblur"                       # string offset=1608
.Linfo_string120:
	.asciz	"f_complexity_blur"             # string offset=1616
.Linfo_string121:
	.asciz	"zones"                         # string offset=1634
.Linfo_string122:
	.asciz	"i_start"                       # string offset=1640
.Linfo_string123:
	.asciz	"i_end"                         # string offset=1648
.Linfo_string124:
	.asciz	"b_force_qp"                    # string offset=1654
.Linfo_string125:
	.asciz	"i_qp"                          # string offset=1665
.Linfo_string126:
	.asciz	"f_bitrate_factor"              # string offset=1670
.Linfo_string127:
	.asciz	"param"                         # string offset=1687
.Linfo_string128:
	.asciz	"x264_zone_t"                   # string offset=1693
.Linfo_string129:
	.asciz	"i_zones"                       # string offset=1705
.Linfo_string130:
	.asciz	"psz_zones"                     # string offset=1713
.Linfo_string131:
	.asciz	"b_aud"                         # string offset=1723
.Linfo_string132:
	.asciz	"b_repeat_headers"              # string offset=1729
.Linfo_string133:
	.asciz	"b_annexb"                      # string offset=1746
.Linfo_string134:
	.asciz	"i_sps_id"                      # string offset=1755
.Linfo_string135:
	.asciz	"b_vfr_input"                   # string offset=1764
.Linfo_string136:
	.asciz	"i_fps_num"                     # string offset=1776
.Linfo_string137:
	.asciz	"__uint32_t"                    # string offset=1786
.Linfo_string138:
	.asciz	"uint32_t"                      # string offset=1797
.Linfo_string139:
	.asciz	"i_fps_den"                     # string offset=1806
.Linfo_string140:
	.asciz	"i_timebase_num"                # string offset=1816
.Linfo_string141:
	.asciz	"i_timebase_den"                # string offset=1831
.Linfo_string142:
	.asciz	"b_dts_compress"                # string offset=1846
.Linfo_string143:
	.asciz	"b_tff"                         # string offset=1861
.Linfo_string144:
	.asciz	"b_pic_struct"                  # string offset=1867
.Linfo_string145:
	.asciz	"b_fake_interlaced"             # string offset=1880
.Linfo_string146:
	.asciz	"i_slice_max_size"              # string offset=1898
.Linfo_string147:
	.asciz	"i_slice_max_mbs"               # string offset=1915
.Linfo_string148:
	.asciz	"i_slice_count"                 # string offset=1931
.Linfo_string149:
	.asciz	"param_free"                    # string offset=1945
.Linfo_string150:
	.asciz	"x264_param_t"                  # string offset=1956
.Linfo_string151:
	.asciz	"write_headers"                 # string offset=1969
.Linfo_string152:
	.asciz	"i_ref_idc"                     # string offset=1983
.Linfo_string153:
	.asciz	"i_type"                        # string offset=1993
.Linfo_string154:
	.asciz	"i_payload"                     # string offset=2000
.Linfo_string155:
	.asciz	"p_payload"                     # string offset=2010
.Linfo_string156:
	.asciz	"x264_nal_t"                    # string offset=2020
.Linfo_string157:
	.asciz	"write_frame"                   # string offset=2031
.Linfo_string158:
	.asciz	"i_qpplus1"                     # string offset=2043
.Linfo_string159:
	.asciz	"i_pic_struct"                  # string offset=2053
.Linfo_string160:
	.asciz	"b_keyframe"                    # string offset=2066
.Linfo_string161:
	.asciz	"i_pts"                         # string offset=2077
.Linfo_string162:
	.asciz	"long"                          # string offset=2083
.Linfo_string163:
	.asciz	"__int64_t"                     # string offset=2088
.Linfo_string164:
	.asciz	"int64_t"                       # string offset=2098
.Linfo_string165:
	.asciz	"i_dts"                         # string offset=2106
.Linfo_string166:
	.asciz	"img"                           # string offset=2112
.Linfo_string167:
	.asciz	"i_plane"                       # string offset=2116
.Linfo_string168:
	.asciz	"i_stride"                      # string offset=2124
.Linfo_string169:
	.asciz	"plane"                         # string offset=2133
.Linfo_string170:
	.asciz	"x264_image_t"                  # string offset=2139
.Linfo_string171:
	.asciz	"hrd_timing"                    # string offset=2152
.Linfo_string172:
	.asciz	"cpb_initial_arrival_time"      # string offset=2163
.Linfo_string173:
	.asciz	"double"                        # string offset=2188
.Linfo_string174:
	.asciz	"cpb_final_arrival_time"        # string offset=2195
.Linfo_string175:
	.asciz	"cpb_removal_time"              # string offset=2218
.Linfo_string176:
	.asciz	"dpb_output_time"               # string offset=2235
.Linfo_string177:
	.asciz	"x264_hrd_t"                    # string offset=2251
.Linfo_string178:
	.asciz	"opaque"                        # string offset=2262
.Linfo_string179:
	.asciz	"x264_picture_t"                # string offset=2269
.Linfo_string180:
	.asciz	"close_file"                    # string offset=2284
.Linfo_string181:
	.asciz	"cli_output_t"                  # string offset=2295
.Linfo_string182:
	.asciz	"mk_create_writer"              # string offset=2308
.Linfo_string183:
	.asciz	"mk_writer"                     # string offset=2325
.Linfo_string184:
	.asciz	"free"                          # string offset=2335
.Linfo_string185:
	.asciz	"gcd"                           # string offset=2340
.Linfo_string186:
	.asciz	"a"                             # string offset=2344
.Linfo_string187:
	.asciz	"b"                             # string offset=2346
.Linfo_string188:
	.asciz	"c"                             # string offset=2348
.Linfo_string189:
	.asciz	"malloc"                        # string offset=2350
.Linfo_string190:
	.asciz	"unsigned long"                 # string offset=2357
.Linfo_string191:
	.asciz	"size_t"                        # string offset=2371
.Linfo_string192:
	.asciz	"mk_writeHeader"                # string offset=2378
.Linfo_string193:
	.asciz	"mk_start_frame"                # string offset=2393
.Linfo_string194:
	.asciz	"mk_add_frame_data"             # string offset=2408
.Linfo_string195:
	.asciz	"mk_set_frame_flags"            # string offset=2426
.Linfo_string196:
	.asciz	"mk_close"                      # string offset=2445
.Linfo_string197:
	.asciz	"psz_filename"                  # string offset=2454
.Linfo_string198:
	.asciz	"p_handle"                      # string offset=2467
.Linfo_string199:
	.asciz	"p_mkv"                         # string offset=2476
.Linfo_string200:
	.asciz	"w"                             # string offset=2482
.Linfo_string201:
	.asciz	"width"                         # string offset=2484
.Linfo_string202:
	.asciz	"height"                        # string offset=2490
.Linfo_string203:
	.asciz	"d_width"                       # string offset=2497
.Linfo_string204:
	.asciz	"d_height"                      # string offset=2505
.Linfo_string205:
	.asciz	"frame_duration"                # string offset=2514
.Linfo_string206:
	.asciz	"b_writing_frame"               # string offset=2529
.Linfo_string207:
	.asciz	"signed char"                   # string offset=2545
.Linfo_string208:
	.asciz	"mkv_hnd_t"                     # string offset=2557
.Linfo_string209:
	.asciz	"handle"                        # string offset=2567
.Linfo_string210:
	.asciz	"p_param"                       # string offset=2574
.Linfo_string211:
	.asciz	"dw"                            # string offset=2582
.Linfo_string212:
	.asciz	"dh"                            # string offset=2585
.Linfo_string213:
	.asciz	"x"                             # string offset=2588
.Linfo_string214:
	.asciz	"p_nal"                         # string offset=2590
.Linfo_string215:
	.asciz	"sps_size"                      # string offset=2596
.Linfo_string216:
	.asciz	"pps_size"                      # string offset=2605
.Linfo_string217:
	.asciz	"sei_size"                      # string offset=2614
.Linfo_string218:
	.asciz	"sps"                           # string offset=2623
.Linfo_string219:
	.asciz	"pps"                           # string offset=2627
.Linfo_string220:
	.asciz	"sei"                           # string offset=2631
.Linfo_string221:
	.asciz	"avcC_len"                      # string offset=2635
.Linfo_string222:
	.asciz	"avcC"                          # string offset=2644
.Linfo_string223:
	.asciz	"ret"                           # string offset=2649
.Linfo_string224:
	.asciz	"p_nalu"                        # string offset=2653
.Linfo_string225:
	.asciz	"i_size"                        # string offset=2660
.Linfo_string226:
	.asciz	"p_picture"                     # string offset=2667
.Linfo_string227:
	.asciz	"i_stamp"                       # string offset=2677
.Linfo_string228:
	.asciz	"largest_pts"                   # string offset=2685
.Linfo_string229:
	.asciz	"second_largest_pts"            # string offset=2697
.Linfo_string230:
	.asciz	"i_last_delta"                  # string offset=2716
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	mkv_output
	.quad	.L.str
	.quad	.L.str.1
	.quad	.Lfunc_begin0
	.quad	.Ltmp7
	.quad	.Ltmp12
	.quad	.Lfunc_begin1
	.quad	.Ltmp31
	.quad	.Lfunc_begin2
	.quad	.Ltmp70
	.quad	.Ltmp81
	.quad	.Ltmp85
	.quad	.Ltmp89
	.quad	.Ltmp93
	.quad	.Lfunc_begin3
	.quad	.Ltmp104
	.quad	.Ltmp108
	.quad	.Ltmp113
	.quad	.Lfunc_begin4
	.quad	.Ltmp128
	.quad	.Ltmp130
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
