	.text
	.file	"yuv.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/input/yuv.c" md5 0x4e80518590cb4689aaf4976a13133997
	.file	1 "x264_src" "muxers.h" md5 0xbcea0820748b2dc47392b7f6393a96ff
	.file	2 "x264_src/input" "input.h" md5 0xf28c863d273681dfcaca9779e9fcbd53
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "x264_src" "x264.h" md5 0x0b04871e4f52d5a4d8833c501cba2584
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
.Lfunc_begin0:
	.loc	0 34 0                          # x264_src/input/yuv.c:34:0
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 35 20 prologue_end            # x264_src/input/yuv.c:35:20
	movl	$24, %edi
.Ltmp1:
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	callq	malloc@PLT
.Ltmp2:
	#DEBUG_VALUE: open_file:opt <- $r14
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:p_handle <- $r12
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 0 20 is_stmt 0                # x264_src/input/yuv.c:0:20
	movl	$-1, %ecx
.Ltmp3:
	.loc	0 36 10 is_stmt 1               # x264_src/input/yuv.c:36:10
	testq	%rax, %rax
.Ltmp4:
	.loc	0 36 9 is_stmt 0                # x264_src/input/yuv.c:36:9
	je	.LBB0_17
.Ltmp5:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- $r12
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- $r14
	#DEBUG_VALUE: open_file:h <- $rax
	.loc	0 0 9                           # x264_src/input/yuv.c:0:9
	movq	%rax, %r15
	movq	%r12, (%rsp)                    # 8-byte Spill
.Ltmp6:
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	.loc	0 39 15 is_stmt 1               # x264_src/input/yuv.c:39:15
	movq	8(%r14), %rdi
	.loc	0 0 0 is_stmt 0                 # x264_src/input/yuv.c:0:0
	leaq	44(%r13), %rbp
	leaq	12(%r13), %r14
.Ltmp7:
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 39 10                         # x264_src/input/yuv.c:39:10
	testq	%rdi, %rdi
.Ltmp8:
	.loc	0 39 9                          # x264_src/input/yuv.c:39:9
	je	.LBB0_2
.Ltmp9:
# %bb.7:                                # %if.else
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 47 9 is_stmt 1                # x264_src/input/yuv.c:47:9
	movl	$.L.str, %esi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp10:
.LBB0_8:                                # %if.end18
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 48 16                         # x264_src/input/yuv.c:48:16
	movl	44(%r13), %eax
	.loc	0 48 10 is_stmt 0               # x264_src/input/yuv.c:48:10
	testl	%eax, %eax
	.loc	0 48 22                         # x264_src/input/yuv.c:48:22
	je	.LBB0_10
.Ltmp11:
# %bb.9:                                # %lor.lhs.false
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 48 32                         # x264_src/input/yuv.c:48:32
	movl	12(%r13), %ecx
	.loc	0 48 26                         # x264_src/input/yuv.c:48:26
	testl	%ecx, %ecx
.Ltmp12:
	.loc	0 48 9                          # x264_src/input/yuv.c:48:9
	je	.LBB0_10
.Ltmp13:
# %bb.11:                               # %if.end25
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 54 19 is_stmt 1               # x264_src/input/yuv.c:54:19
	movl	$0, 16(%r15)
	.loc	0 55 19                         # x264_src/input/yuv.c:55:19
	movl	$0, 40(%r13)
	.loc	0 56 19                         # x264_src/input/yuv.c:56:19
	movl	%eax, 8(%r15)
	.loc	0 57 19                         # x264_src/input/yuv.c:57:19
	movl	%ecx, 12(%r15)
	cmpb	$45, (%rbx)
	jne	.LBB0_14
.Ltmp14:
# %bb.12:                               # %if.end25.tail
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 59 10                         # x264_src/input/yuv.c:59:10
	cmpb	$0, 1(%rbx)
.Ltmp15:
	.loc	0 59 9 is_stmt 0                # x264_src/input/yuv.c:59:9
	je	.LBB0_13
.Ltmp16:
.LBB0_14:                               # %if.else33
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 62 17 is_stmt 1               # x264_src/input/yuv.c:62:17
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	fopen64@PLT
.Ltmp17:
.LBB0_15:                               # %if.end36
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 0 17 is_stmt 0                # x264_src/input/yuv.c:0:17
	movl	$-1, %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rax, (%r15)
.Ltmp18:
	.loc	0 63 15 is_stmt 1               # x264_src/input/yuv.c:63:15
	testq	%rax, %rax
.Ltmp19:
	.loc	0 63 9 is_stmt 0                # x264_src/input/yuv.c:63:9
	je	.LBB0_17
.Ltmp20:
# %bb.16:                               # %if.end41
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 66 15 is_stmt 1               # x264_src/input/yuv.c:66:15
	movq	%r15, (%rdx)
	xorl	%ecx, %ecx
.Ltmp21:
.LBB0_17:                               # %cleanup42
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 68 1                          # x264_src/input/yuv.c:68:1
	movl	%ecx, %eax
	.loc	0 68 1 epilogue_begin is_stmt 0 # x264_src/input/yuv.c:68:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp22:
	#DEBUG_VALUE: open_file:psz_filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp23:
	#DEBUG_VALUE: open_file:info <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp24:
.LBB0_2:                                # %for.cond.preheader
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: p <- $rbx
	.loc	0 42 38 is_stmt 1               # x264_src/input/yuv.c:42:38
	movzbl	(%rbx), %eax
