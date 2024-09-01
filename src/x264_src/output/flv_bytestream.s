	.text
	.file	"flv_bytestream.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/output/flv_bytestream.c" md5 0x754853b2670cdf5b3e2e77d5a393aff1
	.file	1 "x264_src/output" "flv_bytestream.h" md5 0x7a2361cbd7a5379baf9a3e8d1b18ee49
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	dbl2int                         # -- Begin function dbl2int
	.p2align	4, 0x90
	.type	dbl2int,@function
dbl2int:                                # @dbl2int
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: dbl2int:value <- $xmm0
	#DEBUG_VALUE: dbl2int:cvrt <- $xmm0
	.loc	0 33 16 prologue_end            # x264_src/output/flv_bytestream.c:33:16
	movq	%xmm0, %rax
	.loc	0 33 4 is_stmt 0                # x264_src/output/flv_bytestream.c:33:4
	retq
.Ltmp0:
.Lfunc_end0:
	.size	dbl2int, .Lfunc_end0-dbl2int
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_byte                   # -- Begin function x264_put_byte
	.p2align	4, 0x90
	.type	x264_put_byte,@function
x264_put_byte:                          # @x264_put_byte
.Lfunc_begin1:
	.loc	0 42 0 is_stmt 1                # x264_src/output/flv_bytestream.c:42:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_byte:c <- $rdi
	#DEBUG_VALUE: x264_put_byte:b <- $esi
	#DEBUG_VALUE: flv_append_data:c <- $rdi
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp1:
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r14d
.Ltmp2:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %r14d
.Ltmp3:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB1_7
.Ltmp4:
# %bb.1:                                # %while.cond.i.preheader
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp5:
	.p2align	4, 0x90
.LBB1_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	movl	%eax, %r15d
.Ltmp6:
	#DEBUG_VALUE: dn <- $r15d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r15,%r15), %eax
.Ltmp7:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r15d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB1_2
.Ltmp8:
# %bb.3:                                # %while.end.i
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r15d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp9:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp10:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB1_6
.Ltmp11:
# %bb.4:                                # %if.end.i
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r15d, 12(%rbx)
.Ltmp12:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %ecx
	jmp	.LBB1_5
.Ltmp13:
.LBB1_7:                                # %entry.if.end7_crit_edge.i
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 133 16 is_stmt 0              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp14:
.LBB1_5:                                # %if.end7.i
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%bpl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp15:
.LBB1_6:                                # %flv_append_data.exit
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $ebp
	.loc	0 44 1 epilogue_begin           # x264_src/output/flv_bytestream.c:44:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp16:
	#DEBUG_VALUE: x264_put_byte:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp17:
	#DEBUG_VALUE: x264_put_byte:b <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp18:
.Lfunc_end1:
	.size	x264_put_byte, .Lfunc_end1-x264_put_byte
	.cfi_endproc
	.file	4 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	7 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	flv_append_data                 # -- Begin function flv_append_data
	.p2align	4, 0x90
	.type	flv_append_data,@function
flv_append_data:                        # @flv_append_data
.Lfunc_begin2:
	.loc	0 115 0                         # x264_src/output/flv_bytestream.c:115:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: flv_append_data:c <- $rdi
	#DEBUG_VALUE: flv_append_data:data <- $rsi
	#DEBUG_VALUE: flv_append_data:size <- $edx
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
	movl	%edx, %r14d
	movq	%rdi, %rbx
.Ltmp19:
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	(%rcx,%r14), %ebp
.Ltmp20:
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %ebp
.Ltmp21:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB2_8
.Ltmp22:
# %bb.1:                                # %while.cond.preheader
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $rsi
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movq	%rsi, %r15
.Ltmp23:
	#DEBUG_VALUE: flv_append_data:data <- $r15
	movl	$16, %eax
.Ltmp24:
	.p2align	4, 0x90
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r15
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	movl	%eax, %r12d
.Ltmp25:
	#DEBUG_VALUE: dn <- $r12d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r12,%r12), %eax
.Ltmp26:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r12d, %ebp
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB2_2
.Ltmp27:
# %bb.3:                                # %while.end
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r15
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r12d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp28:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp29:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB2_4
.Ltmp30:
# %bb.5:                                # %if.end
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r15
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r12d, 12(%rbx)
.Ltmp31:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %ecx
	movq	%r15, %rsi
	jmp	.LBB2_6
.Ltmp32:
.LBB2_8:                                # %entry.if.end7_crit_edge
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $rsi
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 133 16 is_stmt 0              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp33:
.LBB2_6:                                # %if.end7
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $rsi
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %edi
	addq	%rax, %rdi
	.loc	0 133 39                        # x264_src/output/flv_bytestream.c:133:39
	movl	%r14d, %edx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	callq	memcpy@PLT
.Ltmp34:
	#DEBUG_VALUE: flv_append_data:data <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%ebp, 8(%rbx)
	xorl	%eax, %eax
.Ltmp35:
.LBB2_7:                                # %cleanup12
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 138 1 epilogue_begin          # x264_src/output/flv_bytestream.c:138:1
	popq	%rbx
.Ltmp36:
	#DEBUG_VALUE: flv_append_data:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp37:
	#DEBUG_VALUE: flv_append_data:size <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 8
	retq
.Ltmp39:
.LBB2_4:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r15
	#DEBUG_VALUE: flv_append_data:size <- $r14d
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	#DEBUG_VALUE: dp <- $rax
	.loc	0 0 1 is_stmt 0                 # x264_src/output/flv_bytestream.c:0:1
	movl	$-1, %eax
.Ltmp40:
	.loc	0 126 13 is_stmt 1              # x264_src/output/flv_bytestream.c:126:13
	jmp	.LBB2_7
.Ltmp41:
.Lfunc_end2:
	.size	flv_append_data, .Lfunc_end2-flv_append_data
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be32                   # -- Begin function x264_put_be32
	.p2align	4, 0x90
	.type	x264_put_be32,@function
x264_put_be32:                          # @x264_put_be32
.Lfunc_begin3:
	.loc	0 47 0                          # x264_src/output/flv_bytestream.c:47:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_be32:c <- $rdi
	#DEBUG_VALUE: x264_put_be32:val <- $esi
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp42:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r14d
.Ltmp43:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %r14d
.Ltmp44:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB3_28
.Ltmp45:
# %bb.1:                                # %while.cond.i.i.preheader
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp46:
	.p2align	4, 0x90
.LBB3_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	movl	%eax, %r15d
.Ltmp47:
	#DEBUG_VALUE: dn <- $r15d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r15,%r15), %eax
.Ltmp48:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r15d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB3_2
.Ltmp49:
# %bb.3:                                # %while.end.i.i
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r15d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp50:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %ecx
.Ltmp51:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp52:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB3_4
.Ltmp53:
# %bb.5:                                # %if.end.i.i
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r15d, 12(%rbx)
	jmp	.LBB3_6
.Ltmp54:
.LBB3_28:                               # %entry.if.end7_crit_edge.i.i
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 133 16                        # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp55:
.LBB3_6:                                # %if.end7.i.i
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 48 0                          # x264_src/output/flv_bytestream.c:48:0
	movl	%ebp, %edx
	shrl	$24, %edx
.Ltmp56:
	#DEBUG_VALUE: x264_put_byte:b <- $dl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%dl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp57:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp58:
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp59:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB3_29
.Ltmp60:
.LBB3_8:                                # %while.cond.i.i21.preheader
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp61:
	.p2align	4, 0x90
.LBB3_9:                                # %while.cond.i.i21
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r12d
.Ltmp62:
	#DEBUG_VALUE: dn <- $r12d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r12,%r12), %eax
.Ltmp63:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r12d, %r15d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB3_9
.Ltmp64:
# %bb.10:                               # %while.end.i.i25
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r12d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp65:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %r14d
.Ltmp66:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp67:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB3_11
.Ltmp68:
# %bb.12:                               # %if.end.i.i29
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r12d, 12(%rbx)
	jmp	.LBB3_13
.Ltmp69:
.LBB3_4:
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	.loc	0 0 18 is_stmt 0                # x264_src/output/flv_bytestream.c:0:18
	movl	%ecx, %r14d
.Ltmp70:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp71:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp72:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB3_8
.Ltmp73:
.LBB3_29:                               # %entry.if.end7_crit_edge.i.i16
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp74:
.LBB3_13:                               # %if.end7.i.i18
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 49 0                          # x264_src/output/flv_bytestream.c:49:0
	movl	%ebp, %ecx
	shrl	$16, %ecx
.Ltmp75:
	#DEBUG_VALUE: x264_put_byte:b <- $cl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%r14d, %edx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%cl, (%rax,%rdx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r15d, 8(%rbx)
.Ltmp76:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r15), %r14d
.Ltmp77:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r14d
.Ltmp78:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB3_30
.Ltmp79:
.LBB3_15:                               # %while.cond.i.i41.preheader
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp80:
	.p2align	4, 0x90
.LBB3_16:                               # %while.cond.i.i41
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r12d
.Ltmp81:
	#DEBUG_VALUE: dn <- $r12d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r12,%r12), %eax
.Ltmp82:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r12d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB3_16
.Ltmp83:
# %bb.17:                               # %while.end.i.i45
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r12d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp84:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %r15d
.Ltmp85:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp86:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB3_18
.Ltmp87:
# %bb.19:                               # %if.end.i.i49
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r12d, 12(%rbx)
	jmp	.LBB3_20
.Ltmp88:
.LBB3_11:
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	.loc	0 0 18 is_stmt 0                # x264_src/output/flv_bytestream.c:0:18
	movl	%r14d, %r15d
