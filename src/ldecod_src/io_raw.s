	.text
	.file	"io_raw.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/io_raw.c" md5 0x36ae9613fb3de4b8404ec72cc3e3c4c4
	.file	1 "ldecod_src/inc" "frame.h" md5 0xfd6ca9e1c707932f749220576db72b57
	.file	2 "ldecod_src/inc" "io_video.h" md5 0x1141c07f1801ad27d87214c419749431
	.globl	ReadFrameConcatenated           # -- Begin function ReadFrameConcatenated
	.p2align	4, 0x90
	.type	ReadFrameConcatenated,@function
ReadFrameConcatenated:                  # @ReadFrameConcatenated
.Lfunc_begin0:
	.loc	0 91 0                          # ldecod_src/io_raw.c:91:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r8
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $r9
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
	movq	%r9, %rbx
	movq	%r8, %r14
	movl	%edx, %r15d
	movq	%rdi, %r12
.Ltmp0:
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- undef
	#DEBUG_VALUE: ReadFrameConcatenated:symbol_size_in_bytes <- undef
	#DEBUG_VALUE: ReadFrameConcatenated:bytes_y <- undef
	.loc	0 97 24 prologue_end            # ldecod_src/io_raw.c:97:24
	movl	76(%r8), %eax
	.loc	0 99 47                         # ldecod_src/io_raw.c:99:47
	addl	%eax, %eax
	addl	72(%r8), %eax
	.loc	0 99 44 is_stmt 0               # ldecod_src/io_raw.c:99:44
	imull	128(%r8), %eax
	.loc	0 93 27 is_stmt 1               # ldecod_src/io_raw.c:93:27
	movl	768(%rsi), %ebp
.Ltmp1:
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	.loc	0 99 36                         # ldecod_src/io_raw.c:99:36
	cltq
.Ltmp2:
	#DEBUG_VALUE: ReadFrameConcatenated:framesize_in_bytes <- $rax
	.loc	0 102 21                        # ldecod_src/io_raw.c:102:21
	movslq	%ecx, %rcx
.Ltmp3:
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 102 79 is_stmt 0              # ldecod_src/io_raw.c:102:79
	movslq	3992(%rdi), %rdx
.Ltmp4:
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- $r15d
	.loc	0 102 70                        # ldecod_src/io_raw.c:102:70
	movslq	%r15d, %rsi
.Ltmp5:
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	addq	%rdx, %rsi
	.loc	0 102 53                        # ldecod_src/io_raw.c:102:53
	imulq	%rax, %rsi
	.loc	0 102 32                        # ldecod_src/io_raw.c:102:32
	addq	%rcx, %rsi
	.loc	0 102 7                         # ldecod_src/io_raw.c:102:7
	movl	%ebp, %edi
.Ltmp6:
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- $r12
	xorl	%edx, %edx
	callq	lseek@PLT
.Ltmp7:
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	.loc	0 102 103                       # ldecod_src/io_raw.c:102:103
	cmpq	$-1, %rax
.Ltmp8:
	.loc	0 102 7                         # ldecod_src/io_raw.c:102:7
	jne	.LBB0_2
.Ltmp9:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- $r12
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- $r15d
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	.loc	0 104 132 is_stmt 1             # ldecod_src/io_raw.c:104:132
	addl	3992(%r12), %r15d
.Ltmp10:
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 104 5 is_stmt 0               # ldecod_src/io_raw.c:104:5
	movq	errortext@GOTPCREL(%rip), %r12
.Ltmp11:
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp12:
	.loc	0 105 5 is_stmt 1               # ldecod_src/io_raw.c:105:5
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	error@PLT
.Ltmp13:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	.loc	0 109 46                        # ldecod_src/io_raw.c:109:46
	testb	$7, 124(%r14)
.Ltmp14:
	.loc	0 109 7 is_stmt 0               # ldecod_src/io_raw.c:109:7
	jne	.LBB0_19
.Ltmp15:
# %bb.3:                                # %if.then16
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:buf <- $rbx
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- undef
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 28 17 is_stmt 1               # ldecod_src/io_raw.c:28:17
	cmpl	$0, 28(%r14)
.Ltmp16:
	.loc	0 28 3 is_stmt 0                # ldecod_src/io_raw.c:28:3
	jle	.LBB0_7
.Ltmp17:
# %bb.4:                                # %for.body.lr.ph.i
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:buf <- $rbx
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 26 0 is_stmt 1                # ldecod_src/io_raw.c:26:0
	leaq	16(%r14), %r13
	.loc	0 26 50 is_stmt 0               # ldecod_src/io_raw.c:26:50
	movslq	16(%r14), %rax
	.loc	0 26 27                         # ldecod_src/io_raw.c:26:27
	movslq	128(%r14), %r15
.Ltmp18:
	#DEBUG_VALUE: ReadData:read_size <- undef
	.loc	0 26 48                         # ldecod_src/io_raw.c:26:48
	imulq	%rax, %r15
.Ltmp19:
	#DEBUG_VALUE: ReadData:read_size <- $r15
	.loc	0 0 48                          # ldecod_src/io_raw.c:0:48
	xorl	%r12d, %r12d
.Ltmp20:
	.p2align	4, 0x90
.LBB0_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r15
	#DEBUG_VALUE: ReadData:i <- $r12d
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 30 9 is_stmt 1                # ldecod_src/io_raw.c:30:9
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	read@PLT
.Ltmp21:
	.loc	0 30 41 is_stmt 0               # ldecod_src/io_raw.c:30:41
	cmpq	%r15, %rax