.Ltmp25:
	.loc	0 42 9 is_stmt 0                # x264_src/input/yuv.c:42:9
	testb	%al, %al
	je	.LBB0_8
.Ltmp26:
# %bb.3:                                # %for.body.preheader
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: p <- $rbx
	.loc	0 0 9                           # x264_src/input/yuv.c:0:9
	movq	%rbx, %r12
	jmp	.LBB0_4
.Ltmp27:
	.p2align	4, 0x90
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: p <- $r12
	.loc	0 42 38                         # x264_src/input/yuv.c:42:38
	movzbl	1(%r12), %eax
	.loc	0 42 43                         # x264_src/input/yuv.c:42:43
	incq	%r12
.Ltmp28:
	#DEBUG_VALUE: p <- $r12
	.loc	0 42 9                          # x264_src/input/yuv.c:42:9
	testb	%al, %al
	je	.LBB0_8
.Ltmp29:
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: p <- $r12
	#DEBUG_VALUE: p <- $r12
	.loc	0 43 27 is_stmt 1               # x264_src/input/yuv.c:43:27
	addb	$-48, %al
	cmpb	$9, %al
	ja	.LBB0_6
.Ltmp30:
# %bb.5:                                # %land.lhs.true8
                                        #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	#DEBUG_VALUE: p <- $r12
	.loc	0 43 43 is_stmt 0               # x264_src/input/yuv.c:43:43
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp31:
	.loc	0 43 93                         # x264_src/input/yuv.c:43:93
	cmpl	$2, %eax
	jne	.LBB0_6
	jmp	.LBB0_8
.Ltmp32:
.LBB0_13:                               # %if.then32
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 60 17 is_stmt 1               # x264_src/input/yuv.c:60:17
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LBB0_15
.Ltmp33:
.LBB0_10:                               # %if.then23
	#DEBUG_VALUE: open_file:psz_filename <- $rbx
	#DEBUG_VALUE: open_file:p_handle <- [$rsp+0]
	#DEBUG_VALUE: open_file:info <- $r13
	#DEBUG_VALUE: open_file:opt <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: open_file:h <- $r15
	.loc	0 50 18                         # x264_src/input/yuv.c:50:18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 50 9 is_stmt 0                # x264_src/input/yuv.c:50:9
	movl	$.L.str.1, %edi
	movl	$49, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp34:
	.loc	0 0 9                           # x264_src/input/yuv.c:0:9
	movl	$-1, %ecx
	.loc	0 51 9 is_stmt 1                # x264_src/input/yuv.c:51:9
	jmp	.LBB0_17
.Ltmp35:
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
	.file	7 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	10 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
.Lfunc_begin1:
	.loc	0 71 0                          # x264_src/input/yuv.c:71:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: get_frame_total:handle <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp36:
	#DEBUG_VALUE: get_frame_total:h <- $rdi
	movq	%rdi, %rbx
.Ltmp37:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- 0
	.loc	0 77 19 prologue_end            # x264_src/input/yuv.c:77:19
	movq	(%rdi), %rdi
.Ltmp38:
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	.loc	0 77 9 is_stmt 0                # x264_src/input/yuv.c:77:9
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
.Ltmp39:
	.loc	0 78 37 is_stmt 1               # x264_src/input/yuv.c:78:37
	movq	(%rbx), %rdi
	.loc	0 78 27 is_stmt 0               # x264_src/input/yuv.c:78:27
	callq	ftell@PLT
.Ltmp40:
	movq	%rax, %r14
.Ltmp41:
	#DEBUG_VALUE: i_size <- $r14
	.loc	0 79 19 is_stmt 1               # x264_src/input/yuv.c:79:19
	movq	(%rbx), %rdi
	.loc	0 79 9 is_stmt 0                # x264_src/input/yuv.c:79:9
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp42:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- undef
	.loc	0 80 45 is_stmt 1               # x264_src/input/yuv.c:80:45
	movl	8(%rbx), %ecx
	.loc	0 80 51 is_stmt 0               # x264_src/input/yuv.c:80:51
	imull	12(%rbx), %ecx
	.loc	0 80 63                         # x264_src/input/yuv.c:80:63
	leal	(%rcx,%rcx,2), %edx
	.loc	0 80 67                         # x264_src/input/yuv.c:80:67
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	.loc	0 80 40                         # x264_src/input/yuv.c:80:40
	movslq	%ecx, %rsi
	.loc	0 80 38                         # x264_src/input/yuv.c:80:38
	movq	%r14, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB1_1
.Ltmp43:
# %bb.2:
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: i_size <- $r14
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rsi
.Ltmp44:
	#DEBUG_VALUE: get_frame_total:i_frame_total <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- $eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 83 5 epilogue_begin is_stmt 1 # x264_src/input/yuv.c:83:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp45:
	#DEBUG_VALUE: get_frame_total:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 8
	retq
.Ltmp47:
.LBB1_1:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: get_frame_total:handle <- $rbx
	#DEBUG_VALUE: get_frame_total:h <- $rbx
	#DEBUG_VALUE: i_size <- $r14
	.loc	0 80 38                         # x264_src/input/yuv.c:80:38
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%ecx
.Ltmp48:
                                        # kill: def $eax killed $eax def $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $rax
	#DEBUG_VALUE: get_frame_total:i_frame_total <- $eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 83 5 epilogue_begin           # x264_src/input/yuv.c:83:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp49:
	#DEBUG_VALUE: get_frame_total:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 8
	retq
.Ltmp51:
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_frame
	.type	read_frame,@function