.Ltmp89:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r15), %r14d
.Ltmp90:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r14d
.Ltmp91:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB3_15
.Ltmp92:
.LBB3_30:                               # %entry.if.end7_crit_edge.i.i36
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp93:
.LBB3_20:                               # %if.end7.i.i38
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 50 0                          # x264_src/output/flv_bytestream.c:50:0
	movl	%ebp, %ecx
	shrl	$8, %ecx
.Ltmp94:
	#DEBUG_VALUE: x264_put_byte:b <- $cl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%r15d, %edx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%cl, (%rax,%rdx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp95:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp96:
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp97:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB3_31
.Ltmp98:
.LBB3_22:                               # %while.cond.i.i61.preheader
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp99:
	.p2align	4, 0x90
.LBB3_23:                               # %while.cond.i.i61
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r14d
.Ltmp100:
	#DEBUG_VALUE: dn <- $r14d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r14,%r14), %eax
.Ltmp101:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r14d, %r15d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB3_23
.Ltmp102:
# %bb.24:                               # %while.end.i.i65
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r14d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp103:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp104:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB3_27
.Ltmp105:
# %bb.25:                               # %if.end.i.i69
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r14d, 12(%rbx)
.Ltmp106:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %r14d
	jmp	.LBB3_26
.Ltmp107:
.LBB3_18:
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	.loc	0 0 26 is_stmt 0                # x264_src/output/flv_bytestream.c:0:26
	movl	%r15d, %r14d
.Ltmp108:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp109:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp110:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB3_22
.Ltmp111:
.LBB3_31:                               # %entry.if.end7_crit_edge.i.i56
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp112:
.LBB3_26:                               # %if.end7.i.i58
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%r14d, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%bpl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r15d, 8(%rbx)
.Ltmp113:
.LBB3_27:                               # %x264_put_byte.exit71
	#DEBUG_VALUE: x264_put_be32:c <- $rbx
	#DEBUG_VALUE: x264_put_be32:val <- $ebp
	.loc	0 52 1 epilogue_begin           # x264_src/output/flv_bytestream.c:52:1
	popq	%rbx
.Ltmp114:
	#DEBUG_VALUE: x264_put_be32:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp115:
	#DEBUG_VALUE: x264_put_be32:val <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp116:
.Lfunc_end3:
	.size	x264_put_be32, .Lfunc_end3-x264_put_be32
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be64                   # -- Begin function x264_put_be64
	.p2align	4, 0x90
	.type	x264_put_be64,@function
x264_put_be64:                          # @x264_put_be64
.Lfunc_begin4:
	.loc	0 55 0                          # x264_src/output/flv_bytestream.c:55:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_be64:c <- $rdi
	#DEBUG_VALUE: x264_put_be64:val <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp117:
	.loc	0 56 27 prologue_end            # x264_src/output/flv_bytestream.c:56:27
	shrq	$32, %rsi
.Ltmp118:
	#DEBUG_VALUE: x264_put_be64:val <- $rbx
                                        # kill: def $esi killed $esi killed $rsi
	.loc	0 56 5 is_stmt 0                # x264_src/output/flv_bytestream.c:56:5
	callq	x264_put_be32
.Ltmp119:
	#DEBUG_VALUE: x264_put_be64:c <- $r14
	.loc	0 57 5 is_stmt 1                # x264_src/output/flv_bytestream.c:57:5
	movq	%r14, %rdi
	movl	%ebx, %esi
	.loc	0 57 5 epilogue_begin is_stmt 0 # x264_src/output/flv_bytestream.c:57:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp120:
	#DEBUG_VALUE: x264_put_be64:val <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp121:
	#DEBUG_VALUE: x264_put_be64:c <- $rdi
	.cfi_def_cfa_offset 8
	jmp	x264_put_be32                   # TAILCALL
.Ltmp122:
.Lfunc_end4:
	.size	x264_put_be64, .Lfunc_end4-x264_put_be64
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be16                   # -- Begin function x264_put_be16
	.p2align	4, 0x90
	.type	x264_put_be16,@function
x264_put_be16:                          # @x264_put_be16
.Lfunc_begin5:
	.loc	0 61 0 is_stmt 1                # x264_src/output/flv_bytestream.c:61:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_be16:c <- $rdi
	#DEBUG_VALUE: x264_put_be16:val <- $esi
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp123:
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r14d
.Ltmp124:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %r14d
.Ltmp125:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB5_14
.Ltmp126:
# %bb.1:                                # %while.cond.i.i.preheader
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp127:
	.p2align	4, 0x90
.LBB5_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	movl	%eax, %r15d
.Ltmp128:
	#DEBUG_VALUE: dn <- $r15d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r15,%r15), %eax
.Ltmp129:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r15d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB5_2
.Ltmp130:
# %bb.3:                                # %while.end.i.i
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r15d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp131:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %ecx
.Ltmp132:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp133:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB5_4
.Ltmp134:
# %bb.5:                                # %if.end.i.i
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r15d, 12(%rbx)
	jmp	.LBB5_6
.Ltmp135:
.LBB5_14:                               # %entry.if.end7_crit_edge.i.i
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 133 16                        # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp136:
.LBB5_6:                                # %if.end7.i.i
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 62 0                          # x264_src/output/flv_bytestream.c:62:0
	movl	%ebp, %edx
	shrl	$8, %edx
.Ltmp137:
	#DEBUG_VALUE: x264_put_byte:b <- $dl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%dl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp138:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp139:
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp140:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB5_15
.Ltmp141:
.LBB5_8:                                # %while.cond.i.i14.preheader
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp142:
	.p2align	4, 0x90
.LBB5_9:                                # %while.cond.i.i14
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r14d
.Ltmp143:
	#DEBUG_VALUE: dn <- $r14d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r14,%r14), %eax
.Ltmp144:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r14d, %r15d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB5_9
.Ltmp145:
# %bb.10:                               # %while.end.i.i18
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r14d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp146:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp147:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB5_13
.Ltmp148:
# %bb.11:                               # %if.end.i.i22
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r14d, 12(%rbx)
.Ltmp149:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %r14d
	jmp	.LBB5_12
.Ltmp150:
.LBB5_4:
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	.loc	0 0 26 is_stmt 0                # x264_src/output/flv_bytestream.c:0:26
	movl	%ecx, %r14d
.Ltmp151:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp152:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp153:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB5_8
.Ltmp154:
.LBB5_15:                               # %entry.if.end7_crit_edge.i.i9
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp155:
.LBB5_12:                               # %if.end7.i.i11
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%r14d, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%bpl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r15d, 8(%rbx)
.Ltmp156:
.LBB5_13:                               # %x264_put_byte.exit24
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_be16:val <- $ebp
	.loc	0 64 1 epilogue_begin           # x264_src/output/flv_bytestream.c:64:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp157:
	#DEBUG_VALUE: x264_put_be16:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp158:
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp159:
.Lfunc_end5:
	.size	x264_put_be16, .Lfunc_end5-x264_put_be16
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be24                   # -- Begin function x264_put_be24
	.p2align	4, 0x90
	.type	x264_put_be24,@function
x264_put_be24:                          # @x264_put_be24
.Lfunc_begin6:
	.loc	0 67 0                          # x264_src/output/flv_bytestream.c:67:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_be24:c <- $rdi
	#DEBUG_VALUE: x264_put_be24:val <- $esi
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp160:
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r14d
.Ltmp161:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %r14d
.Ltmp162:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB6_21
.Ltmp163:
# %bb.1:                                # %while.cond.i.i.i.preheader
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp164:
	.p2align	4, 0x90
.LBB6_2:                                # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	movl	%eax, %r15d
.Ltmp165:
	#DEBUG_VALUE: dn <- $r15d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r15,%r15), %eax
.Ltmp166:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r15d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB6_2
.Ltmp167:
# %bb.3:                                # %while.end.i.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r15d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp168:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %ecx
.Ltmp169:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp170:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB6_4
.Ltmp171:
# %bb.5:                                # %if.end.i.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r15d, 12(%rbx)
	jmp	.LBB6_6
.Ltmp172:
.LBB6_21:                               # %entry.if.end7_crit_edge.i.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 133 16                        # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp173:
.LBB6_6:                                # %if.end7.i.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 62 0                          # x264_src/output/flv_bytestream.c:62:0
	movl	%ebp, %edx
	shrl	$16, %edx
.Ltmp174:
	#DEBUG_VALUE: x264_put_byte:b <- $dl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%dl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp175:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp176:
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp177:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB6_22
.Ltmp178:
.LBB6_8:                                # %while.cond.i.i14.i.preheader
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp179:
	.p2align	4, 0x90
.LBB6_9:                                # %while.cond.i.i14.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r12d
.Ltmp180:
	#DEBUG_VALUE: dn <- $r12d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r12,%r12), %eax
.Ltmp181:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r12d, %r15d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB6_9
.Ltmp182:
# %bb.10:                               # %while.end.i.i18.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r12d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp183:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %r14d
.Ltmp184:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp185:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB6_11
.Ltmp186:
# %bb.12:                               # %if.end.i.i22.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r12d, 12(%rbx)
	jmp	.LBB6_13
.Ltmp187:
.LBB6_4:
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	.loc	0 0 18 is_stmt 0                # x264_src/output/flv_bytestream.c:0:18
	movl	%ecx, %r14d
.Ltmp188:
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r14), %r15d
.Ltmp189:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r15d
.Ltmp190:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB6_8
.Ltmp191:
.LBB6_22:                               # %entry.if.end7_crit_edge.i.i9.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp192:
.LBB6_13:                               # %if.end7.i.i11.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 68 0                          # x264_src/output/flv_bytestream.c:68:0
	movl	%ebp, %ecx
	shrl	$8, %ecx
