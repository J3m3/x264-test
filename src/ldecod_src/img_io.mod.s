	.text
	.file	"img_io.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/img_io.c" md5 0x99569d59820f92ac88e001283c87e3c7
	.file	1 "ldecod_src/inc" "io_video.h" md5 0x1141c07f1801ad27d87214c419749431
	.file	2 "ldecod_src/inc" "frame.h" md5 0xfd6ca9e1c707932f749220576db72b57
	.globl	ParseSizeFromString             # -- Begin function ParseSizeFromString
	.p2align	4, 0x90
	.type	ParseSizeFromString,@function
ParseSizeFromString:                    # @ParseSizeFromString
.Lfunc_begin0:
	.loc	0 47 0                          # ldecod_src/img_io.c:47:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $rdi
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $rsi
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rdx
	#DEBUG_VALUE: ParseSizeFromString:fps <- $rcx
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp0:
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	.loc	0 53 21 prologue_end            # ldecod_src/img_io.c:53:21
	movl	$-1, (%rdx)
	.loc	0 53 11 is_stmt 0               # ldecod_src/img_io.c:53:11
	movl	$-1, (%rsi)
.Ltmp1:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $r15
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r15
	.loc	0 55 13 is_stmt 1               # ldecod_src/img_io.c:55:13
	testq	%rdi, %rdi
	.loc	0 55 3 is_stmt 0                # ldecod_src/img_io.c:55:3
	je	.LBB0_20
.Ltmp2:
# %bb.1:                                # %while.body.preheader
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $r15
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r15
	.loc	0 0 3                           # ldecod_src/img_io.c:0:3
	movq	%rcx, %r13
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r15
.Ltmp3:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- undef
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
.Ltmp4:
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%r15, 32(%rsp)                  # 8-byte Spill
.Ltmp5:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 58 10 is_stmt 1               # ldecod_src/img_io.c:58:10
	movq	%r15, %rdi
	movl	$95, %esi
	callq	strchr@PLT
.Ltmp6:
	#DEBUG_VALUE: ParseSizeFromString:fps <- $r13
	.loc	0 59 12                         # ldecod_src/img_io.c:59:12
	testq	%rax, %rax
	sete	%r15b
.Ltmp7:
	.loc	0 59 9 is_stmt 0                # ldecod_src/img_io.c:59:9
	je	.LBB0_8
.Ltmp8:
# %bb.2:                                # %if.end.preheader
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- $r13
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 9                           # ldecod_src/img_io.c:0:9
	movq	%rax, %r12
	movq	%r13, 24(%rsp)                  # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	leaq	8(%rsp), %r13
	jmp	.LBB0_3
.Ltmp10:
	.p2align	4, 0x90
.LBB0_6:                                # %if.then15
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	.loc	0 76 11 is_stmt 1               # ldecod_src/img_io.c:76:11
	movb	$120, (%rbp)
.Ltmp11:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rdi
.LBB0_7:                                # %while.cond.backedge
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rdi
	#DEBUG_VALUE: ParseSizeFromString:p2 <- undef
	.loc	0 58 10                         # ldecod_src/img_io.c:58:10
	movl	$95, %esi
	callq	strchr@PLT
.Ltmp12:
	movq	%rax, %r12
.Ltmp13:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r12
	.loc	0 59 12                         # ldecod_src/img_io.c:59:12
	testq	%rax, %rax
	sete	%r15b
.Ltmp14:
	.loc	0 59 9 is_stmt 0                # ldecod_src/img_io.c:59:9
	je	.LBB0_8
.Ltmp15:
.LBB0_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	.loc	0 63 10 is_stmt 1               # ldecod_src/img_io.c:63:10
	movq	%r12, %rdi
	movl	$120, %esi
	callq	strchr@PLT
.Ltmp16:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rax
	.loc	0 66 12                         # ldecod_src/img_io.c:66:12
	testq	%rax, %rax
.Ltmp17:
	.loc	0 66 9 is_stmt 0                # ldecod_src/img_io.c:66:9
	je	.LBB0_8
.Ltmp18:
# %bb.4:                                # %if.end6
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rax
	.loc	0 0 0                           # ldecod_src/img_io.c:0:0
	movq	%rax, %rbp
	.loc	0 70 9 is_stmt 1                # ldecod_src/img_io.c:70:9
	movb	$0, (%rax)
	.loc	0 71 26                         # ldecod_src/img_io.c:71:26
	incq	%r12
	.loc	0 71 15 is_stmt 0               # ldecod_src/img_io.c:71:15
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp19:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	.loc	0 71 13                         # ldecod_src/img_io.c:71:13
	movl	%eax, (%r14)
.Ltmp20:
	.loc	0 74 10 is_stmt 1               # ldecod_src/img_io.c:74:10
	movq	8(%rsp), %rdi
	.loc	0 74 15 is_stmt 0               # ldecod_src/img_io.c:74:15
	cmpb	$0, (%rdi)
	.loc	0 74 23                         # ldecod_src/img_io.c:74:23
	jne	.LBB0_6
.Ltmp21:
# %bb.5:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	.loc	0 74 36                         # ldecod_src/img_io.c:74:36
	cmpb	$0, (%r12)
.Ltmp22:
	.loc	0 74 9                          # ldecod_src/img_io.c:74:9
	je	.LBB0_6
.Ltmp23:
# %bb.9:                                # %if.end16
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	.loc	0 82 9 is_stmt 1                # ldecod_src/img_io.c:82:9
	movb	$120, (%rbp)
	.loc	0 85 22                         # ldecod_src/img_io.c:85:22
	incq	%rbp
.Ltmp24:
	.loc	0 85 10 is_stmt 0               # ldecod_src/img_io.c:85:10
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	strpbrk@PLT
.Ltmp25:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rax
	.loc	0 87 12 is_stmt 1               # ldecod_src/img_io.c:87:12
	testq	%rax, %rax
.Ltmp26:
	.loc	0 87 9 is_stmt 0                # ldecod_src/img_io.c:87:9
	je	.LBB0_10
.Ltmp27:
# %bb.11:                               # %if.end23
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rax
	.loc	0 0 0                           # ldecod_src/img_io.c:0:0
	movq	%rax, %r12
	.loc	0 94 9 is_stmt 1                # ldecod_src/img_io.c:94:9
	movzbl	(%rax), %ebx
.Ltmp28:
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 95 9                          # ldecod_src/img_io.c:95:9
	movb	$0, (%rax)
	.loc	0 96 15                         # ldecod_src/img_io.c:96:15
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp29:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r12
	.loc	0 0 15 is_stmt 0                # ldecod_src/img_io.c:0:15
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 96 13                         # ldecod_src/img_io.c:96:13
	movl	%eax, (%rcx)
.Ltmp30:
	.loc	0 99 10 is_stmt 1               # ldecod_src/img_io.c:99:10
	movq	8(%rsp), %rdi
	.loc	0 99 15 is_stmt 0               # ldecod_src/img_io.c:99:15
	cmpb	$0, (%rdi)
	.loc	0 99 23                         # ldecod_src/img_io.c:99:23
	je	.LBB0_12
.Ltmp31:
.LBB0_13:                               # %if.then35
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r12
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 101 11 is_stmt 1              # ldecod_src/img_io.c:101:11
	movb	%bl, (%r12)
.Ltmp32:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rdi
	.loc	0 103 7                         # ldecod_src/img_io.c:103:7
	jmp	.LBB0_7