.Ltmp22:
	.loc	0 30 9                          # ldecod_src/io_raw.c:30:9
	jne	.LBB0_12
.Ltmp23:
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r15
	#DEBUG_VALUE: ReadData:i <- $r12d
	.loc	0 35 13 is_stmt 1               # ldecod_src/io_raw.c:35:13
	addq	%r15, %rbx
.Ltmp24:
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 28 39                         # ldecod_src/io_raw.c:28:39
	incl	%r12d
.Ltmp25:
	#DEBUG_VALUE: ReadData:i <- $r12d
	.loc	0 28 17 is_stmt 0               # ldecod_src/io_raw.c:28:17
	cmpl	28(%r14), %r12d
.Ltmp26:
	.loc	0 28 3                          # ldecod_src/io_raw.c:28:3
	jl	.LBB0_5
.Ltmp27:
.LBB0_7:                                # %for.end.i
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 0 3                           # ldecod_src/io_raw.c:0:3
	movl	$1, %r15d
.Ltmp28:
	.loc	0 38 26 is_stmt 1               # ldecod_src/io_raw.c:38:26
	cmpl	$0, (%r14)
.Ltmp29:
	.loc	0 38 7 is_stmt 0                # ldecod_src/io_raw.c:38:7
	je	.LBB0_18
.Ltmp30:
# %bb.8:                                # %if.then10.i
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- undef
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 43 21 is_stmt 1               # ldecod_src/io_raw.c:43:21
	cmpl	$0, 32(%r14)
	jle	.LBB0_18
.Ltmp31:
# %bb.9:                                # %for.body24.i.preheader
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:j <- 0
	.loc	0 0 21 is_stmt 0                # ldecod_src/io_raw.c:0:21
	movslq	128(%r14), %rax
	leaq	20(%r14), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movslq	20(%r14), %r12
	imulq	%rax, %r12
.Ltmp32:
	#DEBUG_VALUE: ReadData:read_size <- $r12
	xorl	%r13d, %r13d
.Ltmp33:
	.p2align	4, 0x90
.LBB0_10:                               # %for.body24.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 45 13 is_stmt 1               # ldecod_src/io_raw.c:45:13
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	read@PLT
.Ltmp34:
	.loc	0 45 45 is_stmt 0               # ldecod_src/io_raw.c:45:45
	cmpq	%r12, %rax
.Ltmp35:
	.loc	0 45 13                         # ldecod_src/io_raw.c:45:13
	jne	.LBB0_11
.Ltmp36:
# %bb.13:                               # %if.end34.i
                                        #   in Loop: Header=BB0_10 Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 0
	.loc	0 50 17 is_stmt 1               # ldecod_src/io_raw.c:50:17
	addq	%r12, %rbx
.Ltmp37:
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 43 43                         # ldecod_src/io_raw.c:43:43
	incl	%r13d
.Ltmp38:
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 43 23 is_stmt 0               # ldecod_src/io_raw.c:43:23
	movl	32(%r14), %eax
	.loc	0 43 21                         # ldecod_src/io_raw.c:43:21
	cmpl	%eax, %r13d
.Ltmp39:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jl	.LBB0_10
.Ltmp40:
# %bb.14:                               # %for.inc40.i
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:j <- 1
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 43 21                         # ldecod_src/io_raw.c:43:21
	testl	%eax, %eax
.Ltmp41:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jle	.LBB0_18
.Ltmp42:
# %bb.15:                               # %for.body24.1.i.preheader
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- 0
	#DEBUG_VALUE: ReadData:j <- 1
	.loc	0 0 7                           # ldecod_src/io_raw.c:0:7
	xorl	%r13d, %r13d
.Ltmp43:
	.p2align	4, 0x90
.LBB0_16:                               # %for.body24.1.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:j <- 1
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 45 13 is_stmt 1               # ldecod_src/io_raw.c:45:13
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	read@PLT
.Ltmp44:
	.loc	0 45 45 is_stmt 0               # ldecod_src/io_raw.c:45:45
	cmpq	%r12, %rax
.Ltmp45:
	.loc	0 45 13                         # ldecod_src/io_raw.c:45:13
	jne	.LBB0_11
.Ltmp46:
# %bb.17:                               # %if.end34.1.i
                                        #   in Loop: Header=BB0_16 Depth=1
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 1
	.loc	0 50 17 is_stmt 1               # ldecod_src/io_raw.c:50:17
	addq	%r12, %rbx
.Ltmp47:
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	.loc	0 43 43                         # ldecod_src/io_raw.c:43:43
	incl	%r13d
.Ltmp48:
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 43 21 is_stmt 0               # ldecod_src/io_raw.c:43:21
	cmpl	32(%r14), %r13d
.Ltmp49:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jl	.LBB0_16
	jmp	.LBB0_18
.Ltmp50:
.LBB0_11:
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 0 7                           # ldecod_src/io_raw.c:0:7
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp51:
.LBB0_12:                               # %cleanup.sink.split.i
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadData:vfile <- $ebp
	#DEBUG_VALUE: ReadData:source <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $rbx
	movl	(%r13), %esi
	xorl	%r15d, %r15d
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp52:
.LBB0_18:                               # %ReadData.exit
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- $r15d
	.loc	0 122 3 is_stmt 1               # ldecod_src/io_raw.c:122:3
	movl	%r15d, %eax
	.loc	0 122 3 epilogue_begin is_stmt 0 # ldecod_src/io_raw.c:122:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp53:
	#DEBUG_VALUE: ReadFrameConcatenated:source <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp54:
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- $eax
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 8
	retq