read_frame:                             # @read_frame
.Lfunc_begin2:
	.loc	0 94 0                          # x264_src/input/yuv.c:94:0
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp52:
	#DEBUG_VALUE: read_frame:h <- $rsi
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp53:
	.loc	0 97 17 prologue_end            # x264_src/input/yuv.c:97:17
	cmpl	%edx, 16(%rsi)
.Ltmp54:
	.loc	0 97 9 is_stmt 0                # x264_src/input/yuv.c:97:9
	jge	.LBB2_2
.Ltmp55:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 100 23 is_stmt 1              # x264_src/input/yuv.c:100:23
	movq	(%r14), %rdi
	.loc	0 100 27 is_stmt 0              # x264_src/input/yuv.c:100:27
	movslq	%ebx, %rax
	.loc	0 100 50                        # x264_src/input/yuv.c:100:50
	movslq	8(%r14), %rcx
	.loc	0 100 45                        # x264_src/input/yuv.c:100:45
	imulq	%rax, %rcx
	.loc	0 100 61                        # x264_src/input/yuv.c:100:61
	movslq	12(%r14), %rax
	.loc	0 100 56                        # x264_src/input/yuv.c:100:56
	imulq	%rcx, %rax
	.loc	0 100 68                        # x264_src/input/yuv.c:100:68
	leaq	(%rax,%rax,2), %rsi
	.loc	0 100 72                        # x264_src/input/yuv.c:100:72
	shrq	%rsi
	.loc	0 100 13                        # x264_src/input/yuv.c:100:13
	xorl	%edx, %edx
	callq	fseek@PLT
.Ltmp56:
.LBB2_2:                                # %if.end16
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	.loc	0 88 19 is_stmt 1               # x264_src/input/yuv.c:88:19
	movq	64(%r15), %rdi
	.loc	0 88 43 is_stmt 0               # x264_src/input/yuv.c:88:43
	movslq	8(%r14), %rax
	.loc	0 88 54                         # x264_src/input/yuv.c:88:54
	movslq	12(%r14), %rsi
	.loc	0 88 49                         # x264_src/input/yuv.c:88:49
	imulq	%rax, %rsi
	.loc	0 88 68                         # x264_src/input/yuv.c:88:68
	movq	(%r14), %rcx
	.loc	0 88 12                         # x264_src/input/yuv.c:88:12
	movl	$1, %edx
	callq	fread@PLT
.Ltmp57:
	.loc	0 0 12                          # x264_src/input/yuv.c:0:12
	movl	$-1, %ebp
	.loc	0 88 73                         # x264_src/input/yuv.c:88:73
	testq	%rax, %rax
	.loc	0 89 9 is_stmt 1                # x264_src/input/yuv.c:89:9
	je	.LBB2_6
.Ltmp58:
# %bb.3:                                # %lor.lhs.false.i
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	.loc	0 89 54 is_stmt 0               # x264_src/input/yuv.c:89:54
	movl	12(%r14), %eax
	.loc	0 89 49                         # x264_src/input/yuv.c:89:49
	imull	8(%r14), %eax
	.loc	0 89 61                         # x264_src/input/yuv.c:89:61
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	.loc	0 89 19                         # x264_src/input/yuv.c:89:19
	movq	72(%r15), %rdi
	.loc	0 89 61                         # x264_src/input/yuv.c:89:61
	sarl	$2, %ecx
	.loc	0 89 40                         # x264_src/input/yuv.c:89:40
	movslq	%ecx, %rsi
	.loc	0 89 72                         # x264_src/input/yuv.c:89:72
	movq	(%r14), %rcx
	.loc	0 89 12                         # x264_src/input/yuv.c:89:12
	movl	$1, %edx
	callq	fread@PLT
.Ltmp59:
	.loc	0 89 77                         # x264_src/input/yuv.c:89:77
	testq	%rax, %rax
	.loc	0 90 9 is_stmt 1                # x264_src/input/yuv.c:90:9
	je	.LBB2_6
.Ltmp60:
# %bb.4:                                # %read_frame_internal.exit
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	#DEBUG_VALUE: read_frame_internal:p_pic <- $r15
	#DEBUG_VALUE: read_frame_internal:h <- $r14
	.loc	0 90 54 is_stmt 0               # x264_src/input/yuv.c:90:54
	movl	12(%r14), %eax
	.loc	0 90 49                         # x264_src/input/yuv.c:90:49
	imull	8(%r14), %eax
	.loc	0 90 61                         # x264_src/input/yuv.c:90:61
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	.loc	0 90 19                         # x264_src/input/yuv.c:90:19
	movq	80(%r15), %rdi
	.loc	0 90 61                         # x264_src/input/yuv.c:90:61
	sarl	$2, %ecx
	.loc	0 90 40                         # x264_src/input/yuv.c:90:40
	movslq	%ecx, %rsi
	.loc	0 90 72                         # x264_src/input/yuv.c:90:72
	movq	(%r14), %rcx
	.loc	0 90 12                         # x264_src/input/yuv.c:90:12
	movl	$1, %edx
	callq	fread@PLT
.Ltmp61:
	.loc	0 90 77                         # x264_src/input/yuv.c:90:77
	testq	%rax, %rax
.Ltmp62:
	.loc	0 110 9 is_stmt 1               # x264_src/input/yuv.c:110:9
	je	.LBB2_6
.Ltmp63:
# %bb.5:                                # %if.end20
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- $ebx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 113 28                        # x264_src/input/yuv.c:113:28
	incl	%ebx