.Ltmp33:
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rax
	.loc	0 0 7 is_stmt 0                 # ldecod_src/img_io.c:0:7
	movq	%rbp, %rdi
	.loc	0 87 9 is_stmt 1                # ldecod_src/img_io.c:87:9
	jmp	.LBB0_7
.Ltmp34:
.LBB0_12:                               # %lor.lhs.false30
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r12
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 99 36                         # ldecod_src/img_io.c:99:36
	cmpb	$0, (%rbp)
.Ltmp35:
	.loc	0 99 9 is_stmt 0                # ldecod_src/img_io.c:99:9
	je	.LBB0_13
.Ltmp36:
# %bb.14:                               # %if.end36
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $r12
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 107 9 is_stmt 1               # ldecod_src/img_io.c:107:9
	movb	%bl, (%r12)
	.loc	0 110 21                        # ldecod_src/img_io.c:110:21
	incq	%r12
.Ltmp37:
	.loc	0 110 10 is_stmt 0              # ldecod_src/img_io.c:110:10
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	strstr@PLT
.Ltmp38:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rax
	.loc	0 113 12 is_stmt 1              # ldecod_src/img_io.c:113:12
	testq	%rax, %rax
.Ltmp39:
	.loc	0 113 9 is_stmt 0               # ldecod_src/img_io.c:113:9
	je	.LBB0_8
.Ltmp40:
# %bb.15:                               # %if.end42
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rax
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 0 0                           # ldecod_src/img_io.c:0:0
	movq	%rax, %rbp
	.loc	0 117 9 is_stmt 1               # ldecod_src/img_io.c:117:9
	movzbl	(%rax), %ebx
.Ltmp41:
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 118 9                         # ldecod_src/img_io.c:118:9
	movb	$0, (%rax)
	.loc	0 119 12                        # ldecod_src/img_io.c:119:12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strtod@PLT
.Ltmp42:
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	.loc	0 0 12 is_stmt 0                # ldecod_src/img_io.c:0:12
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	0 119 10                        # ldecod_src/img_io.c:119:10
	movsd	%xmm0, (%rax)
.Ltmp43:
	.loc	0 122 10 is_stmt 1              # ldecod_src/img_io.c:122:10
	movq	8(%rsp), %rdi
	.loc	0 122 15 is_stmt 0              # ldecod_src/img_io.c:122:15
	cmpb	$0, (%rdi)
	.loc	0 122 23                        # ldecod_src/img_io.c:122:23
	jne	.LBB0_17
.Ltmp44:
# %bb.16:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 122 36                        # ldecod_src/img_io.c:122:36
	cmpb	$0, (%r12)
.Ltmp45:
	.loc	0 122 9                         # ldecod_src/img_io.c:122:9
	jne	.LBB0_18
.Ltmp46:
.LBB0_17:                               # %if.then53
                                        #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 124 11 is_stmt 1              # ldecod_src/img_io.c:124:11
	movb	%bl, (%rbp)
.Ltmp47:
	#DEBUG_VALUE: ParseSizeFromString:p1 <- $rdi
	.loc	0 126 7                         # ldecod_src/img_io.c:126:7
	jmp	.LBB0_7
.Ltmp48:
.LBB0_8:                                # %while.end.loopexit
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	.loc	0 0 7 is_stmt 0                 # ldecod_src/img_io.c:0:7
	movl	%r15d, %eax
	xorb	$1, %al
.Ltmp49:
.LBB0_19:                               # %while.end
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p1 <- undef
	#DEBUG_VALUE: ParseSizeFromString:p2 <- undef
	.loc	0 135 18 is_stmt 1              # ldecod_src/img_io.c:135:18
	orb	%al, %r15b
	testb	$1, %r15b
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_32
.Ltmp50:
.LBB0_20:                               # %for.body.preheader
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp51:
	.loc	0 0 11 is_stmt 0                # ldecod_src/img_io.c:0:11
	movl	$VideoRes, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp52:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 0
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp53:
# %bb.21:                               # %for.cond
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 0
	#DEBUG_VALUE: ParseSizeFromString:i <- 1
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp54:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+16, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp55:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 1
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp56:
# %bb.22:                               # %for.cond.1
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 1
	#DEBUG_VALUE: ParseSizeFromString:i <- 2
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp57:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+32, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp58:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 2
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp59:
# %bb.23:                               # %for.cond.2
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 2
	#DEBUG_VALUE: ParseSizeFromString:i <- 3
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp60:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+48, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp61:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 3
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp62:
# %bb.24:                               # %for.cond.3
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 3
	#DEBUG_VALUE: ParseSizeFromString:i <- 4
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp63:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+64, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp64:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 4
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp65:
# %bb.25:                               # %for.cond.4
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 4
	#DEBUG_VALUE: ParseSizeFromString:i <- 5
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp66:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+80, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp67:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 5
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp68:
# %bb.26:                               # %for.cond.5
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 5
	#DEBUG_VALUE: ParseSizeFromString:i <- 6
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.21, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp69:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+96, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp70:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 6
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp71:
# %bb.27:                               # %for.cond.6
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 6
	#DEBUG_VALUE: ParseSizeFromString:i <- 7
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp72:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+112, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp73:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 7
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp74:
# %bb.28:                               # %for.cond.7
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 7
	#DEBUG_VALUE: ParseSizeFromString:i <- 8
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp75:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+128, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp76:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 8
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp77:
# %bb.29:                               # %for.cond.8
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 8
	#DEBUG_VALUE: ParseSizeFromString:i <- 9
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp78:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+144, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp79:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 9
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	jne	.LBB0_31
.Ltmp80:
# %bb.30:                               # %for.cond.9
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 9
	#DEBUG_VALUE: ParseSizeFromString:i <- 10
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
.Ltmp81:
	.loc	0 0 11                          # ldecod_src/img_io.c:0:11
	movl	$VideoRes+160, %ecx
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	testl	%eax, %eax
.Ltmp82:
	#DEBUG_VALUE: ParseSizeFromString:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] 10
	.loc	0 139 11                        # ldecod_src/img_io.c:139:11
	je	.LBB0_32
.Ltmp83:
.LBB0_31:                               # %if.then67
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	.loc	0 141 31 is_stmt 1              # ldecod_src/img_io.c:141:31
	movl	8(%rcx), %eax
	.loc	0 141 17 is_stmt 0              # ldecod_src/img_io.c:141:17
	movl	%eax, (%r14)
	.loc	0 142 31 is_stmt 1              # ldecod_src/img_io.c:142:31
	movl	12(%rcx), %eax
	.loc	0 142 17 is_stmt 0              # ldecod_src/img_io.c:142:17
	movl	%eax, (%rbx)
.Ltmp84:
.LBB0_32:                               # %if.end75
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	.loc	0 149 19 is_stmt 1              # ldecod_src/img_io.c:149:19
	cmpl	$-1, (%r14)
	.loc	0 149 25 is_stmt 0              # ldecod_src/img_io.c:149:25
	je	.LBB0_33
.Ltmp85:
# %bb.34:                               # %lor.rhs
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	.loc	0 149 36                        # ldecod_src/img_io.c:149:36
	xorl	%eax, %eax
	cmpl	$-1, (%rbx)
	setne	%al
	jmp	.LBB0_35
.Ltmp86:
.LBB0_33:
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	.loc	0 0 36                          # ldecod_src/img_io.c:0:36
	xorl	%eax, %eax