.Ltmp56:
.LBB0_19:                               # %if.else
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: ReadFrameConcatenated:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameConcatenated:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameConcatenated:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameConcatenated:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameConcatenated:source <- $r14
	#DEBUG_VALUE: ReadFrameConcatenated:buf <- $rbx
	#DEBUG_VALUE: ReadFrameConcatenated:file_read <- 0
	#DEBUG_VALUE: ReadFrameConcatenated:vfile <- $ebp
	.loc	0 119 5 is_stmt 1               # ldecod_src/io_raw.c:119:5
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp57:
	.loc	0 120 5                         # ldecod_src/io_raw.c:120:5
	movl	$-1, %edi
	callq	exit@PLT
.Ltmp58:
.Lfunc_end0:
	.size	ReadFrameConcatenated, .Lfunc_end0-ReadFrameConcatenated
	.cfi_endproc
	.file	3 "/usr/include" "unistd.h" md5 0xed37c2e6f30ba31a8b41e4d70547c39c
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	7 "ldecod_src/inc" "global.h" md5 0xc4ca3c417c5616a2ff6b6266e7376fc1
	.file	8 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	ReadFrameSeparate               # -- Begin function ReadFrameSeparate
	.p2align	4, 0x90
	.type	ReadFrameSeparate,@function
ReadFrameSeparate:                      # @ReadFrameSeparate
.Lfunc_begin1:
	.loc	0 144 0                         # ldecod_src/io_raw.c:144:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r8
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r9
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
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %ebp
.Ltmp59:
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	.loc	0 146 27 prologue_end           # ldecod_src/io_raw.c:146:27
	movl	768(%rsi), %ebx
.Ltmp60:
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 148 44                        # ldecod_src/io_raw.c:148:44
	addl	3992(%rdi), %edx
.Ltmp61:
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 148 3 is_stmt 0               # ldecod_src/io_raw.c:148:3
	movq	%rsi, %rdi
.Ltmp62:
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	movl	%edx, %esi
.Ltmp63:
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- $rdi
	callq	OpenFrameFile@PLT
.Ltmp64:
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 151 21 is_stmt 1              # ldecod_src/io_raw.c:151:21
	movslq	%ebp, %r12
	.loc	0 151 7 is_stmt 0               # ldecod_src/io_raw.c:151:7
	movl	%ebx, %edi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lseek@PLT
.Ltmp65:
	.loc	0 151 43                        # ldecod_src/io_raw.c:151:43
	cmpq	%r12, %rax
.Ltmp66:
	.loc	0 151 7                         # ldecod_src/io_raw.c:151:7
	je	.LBB1_2
.Ltmp67:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 153 5 is_stmt 1               # ldecod_src/io_raw.c:153:5
	movl	$.L.str.2, %edi
	movl	$-1, %esi
	callq	error@PLT
.Ltmp68:
.LBB1_2:                                # %if.end
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 157 46                        # ldecod_src/io_raw.c:157:46
	testb	$7, 124(%r15)
.Ltmp69:
	.loc	0 157 7 is_stmt 0               # ldecod_src/io_raw.c:157:7
	jne	.LBB1_21
.Ltmp70:
# %bb.3:                                # %if.then5
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:buf <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- undef
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 28 17 is_stmt 1               # ldecod_src/io_raw.c:28:17
	cmpl	$0, 28(%r15)
.Ltmp71:
	.loc	0 28 3 is_stmt 0                # ldecod_src/io_raw.c:28:3
	jle	.LBB1_7
.Ltmp72:
# %bb.4:                                # %for.body.lr.ph.i
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:buf <- $r14
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 26 0 is_stmt 1                # ldecod_src/io_raw.c:26:0
	leaq	16(%r15), %r13
	.loc	0 26 50 is_stmt 0               # ldecod_src/io_raw.c:26:50
	movslq	16(%r15), %rax
	.loc	0 26 27                         # ldecod_src/io_raw.c:26:27
	movslq	128(%r15), %r12
.Ltmp73:
	#DEBUG_VALUE: ReadData:read_size <- undef
	.loc	0 26 48                         # ldecod_src/io_raw.c:26:48
	imulq	%rax, %r12
.Ltmp74:
	#DEBUG_VALUE: ReadData:read_size <- $r12
	.loc	0 0 48                          # ldecod_src/io_raw.c:0:48
	xorl	%ebp, %ebp
.Ltmp75:
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	.p2align	4, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $ebp
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 30 9 is_stmt 1                # ldecod_src/io_raw.c:30:9
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
.Ltmp76:
	.loc	0 30 41 is_stmt 0               # ldecod_src/io_raw.c:30:41
	cmpq	%r12, %rax
.Ltmp77:
	.loc	0 30 9                          # ldecod_src/io_raw.c:30:9
	jne	.LBB1_12
.Ltmp78:
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $ebp
	.loc	0 35 13 is_stmt 1               # ldecod_src/io_raw.c:35:13
	addq	%r12, %r14
.Ltmp79:
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 28 39                         # ldecod_src/io_raw.c:28:39
	incl	%ebp
.Ltmp80:
	#DEBUG_VALUE: ReadData:i <- $ebp
	.loc	0 28 17 is_stmt 0               # ldecod_src/io_raw.c:28:17
	cmpl	28(%r15), %ebp
.Ltmp81:
	.loc	0 28 3                          # ldecod_src/io_raw.c:28:3
	jl	.LBB1_5
.Ltmp82:
.LBB1_7:                                # %for.end.i
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 0 3                           # ldecod_src/io_raw.c:0:3
	movl	$1, %ebp