.Ltmp64:
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 113 19 is_stmt 0              # x264_src/input/yuv.c:113:19
	movl	%ebx, 16(%r14)
	xorl	%ebp, %ebp
.Ltmp65:
.LBB2_6:                                # %cleanup
	#DEBUG_VALUE: read_frame:p_pic <- $r15
	#DEBUG_VALUE: read_frame:handle <- $r14
	#DEBUG_VALUE: read_frame:i_frame <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: read_frame:h <- $r14
	.loc	0 115 1 is_stmt 1               # x264_src/input/yuv.c:115:1
	movl	%ebp, %eax
	.loc	0 115 1 epilogue_begin is_stmt 0 # x264_src/input/yuv.c:115:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp66:
	#DEBUG_VALUE: read_frame:handle <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp67:
	#DEBUG_VALUE: read_frame:p_pic <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp68:
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
	.loc	0 120 10 prologue_end is_stmt 1 # x264_src/input/yuv.c:120:10
	testq	%rdi, %rdi
	.loc	0 120 12 is_stmt 0              # x264_src/input/yuv.c:120:12
	je	.LBB3_3
.Ltmp69:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:h <- $rdi
	.loc	0 120 19                        # x264_src/input/yuv.c:120:19
	movq	(%rdi), %rax
	.loc	0 120 16                        # x264_src/input/yuv.c:120:16
	testq	%rax, %rax
.Ltmp70:
	.loc	0 120 9                         # x264_src/input/yuv.c:120:9
	je	.LBB3_3
.Ltmp71:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: close_file:handle <- $rdi
	#DEBUG_VALUE: close_file:h <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp72:
	#DEBUG_VALUE: close_file:h <- $rbx
	#DEBUG_VALUE: close_file:handle <- $rbx
	.loc	0 122 5 is_stmt 1               # x264_src/input/yuv.c:122:5
	movq	%rax, %rdi
	callq	fclose@PLT
.Ltmp73:
	.loc	0 123 5                         # x264_src/input/yuv.c:123:5
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp74:
	.loc	0 0 5 is_stmt 0                 # x264_src/input/yuv.c:0:5
	popq	%rbx
.Ltmp75:
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB3_3:                                # %cleanup
	#DEBUG_VALUE: close_file:handle <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 125 1 is_stmt 1               # x264_src/input/yuv.c:125:1
	xorl	%eax, %eax
	retq
.Ltmp76:
.Lfunc_end3:
	.size	close_file, .Lfunc_end3-close_file
	.cfi_endproc
                                        # -- End function
	.type	yuv_input,@object               # @yuv_input
	.section	.rodata,"a",@progbits
	.globl	yuv_input
	.p2align	3, 0x0