.Ltmp87:
.LBB0_35:                               # %lor.end
	#DEBUG_VALUE: ParseSizeFromString:input_file <- $r15
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- $rbx
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ParseSizeFromString:fn <- $r15
	.loc	0 149 3 epilogue_begin          # ldecod_src/img_io.c:149:3
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp88:
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp89:
	#DEBUG_VALUE: ParseSizeFromString:x_size <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp90:
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp91:
.LBB0_18:                               # %if.end54
	.cfi_def_cfa_offset 96
	#DEBUG_VALUE: ParseSizeFromString:input_file <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:x_size <- $r14
	#DEBUG_VALUE: ParseSizeFromString:y_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fps <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: ParseSizeFromString:fn <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseSizeFromString:i <- 0
	#DEBUG_VALUE: ParseSizeFromString:p2 <- $rbp
	#DEBUG_VALUE: ParseSizeFromString:c <- $bl
	.loc	0 130 9 is_stmt 1               # ldecod_src/img_io.c:130:9
	movb	%bl, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_19
.Ltmp92:
.Lfunc_end0:
	.size	ParseSizeFromString, .Lfunc_end0-ParseSizeFromString
	.cfi_endproc
	.file	3 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	4 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.globl	ParseFrameNoFormatFromString    # -- Begin function ParseFrameNoFormatFromString
	.p2align	4, 0x90
	.type	ParseFrameNoFormatFromString,@function
ParseFrameNoFormatFromString:           # @ParseFrameNoFormatFromString
.Lfunc_begin1:
	.loc	0 160 0                         # ldecod_src/img_io.c:160:0
	.cfi_startproc
# %bb.0:                                # %while.body.lr.ph
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rdi
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
	movq	%rdi, %rbx
.Ltmp93:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- undef
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- undef
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
.Ltmp94:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:num_digits <- undef
	.loc	0 168 13 prologue_end           # ldecod_src/img_io.c:168:13
	movq	%rax, 920(%rdi)
.Ltmp95:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p1 <- $rbx
	.loc	0 174 10                        # ldecod_src/img_io.c:174:10
	movl	$37, %esi
	callq	strchr@PLT
.Ltmp96:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	.loc	0 175 12                        # ldecod_src/img_io.c:175:12
	testq	%rax, %rax
.Ltmp97:
	.loc	0 175 9 is_stmt 0               # ldecod_src/img_io.c:175:9
	je	.LBB1_9
.Ltmp98:
# %bb.1:                                # %if.end.preheader
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p1 <- $rbx
	.loc	0 0 9                           # ldecod_src/img_io.c:0:9
	movq	%rax, %r13
	leaq	255(%rbx), %r15
.Ltmp99:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	leaq	510(%rbx), %rax
.Ltmp100:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	16(%rsp), %r12
	jmp	.LBB1_2
.Ltmp101:
	.p2align	4, 0x90
.LBB1_5:                                # %if.end17
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rbp
	incq	%r13
	.loc	0 193 19 is_stmt 1              # ldecod_src/img_io.c:193:19
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp102:
	.loc	0 193 17 is_stmt 0              # ldecod_src/img_io.c:193:17
	movl	%eax, 924(%rbx)
.Ltmp103:
	.loc	0 196 10 is_stmt 1              # ldecod_src/img_io.c:196:10
	movq	16(%rsp), %r14
	.loc	0 196 15 is_stmt 0              # ldecod_src/img_io.c:196:15
	cmpb	$0, (%r14)
	.loc	0 196 23                        # ldecod_src/img_io.c:196:23
	je	.LBB1_6
.Ltmp104:
.LBB1_7:                                # %if.then28
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rbp
	.loc	0 198 11 is_stmt 1              # ldecod_src/img_io.c:198:11
	movb	$100, (%rbp)
.Ltmp105:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- undef
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p1 <- $r14
	.loc	0 174 10                        # ldecod_src/img_io.c:174:10
	movq	%r14, %rdi
	movl	$37, %esi
	callq	strchr@PLT
.Ltmp106:
	movq	%rax, %r13
.Ltmp107:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p1 <- $r13
	.loc	0 175 12                        # ldecod_src/img_io.c:175:12
	testq	%rax, %rax
.Ltmp108:
	.loc	0 175 9 is_stmt 0               # ldecod_src/img_io.c:175:9
	je	.LBB1_9
.Ltmp109:
.LBB1_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	.loc	0 178 27 is_stmt 1              # ldecod_src/img_io.c:178:27
	movq	%r13, %rdx
	subq	%rbx, %rdx
	.loc	0 178 5 is_stmt 0               # ldecod_src/img_io.c:178:5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strncpy@PLT
.Ltmp110:
	.loc	0 181 10 is_stmt 1              # ldecod_src/img_io.c:181:10
	movq	%r13, %rdi
	movl	$100, %esi
	callq	strchr@PLT
.Ltmp111:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rax
	.loc	0 184 12                        # ldecod_src/img_io.c:184:12
	testq	%rax, %rax
.Ltmp112:
	.loc	0 184 9 is_stmt 0               # ldecod_src/img_io.c:184:9
	je	.LBB1_9
.Ltmp113:
# %bb.3:                                # %if.end13
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rax
	.loc	0 0 0                           # ldecod_src/img_io.c:0:0
	movq	%rax, %rbp
	.loc	0 188 9 is_stmt 1               # ldecod_src/img_io.c:188:9
	movb	$0, (%rax)
.Ltmp114:
	.loc	0 190 19                        # ldecod_src/img_io.c:190:19
	cmpb	$48, 1(%r13)
.Ltmp115:
	.loc	0 190 9 is_stmt 0               # ldecod_src/img_io.c:190:9
	jne	.LBB1_5
.Ltmp116:
# %bb.4:                                # %if.then16
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rbp
	.loc	0 191 17 is_stmt 1              # ldecod_src/img_io.c:191:17
	movl	$1, 920(%rbx)
	jmp	.LBB1_5
.Ltmp117:
	.p2align	4, 0x90
.LBB1_6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rbp
	.loc	0 196 36                        # ldecod_src/img_io.c:196:36
	cmpb	$0, (%r13)
.Ltmp118:
	.loc	0 196 9 is_stmt 0               # ldecod_src/img_io.c:196:9
	je	.LBB1_7
.Ltmp119:
# %bb.8:                                # %if.end29
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fhead <- $r15
	#DEBUG_VALUE: ParseFrameNoFormatFromString:ftail <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:p2 <- $rbp
	.loc	0 204 9 is_stmt 1               # ldecod_src/img_io.c:204:9
	movb	$100, (%rbp)
	.loc	0 206 9                         # ldecod_src/img_io.c:206:9
	incq	%r14
.Ltmp120:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:tail <- $r14
	.loc	0 207 32                        # ldecod_src/img_io.c:207:32
	movq	%r14, %rdi
	callq	strlen@PLT
.Ltmp121:
	.loc	0 207 26 is_stmt 0              # ldecod_src/img_io.c:207:26
	movslq	%eax, %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	.loc	0 207 5                         # ldecod_src/img_io.c:207:5
	movq	%r14, %rsi
	callq	strncpy@PLT
.Ltmp122:
.LBB1_9:                                # %while.end
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	.loc	0 0 5                           # ldecod_src/img_io.c:0:5
	xorl	%eax, %eax
.Ltmp123:
	.loc	0 211 26 is_stmt 1              # ldecod_src/img_io.c:211:26
	cmpl	$3, 772(%rbx)
.Ltmp124:
	.loc	0 211 7 is_stmt 0               # ldecod_src/img_io.c:211:7
	je	.LBB1_11
.Ltmp125:
# %bb.10:                               # %if.else
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	.loc	0 216 48 is_stmt 1              # ldecod_src/img_io.c:216:48
	xorl	%eax, %eax
	cmpl	$-1, 924(%rbx)
	sete	%al