.Ltmp83:
	.loc	0 38 26 is_stmt 1               # ldecod_src/io_raw.c:38:26
	cmpl	$0, (%r15)
.Ltmp84:
	.loc	0 38 7 is_stmt 0                # ldecod_src/io_raw.c:38:7
	je	.LBB1_18
.Ltmp85:
# %bb.8:                                # %if.then10.i
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- undef
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 43 21 is_stmt 1               # ldecod_src/io_raw.c:43:21
	cmpl	$0, 32(%r15)
	jle	.LBB1_18
.Ltmp86:
# %bb.9:                                # %for.body24.i.preheader
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:j <- 0
	.loc	0 0 21 is_stmt 0                # ldecod_src/io_raw.c:0:21
	movslq	128(%r15), %rax
	leaq	20(%r15), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movslq	20(%r15), %r12
	imulq	%rax, %r12
.Ltmp87:
	#DEBUG_VALUE: ReadData:read_size <- $r12
	xorl	%r13d, %r13d
.Ltmp88:
	.p2align	4, 0x90
.LBB1_10:                               # %for.body24.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 45 13 is_stmt 1               # ldecod_src/io_raw.c:45:13
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
.Ltmp89:
	.loc	0 45 45 is_stmt 0               # ldecod_src/io_raw.c:45:45
	cmpq	%r12, %rax
.Ltmp90:
	.loc	0 45 13                         # ldecod_src/io_raw.c:45:13
	jne	.LBB1_11
.Ltmp91:
# %bb.13:                               # %if.end34.i
                                        #   in Loop: Header=BB1_10 Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 0
	.loc	0 50 17 is_stmt 1               # ldecod_src/io_raw.c:50:17
	addq	%r12, %r14
.Ltmp92:
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 43 43                         # ldecod_src/io_raw.c:43:43
	incl	%r13d
.Ltmp93:
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 43 23 is_stmt 0               # ldecod_src/io_raw.c:43:23
	movl	32(%r15), %eax
	.loc	0 43 21                         # ldecod_src/io_raw.c:43:21
	cmpl	%eax, %r13d
.Ltmp94:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jl	.LBB1_10
.Ltmp95:
# %bb.14:                               # %for.inc40.i
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 0
	#DEBUG_VALUE: ReadData:j <- 1
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:i <- 0
	.loc	0 43 21                         # ldecod_src/io_raw.c:43:21
	testl	%eax, %eax
.Ltmp96:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jle	.LBB1_18
.Ltmp97:
# %bb.15:                               # %for.body24.1.i.preheader
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- 0
	#DEBUG_VALUE: ReadData:j <- 1
	.loc	0 0 7                           # ldecod_src/io_raw.c:0:7
	xorl	%r13d, %r13d
.Ltmp98:
	.p2align	4, 0x90
.LBB1_16:                               # %for.body24.1.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:j <- 1
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 45 13 is_stmt 1               # ldecod_src/io_raw.c:45:13
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
.Ltmp99:
	.loc	0 45 45 is_stmt 0               # ldecod_src/io_raw.c:45:45
	cmpq	%r12, %rax
.Ltmp100:
	.loc	0 45 13                         # ldecod_src/io_raw.c:45:13
	jne	.LBB1_11
.Ltmp101:
# %bb.17:                               # %if.end34.1.i
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	#DEBUG_VALUE: ReadData:j <- 1
	.loc	0 50 17 is_stmt 1               # ldecod_src/io_raw.c:50:17
	addq	%r12, %r14
.Ltmp102:
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	.loc	0 43 43                         # ldecod_src/io_raw.c:43:43
	incl	%r13d
.Ltmp103:
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 43 21 is_stmt 0               # ldecod_src/io_raw.c:43:21
	cmpl	32(%r15), %r13d
.Ltmp104:
	.loc	0 43 7                          # ldecod_src/io_raw.c:43:7
	jl	.LBB1_16
	jmp	.LBB1_18
.Ltmp105:
.LBB1_11:
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	#DEBUG_VALUE: ReadData:i <- $r13d
	.loc	0 0 7                           # ldecod_src/io_raw.c:0:7
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp106:
.LBB1_12:                               # %cleanup.sink.split.i
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadData:vfile <- $ebx
	#DEBUG_VALUE: ReadData:source <- $r15
	#DEBUG_VALUE: ReadData:cur_buf <- $r14
	#DEBUG_VALUE: ReadData:read_size <- $r12
	movl	(%r13), %esi
	xorl	%ebp, %ebp
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp107:
.LBB1_18:                               # %ReadData.exit
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- $ebp
	.loc	0 177 13 is_stmt 1              # ldecod_src/io_raw.c:177:13
	cmpl	$-1, %ebx
.Ltmp108:
	.loc	0 177 7 is_stmt 0               # ldecod_src/io_raw.c:177:7
	je	.LBB1_20
.Ltmp109:
# %bb.19:                               # %if.then11
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 178 5 is_stmt 1               # ldecod_src/io_raw.c:178:5
	movl	%ebx, %edi
	callq	close@PLT
.Ltmp110:
.LBB1_20:                               # %if.end13
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 180 3                         # ldecod_src/io_raw.c:180:3
	movl	%ebp, %eax
	.loc	0 180 3 epilogue_begin is_stmt 0 # ldecod_src/io_raw.c:180:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp112:
	#DEBUG_VALUE: ReadFrameSeparate:source <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp113:
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- $eax
	.cfi_def_cfa_offset 8
	retq