yuv_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	x264_picture_alloc
	.quad	read_frame
	.quad	0
	.quad	x264_picture_clean
	.quad	close_file
	.size	yuv_input, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%dx%d"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"yuv [error]: rawyuv input requires a resolution.\n"
	.size	.L.str.1, 50

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	16                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
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
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
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
	.byte	5                               # DW_FORM_data2
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
	.byte	26                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xcd7 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	54                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x36:0x5 DW_TAG_const_type
	.long	59                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3b:0x8 DW_TAG_typedef
	.long	67                              # DW_AT_type
	.byte	197                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x43:0x44 DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x47:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	135                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x50:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x59:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	409                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x62:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	2181                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6b:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	2207                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x74:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	2228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7d:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x87:0x5 DW_TAG_pointer_type
	.long	140                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8c:0x1a DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x91:0x5 DW_TAG_formal_parameter
	.long	170                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x96:0x5 DW_TAG_formal_parameter
	.long	179                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9b:0x5 DW_TAG_formal_parameter
	.long	193                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa0:0x5 DW_TAG_formal_parameter
	.long	339                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xa6:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xaa:0x5 DW_TAG_pointer_type
	.long	175                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xaf:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xb3:0x5 DW_TAG_pointer_type
	.long	184                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb8:0x8 DW_TAG_typedef
	.long	192                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc0:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0xc1:0x5 DW_TAG_pointer_type
	.long	198                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc6:0x8 DW_TAG_typedef
	.long	206                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xce:0x71 DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xd2:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xdb:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xe4:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xed:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xf6:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xff:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x108:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x111:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x11a:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x123:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x12c:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x135:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x13f:0x8 DW_TAG_typedef
	.long	327                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x147:0x8 DW_TAG_typedef
	.long	335                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x14f:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x153:0x5 DW_TAG_pointer_type
	.long	344                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x158:0x8 DW_TAG_typedef
	.long	352                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x160:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x164:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x16d:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x176:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x17f:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x189:0x5 DW_TAG_pointer_type
	.long	398                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x18e:0xb DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x193:0x5 DW_TAG_formal_parameter
	.long	184                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x199:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x19e:0x1a DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x1a3:0x5 DW_TAG_formal_parameter
	.long	440                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1a8:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1ad:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1b2:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1b8:0x5 DW_TAG_pointer_type
	.long	445                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1bd:0x9 DW_TAG_typedef
	.long	454                             # DW_AT_type
	.byte	192                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1c6:0x6a DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1cb:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1d5:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	523                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1df:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1e9:0xa DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1f3:0xa DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1fd:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x207:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x211:0xa DW_TAG_member
	.byte	179                             # DW_AT_name
	.long	2038                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x21b:0xa DW_TAG_member
	.byte	184                             # DW_AT_name
	.long	2122                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x225:0xa DW_TAG_member
	.byte	191                             # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x230:0x8 DW_TAG_typedef
	.long	568                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x238:0x8 DW_TAG_typedef
	.long	576                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x240:0x4 DW_TAG_base_type
	.byte	36                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x244:0x5 DW_TAG_pointer_type
	.long	585                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x249:0x9 DW_TAG_typedef
	.long	594                             # DW_AT_type
	.byte	178                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x252:0x4b9 DW_TAG_structure_type
	.byte	178                             # DW_AT_name
	.short	704                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x258:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x261:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x26a:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x273:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x27c:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x285:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x28e:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x297:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2a0:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2a9:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2b2:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2bb:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	5                               # Abbrev [5] 0x2c4:0x56 DW_TAG_structure_type
	.byte	36                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2c8:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2d1:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2da:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2e3:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2ec:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2f5:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2fe:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x307:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x310:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x31a:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x323:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x32c:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x335:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x33e:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x347:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x350:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x359:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x362:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x36b:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x374:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x37d:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x386:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x38f:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x398:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3a1:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3aa:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3b3:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3bc:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1803                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3c5:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1803                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3ce:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1803                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3d7:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1803                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3e0:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1839                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x3e9:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1839                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x3f3:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1851                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	352                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x3fd:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x407:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x411:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.short	372                             # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x41b:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x425:0xb DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1072                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x430:0xf6 DW_TAG_structure_type
	.byte	100                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x435:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x43f:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x449:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x453:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x45d:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x467:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x471:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x47b:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	267                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x485:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x48f:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x499:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4a3:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4ad:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4b7:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4c1:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4cb:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4d5:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4df:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4e9:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4f3:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4fd:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x507:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1937                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x511:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x51b:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x526:0xb DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1329                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.short	488                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x531:0x11e DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x536:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x540:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x54a:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x554:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x55e:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x568:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x572:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x57c:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x586:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x590:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x59a:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5a4:0xa DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5ae:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5b8:0xa DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5c2:0xa DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5cc:0xa DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5d6:0xa DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5e0:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	312                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5ea:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5f4:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5fe:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x608:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x612:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x61c:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x626:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x630:0xa DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	1949                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x63a:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x644:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x64f:0xb DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.short	632                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x65a:0xb DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	331                             # DW_AT_decl_line
	.short	636                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x665:0xb DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	332                             # DW_AT_decl_line
	.short	640                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x670:0xb DW_TAG_member
	.byte	164                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.short	644                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x67b:0xb DW_TAG_member
	.byte	165                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.short	648                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x686:0xb DW_TAG_member
	.byte	166                             # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.short	652                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x691:0xb DW_TAG_member
	.byte	167                             # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.short	656                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x69c:0xb DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.short	660                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6a7:0xb DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.short	664                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6b2:0xb DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.short	668                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6bd:0xb DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.short	672                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6c8:0xb DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.short	676                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6d3:0xb DW_TAG_member
	.byte	173                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.short	680                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6de:0xb DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	367                             # DW_AT_decl_line
	.short	684                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6e9:0xb DW_TAG_member
	.byte	175                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.short	688                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6f4:0xb DW_TAG_member
	.byte	176                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.short	692                             # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6ff:0xb DW_TAG_member
	.byte	177                             # DW_AT_name
	.long	2026                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.short	696                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x70b:0xc DW_TAG_array_type
	.long	1815                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x710:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x717:0x8 DW_TAG_typedef
	.long	1823                            # DW_AT_type
	.byte	83                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x71f:0x8 DW_TAG_typedef
	.long	1831                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x727:0x4 DW_TAG_base_type
	.byte	81                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x72b:0x4 DW_TAG_base_type
	.byte	84                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	18                              # Abbrev [18] 0x72f:0xc DW_TAG_array_type
	.long	1815                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x734:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x73b:0x5 DW_TAG_pointer_type
	.long	1856                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x740:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x741:0x5 DW_TAG_formal_parameter
	.long	192                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x746:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x74b:0x5 DW_TAG_formal_parameter
	.long	1878                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x750:0x5 DW_TAG_formal_parameter
	.long	1888                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x756:0x5 DW_TAG_pointer_type
	.long	1883                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x75b:0x5 DW_TAG_const_type
	.long	175                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x760:0x5 DW_TAG_pointer_type
	.long	1893                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x765:0x28 DW_TAG_structure_type
	.byte	95                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x768:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x771:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x77a:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x783:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x78d:0x4 DW_TAG_base_type
	.byte	120                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x791:0xc DW_TAG_array_type
	.long	166                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x796:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x79d:0x5 DW_TAG_pointer_type
	.long	1954                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7a2:0x8 DW_TAG_typedef
	.long	1962                            # DW_AT_type
	.byte	158                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x7aa:0x3b DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x7ae:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7b7:0x9 DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7c0:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7c9:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7d2:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x7db:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	2021                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7e5:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7ea:0x5 DW_TAG_pointer_type
	.long	2031                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x7ef:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x7f0:0x5 DW_TAG_formal_parameter
	.long	192                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7f6:0x9 DW_TAG_typedef
	.long	2047                            # DW_AT_type
	.byte	183                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	511                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7ff:0x2e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x804:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	507                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x80e:0xa DW_TAG_member
	.byte	180                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	508                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x818:0xa DW_TAG_member
	.byte	181                             # DW_AT_name
	.long	2093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	509                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x822:0xa DW_TAG_member
	.byte	182                             # DW_AT_name
	.long	2105                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	510                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x82d:0xc DW_TAG_array_type
	.long	166                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x832:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x839:0xc DW_TAG_array_type
	.long	2117                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x83e:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x845:0x5 DW_TAG_pointer_type
	.long	1815                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x84a:0x9 DW_TAG_typedef
	.long	2131                            # DW_AT_type
	.byte	190                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x853:0x2e DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x858:0xa DW_TAG_member
	.byte	185                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x862:0xa DW_TAG_member
	.byte	187                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x86c:0xa DW_TAG_member
	.byte	188                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x876:0xa DW_TAG_member
	.byte	189                             # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x881:0x4 DW_TAG_base_type
	.byte	186                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x885:0x5 DW_TAG_pointer_type
	.long	2186                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x88a:0x15 DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x88f:0x5 DW_TAG_formal_parameter
	.long	440                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x894:0x5 DW_TAG_formal_parameter
	.long	184                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x899:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x89f:0x5 DW_TAG_pointer_type
	.long	2212                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8a4:0x10 DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x8a9:0x5 DW_TAG_formal_parameter
	.long	440                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8ae:0x5 DW_TAG_formal_parameter
	.long	184                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8b4:0x5 DW_TAG_pointer_type
	.long	2233                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x8b9:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x8ba:0x5 DW_TAG_formal_parameter
	.long	440                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8c0:0xa DW_TAG_variable
	.long	2250                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	18                              # Abbrev [18] 0x8ca:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8cf:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8d6:0xa DW_TAG_variable
	.long	2272                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	18                              # Abbrev [18] 0x8e0:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8e5:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	50                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x8ec:0x7 DW_TAG_variable
	.long	2291                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x8f3:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8f8:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8ff:0xa DW_TAG_variable
	.long	2313                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	18                              # Abbrev [18] 0x909:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x90e:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x915:0x8 DW_TAG_typedef
	.long	2333                            # DW_AT_type
	.byte	200                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x91d:0x8 DW_TAG_typedef
	.long	2341                            # DW_AT_type
	.byte	199                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x925:0x4 DW_TAG_base_type
	.byte	198                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x929:0x6a DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x938:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.short	257                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	170                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x942:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.short	258                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	179                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x94c:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	193                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x956:0xa DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.short	260                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	339                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x960:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	250                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	3025                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x969:0x11 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp24                 # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x96f:0xa DW_TAG_variable
	.byte	5                               # DW_AT_location
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x97a:0x6 DW_TAG_call_site
	.long	2451                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x980:0x6 DW_TAG_call_site
	.long	2474                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x986:0x6 DW_TAG_call_site
	.long	2501                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x98c:0x6 DW_TAG_call_site
	.long	2474                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x993:0xf DW_TAG_subprogram
	.byte	201                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	192                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x99c:0x5 DW_TAG_formal_parameter
	.long	2466                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x9a2:0x8 DW_TAG_typedef
	.long	2341                            # DW_AT_type
	.byte	202                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	32                              # Abbrev [32] 0x9aa:0x16 DW_TAG_subprogram
	.byte	203                             # DW_AT_linkage_name
	.byte	204                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x9b4:0x5 DW_TAG_formal_parameter
	.long	2496                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9b9:0x5 DW_TAG_formal_parameter
	.long	2496                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x9be:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x9c0:0x5 DW_TAG_restrict_type
	.long	1878                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x9c5:0x15 DW_TAG_subprogram
	.byte	205                             # DW_AT_linkage_name
	.byte	206                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2522                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x9cf:0x5 DW_TAG_formal_parameter
	.long	2496                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9d4:0x5 DW_TAG_formal_parameter
	.long	2496                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9da:0x5 DW_TAG_pointer_type
	.long	2527                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9df:0x8 DW_TAG_typedef
	.long	2535                            # DW_AT_type
	.byte	245                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	35                              # Abbrev [35] 0x9e7:0x10b DW_TAG_structure_type
	.byte	244                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x9ec:0x9 DW_TAG_member
	.byte	207                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x9f5:0x9 DW_TAG_member
	.byte	208                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x9fe:0x9 DW_TAG_member
	.byte	209                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa07:0x9 DW_TAG_member
	.byte	210                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa10:0x9 DW_TAG_member
	.byte	211                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa19:0x9 DW_TAG_member
	.byte	212                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa22:0x9 DW_TAG_member
	.byte	213                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa2b:0x9 DW_TAG_member
	.byte	214                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa34:0x9 DW_TAG_member
	.byte	215                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa3d:0x9 DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa46:0x9 DW_TAG_member
	.byte	217                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa4f:0x9 DW_TAG_member
	.byte	218                             # DW_AT_name
	.long	170                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa58:0x9 DW_TAG_member
	.byte	219                             # DW_AT_name
	.long	2802                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa61:0x9 DW_TAG_member
	.byte	221                             # DW_AT_name
	.long	2809                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa6a:0x9 DW_TAG_member
	.byte	222                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa73:0x9 DW_TAG_member
	.byte	223                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa7c:0x9 DW_TAG_member
	.byte	224                             # DW_AT_name
	.long	2814                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa85:0x9 DW_TAG_member
	.byte	226                             # DW_AT_name
	.long	2822                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa8e:0x9 DW_TAG_member
	.byte	228                             # DW_AT_name
	.long	2826                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa97:0x9 DW_TAG_member
	.byte	230                             # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xaa0:0x9 DW_TAG_member
	.byte	231                             # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xaa9:0x9 DW_TAG_member
	.byte	233                             # DW_AT_name
	.long	2851                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xab2:0x9 DW_TAG_member
	.byte	235                             # DW_AT_name
	.long	2859                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xabb:0x9 DW_TAG_member
	.byte	237                             # DW_AT_name
	.long	2866                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xac4:0x9 DW_TAG_member
	.byte	239                             # DW_AT_name
	.long	2809                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xacd:0x9 DW_TAG_member
	.byte	240                             # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xad6:0x9 DW_TAG_member
	.byte	241                             # DW_AT_name
	.long	2466                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xadf:0x9 DW_TAG_member
	.byte	242                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xae8:0x9 DW_TAG_member
	.byte	243                             # DW_AT_name
	.long	2873                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaf2:0x5 DW_TAG_pointer_type
	.long	2807                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0xaf7:0x2 DW_TAG_structure_type
	.byte	220                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0xaf9:0x5 DW_TAG_pointer_type
	.long	2535                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xafe:0x8 DW_TAG_typedef
	.long	576                             # DW_AT_type
	.byte	225                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb06:0x4 DW_TAG_base_type
	.byte	227                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xb0a:0x4 DW_TAG_base_type
	.byte	229                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xb0e:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb13:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb1a:0x5 DW_TAG_pointer_type
	.long	2847                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0xb1f:0x4 DW_TAG_typedef
	.byte	232                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb23:0x8 DW_TAG_typedef
	.long	576                             # DW_AT_type
	.byte	234                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xb2b:0x5 DW_TAG_pointer_type
	.long	2864                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0xb30:0x2 DW_TAG_structure_type
	.byte	236                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0xb32:0x5 DW_TAG_pointer_type
	.long	2871                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0xb37:0x2 DW_TAG_structure_type
	.byte	238                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	18                              # Abbrev [18] 0xb39:0xc DW_TAG_array_type
	.long	175                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb3e:0x6 DW_TAG_subrange_type
	.long	1835                            # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xb45:0x4b DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0xb54:0xa DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.short	262                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	184                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb5e:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	250                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	3025                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb67:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0xb70:0xd DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0xb72:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.short	263                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	2325                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xb7d:0x6 DW_TAG_call_site
	.long	2960                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xb83:0x6 DW_TAG_call_site
	.long	2985                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xb89:0x6 DW_TAG_call_site
	.long	2960                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xb90:0x19 DW_TAG_subprogram
	.byte	246                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	713                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xb99:0x5 DW_TAG_formal_parameter
	.long	2522                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb9e:0x5 DW_TAG_formal_parameter
	.long	576                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xba3:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xba9:0xf DW_TAG_subprogram
	.byte	247                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	718                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	576                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xbb2:0x5 DW_TAG_formal_parameter
	.long	2522                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xbb8:0x19 DW_TAG_subprogram
	.byte	248                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_inline
	.byte	40                              # Abbrev [40] 0xbc0:0x8 DW_TAG_formal_parameter
	.byte	249                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	440                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0xbc8:0x8 DW_TAG_formal_parameter
	.byte	250                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	3025                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xbd1:0x5 DW_TAG_pointer_type
	.long	3030                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbd6:0x8 DW_TAG_typedef
	.long	3038                            # DW_AT_type
	.byte	253                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xbde:0x29 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xbe2:0x9 DW_TAG_member
	.byte	251                             # DW_AT_name
	.long	2522                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xbeb:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xbf4:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xbfd:0x9 DW_TAG_member
	.byte	252                             # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xc07:0x6a DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0xc16:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	249                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	440                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0xc1f:0xa DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.short	262                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	184                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0xc29:0xa DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.short	264                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xc33:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	250                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	3025                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xc3c:0x1c DW_TAG_inlined_subroutine
	.long	3000                            # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp62-.Ltmp56                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	110                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0xc49:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	3008                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xc50:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	3016                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xc58:0x6 DW_TAG_call_site
	.long	2960                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xc5e:0x6 DW_TAG_call_site
	.long	3185                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xc64:0x6 DW_TAG_call_site
	.long	3185                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xc6a:0x6 DW_TAG_call_site
	.long	3185                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xc71:0x1e DW_TAG_subprogram
	.byte	254                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	675                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2341                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xc7a:0x5 DW_TAG_formal_parameter
	.long	3215                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc7f:0x5 DW_TAG_formal_parameter
	.long	2466                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc84:0x5 DW_TAG_formal_parameter
	.long	2466                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc89:0x5 DW_TAG_formal_parameter
	.long	3220                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xc8f:0x5 DW_TAG_restrict_type
	.long	192                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0xc94:0x5 DW_TAG_restrict_type
	.long	2522                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xc99:0x2f DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	196                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0xca8:0xa DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.short	262                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	184                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xcb2:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	250                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	3025                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0xcbb:0x6 DW_TAG_call_site
	.long	3272                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0xcc1:0x6 DW_TAG_call_site
	.long	3286                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xcc8:0xe DW_TAG_subprogram
	.byte	255                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xcd0:0x5 DW_TAG_formal_parameter
	.long	2522                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xcd6:0xc DW_TAG_subprogram
	.short	256                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xcdc:0x5 DW_TAG_formal_parameter
	.long	192                             # DW_AT_type
	.byte	0                               # End Of Children Mark
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
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	1064                            # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/input/yuv.c"          # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=126
.Linfo_string3:
	.asciz	"yuv_input"                     # string offset=160
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
	.asciz	"malloc"                        # string offset=2485