.Ltmp193:
	#DEBUG_VALUE: x264_put_byte:b <- $cl
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $ecx
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%r14d, %edx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%cl, (%rax,%rdx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r15d, 8(%rbx)
.Ltmp194:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r15), %r14d
.Ltmp195:
	#DEBUG_VALUE: flv_append_data:ns <- $r14d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r14d
.Ltmp196:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB6_23
.Ltmp197:
.LBB6_15:                               # %while.cond.i.i.preheader
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp198:
	.p2align	4, 0x90
.LBB6_16:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r15d
.Ltmp199:
	#DEBUG_VALUE: dn <- $r15d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r15,%r15), %eax
.Ltmp200:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r15d, %r14d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB6_16
.Ltmp201:
# %bb.17:                               # %while.end.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r15d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp202:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp203:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB6_20
.Ltmp204:
# %bb.18:                               # %if.end.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r15d, 12(%rbx)
.Ltmp205:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %r15d
	jmp	.LBB6_19
.Ltmp206:
.LBB6_11:
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	.loc	0 0 26 is_stmt 0                # x264_src/output/flv_bytestream.c:0:26
	movl	%r14d, %r15d
.Ltmp207:
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r15), %r14d
.Ltmp208:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r14d
.Ltmp209:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB6_15
.Ltmp210:
.LBB6_23:                               # %entry.if.end7_crit_edge.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp211:
.LBB6_19:                               # %if.end7.i.i
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%r15d, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%bpl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r14d, 8(%rbx)
.Ltmp212:
.LBB6_20:                               # %x264_put_byte.exit
	#DEBUG_VALUE: x264_put_be24:c <- $rbx
	#DEBUG_VALUE: x264_put_be24:val <- $ebp
	.loc	0 70 1 epilogue_begin           # x264_src/output/flv_bytestream.c:70:1
	popq	%rbx
.Ltmp213:
	#DEBUG_VALUE: x264_put_be24:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp214:
	#DEBUG_VALUE: x264_put_be24:val <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp215:
.Lfunc_end6:
	.size	x264_put_be24, .Lfunc_end6-x264_put_be24
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_tag                    # -- Begin function x264_put_tag
	.p2align	4, 0x90
	.type	x264_put_tag,@function
x264_put_tag:                           # @x264_put_tag
.Lfunc_begin7:
	.loc	0 73 0                          # x264_src/output/flv_bytestream.c:73:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_tag:c <- $rdi
	#DEBUG_VALUE: x264_put_tag:tag <- $rsi
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
	.loc	0 74 12 prologue_end            # x264_src/output/flv_bytestream.c:74:12
	movzbl	(%rsi), %ebp
	.loc	0 74 5 is_stmt 0                # x264_src/output/flv_bytestream.c:74:5
	testb	%bpl, %bpl
	je	.LBB7_9
.Ltmp216:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: x264_put_tag:c <- $rdi
	#DEBUG_VALUE: x264_put_tag:tag <- $rsi
	.loc	0 0 5                           # x264_src/output/flv_bytestream.c:0:5
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB7_2
.Ltmp217:
	.p2align	4, 0x90
.LBB7_10:                               # %entry.if.end7_crit_edge.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%r14), %rax
.Ltmp218:
.LBB7_7:                                # %if.end7.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%bpl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r15d, 8(%r14)
.Ltmp219:
.LBB7_8:                                # %x264_put_byte.exit
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	.loc	0 0 0 is_stmt 0                 # x264_src/output/flv_bytestream.c:0:0
	incq	%rbx
.Ltmp220:
	#DEBUG_VALUE: x264_put_tag:tag <- $rbx
	#DEBUG_VALUE: x264_put_tag:tag <- $rbx
	.loc	0 74 12 is_stmt 1               # x264_src/output/flv_bytestream.c:74:12
	movzbl	(%rbx), %ebp
	.loc	0 74 5 is_stmt 0                # x264_src/output/flv_bytestream.c:74:5
	testb	%bpl, %bpl
	je	.LBB7_9
.Ltmp221:
.LBB7_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_tag:tag <- $rbx
	#DEBUG_VALUE: x264_put_tag:tag <- $rbx
	#DEBUG_VALUE: x264_put_tag:tag <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%r14), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r15d
.Ltmp222:
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%r14), %r15d
.Ltmp223:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB7_10
.Ltmp224:
# %bb.3:                                # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp225:
	.p2align	4, 0x90
.LBB7_4:                                # %while.cond.i.i
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	movl	%eax, %r12d
.Ltmp226:
	#DEBUG_VALUE: dn <- $r12d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r12,%r12), %eax
.Ltmp227:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r12d, %r15d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB7_4
.Ltmp228:
# %bb.5:                                # %while.end.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%r14), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r12d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp229:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp230:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB7_8
.Ltmp231:
# %bb.6:                                # %if.end.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: x264_put_tag:c <- $r14
	#DEBUG_VALUE: x264_put_byte:c <- $r14
	#DEBUG_VALUE: x264_put_byte:b <- $bpl
	#DEBUG_VALUE: flv_append_data:c <- $r14
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r15d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%r14)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r12d, 12(%r14)
.Ltmp232:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%r14), %ecx
	jmp	.LBB7_7
.Ltmp233:
.LBB7_9:                                # %while.end
	#DEBUG_VALUE: x264_put_tag:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 76 1 epilogue_begin           # x264_src/output/flv_bytestream.c:76:1
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
.Ltmp234:
.Lfunc_end7:
	.size	x264_put_tag, .Lfunc_end7-x264_put_tag
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_amf_string             # -- Begin function x264_put_amf_string
	.p2align	4, 0x90
	.type	x264_put_amf_string,@function
x264_put_amf_string:                    # @x264_put_amf_string
.Lfunc_begin8:
	.loc	0 79 0                          # x264_src/output/flv_bytestream.c:79:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_amf_string:c <- $rdi
	#DEBUG_VALUE: x264_put_amf_string:str <- $rsi
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp235:
	.loc	0 80 20 prologue_end            # x264_src/output/flv_bytestream.c:80:20
	movq	%rsi, %rdi
.Ltmp236:
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	callq	strlen@PLT
.Ltmp237:
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	movq	%rax, %r15
.Ltmp238:
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- undef
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22                        # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %r12d
.Ltmp239:
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r12d
.Ltmp240:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB8_21
.Ltmp241:
# %bb.1:                                # %while.cond.i.i.i.preheader
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp242:
	.p2align	4, 0x90
.LBB8_2:                                # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	movl	%eax, %r13d
.Ltmp243:
	#DEBUG_VALUE: dn <- $r13d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(,%r13,2), %eax
.Ltmp244:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r13d, %r12d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB8_2
.Ltmp245:
# %bb.3:                                # %while.end.i.i.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r13d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp246:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %ecx
.Ltmp247:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp248:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB8_4
.Ltmp249:
# %bb.5:                                # %if.end.i.i.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r13d, 12(%rbx)
	jmp	.LBB8_6
.Ltmp250:
.LBB8_21:                               # %entry.if.end7_crit_edge.i.i.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	.loc	0 133 16                        # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp251:
.LBB8_6:                                # %if.end7.i.i.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	.loc	0 62 0                          # x264_src/output/flv_bytestream.c:62:0
	movl	%r15d, %edx
	shrl	$8, %edx
.Ltmp252:
	#DEBUG_VALUE: x264_put_byte:b <- $dl
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5 is_stmt 0               # x264_src/output/flv_bytestream.c:133:5
	movb	%dl, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r12d, 8(%rbx)
.Ltmp253:
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r12), %ebp
.Ltmp254:
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %ebp
.Ltmp255:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB8_22
.Ltmp256:
.LBB8_8:                                # %while.cond.i.i14.i.preheader
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp257:
	.p2align	4, 0x90
.LBB8_9:                                # %while.cond.i.i14.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	movl	%eax, %r13d
.Ltmp258:
	#DEBUG_VALUE: dn <- $r13d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(,%r13,2), %eax
.Ltmp259:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r13d, %ebp
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB8_9
.Ltmp260:
# %bb.10:                               # %while.end.i.i18.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r13d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp261:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 116 22 is_stmt 1              # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rbx), %r12d
.Ltmp262:
	.loc	0 126 14                        # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp263:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB8_11
.Ltmp264:
# %bb.12:                               # %if.end.i.i22.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r13d, 12(%rbx)
	jmp	.LBB8_13
.Ltmp265:
.LBB8_4:
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	.loc	0 0 18 is_stmt 0                # x264_src/output/flv_bytestream.c:0:18
	movl	%ecx, %r12d
.Ltmp266:
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- undef
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 28 is_stmt 1              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%r12), %ebp
.Ltmp267:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %ebp
.Ltmp268:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB8_8
.Ltmp269:
.LBB8_22:                               # %entry.if.end7_crit_edge.i.i9.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp270:
.LBB8_13:                               # %if.end7.i.i11.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- $r15b
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%r12d, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	%r15b, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%ebp, 8(%rbx)
.Ltmp271:
	.loc	0 82 40                         # x264_src/output/flv_bytestream.c:82:40
	movzwl	%r15w, %r12d
.Ltmp272:
	#DEBUG_VALUE: flv_append_data:size <- $r12d
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	addl	%ebp, %r12d
.Ltmp273:
	#DEBUG_VALUE: flv_append_data:ns <- $r12d
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r12d
.Ltmp274:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB8_23
.Ltmp275:
.LBB8_15:                               # %while.cond.i.preheader
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:val <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: x264_put_be16:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movl	$16, %eax
.Ltmp276:
	.p2align	4, 0x90