.Ltmp114:
.LBB1_21:                               # %if.else
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: ReadFrameSeparate:p_Inp <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: ReadFrameSeparate:input_file <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ReadFrameSeparate:FrameNoInFile <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: ReadFrameSeparate:HeaderSize <- $ebp
	#DEBUG_VALUE: ReadFrameSeparate:source <- $r15
	#DEBUG_VALUE: ReadFrameSeparate:buf <- $r14
	#DEBUG_VALUE: ReadFrameSeparate:file_read <- 0
	#DEBUG_VALUE: ReadFrameSeparate:vfile <- $ebx
	.loc	0 173 5 is_stmt 1               # ldecod_src/io_raw.c:173:5
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp115:
	.loc	0 174 5                         # ldecod_src/io_raw.c:174:5
	movl	$-1, %edi
	callq	exit@PLT
.Ltmp116:
.Lfunc_end1:
	.size	ReadFrameSeparate, .Lfunc_end1-ReadFrameSeparate
	.cfi_endproc
	.file	9 "ldecod_src/inc" "img_io.h" md5 0xd16ea1a329b4cde317d55babdc8e5b45
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read_one_frame: cannot advance file pointer in input file beyond frame %d\n"
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8"
	.size	.L.str.1, 77

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"read_one_frame: cannot fseek to (Header size) in input file"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8"
	.size	.L.str.3, 79

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\n"
	.size	.L.str.4, 71

	.file	10 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	11 "ldecod_src/inc" "win32.h" md5 0x100def0ffeee72ecdc377183538a04bb
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
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
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.ascii	"\207\001"                      # DW_AT_noreturn
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x6d6 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	75                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3d:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x41:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x45:0xa DW_TAG_variable
	.long	79                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	77                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5b:0xa DW_TAG_variable
	.long	101                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x65:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	60                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xa DW_TAG_variable
	.long	123                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               # Abbrev [3] 0x7b:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x80:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	79                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x87:0xa DW_TAG_variable
	.long	145                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               # Abbrev [3] 0x91:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x96:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	71                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9d:0x18 DW_TAG_enumeration_type
	.long	181                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa5:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xa8:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xab:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xae:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xb1:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb5:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xb9:0x15 DW_TAG_enumeration_type
	.long	181                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc1:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xc4:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xc7:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xca:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xce:0x1b DW_TAG_enumeration_type
	.long	181                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xd6:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xd9:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xdc:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xdf:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xe2:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xe5:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe9:0x41 DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_inline
	.byte	10                              # Abbrev [10] 0xf1:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xf9:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x101:0x8 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	529                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x109:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	529                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x111:0x8 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x119:0x8 DW_TAG_variable
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x121:0x8 DW_TAG_variable
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x12f:0x8 DW_TAG_typedef
	.long	311                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x137:0xba DW_TAG_structure_type
	.byte	47                              # DW_AT_name
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x13c:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x145:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x14e:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x157:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x160:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x169:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x172:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x17b:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x184:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x18d:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x196:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x19f:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1a8:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1b1:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1ba:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1c3:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1cc:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1d5:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	517                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1de:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1e7:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1f1:0x8 DW_TAG_typedef
	.long	157                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1f9:0x8 DW_TAG_typedef
	.long	185                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x201:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x205:0xc DW_TAG_array_type
	.long	181                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x20a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x211:0x5 DW_TAG_pointer_type
	.long	534                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x216:0x4 DW_TAG_base_type
	.byte	50                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x21a:0xea DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x229:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1417                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x232:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1179                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x23b:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x244:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24d:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x256:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	529                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x25f:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x268:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x271:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	1723                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x27a:0x8 DW_TAG_variable
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	1752                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x282:0x8 DW_TAG_variable
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	1756                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x28a:0x8 DW_TAG_variable
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	1756                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x292:0x3b DW_TAG_inlined_subroutine
	.long	233                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp52-.Ltmp15                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	112                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x29f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	241                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x2a6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	249                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x2ad:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x2b3:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	265                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x2ba:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	273                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x2c0:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	281                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x2c6:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	289                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x2cd:0x6 DW_TAG_call_site
	.long	772                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2d3:0x6 DW_TAG_call_site
	.long	809                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2d9:0x6 DW_TAG_call_site
	.long	872                             # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2df:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2e5:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2eb:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2f1:0x6 DW_TAG_call_site
	.long	930                             # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2f7:0x6 DW_TAG_call_site
	.long	930                             # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x2fd:0x6 DW_TAG_call_site
	.long	946                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x304:0x19 DW_TAG_subprogram
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	797                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x30d:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x312:0x5 DW_TAG_formal_parameter
	.long	797                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x317:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x31d:0x8 DW_TAG_typedef
	.long	805                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x325:0x4 DW_TAG_base_type
	.byte	56                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x329:0x1a DW_TAG_subprogram
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	378                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x332:0x5 DW_TAG_formal_parameter
	.long	835                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x337:0x5 DW_TAG_formal_parameter
	.long	845                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x33c:0x5 DW_TAG_formal_parameter
	.long	857                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x341:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x343:0x5 DW_TAG_restrict_type
	.long	840                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x348:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x34d:0x8 DW_TAG_typedef
	.long	853                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x355:0x4 DW_TAG_base_type
	.byte	59                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	28                              # Abbrev [28] 0x359:0x5 DW_TAG_restrict_type
	.long	862                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x35e:0x5 DW_TAG_pointer_type
	.long	867                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x363:0x5 DW_TAG_const_type
	.long	61                              # DW_AT_type
	.byte	30                              # Abbrev [30] 0x368:0x10 DW_TAG_subprogram
	.byte	61                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	940                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x36d:0x5 DW_TAG_formal_parameter
	.long	840                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x372:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x378:0x19 DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	371                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	913                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x381:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x386:0x5 DW_TAG_formal_parameter
	.long	929                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x38b:0x5 DW_TAG_formal_parameter
	.long	845                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x391:0x8 DW_TAG_typedef
	.long	921                             # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x399:0x8 DW_TAG_typedef
	.long	805                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x3a1:0x1 DW_TAG_pointer_type
	.byte	25                              # Abbrev [25] 0x3a2:0x10 DW_TAG_subprogram
	.byte	65                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x3ab:0x5 DW_TAG_formal_parameter
	.long	857                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3b0:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x3b2:0xb DW_TAG_subprogram
	.byte	66                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	624                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	26                              # Abbrev [26] 0x3b7:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x3bd:0xcf DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x3cc:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	1417                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3d5:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	1179                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3de:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3e7:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3f0:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3f9:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	529                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x402:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x40b:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x414:0x3b DW_TAG_inlined_subroutine
	.long	233                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp107-.Ltmp70                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	160                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x421:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	241                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x428:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	249                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x42f:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x435:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	94
	.long	265                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x43c:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	273                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x442:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	281                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x448:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	289                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x44f:0x6 DW_TAG_call_site
	.long	1164                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x455:0x6 DW_TAG_call_site
	.long	772                             # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x45b:0x6 DW_TAG_call_site
	.long	872                             # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x461:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x467:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x46d:0x6 DW_TAG_call_site
	.long	888                             # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x473:0x6 DW_TAG_call_site
	.long	930                             # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x479:0x6 DW_TAG_call_site
	.long	1402                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x47f:0x6 DW_TAG_call_site
	.long	930                             # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x485:0x6 DW_TAG_call_site
	.long	946                             # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x48c:0xf DW_TAG_subprogram
	.byte	67                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x490:0x5 DW_TAG_formal_parameter
	.long	1179                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x495:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x49b:0x5 DW_TAG_pointer_type
	.long	1184                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4a0:0x8 DW_TAG_typedef
	.long	1192                            # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x4a8:0xb9 DW_TAG_structure_type
	.byte	87                              # DW_AT_name
	.short	968                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x4ae:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x4b7:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4c0:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4ca:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4d4:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1389                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4de:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4e8:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4f2:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x4fc:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x506:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x510:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x51a:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x524:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x52e:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x538:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x542:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.short	948                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x54c:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.short	952                             # DW_AT_data_member_location
	.byte	35                              # Abbrev [35] 0x556:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1397                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.short	960                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x561:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x566:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	255                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x56d:0x8 DW_TAG_typedef
	.long	206                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x575:0x5 DW_TAG_pointer_type
	.long	181                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x57a:0xf DW_TAG_subprogram
	.byte	89                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x583:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x589:0x5 DW_TAG_pointer_type
	.long	1422                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x58e:0x9 DW_TAG_typedef
	.long	1431                            # DW_AT_type
	.byte	118                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	900                             # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0x597:0x124 DW_TAG_structure_type
	.byte	117                             # DW_AT_name
	.short	4016                            # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.short	850                             # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x59e:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	852                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5a8:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	853                             # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5b2:0xb DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1377                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	854                             # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5bd:0xb DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	856                             # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5c8:0xb DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	857                             # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5d3:0xb DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	858                             # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5de:0xb DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	859                             # DW_AT_decl_line
	.short	780                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5e9:0xb DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	860                             # DW_AT_decl_line
	.short	784                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5f4:0xb DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	861                             # DW_AT_decl_line
	.short	788                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x5ff:0xb DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	864                             # DW_AT_decl_line
	.short	792                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x60a:0xb DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	865                             # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x615:0xb DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	867                             # DW_AT_decl_line
	.short	1064                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x620:0xb DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	868                             # DW_AT_decl_line
	.short	1068                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x62b:0xb DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1184                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	869                             # DW_AT_decl_line
	.short	1072                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x636:0xb DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1184                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	870                             # DW_AT_decl_line
	.short	2040                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x641:0xb DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1184                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	871                             # DW_AT_decl_line
	.short	3008                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x64c:0xb DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	873                             # DW_AT_decl_line
	.short	3976                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x657:0xb DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	884                             # DW_AT_decl_line
	.short	3980                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x662:0xb DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	885                             # DW_AT_decl_line
	.short	3984                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x66d:0xb DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	886                             # DW_AT_decl_line
	.short	3988                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x678:0xb DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	890                             # DW_AT_decl_line
	.short	3992                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x683:0xb DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	893                             # DW_AT_decl_line
	.short	3996                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x68e:0xb DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	894                             # DW_AT_decl_line
	.short	4000                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x699:0xb DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	895                             # DW_AT_decl_line
	.short	4004                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x6a4:0xb DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	897                             # DW_AT_decl_line
	.short	4008                            # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x6af:0xb DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	181                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.short	899                             # DW_AT_decl_line
	.short	4012                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6bb:0x5 DW_TAG_const_type
	.long	1728                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6c0:0x8 DW_TAG_typedef
	.long	1736                            # DW_AT_type
	.byte	126                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6c8:0x8 DW_TAG_typedef
	.long	1744                            # DW_AT_type
	.byte	125                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6d0:0x8 DW_TAG_typedef
	.long	805                             # DW_AT_type
	.byte	124                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6d8:0x4 DW_TAG_base_type
	.byte	128                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	29                              # Abbrev [29] 0x6dc:0x5 DW_TAG_const_type
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	528                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/io_raw.c"           # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=125
.Linfo_string3:
	.asciz	"char"                          # string offset=159
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=164
.Linfo_string5:
	.asciz	"int"                           # string offset=184