.Linfo_string202:
	.asciz	"size_t"                        # string offset=2492
.Linfo_string203:
	.asciz	"__isoc99_sscanf"               # string offset=2499
.Linfo_string204:
	.asciz	"sscanf"                        # string offset=2515
.Linfo_string205:
	.asciz	"fopen64"                       # string offset=2522
.Linfo_string206:
	.asciz	"fopen"                         # string offset=2530
.Linfo_string207:
	.asciz	"_flags"                        # string offset=2536
.Linfo_string208:
	.asciz	"_IO_read_ptr"                  # string offset=2543
.Linfo_string209:
	.asciz	"_IO_read_end"                  # string offset=2556
.Linfo_string210:
	.asciz	"_IO_read_base"                 # string offset=2569
.Linfo_string211:
	.asciz	"_IO_write_base"                # string offset=2583
.Linfo_string212:
	.asciz	"_IO_write_ptr"                 # string offset=2598
.Linfo_string213:
	.asciz	"_IO_write_end"                 # string offset=2612
.Linfo_string214:
	.asciz	"_IO_buf_base"                  # string offset=2626
.Linfo_string215:
	.asciz	"_IO_buf_end"                   # string offset=2639
.Linfo_string216:
	.asciz	"_IO_save_base"                 # string offset=2651