.LBB8_16:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	movl	%eax, %r13d
.Ltmp277:
	#DEBUG_VALUE: dn <- $r13d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(,%r13,2), %eax
.Ltmp278:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r13d, %r12d
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB8_16
.Ltmp279:
# %bb.17:                               # %while.end.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r13d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp280:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
.Ltmp281:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB8_20
.Ltmp282:
# %bb.18:                               # %if.end.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r13d, 12(%rbx)
.Ltmp283:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %ebp
	jmp	.LBB8_19
.Ltmp284:
.LBB8_11:
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	.loc	0 0 26 is_stmt 0                # x264_src/output/flv_bytestream.c:0:26
	movl	%r12d, %ebp
	.loc	0 82 40 is_stmt 1               # x264_src/output/flv_bytestream.c:82:40
	movzwl	%r15w, %r12d
.Ltmp285:
	#DEBUG_VALUE: flv_append_data:size <- undef
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	.loc	0 116 28                        # x264_src/output/flv_bytestream.c:116:28
	addl	%ebp, %r12d
.Ltmp286:
	#DEBUG_VALUE: flv_append_data:ns <- undef
	.loc	0 118 12                        # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rbx), %r12d
.Ltmp287:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	ja	.LBB8_15
.Ltmp288:
.LBB8_23:                               # %entry.if.end7_crit_edge.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	.loc	0 133 16 is_stmt 1              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp289:
.LBB8_19:                               # %if.end7.i
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: flv_append_data:data <- $r14
	.loc	0 133 21 is_stmt 0              # x264_src/output/flv_bytestream.c:133:21
	movl	%ebp, %edi
	addq	%rax, %rdi
	.loc	0 133 39                        # x264_src/output/flv_bytestream.c:133:39
	movzwl	%r15w, %edx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movq	%r14, %rsi
	callq	memcpy@PLT
.Ltmp290:
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%r12d, 8(%rbx)
.Ltmp291:
.LBB8_20:                               # %flv_append_data.exit
	#DEBUG_VALUE: x264_put_amf_string:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_string:str <- $r14
	#DEBUG_VALUE: x264_put_amf_string:len <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r15
	.loc	0 83 1 epilogue_begin           # x264_src/output/flv_bytestream.c:83:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp292:
	#DEBUG_VALUE: x264_put_amf_string:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp293:
	#DEBUG_VALUE: x264_put_amf_string:str <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp294:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp295:
.Lfunc_end8:
	.size	x264_put_amf_string, .Lfunc_end8-x264_put_amf_string
	.cfi_endproc
	.file	8 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.globl	x264_put_amf_double             # -- Begin function x264_put_amf_double
	.p2align	4, 0x90
	.type	x264_put_amf_double,@function
x264_put_amf_double:                    # @x264_put_amf_double
.Lfunc_begin9:
	.loc	0 86 0                          # x264_src/output/flv_bytestream.c:86:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x264_put_amf_double:c <- $rdi
	#DEBUG_VALUE: x264_put_amf_double:d <- $xmm0
	#DEBUG_VALUE: x264_put_byte:c <- $rdi
	#DEBUG_VALUE: flv_append_data:c <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
.Ltmp296:
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	.loc	0 116 22 prologue_end           # x264_src/output/flv_bytestream.c:116:22
	movl	8(%rdi), %ecx
	.loc	0 116 28 is_stmt 0              # x264_src/output/flv_bytestream.c:116:28
	leal	1(%rcx), %ebp
.Ltmp297:
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 118 12 is_stmt 1              # x264_src/output/flv_bytestream.c:118:12
	cmpl	12(%rdi), %ebp
.Ltmp298:
	.loc	0 118 9 is_stmt 0               # x264_src/output/flv_bytestream.c:118:9
	jbe	.LBB9_7
.Ltmp299:
# %bb.1:                                # %while.cond.i.i.preheader
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- $xmm0
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp300:
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	movl	$16, %eax
.Ltmp301:
	.p2align	4, 0x90
.LBB9_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	movl	%eax, %r14d
.Ltmp302:
	#DEBUG_VALUE: dn <- $r14d
	.loc	0 123 16 is_stmt 1              # x264_src/output/flv_bytestream.c:123:16
	leal	(%r14,%r14), %eax
.Ltmp303:
	#DEBUG_VALUE: dn <- $eax
	.loc	0 122 19                        # x264_src/output/flv_bytestream.c:122:19
	cmpl	%r14d, %ebp
	.loc	0 122 9 is_stmt 0               # x264_src/output/flv_bytestream.c:122:9
	ja	.LBB9_2
.Ltmp304:
# %bb.3:                                # %while.end.i.i
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	#DEBUG_VALUE: dn <- $eax
	.loc	0 125 26 is_stmt 1              # x264_src/output/flv_bytestream.c:125:26
	movq	(%rbx), %rdi
	.loc	0 125 32 is_stmt 0              # x264_src/output/flv_bytestream.c:125:32
	movl	%r14d, %esi
	.loc	0 125 14                        # x264_src/output/flv_bytestream.c:125:14
	callq	realloc@PLT
.Ltmp305:
	#DEBUG_VALUE: dp <- $rax
	.loc	0 126 14 is_stmt 1              # x264_src/output/flv_bytestream.c:126:14
	testq	%rax, %rax
	movq	8(%rsp), %xmm0                  # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
.Ltmp306:
	.loc	0 126 13 is_stmt 0              # x264_src/output/flv_bytestream.c:126:13
	je	.LBB9_6
.Ltmp307:
# %bb.4:                                # %if.end.i.i
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_plus_uconst 8, DW_OP_deref_size 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	#DEBUG_VALUE: dp <- $rax
	.loc	0 129 17 is_stmt 1              # x264_src/output/flv_bytestream.c:129:17
	movq	%rax, (%rbx)
	.loc	0 130 18                        # x264_src/output/flv_bytestream.c:130:18
	movl	%r14d, 12(%rbx)
.Ltmp308:
	.loc	0 133 26                        # x264_src/output/flv_bytestream.c:133:26
	movl	8(%rbx), %ecx
	jmp	.LBB9_5
.Ltmp309:
.LBB9_7:                                # %entry.if.end7_crit_edge.i.i
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- $xmm0
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 133 16 is_stmt 0              # x264_src/output/flv_bytestream.c:133:16
	movq	(%rbx), %rax
.Ltmp310:
.LBB9_5:                                # %if.end7.i.i
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: x264_put_byte:c <- $rbx
	#DEBUG_VALUE: flv_append_data:c <- $rbx
	#DEBUG_VALUE: x264_put_byte:b <- 0
	#DEBUG_VALUE: flv_append_data:size <- 1
	#DEBUG_VALUE: flv_append_data:ns <- $ebp
	.loc	0 133 21                        # x264_src/output/flv_bytestream.c:133:21
	movl	%ecx, %ecx
	.loc	0 133 5                         # x264_src/output/flv_bytestream.c:133:5
	movb	$0, (%rax,%rcx)
	.loc	0 135 14 is_stmt 1              # x264_src/output/flv_bytestream.c:135:14
	movl	%ebp, 8(%rbx)
.Ltmp311:
.LBB9_6:                                # %x264_put_byte.exit
	#DEBUG_VALUE: x264_put_amf_double:c <- $rbx
	#DEBUG_VALUE: x264_put_amf_double:d <- [DW_OP_LLVM_entry_value 1] $xmm0
	#DEBUG_VALUE: dbl2int:value <- undef
	#DEBUG_VALUE: dbl2int:cvrt <- undef
	.loc	0 33 16                         # x264_src/output/flv_bytestream.c:33:16
	movq	%xmm0, %r14
.Ltmp312:
	#DEBUG_VALUE: x264_put_be64:val <- $r14
	#DEBUG_VALUE: x264_put_be64:c <- $rbx
	.loc	0 56 27                         # x264_src/output/flv_bytestream.c:56:27
	movq	%r14, %rsi
	shrq	$32, %rsi
	.loc	0 56 5 is_stmt 0                # x264_src/output/flv_bytestream.c:56:5
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	x264_put_be32
.Ltmp313:
	.loc	0 57 5 is_stmt 1                # x264_src/output/flv_bytestream.c:57:5
	movq	%rbx, %rdi
	movl	%r14d, %esi
	.loc	0 57 5 epilogue_begin is_stmt 0 # x264_src/output/flv_bytestream.c:57:5
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
.Ltmp314:
	#DEBUG_VALUE: x264_put_be64:c <- $rdi
	#DEBUG_VALUE: x264_put_amf_double:c <- $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp315:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.Ltmp316:
	jmp	x264_put_be32                   # TAILCALL
.Ltmp317:
.Lfunc_end9:
	.size	x264_put_amf_double, .Lfunc_end9-x264_put_amf_double
	.cfi_endproc
                                        # -- End function
	.globl	flv_create_writer               # -- Begin function flv_create_writer
	.p2align	4, 0x90
	.type	flv_create_writer,@function
flv_create_writer:                      # @flv_create_writer
.Lfunc_begin10:
	.loc	0 94 0 is_stmt 1                # x264_src/output/flv_bytestream.c:94:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: flv_create_writer:filename <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp318:
	.loc	0 95 21 prologue_end            # x264_src/output/flv_bytestream.c:95:21
	movl	$1, %edi
.Ltmp319:
	#DEBUG_VALUE: flv_create_writer:filename <- $rbx
	movl	$32, %esi
	callq	calloc@PLT
.Ltmp320:
	#DEBUG_VALUE: flv_create_writer:c <- $rax
	.loc	0 97 10                         # x264_src/output/flv_bytestream.c:97:10
	testq	%rax, %rax