.Linfo_string6:
	.asciz	"CF_UNKNOWN"                    # string offset=188
.Linfo_string7:
	.asciz	"YUV400"                        # string offset=199
.Linfo_string8:
	.asciz	"YUV420"                        # string offset=206
.Linfo_string9:
	.asciz	"YUV422"                        # string offset=213
.Linfo_string10:
	.asciz	"YUV444"                        # string offset=220
.Linfo_string11:
	.asciz	"CM_UNKNOWN"                    # string offset=227
.Linfo_string12:
	.asciz	"CM_YUV"                        # string offset=238
.Linfo_string13:
	.asciz	"CM_RGB"                        # string offset=245
.Linfo_string14:
	.asciz	"CM_XYZ"                        # string offset=252
.Linfo_string15:
	.asciz	"VIDEO_UNKNOWN"                 # string offset=259
.Linfo_string16:
	.asciz	"VIDEO_YUV"                     # string offset=273
.Linfo_string17:
	.asciz	"VIDEO_RGB"                     # string offset=283
.Linfo_string18:
	.asciz	"VIDEO_XYZ"                     # string offset=293
.Linfo_string19:
	.asciz	"VIDEO_TIFF"                    # string offset=303
.Linfo_string20:
	.asciz	"VIDEO_AVI"                     # string offset=314