.Linfo_string217:
	.asciz	"_IO_backup_base"               # string offset=2665
.Linfo_string218:
	.asciz	"_IO_save_end"                  # string offset=2681
.Linfo_string219:
	.asciz	"_markers"                      # string offset=2694
.Linfo_string220:
	.asciz	"_IO_marker"                    # string offset=2703
.Linfo_string221:
	.asciz	"_chain"                        # string offset=2714
.Linfo_string222:
	.asciz	"_fileno"                       # string offset=2721
.Linfo_string223:
	.asciz	"_flags2"                       # string offset=2729
.Linfo_string224:
	.asciz	"_old_offset"                   # string offset=2737
.Linfo_string225:
	.asciz	"__off_t"                       # string offset=2749
.Linfo_string226:
	.asciz	"_cur_column"                   # string offset=2757
.Linfo_string227:
	.asciz	"unsigned short"                # string offset=2769
.Linfo_string228:
	.asciz	"_vtable_offset"                # string offset=2784
.Linfo_string229:
	.asciz	"signed char"                   # string offset=2799
.Linfo_string230:
	.asciz	"_shortbuf"                     # string offset=2811
.Linfo_string231:
	.asciz	"_lock"                         # string offset=2821
.Linfo_string232:
	.asciz	"_IO_lock_t"                    # string offset=2827