.Ltmp126:
.LBB1_11:                               # %if.end40
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:fn <- $rbx
	#DEBUG_VALUE: ParseFrameNoFormatFromString:zero_pad <- [DW_OP_plus_uconst 920, DW_OP_stack_value] $rbx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/img_io.c:0:0
	movl	%eax, 912(%rbx)
.Ltmp127:
	.loc	0 217 1 epilogue_begin is_stmt 1 # ldecod_src/img_io.c:217:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp128:
	#DEBUG_VALUE: ParseFrameNoFormatFromString:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp129:
.Lfunc_end1:
	.size	ParseFrameNoFormatFromString, .Lfunc_end1-ParseFrameNoFormatFromString
	.cfi_endproc
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	OpenFrameFile                   # -- Begin function OpenFrameFile
	.p2align	4, 0x90
	.type	OpenFrameFile,@function
OpenFrameFile:                          # @OpenFrameFile
.Lfunc_begin2:
	.loc	0 226 0                         # ldecod_src/img_io.c:226:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: OpenFrameFile:input_file <- $rdi
	#DEBUG_VALUE: OpenFrameFile:FrameNumberInFile <- $esi
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
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp130:
	#DEBUG_VALUE: OpenFrameFile:length <- 0
	.loc	0 229 20 prologue_end           # ldecod_src/img_io.c:229:20
	movb	$0, (%rsp)
	.loc	0 230 37                        # ldecod_src/img_io.c:230:37
	leaq	255(%rdi), %r12
	.loc	0 230 18 is_stmt 0              # ldecod_src/img_io.c:230:18
	movq	%r12, %rdi
.Ltmp131:
	#DEBUG_VALUE: OpenFrameFile:input_file <- $rbx
	callq	strlen@PLT
.Ltmp132:
	#DEBUG_VALUE: OpenFrameFile:FrameNumberInFile <- $ebp
	#DEBUG_VALUE: OpenFrameFile:length <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $rax
	.loc	0 231 38 is_stmt 1              # ldecod_src/img_io.c:231:38
	movslq	%eax, %r15
	leaq	16(%rsp), %r14
	.loc	0 231 3 is_stmt 0               # ldecod_src/img_io.c:231:3
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	strncpy@PLT
.Ltmp133:
	.loc	0 232 17 is_stmt 1              # ldecod_src/img_io.c:232:17
	movb	$0, 16(%rsp,%r15)
.Ltmp134:
	.loc	0 233 7                         # ldecod_src/img_io.c:233:7
	cmpl	$0, 920(%rbx)
	.loc	0 0 0 is_stmt 0                 # ldecod_src/img_io.c:0:0
	movl	924(%rbx), %ecx
	movl	$.L.str.7, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movq	%rsp, %r12
	movl	$16, %esi
	movq	%r12, %rdi
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp135:
	.loc	0 238 3 is_stmt 1               # ldecod_src/img_io.c:238:3
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strncat@PLT
.Ltmp136:
	.loc	0 239 10                        # ldecod_src/img_io.c:239:10
	leal	16(%r15), %eax
.Ltmp137:
	#DEBUG_VALUE: OpenFrameFile:length <- $eax
	.loc	0 240 3                         # ldecod_src/img_io.c:240:3
	cltq
.Ltmp138:
	.loc	0 240 17 is_stmt 0              # ldecod_src/img_io.c:240:17
	movb	$0, 16(%rsp,%rax)
	.loc	0 241 31 is_stmt 1              # ldecod_src/img_io.c:241:31
	leaq	510(%rbx), %r12
	.loc	0 241 38 is_stmt 0              # ldecod_src/img_io.c:241:38
	movq	%r12, %rdi
	callq	strlen@PLT
.Ltmp139:
	movq	%rax, %r13
	.loc	0 241 3                         # ldecod_src/img_io.c:241:3
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	strncat@PLT
.Ltmp140:
	.loc	0 242 10 is_stmt 1              # ldecod_src/img_io.c:242:10
	leal	(%r15,%r13), %eax
	addl	$16, %eax
.Ltmp141:
	#DEBUG_VALUE: OpenFrameFile:length <- $eax
	.loc	0 243 3                         # ldecod_src/img_io.c:243:3
	cltq
.Ltmp142:
	.loc	0 243 17 is_stmt 0              # ldecod_src/img_io.c:243:17
	movb	$0, 16(%rsp,%rax)
.Ltmp143:
	.loc	0 245 28 is_stmt 1              # ldecod_src/img_io.c:245:28
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
.Ltmp144:
	.loc	0 245 26 is_stmt 0              # ldecod_src/img_io.c:245:26
	movl	%eax, 768(%rbx)
	.loc	0 245 58                        # ldecod_src/img_io.c:245:58
	cmpl	$-1, %eax
.Ltmp145:
	.loc	0 245 7                         # ldecod_src/img_io.c:245:7
	jne	.LBB2_2
.Ltmp146:
# %bb.1:                                # %if.then36
	#DEBUG_VALUE: OpenFrameFile:input_file <- $rbx
	#DEBUG_VALUE: OpenFrameFile:FrameNumberInFile <- $ebp
	.loc	0 0 7                           # ldecod_src/img_io.c:0:7
	leaq	16(%rsp), %rsi
.Ltmp147:
	.loc	0 247 5 is_stmt 1               # ldecod_src/img_io.c:247:5
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp148:
	.loc	0 248 5                         # ldecod_src/img_io.c:248:5
	callq	report_stats_on_error@PLT
.Ltmp149:
.LBB2_2:                                # %if.end39
	#DEBUG_VALUE: OpenFrameFile:input_file <- $rbx
	#DEBUG_VALUE: OpenFrameFile:FrameNumberInFile <- $ebp
	.loc	0 250 1 epilogue_begin          # ldecod_src/img_io.c:250:1
	addq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp150:
	#DEBUG_VALUE: OpenFrameFile:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp151:
	#DEBUG_VALUE: OpenFrameFile:FrameNumberInFile <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp152:
.Lfunc_end2:
	.size	OpenFrameFile, .Lfunc_end2-OpenFrameFile
	.cfi_endproc
	.file	6 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	7 "/usr/include" "fcntl.h" md5 0x1a9bb91818c37dc7bc291ca6e49fc221
	.file	8 "ldecod_src/inc" "report.h" md5 0xa98963f4c391ce641c06f3255ae22ee2
                                        # -- End function
	.globl	OpenFiles                       # -- Begin function OpenFiles
	.p2align	4, 0x90
	.type	OpenFiles,@function
OpenFiles:                              # @OpenFiles
.Lfunc_begin3:
	.loc	0 259 0                         # ldecod_src/img_io.c:259:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: OpenFiles:input_file <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 260 35 prologue_end           # ldecod_src/img_io.c:260:35
	cmpl	$1, 912(%rdi)
.Ltmp153:
	.loc	0 260 7 is_stmt 0               # ldecod_src/img_io.c:260:7
	jne	.LBB3_4
.Ltmp154:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: OpenFiles:input_file <- $rdi
	.loc	0 0 7                           # ldecod_src/img_io.c:0:7
	movq	%rdi, %rbx
.Ltmp155:
	.loc	0 262 15 is_stmt 1              # ldecod_src/img_io.c:262:15
	callq	strlen@PLT
.Ltmp156:
	#DEBUG_VALUE: OpenFiles:input_file <- $rbx
	.loc	0 262 41 is_stmt 0              # ldecod_src/img_io.c:262:41
	testl	%eax, %eax