.Ltmp321:
	.loc	0 97 9 is_stmt 0                # x264_src/output/flv_bytestream.c:97:9
	je	.LBB10_7
.Ltmp322:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: flv_create_writer:filename <- $rbx
	#DEBUG_VALUE: flv_create_writer:c <- $rax
	.loc	0 0 9                           # x264_src/output/flv_bytestream.c:0:9
	cmpb	$45, (%rbx)
	jne	.LBB10_4
.Ltmp323:
# %bb.2:                                # %if.end.tail
	#DEBUG_VALUE: flv_create_writer:filename <- $rbx
	#DEBUG_VALUE: flv_create_writer:c <- $rax
	.loc	0 101 10 is_stmt 1              # x264_src/output/flv_bytestream.c:101:10
	cmpb	$0, 1(%rbx)
.Ltmp324:
	.loc	0 101 9 is_stmt 0               # x264_src/output/flv_bytestream.c:101:9
	je	.LBB10_3
.Ltmp325:
.LBB10_4:                               # %if.else
	#DEBUG_VALUE: flv_create_writer:filename <- $rbx
	#DEBUG_VALUE: flv_create_writer:c <- $rax
	.loc	0 104 17 is_stmt 1              # x264_src/output/flv_bytestream.c:104:17
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbx
.Ltmp326:
	#DEBUG_VALUE: flv_create_writer:c <- $rbx
	#DEBUG_VALUE: flv_create_writer:filename <- $rdi
	callq	fopen64@PLT
.Ltmp327:
	#DEBUG_VALUE: flv_create_writer:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	movq	%rax, %rcx
	movq	%rbx, %rax
	.loc	0 0 0 is_stmt 0                 # x264_src/output/flv_bytestream.c:0:0
	movq	%rcx, 16(%rax)
.Ltmp328:
	.loc	0 105 10 is_stmt 1              # x264_src/output/flv_bytestream.c:105:10
	testq	%rcx, %rcx
.Ltmp329:
	.loc	0 105 9 is_stmt 0               # x264_src/output/flv_bytestream.c:105:9
	je	.LBB10_6
.Ltmp330:
.LBB10_8:                               # %cleanup
	#DEBUG_VALUE: flv_create_writer:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 112 1 epilogue_begin is_stmt 1 # x264_src/output/flv_bytestream.c:112:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp331:
.LBB10_3:                               # %if.then3
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: flv_create_writer:filename <- $rbx
	#DEBUG_VALUE: flv_create_writer:c <- $rax
	.loc	0 102 17                        # x264_src/output/flv_bytestream.c:102:17
	movq	stdout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	.loc	0 0 0 is_stmt 0                 # x264_src/output/flv_bytestream.c:0:0
	movq	%rcx, 16(%rax)
.Ltmp332:
	.loc	0 105 10 is_stmt 1              # x264_src/output/flv_bytestream.c:105:10
	testq	%rcx, %rcx
.Ltmp333:
	.loc	0 105 9 is_stmt 0               # x264_src/output/flv_bytestream.c:105:9
	jne	.LBB10_8
.Ltmp334:
.LBB10_6:                               # %if.then9
	#DEBUG_VALUE: flv_create_writer:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 107 9 is_stmt 1               # x264_src/output/flv_bytestream.c:107:9
	movq	%rax, %rdi
	callq	free@PLT
.Ltmp335:
.LBB10_7:                               # %cleanup
	#DEBUG_VALUE: flv_create_writer:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 9 is_stmt 0                 # x264_src/output/flv_bytestream.c:0:9
	xorl	%eax, %eax
	.loc	0 112 1 epilogue_begin is_stmt 1 # x264_src/output/flv_bytestream.c:112:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp336:
.Lfunc_end10:
	.size	flv_create_writer, .Lfunc_end10-flv_create_writer
	.cfi_endproc
	.file	9 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
                                        # -- End function
	.globl	rewrite_amf_be24                # -- Begin function rewrite_amf_be24
	.p2align	4, 0x90
	.type	rewrite_amf_be24,@function
rewrite_amf_be24:                       # @rewrite_amf_be24
.Lfunc_begin11:
	.loc	0 141 0                         # x264_src/output/flv_bytestream.c:141:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: rewrite_amf_be24:c <- $rdi
	#DEBUG_VALUE: rewrite_amf_be24:length <- $esi
	#DEBUG_VALUE: rewrite_amf_be24:start <- $edx
	movl	%esi, %eax
.Ltmp337:
	.loc	0 142 38 prologue_end           # x264_src/output/flv_bytestream.c:142:38
	movl	%esi, %ecx
	shrl	$16, %ecx
	.loc	0 142 11 is_stmt 0              # x264_src/output/flv_bytestream.c:142:11
	movq	(%rdi), %rsi
.Ltmp338:
	#DEBUG_VALUE: rewrite_amf_be24:length <- $eax
	.loc	0 142 16                        # x264_src/output/flv_bytestream.c:142:16
	movl	%edx, %edx
.Ltmp339:
	.loc	0 142 29                        # x264_src/output/flv_bytestream.c:142:29
	movb	%cl, (%rsi,%rdx)
	.loc	0 143 11 is_stmt 1              # x264_src/output/flv_bytestream.c:143:11
	movq	(%rdi), %rcx
	.loc	0 143 29 is_stmt 0              # x264_src/output/flv_bytestream.c:143:29
	movb	%ah, 1(%rcx,%rdx)
	.loc	0 144 11 is_stmt 1              # x264_src/output/flv_bytestream.c:144:11
	movq	(%rdi), %rcx
	.loc	0 144 29 is_stmt 0              # x264_src/output/flv_bytestream.c:144:29
	movb	%al, 2(%rcx,%rdx)
	.loc	0 145 1 is_stmt 1               # x264_src/output/flv_bytestream.c:145:1
	retq
.Ltmp340:
.Lfunc_end11:
	.size	rewrite_amf_be24, .Lfunc_end11-rewrite_amf_be24
	.cfi_endproc
                                        # -- End function
	.globl	flv_flush_data                  # -- Begin function flv_flush_data
	.p2align	4, 0x90
	.type	flv_flush_data,@function
flv_flush_data:                         # @flv_flush_data
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: flv_flush_data:c <- $rdi
	.loc	0 149 13 prologue_end           # x264_src/output/flv_bytestream.c:149:13
	movl	8(%rdi), %esi
	xorl	%eax, %eax
	testq	%rsi, %rsi
.Ltmp341:
	.loc	0 149 9 is_stmt 0               # x264_src/output/flv_bytestream.c:149:9
	je	.LBB12_4
.Ltmp342:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: flv_flush_data:c <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp343:
	.loc	0 152 20 is_stmt 1              # x264_src/output/flv_bytestream.c:152:20
	movq	(%rdi), %rdi
.Ltmp344:
	#DEBUG_VALUE: flv_flush_data:c <- $rbx
	.loc	0 152 42 is_stmt 0              # x264_src/output/flv_bytestream.c:152:42
	movq	16(%rbx), %rcx
	.loc	0 152 9                         # x264_src/output/flv_bytestream.c:152:9
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp345:
	movq	%rax, %rcx
	movl	$-1, %eax
	.loc	0 152 47                        # x264_src/output/flv_bytestream.c:152:47
	cmpq	$1, %rcx
.Ltmp346:
	.loc	0 152 9                         # x264_src/output/flv_bytestream.c:152:9
	jne	.LBB12_3
.Ltmp347:
# %bb.2:                                # %if.end4
	#DEBUG_VALUE: flv_flush_data:c <- $rbx
	.loc	0 155 22 is_stmt 1              # x264_src/output/flv_bytestream.c:155:22
	movl	8(%rbx), %eax
	.loc	0 155 16 is_stmt 0              # x264_src/output/flv_bytestream.c:155:16
	addq	%rax, 24(%rbx)
	.loc	0 157 14 is_stmt 1              # x264_src/output/flv_bytestream.c:157:14
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
.Ltmp348:
.LBB12_3:
	#DEBUG_VALUE: flv_flush_data:c <- $rbx
	.loc	0 0 14 is_stmt 0                # x264_src/output/flv_bytestream.c:0:14
	popq	%rbx
.Ltmp349:
	#DEBUG_VALUE: flv_flush_data:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB12_4:                               # %return
	#DEBUG_VALUE: flv_flush_data:c <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 160 1 is_stmt 1               # x264_src/output/flv_bytestream.c:160:1
	retq