.Linfo_string233:
	.asciz	"_offset"                       # string offset=2838
.Linfo_string234:
	.asciz	"__off64_t"                     # string offset=2846
.Linfo_string235:
	.asciz	"_codecvt"                      # string offset=2856
.Linfo_string236:
	.asciz	"_IO_codecvt"                   # string offset=2865
.Linfo_string237:
	.asciz	"_wide_data"                    # string offset=2877
.Linfo_string238:
	.asciz	"_IO_wide_data"                 # string offset=2888
.Linfo_string239:
	.asciz	"_freeres_list"                 # string offset=2902
.Linfo_string240:
	.asciz	"_freeres_buf"                  # string offset=2916
.Linfo_string241:
	.asciz	"__pad5"                        # string offset=2929
.Linfo_string242:
	.asciz	"_mode"                         # string offset=2936
.Linfo_string243:
	.asciz	"_unused2"                      # string offset=2942
.Linfo_string244:
	.asciz	"_IO_FILE"                      # string offset=2951
.Linfo_string245:
	.asciz	"FILE"                          # string offset=2960
.Linfo_string246:
	.asciz	"fseek"                         # string offset=2965
.Linfo_string247:
	.asciz	"ftell"                         # string offset=2971
.Linfo_string248:
	.asciz	"read_frame_internal"           # string offset=2977
.Linfo_string249:
	.asciz	"p_pic"                         # string offset=2997
.Linfo_string250:
	.asciz	"h"                             # string offset=3003
.Linfo_string251:
	.asciz	"fh"                            # string offset=3005
.Linfo_string252:
	.asciz	"next_frame"                    # string offset=3008
.Linfo_string253:
	.asciz	"yuv_hnd_t"                     # string offset=3019
.Linfo_string254:
	.asciz	"fread"                         # string offset=3029
.Linfo_string255:
	.asciz	"fclose"                        # string offset=3035
.Linfo_string256:
	.asciz	"free"                          # string offset=3042
.Linfo_string257:
	.asciz	"psz_filename"                  # string offset=3047
.Linfo_string258:
	.asciz	"p_handle"                      # string offset=3060
.Linfo_string259:
	.asciz	"info"                          # string offset=3069
.Linfo_string260:
	.asciz	"opt"                           # string offset=3074
.Linfo_string261:
	.asciz	"p"                             # string offset=3078
.Linfo_string262:
	.asciz	"handle"                        # string offset=3080
.Linfo_string263:
	.asciz	"i_size"                        # string offset=3087
.Linfo_string264:
	.asciz	"i_frame"                       # string offset=3094
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	yuv_input
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.3
	.quad	.Lfunc_begin0
	.quad	.Ltmp24
	.quad	.Ltmp2
	.quad	.Ltmp10
	.quad	.Ltmp17
	.quad	.Ltmp31
	.quad	.Lfunc_begin1
	.quad	.Ltmp39
	.quad	.Ltmp40
	.quad	.Ltmp42
	.quad	.Lfunc_begin2
	.quad	.Ltmp56
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp61
	.quad	.Lfunc_begin3
	.quad	.Ltmp73
	.quad	.Ltmp74
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