.Linfo_string21:
	.asciz	"ReadData"                      # string offset=324
.Linfo_string22:
	.asciz	"vfile"                         # string offset=333
.Linfo_string23:
	.asciz	"source"                        # string offset=339
.Linfo_string24:
	.asciz	"yuv_format"                    # string offset=346
.Linfo_string25:
	.asciz	"ColorFormat"                   # string offset=357
.Linfo_string26:
	.asciz	"color_model"                   # string offset=369
.Linfo_string27:
	.asciz	"ColorModel"                    # string offset=381
.Linfo_string28:
	.asciz	"frame_rate"                    # string offset=392
.Linfo_string29:
	.asciz	"double"                        # string offset=403
.Linfo_string30:
	.asciz	"width"                         # string offset=410
.Linfo_string31:
	.asciz	"height"                        # string offset=416
.Linfo_string32:
	.asciz	"auto_crop_right"               # string offset=423
.Linfo_string33:
	.asciz	"auto_crop_bottom"              # string offset=439
.Linfo_string34:
	.asciz	"auto_crop_right_cr"            # string offset=456
.Linfo_string35:
	.asciz	"auto_crop_bottom_cr"           # string offset=475
.Linfo_string36:
	.asciz	"width_crop"                    # string offset=495
.Linfo_string37:
	.asciz	"height_crop"                   # string offset=506
.Linfo_string38:
	.asciz	"mb_width"                      # string offset=518
.Linfo_string39:
	.asciz	"mb_height"                     # string offset=527
.Linfo_string40:
	.asciz	"size_cmp"                      # string offset=537
.Linfo_string41:
	.asciz	"size"                          # string offset=546
.Linfo_string42:
	.asciz	"bit_depth"                     # string offset=551
.Linfo_string43:
	.asciz	"max_value"                     # string offset=561
.Linfo_string44:
	.asciz	"max_value_sq"                  # string offset=571
.Linfo_string45:
	.asciz	"pic_unit_size_on_disk"         # string offset=584
.Linfo_string46:
	.asciz	"pic_unit_size_shift3"          # string offset=606
.Linfo_string47:
	.asciz	"frame_format"                  # string offset=627
.Linfo_string48:
	.asciz	"FrameFormat"                   # string offset=640
.Linfo_string49:
	.asciz	"buf"                           # string offset=652
.Linfo_string50:
	.asciz	"unsigned char"                 # string offset=656
.Linfo_string51:
	.asciz	"cur_buf"                       # string offset=670
.Linfo_string52:
	.asciz	"read_size"                     # string offset=678
.Linfo_string53:
	.asciz	"i"                             # string offset=688
.Linfo_string54:
	.asciz	"j"                             # string offset=690
.Linfo_string55:
	.asciz	"lseek"                         # string offset=692
.Linfo_string56:
	.asciz	"long"                          # string offset=698
.Linfo_string57:
	.asciz	"__off_t"                       # string offset=703
.Linfo_string58:
	.asciz	"snprintf"                      # string offset=711
.Linfo_string59:
	.asciz	"unsigned long"                 # string offset=720
.Linfo_string60:
	.asciz	"size_t"                        # string offset=734
.Linfo_string61:
	.asciz	"error"                         # string offset=741
.Linfo_string62:
	.asciz	"read"                          # string offset=747
.Linfo_string63:
	.asciz	"__ssize_t"                     # string offset=752
.Linfo_string64:
	.asciz	"ssize_t"                       # string offset=762
.Linfo_string65:
	.asciz	"printf"                        # string offset=770
.Linfo_string66:
	.asciz	"exit"                          # string offset=777
.Linfo_string67:
	.asciz	"OpenFrameFile"                 # string offset=782
.Linfo_string68:
	.asciz	"fname"                         # string offset=796
.Linfo_string69:
	.asciz	"fhead"                         # string offset=802
.Linfo_string70:
	.asciz	"ftail"                         # string offset=808
.Linfo_string71:
	.asciz	"f_num"                         # string offset=814
.Linfo_string72:
	.asciz	"vdtype"                        # string offset=820