.Ltmp350:
.Lfunc_end12:
	.size	flv_flush_data, .Lfunc_end12-flv_flush_data
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	118                             # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
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
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp222-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc84:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc85:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc86:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\263\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc87:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc88:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc89:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc90:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc91:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc92:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc93:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc94:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc95:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc96:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc97:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc98:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp273-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc99:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc100:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc101:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc102:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp278-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc103:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp280-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc104:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp299-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc105:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp309-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	148                             # DW_OP_deref_size
	.byte	16                              # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	97                              # DW_OP_reg17
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc106:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp299-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc107:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp299-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc108:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc109:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp302-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc110:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp305-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp309-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc111:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc112:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc113:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp331-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc114:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp320-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc115:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc116:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp339-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc117:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
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
	.byte	41                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xa35 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	101                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	100                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x33:0x4 DW_TAG_base_type
	.byte	99                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x37:0x7 DW_TAG_variable
	.long	62                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3e:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x43:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x4a:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x4e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x52:0xa DW_TAG_variable
	.long	92                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x5c:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x61:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x68:0x30 DW_TAG_enumeration_type
	.long	152                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x70:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x73:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x76:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x79:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x7c:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x7f:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x82:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x85:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x88:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x8b:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x8e:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x91:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	9                               # Abbrev [9] 0x94:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x98:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x9c:0x5 DW_TAG_pointer_type
	.long	161                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa1:0x8 DW_TAG_typedef
	.long	169                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa9:0x8 DW_TAG_typedef
	.long	177                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xb1:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xb5:0x1b DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2170                            # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xc1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.long	2178                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0xc8:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	97
	.long	2210                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xd0:0x3b DW_TAG_subprogram
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0xd8:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0xe0:0x8 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	156                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0xe8:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	152                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf0:0x8 DW_TAG_variable
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	152                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xf8:0x12 DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0xf9:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	152                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x101:0x8 DW_TAG_variable
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	695                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x10b:0x4 DW_TAG_base_type
	.byte	23                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x10f:0x5 DW_TAG_pointer_type
	.long	276                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x114:0x8 DW_TAG_typedef
	.long	284                             # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x11c:0x33 DW_TAG_structure_type
	.byte	74                              # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x121:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	156                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x12a:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	152                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x133:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	152                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x13c:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x145:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x14f:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x154:0x8 DW_TAG_typedef
	.long	348                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x15c:0x10b DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x161:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x16a:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x173:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x17c:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x185:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x18e:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x197:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1a0:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1a9:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1b2:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1bb:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1c4:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1cd:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	620                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1d6:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	627                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1df:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1e8:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1f1:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	632                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1fa:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	644                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x203:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	648                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x20c:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x215:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	664                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x21e:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	673                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x227:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	681                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x230:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	688                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x239:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	627                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x242:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	695                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x24b:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x254:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x25d:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x267:0x5 DW_TAG_pointer_type
	.long	74                              # DW_AT_type
	.byte	10                              # Abbrev [10] 0x26c:0x5 DW_TAG_pointer_type
	.long	625                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x271:0x2 DW_TAG_structure_type
	.byte	42                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x273:0x5 DW_TAG_pointer_type
	.long	348                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x278:0x8 DW_TAG_typedef
	.long	640                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x280:0x4 DW_TAG_base_type
	.byte	47                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x284:0x4 DW_TAG_base_type
	.byte	50                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x288:0x4 DW_TAG_base_type
	.byte	52                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x28c:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x291:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x298:0x5 DW_TAG_pointer_type
	.long	669                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x29d:0x4 DW_TAG_typedef
	.byte	55                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a1:0x8 DW_TAG_typedef
	.long	640                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2a9:0x5 DW_TAG_pointer_type
	.long	686                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2ae:0x2 DW_TAG_structure_type
	.byte	59                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x2b0:0x5 DW_TAG_pointer_type
	.long	693                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2b5:0x2 DW_TAG_structure_type
	.byte	61                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	23                              # Abbrev [23] 0x2b7:0x1 DW_TAG_pointer_type
	.byte	11                              # Abbrev [11] 0x2b8:0x8 DW_TAG_typedef
	.long	704                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x2c0:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x2c4:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2c9:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2d0:0x8 DW_TAG_typedef
	.long	728                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2d8:0x8 DW_TAG_typedef
	.long	704                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2e0:0x52 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	896                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2ec:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2f2:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x2f8:0x33 DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp1                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x305:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x30b:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x311:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x317:0x13 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp5                  # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x31d:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x323:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x32b:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x332:0x14 DW_TAG_subprogram
	.byte	79                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	551                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	695                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x33b:0x5 DW_TAG_formal_parameter
	.long	695                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x340:0x5 DW_TAG_formal_parameter
	.long	696                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x346:0x3a DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	208                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x352:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x358:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	224                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x35e:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x364:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x36a:0xf DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x36c:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x372:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x379:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x380:0x15 DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x384:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x38c:0x8 DW_TAG_formal_parameter
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	161                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x395:0x140 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x3a0:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x3a9:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	2608                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x3b2:0x43 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x3bb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3c2:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x3c8:0x2c DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x3d1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x3d8:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x3de:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x3e4:0xf DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x3e6:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x3ec:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x3f5:0x41 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x3fe:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x404:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x40a:0x2b DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x413:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x419:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x41f:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x425:0xf DW_TAG_lexical_block
	.byte	6                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x427:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x42d:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x436:0x41 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x43f:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x445:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x44b:0x2b DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	8                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x454:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x45a:0x6 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x460:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x466:0xf DW_TAG_lexical_block
	.byte	9                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x468:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x46e:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x477:0x45 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x480:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x486:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x48c:0x2f DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x495:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x49b:0x6 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4a1:0x6 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x4a7:0x13 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp106-.Ltmp99                # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x4ad:0x6 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4b3:0x6 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x4bc:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x4c2:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x4c8:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x4ce:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x4d5:0x25 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2223                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4e1:0x6 DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.long	2227                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4e7:0x6 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.long	2235                            # DW_AT_abstract_origin
	.byte	29                              # Abbrev [29] 0x4ed:0x6 DW_TAG_call_site
	.long	917                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x4f3:0x6 DW_TAG_call_site
	.long	917                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	16                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x4fa:0xad DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1447                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x506:0x6 DW_TAG_formal_parameter
	.byte	41                              # DW_AT_location
	.long	1451                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x50c:0x6 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_location
	.long	1459                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x512:0x43 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x51b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x522:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x528:0x2c DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x531:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x538:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x53e:0x6 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x544:0xf DW_TAG_lexical_block
	.byte	14                              # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x546:0x6 DW_TAG_variable
	.byte	45                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x54c:0x6 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x555:0x45 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	15                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	63                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x55e:0x6 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x564:0x6 DW_TAG_formal_parameter
	.byte	47                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x56a:0x2f DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	16                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x573:0x6 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x579:0x6 DW_TAG_formal_parameter
	.byte	50                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x57f:0x6 DW_TAG_variable
	.byte	51                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x585:0x13 DW_TAG_lexical_block
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp149-.Ltmp142               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x58b:0x6 DW_TAG_variable
	.byte	52                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x591:0x6 DW_TAG_variable
	.byte	53                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x59a:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x5a0:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x5a7:0x15 DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x5ab:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5b3:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	1468                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x5bc:0x8 DW_TAG_typedef
	.long	1476                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5c4:0x8 DW_TAG_typedef
	.long	644                             # DW_AT_type
	.byte	84                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x5cc:0x110 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x5d7:0x9 DW_TAG_formal_parameter
	.byte	54                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x5e0:0x9 DW_TAG_formal_parameter
	.byte	55                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	2608                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x5e9:0x9b DW_TAG_inlined_subroutine
	.long	1447                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	68                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x5f2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1451                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x5f9:0x6 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_location
	.long	1459                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x5ff:0x43 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x608:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x60f:0x6 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x615:0x2c DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	19                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x61e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x625:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x62b:0x6 DW_TAG_variable
	.byte	58                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x631:0xf DW_TAG_lexical_block
	.byte	20                              # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x633:0x6 DW_TAG_variable
	.byte	59                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x639:0x6 DW_TAG_variable
	.byte	60                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x642:0x41 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	21                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	63                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x64b:0x6 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x651:0x6 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x657:0x2b DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	22                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x660:0x6 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x666:0x6 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x66c:0x6 DW_TAG_variable
	.byte	65                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x672:0xf DW_TAG_lexical_block
	.byte	23                              # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x674:0x6 DW_TAG_variable
	.byte	66                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x67a:0x6 DW_TAG_variable
	.byte	67                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x684:0x45 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	24                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	69                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x68d:0x6 DW_TAG_formal_parameter
	.byte	69                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x693:0x6 DW_TAG_formal_parameter
	.byte	68                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x699:0x2f DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	25                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x6a2:0x6 DW_TAG_formal_parameter
	.byte	70                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x6a8:0x6 DW_TAG_formal_parameter
	.byte	71                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x6ae:0x6 DW_TAG_variable
	.byte	72                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x6b4:0x13 DW_TAG_lexical_block
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp205-.Ltmp198               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x6ba:0x6 DW_TAG_variable
	.byte	73                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x6c0:0x6 DW_TAG_variable
	.byte	74                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6c9:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6cf:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6d5:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x6dc:0x69 DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x6e7:0x9 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x6f0:0x9 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	2160                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6f9:0x45 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	26                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x702:0x6 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x708:0x6 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x70e:0x2f DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	27                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x717:0x6 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x71d:0x6 DW_TAG_formal_parameter
	.byte	80                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x723:0x6 DW_TAG_variable
	.byte	81                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x729:0x13 DW_TAG_lexical_block
	.byte	27                              # DW_AT_low_pc
	.long	.Ltmp232-.Ltmp225               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x72f:0x6 DW_TAG_variable
	.byte	82                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x735:0x6 DW_TAG_variable
	.byte	83                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x73e:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x745:0x11c DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x750:0x9 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x759:0x9 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	2160                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x762:0x9 DW_TAG_variable
	.byte	86                              # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	1468                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x76b:0xa8 DW_TAG_inlined_subroutine
	.long	1447                            # DW_AT_abstract_origin
	.byte	28                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	81                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x774:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1451                            # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x77b:0x13 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	127
	.byte	0
	.byte	168
	.asciz	"\263\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	159
	.long	1459                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x78e:0x43 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	29                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x797:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x79e:0x6 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x7a4:0x2c DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	30                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x7ad:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x7b4:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x7ba:0x6 DW_TAG_variable
	.byte	88                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7c0:0xf DW_TAG_lexical_block
	.byte	31                              # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x7c2:0x6 DW_TAG_variable
	.byte	89                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x7c8:0x6 DW_TAG_variable
	.byte	90                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x7d1:0x41 DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	32                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	63                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x7da:0x6 DW_TAG_formal_parameter
	.byte	92                              # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x7e0:0x6 DW_TAG_formal_parameter
	.byte	91                              # DW_AT_location
	.long	908                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x7e6:0x2b DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	33                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x7ef:0x6 DW_TAG_formal_parameter
	.byte	93                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x7f5:0x6 DW_TAG_formal_parameter
	.byte	94                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x7fb:0x6 DW_TAG_variable
	.byte	95                              # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x801:0xf DW_TAG_lexical_block
	.byte	34                              # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x803:0x6 DW_TAG_variable
	.byte	96                              # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x809:0x6 DW_TAG_variable
	.byte	97                              # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x813:0x35 DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	35                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	82                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x81c:0x6 DW_TAG_formal_parameter
	.byte	99                              # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x822:0x6 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_location
	.long	224                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x828:0x6 DW_TAG_formal_parameter
	.byte	98                              # DW_AT_location
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x82e:0x6 DW_TAG_variable
	.byte	101                             # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x834:0x13 DW_TAG_lexical_block
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp283-.Ltmp276               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x83a:0x6 DW_TAG_variable
	.byte	102                             # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x840:0x6 DW_TAG_variable
	.byte	103                             # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x848:0x6 DW_TAG_call_site
	.long	2145                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x84e:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x854:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x85a:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x861:0xf DW_TAG_subprogram
	.byte	86                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	704                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x86a:0x5 DW_TAG_formal_parameter
	.long	2160                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x870:0x5 DW_TAG_pointer_type
	.long	2165                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x875:0x5 DW_TAG_const_type
	.long	74                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x87a:0x31 DW_TAG_subprogram
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	720                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x882:0x8 DW_TAG_formal_parameter
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	2219                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x88a:0x18 DW_TAG_union_type
	.byte	93                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x88f:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	2219                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x898:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8a2:0x8 DW_TAG_variable
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	2186                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x8ab:0x4 DW_TAG_base_type
	.byte	89                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	33                              # Abbrev [33] 0x8af:0x15 DW_TAG_subprogram
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x8b3:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x8bb:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	720                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x8c4:0xa4 DW_TAG_subprogram
	.byte	35                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x8cf:0x9 DW_TAG_formal_parameter
	.byte	104                             # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8d8:0x9 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_location
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	2219                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x8e1:0x4d DW_TAG_inlined_subroutine
	.long	896                             # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp311-.Ltmp296               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	87                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x8ee:0x6 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_location
	.long	900                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x8f4:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	908                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x8fa:0x33 DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp311-.Ltmp296               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x907:0x6 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_location
	.long	216                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x90d:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	232                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x913:0x6 DW_TAG_variable
	.byte	108                             # DW_AT_location
	.long	240                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x919:0x13 DW_TAG_lexical_block
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp308-.Ltmp301               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x91f:0x6 DW_TAG_variable
	.byte	109                             # DW_AT_location
	.long	249                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x925:0x6 DW_TAG_variable
	.byte	110                             # DW_AT_location
	.long	257                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x92e:0xd DW_TAG_inlined_subroutine
	.long	2170                            # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp312-.Ltmp311               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	25                              # Abbrev [25] 0x93b:0x1a DW_TAG_inlined_subroutine
	.long	2223                            # DW_AT_abstract_origin
	.byte	39                              # DW_AT_low_pc
	.long	.Ltmp317-.Ltmp312               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x948:0x6 DW_TAG_formal_parameter
	.byte	112                             # DW_AT_location
	.long	2227                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x94e:0x6 DW_TAG_formal_parameter
	.byte	111                             # DW_AT_location
	.long	2235                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x955:0x6 DW_TAG_call_site
	.long	818                             # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x95b:0x6 DW_TAG_call_site
	.long	917                             # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x961:0x6 DW_TAG_call_site
	.long	917                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	42                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x968:0x2e DW_TAG_subprogram
	.byte	43                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	271                             # DW_AT_type
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x977:0x9 DW_TAG_formal_parameter
	.byte	113                             # DW_AT_location
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	2160                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x980:0x9 DW_TAG_variable
	.byte	114                             # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x989:0x6 DW_TAG_call_site
	.long	2454                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x98f:0x6 DW_TAG_call_site
	.long	2480                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x996:0x15 DW_TAG_subprogram
	.byte	95                              # DW_AT_linkage_name
	.byte	96                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x9a0:0x5 DW_TAG_formal_parameter
	.long	2475                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x9a5:0x5 DW_TAG_formal_parameter
	.long	2475                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x9ab:0x5 DW_TAG_restrict_type
	.long	2160                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0x9b0:0xb DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x9b5:0x5 DW_TAG_formal_parameter
	.long	695                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x9bb:0x28 DW_TAG_subprogram
	.byte	46                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x9c6:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x9d0:0x9 DW_TAG_formal_parameter
	.byte	115                             # DW_AT_location
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	152                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x9d9:0x9 DW_TAG_formal_parameter
	.byte	116                             # DW_AT_location
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	152                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9e3:0x1f DW_TAG_subprogram
	.byte	47                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x9f2:0x9 DW_TAG_formal_parameter
	.byte	117                             # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x9fb:0x6 DW_TAG_call_site
	.long	2562                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xa02:0x1e DW_TAG_subprogram
	.byte	98                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	681                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	704                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0xa0b:0x5 DW_TAG_formal_parameter
	.long	2592                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa10:0x5 DW_TAG_formal_parameter
	.long	696                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa15:0x5 DW_TAG_formal_parameter
	.long	696                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0xa1a:0x5 DW_TAG_formal_parameter
	.long	2603                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xa20:0x5 DW_TAG_restrict_type
	.long	2597                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa25:0x5 DW_TAG_pointer_type
	.long	2602                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0xa2a:0x1 DW_TAG_const_type
	.byte	44                              # Abbrev [44] 0xa2b:0x5 DW_TAG_restrict_type
	.long	335                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa30:0x8 DW_TAG_typedef
	.long	2616                            # DW_AT_type
	.byte	111                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa38:0x8 DW_TAG_typedef
	.long	152                             # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	36                              # Offset entry count
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
	.long	.Ldebug_ranges12-.Lrnglists_table_base0
	.long	.Ldebug_ranges13-.Lrnglists_table_base0
	.long	.Ldebug_ranges14-.Lrnglists_table_base0
	.long	.Ldebug_ranges15-.Lrnglists_table_base0
	.long	.Ldebug_ranges16-.Lrnglists_table_base0
	.long	.Ldebug_ranges17-.Lrnglists_table_base0
	.long	.Ldebug_ranges18-.Lrnglists_table_base0
	.long	.Ldebug_ranges19-.Lrnglists_table_base0
	.long	.Ldebug_ranges20-.Lrnglists_table_base0
	.long	.Ldebug_ranges21-.Lrnglists_table_base0
	.long	.Ldebug_ranges22-.Lrnglists_table_base0
	.long	.Ldebug_ranges23-.Lrnglists_table_base0
	.long	.Ldebug_ranges24-.Lrnglists_table_base0
	.long	.Ldebug_ranges25-.Lrnglists_table_base0
	.long	.Ldebug_ranges26-.Lrnglists_table_base0
	.long	.Ldebug_ranges27-.Lrnglists_table_base0
	.long	.Ldebug_ranges28-.Lrnglists_table_base0
	.long	.Ldebug_ranges29-.Lrnglists_table_base0
	.long	.Ldebug_ranges30-.Lrnglists_table_base0
	.long	.Ldebug_ranges31-.Lrnglists_table_base0
	.long	.Ldebug_ranges32-.Lrnglists_table_base0
	.long	.Ldebug_ranges33-.Lrnglists_table_base0
	.long	.Ldebug_ranges34-.Lrnglists_table_base0
	.long	.Ldebug_ranges35-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges9:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges10:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges11:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges12:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges13:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges14:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges15:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges16:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges17:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges18:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges19:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges20:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges21:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges22:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges23:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges24:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges25:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges26:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges27:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges28:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges29:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges30:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges31:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges32:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges33:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges34:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp257-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges35:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	480                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/output/flv_bytestream.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=138