.Ltmp157:
	.loc	0 262 9                         # ldecod_src/img_io.c:262:9
	jne	.LBB3_3
.Ltmp158:
# %bb.2:                                # %if.then3
	#DEBUG_VALUE: OpenFiles:input_file <- $rbx
	.loc	0 264 7 is_stmt 1               # ldecod_src/img_io.c:264:7
	movups	.L.str.9+44(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movups	%xmm0, 44(%rdi)
	movups	.L.str.9+32(%rip), %xmm0
	movaps	%xmm0, 32(%rdi)
	movups	.L.str.9+16(%rip), %xmm0
	movaps	%xmm0, 16(%rdi)
	movups	.L.str.9(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	.loc	0 265 7                         # ldecod_src/img_io.c:265:7
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.Ltmp159:
.LBB3_3:                                # %if.end
	#DEBUG_VALUE: OpenFiles:input_file <- $rbx
	.loc	0 268 30                        # ldecod_src/img_io.c:268:30
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
.Ltmp160:
	.loc	0 268 28 is_stmt 0              # ldecod_src/img_io.c:268:28
	movl	%eax, 768(%rbx)
	.loc	0 268 71                        # ldecod_src/img_io.c:268:71
	cmpl	$-1, %eax
.Ltmp161:
	.loc	0 268 9                         # ldecod_src/img_io.c:268:9
	je	.LBB3_5
.Ltmp162:
.LBB3_4:                                # %if.end15
	#DEBUG_VALUE: OpenFiles:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 274 1 epilogue_begin is_stmt 1 # ldecod_src/img_io.c:274:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp163:
.LBB3_5:                                # %if.then10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: OpenFiles:input_file <- $rbx
	.loc	0 270 7                         # ldecod_src/img_io.c:270:7
	movq	errortext@GOTPCREL(%rip), %r14
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp164:
	.loc	0 271 7                         # ldecod_src/img_io.c:271:7
	movq	%r14, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	.loc	0 271 7 epilogue_begin is_stmt 0 # ldecod_src/img_io.c:271:7
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp165:
	#DEBUG_VALUE: OpenFiles:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.Ltmp166:
	jmp	error@PLT                       # TAILCALL
.Ltmp167:
.Lfunc_end3:
	.size	OpenFiles, .Lfunc_end3-OpenFiles
	.cfi_endproc
	.file	9 "ldecod_src/inc" "global.h" md5 0xc4ca3c417c5616a2ff6b6266e7376fc1
                                        # -- End function
	.globl	CloseFiles                      # -- Begin function CloseFiles
	.p2align	4, 0x90
	.type	CloseFiles,@function
CloseFiles:                             # @CloseFiles
.Lfunc_begin4:
	.loc	0 283 0 is_stmt 1               # ldecod_src/img_io.c:283:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: CloseFiles:input_file <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp168:
	.loc	0 284 19 prologue_end           # ldecod_src/img_io.c:284:19
	movl	768(%rdi), %edi
.Ltmp169:
	#DEBUG_VALUE: CloseFiles:input_file <- $rbx
	.loc	0 284 25 is_stmt 0              # ldecod_src/img_io.c:284:25
	cmpl	$-1, %edi
.Ltmp170:
	.loc	0 284 7                         # ldecod_src/img_io.c:284:7
	je	.LBB4_2
.Ltmp171:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: CloseFiles:input_file <- $rbx
	.loc	0 285 5 is_stmt 1               # ldecod_src/img_io.c:285:5
	callq	close@PLT
.Ltmp172:
.LBB4_2:                                # %if.end
	#DEBUG_VALUE: CloseFiles:input_file <- $rbx
	.loc	0 286 21                        # ldecod_src/img_io.c:286:21
	movl	$-1, 768(%rbx)
	.loc	0 287 1 epilogue_begin          # ldecod_src/img_io.c:287:1
	popq	%rbx
.Ltmp173:
	#DEBUG_VALUE: CloseFiles:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp174:
.Lfunc_end4:
	.size	CloseFiles, .Lfunc_end4-CloseFiles
	.cfi_endproc
	.file	10 "/usr/include" "unistd.h" md5 0xed37c2e6f30ba31a8b41e4d70547c39c
                                        # -- End function
	.globl	ParseVideoType                  # -- Begin function ParseVideoType
	.p2align	4, 0x90
	.type	ParseVideoType,@function
ParseVideoType:                         # @ParseVideoType
.Lfunc_begin5:
	.loc	0 296 0                         # ldecod_src/img_io.c:296:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ParseVideoType:input_file <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
.Ltmp175:
	.loc	0 299 38 prologue_end           # ldecod_src/img_io.c:299:38
	callq	strlen@PLT
.Ltmp176:
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	.loc	0 299 30 is_stmt 0              # ldecod_src/img_io.c:299:30
	cltq
	.loc	0 299 64                        # ldecod_src/img_io.c:299:64
	leaq	(%rbx,%rax), %r14
	addq	$-3, %r14
.Ltmp177:
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 301 7 is_stmt 1               # ldecod_src/img_io.c:301:7
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
.Ltmp178:
	.loc	0 301 30 is_stmt 0              # ldecod_src/img_io.c:301:30
	testl	%eax, %eax
.Ltmp179:
	.loc	0 301 7                         # ldecod_src/img_io.c:301:7
	je	.LBB5_7
.Ltmp180:
# %bb.1:                                # %if.else
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 307 12 is_stmt 1              # ldecod_src/img_io.c:307:12
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
.Ltmp181:
	.loc	0 307 35 is_stmt 0              # ldecod_src/img_io.c:307:35
	testl	%eax, %eax
.Ltmp182:
	.loc	0 307 12                        # ldecod_src/img_io.c:307:12
	je	.LBB5_2
.Ltmp183:
# %bb.3:                                # %if.else15
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 313 12 is_stmt 1              # ldecod_src/img_io.c:313:12
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
.Ltmp184:
	.loc	0 313 35 is_stmt 0              # ldecod_src/img_io.c:313:35
	testl	%eax, %eax
.Ltmp185:
	.loc	0 313 12                        # ldecod_src/img_io.c:313:12
	je	.LBB5_4
.Ltmp186:
# %bb.5:                                # %if.else22
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 318 12 is_stmt 1              # ldecod_src/img_io.c:318:12
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
.Ltmp187:
	.loc	0 318 35 is_stmt 0              # ldecod_src/img_io.c:318:35
	testl	%eax, %eax
.Ltmp188:
	.loc	0 318 12                        # ldecod_src/img_io.c:318:12
	je	.LBB5_6
.Ltmp189:
.LBB5_7:                                # %if.else28
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 0 12                          # ldecod_src/img_io.c:0:12
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, 772(%rbx)
	movq	$0, 960(%rbx)
	xorl	%eax, %eax
.Ltmp190:
	.loc	0 331 3 epilogue_begin is_stmt 1 # ldecod_src/img_io.c:331:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp191:
	#DEBUG_VALUE: ParseVideoType:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 8
	retq
.Ltmp193:
.LBB5_2:                                # %if.then10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 0 3 is_stmt 0                 # ldecod_src/img_io.c:0:3
	movabsq	$12884901889, %rax              # imm = 0x300000001
.Ltmp194:
	.loc	0 309 24 is_stmt 1              # ldecod_src/img_io.c:309:24
	movq	%rax, 772(%rbx)
	.loc	0 311 21                        # ldecod_src/img_io.c:311:21
	movq	$0, 960(%rbx)
	movl	$1, %eax
.Ltmp195:
	.loc	0 331 3 epilogue_begin          # ldecod_src/img_io.c:331:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp196:
	#DEBUG_VALUE: ParseVideoType:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 8
	retq
.Ltmp198:
.LBB5_4:                                # %if.then19
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 315 24                        # ldecod_src/img_io.c:315:24
	movl	$3, 772(%rbx)
	.loc	0 316 21                        # ldecod_src/img_io.c:316:21
	movq	$0, 960(%rbx)
	movl	$3, %eax
.Ltmp199:
	.loc	0 331 3 epilogue_begin          # ldecod_src/img_io.c:331:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp200:
	#DEBUG_VALUE: ParseVideoType:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 8
	retq
.Ltmp202:
.LBB5_6:                                # %if.then26
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: ParseVideoType:input_file <- $rbx
	#DEBUG_VALUE: ParseVideoType:format <- $r14
	.loc	0 320 24                        # ldecod_src/img_io.c:320:24
	movl	$4, 772(%rbx)
	movl	$4, %eax
.Ltmp203:
	.loc	0 331 3 epilogue_begin          # ldecod_src/img_io.c:331:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp204:
	#DEBUG_VALUE: ParseVideoType:input_file <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp205:
	.cfi_def_cfa_offset 8
	retq
.Ltmp206:
.Lfunc_end5:
	.size	ParseVideoType, .Lfunc_end5-ParseVideoType
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"_."
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ip"
	.size	.L.str.3, 3

	.type	VideoRes,@object                # @VideoRes
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
VideoRes:
	.quad	.L.str.15
	.long	176                             # 0xb0
	.long	144                             # 0x90
	.quad	.L.str.16
	.long	160                             # 0xa0
	.long	128                             # 0x80
	.quad	.L.str.17
	.long	320                             # 0x140
	.long	240                             # 0xf0
	.quad	.L.str.18
	.long	352                             # 0x160
	.long	240                             # 0xf0
	.quad	.L.str.19
	.long	352                             # 0x160
	.long	288                             # 0x120
	.quad	.L.str.20
	.long	640                             # 0x280
	.long	480                             # 0x1e0
	.quad	.L.str.21
	.long	720                             # 0x2d0
	.long	480                             # 0x1e0
	.quad	.L.str.22
	.long	704                             # 0x2c0
	.long	576                             # 0x240
	.quad	.L.str.23
	.long	720                             # 0x2d0
	.long	576                             # 0x240
	.quad	.L.str.24
	.long	1280                            # 0x500
	.long	720                             # 0x2d0
	.quad	.L.str.25
	.long	1920                            # 0x780
	.long	1080                            # 0x438
	.zero	16
	.size	VideoRes, 192

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%0*d"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%*d"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"OpenFrameFile: cannot open file %s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"No input sequence name was provided. Please check settings."
	.size	.L.str.9, 60

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Input file %s does not exist"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"yuv"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"rgb"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"tif"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"avi"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"qcif"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"qqvga"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"qvga"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"sif"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"cif"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"vga"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"sd1"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"sd2"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"sd3"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"720p"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"1080p"
	.size	.L.str.25, 6

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	24                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	10                              # 10
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	152                             # 920
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
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
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	10                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xc:0x76f DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	46                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	45                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2f:0x7 DW_TAG_variable
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x36:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3b:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x42:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x46:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x4a:0x7 DW_TAG_variable
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x51:0xa DW_TAG_variable
	.long	91                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x5b:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x60:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x67:0xa DW_TAG_variable
	.long	91                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x71:0x7 DW_TAG_variable
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x78:0x7 DW_TAG_variable
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x7f:0xa DW_TAG_variable
	.long	137                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0x89:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x8e:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x95:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               # Abbrev [4] 0x9f:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xa4:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xab:0xa DW_TAG_variable
	.long	181                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	4                               # Abbrev [4] 0xb5:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xba:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	36                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc1:0xb DW_TAG_variable
	.long	204                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0xcc:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd1:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	60                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd8:0xb DW_TAG_variable
	.long	227                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	4                               # Abbrev [4] 0xe3:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe8:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	29                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xef:0xb DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	8                               # Abbrev [8] 0xfa:0xb DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	8                               # Abbrev [8] 0x105:0xb DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	8                               # Abbrev [8] 0x110:0xb DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	7                               # Abbrev [7] 0x11b:0xa DW_TAG_variable
	.long	137                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	7                               # Abbrev [7] 0x125:0xa DW_TAG_variable
	.long	303                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	4                               # Abbrev [4] 0x12f:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x134:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x13b:0xa DW_TAG_variable
	.long	137                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	7                               # Abbrev [7] 0x145:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	7                               # Abbrev [7] 0x14f:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	7                               # Abbrev [7] 0x159:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	7                               # Abbrev [7] 0x163:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	7                               # Abbrev [7] 0x16d:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	7                               # Abbrev [7] 0x177:0xa DW_TAG_variable
	.long	159                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	7                               # Abbrev [7] 0x181:0xa DW_TAG_variable
	.long	137                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	7                               # Abbrev [7] 0x18b:0xa DW_TAG_variable
	.long	303                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	9                               # Abbrev [9] 0x195:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	416                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	4                               # Abbrev [4] 0x1a0:0xc DW_TAG_array_type
	.long	428                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1a5:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1ac:0x5 DW_TAG_const_type
	.long	433                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1b1:0x8 DW_TAG_typedef
	.long	441                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1b9:0x21 DW_TAG_structure_type
	.byte	10                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1be:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c7:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d0:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1da:0x5 DW_TAG_pointer_type
	.long	66                              # DW_AT_type
	.byte	2                               # Abbrev [2] 0x1df:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x1e3:0x1b DW_TAG_enumeration_type
	.long	479                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1eb:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x1ee:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x1f1:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x1f4:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x1f7:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x1fa:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1fe:0x18 DW_TAG_enumeration_type
	.long	479                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x206:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x209:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x20c:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x20f:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x212:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x216:0x15 DW_TAG_enumeration_type
	.long	479                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x21e:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x221:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x224:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0x227:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x22b:0x1 DW_TAG_pointer_type
	.byte	18                              # Abbrev [18] 0x22c:0xcc DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x23b:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x244:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1892                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x24d:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1892                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x256:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1897                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x25f:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x26a:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x273:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x27c:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x285:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x28e:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	66                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x297:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x29d:0x6 DW_TAG_call_site
	.long	813                             # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2a3:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2a9:0x6 DW_TAG_call_site
	.long	833                             # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2af:0x6 DW_TAG_call_site
	.long	853                             # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2b5:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2bb:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2c1:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2c7:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2cd:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2d3:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2d9:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2df:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2e5:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2eb:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x2f1:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x2f8:0x18 DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	784                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x300:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x305:0x5 DW_TAG_formal_parameter
	.long	803                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x30a:0x5 DW_TAG_formal_parameter
	.long	479                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x310:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x314:0x5 DW_TAG_restrict_type
	.long	793                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x319:0x5 DW_TAG_pointer_type
	.long	798                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x31e:0x5 DW_TAG_const_type
	.long	66                              # DW_AT_type
	.byte	25                              # Abbrev [25] 0x323:0x5 DW_TAG_restrict_type
	.long	808                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x328:0x5 DW_TAG_pointer_type
	.long	474                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x32d:0x14 DW_TAG_subprogram
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	474                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x336:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x33b:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x341:0x14 DW_TAG_subprogram
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	474                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x34a:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x34f:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x355:0x13 DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	872                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x35d:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x362:0x5 DW_TAG_formal_parameter
	.long	803                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x368:0x4 DW_TAG_base_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x36c:0x13 DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x374:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x379:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x37f:0x74 DW_TAG_subprogram
	.byte	40                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x38a:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x393:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x39c:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3a5:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3ae:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3b7:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	1892                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3c0:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3c9:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3d2:0x8 DW_TAG_variable
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	1892                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3da:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x3e0:0x6 DW_TAG_call_site
	.long	1011                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x3e6:0x6 DW_TAG_call_site
	.long	1052                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x3ec:0x6 DW_TAG_call_site
	.long	1011                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3f3:0x18 DW_TAG_subprogram
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	474                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x3fb:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x400:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x405:0x5 DW_TAG_formal_parameter
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x40b:0x5 DW_TAG_restrict_type
	.long	474                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x410:0x8 DW_TAG_typedef
	.long	1048                            # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x418:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	26                              # Abbrev [26] 0x41c:0xf DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1048                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x425:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x42b:0x73 DW_TAG_subprogram
	.byte	45                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x436:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x43f:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x448:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1658                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x453:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1902                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x45e:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x467:0x6 DW_TAG_call_site
	.long	1052                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x46d:0x6 DW_TAG_call_site
	.long	1011                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x473:0x6 DW_TAG_call_site
	.long	1182                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x479:0x6 DW_TAG_call_site
	.long	1208                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x47f:0x6 DW_TAG_call_site
	.long	1052                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x485:0x6 DW_TAG_call_site
	.long	1208                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x48b:0x6 DW_TAG_call_site
	.long	1232                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x491:0x6 DW_TAG_call_site
	.long	1252                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x497:0x6 DW_TAG_call_site
	.long	1268                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x49e:0x1a DW_TAG_subprogram
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	378                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x4a7:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4ac:0x5 DW_TAG_formal_parameter
	.long	1040                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4b1:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4b6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4b8:0x18 DW_TAG_subprogram
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	474                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x4c0:0x5 DW_TAG_formal_parameter
	.long	1035                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4c5:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4ca:0x5 DW_TAG_formal_parameter
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4d0:0x14 DW_TAG_subprogram
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x4d8:0x5 DW_TAG_formal_parameter
	.long	793                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4dd:0x5 DW_TAG_formal_parameter
	.long	479                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4e2:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4e4:0x10 DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x4ed:0x5 DW_TAG_formal_parameter
	.long	788                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x4f2:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x4f4:0x4 DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x4f8:0x35 DW_TAG_subprogram
	.byte	55                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x504:0xa DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x50e:0x6 DW_TAG_call_site
	.long	1052                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x514:0x6 DW_TAG_call_site
	.long	1325                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x51a:0x6 DW_TAG_call_site
	.long	1232                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x520:0x6 DW_TAG_call_site
	.long	1182                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	33                              # Abbrev [33] 0x526:0x6 DW_TAG_call_site
	.long	1325                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	60                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x52d:0x10 DW_TAG_subprogram
	.byte	43                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	940                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x532:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x537:0x5 DW_TAG_formal_parameter
	.long	479                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x53d:0x1d DW_TAG_subprogram
	.byte	61                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	282                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x549:0xa DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	282                             # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x553:0x6 DW_TAG_call_site
	.long	1370                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x55a:0xf DW_TAG_subprogram
	.byte	44                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x563:0x5 DW_TAG_formal_parameter
	.long	479                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x569:0x43 DW_TAG_subprogram
	.byte	63                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1452                            # DW_AT_type
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x579:0xa DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	1460                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x583:0xa DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x58d:0x6 DW_TAG_call_site
	.long	1052                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x593:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x599:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x59f:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x5a5:0x6 DW_TAG_call_site
	.long	876                             # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x5ac:0x8 DW_TAG_typedef
	.long	483                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x5b4:0x5 DW_TAG_pointer_type
	.long	1465                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5b9:0x8 DW_TAG_typedef
	.long	1473                            # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0x5c1:0xb9 DW_TAG_structure_type
	.byte	98                              # DW_AT_name
	.short	968                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5c7:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1658                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d0:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1658                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5d9:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	1658                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5e3:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5ed:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5f7:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1670                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x601:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x60b:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x615:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x61f:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x629:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x633:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x63d:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x647:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x651:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x65b:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.short	948                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x665:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.short	952                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x66f:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1892                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.short	960                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x67a:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x67f:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	255                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x686:0x8 DW_TAG_typedef
	.long	1678                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x68e:0xba DW_TAG_structure_type
	.byte	84                              # DW_AT_name
	.byte	136                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x693:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	1864                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x69c:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1872                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a5:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	872                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ae:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6b7:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6c0:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6c9:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6d2:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6db:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6e4:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ed:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6f6:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ff:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x708:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x711:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x71a:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x723:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x72c:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1880                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x735:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x73e:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x748:0x8 DW_TAG_typedef
	.long	510                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x750:0x8 DW_TAG_typedef
	.long	534                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x758:0xc DW_TAG_array_type
	.long	479                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x75d:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x764:0x5 DW_TAG_pointer_type
	.long	479                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x769:0x5 DW_TAG_pointer_type
	.long	872                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x76e:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x773:0x6 DW_TAG_subrange_type
	.long	70                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	444                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/img_io.c"           # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=125
.Linfo_string3:
	.asciz	"char"                          # string offset=159
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=164
.Linfo_string5:
	.asciz	"VideoRes"                      # string offset=184
.Linfo_string6:
	.asciz	"name"                          # string offset=193
.Linfo_string7:
	.asciz	"x_size"                        # string offset=198
.Linfo_string8:
	.asciz	"int"                           # string offset=205
.Linfo_string9:
	.asciz	"y_size"                        # string offset=209
.Linfo_string10:
	.asciz	"video_size"                    # string offset=216
.Linfo_string11:
	.asciz	"VIDEO_SIZE"                    # string offset=227
.Linfo_string12:
	.asciz	"VIDEO_UNKNOWN"                 # string offset=238
.Linfo_string13:
	.asciz	"VIDEO_YUV"                     # string offset=252
.Linfo_string14:
	.asciz	"VIDEO_RGB"                     # string offset=262
.Linfo_string15:
	.asciz	"VIDEO_XYZ"                     # string offset=272
.Linfo_string16:
	.asciz	"VIDEO_TIFF"                    # string offset=282
.Linfo_string17:
	.asciz	"VIDEO_AVI"                     # string offset=293
.Linfo_string18:
	.asciz	"CF_UNKNOWN"                    # string offset=303
.Linfo_string19:
	.asciz	"YUV400"                        # string offset=314
.Linfo_string20:
	.asciz	"YUV420"                        # string offset=321
.Linfo_string21:
	.asciz	"YUV422"                        # string offset=328
.Linfo_string22:
	.asciz	"YUV444"                        # string offset=335
.Linfo_string23:
	.asciz	"CM_UNKNOWN"                    # string offset=342
.Linfo_string24:
	.asciz	"CM_YUV"                        # string offset=353
.Linfo_string25:
	.asciz	"CM_RGB"                        # string offset=360
.Linfo_string26:
	.asciz	"CM_XYZ"                        # string offset=367
.Linfo_string27:
	.asciz	"strtol"                        # string offset=374
.Linfo_string28:
	.asciz	"long"                          # string offset=381
.Linfo_string29:
	.asciz	"strpbrk"                       # string offset=386
.Linfo_string30:
	.asciz	"strstr"                        # string offset=394
.Linfo_string31:
	.asciz	"strtod"                        # string offset=401
.Linfo_string32:
	.asciz	"double"                        # string offset=408
.Linfo_string33:
	.asciz	"strcmp"                        # string offset=415
.Linfo_string34:
	.asciz	"strncpy"                       # string offset=422
.Linfo_string35:
	.asciz	"unsigned long"                 # string offset=430
.Linfo_string36:
	.asciz	"size_t"                        # string offset=444
.Linfo_string37:
	.asciz	"strlen"                        # string offset=451
.Linfo_string38:
	.asciz	"snprintf"                      # string offset=458
.Linfo_string39:
	.asciz	"strncat"                       # string offset=467
.Linfo_string40:
	.asciz	"open"                          # string offset=475
.Linfo_string41:
	.asciz	"printf"                        # string offset=480
.Linfo_string42:
	.asciz	"report_stats_on_error"         # string offset=487
.Linfo_string43:
	.asciz	"error"                         # string offset=509
.Linfo_string44:
	.asciz	"close"                         # string offset=515
.Linfo_string45:
	.asciz	"DW_ATE_unsigned_32"            # string offset=521
.Linfo_string46:
	.asciz	"DW_ATE_unsigned_64"            # string offset=540
.Linfo_string47:
	.asciz	"ParseSizeFromString"           # string offset=559
.Linfo_string48:
	.asciz	"ParseFrameNoFormatFromString"  # string offset=579
.Linfo_string49:
	.asciz	"OpenFrameFile"                 # string offset=608
.Linfo_string50:
	.asciz	"OpenFiles"                     # string offset=622
.Linfo_string51:
	.asciz	"CloseFiles"                    # string offset=632
.Linfo_string52:
	.asciz	"ParseVideoType"                # string offset=643
.Linfo_string53:
	.asciz	"VideoFileType"                 # string offset=658
.Linfo_string54:
	.asciz	"tail"                          # string offset=672
.Linfo_string55:
	.asciz	"input_file"                    # string offset=677
.Linfo_string56:
	.asciz	"fname"                         # string offset=688
.Linfo_string57:
	.asciz	"fhead"                         # string offset=694
.Linfo_string58:
	.asciz	"ftail"                         # string offset=700
.Linfo_string59:
	.asciz	"f_num"                         # string offset=706
.Linfo_string60:
	.asciz	"vdtype"                        # string offset=712
.Linfo_string61:
	.asciz	"format"                        # string offset=719
.Linfo_string62:
	.asciz	"yuv_format"                    # string offset=726
.Linfo_string63:
	.asciz	"ColorFormat"                   # string offset=737
.Linfo_string64:
	.asciz	"color_model"                   # string offset=749
.Linfo_string65:
	.asciz	"ColorModel"                    # string offset=761
.Linfo_string66:
	.asciz	"frame_rate"                    # string offset=772
.Linfo_string67:
	.asciz	"width"                         # string offset=783
.Linfo_string68:
	.asciz	"height"                        # string offset=789
.Linfo_string69:
	.asciz	"auto_crop_right"               # string offset=796
.Linfo_string70:
	.asciz	"auto_crop_bottom"              # string offset=812
.Linfo_string71:
	.asciz	"auto_crop_right_cr"            # string offset=829
.Linfo_string72:
	.asciz	"auto_crop_bottom_cr"           # string offset=848
.Linfo_string73:
	.asciz	"width_crop"                    # string offset=868
.Linfo_string74:
	.asciz	"height_crop"                   # string offset=879
.Linfo_string75:
	.asciz	"mb_width"                      # string offset=891
.Linfo_string76:
	.asciz	"mb_height"                     # string offset=900
.Linfo_string77:
	.asciz	"size_cmp"                      # string offset=910
.Linfo_string78:
	.asciz	"size"                          # string offset=919
.Linfo_string79:
	.asciz	"bit_depth"                     # string offset=924
.Linfo_string80:
	.asciz	"max_value"                     # string offset=934
.Linfo_string81:
	.asciz	"max_value_sq"                  # string offset=944
.Linfo_string82:
	.asciz	"pic_unit_size_on_disk"         # string offset=957
.Linfo_string83:
	.asciz	"pic_unit_size_shift3"          # string offset=979
.Linfo_string84:
	.asciz	"frame_format"                  # string offset=1000
.Linfo_string85:
	.asciz	"FrameFormat"                   # string offset=1013
.Linfo_string86:
	.asciz	"is_concatenated"               # string offset=1025
.Linfo_string87:
	.asciz	"is_interleaved"                # string offset=1041
.Linfo_string88:
	.asciz	"zero_pad"                      # string offset=1056
.Linfo_string89:
	.asciz	"num_digits"                    # string offset=1065
.Linfo_string90:
	.asciz	"start_frame"                   # string offset=1076
.Linfo_string91:
	.asciz	"end_frame"                     # string offset=1088
.Linfo_string92:
	.asciz	"nframes"                       # string offset=1098
.Linfo_string93:
	.asciz	"crop_x_size"                   # string offset=1106
.Linfo_string94:
	.asciz	"crop_y_size"                   # string offset=1118
.Linfo_string95:
	.asciz	"crop_x_offset"                 # string offset=1130
.Linfo_string96:
	.asciz	"crop_y_offset"                 # string offset=1144
.Linfo_string97:
	.asciz	"avi"                           # string offset=1158
.Linfo_string98:
	.asciz	"video_data_file"               # string offset=1162
.Linfo_string99:
	.asciz	"VideoDataFile"                 # string offset=1178
.Linfo_string100:
	.asciz	"fps"                           # string offset=1192
.Linfo_string101:
	.asciz	"fn"                            # string offset=1196
.Linfo_string102:
	.asciz	"i"                             # string offset=1199
.Linfo_string103:
	.asciz	"p2"                            # string offset=1201
.Linfo_string104:
	.asciz	"p1"                            # string offset=1204
.Linfo_string105:
	.asciz	"c"                             # string offset=1207
.Linfo_string106:
	.asciz	"infile"                        # string offset=1209
.Linfo_string107:
	.asciz	"in_number"                     # string offset=1216
.Linfo_string108:
	.asciz	"FrameNumberInFile"             # string offset=1226
.Linfo_string109:
	.asciz	"length"                        # string offset=1244
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str.2
	.quad	.L.str.3
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
	.quad	VideoRes
	.quad	.Lfunc_begin0
	.quad	.Ltmp19
	.quad	.Ltmp25
	.quad	.Ltmp29
	.quad	.Ltmp38
	.quad	.Ltmp42
	.quad	.Ltmp51
	.quad	.Ltmp54
	.quad	.Ltmp57
	.quad	.Ltmp60
	.quad	.Ltmp63
	.quad	.Ltmp66
	.quad	.Ltmp69
	.quad	.Ltmp72
	.quad	.Ltmp75
	.quad	.Ltmp78
	.quad	.Ltmp81
	.quad	.Lfunc_begin1
	.quad	.Ltmp102
	.quad	.Ltmp110
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	.Lfunc_begin2
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp135
	.quad	.Ltmp136
	.quad	.Ltmp139
	.quad	.Ltmp140
	.quad	.Ltmp144
	.quad	.Ltmp148
	.quad	.Ltmp149
	.quad	.Lfunc_begin3
	.quad	.Ltmp156
	.quad	.Ltmp159
	.quad	.Ltmp160
	.quad	.Ltmp164
	.quad	.Ltmp166
	.quad	.Lfunc_begin4
	.quad	.Ltmp172
	.quad	.Lfunc_begin5
	.quad	.Ltmp176
	.quad	.Ltmp178
	.quad	.Ltmp181
	.quad	.Ltmp184
	.quad	.Ltmp187
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