.Linfo_string73:
	.asciz	"VideoFileType"                 # string offset=827
.Linfo_string74:
	.asciz	"format"                        # string offset=841
.Linfo_string75:
	.asciz	"is_concatenated"               # string offset=848
.Linfo_string76:
	.asciz	"is_interleaved"                # string offset=864
.Linfo_string77:
	.asciz	"zero_pad"                      # string offset=879
.Linfo_string78:
	.asciz	"num_digits"                    # string offset=888
.Linfo_string79:
	.asciz	"start_frame"                   # string offset=899
.Linfo_string80:
	.asciz	"end_frame"                     # string offset=911
.Linfo_string81:
	.asciz	"nframes"                       # string offset=921
.Linfo_string82:
	.asciz	"crop_x_size"                   # string offset=929
.Linfo_string83:
	.asciz	"crop_y_size"                   # string offset=941
.Linfo_string84:
	.asciz	"crop_x_offset"                 # string offset=953
.Linfo_string85:
	.asciz	"crop_y_offset"                 # string offset=967
.Linfo_string86:
	.asciz	"avi"                           # string offset=981
.Linfo_string87:
	.asciz	"video_data_file"               # string offset=985
.Linfo_string88:
	.asciz	"VideoDataFile"                 # string offset=1001
.Linfo_string89:
	.asciz	"close"                         # string offset=1015
.Linfo_string90:
	.asciz	"ReadFrameConcatenated"         # string offset=1021
.Linfo_string91:
	.asciz	"ReadFrameSeparate"             # string offset=1043
.Linfo_string92:
	.asciz	"p_Inp"                         # string offset=1061
.Linfo_string93:
	.asciz	"infile"                        # string offset=1067
.Linfo_string94:
	.asciz	"outfile"                       # string offset=1074
.Linfo_string95:
	.asciz	"reffile"                       # string offset=1082
.Linfo_string96:
	.asciz	"FileFormat"                    # string offset=1090
.Linfo_string97:
	.asciz	"ref_offset"                    # string offset=1101
.Linfo_string98:
	.asciz	"poc_scale"                     # string offset=1112
.Linfo_string99:
	.asciz	"write_uv"                      # string offset=1122
.Linfo_string100:
	.asciz	"silent"                        # string offset=1131
.Linfo_string101:
	.asciz	"intra_profile_deblocking"      # string offset=1138
.Linfo_string102:
	.asciz	"output"                        # string offset=1163
.Linfo_string103:
	.asciz	"ProcessInput"                  # string offset=1170
.Linfo_string104:
	.asciz	"enable_32_pulldown"            # string offset=1183
.Linfo_string105:
	.asciz	"input_file1"                   # string offset=1202
.Linfo_string106:
	.asciz	"input_file2"                   # string offset=1214
.Linfo_string107:
	.asciz	"input_file3"                   # string offset=1226
.Linfo_string108:
	.asciz	"DecodeAllLayers"               # string offset=1238
.Linfo_string109:
	.asciz	"conceal_mode"                  # string offset=1254
.Linfo_string110:
	.asciz	"ref_poc_gap"                   # string offset=1267
.Linfo_string111:
	.asciz	"poc_gap"                       # string offset=1279
.Linfo_string112:
	.asciz	"stdRange"                      # string offset=1287
.Linfo_string113:
	.asciz	"videoCode"                     # string offset=1296
.Linfo_string114:
	.asciz	"export_views"                  # string offset=1306
.Linfo_string115:
	.asciz	"iDecFrmNum"                    # string offset=1319
.Linfo_string116:
	.asciz	"bDisplayDecParams"             # string offset=1330
.Linfo_string117:
	.asciz	"inp_par"                       # string offset=1348
.Linfo_string118:
	.asciz	"InputParameters"               # string offset=1356
.Linfo_string119:
	.asciz	"input_file"                    # string offset=1372
.Linfo_string120:
	.asciz	"FrameNoInFile"                 # string offset=1383
.Linfo_string121:
	.asciz	"HeaderSize"                    # string offset=1397
.Linfo_string122:
	.asciz	"file_read"                     # string offset=1408
.Linfo_string123:
	.asciz	"framesize_in_bytes"            # string offset=1418
.Linfo_string124:
	.asciz	"__int64_t"                     # string offset=1437
.Linfo_string125:
	.asciz	"int64_t"                       # string offset=1447
.Linfo_string126:
	.asciz	"int64"                         # string offset=1455
.Linfo_string127:
	.asciz	"symbol_size_in_bytes"          # string offset=1461
.Linfo_string128:
	.asciz	"unsigned int"                  # string offset=1482
.Linfo_string129:
	.asciz	"bytes_y"                       # string offset=1495
.Linfo_string130:
	.asciz	"bytes_uv"                      # string offset=1503
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.Lfunc_begin0
	.quad	.Ltmp15
	.quad	.Ltmp7
	.quad	.Ltmp12
	.quad	.Ltmp13
	.quad	.Ltmp21
	.quad	.Ltmp34
	.quad	.Ltmp44
	.quad	.Ltmp52
	.quad	.Ltmp57
	.quad	.Ltmp58
	.quad	.Lfunc_begin1
	.quad	.Ltmp70
	.quad	.Ltmp64
	.quad	.Ltmp65
	.quad	.Ltmp68
	.quad	.Ltmp76
	.quad	.Ltmp89
	.quad	.Ltmp99
	.quad	.Ltmp107
	.quad	.Ltmp110
	.quad	.Ltmp115
	.quad	.Ltmp116
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