.Linfo_string3:
	.asciz	"char"                          # string offset=172
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=177
.Linfo_string5:
	.asciz	"unsigned int"                  # string offset=197
.Linfo_string6:
	.asciz	"AMF_DATA_TYPE_NUMBER"          # string offset=210
.Linfo_string7:
	.asciz	"AMF_DATA_TYPE_BOOL"            # string offset=231
.Linfo_string8:
	.asciz	"AMF_DATA_TYPE_STRING"          # string offset=250
.Linfo_string9:
	.asciz	"AMF_DATA_TYPE_OBJECT"          # string offset=271
.Linfo_string10:
	.asciz	"AMF_DATA_TYPE_NULL"            # string offset=292
.Linfo_string11:
	.asciz	"AMF_DATA_TYPE_UNDEFINED"       # string offset=311
.Linfo_string12:
	.asciz	"AMF_DATA_TYPE_REFERENCE"       # string offset=335
.Linfo_string13:
	.asciz	"AMF_DATA_TYPE_MIXEDARRAY"      # string offset=359
.Linfo_string14:
	.asciz	"AMF_DATA_TYPE_OBJECT_END"      # string offset=384
.Linfo_string15:
	.asciz	"AMF_DATA_TYPE_ARRAY"           # string offset=409
.Linfo_string16:
	.asciz	"AMF_DATA_TYPE_DATE"            # string offset=429
.Linfo_string17:
	.asciz	"AMF_DATA_TYPE_LONG_STRING"     # string offset=448
.Linfo_string18:
	.asciz	"AMF_DATA_TYPE_UNSUPPORTED"     # string offset=474
.Linfo_string19:
	.asciz	"unsigned char"                 # string offset=500
.Linfo_string20:
	.asciz	"__uint8_t"                     # string offset=514
.Linfo_string21:
	.asciz	"uint8_t"                       # string offset=524
.Linfo_string22:
	.asciz	"flv_append_data"               # string offset=532
.Linfo_string23:
	.asciz	"int"                           # string offset=548
.Linfo_string24:
	.asciz	"c"                             # string offset=552
.Linfo_string25:
	.asciz	"data"                          # string offset=554
.Linfo_string26:
	.asciz	"d_cur"                         # string offset=559
.Linfo_string27:
	.asciz	"d_max"                         # string offset=565
.Linfo_string28:
	.asciz	"fp"                            # string offset=571
.Linfo_string29:
	.asciz	"_flags"                        # string offset=574
.Linfo_string30:
	.asciz	"_IO_read_ptr"                  # string offset=581
.Linfo_string31:
	.asciz	"_IO_read_end"                  # string offset=594
.Linfo_string32:
	.asciz	"_IO_read_base"                 # string offset=607
.Linfo_string33:
	.asciz	"_IO_write_base"                # string offset=621
.Linfo_string34:
	.asciz	"_IO_write_ptr"                 # string offset=636
.Linfo_string35:
	.asciz	"_IO_write_end"                 # string offset=650
.Linfo_string36:
	.asciz	"_IO_buf_base"                  # string offset=664
.Linfo_string37:
	.asciz	"_IO_buf_end"                   # string offset=677
.Linfo_string38:
	.asciz	"_IO_save_base"                 # string offset=689
.Linfo_string39:
	.asciz	"_IO_backup_base"               # string offset=703
.Linfo_string40:
	.asciz	"_IO_save_end"                  # string offset=719
.Linfo_string41:
	.asciz	"_markers"                      # string offset=732
.Linfo_string42:
	.asciz	"_IO_marker"                    # string offset=741
.Linfo_string43:
	.asciz	"_chain"                        # string offset=752
.Linfo_string44:
	.asciz	"_fileno"                       # string offset=759
.Linfo_string45:
	.asciz	"_flags2"                       # string offset=767
.Linfo_string46:
	.asciz	"_old_offset"                   # string offset=775
.Linfo_string47:
	.asciz	"long"                          # string offset=787
.Linfo_string48:
	.asciz	"__off_t"                       # string offset=792
.Linfo_string49:
	.asciz	"_cur_column"                   # string offset=800
.Linfo_string50:
	.asciz	"unsigned short"                # string offset=812
.Linfo_string51:
	.asciz	"_vtable_offset"                # string offset=827
.Linfo_string52:
	.asciz	"signed char"                   # string offset=842
.Linfo_string53:
	.asciz	"_shortbuf"                     # string offset=854
.Linfo_string54:
	.asciz	"_lock"                         # string offset=864
.Linfo_string55:
	.asciz	"_IO_lock_t"                    # string offset=870
.Linfo_string56:
	.asciz	"_offset"                       # string offset=881
.Linfo_string57:
	.asciz	"__off64_t"                     # string offset=889
.Linfo_string58:
	.asciz	"_codecvt"                      # string offset=899
.Linfo_string59:
	.asciz	"_IO_codecvt"                   # string offset=908
.Linfo_string60:
	.asciz	"_wide_data"                    # string offset=920
.Linfo_string61:
	.asciz	"_IO_wide_data"                 # string offset=931
.Linfo_string62:
	.asciz	"_freeres_list"                 # string offset=945
.Linfo_string63:
	.asciz	"_freeres_buf"                  # string offset=959
.Linfo_string64:
	.asciz	"__pad5"                        # string offset=972
.Linfo_string65:
	.asciz	"unsigned long"                 # string offset=979
.Linfo_string66:
	.asciz	"size_t"                        # string offset=993
.Linfo_string67:
	.asciz	"_mode"                         # string offset=1000
.Linfo_string68:
	.asciz	"_unused2"                      # string offset=1006
.Linfo_string69:
	.asciz	"_IO_FILE"                      # string offset=1015
.Linfo_string70:
	.asciz	"FILE"                          # string offset=1024
.Linfo_string71:
	.asciz	"d_total"                       # string offset=1029
.Linfo_string72:
	.asciz	"__uint64_t"                    # string offset=1037
.Linfo_string73:
	.asciz	"uint64_t"                      # string offset=1048
.Linfo_string74:
	.asciz	"flv_buffer"                    # string offset=1057
.Linfo_string75:
	.asciz	"size"                          # string offset=1068
.Linfo_string76:
	.asciz	"ns"                            # string offset=1073
.Linfo_string77:
	.asciz	"dn"                            # string offset=1076
.Linfo_string78:
	.asciz	"dp"                            # string offset=1079
.Linfo_string79:
	.asciz	"realloc"                       # string offset=1082
.Linfo_string80:
	.asciz	"x264_put_byte"                 # string offset=1090
.Linfo_string81:
	.asciz	"b"                             # string offset=1104
.Linfo_string82:
	.asciz	"x264_put_be16"                 # string offset=1106
.Linfo_string83:
	.asciz	"val"                           # string offset=1120
.Linfo_string84:
	.asciz	"__uint16_t"                    # string offset=1124
.Linfo_string85:
	.asciz	"uint16_t"                      # string offset=1135
.Linfo_string86:
	.asciz	"strlen"                        # string offset=1144
.Linfo_string87:
	.asciz	"dbl2int"                       # string offset=1151
.Linfo_string88:
	.asciz	"value"                         # string offset=1159
.Linfo_string89:
	.asciz	"double"                        # string offset=1165
.Linfo_string90:
	.asciz	"cvrt"                          # string offset=1172
.Linfo_string91:
	.asciz	"f"                             # string offset=1177
.Linfo_string92:
	.asciz	"i"                             # string offset=1179
.Linfo_string93:
	.asciz	"dbl2int_cvrt"                  # string offset=1181
.Linfo_string94:
	.asciz	"x264_put_be64"                 # string offset=1194
.Linfo_string95:
	.asciz	"fopen64"                       # string offset=1208
.Linfo_string96:
	.asciz	"fopen"                         # string offset=1216
.Linfo_string97:
	.asciz	"free"                          # string offset=1222
.Linfo_string98:
	.asciz	"fwrite"                        # string offset=1227
.Linfo_string99:
	.asciz	"DW_ATE_unsigned_64"            # string offset=1234
.Linfo_string100:
	.asciz	"DW_ATE_unsigned_16"            # string offset=1253
.Linfo_string101:
	.asciz	"DW_ATE_unsigned_32"            # string offset=1272
.Linfo_string102:
	.asciz	"x264_put_be32"                 # string offset=1291
.Linfo_string103:
	.asciz	"x264_put_be24"                 # string offset=1305
.Linfo_string104:
	.asciz	"x264_put_tag"                  # string offset=1319
.Linfo_string105:
	.asciz	"x264_put_amf_string"           # string offset=1332
.Linfo_string106:
	.asciz	"x264_put_amf_double"           # string offset=1352
.Linfo_string107:
	.asciz	"flv_create_writer"             # string offset=1372
.Linfo_string108:
	.asciz	"rewrite_amf_be24"              # string offset=1390
.Linfo_string109:
	.asciz	"flv_flush_data"                # string offset=1407
.Linfo_string110:
	.asciz	"__uint32_t"                    # string offset=1422
.Linfo_string111:
	.asciz	"uint32_t"                      # string offset=1433
.Linfo_string112:
	.asciz	"tag"                           # string offset=1442
.Linfo_string113:
	.asciz	"str"                           # string offset=1446
.Linfo_string114:
	.asciz	"len"                           # string offset=1450
.Linfo_string115:
	.asciz	"d"                             # string offset=1454
.Linfo_string116:
	.asciz	"filename"                      # string offset=1456
.Linfo_string117:
	.asciz	"length"                        # string offset=1465
.Linfo_string118:
	.asciz	"start"                         # string offset=1472
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str.1
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp1
	.quad	.Ltmp5
	.quad	.Ltmp9
	.quad	.Lfunc_begin2
	.quad	.Ltmp28
	.quad	.Lfunc_begin3
	.quad	.Ltmp99
	.quad	.Ltmp50
	.quad	.Ltmp65
	.quad	.Ltmp84
	.quad	.Ltmp103
	.quad	.Lfunc_begin4
	.quad	.Ltmp119
	.quad	.Ltmp121
	.quad	.Lfunc_begin5
	.quad	.Ltmp142
	.quad	.Ltmp131
	.quad	.Ltmp146
	.quad	.Lfunc_begin6
	.quad	.Ltmp198
	.quad	.Ltmp168
	.quad	.Ltmp183
	.quad	.Ltmp202
	.quad	.Lfunc_begin7
	.quad	.Ltmp225
	.quad	.Ltmp229
	.quad	.Lfunc_begin8
	.quad	.Ltmp276
	.quad	.Ltmp237
	.quad	.Ltmp246
	.quad	.Ltmp261
	.quad	.Ltmp280
	.quad	.Lfunc_begin9
	.quad	.Ltmp296
	.quad	.Ltmp301
	.quad	.Ltmp311
	.quad	.Ltmp312
	.quad	.Ltmp305
	.quad	.Ltmp313
	.quad	.Ltmp316
	.quad	.Lfunc_begin10
	.quad	.Ltmp327
	.quad	.Ltmp335
	.quad	.Lfunc_begin11
	.quad	.Lfunc_begin12
	.quad	.Ltmp345
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
