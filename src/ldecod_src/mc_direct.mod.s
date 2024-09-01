	.text
	.file	"mc_direct.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/mc_direct.c" md5 0x7691828e3edc00e330565939c32bdcf8
	.file	1 "ldecod_src/inc" "ifunctions.h" md5 0x279401589ed56df99e287ad9e5fc564b
	.file	2 "ldecod_src/inc" "global.h" md5 0xc4ca3c417c5616a2ff6b6266e7376fc1
	.file	3 "ldecod_src/inc" "macroblock.h" md5 0x17b4b8d6c8aaa60d7374ecd392230b5d
	.file	4 "ldecod_src/inc" "frame.h" md5 0xfd6ca9e1c707932f749220576db72b57
	.file	5 "ldecod_src/inc" "io_video.h" md5 0x1141c07f1801ad27d87214c419749431
	.file	6 "ldecod_src/inc" "types.h" md5 0x64f87bd13f2911471c7313b4ac17e90c
	.file	7 "ldecod_src/inc" "defines.h" md5 0xf06de374c735b286d10ba4ea0c8c0a5d
	.globl	get_colocated_info_4x4          # -- Begin function get_colocated_info_4x4
	.p2align	4, 0x90
	.type	get_colocated_info_4x4,@function
get_colocated_info_4x4:                 # @get_colocated_info_4x4
.Lfunc_begin0:
	.loc	0 280 0                         # ldecod_src/mc_direct.c:280:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- $ecx
	movl	$1, %eax
.Ltmp0:
	.loc	0 281 7 prologue_end            # ldecod_src/mc_direct.c:281:7
	cmpb	$0, 40(%rsi)
.Ltmp1:
	.loc	0 281 7 is_stmt 0               # ldecod_src/mc_direct.c:281:7
	je	.LBB0_1
.Ltmp2:
.LBB0_9:                                # %return
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 298 1 is_stmt 1               # ldecod_src/mc_direct.c:298:1
	retq
.Ltmp3:
.LBB0_1:                                # %if.else
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- $ecx
	.loc	0 285 35                        # ldecod_src/mc_direct.c:285:35
	movq	152(%rsi), %rsi
.Ltmp4:
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 285 28 is_stmt 0              # ldecod_src/mc_direct.c:285:28
	movslq	%ecx, %rcx
.Ltmp5:
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movq	(%rsi,%rcx,8), %rsi
	movslq	%edx, %rdx
.Ltmp6:
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rcx
.Ltmp7:
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 288 12 is_stmt 1              # ldecod_src/mc_direct.c:288:12
	movzbl	24(%rsi,%rdx), %edx
	cmpl	$255, %edx
	.loc	0 289 7                         # ldecod_src/mc_direct.c:289:7
	je	.LBB0_6
.Ltmp8:
# %bb.2:                                # %if.else
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	testl	%edx, %edx
	jne	.LBB0_9
.Ltmp9:
# %bb.3:                                # %land.lhs.true
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 289 32 is_stmt 0              # ldecod_src/mc_direct.c:289:32
	movzwl	16(%rcx), %eax
.Ltmp10:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $ax
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $ax
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%eax, %edx
	negw	%dx
	cmovsw	%ax, %dx
.Ltmp11:
	.loc	0 289 41                        # ldecod_src/mc_direct.c:289:41
	cmpw	$1, %dx
	.loc	0 290 7                         # ldecod_src/mc_direct.c:290:7
	ja	.LBB0_5
.Ltmp12:
# %bb.4:                                # %land.lhs.true9
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 290 32 is_stmt 0              # ldecod_src/mc_direct.c:290:32
	movzwl	18(%rcx), %eax
.Ltmp13:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $ax
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $ax
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%eax, %ecx
.Ltmp14:
	negw	%cx
	cmovsw	%ax, %cx
	xorl	%eax, %eax
.Ltmp15:
	.loc	0 290 41                        # ldecod_src/mc_direct.c:290:41
	cmpw	$2, %cx
	.loc	0 291 7                         # ldecod_src/mc_direct.c:291:7
	jb	.LBB0_9
.Ltmp16:
.LBB0_5:                                # %lor.rhs.thread
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 0 7 is_stmt 0                 # ldecod_src/mc_direct.c:0:7
	movl	$1, %eax
	.loc	0 298 1 is_stmt 1               # ldecod_src/mc_direct.c:298:1
	retq
.Ltmp17:
.LBB0_6:                                # %land.lhs.true22
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 292 32                        # ldecod_src/mc_direct.c:292:32
	cmpb	$0, 25(%rcx)
	.loc	0 293 7                         # ldecod_src/mc_direct.c:293:7
	jne	.LBB0_9
.Ltmp18:
# %bb.7:                                # %land.lhs.true28
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 293 32 is_stmt 0              # ldecod_src/mc_direct.c:293:32
	movzwl	20(%rcx), %edx
.Ltmp19:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $dx
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $dx
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
.Ltmp20:
	.loc	0 293 41                        # ldecod_src/mc_direct.c:293:41
	cmpw	$1, %si
	.loc	0 294 7                         # ldecod_src/mc_direct.c:294:7
	ja	.LBB0_9
.Ltmp21:
# %bb.8:                                # %land.rhs
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_4x4:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 294 32 is_stmt 0              # ldecod_src/mc_direct.c:294:32
	movzwl	22(%rcx), %eax
.Ltmp22:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $ax
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $ax
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%eax, %ecx
.Ltmp23:
	negw	%cx
	cmovsw	%ax, %cx
.Ltmp24:
	.loc	0 294 41                        # ldecod_src/mc_direct.c:294:41
	xorl	%eax, %eax
.Ltmp25:
	cmpw	$2, %cx
	setae	%al
.Ltmp26:
	.loc	0 298 1                         # ldecod_src/mc_direct.c:298:1
	retq
.Ltmp27:
.Lfunc_end0:
	.size	get_colocated_info_4x4, .Lfunc_end0-get_colocated_info_4x4
	.cfi_endproc
                                        # -- End function
	.globl	get_colocated_info_8x8          # -- Begin function get_colocated_info_8x8
	.p2align	4, 0x90
	.type	get_colocated_info_8x8,@function
get_colocated_info_8x8:                 # @get_colocated_info_8x8
.Lfunc_begin1:
	.loc	0 308 0                         # ldecod_src/mc_direct.c:308:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	movb	$1, %al
.Ltmp28:
	.loc	0 309 7 prologue_end            # ldecod_src/mc_direct.c:309:7
	cmpb	$0, 40(%rsi)
.Ltmp29:
	.loc	0 309 7 is_stmt 0               # ldecod_src/mc_direct.c:309:7
	je	.LBB1_1
.Ltmp30:
# %bb.33:                               # %return
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movzbl	%al, %eax
.Ltmp31:
	.loc	0 372 1 is_stmt 1               # ldecod_src/mc_direct.c:372:1
	retq
.Ltmp32:
.LBB1_1:                                # %if.else
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 313 32                        # ldecod_src/mc_direct.c:313:32
	movq	(%rdi), %r8
.Ltmp33:
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- undef
	.loc	0 315 21                        # ldecod_src/mc_direct.c:315:21
	movl	128(%r8), %r9d
	.loc	0 315 9 is_stmt 0               # ldecod_src/mc_direct.c:315:9
	testl	%r9d, %r9d
	.loc	0 315 40                        # ldecod_src/mc_direct.c:315:40
	je	.LBB1_2
.Ltmp34:
.LBB1_7:                                # %if.then12
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: RSD:x <- $ecx
	.loc	1 238 10 is_stmt 1              # ldecod_src/inc/ifunctions.h:238:10
	movl	%ecx, %r10d
	andl	$-2, %r10d
	movl	%ecx, %r11d
	shrl	%r11d
	andl	$1, %r11d
	orl	%r10d, %r11d
.Ltmp35:
	#DEBUG_VALUE: jj <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 18446744073709551614, DW_OP_and, DW_OP_or, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: RSD:x <- $edx
	.loc	1 238 10 is_stmt 0              # ldecod_src/inc/ifunctions.h:238:10
	movl	%edx, %r10d
	andl	$-2, %r10d
	shrl	%edx
.Ltmp36:
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	andl	$1, %edx
	orl	%r10d, %edx
.Ltmp37:
	#DEBUG_VALUE: ii <- $edx
	#DEBUG_VALUE: jdiv <- undef
	.loc	0 322 37 is_stmt 1              # ldecod_src/mc_direct.c:322:37
	movq	152(%rsi), %r10
	.loc	0 322 30 is_stmt 0              # ldecod_src/mc_direct.c:322:30
	movslq	%r11d, %r11
	movq	(%r10,%r11,8), %r10
	movslq	%edx, %rdx
.Ltmp38:
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 324 10 is_stmt 1              # ldecod_src/mc_direct.c:324:10
	cmpl	$0, 176(%r8)
	.loc	0 324 36 is_stmt 0              # ldecod_src/mc_direct.c:324:36
	je	.LBB1_13
.Ltmp39:
# %bb.8:                                # %land.lhs.true17
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 324 50                        # ldecod_src/mc_direct.c:324:50
	movl	184(%r8), %ebx
	.loc	0 324 59                        # ldecod_src/mc_direct.c:324:59
	cmpl	(%rsi), %ebx
	.loc	0 324 78                        # ldecod_src/mc_direct.c:324:78
	je	.LBB1_13
.Ltmp40:
# %bb.9:                                # %land.lhs.true21
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 324 81                        # ldecod_src/mc_direct.c:324:81
	cmpl	$0, 96(%rsi)
.Ltmp41:
	.loc	0 324 10                        # ldecod_src/mc_direct.c:324:10
	je	.LBB1_13
.Ltmp42:
# %bb.10:                               # %if.then24
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 326 34 is_stmt 1              # ldecod_src/mc_direct.c:326:34
	cmpl	$1, %ebx
.Ltmp43:
	#DEBUG_VALUE: fs <- undef
	.loc	0 326 13 is_stmt 0              # ldecod_src/mc_direct.c:326:13
	jne	.LBB1_12
.Ltmp44:
# %bb.11:                               # %if.then27
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	.loc	0 327 24 is_stmt 1              # ldecod_src/mc_direct.c:327:24
	movq	224(%rsi), %rdi
.Ltmp45:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 327 12 is_stmt 0              # ldecod_src/mc_direct.c:327:12
	jmp	.LBB1_18
.Ltmp46:
.LBB1_13:                               # %if.else37
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 315 9 is_stmt 1               # ldecod_src/mc_direct.c:315:9
	testl	%r9d, %r9d
.Ltmp47:
	.loc	0 333 43                        # ldecod_src/mc_direct.c:333:43
	je	.LBB1_17
.Ltmp48:
# %bb.14:                               # %land.lhs.true40
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 333 49 is_stmt 0              # ldecod_src/mc_direct.c:333:49
	cmpl	$0, 384(%rdi)
	.loc	0 333 66                        # ldecod_src/mc_direct.c:333:66
	jne	.LBB1_19
.Ltmp49:
# %bb.15:                               # %land.lhs.true42
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 333 83                        # ldecod_src/mc_direct.c:333:83
	movq	184(%rsi), %r9
	.loc	0 333 100                       # ldecod_src/mc_direct.c:333:100
	movslq	24(%rdi), %rdi
.Ltmp50:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 333 69                        # ldecod_src/mc_direct.c:333:69
	cmpb	$0, (%r9,%rdi)
	.loc	0 333 110                       # ldecod_src/mc_direct.c:333:110
	jne	.LBB1_17
.Ltmp51:
# %bb.16:                               # %land.lhs.true50
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 334 52 is_stmt 1              # ldecod_src/mc_direct.c:334:52
	cmpl	$1, 388(%rsi)
	.loc	0 335 11                        # ldecod_src/mc_direct.c:335:11
	jne	.LBB1_19
.Ltmp52:
.LBB1_17:                               # %if.then57
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r10, $rdx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	sarl	%ecx
.Ltmp53:
	#DEBUG_VALUE: jdiv <- $ecx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	.loc	0 337 31 is_stmt 1              # ldecod_src/mc_direct.c:337:31
	movq	13520(%r8), %rdi
	.loc	0 337 44 is_stmt 0              # ldecod_src/mc_direct.c:337:44
	movl	4(%rdi), %r8d
.Ltmp54:
	.loc	0 337 57                        # ldecod_src/mc_direct.c:337:57
	movq	232(%rsi), %rdi
	.loc	0 337 48                        # ldecod_src/mc_direct.c:337:48
	movl	%r8d, %r9d
	subl	4(%rdi), %r9d
.Ltmp55:
	#DEBUG_VALUE: iabs:x <- $r9d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r9d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r9d, %r10d
.Ltmp56:
	negl	%r10d
	cmovsl	%r9d, %r10d
.Ltmp57:
	.loc	0 337 118                       # ldecod_src/mc_direct.c:337:118
	movq	224(%rsi), %rsi
.Ltmp58:
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 337 110 is_stmt 0             # ldecod_src/mc_direct.c:337:110
	subl	4(%rsi), %r8d
.Ltmp59:
	#DEBUG_VALUE: iabs:x <- $r8d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r9d
.Ltmp60:
	negl	%r9d
	cmovsl	%r8d, %r9d
.Ltmp61:
	.loc	0 337 75                        # ldecod_src/mc_direct.c:337:75
	cmpl	%r9d, %r10d
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movslq	%ecx, %r11
.Ltmp62:
	#DEBUG_VALUE: fs <- undef
	cmovaq	%rsi, %rdi
.Ltmp63:
.LBB1_18:                               # %if.end85.sink.split
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movq	152(%rdi), %rcx
	movq	(%rcx,%r11,8), %r10
.Ltmp64:
.LBB1_19:                               # %if.end85
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	shlq	$5, %rdx
	leaq	(%r10,%rdx), %rcx
.Ltmp65:
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 347 21 is_stmt 1              # ldecod_src/mc_direct.c:347:21
	movzbl	24(%r10,%rdx), %edx
.Ltmp66:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	cmpl	$255, %edx
	je	.LBB1_21
.Ltmp67:
.LBB1_28:                               # %if.end159
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	testl	%edx, %edx
	jne	.LBB1_32
.Ltmp68:
# %bb.29:                               # %land.lhs.true165
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movzwl	16(%rcx), %edx
.Ltmp69:
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
.Ltmp70:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	cmpw	$1, %si
	ja	.LBB1_32
.Ltmp71:
# %bb.30:                               # %land.lhs.true174
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movzwl	18(%rcx), %ecx
.Ltmp72:
	.loc	1 120 18                        # ldecod_src/inc/ifunctions.h:120:18
	movl	%ecx, %edx
	negw	%dx
	cmovsw	%cx, %dx
.Ltmp73:
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	cmpw	$2, %dx
	jae	.LBB1_32
.Ltmp74:
# %bb.31:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	xorl	%eax, %eax
.Ltmp75:
.LBB1_32:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movzbl	%al, %eax
.Ltmp76:
	.loc	0 372 1 is_stmt 1               # ldecod_src/mc_direct.c:372:1
	retq
.Ltmp77:
.LBB1_2:                                # %lor.lhs.false
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	.loc	0 314 38                        # ldecod_src/mc_direct.c:314:38
	movq	8(%rdi), %r10
.Ltmp78:
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 316 16                        # ldecod_src/mc_direct.c:316:16
	movq	16(%r10), %r11
	.loc	0 316 9 is_stmt 0               # ldecod_src/mc_direct.c:316:9
	cmpl	$0, 3136(%r11)
	.loc	0 316 48                        # ldecod_src/mc_direct.c:316:48
	je	.LBB1_3
.Ltmp79:
.LBB1_24:                               # %if.else133
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 358 37 is_stmt 1              # ldecod_src/mc_direct.c:358:37
	movq	152(%rsi), %r9
.Ltmp80:
	#DEBUG_VALUE: RSD:x <- $ecx
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%ecx, %edi
.Ltmp81:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	andl	$-2, %edi
	shrl	%ecx
.Ltmp82:
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	andl	$1, %ecx
	orl	%edi, %ecx
.Ltmp83:
	.loc	0 358 30                        # ldecod_src/mc_direct.c:358:30
	movslq	%ecx, %rdi
.Ltmp84:
	#DEBUG_VALUE: RSD:x <- $edx
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%edx, %ecx
	andl	$-2, %ecx
	shrl	%edx
.Ltmp85:
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	andl	$1, %edx
	orl	%ecx, %edx
.Ltmp86:
	.loc	0 358 30                        # ldecod_src/mc_direct.c:358:30
	movslq	%edx, %rdx
	shlq	$5, %rdx
	movq	(%r9,%rdi,8), %rcx
	addq	%rdx, %rcx
.Ltmp87:
	#DEBUG_VALUE: fs <- undef
	.loc	0 360 10                        # ldecod_src/mc_direct.c:360:10
	cmpl	$0, 849280(%r10)
	.loc	0 360 52 is_stmt 0              # ldecod_src/mc_direct.c:360:52
	je	.LBB1_27
.Ltmp88:
# %bb.25:                               # %land.lhs.true145
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 360 80                        # ldecod_src/mc_direct.c:360:80
	cmpl	$3, 849088(%r10)
.Ltmp89:
	.loc	0 360 10                        # ldecod_src/mc_direct.c:360:10
	jne	.LBB1_27
.Ltmp90:
# %bb.26:                               # %if.then149
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 361 49 is_stmt 1              # ldecod_src/mc_direct.c:361:49
	movslq	216(%r8), %rcx
	.loc	0 361 15 is_stmt 0              # ldecod_src/mc_direct.c:361:15
	movq	160(%rsi,%rcx,8), %rcx
	addq	(%rcx,%rdi,8), %rdx
.Ltmp91:
	#DEBUG_VALUE: fs <- $rdx
	.loc	0 0 15                          # ldecod_src/mc_direct.c:0:15
	movq	%rdx, %rcx
.Ltmp92:
.LBB1_27:                               # %if.end159
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	#DEBUG_VALUE: fs <- $rcx
	.loc	0 362 20 is_stmt 1              # ldecod_src/mc_direct.c:362:20
	movzbl	24(%rcx), %edx
.Ltmp93:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	cmpl	$255, %edx
	jne	.LBB1_28
.Ltmp94:
.LBB1_21:                               # %land.lhs.true110
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	cmpb	$0, 25(%rcx)
	jne	.LBB1_32
.Ltmp95:
# %bb.22:                               # %land.lhs.true116
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movzwl	20(%rcx), %edx
.Ltmp96:
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
.Ltmp97:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	cmpw	$1, %si
	ja	.LBB1_32
.Ltmp98:
# %bb.23:                               # %land.rhs
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- [DW_OP_LLVM_entry_value 1] $ecx
	movzwl	22(%rcx), %eax
.Ltmp99:
	.loc	1 120 18                        # ldecod_src/inc/ifunctions.h:120:18
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
.Ltmp100:
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	cmpw	$2, %cx
	setae	%al
	popq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movzbl	%al, %eax
.Ltmp102:
	.loc	0 372 1 is_stmt 1               # ldecod_src/mc_direct.c:372:1
	retq
.Ltmp103:
.LBB1_3:                                # %land.lhs.true
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 316 65                        # ldecod_src/mc_direct.c:316:65
	movl	184(%r8), %r11d
	.loc	0 316 54 is_stmt 0              # ldecod_src/mc_direct.c:316:54
	testl	%r11d, %r11d
	.loc	0 316 75                        # ldecod_src/mc_direct.c:316:75
	jne	.LBB1_5
.Ltmp104:
# %bb.4:                                # %land.lhs.true5
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 316 97                        # ldecod_src/mc_direct.c:316:97
	cmpl	$1, 388(%rsi)
	.loc	0 316 113                       # ldecod_src/mc_direct.c:316:113
	je	.LBB1_7
.Ltmp105:
.LBB1_5:                                # %lor.lhs.false6
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 316 136                       # ldecod_src/mc_direct.c:316:136
	cmpl	(%rsi), %r11d
	.loc	0 316 155                       # ldecod_src/mc_direct.c:316:155
	je	.LBB1_24
.Ltmp106:
# %bb.6:                                # %land.lhs.true10
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	#DEBUG_VALUE: p_Vid <- $r10
	.loc	0 316 158                       # ldecod_src/mc_direct.c:316:158
	cmpl	$0, 96(%rsi)
.Ltmp107:
	.loc	0 315 9 is_stmt 1               # ldecod_src/mc_direct.c:315:9
	jne	.LBB1_7
	jmp	.LBB1_24
.Ltmp108:
.LBB1_12:                               # %if.else31
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- $rdi
	#DEBUG_VALUE: get_colocated_info_8x8:list1 <- $rsi
	#DEBUG_VALUE: get_colocated_info_8x8:i <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: get_colocated_info_8x8:j <- $ecx
	#DEBUG_VALUE: currSlice <- $r8
	.loc	0 329 24                        # ldecod_src/mc_direct.c:329:24
	movq	232(%rsi), %rdi
.Ltmp109:
	#DEBUG_VALUE: get_colocated_info_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 24 is_stmt 0                # ldecod_src/mc_direct.c:0:24
	jmp	.LBB1_18
.Ltmp110:
.Lfunc_end1:
	.size	get_colocated_info_8x8, .Lfunc_end1-get_colocated_info_8x8
	.cfi_endproc
                                        # -- End function
	.globl	update_direct_types             # -- Begin function update_direct_types
	.p2align	4, 0x90
	.type	update_direct_types,@function
update_direct_types:                    # @update_direct_types
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: update_direct_types:currSlice <- $rdi
	.loc	0 695 18 prologue_end is_stmt 1 # ldecod_src/mc_direct.c:695:18
	movq	24(%rdi), %rax
	.loc	0 695 7 is_stmt 0               # ldecod_src/mc_direct.c:695:7
	cmpl	$0, 3144(%rax)
	movl	$update_direct_mv_info_spatial_4x4, %eax
	movl	$update_direct_mv_info_spatial_8x8, %ecx
	cmoveq	%rax, %rcx
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	cmpl	$0, 132(%rdi)
	movl	$update_direct_mv_info_temporal, %eax
	cmovneq	%rcx, %rax
	movq	%rax, 13496(%rdi)
.Ltmp111:
	.loc	0 699 1 is_stmt 1               # ldecod_src/mc_direct.c:699:1
	retq
.Ltmp112:
.Lfunc_end2:
	.size	update_direct_types, .Lfunc_end2-update_direct_types
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_spatial_8x8
	.type	update_direct_mv_info_spatial_8x8,@function
update_direct_mv_info_spatial_8x8:      # @update_direct_mv_info_spatial_8x8
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- $rdi
	.loc	0 377 25 prologue_end           # ldecod_src/mc_direct.c:377:25
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.loc	0 377 103 is_stmt 0             # ldecod_src/mc_direct.c:377:103
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm0, %xmm1
	movmskps	%xmm1, %eax
	testl	%eax, %eax
.Ltmp113:
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:has_direct <- undef
	.loc	0 379 7 is_stmt 1               # ldecod_src/mc_direct.c:379:7
	je	.LBB3_31
.Ltmp114:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- $rdi
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	.loc	0 382 32                        # ldecod_src/mc_direct.c:382:32
	movq	(%rdi), %rax
.Ltmp115:
	#DEBUG_VALUE: currSlice <- $rax
	.loc	0 386 47                        # ldecod_src/mc_direct.c:386:47
	movq	13520(%rax), %rsi
.Ltmp116:
	#DEBUG_VALUE: dec_picture <- $rsi
	.loc	0 388 31                        # ldecod_src/mc_direct.c:388:31
	movswq	114(%rdi), %rcx
.Ltmp117:
	#DEBUG_VALUE: list_offset <- undef
	.loc	0 389 31                        # ldecod_src/mc_direct.c:389:31
	movq	264(%rax,%rcx,8), %rdx
.Ltmp118:
	#DEBUG_VALUE: list0 <- $rdx
	.loc	0 0 31 is_stmt 0                # ldecod_src/mc_direct.c:0:31
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
.Ltmp119:
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 390 31 is_stmt 1              # ldecod_src/mc_direct.c:390:31
	movq	272(%rax,%rcx,8), %rax
.Ltmp120:
	#DEBUG_VALUE: list1 <- $rax
	#DEBUG_VALUE: mv_info <- 0
	.loc	0 0 31 is_stmt 0                # ldecod_src/mc_direct.c:0:31
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp121:
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	leaq	28(%rsp), %rdx
	leaq	24(%rsp), %rcx
	leaq	15(%rsp), %r8
	leaq	14(%rsp), %r9
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
.Ltmp122:
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
.Ltmp123:
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 397 5 is_stmt 1               # ldecod_src/mc_direct.c:397:5
	callq	prepare_direct_params@PLT
.Ltmp124:
	.loc	0 0 5 is_stmt 0                 # ldecod_src/mc_direct.c:0:5
	movq	40(%rsp), %rdi                  # 8-byte Reload
	xorl	%ebp, %ebp
.Ltmp125:
	#DEBUG_VALUE: k <- 0
	xorl	%r12d, %r12d
	jmp	.LBB3_2
.Ltmp126:
.LBB3_20:                               # %if.then184
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp127:
	.loc	0 491 40 is_stmt 1              # ldecod_src/mc_direct.c:491:40
	movq	(%rax), %rax
	.loc	0 491 38 is_stmt 0              # ldecod_src/mc_direct.c:491:38
	movq	%rax, (%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 492 40 is_stmt 1              # ldecod_src/mc_direct.c:492:40
	movq	(%rax), %rax
	.loc	0 492 38 is_stmt 0              # ldecod_src/mc_direct.c:492:38
	movq	%rax, 8(%r14)
	.loc	0 494 35 is_stmt 1              # ldecod_src/mc_direct.c:494:35
	movq	$0, 16(%r14)
	movw	$0, 24(%r14)
.Ltmp128:
.LBB3_28:                               # %if.end261
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 35 is_stmt 0                # ldecod_src/mc_direct.c:0:35
	movq	48(%rsp), %rax                  # 8-byte Reload
	.loc	0 527 43 is_stmt 1              # ldecod_src/mc_direct.c:527:43
	movq	152(%rax), %rax
.Ltmp129:
	#DEBUG_VALUE: update_neighbor_mvs:mv_info <- undef
	#DEBUG_VALUE: update_neighbor_mvs:i4 <- $r15d
	#DEBUG_VALUE: update_neighbor_mvs:motion <- undef
	.loc	0 268 4                         # ldecod_src/mc_direct.c:268:4
	movq	(%rax,%r13,8), %rcx
	.loc	0 268 3 is_stmt 0               # ldecod_src/mc_direct.c:268:3
	movslq	%r15d, %rdx
	shlq	$5, %rdx
	.loc	0 268 25                        # ldecod_src/mc_direct.c:268:25
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rcx,%rdx)
	movups	%xmm0, 32(%rcx,%rdx)
	.loc	0 269 4 is_stmt 1               # ldecod_src/mc_direct.c:269:4
	movq	8(%rax,%r13,8), %rcx
	.loc	0 269 25 is_stmt 0              # ldecod_src/mc_direct.c:269:25
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 16(%rcx,%rbx)
	movups	%xmm0, (%rcx,%rbx)
	.loc	0 270 4 is_stmt 1               # ldecod_src/mc_direct.c:270:4
	movq	8(%rax,%r13,8), %rax
	.loc	0 270 25 is_stmt 0              # ldecod_src/mc_direct.c:270:25
	movdqu	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rax,%rdx)
	movdqu	%xmm0, 32(%rax,%rdx)
.Ltmp130:
.LBB3_29:                               # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	.loc	0 399 24 is_stmt 1              # ldecod_src/mc_direct.c:399:24
	incq	%r12
.Ltmp131:
	#DEBUG_VALUE: k <- $r12
	.loc	0 399 19 is_stmt 0              # ldecod_src/mc_direct.c:399:19
	addl	$2, %ebp
	cmpq	$4, %r12
.Ltmp132:
	.loc	0 399 5                         # ldecod_src/mc_direct.c:399:5
	je	.LBB3_30
.Ltmp133:
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	.loc	0 401 29 is_stmt 1              # ldecod_src/mc_direct.c:401:29
	cmpb	$0, 364(%rdi,%r12)
.Ltmp134:
	.loc	0 401 11 is_stmt 0              # ldecod_src/mc_direct.c:401:11
	jne	.LBB3_29
.Ltmp135:
# %bb.3:                                # %if.then35
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	.loc	0 403 15 is_stmt 1              # ldecod_src/mc_direct.c:403:15
	movl	%ebp, %eax
	andl	$2, %eax
.Ltmp136:
	#DEBUG_VALUE: i <- $eax
	.loc	0 404 15                        # ldecod_src/mc_direct.c:404:15
	movl	%r12d, %edx
	andl	$2, %edx
.Ltmp137:
	#DEBUG_VALUE: j <- $edx
	.loc	0 407 22                        # ldecod_src/mc_direct.c:407:22
	movslq	36(%rdi), %r13
	.loc	0 407 34 is_stmt 0              # ldecod_src/mc_direct.c:407:34
	addq	%rdx, %r13
.Ltmp138:
	#DEBUG_VALUE: j4 <- $r13
	.loc	0 408 22 is_stmt 1              # ldecod_src/mc_direct.c:408:22
	movslq	32(%rdi), %r15
	.loc	0 408 34 is_stmt 0              # ldecod_src/mc_direct.c:408:34
	addq	%rax, %r15
.Ltmp139:
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 34                          # ldecod_src/mc_direct.c:0:34
	movq	48(%rsp), %rax                  # 8-byte Reload
.Ltmp140:
	.loc	0 410 33 is_stmt 1              # ldecod_src/mc_direct.c:410:33
	movq	152(%rax), %rax
	.loc	0 410 20 is_stmt 0              # ldecod_src/mc_direct.c:410:20
	movq	%r15, %rbx
	shlq	$5, %rbx
	movq	(%rax,%r13,8), %r14
	addq	%rbx, %r14
.Ltmp141:
	#DEBUG_VALUE: mv_info <- undef
	.loc	0 0 20                          # ldecod_src/mc_direct.c:0:20
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 412 57 is_stmt 1              # ldecod_src/mc_direct.c:412:57
	movq	(%rax), %rsi
	movl	40(%rdi), %ecx
	.loc	0 412 91 is_stmt 0              # ldecod_src/mc_direct.c:412:91
	addl	%edx, %ecx
	.loc	0 412 26                        # ldecod_src/mc_direct.c:412:26
	movl	%r15d, %edx
.Ltmp142:
	callq	get_colocated_info_8x8
.Ltmp143:
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movzbl	15(%rsp), %ecx
.Ltmp144:
	.loc	0 468 42 is_stmt 1              # ldecod_src/mc_direct.c:468:42
	movsbq	%cl, %rdx
.Ltmp145:
	.loc	0 412 96                        # ldecod_src/mc_direct.c:412:96
	testl	%eax, %eax
.Ltmp146:
	#DEBUG_VALUE: is_not_moving <- undef
	.loc	0 414 27                        # ldecod_src/mc_direct.c:414:27
	je	.LBB3_4
.Ltmp147:
# %bb.18:                               # %if.else176thread-pre-split
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 27 is_stmt 0                # ldecod_src/mc_direct.c:0:27
	movzbl	14(%rsp), %eax
	jmp	.LBB3_19
.Ltmp148:
.LBB3_4:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 414 41                        # ldecod_src/mc_direct.c:414:41
	testb	%cl, %cl
	sete	%sil
	movsbq	14(%rsp), %rax
	testq	%rax, %rax
	sete	%dil
	.loc	0 414 46                        # ldecod_src/mc_direct.c:414:46
	orb	%sil, %dil
	cmpb	$1, %dil
	jne	.LBB3_19
.Ltmp149:
# %bb.5:                                # %if.then55
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 416 25 is_stmt 1              # ldecod_src/mc_direct.c:416:25
	cmpb	$-1, %al
	movq	40(%rsp), %rdi                  # 8-byte Reload
.Ltmp150:
	.loc	0 416 15 is_stmt 0              # ldecod_src/mc_direct.c:416:15
	je	.LBB3_6
.Ltmp151:
# %bb.9:                                # %if.else90
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 437 30 is_stmt 1              # ldecod_src/mc_direct.c:437:30
	cmpb	$-1, %cl
.Ltmp152:
	.loc	0 437 20 is_stmt 0              # ldecod_src/mc_direct.c:437:20
	je	.LBB3_10
.Ltmp153:
# %bb.12:                               # %if.else129
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 414 41 is_stmt 1              # ldecod_src/mc_direct.c:414:41
	testb	%cl, %cl
.Ltmp154:
	.loc	0 460 18                        # ldecod_src/mc_direct.c:460:18
	je	.LBB3_13
.Ltmp155:
# %bb.14:                               # %if.else141
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 18 is_stmt 0                # ldecod_src/mc_direct.c:0:18
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp156:
	.loc	0 468 42 is_stmt 1              # ldecod_src/mc_direct.c:468:42
	movq	(%rax,%rdx,8), %rax
	.loc	0 468 40 is_stmt 0              # ldecod_src/mc_direct.c:468:40
	movq	%rax, 8(%r14)
	.loc	0 469 37 is_stmt 1              # ldecod_src/mc_direct.c:469:37
	movl	28(%rsp), %eax
	jmp	.LBB3_15
.Ltmp157:
	.p2align	4, 0x90
.LBB3_19:                               # %if.else176
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 37 is_stmt 0                # ldecod_src/mc_direct.c:0:37
	movq	40(%rsp), %rdi                  # 8-byte Reload
.Ltmp158:
	.loc	0 489 29 is_stmt 1              # ldecod_src/mc_direct.c:489:29
	testb	%al, %cl
	js	.LBB3_20
.Ltmp159:
# %bb.21:                               # %if.else199
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 489 25 is_stmt 0              # ldecod_src/mc_direct.c:489:25
	testb	%cl, %cl
	.loc	0 498 20 is_stmt 1              # ldecod_src/mc_direct.c:498:20
	js	.LBB3_22
.Ltmp160:
# %bb.24:                               # %if.else219
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 20 is_stmt 0                # ldecod_src/mc_direct.c:0:20
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp161:
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, (%r14)
	testb	%al, %al
.Ltmp162:
	.loc	0 507 21 is_stmt 1              # ldecod_src/mc_direct.c:507:21
	js	.LBB3_25
.Ltmp163:
# %bb.26:                               # %if.else239
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 520 40                        # ldecod_src/mc_direct.c:520:40
	movzbl	%al, %eax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	.loc	0 520 38 is_stmt 0              # ldecod_src/mc_direct.c:520:38
	movq	%rax, 8(%r14)
	.loc	0 521 35 is_stmt 1              # ldecod_src/mc_direct.c:521:35
	movl	28(%rsp), %eax
	movl	%eax, 16(%r14)
	.loc	0 522 35                        # ldecod_src/mc_direct.c:522:35
	movl	24(%rsp), %eax
	movl	%eax, 20(%r14)
	.loc	0 523 38                        # ldecod_src/mc_direct.c:523:38
	movb	%cl, 24(%r14)
	jmp	.LBB3_27
.Ltmp164:
.LBB3_22:                               # %if.then203
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 500 38                        # ldecod_src/mc_direct.c:500:38
	movq	$0, (%r14)
	.loc	0 501 40                        # ldecod_src/mc_direct.c:501:40
	movsbq	%al, %rax
.Ltmp165:
.LBB3_23:                               # %if.else112
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 40 is_stmt 0                # ldecod_src/mc_direct.c:0:40
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 8(%r14)
	movl	$0, 16(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 20(%r14)
	movb	$-1, 24(%r14)
.Ltmp166:
.LBB3_27:                               # %if.end261
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	movzbl	14(%rsp), %eax
	movb	%al, 25(%r14)
	jmp	.LBB3_28
.Ltmp167:
.LBB3_6:                                # %if.then59
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 414 41 is_stmt 1              # ldecod_src/mc_direct.c:414:41
	testb	%cl, %cl
.Ltmp168:
	.loc	0 418 18                        # ldecod_src/mc_direct.c:418:18
	je	.LBB3_7
.Ltmp169:
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 18 is_stmt 0                # ldecod_src/mc_direct.c:0:18
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp170:
	.loc	0 429 42 is_stmt 1              # ldecod_src/mc_direct.c:429:42
	movq	(%rax,%rdx,8), %rax
	.loc	0 429 40 is_stmt 0              # ldecod_src/mc_direct.c:429:40
	movq	%rax, (%r14)
.Ltmp171:
.LBB3_25:                               # %if.then223
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	$0, 8(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	$0, 20(%r14)
	movb	%cl, 24(%r14)
	movb	$-1, 25(%r14)
.Ltmp172:
	.loc	0 516 11 is_stmt 1              # ldecod_src/mc_direct.c:516:11
	jmp	.LBB3_28
.Ltmp173:
.LBB3_10:                               # %if.then94
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	$0, (%r14)
	testb	%al, %al
.Ltmp174:
	.loc	0 439 18 is_stmt 1              # ldecod_src/mc_direct.c:439:18
	jne	.LBB3_23
.Ltmp175:
# %bb.11:                               # %if.then98
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 18 is_stmt 0                # ldecod_src/mc_direct.c:0:18
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp176:
	.loc	0 442 42 is_stmt 1              # ldecod_src/mc_direct.c:442:42
	movq	(%rax), %rax
	.loc	0 442 40 is_stmt 0              # ldecod_src/mc_direct.c:442:40
	movq	%rax, 8(%r14)
	.loc	0 443 37 is_stmt 1              # ldecod_src/mc_direct.c:443:37
	movq	$0, 16(%r14)
	.loc	0 445 40                        # ldecod_src/mc_direct.c:445:40
	movw	$255, 24(%r14)
	.loc	0 447 13                        # ldecod_src/mc_direct.c:447:13
	jmp	.LBB3_28
.Ltmp177:
.LBB3_13:                               # %if.then133
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 13 is_stmt 0                # ldecod_src/mc_direct.c:0:13
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp178:
	.loc	0 462 42 is_stmt 1              # ldecod_src/mc_direct.c:462:42
	movq	(%rax), %rax
	.loc	0 462 40 is_stmt 0              # ldecod_src/mc_direct.c:462:40
	movq	%rax, (%r14)
	xorl	%eax, %eax
.Ltmp179:
.LBB3_15:                               # %if.end151
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movl	%eax, 16(%r14)
	movb	%cl, 24(%r14)
.Ltmp180:
	.loc	0 473 18 is_stmt 1              # ldecod_src/mc_direct.c:473:18
	movsbq	14(%rsp), %rax
	testq	%rax, %rax
.Ltmp181:
	.loc	0 473 18 is_stmt 0              # ldecod_src/mc_direct.c:473:18
	je	.LBB3_16
.Ltmp182:
# %bb.17:                               # %if.else163
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 18                          # ldecod_src/mc_direct.c:0:18
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp183:
	.loc	0 481 42 is_stmt 1              # ldecod_src/mc_direct.c:481:42
	movq	(%rcx,%rax,8), %rcx
	.loc	0 481 40 is_stmt 0              # ldecod_src/mc_direct.c:481:40
	movq	%rcx, 8(%r14)
	.loc	0 482 37 is_stmt 1              # ldecod_src/mc_direct.c:482:37
	movl	24(%rsp), %ecx
	movl	%ecx, 20(%r14)
	.loc	0 483 40                        # ldecod_src/mc_direct.c:483:40
	movb	%al, 25(%r14)
	jmp	.LBB3_28
.Ltmp184:
.LBB3_16:                               # %if.then155
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 40 is_stmt 0                # ldecod_src/mc_direct.c:0:40
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp185:
	.loc	0 475 42 is_stmt 1              # ldecod_src/mc_direct.c:475:42
	movq	(%rax), %rax
	.loc	0 475 40 is_stmt 0              # ldecod_src/mc_direct.c:475:40
	movq	%rax, 8(%r14)
	.loc	0 476 37 is_stmt 1              # ldecod_src/mc_direct.c:476:37
	movl	$0, 20(%r14)
	.loc	0 477 40                        # ldecod_src/mc_direct.c:477:40
	movb	$0, 25(%r14)
	.loc	0 478 13                        # ldecod_src/mc_direct.c:478:13
	jmp	.LBB3_28
.Ltmp186:
.LBB3_7:                                # %if.then63
                                        #   in Loop: Header=BB3_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	#DEBUG_VALUE: j4 <- $r13
	#DEBUG_VALUE: i4 <- $r15d
	.loc	0 0 13 is_stmt 0                # ldecod_src/mc_direct.c:0:13
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp187:
	.loc	0 420 42 is_stmt 1              # ldecod_src/mc_direct.c:420:42
	movq	(%rax), %rax
	.loc	0 420 40 is_stmt 0              # ldecod_src/mc_direct.c:420:40
	movq	%rax, (%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 421 42 is_stmt 1              # ldecod_src/mc_direct.c:421:42
	movq	(%rax), %rax
	.loc	0 421 40 is_stmt 0              # ldecod_src/mc_direct.c:421:40
	movq	%rax, 8(%r14)
	.loc	0 423 37 is_stmt 1              # ldecod_src/mc_direct.c:423:37
	movq	$0, 16(%r14)
	movw	$-256, 24(%r14)
	.loc	0 426 13                        # ldecod_src/mc_direct.c:426:13
	jmp	.LBB3_28
.Ltmp188:
.LBB3_30:                               # %for.end
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: dec_picture <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: k <- $r12
	.loc	0 0 13 is_stmt 0                # ldecod_src/mc_direct.c:0:13
	addq	$56, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.Ltmp189:
.LBB3_31:                               # %if.end266
	#DEBUG_VALUE: update_direct_mv_info_spatial_8x8:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 531 1 is_stmt 1               # ldecod_src/mc_direct.c:531:1
	retq
.Ltmp190:
.Lfunc_end3:
	.size	update_direct_mv_info_spatial_8x8, .Lfunc_end3-update_direct_mv_info_spatial_8x8
	.cfi_endproc
	.file	8 "ldecod_src/inc" "mbuffer.h" md5 0x1ba7faf5f978b0f36a8f480bbf7b3401
	.file	9 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.file	10 "ldecod_src/inc" "mc_prediction.h" md5 0xb29b7430ebaae75df281117d292611ae
	.file	11 "ldecod_src/inc" "parsetcommon.h" md5 0xd59d7e00f3aec3a23ed88314ae35b687
	.file	12 "ldecod_src/inc" "io_image.h" md5 0x8caef624e6f5391b0c6ab2984e7f77c6
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	14 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	15 "ldecod_src/inc" "win32.h" md5 0x100def0ffeee72ecdc377183538a04bb
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_temporal
	.type	update_direct_mv_info_temporal,@function
update_direct_mv_info_temporal:         # @update_direct_mv_info_temporal
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- $rdi
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- undef
	.loc	0 30 26 prologue_end            # ldecod_src/mc_direct.c:30:26
	movl	152(%rdi), %ecx
	.loc	0 30 43 is_stmt 0               # ldecod_src/mc_direct.c:30:43
	cmpw	$8, %cx
	movl	$4, %eax
	.loc	0 30 26                         # ldecod_src/mc_direct.c:30:26
	cmovnel	%ecx, %eax
.Ltmp191:
	#DEBUG_VALUE: update_direct_mv_info_temporal:partmode <- undef
	#DEBUG_VALUE: update_direct_mv_info_temporal:step_v0 <- undef
	#DEBUG_VALUE: update_direct_mv_info_temporal:list_offset <- undef
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- undef
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- undef
	.loc	0 43 25 is_stmt 1               # ldecod_src/mc_direct.c:43:25
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.loc	0 43 103 is_stmt 0              # ldecod_src/mc_direct.c:43:103
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm0, %xmm1
	movmskps	%xmm1, %ecx
	testl	%ecx, %ecx
.Ltmp192:
	#DEBUG_VALUE: update_direct_mv_info_temporal:has_direct <- undef
	.loc	0 45 7 is_stmt 1                # ldecod_src/mc_direct.c:45:7
	je	.LBB4_118
.Ltmp193:
# %bb.1:                                # %for.cond.preheader
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- $rdi
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	(%rdi), %r14
.Ltmp194:
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	movswq	%ax, %rax
.Ltmp195:
	#DEBUG_VALUE: update_direct_mv_info_temporal:partmode <- $rax
	movslq	BLOCK_STEP+4(,%rax,8), %rsi
	movswq	114(%rdi), %rcx
	movq	264(%r14,%rcx,8), %r15
.Ltmp196:
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	272(%r14,%rcx,8), %rbp
.Ltmp197:
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	.loc	0 31 25 is_stmt 1               # ldecod_src/mc_direct.c:31:25
	movslq	BLOCK_STEP(,%rax,8), %rcx
.Ltmp198:
	#DEBUG_VALUE: update_direct_mv_info_temporal:step_h0 <- undef
	.loc	0 37 45                         # ldecod_src/mc_direct.c:37:45
	movq	13520(%r14), %r13
.Ltmp199:
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- $r13
	.loc	0 27 36                         # ldecod_src/mc_direct.c:27:36
	movq	8(%rdi), %rax
.Ltmp200:
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- $rax
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- 0
	.loc	0 0 36 is_stmt 0                # ldecod_src/mc_direct.c:0:36
	movq	%rax, 136(%rsp)                 # 8-byte Spill
.Ltmp201:
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	leaq	336(%r14), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.Ltmp202:
	.loc	0 49 5 is_stmt 1                # ldecod_src/mc_direct.c:49:5
	shlq	$5, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	$0, 48(%rsp)                    # 8-byte Folded Spill
	movq	%r13, (%rsp)                    # 8-byte Spill
.Ltmp203:
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	.loc	0 0 5 is_stmt 0                 # ldecod_src/mc_direct.c:0:5
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
.Ltmp204:
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB4_3
.Ltmp205:
	.p2align	4, 0x90
.LBB4_2:                                # %for.inc1016
                                        #   in Loop: Header=BB4_3 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	movq	88(%rsp), %rax                  # 8-byte Reload
.Ltmp206:
	.loc	0 49 24                         # ldecod_src/mc_direct.c:49:24
	incq	%rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
.Ltmp207:
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- $rax
	.loc	0 0 24                          # ldecod_src/mc_direct.c:0:24
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	.loc	0 49 19                         # ldecod_src/mc_direct.c:49:19
	cmpq	$4, %rax
.Ltmp208:
	.loc	0 49 5                          # ldecod_src/mc_direct.c:49:5
	je	.LBB4_117
.Ltmp209:
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- $rax
	.loc	0 0 5                           # ldecod_src/mc_direct.c:0:5
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.Ltmp210:
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 51 29 is_stmt 1               # ldecod_src/mc_direct.c:51:29
	cmpb	$0, 364(%rbx,%rax)
.Ltmp211:
	.loc	0 51 11 is_stmt 0               # ldecod_src/mc_direct.c:51:11
	jne	.LBB4_2
.Ltmp212:
# %bb.4:                                # %if.then47
                                        #   in Loop: Header=BB4_3 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	48(%rsp), %rax                  # 8-byte Reload
.Ltmp213:
	.loc	0 51 11                         # ldecod_src/mc_direct.c:51:11
	movl	%eax, %edx
	andl	$1, %edx
	shll	$6, %edx
	addl	%eax, %eax
	andl	$2, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rdi
	movabsq	$9223372036854775806, %rcx      # imm = 0x7FFFFFFFFFFFFFFE
	andq	%rcx, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
.Ltmp214:
	.loc	0 53 27 is_stmt 1               # ldecod_src/mc_direct.c:53:27
	movb	$2, 368(%rbx,%rax)
.Ltmp215:
	.loc	0 54 20                         # ldecod_src/mc_direct.c:54:20
	movl	%eax, %r11d
	andl	$2, %r11d
.Ltmp216:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- $r11d
	.loc	0 0 20 is_stmt 0                # ldecod_src/mc_direct.c:0:20
	leal	2(%r11), %ecx
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	leal	(%rax,%rax), %ecx
	andl	$2, %ecx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	leal	2(%rcx), %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
.Ltmp217:
	.loc	0 56 28 is_stmt 1               # ldecod_src/mc_direct.c:56:28
	movl	32(%rbx), %eax
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	.loc	0 56 11 is_stmt 0               # ldecod_src/mc_direct.c:56:11
	leaq	16(%rdx), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB4_6
.Ltmp218:
	.p2align	4, 0x90
.LBB4_5:                                # %for.inc1012
                                        #   in Loop: Header=BB4_6 Depth=2
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- $r11d
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.loc	0 54 9 is_stmt 1                # ldecod_src/mc_direct.c:54:9
	addq	%rsi, 96(%rsp)                  # 8-byte Folded Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r11d
.Ltmp219:
	.loc	0 54 35 is_stmt 0               # ldecod_src/mc_direct.c:54:35
	cmpl	80(%rsp), %ecx                  # 4-byte Folded Reload
.Ltmp220:
	.loc	0 54 9                          # ldecod_src/mc_direct.c:54:9
	jge	.LBB4_2
.Ltmp221:
.LBB4_6:                                # %for.body56
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- $r11d
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- $r11d
	.loc	0 0 9                           # ldecod_src/mc_direct.c:0:9
	movq	168(%rsp), %rcx                 # 8-byte Reload
.Ltmp222:
	.loc	0 56 36 is_stmt 1               # ldecod_src/mc_direct.c:56:36
	addl	%eax, %ecx
.Ltmp223:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $ecx
	.loc	0 0 36 is_stmt 0                # ldecod_src/mc_direct.c:0:36
	movq	104(%rsp), %rdx                 # 8-byte Reload
.Ltmp224:
	.loc	0 56 89                         # ldecod_src/mc_direct.c:56:89
	addl	%eax, %edx
	addl	%r11d, %esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	.loc	0 56 55                         # ldecod_src/mc_direct.c:56:55
	cmpl	%edx, %ecx
.Ltmp225:
	.loc	0 56 11                         # ldecod_src/mc_direct.c:56:11
	jge	.LBB4_5
.Ltmp226:
# %bb.7:                                # %for.body67.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=2
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- $r11d
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $ecx
	movslq	%eax, %rcx
.Ltmp227:
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	152(%rsp), %rax                 # 8-byte Reload
	.loc	0 56 11                         # ldecod_src/mc_direct.c:56:11
	leaq	(%rax,%rcx), %r12
	shlq	$5, %rcx
	movq	160(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	addq	144(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%r11, 112(%rsp)                 # 8-byte Spill
.Ltmp228:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	jmp	.LBB4_10
.Ltmp229:
.LBB4_8:                                # %if.then1005
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -135792468
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 255 17 is_stmt 1              # ldecod_src/mc_direct.c:255:17
	movl	$.L.str, %edi
	movl	$-1111, %esi                    # imm = 0xFBA9
	callq	error@PLT
.Ltmp230:
	.p2align	4, 0x90
.LBB4_9:                                # %if.end1008
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	.loc	0 56 96                         # ldecod_src/mc_direct.c:56:96
	addq	8(%rsp), %r12                   # 8-byte Folded Reload
.Ltmp231:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	.loc	0 56 65 is_stmt 0               # ldecod_src/mc_direct.c:56:65
	movl	32(%rbx), %eax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	.loc	0 56 89                         # ldecod_src/mc_direct.c:56:89
	addl	%eax, %ecx
	.loc	0 56 55                         # ldecod_src/mc_direct.c:56:55
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx                 # 8-byte Reload
.Ltmp232:
	.loc	0 56 11                         # ldecod_src/mc_direct.c:56:11
	addq	%rdx, 128(%rsp)                 # 8-byte Folded Spill
	addq	%rdx, 120(%rsp)                 # 8-byte Folded Spill
.Ltmp233:
	.loc	0 56 55                         # ldecod_src/mc_direct.c:56:55
	cmpq	%rcx, %r12
	movq	112(%rsp), %r11                 # 8-byte Reload
.Ltmp234:
	.loc	0 56 11                         # ldecod_src/mc_direct.c:56:11
	jge	.LBB4_5
.Ltmp235:
.LBB4_10:                               # %for.body67
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	136(%rsp), %rax                 # 8-byte Reload
.Ltmp236:
	.loc	0 63 32 is_stmt 1               # ldecod_src/mc_direct.c:63:32
	movq	16(%rax), %r8
	.loc	0 63 44 is_stmt 0               # ldecod_src/mc_direct.c:63:44
	movl	3144(%r8), %esi
	movl	40(%rbx), %eax
	.loc	0 64 0 is_stmt 1                # ldecod_src/mc_direct.c:64:0
	addl	%r11d, %eax
	movq	(%rbp), %rdi
	movq	152(%rdi), %rcx
	.loc	0 63 25                         # ldecod_src/mc_direct.c:63:25
	testl	%esi, %esi
	je	.LBB4_12
.Ltmp237:
# %bb.11:                               # %cond.true69
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: RSD:x <- undef
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%eax, %edx
	andl	$-2, %edx
	movl	%eax, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%edx, %r9d
.Ltmp238:
	.loc	0 64 16                         # ldecod_src/mc_direct.c:64:16
	movslq	%r9d, %r9
.Ltmp239:
	#DEBUG_VALUE: RSD:x <- $r12
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %edx
	andl	$-2, %edx
	movl	%r12d, %r10d
	shrl	%r10d
	andl	$1, %r10d
	orl	%edx, %r10d
.Ltmp240:
	.loc	0 64 16                         # ldecod_src/mc_direct.c:64:16
	movslq	%r10d, %rdx
	jmp	.LBB4_13
.Ltmp241:
	.p2align	4, 0x90
.LBB4_12:                               # %cond.false77
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 64 77 is_stmt 0               # ldecod_src/mc_direct.c:64:77
	movslq	%eax, %r9
	movq	%r12, %rdx
.Ltmp242:
.LBB4_13:                               # %cond.end86
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 64 0                          # ldecod_src/mc_direct.c:64:0
	shlq	$5, %rdx
	addq	(%rcx,%r9,8), %rdx
.Ltmp243:
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 65 27 is_stmt 1               # ldecod_src/mc_direct.c:65:27
	movl	128(%r14), %ecx
	.loc	0 65 16 is_stmt 0               # ldecod_src/mc_direct.c:65:16
	testl	%ecx, %ecx
.Ltmp244:
	.loc	0 65 16                         # ldecod_src/mc_direct.c:65:16
	je	.LBB4_21
.Ltmp245:
# %bb.14:                               # %if.then89
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 68 19 is_stmt 1               # ldecod_src/mc_direct.c:68:19
	cmpl	$0, 384(%rbx)
	.loc	0 68 36 is_stmt 0               # ldecod_src/mc_direct.c:68:36
	jne	.LBB4_33
.Ltmp246:
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 68 41                         # ldecod_src/mc_direct.c:68:41
	movq	272(%r14), %rdi
	movq	(%rdi), %rdi
	.loc	0 68 70                         # ldecod_src/mc_direct.c:68:70
	movl	388(%rdi), %r8d
	.loc	0 68 104                        # ldecod_src/mc_direct.c:68:104
	cmpl	$1, %r8d
	je	.LBB4_18
.Ltmp247:
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	cmpl	$3, %r8d
	jne	.LBB4_33
.Ltmp248:
# %bb.17:                               # %land.lhs.true96
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 68 143                        # ldecod_src/mc_direct.c:68:143
	movq	184(%rdi), %rdi
	.loc	0 68 160                        # ldecod_src/mc_direct.c:68:160
	movslq	24(%rbx), %r8
	.loc	0 68 107                        # ldecod_src/mc_direct.c:68:107
	cmpb	$0, (%rdi,%r8)
	.loc	0 68 170                        # ldecod_src/mc_direct.c:68:170
	je	.LBB4_33
.Ltmp249:
.LBB4_18:                               # %if.then111
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 71 39 is_stmt 1               # ldecod_src/mc_direct.c:71:39
	movl	4(%r13), %r8d
	.loc	0 71 45 is_stmt 0               # ldecod_src/mc_direct.c:71:45
	movq	304(%r14), %rdx
.Ltmp250:
	movq	(%rdx), %rdx
	.loc	0 71 43                         # ldecod_src/mc_direct.c:71:43
	movl	%r8d, %edi
	subl	4(%rdx), %edi
.Ltmp251:
	#DEBUG_VALUE: iabs:x <- $edi
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $edi
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%edi, %r9d
	negl	%r9d
	cmovsl	%edi, %r9d
.Ltmp252:
	.loc	0 71 105                        # ldecod_src/mc_direct.c:71:105
	movq	288(%r14), %rdi
.Ltmp253:
	movq	(%rdi), %rdi
	.loc	0 71 104 is_stmt 0              # ldecod_src/mc_direct.c:71:104
	subl	4(%rdi), %r8d
.Ltmp254:
	#DEBUG_VALUE: iabs:x <- $r8d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
.Ltmp255:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	sarl	%eax
	cltq
	.loc	0 71 80 is_stmt 1               # ldecod_src/mc_direct.c:71:80
	cmpl	%r10d, %r9d
.Ltmp256:
	.loc	0 71 21 is_stmt 0               # ldecod_src/mc_direct.c:71:21
	jbe	.LBB4_30
.Ltmp257:
.LBB4_19:                               # %if.then126
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	152(%rdi), %rdx
	movq	(%rdx,%rax,8), %rdx
.Ltmp258:
	.loc	0 63 25 is_stmt 1               # ldecod_src/mc_direct.c:63:25
	testl	%esi, %esi
.Ltmp259:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	je	.LBB4_31
.Ltmp260:
.LBB4_20:                               # %cond.true130
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: RSD:x <- undef
	.loc	1 238 10 is_stmt 1              # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %eax
	andl	$-2, %eax
	movl	%r12d, %esi
	shrl	%esi
	andl	$1, %esi
	orl	%eax, %esi
.Ltmp261:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movslq	%esi, %rax
	jmp	.LBB4_32
.Ltmp262:
	.p2align	4, 0x90
.LBB4_21:                               # %if.else190
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 83 22 is_stmt 1               # ldecod_src/mc_direct.c:83:22
	cmpl	$0, 3136(%r8)
	.loc	0 83 61 is_stmt 0               # ldecod_src/mc_direct.c:83:61
	jne	.LBB4_33
.Ltmp263:
# %bb.22:                               # %land.lhs.true193
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 83 65                         # ldecod_src/mc_direct.c:83:65
	cmpl	$0, 176(%r14)
	.loc	0 83 91                         # ldecod_src/mc_direct.c:83:91
	je	.LBB4_28
.Ltmp264:
# %bb.23:                               # %land.lhs.true283
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 96 104 is_stmt 1              # ldecod_src/mc_direct.c:96:104
	movl	184(%r14), %r8d
	.loc	0 96 113 is_stmt 0              # ldecod_src/mc_direct.c:96:113
	cmpl	(%rdi), %r8d
	.loc	0 96 135                        # ldecod_src/mc_direct.c:96:135
	je	.LBB4_33
.Ltmp265:
# %bb.24:                               # %land.lhs.true288
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 96 138                        # ldecod_src/mc_direct.c:96:138
	cmpl	$0, 96(%rdi)
.Ltmp266:
	.loc	0 96 21                         # ldecod_src/mc_direct.c:96:21
	je	.LBB4_33
.Ltmp267:
# %bb.25:                               # %if.then291
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	240(%rdi), %rdx
.Ltmp268:
	.loc	0 98 40 is_stmt 1               # ldecod_src/mc_direct.c:98:40
	cmpl	$1, %r8d
.Ltmp269:
	.loc	0 98 19 is_stmt 0               # ldecod_src/mc_direct.c:98:19
	jne	.LBB4_114
.Ltmp270:
# %bb.26:                               # %if.then295
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 101 0 is_stmt 1               # ldecod_src/mc_direct.c:101:0
	movq	224(%rdx), %rdx
.Ltmp271:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	152(%rdx), %rdi
.Ltmp272:
	.loc	0 63 25 is_stmt 1               # ldecod_src/mc_direct.c:63:25
	testl	%esi, %esi
.Ltmp273:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	je	.LBB4_115
.Ltmp274:
.LBB4_27:                               # %cond.true299
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	1 238 10 is_stmt 1              # ldecod_src/inc/ifunctions.h:238:10
	movl	%eax, %edx
	andl	$-2, %edx
	shrl	%eax
	andl	$1, %eax
	orl	%edx, %eax
.Ltmp275:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	cltq
.Ltmp276:
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %edx
	andl	$-2, %edx
	movl	%r12d, %esi
	shrl	%esi
	andl	$1, %esi
	orl	%edx, %esi
.Ltmp277:
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movslq	%esi, %rdx
	jmp	.LBB4_116
.Ltmp278:
.LBB4_28:                               # %land.lhs.true195
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 83 94 is_stmt 1               # ldecod_src/mc_direct.c:83:94
	movq	272(%r14), %r8
	movq	(%r8), %r8
	.loc	0 83 135 is_stmt 0              # ldecod_src/mc_direct.c:83:135
	cmpl	$0, 388(%r8)
.Ltmp279:
	.loc	0 83 21                         # ldecod_src/mc_direct.c:83:21
	je	.LBB4_33
.Ltmp280:
# %bb.29:                               # %if.then202
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 85 37 is_stmt 1               # ldecod_src/mc_direct.c:85:37
	movl	4(%r13), %r8d
	.loc	0 85 106 is_stmt 0              # ldecod_src/mc_direct.c:85:106
	movq	224(%rdi), %rdx
.Ltmp281:
	.loc	0 85 53                         # ldecod_src/mc_direct.c:85:53
	movq	232(%rdi), %rdi
	.loc	0 85 41                         # ldecod_src/mc_direct.c:85:41
	movl	%r8d, %r9d
	subl	4(%rdi), %r9d
.Ltmp282:
	#DEBUG_VALUE: iabs:x <- $r9d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r9d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
.Ltmp283:
	.loc	0 85 95                         # ldecod_src/mc_direct.c:85:95
	subl	4(%rdx), %r8d
.Ltmp284:
	#DEBUG_VALUE: iabs:x <- $r8d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8d
	.loc	1 120 18                        # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r9d
.Ltmp285:
	negl	%r9d
	cmovsl	%r8d, %r9d
.Ltmp286:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	sarl	%eax
	cltq
	.loc	0 85 71 is_stmt 1               # ldecod_src/mc_direct.c:85:71
	cmpl	%r9d, %r10d
.Ltmp287:
	.loc	0 85 19 is_stmt 0               # ldecod_src/mc_direct.c:85:19
	jbe	.LBB4_19
.Ltmp288:
.LBB4_30:                               # %if.else
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	152(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
.Ltmp289:
	.loc	0 63 25 is_stmt 1               # ldecod_src/mc_direct.c:63:25
	testl	%esi, %esi
.Ltmp290:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	jne	.LBB4_20
.Ltmp291:
.LBB4_31:                               # %cond.false144
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	movq	%r12, %rax
.Ltmp292:
.LBB4_32:                               # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	shlq	$5, %rax
	addq	%rax, %rdx
.Ltmp293:
	.p2align	4, 0x90
.LBB4_33:                               # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 110 50 is_stmt 1              # ldecod_src/mc_direct.c:110:50
	xorl	%eax, %eax
	cmpb	$-1, 24(%rdx)
	sete	%al
.Ltmp294:
	#DEBUG_VALUE: refList <- undef
	#DEBUG_VALUE: ref_idx <- [DW_OP_LLVM_convert 8 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] undef
	.loc	0 113 25                        # ldecod_src/mc_direct.c:113:25
	cmpb	$-1, 24(%rdx,%rax)
.Ltmp295:
	.loc	0 113 17 is_stmt 0              # ldecod_src/mc_direct.c:113:17
	je	.LBB4_37
.Ltmp296:
# %bb.34:                               # %if.else405
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 65 16 is_stmt 1               # ldecod_src/mc_direct.c:65:16
	testl	%ecx, %ecx
.Ltmp297:
	.loc	0 131 49                        # ldecod_src/mc_direct.c:131:49
	je	.LBB4_43
.Ltmp298:
# %bb.35:                               # %land.lhs.true408
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 131 55 is_stmt 0              # ldecod_src/mc_direct.c:131:55
	cmpl	$0, 384(%rbx)
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	(%rdx,%rax,8), %rcx
	movl	(%rcx), %esi
	movq	40(%rsp), %r8                   # 8-byte Reload
	.loc	0 131 72                        # ldecod_src/mc_direct.c:131:72
	je	.LBB4_46
.Ltmp299:
# %bb.36:                               # %land.lhs.true411
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	testl	%esi, %esi
	jne	.LBB4_54
	jmp	.LBB4_47
.Ltmp300:
	.p2align	4, 0x90
.LBB4_37:                               # %if.then370
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 115 33 is_stmt 1              # ldecod_src/mc_direct.c:115:33
	movslq	36(%rbx), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
.Ltmp301:
	.loc	0 115 73 is_stmt 0              # ldecod_src/mc_direct.c:115:73
	addl	%eax, %ecx
.Ltmp302:
	.loc	0 115 41                        # ldecod_src/mc_direct.c:115:41
	leal	(%rax,%r11), %edx
.Ltmp303:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $edx
	.loc	0 115 50                        # ldecod_src/mc_direct.c:115:50
	cmpl	%ecx, %edx
.Ltmp304:
	.loc	0 115 15                        # ldecod_src/mc_direct.c:115:15
	jge	.LBB4_9
.Ltmp305:
# %bb.38:                               # %for.cond379.preheader.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $edx
	.loc	0 0 15                          # ldecod_src/mc_direct.c:0:15
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_9
.Ltmp306:
# %bb.39:                               # %for.cond379.preheader.us.preheader
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%r12, %rcx
	.loc	0 115 15                        # ldecod_src/mc_direct.c:115:15
	addq	96(%rsp), %rax                  # 8-byte Folded Reload
.Ltmp307:
	.p2align	4, 0x90
.LBB4_40:                               # %for.cond379.preheader.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_41 Depth 5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $rax
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 15                          # ldecod_src/mc_direct.c:0:15
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	%r12, %rsi
.Ltmp308:
	.p2align	4, 0x90
.LBB4_41:                               # %for.body383.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        #         Parent Loop BB4_40 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $rax
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $rsi
	.loc	0 119 60 is_stmt 1              # ldecod_src/mc_direct.c:119:60
	movq	152(%r13), %rdi
	.loc	0 119 47 is_stmt 0              # ldecod_src/mc_direct.c:119:47
	movq	(%rdi,%rax,8), %rdi
.Ltmp309:
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rdi, $rsi
	.loc	0 120 46 is_stmt 1              # ldecod_src/mc_direct.c:120:46
	movq	(%r15), %r8
	.loc	0 120 44 is_stmt 0              # ldecod_src/mc_direct.c:120:44
	movq	%r8, -16(%rdi,%rdx)
	.loc	0 121 46 is_stmt 1              # ldecod_src/mc_direct.c:121:46
	movq	(%rbp), %r8
	.loc	0 121 44 is_stmt 0              # ldecod_src/mc_direct.c:121:44
	movq	%r8, -8(%rdi,%rdx)
.Ltmp310:
	.loc	0 117 50 is_stmt 1              # ldecod_src/mc_direct.c:117:50
	incq	%rsi
.Ltmp311:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $rsi
	.loc	0 123 42                        # ldecod_src/mc_direct.c:123:42
	movq	$0, (%rdi,%rdx)
	movw	$0, 8(%rdi,%rdx)
.Ltmp312:
	.loc	0 117 34                        # ldecod_src/mc_direct.c:117:34
	addq	$32, %rdx
	cmpq	%rcx, %rsi
.Ltmp313:
	.loc	0 117 17 is_stmt 0              # ldecod_src/mc_direct.c:117:17
	jl	.LBB4_41
.Ltmp314:
# %bb.42:                               # %for.cond379.for.inc402_crit_edge.us
                                        #   in Loop: Header=BB4_40 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $rax
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $rsi
	.loc	0 115 84 is_stmt 1              # ldecod_src/mc_direct.c:115:84
	incq	%rax
.Ltmp315:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $rax
	.loc	0 0 84 is_stmt 0                # ldecod_src/mc_direct.c:0:84
	movl	36(%rbx), %edx
	.loc	0 115 73                        # ldecod_src/mc_direct.c:115:73
	addl	24(%rsp), %edx                  # 4-byte Folded Reload
	.loc	0 115 50                        # ldecod_src/mc_direct.c:115:50
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
.Ltmp316:
	.loc	0 115 15                        # ldecod_src/mc_direct.c:115:15
	jl	.LBB4_40
	jmp	.LBB4_9
.Ltmp317:
	.p2align	4, 0x90
.LBB4_43:                               # %land.lhs.true431
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 133 64 is_stmt 1              # ldecod_src/mc_direct.c:133:64
	movl	176(%r14), %ecx
	.loc	0 133 82 is_stmt 0              # ldecod_src/mc_direct.c:133:82
	cmpl	$1, %ecx
	movq	40(%rsp), %r8                   # 8-byte Reload
	je	.LBB4_53
.Ltmp318:
# %bb.44:                               # %land.lhs.true431
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	testl	%ecx, %ecx
	jne	.LBB4_54
.Ltmp319:
# %bb.45:                               # %land.lhs.true435
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 133 85                        # ldecod_src/mc_direct.c:133:85
	movq	(%rdx,%rax,8), %rcx
	.loc	0 133 123                       # ldecod_src/mc_direct.c:133:123
	cmpl	$0, (%rcx)
	.loc	0 133 131                       # ldecod_src/mc_direct.c:133:131
	jne	.LBB4_47
	jmp	.LBB4_54
.Ltmp320:
.LBB4_46:                               # %land.lhs.true421
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	testl	%esi, %esi
	.loc	0 132 88 is_stmt 1              # ldecod_src/mc_direct.c:132:88
	je	.LBB4_54
.Ltmp321:
.LBB4_47:                               # %if.then453
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	#DEBUG_VALUE: iref <- 0
	.loc	0 0 88 is_stmt 0                # ldecod_src/mc_direct.c:0:88
	movl	136(%r14), %esi
	movsbl	256(%r14,%r8), %edx
.Ltmp322:
	cmpl	%edx, %esi
	cmovll	%esi, %edx
	#DEBUG_VALUE: mapped_idx <- -1
.Ltmp323:
	.loc	0 137 37 is_stmt 1              # ldecod_src/mc_direct.c:137:37
	testl	%edx, %edx
.Ltmp324:
	.loc	0 137 17 is_stmt 0              # ldecod_src/mc_direct.c:137:17
	jle	.LBB4_58
.Ltmp325:
# %bb.48:                               # %for.body463.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: iref <- 0
	.loc	0 0 17                          # ldecod_src/mc_direct.c:0:17
	movq	264(%r14,%r8,8), %rsi
.Ltmp326:
	.loc	0 137 37                        # ldecod_src/mc_direct.c:137:37
	movl	%edx, %edi
	xorl	%edx, %edx
.Ltmp327:
	.p2align	4, 0x90
.LBB4_49:                               # %for.body463
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 139 23 is_stmt 1              # ldecod_src/mc_direct.c:139:23
	movq	(%rsi,%rdx,8), %r8
	.loc	0 139 79 is_stmt 0              # ldecod_src/mc_direct.c:139:79
	cmpq	%rcx, 224(%r8)
	.loc	0 139 110                       # ldecod_src/mc_direct.c:139:110
	je	.LBB4_59
.Ltmp328:
# %bb.50:                               # %lor.lhs.false476
                                        #   in Loop: Header=BB4_49 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 140 80 is_stmt 1              # ldecod_src/mc_direct.c:140:80
	cmpq	%rcx, 232(%r8)
	.loc	0 140 111 is_stmt 0             # ldecod_src/mc_direct.c:140:111
	je	.LBB4_59
.Ltmp329:
# %bb.51:                               # %lor.lhs.false489
                                        #   in Loop: Header=BB4_49 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 141 73 is_stmt 1              # ldecod_src/mc_direct.c:141:73
	cmpq	%rcx, 240(%r8)
.Ltmp330:
	.loc	0 139 23                        # ldecod_src/mc_direct.c:139:23
	je	.LBB4_59
.Ltmp331:
# %bb.52:                               # %if.else503
                                        #   in Loop: Header=BB4_49 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	#DEBUG_VALUE: mapped_idx <- -135792468
	.loc	0 137 128                       # ldecod_src/mc_direct.c:137:128
	incq	%rdx
.Ltmp332:
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 137 37 is_stmt 0              # ldecod_src/mc_direct.c:137:37
	cmpq	%rdx, %rdi
.Ltmp333:
	.loc	0 137 17                        # ldecod_src/mc_direct.c:137:17
	jne	.LBB4_49
	jmp	.LBB4_8
.Ltmp334:
.LBB4_53:                               # %land.lhs.true446
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	.loc	0 134 50 is_stmt 1              # ldecod_src/mc_direct.c:134:50
	movq	(%rdx,%rax,8), %rcx
	.loc	0 134 88 is_stmt 0              # ldecod_src/mc_direct.c:134:88
	cmpl	$0, (%rcx)
.Ltmp335:
	.loc	0 131 19 is_stmt 1              # ldecod_src/mc_direct.c:131:19
	je	.LBB4_47
.Ltmp336:
	.p2align	4, 0x90
.LBB4_54:                               # %if.else508
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	#DEBUG_VALUE: iref <- 0
	.loc	0 0 19 is_stmt 0                # ldecod_src/mc_direct.c:0:19
	movl	136(%r14), %ecx
	movsbl	256(%r14,%r8), %edi
	cmpl	%edi, %ecx
	cmovll	%ecx, %edi
	#DEBUG_VALUE: mapped_idx <- -1
.Ltmp337:
	.loc	0 152 37 is_stmt 1              # ldecod_src/mc_direct.c:152:37
	testl	%edi, %edi
.Ltmp338:
	.loc	0 152 17 is_stmt 0              # ldecod_src/mc_direct.c:152:17
	jle	.LBB4_58
.Ltmp339:
# %bb.55:                               # %for.body520.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: colocated <- $rdx
	#DEBUG_VALUE: iref <- 0
	.loc	0 0 17                          # ldecod_src/mc_direct.c:0:17
	movq	264(%r14,%r8,8), %rcx
	movq	(%rdx,%rax,8), %rsi
.Ltmp340:
	.loc	0 152 37                        # ldecod_src/mc_direct.c:152:37
	movl	%edi, %edi
	xorl	%edx, %edx
.Ltmp341:
	.p2align	4, 0x90
.LBB4_56:                               # %for.body520
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 154 68 is_stmt 1              # ldecod_src/mc_direct.c:154:68
	cmpq	%rsi, (%rcx,%rdx,8)
.Ltmp342:
	.loc	0 154 23 is_stmt 0              # ldecod_src/mc_direct.c:154:23
	je	.LBB4_59
.Ltmp343:
# %bb.57:                               # %if.else533
                                        #   in Loop: Header=BB4_56 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: iref <- $rdx
	#DEBUG_VALUE: mapped_idx <- -135792468
	.loc	0 152 128 is_stmt 1             # ldecod_src/mc_direct.c:152:128
	incq	%rdx
.Ltmp344:
	#DEBUG_VALUE: iref <- $rdx
	.loc	0 152 37 is_stmt 0              # ldecod_src/mc_direct.c:152:37
	cmpq	%rdx, %rdi
	jne	.LBB4_56
	jmp	.LBB4_8
.Ltmp345:
	.p2align	4, 0x90
.LBB4_58:                               #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	#DEBUG_VALUE: iref <- 0
	.loc	0 0 37                          # ldecod_src/mc_direct.c:0:37
	movl	$-1, %edx
.Ltmp346:
.LBB4_59:                               # %if.end538
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- $edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	testl	%ecx, %ecx
.Ltmp347:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 166 17 is_stmt 1              # ldecod_src/mc_direct.c:166:17
	jle	.LBB4_9
.Ltmp348:
# %bb.60:                               # %for.body546.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- $edx
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	.loc	0 0 17 is_stmt 0                # ldecod_src/mc_direct.c:0:17
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_9
.Ltmp349:
# %bb.61:                               # %for.body546.us.preheader
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- $edx
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%r12, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	shlq	$7, %rsi
	addq	176(%rsp), %rsi                 # 8-byte Folded Reload
	movslq	%edx, %rdx
.Ltmp350:
	leaq	(%rsi,%rdx,4), %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r12, 192(%rsp)                 # 8-byte Spill
.Ltmp351:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	jmp	.LBB4_63
.Ltmp352:
	.p2align	4, 0x90
.LBB4_62:                               # %for.cond551.for.inc999_crit_edge.us
                                        #   in Loop: Header=BB4_63 Depth=4
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	movl	84(%rsp), %ecx                  # 4-byte Reload
.Ltmp353:
	.loc	0 166 48                        # ldecod_src/mc_direct.c:166:48
	incl	%ecx
.Ltmp354:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- $ecx
	.loc	0 166 32                        # ldecod_src/mc_direct.c:166:32
	cmpl	24(%rsp), %ecx                  # 4-byte Folded Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	192(%rsp), %r12                 # 8-byte Reload
.Ltmp355:
	.loc	0 166 17                        # ldecod_src/mc_direct.c:166:17
	jge	.LBB4_9
.Ltmp356:
.LBB4_63:                               # %for.body546.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_65 Depth 5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- $ecx
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- $ecx
	.loc	0 168 32 is_stmt 1              # ldecod_src/mc_direct.c:168:32
	movslq	36(%rbx), %r8
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
.Ltmp357:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	.loc	0 168 40 is_stmt 0              # ldecod_src/mc_direct.c:168:40
	movslq	%ecx, %rdi
	addq	%rdi, %r8
.Ltmp358:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	.loc	0 169 32 is_stmt 1              # ldecod_src/mc_direct.c:169:32
	movslq	40(%rbx), %rsi
	.loc	0 169 44 is_stmt 0              # ldecod_src/mc_direct.c:169:44
	addq	%rdi, %rsi
.Ltmp359:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- $esi
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 0 44                          # ldecod_src/mc_direct.c:0:44
	movl	%esi, %edi
	andl	$-2, %edi
	movl	%esi, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%edi, %r9d
	movslq	%r9d, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
.Ltmp360:
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	movl	%esi, %edi
	sarl	%edi
	movslq	%edi, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r11                 # 8-byte Reload
	jmp	.LBB4_65
.Ltmp361:
	.p2align	4, 0x90
.LBB4_64:                               # %if.then939.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: mv_y <- $r10d
	#DEBUG_VALUE: mv_scale <- $edi
	.loc	0 239 73 is_stmt 1              # ldecod_src/mc_direct.c:239:73
	movzwl	(%r9), %ecx
	.loc	0 239 48 is_stmt 0              # ldecod_src/mc_direct.c:239:48
	movw	%cx, 16(%rbx,%r11)
	.loc	0 240 48 is_stmt 1              # ldecod_src/mc_direct.c:240:48
	movw	%r10w, 18(%rbx,%r11)
	.loc	0 241 45                        # ldecod_src/mc_direct.c:241:45
	movl	$0, 20(%rbx,%r11)
.Ltmp362:
	.loc	0 171 52                        # ldecod_src/mc_direct.c:171:52
	incq	%r12
.Ltmp363:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 171 36 is_stmt 0              # ldecod_src/mc_direct.c:171:36
	addq	$32, %r11
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
.Ltmp364:
	.loc	0 171 19                        # ldecod_src/mc_direct.c:171:19
	jge	.LBB4_62
.Ltmp365:
.LBB4_65:                               # %for.body555.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        #         Parent Loop BB4_63 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 19                          # ldecod_src/mc_direct.c:0:19
	movq	%r15, %rsi
	movq	136(%rsp), %rcx                 # 8-byte Reload
.Ltmp366:
	.loc	0 173 57 is_stmt 1              # ldecod_src/mc_direct.c:173:57
	movq	16(%rcx), %r15
.Ltmp367:
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	.loc	0 173 69 is_stmt 0              # ldecod_src/mc_direct.c:173:69
	movl	3144(%r15), %r9d
	.loc	0 174 0 is_stmt 1               # ldecod_src/mc_direct.c:174:0
	movq	(%rbp), %r10
	movq	152(%r10), %rbx
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
	je	.LBB4_70
.Ltmp368:
# %bb.66:                               # %cond.true560.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: RSD:x <- $r12
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %edi
	andl	$-2, %edi
	movl	%r12d, %r13d
	shrl	%r13d
	andl	$1, %r13d
	orl	%edi, %r13d
.Ltmp369:
	.loc	0 174 24                        # ldecod_src/mc_direct.c:174:24
	movslq	%r13d, %rdi
	movq	(%rsp), %r13                    # 8-byte Reload
	shlq	$5, %rdi
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	(%rbx,%rcx,8), %rdi
.Ltmp370:
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 175 62                        # ldecod_src/mc_direct.c:175:62
	movq	152(%r13), %rbx
	.loc	0 175 49 is_stmt 0              # ldecod_src/mc_direct.c:175:49
	movq	(%rbx,%r8,8), %rbx
.Ltmp371:
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rbx, $r12
	.loc	0 177 24 is_stmt 1              # ldecod_src/mc_direct.c:177:24
	cmpl	$0, 128(%r14)
.Ltmp372:
	.loc	0 177 24 is_stmt 0              # ldecod_src/mc_direct.c:177:24
	je	.LBB4_71
.Ltmp373:
.LBB4_67:                               # %if.then586.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 0 24                          # ldecod_src/mc_direct.c:0:24
	movq	72(%rsp), %rcx                  # 8-byte Reload
.Ltmp374:
	.loc	0 179 27 is_stmt 1              # ldecod_src/mc_direct.c:179:27
	cmpl	$0, 384(%rcx)
	.loc	0 179 44 is_stmt 0              # ldecod_src/mc_direct.c:179:44
	je	.LBB4_76
.Ltmp375:
# %bb.68:                               # %land.lhs.true887.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 221 28 is_stmt 1              # ldecod_src/mc_direct.c:221:28
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	.loc	0 221 51 is_stmt 0              # ldecod_src/mc_direct.c:221:51
	movzwl	18(%rdi,%rax,4), %r15d
.Ltmp376:
	#DEBUG_VALUE: mv_y <- undef
	.loc	0 225 82 is_stmt 1              # ldecod_src/mc_direct.c:225:82
	movq	(%rdi,%rax,8), %rcx
	.loc	0 225 120 is_stmt 0             # ldecod_src/mc_direct.c:225:120
	cmpl	$0, (%rcx)
	.loc	0 225 129                       # ldecod_src/mc_direct.c:225:129
	je	.LBB4_75
.Ltmp377:
# %bb.69:                               #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movswl	%r15w, %r10d
.Ltmp378:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 225 129                       # ldecod_src/mc_direct.c:225:129
	jmp	.LBB4_111
.Ltmp379:
	.p2align	4, 0x90
.LBB4_70:                               # %cond.false569.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 129                         # ldecod_src/mc_direct.c:0:129
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rbx,%rcx,8), %rdi
	.loc	0 173 50 is_stmt 1              # ldecod_src/mc_direct.c:173:50
	addq	%r11, %rdi
.Ltmp380:
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 175 62                        # ldecod_src/mc_direct.c:175:62
	movq	152(%r13), %rbx
	.loc	0 175 49 is_stmt 0              # ldecod_src/mc_direct.c:175:49
	movq	(%rbx,%r8,8), %rbx
.Ltmp381:
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 177 24 is_stmt 1              # ldecod_src/mc_direct.c:177:24
	cmpl	$0, 128(%r14)
.Ltmp382:
	.loc	0 177 24 is_stmt 0              # ldecod_src/mc_direct.c:177:24
	jne	.LBB4_67
.Ltmp383:
.LBB4_71:                               # %if.else689.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 194 67 is_stmt 1              # ldecod_src/mc_direct.c:194:67
	cmpl	$0, 3136(%r15)
.Ltmp384:
	.loc	0 223 68                        # ldecod_src/mc_direct.c:223:68
	movl	176(%r14), %r13d
.Ltmp385:
	.loc	0 194 106                       # ldecod_src/mc_direct.c:194:106
	je	.LBB4_82
.Ltmp386:
# %bb.72:                               # %land.lhs.true868.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 221 28                        # ldecod_src/mc_direct.c:221:28
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	.loc	0 221 51 is_stmt 0              # ldecod_src/mc_direct.c:221:51
	movzwl	18(%rdi,%rax,4), %r15d
	.loc	0 221 28                        # ldecod_src/mc_direct.c:221:28
	movswl	%r15w, %r10d
.Ltmp387:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 223 82 is_stmt 1              # ldecod_src/mc_direct.c:223:82
	testl	%r13d, %r13d
	.loc	0 223 86 is_stmt 0              # ldecod_src/mc_direct.c:223:86
	je	.LBB4_105
.Ltmp388:
# %bb.73:                               # %land.lhs.true897.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 226 82 is_stmt 1              # ldecod_src/mc_direct.c:226:82
	cmpl	$1, %r13d
	.loc	0 226 86 is_stmt 0              # ldecod_src/mc_direct.c:226:86
	jne	.LBB4_110
.Ltmp389:
.LBB4_74:                               # %land.lhs.true901.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 226 89                        # ldecod_src/mc_direct.c:226:89
	movq	(%rdi,%rax,8), %rcx
	.loc	0 226 127                       # ldecod_src/mc_direct.c:226:127
	cmpl	$0, (%rcx)
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp390:
	.loc	0 225 29 is_stmt 1              # ldecod_src/mc_direct.c:225:29
	jne	.LBB4_111
.Ltmp391:
.LBB4_75:                               # %if.then908.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 227 28                        # ldecod_src/mc_direct.c:227:28
	movzwl	%r15w, %ecx
	shrl	$15, %ecx
	addl	%r15d, %ecx
	movswl	%cx, %r10d
	sarl	%r10d
.Ltmp392:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 0 28 is_stmt 0                # ldecod_src/mc_direct.c:0:28
	jmp	.LBB4_111
.Ltmp393:
	.p2align	4, 0x90
.LBB4_76:                               # %land.lhs.true589.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 179 49 is_stmt 1              # ldecod_src/mc_direct.c:179:49
	movq	272(%r14), %r10
	movq	(%r10), %r10
	.loc	0 179 78 is_stmt 0              # ldecod_src/mc_direct.c:179:78
	movl	388(%r10), %r15d
	.loc	0 179 112                       # ldecod_src/mc_direct.c:179:112
	cmpl	$1, %r15d
	je	.LBB4_79
.Ltmp394:
# %bb.77:                               # %land.lhs.true589.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	cmpl	$3, %r15d
	jne	.LBB4_97
.Ltmp395:
# %bb.78:                               # %land.lhs.true596.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 179 151                       # ldecod_src/mc_direct.c:179:151
	movq	184(%r10), %r10
	movq	72(%rsp), %rcx                  # 8-byte Reload
	.loc	0 179 168                       # ldecod_src/mc_direct.c:179:168
	movslq	24(%rcx), %r15
	.loc	0 179 115                       # ldecod_src/mc_direct.c:179:115
	cmpb	$0, (%r10,%r15)
	.loc	0 179 178                       # ldecod_src/mc_direct.c:179:178
	je	.LBB4_97
.Ltmp396:
.LBB4_79:                               # %if.then614.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 182 47 is_stmt 1              # ldecod_src/mc_direct.c:182:47
	movl	4(%r13), %r15d
	.loc	0 182 113 is_stmt 0             # ldecod_src/mc_direct.c:182:113
	movq	288(%r14), %r10
	.loc	0 182 53                        # ldecod_src/mc_direct.c:182:53
	movq	304(%r14), %rdi
.Ltmp397:
	movq	(%rdi), %rdi
	.loc	0 182 51                        # ldecod_src/mc_direct.c:182:51
	movl	%r15d, %r13d
	subl	4(%rdi), %r13d
.Ltmp398:
	#DEBUG_VALUE: iabs:x <- $r13d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r13d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r13d, %ecx
	negl	%ecx
	cmovsl	%r13d, %ecx
.Ltmp399:
	.loc	0 182 113                       # ldecod_src/mc_direct.c:182:113
	movq	(%r10), %r10
	.loc	0 182 112 is_stmt 0             # ldecod_src/mc_direct.c:182:112
	subl	4(%r10), %r15d
.Ltmp400:
	#DEBUG_VALUE: iabs:x <- $r15d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r15d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r15d, %r13d
.Ltmp401:
	negl	%r13d
	cmovsl	%r15d, %r13d
.Ltmp402:
	.loc	0 182 88                        # ldecod_src/mc_direct.c:182:88
	cmpl	%r13d, %ecx
.Ltmp403:
	.loc	0 182 29 is_stmt 0              # ldecod_src/mc_direct.c:182:29
	jbe	.LBB4_88
.Ltmp404:
# %bb.80:                               # %if.then631.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 185 0 is_stmt 1               # ldecod_src/mc_direct.c:185:0
	movq	152(%r10), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
.Ltmp405:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp406:
	.loc	0 184 39                        # ldecod_src/mc_direct.c:184:39
	jne	.LBB4_89
.Ltmp407:
# %bb.81:                               # %cond.false647.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	addq	%r11, %rdi
	jmp	.LBB4_96
.Ltmp408:
.LBB4_82:                               # %land.lhs.true693.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 194 110                       # ldecod_src/mc_direct.c:194:110
	testl	%r13d, %r13d
	.loc	0 194 136 is_stmt 0             # ldecod_src/mc_direct.c:194:136
	je	.LBB4_90
.Ltmp409:
# %bb.83:                               # %land.lhs.true778.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 207 112 is_stmt 1             # ldecod_src/mc_direct.c:207:112
	movl	184(%r14), %r15d
	.loc	0 207 121 is_stmt 0             # ldecod_src/mc_direct.c:207:121
	cmpl	(%r10), %r15d
	.loc	0 207 143                       # ldecod_src/mc_direct.c:207:143
	je	.LBB4_109
.Ltmp410:
# %bb.84:                               # %land.lhs.true784.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 207 146                       # ldecod_src/mc_direct.c:207:146
	cmpl	$0, 96(%r10)
.Ltmp411:
	.loc	0 207 29                        # ldecod_src/mc_direct.c:207:29
	je	.LBB4_109
.Ltmp412:
# %bb.85:                               # %if.then788.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 0 0                           # ldecod_src/mc_direct.c:0:0
	movq	240(%r10), %rdi
.Ltmp413:
	.loc	0 209 48 is_stmt 1              # ldecod_src/mc_direct.c:209:48
	cmpl	$1, %r15d
.Ltmp414:
	.loc	0 209 27 is_stmt 0              # ldecod_src/mc_direct.c:209:27
	jne	.LBB4_100
.Ltmp415:
# %bb.86:                               # %if.then792.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 212 0 is_stmt 1               # ldecod_src/mc_direct.c:212:0
	movq	224(%rdi), %rcx
	movq	152(%rcx), %r10
.Ltmp416:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp417:
	.loc	0 211 37                        # ldecod_src/mc_direct.c:211:37
	jne	.LBB4_101
.Ltmp418:
# %bb.87:                               # %cond.false807.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 37 is_stmt 0                # ldecod_src/mc_direct.c:0:37
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rdi
	.loc	0 211 37                        # ldecod_src/mc_direct.c:211:37
	addq	%r11, %rdi
	jmp	.LBB4_109
.Ltmp419:
.LBB4_88:                               # %if.else659.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 190 0 is_stmt 1               # ldecod_src/mc_direct.c:190:0
	movq	152(%rdi), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
.Ltmp420:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp421:
	.loc	0 189 39                        # ldecod_src/mc_direct.c:189:39
	je	.LBB4_94
.Ltmp422:
.LBB4_89:                               # %cond.true663.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%ecx, %r9d
.Ltmp423:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movslq	%r9d, %rcx
	jmp	.LBB4_95
.Ltmp424:
.LBB4_90:                               # %land.lhs.true696.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 194 139 is_stmt 1             # ldecod_src/mc_direct.c:194:139
	movq	272(%r14), %rcx
	movq	(%rcx), %rcx
	.loc	0 194 179 is_stmt 0             # ldecod_src/mc_direct.c:194:179
	cmpl	$0, 388(%rcx)
.Ltmp425:
	.loc	0 194 66                        # ldecod_src/mc_direct.c:194:66
	je	.LBB4_104
.Ltmp426:
# %bb.91:                               # %if.then703.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 0 66                          # ldecod_src/mc_direct.c:0:66
	movq	(%rsp), %rcx                    # 8-byte Reload
.Ltmp427:
	.loc	0 196 45 is_stmt 1              # ldecod_src/mc_direct.c:196:45
	movl	4(%rcx), %ecx
	.loc	0 196 61 is_stmt 0              # ldecod_src/mc_direct.c:196:61
	movq	232(%r10), %rdi
.Ltmp428:
	.loc	0 196 49                        # ldecod_src/mc_direct.c:196:49
	movl	%ecx, %r15d
	subl	4(%rdi), %r15d
.Ltmp429:
	#DEBUG_VALUE: iabs:x <- $r15d
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r15d
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r15d, %r13d
	negl	%r13d
	cmovsl	%r15d, %r13d
.Ltmp430:
	.loc	0 196 114                       # ldecod_src/mc_direct.c:196:114
	movq	224(%r10), %r10
	.loc	0 196 103 is_stmt 0             # ldecod_src/mc_direct.c:196:103
	subl	4(%r10), %ecx
.Ltmp431:
	#DEBUG_VALUE: iabs:x <- $ecx
	#DEBUG_VALUE: iabs:y <- [DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $ecx
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%ecx, %r15d
.Ltmp432:
	negl	%r15d
	cmovsl	%ecx, %r15d
.Ltmp433:
	.loc	0 196 79                        # ldecod_src/mc_direct.c:196:79
	cmpl	%r15d, %r13d
.Ltmp434:
	.loc	0 196 27 is_stmt 0              # ldecod_src/mc_direct.c:196:27
	jbe	.LBB4_98
.Ltmp435:
# %bb.92:                               # %if.then718.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 199 0 is_stmt 1               # ldecod_src/mc_direct.c:199:0
	movq	152(%r10), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
.Ltmp436:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp437:
	.loc	0 198 37                        # ldecod_src/mc_direct.c:198:37
	jne	.LBB4_99
.Ltmp438:
# %bb.93:                               # %cond.false733.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	addq	%r11, %rdi
	jmp	.LBB4_104
.Ltmp439:
.LBB4_94:                               # %cond.false675.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 190 93                        # ldecod_src/mc_direct.c:190:93
	movq	%r12, %rcx
.Ltmp440:
.LBB4_95:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	shlq	$5, %rcx
	addq	%rcx, %rdi
.Ltmp441:
.LBB4_96:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp442:
.LBB4_97:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 221 28 is_stmt 1              # ldecod_src/mc_direct.c:221:28
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	.loc	0 221 51 is_stmt 0              # ldecod_src/mc_direct.c:221:51
	movswl	18(%rdi,%rax,4), %r10d
.Ltmp443:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 222 78 is_stmt 1              # ldecod_src/mc_direct.c:222:78
	movq	(%rdi,%rax,8), %rcx
	.loc	0 222 116 is_stmt 0             # ldecod_src/mc_direct.c:222:116
	cmpl	$0, (%rcx)
	.loc	0 222 125                       # ldecod_src/mc_direct.c:222:125
	jne	.LBB4_106
	jmp	.LBB4_111
.Ltmp444:
.LBB4_98:                               # %if.else744.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 204 0 is_stmt 1               # ldecod_src/mc_direct.c:204:0
	movq	152(%rdi), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
.Ltmp445:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp446:
	.loc	0 203 37                        # ldecod_src/mc_direct.c:203:37
	je	.LBB4_102
.Ltmp447:
.LBB4_99:                               # %cond.true748.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%ecx, %r9d
.Ltmp448:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movslq	%r9d, %rcx
	jmp	.LBB4_103
.Ltmp449:
.LBB4_100:                              # %if.else818.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 217 0 is_stmt 1               # ldecod_src/mc_direct.c:217:0
	movq	232(%rdi), %rcx
	movq	152(%rcx), %r10
.Ltmp450:
	.loc	0 173 50                        # ldecod_src/mc_direct.c:173:50
	testl	%r9d, %r9d
.Ltmp451:
	.loc	0 216 37                        # ldecod_src/mc_direct.c:216:37
	je	.LBB4_107
.Ltmp452:
.LBB4_101:                              # %cond.true822.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	1 238 10                        # ldecod_src/inc/ifunctions.h:238:10
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %edi
	shrl	%edi
	andl	$1, %edi
	orl	%ecx, %edi
.Ltmp453:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movslq	%edi, %rdi
	shlq	$5, %rdi
	movq	64(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB4_108
.Ltmp454:
.LBB4_102:                              # %cond.false759.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 204 84 is_stmt 1              # ldecod_src/mc_direct.c:204:84
	movq	%r12, %rcx
.Ltmp455:
.LBB4_103:                              # %land.lhs.true868.us.thread1586
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	shlq	$5, %rcx
	addq	%rcx, %rdi
.Ltmp456:
.LBB4_104:                              # %land.lhs.true868.us.thread1586
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 221 28 is_stmt 1              # ldecod_src/mc_direct.c:221:28
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	.loc	0 221 51 is_stmt 0              # ldecod_src/mc_direct.c:221:51
	movswl	18(%rdi,%rax,4), %r10d
.Ltmp457:
	#DEBUG_VALUE: mv_y <- $r10d
.LBB4_105:                              # %land.lhs.true872.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 223 89 is_stmt 1              # ldecod_src/mc_direct.c:223:89
	movq	(%rdi,%rax,8), %rcx
	.loc	0 223 127 is_stmt 0             # ldecod_src/mc_direct.c:223:127
	cmpl	$0, (%rcx)
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp458:
	.loc	0 222 24 is_stmt 1              # ldecod_src/mc_direct.c:222:24
	je	.LBB4_111
.Ltmp459:
.LBB4_106:                              # %if.then879.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 224 28                        # ldecod_src/mc_direct.c:224:28
	addl	%r10d, %r10d
.Ltmp460:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 224 23 is_stmt 0              # ldecod_src/mc_direct.c:224:23
	jmp	.LBB4_111
.Ltmp461:
.LBB4_107:                              # %cond.false833.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 217 88 is_stmt 1              # ldecod_src/mc_direct.c:217:88
	movq	%r12, %rdi
	shlq	$5, %rdi
	movq	56(%rsp), %rcx                  # 8-byte Reload
.Ltmp462:
.LBB4_108:                              # %land.lhs.true868.us.thread
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	addq	(%r10,%rcx,8), %rdi
.Ltmp463:
.LBB4_109:                              # %land.lhs.true868.us.thread
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	.loc	0 221 28 is_stmt 1              # ldecod_src/mc_direct.c:221:28
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	.loc	0 221 51 is_stmt 0              # ldecod_src/mc_direct.c:221:51
	movzwl	18(%rdi,%rax,4), %r15d
	.loc	0 221 28                        # ldecod_src/mc_direct.c:221:28
	movswl	%r15w, %r10d
.Ltmp464:
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 226 82 is_stmt 1              # ldecod_src/mc_direct.c:226:82
	cmpl	$1, %r13d
	.loc	0 226 86 is_stmt 0              # ldecod_src/mc_direct.c:226:86
	je	.LBB4_74
.Ltmp465:
.LBB4_110:                              #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	.loc	0 0 86                          # ldecod_src/mc_direct.c:0:86
	movq	(%rsp), %r13                    # 8-byte Reload
.Ltmp466:
	.p2align	4, 0x90
.LBB4_111:                              # %if.end910.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $rsi
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: colocated <- $rdi
	#DEBUG_VALUE: mv_y <- $r10d
	#DEBUG_VALUE: mv_y <- $r10d
	movq	200(%rsp), %rcx                 # 8-byte Reload
	.loc	0 229 32 is_stmt 1              # ldecod_src/mc_direct.c:229:32
	movl	(%rcx), %edi
.Ltmp467:
	#DEBUG_VALUE: mv_scale <- $edi
	.loc	0 231 47                        # ldecod_src/mc_direct.c:231:47
	movb	%dl, 24(%rbx,%r11)
	.loc	0 232 47                        # ldecod_src/mc_direct.c:232:47
	movb	$0, 25(%rbx,%r11)
	movq	%rsi, %r15
	.loc	0 234 48                        # ldecod_src/mc_direct.c:234:48
	movq	(%rsi,%rdx,8), %rcx
	.loc	0 234 46 is_stmt 0              # ldecod_src/mc_direct.c:234:46
	movq	%rcx, (%rbx,%r11)
	.loc	0 235 48 is_stmt 1              # ldecod_src/mc_direct.c:235:48
	movq	(%rbp), %rcx
	.loc	0 235 46 is_stmt 0              # ldecod_src/mc_direct.c:235:46
	movq	%rcx, 8(%rbx,%r11)
.Ltmp468:
	.loc	0 237 34 is_stmt 1              # ldecod_src/mc_direct.c:237:34
	cmpl	$9999, %edi                     # imm = 0x270F
	.loc	0 237 42 is_stmt 0              # ldecod_src/mc_direct.c:237:42
	je	.LBB4_64
.Ltmp469:
# %bb.112:                              # %lor.lhs.false930.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: mv_y <- $r10d
	#DEBUG_VALUE: mv_scale <- $edi
	.loc	0 0 42                          # ldecod_src/mc_direct.c:0:42
	movq	40(%rsp), %rcx                  # 8-byte Reload
	.loc	0 237 45                        # ldecod_src/mc_direct.c:237:45
	movq	264(%r14,%rcx,8), %rcx
	movq	(%rcx,%rdx,8), %rcx
	cmpb	$0, 40(%rcx)
.Ltmp470:
	.loc	0 237 25                        # ldecod_src/mc_direct.c:237:25
	jne	.LBB4_64
.Ltmp471:
# %bb.113:                              # %if.else952.us
                                        #   in Loop: Header=BB4_65 Depth=5
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- [DW_OP_plus_uconst 192, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j <- [DW_OP_plus_uconst 84, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j4 <- $r8
	#DEBUG_VALUE: update_direct_mv_info_temporal:j6 <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- $r12
	#DEBUG_VALUE: mv_y <- $r10d
	#DEBUG_VALUE: mv_scale <- $edi
	.loc	0 245 94 is_stmt 1              # ldecod_src/mc_direct.c:245:94
	movswl	(%r9), %ecx
	.loc	0 245 69 is_stmt 0              # ldecod_src/mc_direct.c:245:69
	imull	%edi, %ecx
	.loc	0 245 99                        # ldecod_src/mc_direct.c:245:99
	subl	$-128, %ecx
	.loc	0 245 107                       # ldecod_src/mc_direct.c:245:107
	shrl	$8, %ecx
	.loc	0 245 48                        # ldecod_src/mc_direct.c:245:48
	movw	%cx, 16(%rbx,%r11)
	.loc	0 246 69 is_stmt 1              # ldecod_src/mc_direct.c:246:69
	imull	%r10d, %edi
.Ltmp472:
	.loc	0 246 107 is_stmt 0             # ldecod_src/mc_direct.c:246:107
	subl	$-128, %edi
	.loc	0 246 115                       # ldecod_src/mc_direct.c:246:115
	shrl	$8, %edi
	.loc	0 246 48                        # ldecod_src/mc_direct.c:246:48
	movw	%di, 18(%rbx,%r11)
	.loc	0 247 84 is_stmt 1              # ldecod_src/mc_direct.c:247:84
	subw	(%r9), %cx
	.loc	0 247 48 is_stmt 0              # ldecod_src/mc_direct.c:247:48
	movw	%cx, 20(%rbx,%r11)
	.loc	0 248 84 is_stmt 1              # ldecod_src/mc_direct.c:248:84
	subl	%r10d, %edi
	.loc	0 248 48 is_stmt 0              # ldecod_src/mc_direct.c:248:48
	movw	%di, 22(%rbx,%r11)
.Ltmp473:
	.loc	0 171 52 is_stmt 1              # ldecod_src/mc_direct.c:171:52
	incq	%r12
.Ltmp474:
	#DEBUG_VALUE: update_direct_mv_info_temporal:i4 <- undef
	.loc	0 171 36 is_stmt 0              # ldecod_src/mc_direct.c:171:36
	addq	$32, %r11
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
.Ltmp475:
	.loc	0 171 19                        # ldecod_src/mc_direct.c:171:19
	jl	.LBB4_65
	jmp	.LBB4_62
.Ltmp476:
.LBB4_114:                              # %if.else324
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	.loc	0 106 0 is_stmt 1               # ldecod_src/mc_direct.c:106:0
	movq	232(%rdx), %rdx
.Ltmp477:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	152(%rdx), %rdi
.Ltmp478:
	.loc	0 63 25 is_stmt 1               # ldecod_src/mc_direct.c:63:25
	testl	%esi, %esi
.Ltmp479:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	jne	.LBB4_27
.Ltmp480:
.LBB4_115:                              # %cond.false341
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	cltq
	movq	%r12, %rdx
.Ltmp481:
.LBB4_116:                              # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:j0 <- [DW_OP_plus_uconst 112, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:i0 <- $r12
	#DEBUG_VALUE: mapped_idx <- -1
	shlq	$5, %rdx
	addq	(%rdi,%rax,8), %rdx
	jmp	.LBB4_33
.Ltmp482:
.LBB4_117:
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: update_direct_mv_info_temporal:currSlice <- $r14
	#DEBUG_VALUE: update_direct_mv_info_temporal:list0 <- $r15
	#DEBUG_VALUE: update_direct_mv_info_temporal:list1 <- $rbp
	#DEBUG_VALUE: update_direct_mv_info_temporal:dec_picture <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:p_Vid <- [DW_OP_plus_uconst 136, DW_OP_deref] $rsp
	#DEBUG_VALUE: update_direct_mv_info_temporal:k <- $rax
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp483:
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp484:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp485:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB4_118:                              # %if.end1019
	#DEBUG_VALUE: update_direct_mv_info_temporal:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 263 1 is_stmt 1               # ldecod_src/mc_direct.c:263:1
	retq
.Ltmp486:
.Lfunc_end4:
	.size	update_direct_mv_info_temporal, .Lfunc_end4-update_direct_mv_info_temporal
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_spatial_4x4
	.type	update_direct_mv_info_spatial_4x4,@function
update_direct_mv_info_spatial_4x4:      # @update_direct_mv_info_spatial_4x4
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rdi
	.loc	0 535 25 prologue_end           # ldecod_src/mc_direct.c:535:25
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.loc	0 535 103 is_stmt 0             # ldecod_src/mc_direct.c:535:103
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	movmskps	%xmm0, %eax
	testl	%eax, %eax
.Ltmp487:
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:has_direct <- undef
	.loc	0 537 7 is_stmt 1               # ldecod_src/mc_direct.c:537:7
	je	.LBB5_42
.Ltmp488:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rdi
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
.Ltmp489:
	.loc	0 540 32                        # ldecod_src/mc_direct.c:540:32
	movq	(%rdi), %rax
.Ltmp490:
	#DEBUG_VALUE: currSlice <- $rax
	.loc	0 539 38                        # ldecod_src/mc_direct.c:539:38
	movq	8(%rdi), %rcx
.Ltmp491:
	#DEBUG_VALUE: p_Vid <- $rcx
	.loc	0 546 43                        # ldecod_src/mc_direct.c:546:43
	movq	856456(%rcx), %r14
.Ltmp492:
	#DEBUG_VALUE: dec_picture <- $r14
	.loc	0 548 31                        # ldecod_src/mc_direct.c:548:31
	movswq	114(%rdi), %rcx
.Ltmp493:
	#DEBUG_VALUE: list_offset <- undef
	.loc	0 549 31                        # ldecod_src/mc_direct.c:549:31
	movq	264(%rax,%rcx,8), %r15
.Ltmp494:
	#DEBUG_VALUE: list0 <- $r15
	.loc	0 550 31                        # ldecod_src/mc_direct.c:550:31
	movq	272(%rax,%rcx,8), %r12
.Ltmp495:
	#DEBUG_VALUE: list1 <- $r12
	.loc	0 0 31 is_stmt 0                # ldecod_src/mc_direct.c:0:31
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	7(%rsp), %r8
	leaq	6(%rsp), %r9
	.loc	0 555 5 is_stmt 1               # ldecod_src/mc_direct.c:555:5
	movq	%r14, %rsi
	callq	prepare_direct_params@PLT
.Ltmp496:
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	.loc	0 535 103                       # ldecod_src/mc_direct.c:535:103
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	#DEBUG_VALUE: k <- 0
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
.Ltmp497:
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	.loc	0 0 103 is_stmt 0               # ldecod_src/mc_direct.c:0:103
	jmp	.LBB5_2
.Ltmp498:
	.p2align	4, 0x90
.LBB5_40:                               # %for.inc281
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp499:
	.loc	0 556 24 is_stmt 1              # ldecod_src/mc_direct.c:556:24
	incq	%rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
.Ltmp500:
	#DEBUG_VALUE: k <- $rax
	.loc	0 0 24 is_stmt 0                # ldecod_src/mc_direct.c:0:24
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	.loc	0 556 19                        # ldecod_src/mc_direct.c:556:19
	cmpq	$4, %rax
.Ltmp501:
	.loc	0 556 5                         # ldecod_src/mc_direct.c:556:5
	je	.LBB5_41
.Ltmp502:
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #       Child Loop BB5_6 Depth 3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- $rax
	.loc	0 0 5                           # ldecod_src/mc_direct.c:0:5
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp503:
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 558 29 is_stmt 1              # ldecod_src/mc_direct.c:558:29
	cmpb	$0, 364(%rbx,%rax)
.Ltmp504:
	.loc	0 558 11 is_stmt 0              # ldecod_src/mc_direct.c:558:11
	jne	.LBB5_40
.Ltmp505:
# %bb.3:                                # %if.then36
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp506:
	.loc	0 558 11                        # ldecod_src/mc_direct.c:558:11
	movl	%eax, %edx
	andl	$1, %edx
	shll	$6, %edx
	addl	%eax, %eax
	andl	$2, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
.Ltmp507:
	.loc	0 561 15 is_stmt 1              # ldecod_src/mc_direct.c:561:15
	leal	(%rcx,%rcx), %esi
	andl	$2, %esi
.Ltmp508:
	#DEBUG_VALUE: i <- $esi
	.loc	0 562 19                        # ldecod_src/mc_direct.c:562:19
	movl	%ecx, %edi
	andl	$2, %edi
.Ltmp509:
	#DEBUG_VALUE: j <- $edi
	.loc	0 0 19 is_stmt 0                # ldecod_src/mc_direct.c:0:19
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
.Ltmp510:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	leal	2(%rsi), %r9d
.Ltmp511:
	.loc	0 567 28 is_stmt 1              # ldecod_src/mc_direct.c:567:28
	movl	32(%rbx), %eax
                                        # kill: def $ecx killed $ecx killed $rcx
	orl	$1, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	.loc	0 567 11 is_stmt 0              # ldecod_src/mc_direct.c:567:11
	addq	$25, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB5_4
.Ltmp512:
	.p2align	4, 0x90
.LBB5_39:                               # %for.inc277
                                        #   in Loop: Header=BB5_4 Depth=2
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	.loc	0 0 11                          # ldecod_src/mc_direct.c:0:11
	movq	72(%rsp), %rdx                  # 8-byte Reload
	.loc	0 562 50 is_stmt 1              # ldecod_src/mc_direct.c:562:50
	leal	1(%rdx), %ecx
.Ltmp513:
	#DEBUG_VALUE: j <- $ecx
	.loc	0 562 33 is_stmt 0              # ldecod_src/mc_direct.c:562:33
	cmpl	28(%rsp), %edx                  # 4-byte Folded Reload
	movl	%ecx, %edi
.Ltmp514:
	.loc	0 562 9                         # ldecod_src/mc_direct.c:562:9
	je	.LBB5_40
.Ltmp515:
.LBB5_4:                                # %for.body44
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_6 Depth 3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- $edi
	#DEBUG_VALUE: j <- $edi
	#DEBUG_VALUE: j6 <- undef
	#DEBUG_VALUE: j4 <- undef
	.loc	0 0 9                           # ldecod_src/mc_direct.c:0:9
	movq	64(%rsp), %rcx                  # 8-byte Reload
.Ltmp516:
	.loc	0 567 36 is_stmt 1              # ldecod_src/mc_direct.c:567:36
	addl	%eax, %ecx
.Ltmp517:
	#DEBUG_VALUE: i4 <- $ecx
	.loc	0 567 66 is_stmt 0              # ldecod_src/mc_direct.c:567:66
	leal	(%r9,%rax), %edx
	.loc	0 567 44                        # ldecod_src/mc_direct.c:567:44
	cmpl	%edx, %ecx
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
.Ltmp518:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	.loc	0 567 11                        # ldecod_src/mc_direct.c:567:11
	jge	.LBB5_39
.Ltmp519:
# %bb.5:                                # %for.body54.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=2
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: i4 <- $ecx
	.loc	0 565 24 is_stmt 1              # ldecod_src/mc_direct.c:565:24
	movslq	36(%rbx), %r11
.Ltmp520:
	#DEBUG_VALUE: j4 <- undef
	.loc	0 565 36 is_stmt 0              # ldecod_src/mc_direct.c:565:36
	movslq	%edi, %rcx
.Ltmp521:
	.loc	0 0 36                          # ldecod_src/mc_direct.c:0:36
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	.loc	0 565 36                        # ldecod_src/mc_direct.c:565:36
	addq	%rcx, %r11
.Ltmp522:
	#DEBUG_VALUE: j4 <- $r11
	.loc	0 567 11 is_stmt 1              # ldecod_src/mc_direct.c:567:11
	movslq	%eax, %rbp
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	shlq	$5, %rbp
	addq	56(%rsp), %rbp                  # 8-byte Folded Reload
	jmp	.LBB5_6
.Ltmp523:
	.p2align	4, 0x90
.LBB5_30:                               # %if.then199
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 650 44                        # ldecod_src/mc_direct.c:650:44
	movq	(%r15), %rax
	.loc	0 650 42 is_stmt 0              # ldecod_src/mc_direct.c:650:42
	movq	%rax, -25(%rsi,%rbp)
	.loc	0 651 44 is_stmt 1              # ldecod_src/mc_direct.c:651:44
	movq	(%r12), %rax
	.loc	0 651 42 is_stmt 0              # ldecod_src/mc_direct.c:651:42
	movq	%rax, -17(%rsi,%rbp)
	.loc	0 653 39 is_stmt 1              # ldecod_src/mc_direct.c:653:39
	movq	$0, -9(%rsi,%rbp)
	movw	$0, -1(%rsi,%rbp)
.Ltmp524:
.LBB5_38:                               # %if.end276
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	.loc	0 567 71                        # ldecod_src/mc_direct.c:567:71
	incq	%rcx
.Ltmp525:
	#DEBUG_VALUE: i4 <- $rcx
	.loc	0 567 54 is_stmt 0              # ldecod_src/mc_direct.c:567:54
	movl	32(%rbx), %eax
	.loc	0 567 66                        # ldecod_src/mc_direct.c:567:66
	leal	(%r9,%rax), %edx
	.loc	0 567 44                        # ldecod_src/mc_direct.c:567:44
	movslq	%edx, %rdx
	addq	$32, %rbp
	cmpq	%rdx, %rcx
.Ltmp526:
	.loc	0 567 11                        # ldecod_src/mc_direct.c:567:11
	jge	.LBB5_39
.Ltmp527:
.LBB5_6:                                # %for.body54
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	.loc	0 569 54 is_stmt 1              # ldecod_src/mc_direct.c:569:54
	movq	152(%r14), %rax
	.loc	0 569 41 is_stmt 0              # ldecod_src/mc_direct.c:569:41
	movq	(%rax,%r11,8), %rsi
.Ltmp528:
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 571 17 is_stmt 1              # ldecod_src/mc_direct.c:571:17
	movsbq	7(%rsp), %rdx
	testq	%rdx, %rdx
	sete	%dil
	movsbq	6(%rsp), %rax
	testq	%rax, %rax
	sete	%r8b
	.loc	0 571 32 is_stmt 0              # ldecod_src/mc_direct.c:571:32
	orb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB5_29
.Ltmp529:
# %bb.7:                                # %if.then66
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 573 67 is_stmt 1              # ldecod_src/mc_direct.c:573:67
	movq	(%r12), %rdi
.Ltmp530:
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	.loc	0 0 67 is_stmt 0                # ldecod_src/mc_direct.c:0:67
	movl	$1, %r10d
.Ltmp531:
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:j <- undef
	.loc	0 281 7 is_stmt 1               # ldecod_src/mc_direct.c:281:7
	cmpb	$0, 40(%rdi)
.Ltmp532:
	.loc	0 281 7 is_stmt 0               # ldecod_src/mc_direct.c:281:7
	je	.LBB5_8
.Ltmp533:
.LBB5_16:                               # %get_colocated_info_4x4.exit
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: is_not_moving <- undef
	.loc	0 575 29 is_stmt 1              # ldecod_src/mc_direct.c:575:29
	cmpb	$-1, %al
.Ltmp534:
	.loc	0 575 19 is_stmt 0              # ldecod_src/mc_direct.c:575:19
	je	.LBB5_17
.Ltmp535:
# %bb.19:                               # %if.else103
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 596 34 is_stmt 1              # ldecod_src/mc_direct.c:596:34
	cmpb	$-1, %dl
.Ltmp536:
	.loc	0 596 24 is_stmt 0              # ldecod_src/mc_direct.c:596:24
	je	.LBB5_20
.Ltmp537:
# %bb.22:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 573 106 is_stmt 1             # ldecod_src/mc_direct.c:573:106
	testl	%r10d, %r10d
	sete	%al
.Ltmp538:
	.loc	0 571 27                        # ldecod_src/mc_direct.c:571:27
	testb	%dl, %dl
	sete	%dil
.Ltmp539:
	.loc	0 617 36                        # ldecod_src/mc_direct.c:617:36
	testb	%al, %dil
	jne	.LBB5_23
.Ltmp540:
# %bb.24:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 0 36 is_stmt 0                # ldecod_src/mc_direct.c:0:36
	movl	12(%rsp), %edi
	movq	%rdx, %rax
	jmp	.LBB5_25
.Ltmp541:
	.p2align	4, 0x90
.LBB5_29:                               # %if.else186
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 648 33 is_stmt 1              # ldecod_src/mc_direct.c:648:33
	testb	%al, %dl
	js	.LBB5_30
.Ltmp542:
# %bb.31:                               # %if.else214
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 657 34                        # ldecod_src/mc_direct.c:657:34
	cmpb	$-1, %al
.Ltmp543:
	.loc	0 657 24 is_stmt 0              # ldecod_src/mc_direct.c:657:24
	je	.LBB5_32
.Ltmp544:
# %bb.33:                               # %if.else234
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 666 34 is_stmt 1              # ldecod_src/mc_direct.c:666:34
	cmpb	$-1, %dl
.Ltmp545:
	.loc	0 666 24 is_stmt 0              # ldecod_src/mc_direct.c:666:24
	je	.LBB5_34
.Ltmp546:
# %bb.36:                               # %if.else254
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 677 44 is_stmt 1              # ldecod_src/mc_direct.c:677:44
	movq	(%r15,%rdx,8), %rdi
	.loc	0 677 42 is_stmt 0              # ldecod_src/mc_direct.c:677:42
	movq	%rdi, -25(%rsi,%rbp)
	.loc	0 678 44 is_stmt 1              # ldecod_src/mc_direct.c:678:44
	movq	(%r12,%rax,8), %rax
	.loc	0 678 42 is_stmt 0              # ldecod_src/mc_direct.c:678:42
	movq	%rax, -17(%rsi,%rbp)
	.loc	0 679 39 is_stmt 1              # ldecod_src/mc_direct.c:679:39
	movl	12(%rsp), %eax
	movl	%eax, -9(%rsi,%rbp)
	.loc	0 680 39                        # ldecod_src/mc_direct.c:680:39
	movl	8(%rsp), %eax
	movl	%eax, -5(%rsi,%rbp)
	.loc	0 681 42                        # ldecod_src/mc_direct.c:681:42
	movb	%dl, -1(%rsi,%rbp)
	jmp	.LBB5_37
.Ltmp547:
.LBB5_8:                                # %if.else.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	.loc	0 573 89                        # ldecod_src/mc_direct.c:573:89
	movslq	40(%rbx), %r8
	#DEBUG_VALUE: get_colocated_info_4x4:j <- undef
	.loc	0 573 101 is_stmt 0             # ldecod_src/mc_direct.c:573:101
	addq	80(%rsp), %r8                   # 8-byte Folded Reload
.Ltmp548:
	#DEBUG_VALUE: get_colocated_info_4x4:j <- $r8
	.loc	0 285 35 is_stmt 1              # ldecod_src/mc_direct.c:285:35
	movq	152(%rdi), %r13
	.loc	0 285 28 is_stmt 0              # ldecod_src/mc_direct.c:285:28
	movq	(%r13,%r8,8), %r13
.Ltmp549:
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 288 12 is_stmt 1              # ldecod_src/mc_direct.c:288:12
	movzbl	-1(%r13,%rbp), %r8d
.Ltmp550:
	cmpl	$255, %r8d
	.loc	0 289 7                         # ldecod_src/mc_direct.c:289:7
	je	.LBB5_13
.Ltmp551:
# %bb.9:                                # %if.else.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	testl	%r8d, %r8d
	jne	.LBB5_16
.Ltmp552:
# %bb.10:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 289 32 is_stmt 0              # ldecod_src/mc_direct.c:289:32
	movzwl	-9(%r13,%rbp), %r8d
.Ltmp553:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $r8w
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8w
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r10d
	negw	%r10w
	cmovsw	%r8w, %r10w
.Ltmp554:
	.loc	0 289 41                        # ldecod_src/mc_direct.c:289:41
	cmpw	$1, %r10w
	.loc	0 290 7                         # ldecod_src/mc_direct.c:290:7
	ja	.LBB5_12
.Ltmp555:
# %bb.11:                               # %land.lhs.true9.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 290 32 is_stmt 0              # ldecod_src/mc_direct.c:290:32
	movzwl	-7(%r13,%rbp), %r8d
.Ltmp556:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $r8w
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8w
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r13d
.Ltmp557:
	negw	%r13w
	cmovsw	%r8w, %r13w
	xorl	%r10d, %r10d
.Ltmp558:
	.loc	0 290 41                        # ldecod_src/mc_direct.c:290:41
	cmpw	$2, %r13w
	.loc	0 291 7                         # ldecod_src/mc_direct.c:291:7
	jb	.LBB5_16
.Ltmp559:
.LBB5_12:                               # %lor.rhs.thread.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	.loc	0 0 7 is_stmt 0                 # ldecod_src/mc_direct.c:0:7
	movl	$1, %r10d
	.loc	0 292 7 is_stmt 1               # ldecod_src/mc_direct.c:292:7
	jmp	.LBB5_16
.Ltmp560:
.LBB5_17:                               # %if.then75
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 577 21                        # ldecod_src/mc_direct.c:577:21
	testl	%r10d, %r10d
	je	.LBB5_18
.Ltmp561:
.LBB5_32:                               # %if.else
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	(%r15,%rdx,8), %rax
	movq	%rax, -25(%rsi,%rbp)
	movq	$0, -17(%rsi,%rbp)
	movl	12(%rsp), %eax
	movl	%eax, -9(%rsi,%rbp)
	movl	$0, -5(%rsi,%rbp)
	movb	%dl, -1(%rsi,%rbp)
	movb	$-1, (%rsi,%rbp)
	jmp	.LBB5_38
.Ltmp562:
.LBB5_20:                               # %if.then107
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 598 22 is_stmt 1              # ldecod_src/mc_direct.c:598:22
	testl	%r10d, %r10d
	jne	.LBB5_35
.Ltmp563:
# %bb.21:                               # %if.then109
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 600 44                        # ldecod_src/mc_direct.c:600:44
	movq	%rdi, -17(%rsi,%rbp)
	.loc	0 601 41                        # ldecod_src/mc_direct.c:601:41
	movq	$0, -9(%rsi,%rbp)
	.loc	0 603 44                        # ldecod_src/mc_direct.c:603:44
	movw	$255, -1(%rsi,%rbp)
	.loc	0 605 17                        # ldecod_src/mc_direct.c:605:17
	jmp	.LBB5_38
.Ltmp564:
.LBB5_23:                               #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 0 17 is_stmt 0                # ldecod_src/mc_direct.c:0:17
	xorl	%eax, %eax
	xorl	%edi, %edi
.Ltmp565:
.LBB5_25:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	movq	(%r15,%rax,8), %rax
	movq	%rax, -25(%rsi,%rbp)
	movl	%edi, -9(%rsi,%rbp)
	movb	%dl, -1(%rsi,%rbp)
.Ltmp566:
	.loc	0 630 22 is_stmt 1              # ldecod_src/mc_direct.c:630:22
	movsbq	6(%rsp), %rax
	testq	%rax, %rax
	.loc	0 630 37 is_stmt 0              # ldecod_src/mc_direct.c:630:37
	jne	.LBB5_28
.Ltmp567:
# %bb.26:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	testl	%r10d, %r10d
	jne	.LBB5_28
.Ltmp568:
# %bb.27:                               # %if.then165
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 632 46 is_stmt 1              # ldecod_src/mc_direct.c:632:46
	movq	(%r12), %rax
	.loc	0 632 44 is_stmt 0              # ldecod_src/mc_direct.c:632:44
	movq	%rax, -17(%rsi,%rbp)
	.loc	0 633 41 is_stmt 1              # ldecod_src/mc_direct.c:633:41
	movl	$0, -5(%rsi,%rbp)
	.loc	0 634 47                        # ldecod_src/mc_direct.c:634:47
	movb	$0, (%rsi,%rbp)
	.loc	0 635 17                        # ldecod_src/mc_direct.c:635:17
	jmp	.LBB5_38
.Ltmp569:
.LBB5_28:                               # %if.else173
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 638 46                        # ldecod_src/mc_direct.c:638:46
	movq	(%r12,%rax,8), %rdx
	.loc	0 638 44 is_stmt 0              # ldecod_src/mc_direct.c:638:44
	movq	%rdx, -17(%rsi,%rbp)
	.loc	0 639 41 is_stmt 1              # ldecod_src/mc_direct.c:639:41
	movl	8(%rsp), %edx
	movl	%edx, -5(%rsi,%rbp)
	.loc	0 640 44                        # ldecod_src/mc_direct.c:640:44
	movb	%al, (%rsi,%rbp)
	jmp	.LBB5_38
.Ltmp570:
.LBB5_18:                               # %if.then77
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 579 46                        # ldecod_src/mc_direct.c:579:46
	movq	(%r15), %rax
	.loc	0 579 44 is_stmt 0              # ldecod_src/mc_direct.c:579:44
	movq	%rax, -25(%rsi,%rbp)
	.loc	0 581 41 is_stmt 1              # ldecod_src/mc_direct.c:581:41
	movups	%xmm0, -17(%rsi,%rbp)
	movw	$-256, -1(%rsi,%rbp)
	.loc	0 585 17                        # ldecod_src/mc_direct.c:585:17
	jmp	.LBB5_38
.Ltmp571:
.LBB5_13:                               # %land.lhs.true22.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 292 32                        # ldecod_src/mc_direct.c:292:32
	cmpb	$0, (%r13,%rbp)
	.loc	0 293 7                         # ldecod_src/mc_direct.c:293:7
	jne	.LBB5_16
.Ltmp572:
# %bb.14:                               # %land.lhs.true28.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 293 32 is_stmt 0              # ldecod_src/mc_direct.c:293:32
	movzwl	-5(%r13,%rbp), %r15d
.Ltmp573:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $r15w
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r15w
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r15d, %r8d
	negw	%r8w
	cmovsw	%r15w, %r8w
	movq	40(%rsp), %r15                  # 8-byte Reload
.Ltmp574:
	.loc	0 293 41                        # ldecod_src/mc_direct.c:293:41
	cmpw	$1, %r8w
	.loc	0 294 7                         # ldecod_src/mc_direct.c:294:7
	ja	.LBB5_16
.Ltmp575:
# %bb.15:                               # %land.rhs.i
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	#DEBUG_VALUE: get_colocated_info_4x4:list1 <- $rdi
	#DEBUG_VALUE: get_colocated_info_4x4:currMB <- $rbx
	#DEBUG_VALUE: get_colocated_info_4x4:i <- $rcx
	#DEBUG_VALUE: fs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $r13, $rcx
	.loc	0 294 32 is_stmt 0              # ldecod_src/mc_direct.c:294:32
	movzwl	-3(%r13,%rbp), %r8d
.Ltmp576:
	#DEBUG_VALUE: iabs:x <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $r8w
	#DEBUG_VALUE: iabs:y <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 31, DW_OP_shra, DW_OP_stack_value] $r8w
	.loc	1 120 18 is_stmt 1              # ldecod_src/inc/ifunctions.h:120:18
	movl	%r8d, %r15d
	negw	%r15w
	cmovsw	%r8w, %r15w
.Ltmp577:
	.loc	0 294 41                        # ldecod_src/mc_direct.c:294:41
	xorl	%r10d, %r10d
	cmpw	$2, %r15w
	movq	40(%rsp), %r15                  # 8-byte Reload
	setae	%r10b
	jmp	.LBB5_16
.Ltmp578:
.LBB5_34:                               # %if.then238
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 668 42                        # ldecod_src/mc_direct.c:668:42
	movq	$0, -25(%rsi,%rbp)
.Ltmp579:
.LBB5_35:                               # %if.else121
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/mc_direct.c:0:0
	movq	(%r12,%rax,8), %rax
	movq	%rax, -17(%rsi,%rbp)
	movl	$0, -9(%rsi,%rbp)
	movl	8(%rsp), %eax
	movl	%eax, -5(%rsi,%rbp)
	movb	$-1, -1(%rsi,%rbp)
.Ltmp580:
.LBB5_37:                               # %if.end276
                                        #   in Loop: Header=BB5_6 Depth=3
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- [DW_OP_plus_uconst 32, DW_OP_deref_size 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: j4 <- $r11
	#DEBUG_VALUE: i4 <- $rcx
	#DEBUG_VALUE: mv_info <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $rsi, $rcx
	movzbl	6(%rsp), %eax
	movb	%al, (%rsi,%rbp)
	jmp	.LBB5_38
.Ltmp581:
.LBB5_41:                               # %for.end283
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- $rbx
	#DEBUG_VALUE: dec_picture <- $r14
	#DEBUG_VALUE: list0 <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: list1 <- $r12
	#DEBUG_VALUE: k <- $rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp582:
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.Ltmp583:
.LBB5_42:                               # %if.end284
	#DEBUG_VALUE: update_direct_mv_info_spatial_4x4:currMB <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 690 1 is_stmt 1               # ldecod_src/mc_direct.c:690:1
	retq
.Ltmp584:
.Lfunc_end5:
	.size	update_direct_mv_info_spatial_4x4, .Lfunc_end5-update_direct_mv_info_spatial_4x4
	.cfi_endproc
                                        # -- End function
	.type	BLOCK_STEP,@object              # @BLOCK_STEP
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
BLOCK_STEP:
	.zero	8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	BLOCK_STEP, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"temporal direct error: colocated block has ref that is unavailable"
	.size	.L.str, 67

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	67                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	9                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	9                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp469-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp484-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp203-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	136                             # 136
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp482-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp216-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp218-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp218-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp228-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp228-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 192
	.byte	1                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	172                             # -135792468
	.byte	241                             # 
	.byte	159                             # 
	.byte	191                             # 
	.byte	127                             # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	172                             # -135792468
	.byte	241                             # 
	.byte	159                             # 
	.byte	191                             # 
	.byte	127                             # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp345-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	172                             # -135792468
	.byte	241                             # 
	.byte	159                             # 
	.byte	191                             # 
	.byte	127                             # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp346-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp346-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp345-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp346-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp268-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp317-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp307-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp361-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 192
	.byte	1                               # 
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp361-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp474-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp352-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	212                             # 84
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp357-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	212                             # 84
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp361-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp365-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp379-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp392-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp443-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp457-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp361-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp365-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp370-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp379-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp397-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp408-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp442-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp456-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp371-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp582-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp490-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp491-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp497-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp497-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp498-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp503-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp503-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	148                             # DW_OP_deref_size
	.byte	8                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp510-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp510-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp513-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp515-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp515-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp517-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp530-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp549-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp557-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	32                              # 32
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
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
	.byte	38                              # DW_FORM_strx2
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	46                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	53                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	54                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	55                              # Abbreviation Code
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
	.byte	56                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	57                              # Abbreviation Code
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
	.byte	58                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	6                               # DW_FORM_data4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	60                              # Abbreviation Code
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
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
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
	.byte	62                              # Abbreviation Code
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
	.byte	63                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	64                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	65                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	66                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	67                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	68                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	69                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	70                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	71                              # Abbreviation Code
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
	.byte	72                              # Abbreviation Code
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
	.byte	73                              # Abbreviation Code
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
	.byte	74                              # Abbreviation Code
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
	.byte	75                              # Abbreviation Code
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
	.byte	76                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	77                              # Abbreviation Code
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
	.byte	78                              # Abbreviation Code
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
	.byte	79                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	80                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	81                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	82                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x384b DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x5 DW_TAG_base_type
	.short	841                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x30:0x5 DW_TAG_base_type
	.short	840                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x35:0xa DW_TAG_subprogram
	.byte	4                               # Abbrev [4] 0x36:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3f:0x5 DW_TAG_const_type
	.long	68                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x44:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x48:0x8 DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x50:0x5 DW_TAG_const_type
	.long	85                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x55:0x8 DW_TAG_typedef
	.long	93                              # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5d:0x17 DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x61:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x6a:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x74:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x78:0xa DW_TAG_variable
	.long	130                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	11                              # Abbrev [11] 0x82:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x87:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	67                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8e:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x92:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	14                              # Abbrev [14] 0x96:0xb DW_TAG_variable
	.byte	12                              # DW_AT_name
	.long	161                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	11                              # Abbrev [11] 0xa1:0x12 DW_TAG_array_type
	.long	63                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa6:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0xac:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xb3:0x18 DW_TAG_enumeration_type
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0xbb:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xbe:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xc1:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xc4:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xc7:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xcb:0x15 DW_TAG_enumeration_type
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0xd3:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xd6:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xd9:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xdc:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xe0:0x1b DW_TAG_enumeration_type
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0xe8:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xeb:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xee:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xf1:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xf4:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	16                              # Abbrev [16] 0xf7:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xfb:0x12 DW_TAG_enumeration_type
	.long	269                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x103:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x106:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x109:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x10d:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x111:0x1b DW_TAG_enumeration_type
	.long	269                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x119:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x11c:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x11f:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x122:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x125:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x128:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x12c:0x18 DW_TAG_enumeration_type
	.long	269                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x134:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x137:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x13a:0x3 DW_TAG_enumerator
	.byte	40                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x13d:0x3 DW_TAG_enumerator
	.byte	41                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x140:0x3 DW_TAG_enumerator
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x144:0x15 DW_TAG_enumeration_type
	.long	269                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x14c:0x3 DW_TAG_enumerator
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x14f:0x3 DW_TAG_enumerator
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x152:0x3 DW_TAG_enumerator
	.byte	45                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x155:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x159:0x3c DW_TAG_enumeration_type
	.long	269                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x161:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x164:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x167:0x3 DW_TAG_enumerator
	.byte	49                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x16a:0x3 DW_TAG_enumerator
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x16d:0x3 DW_TAG_enumerator
	.byte	51                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x170:0x3 DW_TAG_enumerator
	.byte	52                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x173:0x3 DW_TAG_enumerator
	.byte	53                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x176:0x3 DW_TAG_enumerator
	.byte	54                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x179:0x3 DW_TAG_enumerator
	.byte	55                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x17c:0x3 DW_TAG_enumerator
	.byte	56                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x17f:0x3 DW_TAG_enumerator
	.byte	57                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x182:0x3 DW_TAG_enumerator
	.byte	58                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x185:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x188:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x18b:0x3 DW_TAG_enumerator
	.byte	61                              # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x18e:0x3 DW_TAG_enumerator
	.byte	62                              # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x191:0x3 DW_TAG_enumerator
	.byte	63                              # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x195:0x4 DW_TAG_base_type
	.byte	64                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x199:0x19 DW_TAG_subprogram
	.byte	65                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x1a1:0x8 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1a9:0x8 DW_TAG_variable
	.byte	67                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x1b2:0x138 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	13790                           # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x1be:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	13800                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x1c5:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	13810                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x1cb:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	13820                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x1d1:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	13830                           # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x1d7:0x112 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	25                              # Abbrev [25] 0x1d9:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	13841                           # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x1df:0x5 DW_TAG_variable
	.long	13851                           # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x1e4:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp10                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	289                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x1f2:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x20a:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x225:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	290                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x233:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x24b:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x266:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp20-.Ltmp19                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	293                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x274:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	113
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x28c:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	113
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x2a7:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp22                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	294                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x2b5:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x2cd:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	112
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x2ea:0x11 DW_TAG_subprogram
	.byte	68                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2f2:0x8 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x2fb:0x157 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	842                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x30c:0xb DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.short	835                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	2506                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x317:0xb DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.short	836                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	10659                           # DW_AT_type
	.byte	30                              # Abbrev [30] 0x322:0xb DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.short	837                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	30                              # Abbrev [30] 0x32d:0xb DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.short	838                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x338:0x119 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x33a:0xb DW_TAG_variable
	.byte	8                               # DW_AT_location
	.short	847                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	10164                           # DW_AT_type
	.byte	32                              # Abbrev [32] 0x345:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	314                             # DW_AT_decl_line
	.long	10904                           # DW_AT_type
	.byte	24                              # Abbrev [24] 0x34f:0xb3 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x351:0xb DW_TAG_variable
	.byte	11                              # DW_AT_location
	.short	848                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x35c:0xb DW_TAG_variable
	.byte	12                              # DW_AT_location
	.short	849                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x367:0xb DW_TAG_variable
	.byte	13                              # DW_AT_location
	.short	561                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x372:0xa DW_TAG_variable
	.short	850                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x37c:0xa DW_TAG_variable
	.short	839                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	27                              # Abbrev [27] 0x386:0x16 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	318                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x394:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x39c:0x15 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp37-.Ltmp35                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	319                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x3aa:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3b1:0x28 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp55                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	337                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3bf:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3c6:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	121
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3d9:0x28 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp61-.Ltmp59                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	337                             # DW_AT_call_line
	.byte	77                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3e7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3ee:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x402:0x8 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	35                              # Abbrev [35] 0x40a:0x46 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp93-.Ltmp79                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x410:0xb DW_TAG_variable
	.byte	16                              # DW_AT_location
	.short	561                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x41b:0xa DW_TAG_variable
	.short	839                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	27                              # Abbrev [27] 0x425:0x15 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp83-.Ltmp80                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	358                             # DW_AT_call_line
	.byte	45                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x433:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x43a:0x15 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp86-.Ltmp84                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	358                             # DW_AT_call_line
	.byte	53                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x448:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x452:0x1a DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	843                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	693                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	37                              # Abbrev [37] 0x45f:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.short	847                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	693                             # DW_AT_decl_line
	.long	10164                           # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x46c:0x21 DW_TAG_subprogram
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	39                              # Abbrev [39] 0x471:0x9 DW_TAG_formal_parameter
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	1165                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x47a:0x9 DW_TAG_formal_parameter
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	2205                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x483:0x9 DW_TAG_formal_parameter
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x48d:0x5 DW_TAG_pointer_type
	.long	1170                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x492:0x5 DW_TAG_pointer_type
	.long	1175                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x497:0x8 DW_TAG_typedef
	.long	1183                            # DW_AT_type
	.byte	165                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x49f:0x21 DW_TAG_structure_type
	.byte	164                             # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4a4:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1216                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4ad:0x9 DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	2193                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4b6:0x9 DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	2164                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x4c0:0xc DW_TAG_array_type
	.long	1228                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4c5:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x4cc:0x5 DW_TAG_pointer_type
	.long	1233                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x4d1:0x2d2 DW_TAG_structure_type
	.byte	161                             # DW_AT_name
	.short	416                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4d7:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1955                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4e0:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4e9:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4f2:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x4fb:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x504:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x50d:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x516:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x51f:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x528:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x531:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x53a:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x543:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x54c:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x555:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x55e:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x567:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x570:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x579:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x582:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x58b:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x594:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x59d:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5a6:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5af:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5b8:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5c1:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5ca:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5d3:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5dc:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5e5:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5ee:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5f7:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x600:0x9 DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x609:0x9 DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x612:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	2010                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x61b:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	2020                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x624:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2032                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x62d:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	2052                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x636:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	2064                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	216                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x63f:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x648:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	232                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x651:0x9 DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x65a:0x9 DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x663:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	252                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x66c:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.short	256                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x676:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.short	260                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x680:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.short	264                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x68a:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.short	268                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x694:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.short	272                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x69e:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.short	276                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6a8:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.short	280                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6b2:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.short	284                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6bc:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6c6:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.short	292                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6d0:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.short	296                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6da:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.short	300                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6e4:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.short	308                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6ee:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	2086                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.short	312                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x6f8:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.short	320                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x702:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.short	324                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x70c:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.short	328                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x716:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.short	332                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x720:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	1980                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.short	336                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x72a:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.short	344                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x734:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.short	348                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x73e:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.short	352                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x748:0xa DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.short	356                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x752:0xa DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x75c:0xa DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.short	364                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x766:0xa DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x770:0xa DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x77a:0xa DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x784:0xa DW_TAG_member
	.byte	158                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.short	388                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x78e:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	2164                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.short	392                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x798:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	2176                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.short	400                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7a3:0x8 DW_TAG_typedef
	.long	251                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x7ab:0x8 DW_TAG_typedef
	.long	1971                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x7b3:0x4 DW_TAG_base_type
	.byte	84                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	40                              # Abbrev [40] 0x7b7:0x5 DW_TAG_pointer_type
	.long	1980                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x7bc:0x5 DW_TAG_pointer_type
	.long	1985                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7c1:0x8 DW_TAG_typedef
	.long	1993                            # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x7c9:0x8 DW_TAG_typedef
	.long	2001                            # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x7d1:0x4 DW_TAG_base_type
	.byte	108                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	40                              # Abbrev [40] 0x7d5:0x5 DW_TAG_pointer_type
	.long	1975                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x7da:0x5 DW_TAG_pointer_type
	.long	2015                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x7df:0x5 DW_TAG_pointer_type
	.long	1183                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7e4:0xc DW_TAG_array_type
	.long	2010                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x7e9:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x7f0:0xf DW_TAG_structure_type
	.byte	116                             # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x7f5:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x7ff:0x5 DW_TAG_pointer_type
	.long	1963                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x804:0xc DW_TAG_array_type
	.long	2032                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x809:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x810:0x5 DW_TAG_pointer_type
	.long	2069                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x815:0x5 DW_TAG_pointer_type
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x81a:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x81f:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x826:0x5 DW_TAG_pointer_type
	.long	2091                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x82b:0x8 DW_TAG_typedef
	.long	2099                            # DW_AT_type
	.byte	143                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x833:0x3c DW_TAG_structure_type
	.byte	142                             # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x838:0x9 DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x841:0x9 DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x84a:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x853:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x85c:0x9 DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x865:0x9 DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	2159                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x86f:0x5 DW_TAG_pointer_type
	.long	2099                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x874:0xc DW_TAG_array_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x879:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x880:0xc DW_TAG_array_type
	.long	2188                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x885:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x88c:0x5 DW_TAG_pointer_type
	.long	1228                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x891:0xc DW_TAG_array_type
	.long	85                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x896:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x89d:0x5 DW_TAG_pointer_type
	.long	2210                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x8a2:0x5 DW_TAG_const_type
	.long	1175                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x8a7:0x100 DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	844                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	30                              # Abbrev [30] 0x8b4:0xb DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.short	835                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.long	2506                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x8bf:0xa DW_TAG_variable
	.short	857                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8c9:0xd1 DW_TAG_lexical_block
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp188-.Ltmp114               # DW_AT_high_pc
	.byte	45                              # Abbrev [45] 0x8cf:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	15
	.short	851                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.long	405                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x8dc:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	14
	.short	852                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.long	405                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x8e9:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	28
	.short	853                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.long	85                              # DW_AT_type
	.byte	45                              # Abbrev [45] 0x8f6:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.short	854                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.long	85                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x903:0xb DW_TAG_variable
	.byte	18                              # DW_AT_location
	.short	847                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
	.long	10164                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x90e:0xb DW_TAG_variable
	.byte	19                              # DW_AT_location
	.short	539                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	10659                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x919:0xb DW_TAG_variable
	.byte	20                              # DW_AT_location
	.short	855                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x924:0xb DW_TAG_variable
	.byte	21                              # DW_AT_location
	.short	836                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	32                              # Abbrev [32] 0x92f:0xa DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x939:0xb DW_TAG_variable
	.byte	23                              # DW_AT_location
	.short	681                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	383                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x944:0xb DW_TAG_variable
	.byte	24                              # DW_AT_location
	.short	856                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	32                              # Abbrev [32] 0x94f:0xa DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x959:0xb DW_TAG_variable
	.byte	26                              # DW_AT_location
	.short	837                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	383                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x964:0xb DW_TAG_variable
	.byte	27                              # DW_AT_location
	.short	838                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	383                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x96f:0xa DW_TAG_variable
	.short	798                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x979:0xa DW_TAG_variable
	.short	858                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	27                              # Abbrev [27] 0x983:0x16 DW_TAG_inlined_subroutine
	.long	1132                            # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp130-.Ltmp129               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	527                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x991:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1155                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x99a:0x6 DW_TAG_call_site
	.long	2471                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	46                              # Abbrev [46] 0x9a0:0x6 DW_TAG_call_site
	.long	763                             # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x9a7:0x23 DW_TAG_subprogram
	.byte	167                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	48                              # Abbrev [48] 0x9ab:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9b0:0x5 DW_TAG_formal_parameter
	.long	10659                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9b5:0x5 DW_TAG_formal_parameter
	.long	12975                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9ba:0x5 DW_TAG_formal_parameter
	.long	12975                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9bf:0x5 DW_TAG_formal_parameter
	.long	9863                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9c4:0x5 DW_TAG_formal_parameter
	.long	9863                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x9ca:0x5 DW_TAG_pointer_type
	.long	2511                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x9cf:0xa DW_TAG_typedef
	.long	2521                            # DW_AT_type
	.short	832                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0x9d9:0x29d DW_TAG_structure_type
	.short	831                             # DW_AT_name
	.short	480                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9e0:0x9 DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	3190                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x9e9:0x9 DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	4689                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x9f2:0x9 DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	7195                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x9fb:0xa DW_TAG_member
	.short	777                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa05:0xa DW_TAG_member
	.short	778                             # DW_AT_name
	.long	12800                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa0f:0xa DW_TAG_member
	.short	780                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa19:0xa DW_TAG_member
	.short	781                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa23:0xa DW_TAG_member
	.short	782                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa2d:0xa DW_TAG_member
	.short	783                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa37:0xa DW_TAG_member
	.short	784                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa41:0xa DW_TAG_member
	.short	785                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa4b:0xa DW_TAG_member
	.short	786                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa55:0xa DW_TAG_member
	.short	787                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa5f:0xa DW_TAG_member
	.short	788                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xa69:0x9 DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa72:0xa DW_TAG_member
	.short	789                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa7c:0xa DW_TAG_member
	.short	790                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa86:0xa DW_TAG_member
	.short	791                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa90:0xa DW_TAG_member
	.short	792                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xa9a:0xa DW_TAG_member
	.short	793                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xaa4:0xa DW_TAG_member
	.short	794                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xaae:0xa DW_TAG_member
	.short	795                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xab8:0xa DW_TAG_member
	.short	642                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	110                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xac2:0xa DW_TAG_member
	.short	796                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	111                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xacc:0xa DW_TAG_member
	.short	797                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xad6:0xa DW_TAG_member
	.short	798                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	114                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xae0:0xa DW_TAG_member
	.short	799                             # DW_AT_name
	.long	12832                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xaea:0xa DW_TAG_member
	.short	800                             # DW_AT_name
	.long	12832                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xaf4:0xa DW_TAG_member
	.short	801                             # DW_AT_name
	.long	12832                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xafe:0xa DW_TAG_member
	.short	802                             # DW_AT_name
	.long	12832                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xb08:0xa DW_TAG_member
	.short	803                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0xb12:0xa DW_TAG_member
	.short	804                             # DW_AT_name
	.long	12837                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	154                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb1c:0xb DW_TAG_member
	.short	805                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.short	284                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb27:0xb DW_TAG_member
	.short	806                             # DW_AT_name
	.long	12867                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.short	288                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb32:0xb DW_TAG_member
	.short	807                             # DW_AT_name
	.long	12867                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.short	312                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb3d:0xb DW_TAG_member
	.short	808                             # DW_AT_name
	.long	12867                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.short	336                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb48:0xb DW_TAG_member
	.short	809                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb53:0xb DW_TAG_member
	.short	810                             # DW_AT_name
	.long	12879                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.short	364                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb5e:0xb DW_TAG_member
	.short	811                             # DW_AT_name
	.long	12879                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	368                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb69:0xb DW_TAG_member
	.short	812                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.short	372                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb74:0xb DW_TAG_member
	.short	813                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.short	373                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb7f:0xb DW_TAG_member
	.short	814                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	374                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb8a:0xb DW_TAG_member
	.short	725                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	376                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xb95:0xb DW_TAG_member
	.short	726                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	378                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0xba0:0xb DW_TAG_member
	.short	727                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.short	380                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0xbab:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.short	384                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbb5:0xc DW_TAG_member
	.short	815                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.short	388                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbc1:0xc DW_TAG_member
	.short	816                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.short	392                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbcd:0xc DW_TAG_member
	.short	817                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.short	396                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbd9:0xc DW_TAG_member
	.short	818                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.short	400                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbe5:0xc DW_TAG_member
	.short	819                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.short	404                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbf1:0xc DW_TAG_member
	.short	820                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.short	408                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xbfd:0xc DW_TAG_member
	.short	821                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.short	412                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc09:0xc DW_TAG_member
	.short	822                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.short	416                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc15:0xc DW_TAG_member
	.short	823                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.short	420                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc21:0xc DW_TAG_member
	.short	824                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.short	424                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc2d:0xc DW_TAG_member
	.short	825                             # DW_AT_name
	.long	12891                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.short	432                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc39:0xc DW_TAG_member
	.short	826                             # DW_AT_name
	.long	12891                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.short	440                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc45:0xc DW_TAG_member
	.short	827                             # DW_AT_name
	.long	12918                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.short	448                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc51:0xc DW_TAG_member
	.short	828                             # DW_AT_name
	.long	12980                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.short	456                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc5d:0xc DW_TAG_member
	.short	829                             # DW_AT_name
	.long	13006                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.short	464                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xc69:0xc DW_TAG_member
	.short	830                             # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.short	472                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xc76:0x5 DW_TAG_pointer_type
	.long	3195                            # DW_AT_type
	.byte	54                              # Abbrev [54] 0xc7b:0x5d6 DW_TAG_structure_type
	.short	776                             # DW_AT_name
	.short	13648                           # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	55                              # Abbrev [55] 0xc83:0xa DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	4689                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xc8d:0xa DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	7195                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xc97:0xa DW_TAG_member
	.byte	243                             # DW_AT_name
	.long	7936                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xca1:0xb DW_TAG_member
	.short	277                             # DW_AT_name
	.long	8360                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	346                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xcac:0xb DW_TAG_member
	.short	625                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	347                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xcb7:0xb DW_TAG_member
	.short	558                             # DW_AT_name
	.long	10741                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xcc2:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	353                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xccc:0xb DW_TAG_member
	.short	394                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	354                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xcd7:0xb DW_TAG_member
	.short	626                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	355                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xce2:0xb DW_TAG_member
	.short	627                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xced:0xb DW_TAG_member
	.short	628                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xcf8:0xb DW_TAG_member
	.short	629                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd03:0xb DW_TAG_member
	.short	630                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	360                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd0e:0xb DW_TAG_member
	.short	631                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd19:0xb DW_TAG_member
	.short	632                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	365                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd24:0xb DW_TAG_member
	.short	633                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	366                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd2f:0xb DW_TAG_member
	.short	392                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd3a:0xb DW_TAG_member
	.short	634                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	372                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd45:0xb DW_TAG_member
	.short	635                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	378                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd50:0xb DW_TAG_member
	.short	440                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	379                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd5b:0xb DW_TAG_member
	.short	636                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd66:0xb DW_TAG_member
	.short	406                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd71:0xb DW_TAG_member
	.short	637                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd7c:0xb DW_TAG_member
	.short	638                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd87:0xb DW_TAG_member
	.short	639                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xd92:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	400                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xd9c:0xb DW_TAG_member
	.short	640                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xda7:0xb DW_TAG_member
	.short	641                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	402                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xdb2:0xb DW_TAG_member
	.short	642                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	406                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xdbd:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
	.byte	148                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xdc7:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xdd1:0xb DW_TAG_member
	.short	643                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	409                             # DW_AT_decl_line
	.byte	156                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xddc:0xb DW_TAG_member
	.short	644                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	410                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xde7:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	164                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xdf1:0xb DW_TAG_member
	.short	645                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	412                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xdfc:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	413                             # DW_AT_decl_line
	.byte	172                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe06:0xb DW_TAG_member
	.short	388                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe11:0xb DW_TAG_member
	.short	393                             # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	415                             # DW_AT_decl_line
	.byte	180                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xe1c:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1955                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	416                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe26:0xb DW_TAG_member
	.short	646                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	417                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe31:0xb DW_TAG_member
	.short	647                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	418                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe3c:0xb DW_TAG_member
	.short	648                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe47:0xb DW_TAG_member
	.short	649                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe52:0xb DW_TAG_member
	.short	650                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	421                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe5d:0xb DW_TAG_member
	.short	651                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe68:0xb DW_TAG_member
	.short	652                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.byte	212                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe73:0xb DW_TAG_member
	.short	653                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	426                             # DW_AT_decl_line
	.byte	216                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe7e:0xb DW_TAG_member
	.short	654                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	427                             # DW_AT_decl_line
	.byte	220                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe89:0xb DW_TAG_member
	.short	655                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	428                             # DW_AT_decl_line
	.byte	224                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe94:0xb DW_TAG_member
	.short	656                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.byte	228                             # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0xe9f:0xb DW_TAG_member
	.short	657                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	430                             # DW_AT_decl_line
	.byte	232                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xeaa:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
	.byte	236                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xeb4:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	432                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xebe:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	433                             # DW_AT_decl_line
	.byte	244                             # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0xec8:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	2086                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	434                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xed2:0xb DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	11543                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	436                             # DW_AT_decl_line
	.short	256                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xedd:0xb DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	11555                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	437                             # DW_AT_decl_line
	.short	264                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xee8:0xc DW_TAG_member
	.short	658                             # DW_AT_name
	.long	11567                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	440                             # DW_AT_decl_line
	.short	312                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xef4:0xc DW_TAG_member
	.short	689                             # DW_AT_name
	.long	12007                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	441                             # DW_AT_decl_line
	.short	320                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf00:0xc DW_TAG_member
	.short	701                             # DW_AT_name
	.long	12218                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	442                             # DW_AT_decl_line
	.short	328                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf0c:0xc DW_TAG_member
	.short	712                             # DW_AT_name
	.long	12434                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	444                             # DW_AT_decl_line
	.short	336                             # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf18:0xc DW_TAG_member
	.short	713                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	446                             # DW_AT_decl_line
	.short	1104                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf24:0xc DW_TAG_member
	.short	714                             # DW_AT_name
	.long	12452                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.short	1112                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf30:0xc DW_TAG_member
	.short	715                             # DW_AT_name
	.long	12452                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	448                             # DW_AT_decl_line
	.short	1128                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf3c:0xc DW_TAG_member
	.short	716                             # DW_AT_name
	.long	12452                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	449                             # DW_AT_decl_line
	.short	1144                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf48:0xc DW_TAG_member
	.short	717                             # DW_AT_name
	.long	12452                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	452                             # DW_AT_decl_line
	.short	1160                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xf54:0xb DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.short	1176                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xf5f:0xb DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.short	1180                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xf6a:0xb DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.short	1184                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf75:0xc DW_TAG_member
	.short	718                             # DW_AT_name
	.long	12464                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.short	1188                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf81:0xc DW_TAG_member
	.short	725                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	461                             # DW_AT_decl_line
	.short	1220                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf8d:0xc DW_TAG_member
	.short	726                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	462                             # DW_AT_decl_line
	.short	1222                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xf99:0xc DW_TAG_member
	.short	727                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	463                             # DW_AT_decl_line
	.short	1224                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0xfa5:0xb DW_TAG_member
	.byte	245                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	465                             # DW_AT_decl_line
	.short	1228                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfb0:0xc DW_TAG_member
	.short	728                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
	.short	1232                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfbc:0xc DW_TAG_member
	.short	729                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.short	1236                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfc8:0xc DW_TAG_member
	.short	730                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	470                             # DW_AT_decl_line
	.short	1240                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfd4:0xc DW_TAG_member
	.short	731                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.short	1248                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfe0:0xc DW_TAG_member
	.short	732                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.short	1256                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xfec:0xc DW_TAG_member
	.short	733                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	473                             # DW_AT_decl_line
	.short	1264                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0xff8:0xc DW_TAG_member
	.short	734                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	474                             # DW_AT_decl_line
	.short	1272                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1004:0xc DW_TAG_member
	.short	735                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	475                             # DW_AT_decl_line
	.short	1280                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1010:0xc DW_TAG_member
	.short	736                             # DW_AT_name
	.long	12567                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	477                             # DW_AT_decl_line
	.short	1288                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x101c:0xc DW_TAG_member
	.short	737                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.short	1352                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1028:0xc DW_TAG_member
	.short	738                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.short	1360                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1034:0xc DW_TAG_member
	.short	739                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.short	1368                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1040:0xc DW_TAG_member
	.short	740                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.short	1376                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x104c:0xc DW_TAG_member
	.short	741                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.short	1384                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1058:0xc DW_TAG_member
	.short	742                             # DW_AT_name
	.long	12579                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.short	1392                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1064:0xc DW_TAG_member
	.short	743                             # DW_AT_name
	.long	12579                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.short	2544                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1070:0xc DW_TAG_member
	.short	744                             # DW_AT_name
	.long	12609                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.short	3696                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x107c:0xc DW_TAG_member
	.short	745                             # DW_AT_name
	.long	12609                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
	.short	8304                            # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1088:0xc DW_TAG_member
	.short	746                             # DW_AT_name
	.long	12639                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
	.short	12912                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1094:0xc DW_TAG_member
	.short	747                             # DW_AT_name
	.long	12651                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	494                             # DW_AT_decl_line
	.short	13008                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10a0:0xc DW_TAG_member
	.short	748                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	495                             # DW_AT_decl_line
	.short	13264                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10ac:0xc DW_TAG_member
	.short	749                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.short	13268                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10b8:0xc DW_TAG_member
	.short	267                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.short	13272                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10c4:0xc DW_TAG_member
	.short	268                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	501                             # DW_AT_decl_line
	.short	13274                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10d0:0xc DW_TAG_member
	.short	750                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.short	13276                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10dc:0xc DW_TAG_member
	.short	751                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	504                             # DW_AT_decl_line
	.short	13278                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10e8:0xc DW_TAG_member
	.short	752                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.short	13280                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x10f4:0xc DW_TAG_member
	.short	753                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	506                             # DW_AT_decl_line
	.short	13288                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1100:0xc DW_TAG_member
	.short	754                             # DW_AT_name
	.long	12663                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	507                             # DW_AT_decl_line
	.short	13296                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x110c:0xc DW_TAG_member
	.short	755                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	508                             # DW_AT_decl_line
	.short	13304                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1118:0xc DW_TAG_member
	.short	756                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	509                             # DW_AT_decl_line
	.short	13306                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1124:0xc DW_TAG_member
	.short	757                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	512                             # DW_AT_decl_line
	.short	13308                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1130:0xc DW_TAG_member
	.short	758                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	513                             # DW_AT_decl_line
	.short	13312                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x113c:0xc DW_TAG_member
	.short	759                             # DW_AT_name
	.long	12668                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	514                             # DW_AT_decl_line
	.short	13320                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1148:0xc DW_TAG_member
	.short	760                             # DW_AT_name
	.long	12668                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	515                             # DW_AT_decl_line
	.short	13328                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1154:0xc DW_TAG_member
	.short	761                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	520                             # DW_AT_decl_line
	.short	13336                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1160:0xc DW_TAG_member
	.short	762                             # DW_AT_name
	.long	12673                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.short	13340                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x116c:0xc DW_TAG_member
	.short	763                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	523                             # DW_AT_decl_line
	.short	13408                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1178:0xc DW_TAG_member
	.short	764                             # DW_AT_name
	.long	12697                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	524                             # DW_AT_decl_line
	.short	13416                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1184:0xc DW_TAG_member
	.short	765                             # DW_AT_name
	.long	12728                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	525                             # DW_AT_decl_line
	.short	13424                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1190:0xc DW_TAG_member
	.short	766                             # DW_AT_name
	.long	12749                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.short	13432                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x119c:0xc DW_TAG_member
	.short	767                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	527                             # DW_AT_decl_line
	.short	13440                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11a8:0xc DW_TAG_member
	.short	768                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
	.short	13448                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11b4:0xc DW_TAG_member
	.short	769                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.short	13456                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11c0:0xc DW_TAG_member
	.short	770                             # DW_AT_name
	.long	12770                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.short	13464                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11cc:0xc DW_TAG_member
	.short	771                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.short	13472                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11d8:0xc DW_TAG_member
	.short	772                             # DW_AT_name
	.long	11934                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	532                             # DW_AT_decl_line
	.short	13480                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11e4:0xc DW_TAG_member
	.short	773                             # DW_AT_name
	.long	11934                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	533                             # DW_AT_decl_line
	.short	13488                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11f0:0xc DW_TAG_member
	.short	774                             # DW_AT_name
	.long	12685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	534                             # DW_AT_decl_line
	.short	13496                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x11fc:0xc DW_TAG_member
	.short	546                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	535                             # DW_AT_decl_line
	.short	13504                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1208:0xc DW_TAG_member
	.short	424                             # DW_AT_name
	.long	2506                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.short	13512                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1214:0xc DW_TAG_member
	.short	539                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	537                             # DW_AT_decl_line
	.short	13520                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1220:0xc DW_TAG_member
	.short	420                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.short	13528                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x122c:0xc DW_TAG_member
	.short	417                             # DW_AT_name
	.long	10191                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	539                             # DW_AT_decl_line
	.short	13536                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1238:0xc DW_TAG_member
	.short	412                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
	.short	13544                           # DW_AT_data_member_location
	.byte	53                              # Abbrev [53] 0x1244:0xc DW_TAG_member
	.short	775                             # DW_AT_name
	.long	12782                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.short	13552                           # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x1251:0x5 DW_TAG_pointer_type
	.long	4694                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0x1256:0x9c5 DW_TAG_structure_type
	.short	624                             # DW_AT_name
	.long	856880                          # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	566                             # DW_AT_decl_line
	.byte	55                              # Abbrev [55] 0x1260:0xa DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	7195                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	568                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x126a:0xa DW_TAG_member
	.byte	243                             # DW_AT_name
	.long	7936                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	569                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x1274:0xb DW_TAG_member
	.short	277                             # DW_AT_name
	.long	8360                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x127f:0xb DW_TAG_member
	.short	352                             # DW_AT_name
	.long	9327                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	571                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x128a:0xe DW_TAG_member
	.short	353                             # DW_AT_name
	.long	9339                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	132120                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1298:0xe DW_TAG_member
	.short	354                             # DW_AT_name
	.long	9352                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	575                             # DW_AT_decl_line
	.long	699416                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12a6:0xe DW_TAG_member
	.short	380                             # DW_AT_name
	.long	9892                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	577                             # DW_AT_decl_line
	.long	699424                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12b4:0xe DW_TAG_member
	.short	381                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	578                             # DW_AT_decl_line
	.long	848672                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12c2:0xe DW_TAG_member
	.short	382                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
	.long	848676                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12d0:0xe DW_TAG_member
	.short	383                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	580                             # DW_AT_decl_line
	.long	848680                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12de:0xe DW_TAG_member
	.short	384                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	581                             # DW_AT_decl_line
	.long	848684                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12ec:0xe DW_TAG_member
	.short	385                             # DW_AT_name
	.long	9904                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	848688                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x12fa:0xe DW_TAG_member
	.short	387                             # DW_AT_name
	.long	9912                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	586                             # DW_AT_decl_line
	.long	848696                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1308:0xe DW_TAG_member
	.short	397                             # DW_AT_name
	.long	10063                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	587                             # DW_AT_decl_line
	.long	848704                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1316:0xe DW_TAG_member
	.short	405                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	588                             # DW_AT_decl_line
	.long	848712                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1324:0xe DW_TAG_member
	.short	406                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	591                             # DW_AT_decl_line
	.long	848716                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1332:0xe DW_TAG_member
	.short	407                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
	.long	848720                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1340:0xe DW_TAG_member
	.short	408                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	593                             # DW_AT_decl_line
	.long	848724                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x134e:0xe DW_TAG_member
	.short	409                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	594                             # DW_AT_decl_line
	.long	848728                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x135c:0xe DW_TAG_member
	.short	410                             # DW_AT_name
	.long	10159                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
	.long	848736                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x136a:0xe DW_TAG_member
	.short	412                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	596                             # DW_AT_decl_line
	.long	848744                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1378:0xe DW_TAG_member
	.short	413                             # DW_AT_name
	.long	10179                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	597                             # DW_AT_decl_line
	.long	848752                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1386:0xe DW_TAG_member
	.short	414                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	601                             # DW_AT_decl_line
	.long	848776                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1394:0xd DW_TAG_member
	.byte	187                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	602                             # DW_AT_decl_line
	.long	848780                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x13a1:0xd DW_TAG_member
	.byte	188                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	603                             # DW_AT_decl_line
	.long	848784                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13ae:0xe DW_TAG_member
	.short	415                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	604                             # DW_AT_decl_line
	.long	848788                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13bc:0xe DW_TAG_member
	.short	416                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	605                             # DW_AT_decl_line
	.long	848792                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13ca:0xe DW_TAG_member
	.short	417                             # DW_AT_name
	.long	10191                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	848800                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13d8:0xe DW_TAG_member
	.short	418                             # DW_AT_name
	.long	10196                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	608                             # DW_AT_decl_line
	.long	848808                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13e6:0xe DW_TAG_member
	.short	419                             # DW_AT_name
	.long	10208                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	609                             # DW_AT_decl_line
	.long	848832                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x13f4:0xe DW_TAG_member
	.short	420                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	610                             # DW_AT_decl_line
	.long	848840                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1402:0xe DW_TAG_member
	.short	421                             # DW_AT_name
	.long	10218                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	611                             # DW_AT_decl_line
	.long	848848                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1410:0xe DW_TAG_member
	.short	422                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	613                             # DW_AT_decl_line
	.long	848872                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x141e:0xd DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	614                             # DW_AT_decl_line
	.long	848876                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x142b:0xe DW_TAG_member
	.short	423                             # DW_AT_name
	.long	10164                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
	.long	848880                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1439:0xe DW_TAG_member
	.short	424                             # DW_AT_name
	.long	2506                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	618                             # DW_AT_decl_line
	.long	848888                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1447:0xe DW_TAG_member
	.short	425                             # DW_AT_name
	.long	10230                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	619                             # DW_AT_decl_line
	.long	848896                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1455:0xe DW_TAG_member
	.short	426                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	621                             # DW_AT_decl_line
	.long	848920                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1463:0xe DW_TAG_member
	.short	427                             # DW_AT_name
	.long	10242                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	626                             # DW_AT_decl_line
	.long	848928                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1471:0xe DW_TAG_member
	.short	429                             # DW_AT_name
	.long	10242                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	627                             # DW_AT_decl_line
	.long	848936                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x147f:0xe DW_TAG_member
	.short	430                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	629                             # DW_AT_decl_line
	.long	848944                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x148d:0xe DW_TAG_member
	.short	431                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	630                             # DW_AT_decl_line
	.long	848948                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x149b:0xe DW_TAG_member
	.short	432                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	634                             # DW_AT_decl_line
	.long	848952                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14a9:0xe DW_TAG_member
	.short	433                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	848956                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14b7:0xe DW_TAG_member
	.short	434                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
	.long	848960                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14c5:0xe DW_TAG_member
	.short	435                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
	.long	848964                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14d3:0xe DW_TAG_member
	.short	436                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
	.long	848968                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14e1:0xe DW_TAG_member
	.short	437                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	639                             # DW_AT_decl_line
	.long	848972                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14ef:0xe DW_TAG_member
	.short	438                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	639                             # DW_AT_decl_line
	.long	848976                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x14fd:0xe DW_TAG_member
	.short	439                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
	.long	848980                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x150b:0xe DW_TAG_member
	.short	440                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	641                             # DW_AT_decl_line
	.long	848984                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1519:0xe DW_TAG_member
	.short	441                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	642                             # DW_AT_decl_line
	.long	848988                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1527:0xe DW_TAG_member
	.short	442                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	645                             # DW_AT_decl_line
	.long	848992                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1535:0xd DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	647                             # DW_AT_decl_line
	.long	848996                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1542:0xe DW_TAG_member
	.short	443                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	648                             # DW_AT_decl_line
	.long	849000                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1550:0xe DW_TAG_member
	.short	444                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	649                             # DW_AT_decl_line
	.long	849004                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x155e:0xe DW_TAG_member
	.short	445                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	650                             # DW_AT_decl_line
	.long	849008                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x156c:0xd DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	651                             # DW_AT_decl_line
	.long	849012                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1579:0xe DW_TAG_member
	.short	446                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
	.long	849016                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1587:0xe DW_TAG_member
	.short	447                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	653                             # DW_AT_decl_line
	.long	849020                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1595:0xd DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	655                             # DW_AT_decl_line
	.long	849024                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15a2:0xe DW_TAG_member
	.short	448                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	657                             # DW_AT_decl_line
	.long	849028                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15b0:0xe DW_TAG_member
	.short	449                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	658                             # DW_AT_decl_line
	.long	849032                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15be:0xe DW_TAG_member
	.short	450                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.long	849036                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15cc:0xe DW_TAG_member
	.short	451                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	662                             # DW_AT_decl_line
	.long	849040                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15da:0xe DW_TAG_member
	.short	452                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	663                             # DW_AT_decl_line
	.long	849042                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15e8:0xe DW_TAG_member
	.short	453                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	664                             # DW_AT_decl_line
	.long	849044                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x15f6:0xe DW_TAG_member
	.short	454                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	665                             # DW_AT_decl_line
	.long	849052                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1604:0xe DW_TAG_member
	.short	455                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	666                             # DW_AT_decl_line
	.long	849056                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1612:0xe DW_TAG_member
	.short	456                             # DW_AT_name
	.long	10250                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	667                             # DW_AT_decl_line
	.long	849060                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1620:0xe DW_TAG_member
	.short	457                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	668                             # DW_AT_decl_line
	.long	849072                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x162e:0xe DW_TAG_member
	.short	278                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	670                             # DW_AT_decl_line
	.long	849084                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x163c:0xd DW_TAG_member
	.byte	181                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	671                             # DW_AT_decl_line
	.long	849088                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1649:0xe DW_TAG_member
	.short	458                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	672                             # DW_AT_decl_line
	.long	849092                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1657:0xe DW_TAG_member
	.short	459                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	673                             # DW_AT_decl_line
	.long	849096                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1665:0xe DW_TAG_member
	.short	460                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	674                             # DW_AT_decl_line
	.long	849100                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1673:0xe DW_TAG_member
	.short	461                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	675                             # DW_AT_decl_line
	.long	849104                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1681:0xe DW_TAG_member
	.short	462                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	676                             # DW_AT_decl_line
	.long	849108                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x168f:0xe DW_TAG_member
	.short	463                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	677                             # DW_AT_decl_line
	.long	849112                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x169d:0xe DW_TAG_member
	.short	464                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	678                             # DW_AT_decl_line
	.long	849116                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16ab:0xe DW_TAG_member
	.short	465                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	679                             # DW_AT_decl_line
	.long	849120                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16b9:0xe DW_TAG_member
	.short	466                             # DW_AT_name
	.long	10262                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	680                             # DW_AT_decl_line
	.long	849124                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16c7:0xe DW_TAG_member
	.short	467                             # DW_AT_name
	.long	10262                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	681                             # DW_AT_decl_line
	.long	849148                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16d5:0xe DW_TAG_member
	.short	468                             # DW_AT_name
	.long	10262                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	682                             # DW_AT_decl_line
	.long	849172                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16e3:0xe DW_TAG_member
	.short	469                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	683                             # DW_AT_decl_line
	.long	849196                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16f1:0xe DW_TAG_member
	.short	470                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	684                             # DW_AT_decl_line
	.long	849200                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x16ff:0xe DW_TAG_member
	.short	471                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	685                             # DW_AT_decl_line
	.long	849204                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x170d:0xe DW_TAG_member
	.short	472                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	686                             # DW_AT_decl_line
	.long	849208                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x171b:0xe DW_TAG_member
	.short	473                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	687                             # DW_AT_decl_line
	.long	849212                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1729:0xe DW_TAG_member
	.short	474                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	689                             # DW_AT_decl_line
	.long	849216                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1737:0xe DW_TAG_member
	.short	475                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	692                             # DW_AT_decl_line
	.long	849220                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1745:0xe DW_TAG_member
	.short	476                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	693                             # DW_AT_decl_line
	.long	849224                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1753:0xe DW_TAG_member
	.short	477                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	700                             # DW_AT_decl_line
	.long	849228                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1761:0xd DW_TAG_member
	.byte	235                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	701                             # DW_AT_decl_line
	.long	849232                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x176e:0xd DW_TAG_member
	.byte	236                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	702                             # DW_AT_decl_line
	.long	849236                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x177b:0xd DW_TAG_member
	.byte	234                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	703                             # DW_AT_decl_line
	.long	849240                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1788:0xe DW_TAG_member
	.short	478                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	704                             # DW_AT_decl_line
	.long	849244                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1796:0xe DW_TAG_member
	.short	479                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	705                             # DW_AT_decl_line
	.long	849248                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17a4:0xe DW_TAG_member
	.short	480                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	706                             # DW_AT_decl_line
	.long	849252                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17b2:0xe DW_TAG_member
	.short	481                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	707                             # DW_AT_decl_line
	.long	849256                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17c0:0xe DW_TAG_member
	.short	482                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	710                             # DW_AT_decl_line
	.long	849260                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17ce:0xe DW_TAG_member
	.short	483                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	711                             # DW_AT_decl_line
	.long	849264                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17dc:0xe DW_TAG_member
	.short	484                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	712                             # DW_AT_decl_line
	.long	849268                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17ea:0xe DW_TAG_member
	.short	485                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	713                             # DW_AT_decl_line
	.long	849272                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x17f8:0xe DW_TAG_member
	.short	486                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	714                             # DW_AT_decl_line
	.long	849276                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1806:0xd DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	716                             # DW_AT_decl_line
	.long	849280                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1813:0xd DW_TAG_member
	.byte	202                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	717                             # DW_AT_decl_line
	.long	849284                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1820:0xe DW_TAG_member
	.short	487                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	719                             # DW_AT_decl_line
	.long	849288                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x182e:0xe DW_TAG_member
	.short	488                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	720                             # DW_AT_decl_line
	.long	849296                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x183c:0xe DW_TAG_member
	.short	489                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	722                             # DW_AT_decl_line
	.long	849304                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x184a:0xe DW_TAG_member
	.short	501                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	723                             # DW_AT_decl_line
	.long	849624                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1858:0xe DW_TAG_member
	.short	502                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	724                             # DW_AT_decl_line
	.long	849944                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1866:0xe DW_TAG_member
	.short	503                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	725                             # DW_AT_decl_line
	.long	850264                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1874:0xe DW_TAG_member
	.short	504                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	728                             # DW_AT_decl_line
	.long	850584                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1882:0xe DW_TAG_member
	.short	505                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	729                             # DW_AT_decl_line
	.long	850904                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1890:0xe DW_TAG_member
	.short	506                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	730                             # DW_AT_decl_line
	.long	851224                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x189e:0xe DW_TAG_member
	.short	507                             # DW_AT_name
	.long	10280                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	731                             # DW_AT_decl_line
	.long	851544                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18ac:0xe DW_TAG_member
	.short	508                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	735                             # DW_AT_decl_line
	.long	851864                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18ba:0xe DW_TAG_member
	.short	509                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	737                             # DW_AT_decl_line
	.long	851868                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18c8:0xe DW_TAG_member
	.short	510                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	738                             # DW_AT_decl_line
	.long	851872                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18d6:0xe DW_TAG_member
	.short	511                             # DW_AT_name
	.long	10434                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	741                             # DW_AT_decl_line
	.long	851880                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18e4:0xe DW_TAG_member
	.short	516                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	744                             # DW_AT_decl_line
	.long	851888                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x18f2:0xe DW_TAG_member
	.short	517                             # DW_AT_name
	.long	10466                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	746                             # DW_AT_decl_line
	.long	851892                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1900:0xe DW_TAG_member
	.short	518                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	748                             # DW_AT_decl_line
	.long	855988                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x190e:0xe DW_TAG_member
	.short	519                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	751                             # DW_AT_decl_line
	.long	855992                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x191c:0xe DW_TAG_member
	.short	520                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	752                             # DW_AT_decl_line
	.long	855996                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x192a:0xe DW_TAG_member
	.short	521                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	755                             # DW_AT_decl_line
	.long	856000                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1938:0xe DW_TAG_member
	.short	522                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	756                             # DW_AT_decl_line
	.long	856004                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1946:0xe DW_TAG_member
	.short	523                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	758                             # DW_AT_decl_line
	.long	856008                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1954:0xe DW_TAG_member
	.short	524                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	759                             # DW_AT_decl_line
	.long	856012                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1962:0xe DW_TAG_member
	.short	525                             # DW_AT_name
	.long	1975                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	762                             # DW_AT_decl_line
	.long	856016                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1970:0xe DW_TAG_member
	.short	526                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	763                             # DW_AT_decl_line
	.long	856024                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x197e:0xe DW_TAG_member
	.short	527                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	765                             # DW_AT_decl_line
	.long	856032                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x198c:0xe DW_TAG_member
	.short	528                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	766                             # DW_AT_decl_line
	.long	856040                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x199a:0xe DW_TAG_member
	.short	529                             # DW_AT_name
	.long	10479                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	768                             # DW_AT_decl_line
	.long	856048                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19a8:0xe DW_TAG_member
	.short	538                             # DW_AT_name
	.long	10673                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	769                             # DW_AT_decl_line
	.long	856056                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19b6:0xe DW_TAG_member
	.short	539                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	771                             # DW_AT_decl_line
	.long	856456                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19c4:0xe DW_TAG_member
	.short	540                             # DW_AT_name
	.long	10685                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	772                             # DW_AT_decl_line
	.long	856464                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19d2:0xe DW_TAG_member
	.short	541                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	773                             # DW_AT_decl_line
	.long	856488                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19e0:0xe DW_TAG_member
	.short	542                             # DW_AT_name
	.long	10697                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	776                             # DW_AT_decl_line
	.long	856496                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19ee:0xe DW_TAG_member
	.short	544                             # DW_AT_name
	.long	10705                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	777                             # DW_AT_decl_line
	.long	856504                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x19fc:0xe DW_TAG_member
	.short	546                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	779                             # DW_AT_decl_line
	.long	856512                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a0a:0xe DW_TAG_member
	.short	547                             # DW_AT_name
	.long	4689                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	780                             # DW_AT_decl_line
	.long	856520                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a18:0xe DW_TAG_member
	.short	548                             # DW_AT_name
	.long	10713                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	781                             # DW_AT_decl_line
	.long	856528                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a26:0xe DW_TAG_member
	.short	549                             # DW_AT_name
	.long	10725                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	783                             # DW_AT_decl_line
	.long	856608                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a34:0xe DW_TAG_member
	.short	551                             # DW_AT_name
	.long	10733                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	784                             # DW_AT_decl_line
	.long	856616                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a42:0xe DW_TAG_member
	.short	553                             # DW_AT_name
	.long	10479                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	786                             # DW_AT_decl_line
	.long	856624                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a50:0xe DW_TAG_member
	.short	554                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	788                             # DW_AT_decl_line
	.long	856632                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a5e:0xe DW_TAG_member
	.short	555                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	789                             # DW_AT_decl_line
	.long	856640                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a6c:0xe DW_TAG_member
	.short	556                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	790                             # DW_AT_decl_line
	.long	856644                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a7a:0xe DW_TAG_member
	.short	557                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	792                             # DW_AT_decl_line
	.long	856648                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a88:0xe DW_TAG_member
	.short	558                             # DW_AT_name
	.long	10741                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	794                             # DW_AT_decl_line
	.long	856656                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1a96:0xe DW_TAG_member
	.short	574                             # DW_AT_name
	.long	10741                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	795                             # DW_AT_decl_line
	.long	856664                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1aa4:0xe DW_TAG_member
	.short	575                             # DW_AT_name
	.long	10953                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	796                             # DW_AT_decl_line
	.long	856672                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1ab2:0xe DW_TAG_member
	.short	576                             # DW_AT_name
	.long	10965                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	800                             # DW_AT_decl_line
	.long	856688                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1ac0:0xe DW_TAG_member
	.short	577                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	802                             # DW_AT_decl_line
	.long	856704                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1ace:0xe DW_TAG_member
	.short	578                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	803                             # DW_AT_decl_line
	.long	856712                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1adc:0xe DW_TAG_member
	.short	579                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	804                             # DW_AT_decl_line
	.long	856720                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1aea:0xe DW_TAG_member
	.short	580                             # DW_AT_name
	.long	10977                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	807                             # DW_AT_decl_line
	.long	856728                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1af8:0xe DW_TAG_member
	.short	582                             # DW_AT_name
	.long	10985                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	810                             # DW_AT_decl_line
	.long	856736                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b06:0xe DW_TAG_member
	.short	583                             # DW_AT_name
	.long	11037                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	811                             # DW_AT_decl_line
	.long	856744                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b14:0xe DW_TAG_member
	.short	590                             # DW_AT_name
	.long	11148                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	812                             # DW_AT_decl_line
	.long	856752                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b22:0xe DW_TAG_member
	.short	591                             # DW_AT_name
	.long	11170                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	813                             # DW_AT_decl_line
	.long	856760                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b30:0xe DW_TAG_member
	.short	592                             # DW_AT_name
	.long	11170                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	814                             # DW_AT_decl_line
	.long	856768                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b3e:0xe DW_TAG_member
	.short	593                             # DW_AT_name
	.long	11202                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	815                             # DW_AT_decl_line
	.long	856776                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b4c:0xe DW_TAG_member
	.short	595                             # DW_AT_name
	.long	11202                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	816                             # DW_AT_decl_line
	.long	856784                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b5a:0xe DW_TAG_member
	.short	596                             # DW_AT_name
	.long	11248                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	817                             # DW_AT_decl_line
	.long	856792                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b68:0xe DW_TAG_member
	.short	597                             # DW_AT_name
	.long	11248                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	818                             # DW_AT_decl_line
	.long	856800                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b76:0xe DW_TAG_member
	.short	598                             # DW_AT_name
	.long	11285                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	819                             # DW_AT_decl_line
	.long	856808                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b84:0xe DW_TAG_member
	.short	599                             # DW_AT_name
	.long	11342                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	821                             # DW_AT_decl_line
	.long	856816                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1b92:0xe DW_TAG_member
	.short	617                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	822                             # DW_AT_decl_line
	.long	856824                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1ba0:0xe DW_TAG_member
	.short	618                             # DW_AT_name
	.long	11535                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	823                             # DW_AT_decl_line
	.long	856832                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1bae:0xd DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	824                             # DW_AT_decl_line
	.long	856840                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1bbb:0xd DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	825                             # DW_AT_decl_line
	.long	856844                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1bc8:0xd DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	826                             # DW_AT_decl_line
	.long	856848                          # DW_AT_data_member_location
	.byte	60                              # Abbrev [60] 0x1bd5:0xd DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	827                             # DW_AT_decl_line
	.long	856852                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1be2:0xe DW_TAG_member
	.short	620                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	829                             # DW_AT_decl_line
	.long	856856                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1bf0:0xe DW_TAG_member
	.short	621                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	830                             # DW_AT_decl_line
	.long	856860                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1bfe:0xe DW_TAG_member
	.short	622                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	831                             # DW_AT_decl_line
	.long	856864                          # DW_AT_data_member_location
	.byte	59                              # Abbrev [59] 0x1c0c:0xe DW_TAG_member
	.short	623                             # DW_AT_name
	.long	7936                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	835                             # DW_AT_decl_line
	.long	856872                          # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x1c1b:0x5 DW_TAG_pointer_type
	.long	7200                            # DW_AT_type
	.byte	61                              # Abbrev [61] 0x1c20:0x124 DW_TAG_structure_type
	.byte	242                             # DW_AT_name
	.short	4016                            # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	850                             # DW_AT_decl_line
	.byte	55                              # Abbrev [55] 0x1c27:0xa DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	852                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x1c31:0xa DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	853                             # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c3b:0xb DW_TAG_member
	.byte	173                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	854                             # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c46:0xb DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	856                             # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c51:0xb DW_TAG_member
	.byte	175                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	857                             # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c5c:0xb DW_TAG_member
	.byte	176                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	858                             # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c67:0xb DW_TAG_member
	.byte	177                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	859                             # DW_AT_decl_line
	.short	780                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c72:0xb DW_TAG_member
	.byte	178                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	860                             # DW_AT_decl_line
	.short	784                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c7d:0xb DW_TAG_member
	.byte	179                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	861                             # DW_AT_decl_line
	.short	788                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c88:0xb DW_TAG_member
	.byte	180                             # DW_AT_name
	.long	7504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	864                             # DW_AT_decl_line
	.short	792                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c93:0xb DW_TAG_member
	.byte	206                             # DW_AT_name
	.long	7504                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	865                             # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1c9e:0xb DW_TAG_member
	.byte	207                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	867                             # DW_AT_decl_line
	.short	1064                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1ca9:0xb DW_TAG_member
	.byte	208                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	868                             # DW_AT_decl_line
	.short	1068                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1cb4:0xb DW_TAG_member
	.byte	209                             # DW_AT_name
	.long	7730                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	869                             # DW_AT_decl_line
	.short	1072                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1cbf:0xb DW_TAG_member
	.byte	231                             # DW_AT_name
	.long	7730                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	870                             # DW_AT_decl_line
	.short	2040                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1cca:0xb DW_TAG_member
	.byte	232                             # DW_AT_name
	.long	7730                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	871                             # DW_AT_decl_line
	.short	3008                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1cd5:0xb DW_TAG_member
	.byte	233                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	873                             # DW_AT_decl_line
	.short	3976                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1ce0:0xb DW_TAG_member
	.byte	234                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	884                             # DW_AT_decl_line
	.short	3980                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1ceb:0xb DW_TAG_member
	.byte	235                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	885                             # DW_AT_decl_line
	.short	3984                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1cf6:0xb DW_TAG_member
	.byte	236                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	886                             # DW_AT_decl_line
	.short	3988                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d01:0xb DW_TAG_member
	.byte	221                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	890                             # DW_AT_decl_line
	.short	3992                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d0c:0xb DW_TAG_member
	.byte	237                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	893                             # DW_AT_decl_line
	.short	3996                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d17:0xb DW_TAG_member
	.byte	238                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	894                             # DW_AT_decl_line
	.short	4000                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d22:0xb DW_TAG_member
	.byte	239                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	895                             # DW_AT_decl_line
	.short	4004                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d2d:0xb DW_TAG_member
	.byte	240                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	897                             # DW_AT_decl_line
	.short	4008                            # DW_AT_data_member_location
	.byte	57                              # Abbrev [57] 0x1d38:0xb DW_TAG_member
	.byte	241                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	899                             # DW_AT_decl_line
	.short	4012                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1d44:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1d49:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	255                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1d50:0x8 DW_TAG_typedef
	.long	7512                            # DW_AT_type
	.byte	205                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x1d58:0xba DW_TAG_structure_type
	.byte	204                             # DW_AT_name
	.byte	136                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1d5d:0x9 DW_TAG_member
	.byte	181                             # DW_AT_name
	.long	7698                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d66:0x9 DW_TAG_member
	.byte	183                             # DW_AT_name
	.long	7706                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d6f:0x9 DW_TAG_member
	.byte	185                             # DW_AT_name
	.long	7714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d78:0x9 DW_TAG_member
	.byte	187                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d81:0x9 DW_TAG_member
	.byte	188                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d8a:0x9 DW_TAG_member
	.byte	189                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d93:0x9 DW_TAG_member
	.byte	190                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d9c:0x9 DW_TAG_member
	.byte	191                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1da5:0x9 DW_TAG_member
	.byte	192                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dae:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1db7:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dc0:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dc9:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dd2:0x9 DW_TAG_member
	.byte	197                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1ddb:0x9 DW_TAG_member
	.byte	198                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1de4:0x9 DW_TAG_member
	.byte	199                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1ded:0x9 DW_TAG_member
	.byte	200                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1df6:0x9 DW_TAG_member
	.byte	201                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1dff:0x9 DW_TAG_member
	.byte	202                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1e08:0x9 DW_TAG_member
	.byte	203                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1e12:0x8 DW_TAG_typedef
	.long	179                             # DW_AT_type
	.byte	182                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1e1a:0x8 DW_TAG_typedef
	.long	203                             # DW_AT_type
	.byte	184                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1e22:0x4 DW_TAG_base_type
	.byte	186                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x1e26:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1e2b:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1e32:0x8 DW_TAG_typedef
	.long	7738                            # DW_AT_type
	.byte	230                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	42                              # Abbrev [42] 0x1e3a:0xb9 DW_TAG_structure_type
	.byte	229                             # DW_AT_name
	.short	968                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1e40:0x9 DW_TAG_member
	.byte	210                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1e49:0x9 DW_TAG_member
	.byte	211                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e52:0xa DW_TAG_member
	.byte	212                             # DW_AT_name
	.long	7492                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e5c:0xa DW_TAG_member
	.byte	213                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e66:0xa DW_TAG_member
	.byte	214                             # DW_AT_name
	.long	7923                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e70:0xa DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	7504                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e7a:0xa DW_TAG_member
	.byte	217                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e84:0xa DW_TAG_member
	.byte	218                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e8e:0xa DW_TAG_member
	.byte	219                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1e98:0xa DW_TAG_member
	.byte	220                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1ea2:0xa DW_TAG_member
	.byte	221                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1eac:0xa DW_TAG_member
	.byte	222                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1eb6:0xa DW_TAG_member
	.byte	223                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1ec0:0xa DW_TAG_member
	.byte	224                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1eca:0xa DW_TAG_member
	.byte	225                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1ed4:0xa DW_TAG_member
	.byte	226                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.short	948                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1ede:0xa DW_TAG_member
	.byte	227                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.short	952                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1ee8:0xa DW_TAG_member
	.byte	228                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.short	960                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1ef3:0x8 DW_TAG_typedef
	.long	224                             # DW_AT_type
	.byte	215                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x1efb:0x5 DW_TAG_pointer_type
	.long	68                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x1f00:0x5 DW_TAG_pointer_type
	.long	7941                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x1f05:0x9 DW_TAG_typedef
	.long	7950                            # DW_AT_type
	.short	276                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x1f0e:0x152 DW_TAG_structure_type
	.short	2216                            # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1f13:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f1c:0x9 DW_TAG_member
	.byte	245                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f25:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f2e:0x9 DW_TAG_member
	.byte	247                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f37:0x9 DW_TAG_member
	.byte	248                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f40:0x9 DW_TAG_member
	.byte	249                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f49:0x9 DW_TAG_member
	.byte	250                             # DW_AT_name
	.long	8288                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f52:0x9 DW_TAG_member
	.byte	251                             # DW_AT_name
	.long	8300                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1f5b:0xa DW_TAG_member
	.byte	252                             # DW_AT_name
	.long	8318                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.short	456                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1f65:0xa DW_TAG_member
	.byte	253                             # DW_AT_name
	.long	8336                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.short	1992                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1f6f:0xa DW_TAG_member
	.byte	254                             # DW_AT_name
	.long	8336                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.short	2016                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x1f79:0xa DW_TAG_member
	.byte	255                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.short	2040                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1f83:0xb DW_TAG_member
	.short	256                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.short	2044                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1f8e:0xb DW_TAG_member
	.short	257                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.short	2048                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1f99:0xb DW_TAG_member
	.short	258                             # DW_AT_name
	.long	8348                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.short	2052                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fa4:0xb DW_TAG_member
	.short	259                             # DW_AT_name
	.long	8348                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.short	2084                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1faf:0xb DW_TAG_member
	.short	260                             # DW_AT_name
	.long	8348                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.short	2116                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fba:0xb DW_TAG_member
	.short	261                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.short	2148                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fc5:0xb DW_TAG_member
	.short	262                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.short	2152                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fd0:0xb DW_TAG_member
	.short	263                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.short	2156                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fdb:0xb DW_TAG_member
	.short	264                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.short	2160                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1fe6:0xb DW_TAG_member
	.short	265                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.short	2168                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1ff1:0xb DW_TAG_member
	.short	266                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.short	2172                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x1ffc:0xb DW_TAG_member
	.short	267                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.short	2176                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2007:0xb DW_TAG_member
	.short	268                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.short	2180                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2012:0xb DW_TAG_member
	.short	269                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.short	2184                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x201d:0xb DW_TAG_member
	.short	270                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.short	2188                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2028:0xb DW_TAG_member
	.short	271                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.short	2192                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2033:0xb DW_TAG_member
	.short	272                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.short	2196                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x203e:0xb DW_TAG_member
	.short	273                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.short	2200                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2049:0xb DW_TAG_member
	.short	274                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.short	2204                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2054:0xb DW_TAG_member
	.short	275                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.short	2208                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2060:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2065:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x206c:0x12 DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2071:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2077:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x207e:0x12 DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2083:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2089:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2090:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2095:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x209c:0xc DW_TAG_array_type
	.long	269                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x20a1:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x20a8:0x5 DW_TAG_pointer_type
	.long	8365                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x20ad:0x9 DW_TAG_typedef
	.long	8374                            # DW_AT_type
	.short	351                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x20b6:0x1b9 DW_TAG_structure_type
	.short	4128                            # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x20bb:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20c4:0xa DW_TAG_member
	.short	278                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20ce:0xa DW_TAG_member
	.short	279                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20d8:0xa DW_TAG_member
	.short	280                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20e2:0xa DW_TAG_member
	.short	281                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20ec:0xa DW_TAG_member
	.short	282                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x20f6:0xa DW_TAG_member
	.short	283                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2100:0xa DW_TAG_member
	.short	284                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x210a:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2113:0x9 DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x211c:0xa DW_TAG_member
	.short	285                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2126:0xa DW_TAG_member
	.short	286                             # DW_AT_name
	.long	8288                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2130:0x9 DW_TAG_member
	.byte	251                             # DW_AT_name
	.long	8300                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2139:0xa DW_TAG_member
	.byte	252                             # DW_AT_name
	.long	8318                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.short	476                             # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2143:0xa DW_TAG_member
	.byte	253                             # DW_AT_name
	.long	8336                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.short	2012                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x214d:0xa DW_TAG_member
	.byte	254                             # DW_AT_name
	.long	8336                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.short	2036                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2157:0xb DW_TAG_member
	.short	287                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.short	2060                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2162:0xb DW_TAG_member
	.short	288                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.short	2064                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x216d:0xb DW_TAG_member
	.short	289                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.short	2068                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2178:0xb DW_TAG_member
	.short	290                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.short	2072                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2183:0xb DW_TAG_member
	.short	291                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.short	2076                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x218e:0xb DW_TAG_member
	.short	292                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.short	2080                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2199:0xb DW_TAG_member
	.short	293                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.short	2084                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21a4:0xb DW_TAG_member
	.short	294                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.short	2088                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21af:0xb DW_TAG_member
	.short	295                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.short	2092                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21ba:0xb DW_TAG_member
	.short	296                             # DW_AT_name
	.long	8815                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.short	2096                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21c5:0xb DW_TAG_member
	.short	297                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.short	3120                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21d0:0xb DW_TAG_member
	.short	298                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.short	3124                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21db:0xb DW_TAG_member
	.short	299                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.short	3128                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21e6:0xb DW_TAG_member
	.short	300                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.short	3132                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x21f1:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.short	3136                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x21fb:0xb DW_TAG_member
	.short	301                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.short	3140                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2206:0xb DW_TAG_member
	.short	302                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.short	3144                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2211:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.short	3148                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x221b:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.short	3152                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2225:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.short	3156                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x222f:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.short	3160                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2239:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.short	3164                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2243:0xb DW_TAG_member
	.short	303                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.short	3168                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x224e:0xb DW_TAG_member
	.short	304                             # DW_AT_name
	.long	8828                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.short	3172                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2259:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.short	4120                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2263:0xb DW_TAG_member
	.short	349                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.short	4124                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x226f:0xd DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	64                              # Abbrev [64] 0x2274:0x7 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x227c:0x9 DW_TAG_typedef
	.long	8837                            # DW_AT_type
	.short	350                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x2285:0x166 DW_TAG_structure_type
	.short	948                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x228a:0xa DW_TAG_member
	.short	305                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2294:0xa DW_TAG_member
	.short	306                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x229e:0xa DW_TAG_member
	.short	307                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22a8:0xa DW_TAG_member
	.short	308                             # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	10                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22b2:0xa DW_TAG_member
	.short	309                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22bc:0xa DW_TAG_member
	.short	310                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22c6:0xa DW_TAG_member
	.short	311                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22d0:0xa DW_TAG_member
	.short	312                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22da:0xa DW_TAG_member
	.short	313                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22e4:0xa DW_TAG_member
	.short	314                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22ee:0xa DW_TAG_member
	.short	315                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x22f8:0xa DW_TAG_member
	.short	316                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2302:0xa DW_TAG_member
	.short	317                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x230c:0xa DW_TAG_member
	.short	318                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2316:0xa DW_TAG_member
	.short	319                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2320:0xa DW_TAG_member
	.short	320                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x232a:0xa DW_TAG_member
	.short	321                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2334:0xa DW_TAG_member
	.short	322                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x233e:0xa DW_TAG_member
	.short	323                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2348:0xa DW_TAG_member
	.short	324                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2352:0xa DW_TAG_member
	.short	325                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x235c:0xa DW_TAG_member
	.short	326                             # DW_AT_name
	.long	9195                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2366:0xb DW_TAG_member
	.short	338                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.short	492                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2371:0xb DW_TAG_member
	.short	339                             # DW_AT_name
	.long	9195                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.short	496                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x237c:0xb DW_TAG_member
	.short	340                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.short	908                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2387:0xb DW_TAG_member
	.short	341                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2392:0xb DW_TAG_member
	.short	342                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x239d:0xb DW_TAG_member
	.short	343                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23a8:0xb DW_TAG_member
	.short	344                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23b3:0xb DW_TAG_member
	.short	345                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23be:0xb DW_TAG_member
	.short	346                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23c9:0xb DW_TAG_member
	.short	347                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23d4:0xb DW_TAG_member
	.short	348                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x23df:0xb DW_TAG_member
	.short	349                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x23eb:0x9 DW_TAG_typedef
	.long	9204                            # DW_AT_type
	.short	337                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x23f4:0x6f DW_TAG_structure_type
	.short	412                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x23f9:0xa DW_TAG_member
	.short	327                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2403:0xa DW_TAG_member
	.short	328                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x240d:0xa DW_TAG_member
	.short	329                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2417:0xa DW_TAG_member
	.short	330                             # DW_AT_name
	.long	9315                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2421:0xa DW_TAG_member
	.short	331                             # DW_AT_name
	.long	9315                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x242b:0xb DW_TAG_member
	.short	332                             # DW_AT_name
	.long	9315                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	268                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2436:0xb DW_TAG_member
	.short	333                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	396                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2441:0xb DW_TAG_member
	.short	334                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	400                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x244c:0xb DW_TAG_member
	.short	335                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	404                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2457:0xb DW_TAG_member
	.short	336                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	408                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2463:0xc DW_TAG_array_type
	.long	269                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2468:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x246f:0xc DW_TAG_array_type
	.long	8365                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2474:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x247b:0xd DW_TAG_array_type
	.long	7941                            # DW_AT_type
	.byte	64                              # Abbrev [64] 0x2480:0x7 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2488:0x5 DW_TAG_pointer_type
	.long	9357                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x248d:0xa DW_TAG_typedef
	.long	9367                            # DW_AT_type
	.short	379                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x2497:0xf5 DW_TAG_structure_type
	.short	4664                            # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x249c:0xa DW_TAG_member
	.short	355                             # DW_AT_name
	.long	8365                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24a6:0xb DW_TAG_member
	.short	356                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.short	4128                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24b1:0xb DW_TAG_member
	.short	357                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.short	4132                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x24bc:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.short	4136                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24c6:0xb DW_TAG_member
	.short	358                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.short	4144                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24d1:0xb DW_TAG_member
	.short	359                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.short	4152                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24dc:0xb DW_TAG_member
	.short	360                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.short	4160                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24e7:0xb DW_TAG_member
	.short	361                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.short	4168                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24f2:0xb DW_TAG_member
	.short	362                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.short	4176                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x24fd:0xb DW_TAG_member
	.short	363                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.short	4184                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2508:0xb DW_TAG_member
	.short	364                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.short	4192                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2513:0xb DW_TAG_member
	.short	365                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.short	4200                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x251e:0xb DW_TAG_member
	.short	366                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.short	4208                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2529:0xb DW_TAG_member
	.short	284                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.short	4216                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2534:0xb DW_TAG_member
	.short	367                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.short	4224                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x253f:0xb DW_TAG_member
	.short	368                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.short	4232                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x254a:0xb DW_TAG_member
	.short	369                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.short	4240                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2555:0xb DW_TAG_member
	.short	370                             # DW_AT_name
	.long	9617                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.short	4248                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2560:0xb DW_TAG_member
	.short	371                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.short	4256                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x256b:0xb DW_TAG_member
	.short	372                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.short	4264                            # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x2576:0xa DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.short	4268                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2580:0xb DW_TAG_member
	.short	373                             # DW_AT_name
	.long	9622                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.short	4272                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x258c:0x5 DW_TAG_pointer_type
	.long	7931                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2591:0x5 DW_TAG_pointer_type
	.long	9612                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2596:0x9 DW_TAG_typedef
	.long	9631                            # DW_AT_type
	.short	378                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0x259f:0xe8 DW_TAG_structure_type
	.short	377                             # DW_AT_name
	.short	392                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x25a6:0xa DW_TAG_member
	.short	374                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25b0:0xa DW_TAG_member
	.short	375                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25ba:0xa DW_TAG_member
	.short	376                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x25c4:0x9 DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	9612                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25cd:0xa DW_TAG_member
	.short	321                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25d7:0xa DW_TAG_member
	.short	322                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25e1:0xa DW_TAG_member
	.short	323                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25eb:0xa DW_TAG_member
	.short	324                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25f5:0xa DW_TAG_member
	.short	325                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x25ff:0xa DW_TAG_member
	.short	338                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2609:0xa DW_TAG_member
	.short	340                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2613:0xa DW_TAG_member
	.short	341                             # DW_AT_name
	.long	9863                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x261d:0xa DW_TAG_member
	.short	327                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2627:0xa DW_TAG_member
	.short	328                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	97                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2631:0xa DW_TAG_member
	.short	329                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	98                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x263b:0xa DW_TAG_member
	.short	330                             # DW_AT_name
	.long	9868                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2645:0xa DW_TAG_member
	.short	331                             # DW_AT_name
	.long	9868                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	228                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x264f:0xb DW_TAG_member
	.short	332                             # DW_AT_name
	.long	9880                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.short	356                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x265a:0xb DW_TAG_member
	.short	333                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.short	388                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2665:0xb DW_TAG_member
	.short	334                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.short	389                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2670:0xb DW_TAG_member
	.short	335                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.short	390                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x267b:0xb DW_TAG_member
	.short	336                             # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.short	391                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2687:0x5 DW_TAG_pointer_type
	.long	405                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x268c:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2691:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2698:0xc DW_TAG_array_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x269d:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x26a4:0xc DW_TAG_array_type
	.long	9357                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x26a9:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x26b0:0x5 DW_TAG_pointer_type
	.long	9909                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x26b5:0x3 DW_TAG_structure_type
	.short	386                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	40                              # Abbrev [40] 0x26b8:0x5 DW_TAG_pointer_type
	.long	9917                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x26bd:0x92 DW_TAG_structure_type
	.short	396                             # DW_AT_name
	.byte	52                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	902                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x26c4:0xb DW_TAG_member
	.short	388                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	904                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x26cf:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	905                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x26d9:0xb DW_TAG_member
	.short	389                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	906                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x26e4:0xb DW_TAG_member
	.short	390                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	907                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x26ef:0xb DW_TAG_member
	.short	391                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	908                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x26fa:0xb DW_TAG_member
	.short	392                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	909                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2705:0xb DW_TAG_member
	.short	393                             # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	910                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x2710:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	911                             # DW_AT_decl_line
	.byte	29                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x271a:0xb DW_TAG_member
	.short	394                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	912                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2725:0xb DW_TAG_member
	.short	395                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	913                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x2730:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	915                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x273a:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	916                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x2744:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	917                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x274f:0x5 DW_TAG_pointer_type
	.long	10068                           # DW_AT_type
	.byte	66                              # Abbrev [66] 0x2754:0x4a DW_TAG_structure_type
	.short	404                             # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	839                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x275b:0xb DW_TAG_member
	.short	398                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	841                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2766:0xb DW_TAG_member
	.short	397                             # DW_AT_name
	.long	10142                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	842                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2771:0xb DW_TAG_member
	.short	400                             # DW_AT_name
	.long	10142                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	843                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x277c:0xb DW_TAG_member
	.short	401                             # DW_AT_name
	.long	10142                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	844                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2787:0xb DW_TAG_member
	.short	402                             # DW_AT_name
	.long	10142                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	845                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2792:0xb DW_TAG_member
	.short	403                             # DW_AT_name
	.long	10142                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	846                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x279e:0xc DW_TAG_array_type
	.long	10154                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27a3:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x27aa:0x5 DW_TAG_base_type
	.short	399                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	40                              # Abbrev [40] 0x27af:0x5 DW_TAG_pointer_type
	.long	10164                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x27b4:0x5 DW_TAG_pointer_type
	.long	10169                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x27b9:0xa DW_TAG_typedef
	.long	3195                            # DW_AT_type
	.short	411                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	542                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x27c3:0xc DW_TAG_array_type
	.long	9863                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27c8:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x27cf:0x5 DW_TAG_pointer_type
	.long	2047                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x27d4:0xc DW_TAG_array_type
	.long	10191                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27d9:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x27e0:0x5 DW_TAG_pointer_type
	.long	10213                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x27e5:0x5 DW_TAG_pointer_type
	.long	10191                           # DW_AT_type
	.byte	11                              # Abbrev [11] 0x27ea:0xc DW_TAG_array_type
	.long	9612                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27ef:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x27f6:0xc DW_TAG_array_type
	.long	2506                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27fb:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2802:0x5 DW_TAG_pointer_type
	.long	10247                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x2807:0x3 DW_TAG_structure_type
	.short	428                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x280a:0xc DW_TAG_array_type
	.long	269                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x280f:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2816:0x12 DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x281b:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2821:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x2828:0x9 DW_TAG_typedef
	.long	10289                           # DW_AT_type
	.short	500                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0x2831:0x6f DW_TAG_structure_type
	.short	499                             # DW_AT_name
	.short	320                             # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2838:0x9 DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	7504                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2841:0xa DW_TAG_member
	.short	490                             # DW_AT_name
	.long	10400                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x284b:0xa DW_TAG_member
	.short	491                             # DW_AT_name
	.long	10400                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2855:0xa DW_TAG_member
	.short	492                             # DW_AT_name
	.long	10400                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x285f:0xa DW_TAG_member
	.short	493                             # DW_AT_name
	.long	10412                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	208                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2869:0xa DW_TAG_member
	.short	494                             # DW_AT_name
	.long	10412                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	232                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2873:0xb DW_TAG_member
	.short	495                             # DW_AT_name
	.long	10412                           # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.short	256                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x287e:0xb DW_TAG_member
	.short	496                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.short	280                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2889:0xb DW_TAG_member
	.short	497                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.short	292                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2894:0xb DW_TAG_member
	.short	498                             # DW_AT_name
	.long	7718                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.short	304                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x28a0:0xc DW_TAG_array_type
	.long	1975                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x28a5:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x28ac:0xc DW_TAG_array_type
	.long	10424                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x28b1:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x28b8:0x5 DW_TAG_pointer_type
	.long	10429                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x28bd:0x5 DW_TAG_pointer_type
	.long	1993                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x28c2:0x9 DW_TAG_typedef
	.long	10443                           # DW_AT_type
	.short	515                             # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	62                              # Abbrev [62] 0x28cb:0x9 DW_TAG_typedef
	.long	10452                           # DW_AT_type
	.short	514                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	62                              # Abbrev [62] 0x28d4:0x9 DW_TAG_typedef
	.long	10461                           # DW_AT_type
	.short	513                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x28dd:0x5 DW_TAG_base_type
	.short	512                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x28e2:0xd DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	64                              # Abbrev [64] 0x28e7:0x7 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.short	1024                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x28ef:0x5 DW_TAG_pointer_type
	.long	10484                           # DW_AT_type
	.byte	67                              # Abbrev [67] 0x28f4:0xaf DW_TAG_structure_type
	.short	537                             # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x28fa:0xa DW_TAG_member
	.short	530                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2904:0xa DW_TAG_member
	.short	531                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x290e:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2917:0xa DW_TAG_member
	.short	532                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2921:0xa DW_TAG_member
	.short	533                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x292b:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2934:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x293d:0xa DW_TAG_member
	.short	534                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2947:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2950:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2959:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2962:0xa DW_TAG_member
	.short	535                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x296c:0x9 DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	10659                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2975:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	10659                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x297e:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	10659                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2987:0x9 DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2990:0x9 DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2999:0x9 DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x29a3:0x5 DW_TAG_pointer_type
	.long	10664                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x29a8:0x9 DW_TAG_typedef
	.long	1233                            # DW_AT_type
	.short	536                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x29b1:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x29b6:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	100                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x29bd:0xc DW_TAG_array_type
	.long	1228                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x29c2:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x29c9:0x5 DW_TAG_pointer_type
	.long	10702                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x29ce:0x3 DW_TAG_structure_type
	.short	543                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	40                              # Abbrev [40] 0x29d1:0x5 DW_TAG_pointer_type
	.long	10710                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x29d6:0x3 DW_TAG_structure_type
	.short	545                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x29d9:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x29de:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x29e5:0x5 DW_TAG_pointer_type
	.long	10730                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x29ea:0x3 DW_TAG_structure_type
	.short	550                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	40                              # Abbrev [40] 0x29ed:0x5 DW_TAG_pointer_type
	.long	10738                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x29f2:0x3 DW_TAG_structure_type
	.short	552                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	40                              # Abbrev [40] 0x29f5:0x5 DW_TAG_pointer_type
	.long	10746                           # DW_AT_type
	.byte	50                              # Abbrev [50] 0x29fa:0x9e DW_TAG_structure_type
	.short	573                             # DW_AT_name
	.short	4176                            # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2a01:0x9 DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	10904                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2a0a:0x9 DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	10919                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a13:0xa DW_TAG_member
	.short	561                             # DW_AT_name
	.long	10934                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a1d:0xa DW_TAG_member
	.short	563                             # DW_AT_name
	.long	10934                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a27:0xa DW_TAG_member
	.short	564                             # DW_AT_name
	.long	10934                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2a31:0x9 DW_TAG_member
	.byte	198                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a3a:0xa DW_TAG_member
	.short	565                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a44:0xa DW_TAG_member
	.short	566                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a4e:0xa DW_TAG_member
	.short	567                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a58:0xa DW_TAG_member
	.short	568                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a62:0xa DW_TAG_member
	.short	569                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2a6c:0xa DW_TAG_member
	.short	570                             # DW_AT_name
	.long	10466                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2a76:0xb DW_TAG_member
	.short	571                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.short	4160                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2a81:0xb DW_TAG_member
	.short	297                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.short	4164                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2a8c:0xb DW_TAG_member
	.short	572                             # DW_AT_name
	.long	10939                           # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.short	4168                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2a98:0x5 DW_TAG_pointer_type
	.long	10909                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x2a9d:0xa DW_TAG_typedef
	.long	4694                            # DW_AT_type
	.short	559                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	836                             # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x2aa7:0x5 DW_TAG_pointer_type
	.long	10924                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x2aac:0xa DW_TAG_typedef
	.long	7200                            # DW_AT_type
	.short	560                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	900                             # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x2ab6:0x5 DW_TAG_pointer_type
	.long	10939                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2abb:0x5 DW_TAG_pointer_type
	.long	10944                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2ac0:0x9 DW_TAG_typedef
	.long	10484                           # DW_AT_type
	.short	562                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2ac9:0xc DW_TAG_array_type
	.long	10741                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2ace:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2ad5:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2ada:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2ae1:0x5 DW_TAG_pointer_type
	.long	10982                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x2ae6:0x3 DW_TAG_structure_type
	.short	581                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	40                              # Abbrev [40] 0x2ae9:0x5 DW_TAG_pointer_type
	.long	10990                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2aee:0x2a DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2aef:0x5 DW_TAG_formal_parameter
	.long	1975                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2af4:0x5 DW_TAG_formal_parameter
	.long	11032                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2af9:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2afe:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b03:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b08:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b0d:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b12:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2b18:0x5 DW_TAG_pointer_type
	.long	1971                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2b1d:0x5 DW_TAG_pointer_type
	.long	11042                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2b22:0x1b DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2b23:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b28:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b2d:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b32:0x5 DW_TAG_formal_parameter
	.long	7931                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b37:0x5 DW_TAG_formal_parameter
	.long	11069                           # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2b3d:0x5 DW_TAG_pointer_type
	.long	11074                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2b42:0x9 DW_TAG_typedef
	.long	11083                           # DW_AT_type
	.short	589                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	67                              # Abbrev [67] 0x2b4b:0x41 DW_TAG_structure_type
	.short	588                             # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x2b51:0xa DW_TAG_member
	.short	584                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2b5b:0xa DW_TAG_member
	.short	585                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2b65:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x2b6e:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	10                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2b77:0xa DW_TAG_member
	.short	586                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2b81:0xa DW_TAG_member
	.short	587                             # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	14                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2b8c:0x5 DW_TAG_pointer_type
	.long	11153                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2b91:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2b92:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b97:0x5 DW_TAG_formal_parameter
	.long	2069                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2b9c:0x5 DW_TAG_formal_parameter
	.long	2069                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2ba2:0x5 DW_TAG_pointer_type
	.long	11175                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2ba7:0x1b DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2ba8:0x5 DW_TAG_formal_parameter
	.long	2047                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bad:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bb2:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bb7:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bbc:0x5 DW_TAG_formal_parameter
	.long	1228                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2bc2:0x5 DW_TAG_pointer_type
	.long	11207                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2bc7:0x20 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2bc8:0x5 DW_TAG_formal_parameter
	.long	11239                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bcd:0x5 DW_TAG_formal_parameter
	.long	1975                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bd2:0x5 DW_TAG_formal_parameter
	.long	2047                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bd7:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bdc:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2be1:0x5 DW_TAG_formal_parameter
	.long	1228                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x2be7:0x9 DW_TAG_typedef
	.long	273                             # DW_AT_type
	.short	594                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x2bf0:0x5 DW_TAG_pointer_type
	.long	11253                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2bf5:0x20 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2bf6:0x5 DW_TAG_formal_parameter
	.long	1975                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2bfb:0x5 DW_TAG_formal_parameter
	.long	2047                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c00:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c05:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c0a:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c0f:0x5 DW_TAG_formal_parameter
	.long	1228                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2c15:0x5 DW_TAG_pointer_type
	.long	11290                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2c1a:0x34 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2c1b:0x5 DW_TAG_formal_parameter
	.long	1975                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c20:0x5 DW_TAG_formal_parameter
	.long	11032                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c25:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c2a:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c2f:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c34:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c39:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c3e:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c43:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2c48:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2c4e:0x5 DW_TAG_pointer_type
	.long	11347                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x2c53:0xa DW_TAG_typedef
	.long	11357                           # DW_AT_type
	.short	616                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	561                             # DW_AT_decl_line
	.byte	66                              # Abbrev [66] 0x2c5d:0xad DW_TAG_structure_type
	.short	615                             # DW_AT_name
	.byte	80                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x2c64:0xb DW_TAG_member
	.short	600                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2c6f:0xb DW_TAG_member
	.short	601                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	547                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2c7a:0xb DW_TAG_member
	.short	602                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2c85:0xb DW_TAG_member
	.short	603                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2c90:0xb DW_TAG_member
	.short	604                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2c9b:0xb DW_TAG_member
	.short	605                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	551                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2ca6:0xb DW_TAG_member
	.short	606                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	552                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cb1:0xb DW_TAG_member
	.short	607                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cbc:0xb DW_TAG_member
	.short	608                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	554                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cc7:0xb DW_TAG_member
	.short	609                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cd2:0xb DW_TAG_member
	.short	610                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	556                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cdd:0xb DW_TAG_member
	.short	611                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2ce8:0xb DW_TAG_member
	.short	612                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	558                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cf3:0xb DW_TAG_member
	.short	613                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	559                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2cfe:0xb DW_TAG_member
	.short	614                             # DW_AT_name
	.long	11530                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	560                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2d0a:0x5 DW_TAG_pointer_type
	.long	11357                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2d0f:0x5 DW_TAG_pointer_type
	.long	11540                           # DW_AT_type
	.byte	65                              # Abbrev [65] 0x2d14:0x3 DW_TAG_structure_type
	.short	619                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x2d17:0xc DW_TAG_array_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d1c:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2d23:0xc DW_TAG_array_type
	.long	2188                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d28:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2d2f:0x5 DW_TAG_pointer_type
	.long	11572                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x2d34:0xa DW_TAG_typedef
	.long	11582                           # DW_AT_type
	.short	688                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	66                              # Abbrev [66] 0x2d3e:0x29 DW_TAG_structure_type
	.short	687                             # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	314                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x2d45:0xb DW_TAG_member
	.short	659                             # DW_AT_name
	.long	11623                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2d50:0xb DW_TAG_member
	.short	667                             # DW_AT_name
	.long	11711                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2d5b:0xb DW_TAG_member
	.short	674                             # DW_AT_name
	.long	11775                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2d67:0x5 DW_TAG_pointer_type
	.long	11628                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2d6c:0x9 DW_TAG_typedef
	.long	11637                           # DW_AT_type
	.short	666                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	66                              # Abbrev [66] 0x2d75:0x4a DW_TAG_structure_type
	.short	665                             # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x2d7c:0xb DW_TAG_member
	.short	660                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2d87:0xb DW_TAG_member
	.short	661                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2d92:0xb DW_TAG_member
	.short	662                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2d9d:0xb DW_TAG_member
	.short	663                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2da8:0xb DW_TAG_member
	.short	664                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2db3:0xb DW_TAG_member
	.short	642                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x2dbf:0x9 DW_TAG_typedef
	.long	11720                           # DW_AT_type
	.short	673                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2dc8:0x37 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x2dcc:0xa DW_TAG_member
	.short	668                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2dd6:0xa DW_TAG_member
	.short	669                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2de0:0xa DW_TAG_member
	.short	670                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2dea:0xa DW_TAG_member
	.short	671                             # DW_AT_name
	.long	2047                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2df4:0xa DW_TAG_member
	.short	672                             # DW_AT_name
	.long	7931                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2dff:0x5 DW_TAG_pointer_type
	.long	11780                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x2e04:0x15 DW_TAG_subroutine_type
	.long	68                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2e09:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2e0e:0x5 DW_TAG_formal_parameter
	.long	11801                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2e13:0x5 DW_TAG_formal_parameter
	.long	12002                           # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2e19:0x5 DW_TAG_pointer_type
	.long	11806                           # DW_AT_type
	.byte	49                              # Abbrev [49] 0x2e1e:0xa DW_TAG_typedef
	.long	11816                           # DW_AT_type
	.short	686                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.byte	66                              # Abbrev [66] 0x2e28:0x76 DW_TAG_structure_type
	.short	685                             # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x2e2f:0xb DW_TAG_member
	.short	414                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e3a:0xb DW_TAG_member
	.short	675                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e45:0xb DW_TAG_member
	.short	676                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e50:0xb DW_TAG_member
	.short	677                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e5b:0xb DW_TAG_member
	.short	678                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	282                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e66:0xb DW_TAG_member
	.short	679                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e71:0xb DW_TAG_member
	.short	680                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	284                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e7c:0xb DW_TAG_member
	.short	681                             # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e87:0xb DW_TAG_member
	.short	682                             # DW_AT_name
	.long	11934                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x2e92:0xb DW_TAG_member
	.short	683                             # DW_AT_name
	.long	11961                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2e9e:0x5 DW_TAG_pointer_type
	.long	11939                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2ea3:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2ea4:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2ea9:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2eae:0x5 DW_TAG_formal_parameter
	.long	7931                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2eb3:0x5 DW_TAG_formal_parameter
	.long	7931                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2eb9:0x5 DW_TAG_pointer_type
	.long	11966                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x2ebe:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x2ebf:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2ec4:0x5 DW_TAG_formal_parameter
	.long	11983                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x2ec9:0x5 DW_TAG_formal_parameter
	.long	11988                           # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2ecf:0x5 DW_TAG_pointer_type
	.long	11816                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2ed4:0x9 DW_TAG_typedef
	.long	11997                           # DW_AT_type
	.short	684                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x2edd:0x5 DW_TAG_pointer_type
	.long	11711                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2ee2:0x5 DW_TAG_pointer_type
	.long	11582                           # DW_AT_type
	.byte	40                              # Abbrev [40] 0x2ee7:0x5 DW_TAG_pointer_type
	.long	12012                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2eec:0x9 DW_TAG_typedef
	.long	12021                           # DW_AT_type
	.short	700                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x2ef5:0x45 DW_TAG_structure_type
	.short	364                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x2efa:0xa DW_TAG_member
	.short	690                             # DW_AT_name
	.long	12090                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2f04:0xa DW_TAG_member
	.short	695                             # DW_AT_name
	.long	12152                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2f0e:0xa DW_TAG_member
	.short	696                             # DW_AT_name
	.long	12170                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2f18:0xb DW_TAG_member
	.short	697                             # DW_AT_name
	.long	12188                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.short	284                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2f23:0xb DW_TAG_member
	.short	698                             # DW_AT_name
	.long	12206                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.short	332                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2f2e:0xb DW_TAG_member
	.short	699                             # DW_AT_name
	.long	12206                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.short	348                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2f3a:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f3f:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2f45:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x2f4c:0x9 DW_TAG_typedef
	.long	12117                           # DW_AT_type
	.short	694                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2f55:0x23 DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x2f59:0xa DW_TAG_member
	.short	691                             # DW_AT_name
	.long	1993                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2f63:0xa DW_TAG_member
	.short	692                             # DW_AT_name
	.long	1971                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2f6d:0xa DW_TAG_member
	.short	693                             # DW_AT_name
	.long	1971                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	3                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2f78:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f7d:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2f83:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2f8a:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f8f:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2f95:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2f9c:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2fa1:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x2fa7:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2fae:0xc DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2fb3:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x2fba:0x5 DW_TAG_pointer_type
	.long	12223                           # DW_AT_type
	.byte	62                              # Abbrev [62] 0x2fbf:0x9 DW_TAG_typedef
	.long	12232                           # DW_AT_type
	.short	711                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	63                              # Abbrev [63] 0x2fc8:0x64 DW_TAG_structure_type
	.short	6596                            # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x2fcd:0xa DW_TAG_member
	.short	702                             # DW_AT_name
	.long	12332                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2fd7:0xa DW_TAG_member
	.short	703                             # DW_AT_name
	.long	12344                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2fe1:0xa DW_TAG_member
	.short	704                             # DW_AT_name
	.long	12206                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2feb:0xa DW_TAG_member
	.short	705                             # DW_AT_name
	.long	12356                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	51                              # Abbrev [51] 0x2ff5:0xa DW_TAG_member
	.short	706                             # DW_AT_name
	.long	12374                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x2fff:0xb DW_TAG_member
	.short	707                             # DW_AT_name
	.long	12392                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.short	436                             # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x300a:0xb DW_TAG_member
	.short	708                             # DW_AT_name
	.long	12392                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.short	3076                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x3015:0xb DW_TAG_member
	.short	709                             # DW_AT_name
	.long	12416                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.short	5716                            # DW_AT_data_member_location
	.byte	52                              # Abbrev [52] 0x3020:0xb DW_TAG_member
	.short	710                             # DW_AT_name
	.long	12416                           # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.short	6156                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x302c:0xc DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3031:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3038:0xc DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x303d:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3044:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3049:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x304f:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3056:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x305b:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3061:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3068:0x18 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x306d:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3073:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3079:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3080:0x12 DW_TAG_array_type
	.long	12108                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3085:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	12                              # Abbrev [12] 0x308b:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3092:0x12 DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3097:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x309d:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x30a4:0xc DW_TAG_array_type
	.long	7931                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x30a9:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x30b0:0xa DW_TAG_typedef
	.long	12474                           # DW_AT_type
	.short	724                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	337                             # DW_AT_decl_line
	.byte	66                              # Abbrev [66] 0x30ba:0x5d DW_TAG_structure_type
	.short	723                             # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.byte	56                              # Abbrev [56] 0x30c1:0xb DW_TAG_member
	.short	719                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	329                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x30cc:0xb DW_TAG_member
	.short	720                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x30d7:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	331                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x30e1:0xb DW_TAG_member
	.short	375                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	332                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x30ec:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	333                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	55                              # Abbrev [55] 0x30f6:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x3100:0xb DW_TAG_member
	.short	721                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	56                              # Abbrev [56] 0x310b:0xb DW_TAG_member
	.short	722                             # DW_AT_name
	.long	269                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3117:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x311c:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3123:0x1e DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3128:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x312e:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3134:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x313a:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3141:0x1e DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3146:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x314c:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3152:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3158:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x315f:0xc DW_TAG_array_type
	.long	7931                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3164:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x316b:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3170:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x3177:0x5 DW_TAG_pointer_type
	.long	9617                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x317c:0x5 DW_TAG_pointer_type
	.long	10479                           # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3181:0xc DW_TAG_array_type
	.long	68                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3186:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	17                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x318d:0x5 DW_TAG_pointer_type
	.long	12690                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x3192:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x3193:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x3199:0x5 DW_TAG_pointer_type
	.long	12702                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x319e:0x1a DW_TAG_subroutine_type
	.long	68                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x31a3:0x5 DW_TAG_formal_parameter
	.long	2506                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x31a8:0x5 DW_TAG_formal_parameter
	.long	11239                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x31ad:0x5 DW_TAG_formal_parameter
	.long	1975                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x31b2:0x5 DW_TAG_formal_parameter
	.long	1228                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x31b8:0x5 DW_TAG_pointer_type
	.long	12733                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x31bd:0x10 DW_TAG_subroutine_type
	.long	68                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x31c2:0x5 DW_TAG_formal_parameter
	.long	4689                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x31c7:0x5 DW_TAG_formal_parameter
	.long	7195                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x31cd:0x5 DW_TAG_pointer_type
	.long	12754                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x31d2:0x10 DW_TAG_subroutine_type
	.long	68                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x31d7:0x5 DW_TAG_formal_parameter
	.long	3190                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x31dc:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x31e2:0x5 DW_TAG_pointer_type
	.long	12775                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x31e7:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x31e8:0x5 DW_TAG_formal_parameter
	.long	3190                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x31ee:0x12 DW_TAG_array_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x31f3:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x31f9:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x3200:0x9 DW_TAG_typedef
	.long	12809                           # DW_AT_type
	.short	779                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3209:0x17 DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x320d:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3216:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	116                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x3220:0x5 DW_TAG_pointer_type
	.long	2521                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3225:0x1e DW_TAG_array_type
	.long	116                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x322a:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3230:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x3236:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	12                              # Abbrev [12] 0x323c:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3243:0xc DW_TAG_array_type
	.long	10434                           # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3248:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x324f:0xc DW_TAG_array_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3254:0x6 DW_TAG_subrange_type
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x325b:0x5 DW_TAG_pointer_type
	.long	12896                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x3260:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x3261:0x5 DW_TAG_formal_parameter
	.long	12832                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3266:0x5 DW_TAG_formal_parameter
	.long	11239                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x326b:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3270:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x3276:0x5 DW_TAG_pointer_type
	.long	12923                           # DW_AT_type
	.byte	68                              # Abbrev [68] 0x327b:0x34 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x327c:0x5 DW_TAG_formal_parameter
	.long	12832                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3281:0x5 DW_TAG_formal_parameter
	.long	11069                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3286:0x5 DW_TAG_formal_parameter
	.long	12975                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x328b:0x5 DW_TAG_formal_parameter
	.long	116                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3290:0x5 DW_TAG_formal_parameter
	.long	2010                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x3295:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x329a:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x329f:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32a4:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32a9:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x32af:0x5 DW_TAG_pointer_type
	.long	85                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x32b4:0x5 DW_TAG_pointer_type
	.long	12985                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x32b9:0x15 DW_TAG_subroutine_type
	.long	68                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x32be:0x5 DW_TAG_formal_parameter
	.long	12832                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32c3:0x5 DW_TAG_formal_parameter
	.long	11988                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32c8:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x32ce:0x5 DW_TAG_pointer_type
	.long	13011                           # DW_AT_type
	.byte	69                              # Abbrev [69] 0x32d3:0x1f DW_TAG_subroutine_type
	.long	405                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	48                              # Abbrev [48] 0x32d8:0x5 DW_TAG_formal_parameter
	.long	12832                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32dd:0x5 DW_TAG_formal_parameter
	.long	11983                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32e2:0x5 DW_TAG_formal_parameter
	.long	12002                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32e7:0x5 DW_TAG_formal_parameter
	.long	405                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x32ec:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	70                              # Abbrev [70] 0x32f2:0x2d6 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	845                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	71                              # Abbrev [71] 0x32fe:0xa DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.short	835                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	2506                            # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3308:0xa DW_TAG_variable
	.byte	29                              # DW_AT_location
	.short	847                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	10164                           # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3312:0xa DW_TAG_variable
	.byte	30                              # DW_AT_location
	.short	859                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x331c:0xa DW_TAG_variable
	.byte	31                              # DW_AT_location
	.short	855                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3326:0xa DW_TAG_variable
	.byte	32                              # DW_AT_location
	.short	836                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3330:0xa DW_TAG_variable
	.byte	33                              # DW_AT_location
	.short	539                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	10659                           # DW_AT_type
	.byte	73                              # Abbrev [73] 0x333a:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	10904                           # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3343:0xa DW_TAG_variable
	.byte	35                              # DW_AT_location
	.short	681                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x334d:0xa DW_TAG_variable
	.byte	36                              # DW_AT_location
	.short	860                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3357:0xa DW_TAG_variable
	.byte	37                              # DW_AT_location
	.short	861                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3361:0xa DW_TAG_variable
	.byte	41                              # DW_AT_location
	.short	856                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	73                              # Abbrev [73] 0x336b:0x9 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x3374:0xa DW_TAG_variable
	.byte	44                              # DW_AT_location
	.short	838                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x337e:0xa DW_TAG_variable
	.byte	45                              # DW_AT_location
	.short	865                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	74                              # Abbrev [74] 0x3388:0x9 DW_TAG_variable
	.short	867                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	74                              # Abbrev [74] 0x3391:0x9 DW_TAG_variable
	.short	868                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	74                              # Abbrev [74] 0x339a:0x9 DW_TAG_variable
	.short	798                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	74                              # Abbrev [74] 0x33a3:0x9 DW_TAG_variable
	.short	857                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	35                              # Abbrev [35] 0x33ac:0x215 DW_TAG_lexical_block
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp482-.Ltmp202               # DW_AT_high_pc
	.byte	72                              # Abbrev [72] 0x33b2:0xa DW_TAG_variable
	.byte	47                              # DW_AT_location
	.short	866                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x33bc:0x204 DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	72                              # Abbrev [72] 0x33be:0xa DW_TAG_variable
	.byte	38                              # DW_AT_location
	.short	862                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x33c8:0xa DW_TAG_variable
	.byte	39                              # DW_AT_location
	.short	863                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x33d2:0xa DW_TAG_variable
	.byte	40                              # DW_AT_location
	.short	864                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x33dc:0x9 DW_TAG_variable
	.short	869                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x33e5:0x8 DW_TAG_variable
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x33ed:0xf4 DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	73                              # Abbrev [73] 0x33ef:0x9 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x33f8:0xa DW_TAG_variable
	.byte	48                              # DW_AT_location
	.short	864                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	73                              # Abbrev [73] 0x3402:0x9 DW_TAG_variable
	.byte	49                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	75                              # Abbrev [75] 0x340b:0x15 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp369-.Ltmp368               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	174                             # DW_AT_call_line
	.byte	51                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3418:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x3420:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp399-.Ltmp398               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	182                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x342d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3434:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	125
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x3447:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp402-.Ltmp400               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	182                             # DW_AT_call_line
	.byte	90                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3454:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x345b:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	127
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x346e:0xc DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	26                              # DW_AT_low_pc
	.long	.Ltmp423-.Ltmp422               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	76                              # Abbrev [76] 0x347a:0xc DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	27                              # DW_AT_low_pc
	.long	.Ltmp453-.Ltmp452               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	75                              # Abbrev [75] 0x3486:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	28                              # DW_AT_low_pc
	.long	.Ltmp430-.Ltmp429               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	196                             # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3493:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x349a:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	127
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x34ad:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	29                              # DW_AT_low_pc
	.long	.Ltmp433-.Ltmp431               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	196                             # DW_AT_call_line
	.byte	81                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x34ba:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x34c1:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	114
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x34d4:0xc DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp448-.Ltmp447               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x34e1:0xc DW_TAG_lexical_block
	.byte	6                               # DW_AT_ranges
	.byte	73                              # Abbrev [73] 0x34e3:0x9 DW_TAG_variable
	.byte	43                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	77                              # Abbrev [77] 0x34ed:0xd DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp238-.Ltmp237               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	64                              # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	75                              # Abbrev [75] 0x34fa:0x15 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp240-.Ltmp239               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	64                              # DW_AT_call_line
	.byte	65                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3507:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	754                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x350f:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp252-.Ltmp251               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	71                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x351c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3523:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	117
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x3536:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp255-.Ltmp254               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	71                              # DW_AT_call_line
	.byte	82                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3543:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x354a:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x355d:0xc DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp261-.Ltmp260               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	34                              # Abbrev [34] 0x3569:0x8 DW_TAG_inlined_subroutine
	.long	746                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	75                              # Abbrev [75] 0x3571:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp283-.Ltmp282               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	85                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x357e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3585:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	121
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x3598:0x27 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp286-.Ltmp284               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	85                              # DW_AT_call_line
	.byte	73                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x35a5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x35ac:0x12 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x35c1:0x6 DW_TAG_call_site
	.long	13768                           # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	78                              # Abbrev [78] 0x35c8:0x11 DW_TAG_subprogram
	.short	833                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	940                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	48                              # Abbrev [48] 0x35ce:0x5 DW_TAG_formal_parameter
	.long	13785                           # DW_AT_type
	.byte	48                              # Abbrev [48] 0x35d3:0x5 DW_TAG_formal_parameter
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x35d9:0x5 DW_TAG_pointer_type
	.long	142                             # DW_AT_type
	.byte	79                              # Abbrev [79] 0x35de:0x49 DW_TAG_subprogram
	.short	834                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	80                              # Abbrev [80] 0x35e8:0xa DW_TAG_formal_parameter
	.short	835                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	2506                            # DW_AT_type
	.byte	80                              # Abbrev [80] 0x35f2:0xa DW_TAG_formal_parameter
	.short	836                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	10659                           # DW_AT_type
	.byte	80                              # Abbrev [80] 0x35fc:0xa DW_TAG_formal_parameter
	.short	837                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	80                              # Abbrev [80] 0x3606:0xa DW_TAG_formal_parameter
	.short	838                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	81                              # Abbrev [81] 0x3610:0x16 DW_TAG_lexical_block
	.byte	33                              # Abbrev [33] 0x3611:0xa DW_TAG_variable
	.short	561                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x361b:0xa DW_TAG_variable
	.short	839                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x3627:0x22a DW_TAG_subprogram
	.byte	39                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	846                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	533                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	30                              # Abbrev [30] 0x3634:0xb DW_TAG_formal_parameter
	.byte	50                              # DW_AT_location
	.short	835                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	533                             # DW_AT_decl_line
	.long	2506                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x363f:0xa DW_TAG_variable
	.short	857                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	535                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3649:0x201 DW_TAG_lexical_block
	.byte	8                               # DW_AT_ranges
	.byte	45                              # Abbrev [45] 0x364b:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	7
	.short	851                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	552                             # DW_AT_decl_line
	.long	405                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x3658:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	6
	.short	852                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	552                             # DW_AT_decl_line
	.long	405                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x3665:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	12
	.short	853                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.long	85                              # DW_AT_type
	.byte	45                              # Abbrev [45] 0x3672:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.short	854                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.long	85                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x367f:0xb DW_TAG_variable
	.byte	51                              # DW_AT_location
	.short	847                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
	.long	10164                           # DW_AT_type
	.byte	32                              # Abbrev [32] 0x368a:0xa DW_TAG_variable
	.byte	52                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	539                             # DW_AT_decl_line
	.long	10904                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x3694:0xb DW_TAG_variable
	.byte	53                              # DW_AT_location
	.short	539                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
	.long	10659                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x369f:0xb DW_TAG_variable
	.byte	54                              # DW_AT_location
	.short	855                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x36aa:0xb DW_TAG_variable
	.byte	55                              # DW_AT_location
	.short	836                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	14417                           # DW_AT_type
	.byte	31                              # Abbrev [31] 0x36b5:0xb DW_TAG_variable
	.byte	56                              # DW_AT_location
	.short	681                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x36c0:0xb DW_TAG_variable
	.byte	57                              # DW_AT_location
	.short	837                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x36cb:0xb DW_TAG_variable
	.byte	58                              # DW_AT_location
	.short	838                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	541                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x36d6:0xb DW_TAG_variable
	.byte	59                              # DW_AT_location
	.short	856                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	32                              # Abbrev [32] 0x36e1:0xa DW_TAG_variable
	.byte	60                              # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x36eb:0xa DW_TAG_variable
	.short	865                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x36f5:0xa DW_TAG_variable
	.short	798                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	548                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x36ff:0x14a DW_TAG_lexical_block
	.byte	9                               # DW_AT_ranges
	.byte	32                              # Abbrev [32] 0x3701:0xa DW_TAG_variable
	.byte	61                              # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	569                             # DW_AT_decl_line
	.long	1170                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x370b:0x13d DW_TAG_lexical_block
	.byte	10                              # DW_AT_ranges
	.byte	33                              # Abbrev [33] 0x370d:0xa DW_TAG_variable
	.short	858                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	82                              # Abbrev [82] 0x3717:0x130 DW_TAG_inlined_subroutine
	.long	13790                           # DW_AT_abstract_origin
	.byte	11                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	573                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x3721:0x6 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_location
	.long	13800                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x3727:0x6 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_location
	.long	13810                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x372d:0x6 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_location
	.long	13820                           # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x3733:0x6 DW_TAG_formal_parameter
	.byte	65                              # DW_AT_location
	.long	13830                           # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3739:0x10d DW_TAG_lexical_block
	.byte	12                              # DW_AT_ranges
	.byte	25                              # Abbrev [25] 0x373b:0x6 DW_TAG_variable
	.byte	66                              # DW_AT_location
	.long	13841                           # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x3741:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	40                              # DW_AT_low_pc
	.long	.Ltmp554-.Ltmp553               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	289                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x374f:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3767:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3782:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	41                              # DW_AT_low_pc
	.long	.Ltmp558-.Ltmp556               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	290                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3790:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x37a8:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x37c3:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp574-.Ltmp573               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	293                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x37d1:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	127
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x37e9:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	127
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3804:0x41 DW_TAG_inlined_subroutine
	.long	409                             # DW_AT_abstract_origin
	.byte	43                              # DW_AT_low_pc
	.long	.Ltmp577-.Ltmp576               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	294                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x3812:0x18 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.long	417                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x382a:0x1a DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\003"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	79
	.byte	38
	.byte	159
	.long	425                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x384a:0x6 DW_TAG_call_site
	.long	2471                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x3851:0x5 DW_TAG_pointer_type
	.long	10659                           # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	13                              # Offset entry count
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
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp361-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp362-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp312-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp277-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges9:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges10:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp529-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp538-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp540-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp561-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp562-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges11:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges12:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	3484                            # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/mc_direct.c"        # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=128
.Linfo_string3:
	.asciz	"INT_BITS"                      # string offset=162
.Linfo_string4:
	.asciz	"int"                           # string offset=171
.Linfo_string5:
	.asciz	"zero_mv"                       # string offset=175
.Linfo_string6:
	.asciz	"mv_x"                          # string offset=183
.Linfo_string7:
	.asciz	"short"                         # string offset=188
.Linfo_string8:
	.asciz	"mv_y"                          # string offset=194
.Linfo_string9:
	.asciz	"MotionVector"                  # string offset=199
.Linfo_string10:
	.asciz	"char"                          # string offset=212
.Linfo_string11:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=217
.Linfo_string12:
	.asciz	"BLOCK_STEP"                    # string offset=237
.Linfo_string13:
	.asciz	"CF_UNKNOWN"                    # string offset=248
.Linfo_string14:
	.asciz	"YUV400"                        # string offset=259
.Linfo_string15:
	.asciz	"YUV420"                        # string offset=266
.Linfo_string16:
	.asciz	"YUV422"                        # string offset=273
.Linfo_string17:
	.asciz	"YUV444"                        # string offset=280
.Linfo_string18:
	.asciz	"CM_UNKNOWN"                    # string offset=287
.Linfo_string19:
	.asciz	"CM_YUV"                        # string offset=298
.Linfo_string20:
	.asciz	"CM_RGB"                        # string offset=305
.Linfo_string21:
	.asciz	"CM_XYZ"                        # string offset=312
.Linfo_string22:
	.asciz	"VIDEO_UNKNOWN"                 # string offset=319
.Linfo_string23:
	.asciz	"VIDEO_YUV"                     # string offset=333
.Linfo_string24:
	.asciz	"VIDEO_RGB"                     # string offset=343
.Linfo_string25:
	.asciz	"VIDEO_XYZ"                     # string offset=353
.Linfo_string26:
	.asciz	"VIDEO_TIFF"                    # string offset=363
.Linfo_string27:
	.asciz	"VIDEO_AVI"                     # string offset=374
.Linfo_string28:
	.asciz	"unsigned int"                  # string offset=384
.Linfo_string29:
	.asciz	"FRAME"                         # string offset=397
.Linfo_string30:
	.asciz	"TOP_FIELD"                     # string offset=403
.Linfo_string31:
	.asciz	"BOTTOM_FIELD"                  # string offset=413
.Linfo_string32:
	.asciz	"PLANE_Y"                       # string offset=426
.Linfo_string33:
	.asciz	"PLANE_U"                       # string offset=434
.Linfo_string34:
	.asciz	"PLANE_V"                       # string offset=442
.Linfo_string35:
	.asciz	"PLANE_G"                       # string offset=450
.Linfo_string36:
	.asciz	"PLANE_B"                       # string offset=458
.Linfo_string37:
	.asciz	"PLANE_R"                       # string offset=466
.Linfo_string38:
	.asciz	"LIST_0"                        # string offset=474
.Linfo_string39:
	.asciz	"LIST_1"                        # string offset=481
.Linfo_string40:
	.asciz	"BI_PRED"                       # string offset=488
.Linfo_string41:
	.asciz	"BI_PRED_L0"                    # string offset=496
.Linfo_string42:
	.asciz	"BI_PRED_L1"                    # string offset=507
.Linfo_string43:
	.asciz	"FRAME_CODING"                  # string offset=518
.Linfo_string44:
	.asciz	"FIELD_CODING"                  # string offset=531
.Linfo_string45:
	.asciz	"ADAPTIVE_CODING"               # string offset=544
.Linfo_string46:
	.asciz	"FRAME_MB_PAIR_CODING"          # string offset=560
.Linfo_string47:
	.asciz	"PSKIP"                         # string offset=581
.Linfo_string48:
	.asciz	"BSKIP_DIRECT"                  # string offset=587
.Linfo_string49:
	.asciz	"P16x16"                        # string offset=600
.Linfo_string50:
	.asciz	"P16x8"                         # string offset=607
.Linfo_string51:
	.asciz	"P8x16"                         # string offset=613
.Linfo_string52:
	.asciz	"SMB8x8"                        # string offset=619
.Linfo_string53:
	.asciz	"SMB8x4"                        # string offset=626
.Linfo_string54:
	.asciz	"SMB4x8"                        # string offset=633
.Linfo_string55:
	.asciz	"SMB4x4"                        # string offset=640
.Linfo_string56:
	.asciz	"P8x8"                          # string offset=647
.Linfo_string57:
	.asciz	"I4MB"                          # string offset=652
.Linfo_string58:
	.asciz	"I16MB"                         # string offset=657
.Linfo_string59:
	.asciz	"IBLOCK"                        # string offset=663
.Linfo_string60:
	.asciz	"SI4MB"                         # string offset=670
.Linfo_string61:
	.asciz	"I8MB"                          # string offset=676
.Linfo_string62:
	.asciz	"IPCM"                          # string offset=681
.Linfo_string63:
	.asciz	"MAXMODE"                       # string offset=686
.Linfo_string64:
	.asciz	"signed char"                   # string offset=694
.Linfo_string65:
	.asciz	"iabs"                          # string offset=706
.Linfo_string66:
	.asciz	"x"                             # string offset=711
.Linfo_string67:
	.asciz	"y"                             # string offset=713
.Linfo_string68:
	.asciz	"RSD"                           # string offset=715
.Linfo_string69:
	.asciz	"update_neighbor_mvs"           # string offset=719
.Linfo_string70:
	.asciz	"motion"                        # string offset=739
.Linfo_string71:
	.asciz	"ref_pic"                       # string offset=746
.Linfo_string72:
	.asciz	"structure"                     # string offset=754
.Linfo_string73:
	.asciz	"PictureStructure"              # string offset=764
.Linfo_string74:
	.asciz	"poc"                           # string offset=781
.Linfo_string75:
	.asciz	"top_poc"                       # string offset=785
.Linfo_string76:
	.asciz	"bottom_poc"                    # string offset=793
.Linfo_string77:
	.asciz	"frame_poc"                     # string offset=804
.Linfo_string78:
	.asciz	"frame_num"                     # string offset=814
.Linfo_string79:
	.asciz	"recovery_frame"                # string offset=824
.Linfo_string80:
	.asciz	"pic_num"                       # string offset=839
.Linfo_string81:
	.asciz	"long_term_pic_num"             # string offset=847
.Linfo_string82:
	.asciz	"long_term_frame_idx"           # string offset=865
.Linfo_string83:
	.asciz	"is_long_term"                  # string offset=885
.Linfo_string84:
	.asciz	"unsigned char"                 # string offset=898
.Linfo_string85:
	.asciz	"byte"                          # string offset=912
.Linfo_string86:
	.asciz	"used_for_reference"            # string offset=917
.Linfo_string87:
	.asciz	"is_output"                     # string offset=936
.Linfo_string88:
	.asciz	"non_existing"                  # string offset=946
.Linfo_string89:
	.asciz	"separate_colour_plane_flag"    # string offset=959
.Linfo_string90:
	.asciz	"max_slice_id"                  # string offset=986
.Linfo_string91:
	.asciz	"size_x"                        # string offset=999
.Linfo_string92:
	.asciz	"size_y"                        # string offset=1006
.Linfo_string93:
	.asciz	"size_x_cr"                     # string offset=1013
.Linfo_string94:
	.asciz	"size_y_cr"                     # string offset=1023
.Linfo_string95:
	.asciz	"size_x_m1"                     # string offset=1033
.Linfo_string96:
	.asciz	"size_y_m1"                     # string offset=1043
.Linfo_string97:
	.asciz	"size_x_cr_m1"                  # string offset=1053
.Linfo_string98:
	.asciz	"size_y_cr_m1"                  # string offset=1066
.Linfo_string99:
	.asciz	"coded_frame"                   # string offset=1079
.Linfo_string100:
	.asciz	"mb_aff_frame_flag"             # string offset=1091
.Linfo_string101:
	.asciz	"PicWidthInMbs"                 # string offset=1109
.Linfo_string102:
	.asciz	"PicSizeInMbs"                  # string offset=1123
.Linfo_string103:
	.asciz	"iLumaPadY"                     # string offset=1136
.Linfo_string104:
	.asciz	"iLumaPadX"                     # string offset=1146
.Linfo_string105:
	.asciz	"iChromaPadY"                   # string offset=1156
.Linfo_string106:
	.asciz	"iChromaPadX"                   # string offset=1168
.Linfo_string107:
	.asciz	"imgY"                          # string offset=1180
.Linfo_string108:
	.asciz	"unsigned short"                # string offset=1185
.Linfo_string109:
	.asciz	"uint16"                        # string offset=1200
.Linfo_string110:
	.asciz	"imgpel"                        # string offset=1207
.Linfo_string111:
	.asciz	"imgUV"                         # string offset=1214
.Linfo_string112:
	.asciz	"img_comp"                      # string offset=1220
.Linfo_string113:
	.asciz	"mv_info"                       # string offset=1229
.Linfo_string114:
	.asciz	"JVmv_info"                     # string offset=1237
.Linfo_string115:
	.asciz	"mb_field"                      # string offset=1247
.Linfo_string116:
	.asciz	"pic_motion_params_old"         # string offset=1256
.Linfo_string117:
	.asciz	"JVmotion"                      # string offset=1278
.Linfo_string118:
	.asciz	"slice_id"                      # string offset=1287
.Linfo_string119:
	.asciz	"top_field"                     # string offset=1296
.Linfo_string120:
	.asciz	"bottom_field"                  # string offset=1306
.Linfo_string121:
	.asciz	"frame"                         # string offset=1319
.Linfo_string122:
	.asciz	"slice_type"                    # string offset=1325
.Linfo_string123:
	.asciz	"idr_flag"                      # string offset=1336
.Linfo_string124:
	.asciz	"no_output_of_prior_pics_flag"  # string offset=1345
.Linfo_string125:
	.asciz	"long_term_reference_flag"      # string offset=1374
.Linfo_string126:
	.asciz	"adaptive_ref_pic_buffering_flag" # string offset=1399
.Linfo_string127:
	.asciz	"chroma_format_idc"             # string offset=1431
.Linfo_string128:
	.asciz	"frame_mbs_only_flag"           # string offset=1449
.Linfo_string129:
	.asciz	"frame_cropping_flag"           # string offset=1469
.Linfo_string130:
	.asciz	"frame_cropping_rect_left_offset" # string offset=1489
.Linfo_string131:
	.asciz	"frame_cropping_rect_right_offset" # string offset=1521
.Linfo_string132:
	.asciz	"frame_cropping_rect_top_offset" # string offset=1554
.Linfo_string133:
	.asciz	"frame_cropping_rect_bottom_offset" # string offset=1585
.Linfo_string134:
	.asciz	"qp"                            # string offset=1619
.Linfo_string135:
	.asciz	"chroma_qp_offset"              # string offset=1622
.Linfo_string136:
	.asciz	"slice_qp_delta"                # string offset=1639
.Linfo_string137:
	.asciz	"dec_ref_pic_marking_buffer"    # string offset=1654
.Linfo_string138:
	.asciz	"memory_management_control_operation" # string offset=1681
.Linfo_string139:
	.asciz	"difference_of_pic_nums_minus1" # string offset=1717
.Linfo_string140:
	.asciz	"max_long_term_frame_idx_plus1" # string offset=1747
.Linfo_string141:
	.asciz	"Next"                          # string offset=1777
.Linfo_string142:
	.asciz	"DecRefPicMarking_s"            # string offset=1782
.Linfo_string143:
	.asciz	"DecRefPicMarking_t"            # string offset=1801
.Linfo_string144:
	.asciz	"concealed_pic"                 # string offset=1820
.Linfo_string145:
	.asciz	"seiHasTone_mapping"            # string offset=1834
.Linfo_string146:
	.asciz	"tone_mapping_model_id"         # string offset=1853
.Linfo_string147:
	.asciz	"tonemapped_bit_depth"          # string offset=1875
.Linfo_string148:
	.asciz	"tone_mapping_lut"              # string offset=1896
.Linfo_string149:
	.asciz	"view_id"                       # string offset=1913
.Linfo_string150:
	.asciz	"inter_view_flag"               # string offset=1921
.Linfo_string151:
	.asciz	"anchor_pic_flag"               # string offset=1937
.Linfo_string152:
	.asciz	"iLumaStride"                   # string offset=1953
.Linfo_string153:
	.asciz	"iChromaStride"                 # string offset=1965
.Linfo_string154:
	.asciz	"iLumaExpandedHeight"           # string offset=1979
.Linfo_string155:
	.asciz	"iChromaExpandedHeight"         # string offset=1999
.Linfo_string156:
	.asciz	"cur_imgY"                      # string offset=2021
.Linfo_string157:
	.asciz	"no_ref"                        # string offset=2030
.Linfo_string158:
	.asciz	"iCodingType"                   # string offset=2037
.Linfo_string159:
	.asciz	"listXsize"                     # string offset=2049
.Linfo_string160:
	.asciz	"listX"                         # string offset=2059
.Linfo_string161:
	.asciz	"storable_picture"              # string offset=2065
.Linfo_string162:
	.asciz	"mv"                            # string offset=2082
.Linfo_string163:
	.asciz	"ref_idx"                       # string offset=2085
.Linfo_string164:
	.asciz	"pic_motion_params"             # string offset=2093
.Linfo_string165:
	.asciz	"PicMotionParams"               # string offset=2111
.Linfo_string166:
	.asciz	"i4"                            # string offset=2127
.Linfo_string167:
	.asciz	"prepare_direct_params"         # string offset=2130
.Linfo_string168:
	.asciz	"p_Slice"                       # string offset=2152
.Linfo_string169:
	.asciz	"p_Vid"                         # string offset=2160
.Linfo_string170:
	.asciz	"p_Inp"                         # string offset=2166
.Linfo_string171:
	.asciz	"infile"                        # string offset=2172
.Linfo_string172:
	.asciz	"outfile"                       # string offset=2179
.Linfo_string173:
	.asciz	"reffile"                       # string offset=2187
.Linfo_string174:
	.asciz	"FileFormat"                    # string offset=2195
.Linfo_string175:
	.asciz	"ref_offset"                    # string offset=2206
.Linfo_string176:
	.asciz	"poc_scale"                     # string offset=2217
.Linfo_string177:
	.asciz	"write_uv"                      # string offset=2227
.Linfo_string178:
	.asciz	"silent"                        # string offset=2236
.Linfo_string179:
	.asciz	"intra_profile_deblocking"      # string offset=2243
.Linfo_string180:
	.asciz	"source"                        # string offset=2268
.Linfo_string181:
	.asciz	"yuv_format"                    # string offset=2275
.Linfo_string182:
	.asciz	"ColorFormat"                   # string offset=2286
.Linfo_string183:
	.asciz	"color_model"                   # string offset=2298
.Linfo_string184:
	.asciz	"ColorModel"                    # string offset=2310
.Linfo_string185:
	.asciz	"frame_rate"                    # string offset=2321
.Linfo_string186:
	.asciz	"double"                        # string offset=2332
.Linfo_string187:
	.asciz	"width"                         # string offset=2339
.Linfo_string188:
	.asciz	"height"                        # string offset=2345
.Linfo_string189:
	.asciz	"auto_crop_right"               # string offset=2352
.Linfo_string190:
	.asciz	"auto_crop_bottom"              # string offset=2368
.Linfo_string191:
	.asciz	"auto_crop_right_cr"            # string offset=2385
.Linfo_string192:
	.asciz	"auto_crop_bottom_cr"           # string offset=2404
.Linfo_string193:
	.asciz	"width_crop"                    # string offset=2424
.Linfo_string194:
	.asciz	"height_crop"                   # string offset=2435
.Linfo_string195:
	.asciz	"mb_width"                      # string offset=2447
.Linfo_string196:
	.asciz	"mb_height"                     # string offset=2456
.Linfo_string197:
	.asciz	"size_cmp"                      # string offset=2466
.Linfo_string198:
	.asciz	"size"                          # string offset=2475
.Linfo_string199:
	.asciz	"bit_depth"                     # string offset=2480
.Linfo_string200:
	.asciz	"max_value"                     # string offset=2490
.Linfo_string201:
	.asciz	"max_value_sq"                  # string offset=2500
.Linfo_string202:
	.asciz	"pic_unit_size_on_disk"         # string offset=2513
.Linfo_string203:
	.asciz	"pic_unit_size_shift3"          # string offset=2535
.Linfo_string204:
	.asciz	"frame_format"                  # string offset=2556
.Linfo_string205:
	.asciz	"FrameFormat"                   # string offset=2569
.Linfo_string206:
	.asciz	"output"                        # string offset=2581
.Linfo_string207:
	.asciz	"ProcessInput"                  # string offset=2588
.Linfo_string208:
	.asciz	"enable_32_pulldown"            # string offset=2601
.Linfo_string209:
	.asciz	"input_file1"                   # string offset=2620
.Linfo_string210:
	.asciz	"fname"                         # string offset=2632
.Linfo_string211:
	.asciz	"fhead"                         # string offset=2638
.Linfo_string212:
	.asciz	"ftail"                         # string offset=2644
.Linfo_string213:
	.asciz	"f_num"                         # string offset=2650
.Linfo_string214:
	.asciz	"vdtype"                        # string offset=2656
.Linfo_string215:
	.asciz	"VideoFileType"                 # string offset=2663
.Linfo_string216:
	.asciz	"format"                        # string offset=2677
.Linfo_string217:
	.asciz	"is_concatenated"               # string offset=2684
.Linfo_string218:
	.asciz	"is_interleaved"                # string offset=2700
.Linfo_string219:
	.asciz	"zero_pad"                      # string offset=2715
.Linfo_string220:
	.asciz	"num_digits"                    # string offset=2724
.Linfo_string221:
	.asciz	"start_frame"                   # string offset=2735
.Linfo_string222:
	.asciz	"end_frame"                     # string offset=2747
.Linfo_string223:
	.asciz	"nframes"                       # string offset=2757
.Linfo_string224:
	.asciz	"crop_x_size"                   # string offset=2765
.Linfo_string225:
	.asciz	"crop_y_size"                   # string offset=2777
.Linfo_string226:
	.asciz	"crop_x_offset"                 # string offset=2789
.Linfo_string227:
	.asciz	"crop_y_offset"                 # string offset=2803
.Linfo_string228:
	.asciz	"avi"                           # string offset=2817
.Linfo_string229:
	.asciz	"video_data_file"               # string offset=2821
.Linfo_string230:
	.asciz	"VideoDataFile"                 # string offset=2837
.Linfo_string231:
	.asciz	"input_file2"                   # string offset=2851
.Linfo_string232:
	.asciz	"input_file3"                   # string offset=2863
.Linfo_string233:
	.asciz	"DecodeAllLayers"               # string offset=2875
.Linfo_string234:
	.asciz	"conceal_mode"                  # string offset=2891
.Linfo_string235:
	.asciz	"ref_poc_gap"                   # string offset=2904
.Linfo_string236:
	.asciz	"poc_gap"                       # string offset=2916
.Linfo_string237:
	.asciz	"stdRange"                      # string offset=2924
.Linfo_string238:
	.asciz	"videoCode"                     # string offset=2933
.Linfo_string239:
	.asciz	"export_views"                  # string offset=2943
.Linfo_string240:
	.asciz	"iDecFrmNum"                    # string offset=2956
.Linfo_string241:
	.asciz	"bDisplayDecParams"             # string offset=2967
.Linfo_string242:
	.asciz	"inp_par"                       # string offset=2985
.Linfo_string243:
	.asciz	"active_pps"                    # string offset=2993
.Linfo_string244:
	.asciz	"Valid"                         # string offset=3004
.Linfo_string245:
	.asciz	"pic_parameter_set_id"          # string offset=3010
.Linfo_string246:
	.asciz	"seq_parameter_set_id"          # string offset=3031
.Linfo_string247:
	.asciz	"entropy_coding_mode_flag"      # string offset=3052
.Linfo_string248:
	.asciz	"transform_8x8_mode_flag"       # string offset=3077
.Linfo_string249:
	.asciz	"pic_scaling_matrix_present_flag" # string offset=3101
.Linfo_string250:
	.asciz	"pic_scaling_list_present_flag" # string offset=3133
.Linfo_string251:
	.asciz	"ScalingList4x4"                # string offset=3163
.Linfo_string252:
	.asciz	"ScalingList8x8"                # string offset=3178
.Linfo_string253:
	.asciz	"UseDefaultScalingMatrix4x4Flag" # string offset=3193
.Linfo_string254:
	.asciz	"UseDefaultScalingMatrix8x8Flag" # string offset=3224
.Linfo_string255:
	.asciz	"bottom_field_pic_order_in_frame_present_flag" # string offset=3255
.Linfo_string256:
	.asciz	"num_slice_groups_minus1"       # string offset=3300
.Linfo_string257:
	.asciz	"slice_group_map_type"          # string offset=3324
.Linfo_string258:
	.asciz	"run_length_minus1"             # string offset=3345
.Linfo_string259:
	.asciz	"top_left"                      # string offset=3363
.Linfo_string260:
	.asciz	"bottom_right"                  # string offset=3372
.Linfo_string261:
	.asciz	"slice_group_change_direction_flag" # string offset=3385
.Linfo_string262:
	.asciz	"slice_group_change_rate_minus1" # string offset=3419
.Linfo_string263:
	.asciz	"pic_size_in_map_units_minus1"  # string offset=3450
.Linfo_string264:
	.asciz	"slice_group_id"                # string offset=3479
.Linfo_string265:
	.asciz	"num_ref_idx_l0_active_minus1"  # string offset=3494
.Linfo_string266:
	.asciz	"num_ref_idx_l1_active_minus1"  # string offset=3523
.Linfo_string267:
	.asciz	"weighted_pred_flag"            # string offset=3552
.Linfo_string268:
	.asciz	"weighted_bipred_idc"           # string offset=3571
.Linfo_string269:
	.asciz	"pic_init_qp_minus26"           # string offset=3591
.Linfo_string270:
	.asciz	"pic_init_qs_minus26"           # string offset=3611
.Linfo_string271:
	.asciz	"chroma_qp_index_offset"        # string offset=3631
.Linfo_string272:
	.asciz	"second_chroma_qp_index_offset" # string offset=3654
.Linfo_string273:
	.asciz	"deblocking_filter_control_present_flag" # string offset=3684
.Linfo_string274:
	.asciz	"constrained_intra_pred_flag"   # string offset=3723
.Linfo_string275:
	.asciz	"redundant_pic_cnt_present_flag" # string offset=3751
.Linfo_string276:
	.asciz	"pic_parameter_set_rbsp_t"      # string offset=3782
.Linfo_string277:
	.asciz	"active_sps"                    # string offset=3807
.Linfo_string278:
	.asciz	"profile_idc"                   # string offset=3818
.Linfo_string279:
	.asciz	"constrained_set0_flag"         # string offset=3830
.Linfo_string280:
	.asciz	"constrained_set1_flag"         # string offset=3852
.Linfo_string281:
	.asciz	"constrained_set2_flag"         # string offset=3874
.Linfo_string282:
	.asciz	"constrained_set3_flag"         # string offset=3896
.Linfo_string283:
	.asciz	"constrained_set4_flag"         # string offset=3918
.Linfo_string284:
	.asciz	"level_idc"                     # string offset=3940
.Linfo_string285:
	.asciz	"seq_scaling_matrix_present_flag" # string offset=3950
.Linfo_string286:
	.asciz	"seq_scaling_list_present_flag" # string offset=3982
.Linfo_string287:
	.asciz	"bit_depth_luma_minus8"         # string offset=4012
.Linfo_string288:
	.asciz	"bit_depth_chroma_minus8"       # string offset=4034
.Linfo_string289:
	.asciz	"log2_max_frame_num_minus4"     # string offset=4058
.Linfo_string290:
	.asciz	"pic_order_cnt_type"            # string offset=4084
.Linfo_string291:
	.asciz	"log2_max_pic_order_cnt_lsb_minus4" # string offset=4103
.Linfo_string292:
	.asciz	"delta_pic_order_always_zero_flag" # string offset=4137
.Linfo_string293:
	.asciz	"offset_for_non_ref_pic"        # string offset=4170
.Linfo_string294:
	.asciz	"offset_for_top_to_bottom_field" # string offset=4193
.Linfo_string295:
	.asciz	"num_ref_frames_in_pic_order_cnt_cycle" # string offset=4224
.Linfo_string296:
	.asciz	"offset_for_ref_frame"          # string offset=4262
.Linfo_string297:
	.asciz	"num_ref_frames"                # string offset=4283
.Linfo_string298:
	.asciz	"gaps_in_frame_num_value_allowed_flag" # string offset=4298
.Linfo_string299:
	.asciz	"pic_width_in_mbs_minus1"       # string offset=4335
.Linfo_string300:
	.asciz	"pic_height_in_map_units_minus1" # string offset=4359
.Linfo_string301:
	.asciz	"mb_adaptive_frame_field_flag"  # string offset=4390
.Linfo_string302:
	.asciz	"direct_8x8_inference_flag"     # string offset=4419
.Linfo_string303:
	.asciz	"vui_parameters_present_flag"   # string offset=4445
.Linfo_string304:
	.asciz	"vui_seq_parameters"            # string offset=4473
.Linfo_string305:
	.asciz	"aspect_ratio_info_present_flag" # string offset=4492
.Linfo_string306:
	.asciz	"aspect_ratio_idc"              # string offset=4523
.Linfo_string307:
	.asciz	"sar_width"                     # string offset=4540
.Linfo_string308:
	.asciz	"sar_height"                    # string offset=4550
.Linfo_string309:
	.asciz	"overscan_info_present_flag"    # string offset=4561
.Linfo_string310:
	.asciz	"overscan_appropriate_flag"     # string offset=4588
.Linfo_string311:
	.asciz	"video_signal_type_present_flag" # string offset=4614
.Linfo_string312:
	.asciz	"video_format"                  # string offset=4645
.Linfo_string313:
	.asciz	"video_full_range_flag"         # string offset=4658
.Linfo_string314:
	.asciz	"colour_description_present_flag" # string offset=4680
.Linfo_string315:
	.asciz	"colour_primaries"              # string offset=4712
.Linfo_string316:
	.asciz	"transfer_characteristics"      # string offset=4729
.Linfo_string317:
	.asciz	"matrix_coefficients"           # string offset=4754
.Linfo_string318:
	.asciz	"chroma_location_info_present_flag" # string offset=4774
.Linfo_string319:
	.asciz	"chroma_sample_loc_type_top_field" # string offset=4808
.Linfo_string320:
	.asciz	"chroma_sample_loc_type_bottom_field" # string offset=4841
.Linfo_string321:
	.asciz	"timing_info_present_flag"      # string offset=4877
.Linfo_string322:
	.asciz	"num_units_in_tick"             # string offset=4902
.Linfo_string323:
	.asciz	"time_scale"                    # string offset=4920
.Linfo_string324:
	.asciz	"fixed_frame_rate_flag"         # string offset=4931
.Linfo_string325:
	.asciz	"nal_hrd_parameters_present_flag" # string offset=4953
.Linfo_string326:
	.asciz	"nal_hrd_parameters"            # string offset=4985
.Linfo_string327:
	.asciz	"cpb_cnt_minus1"                # string offset=5004
.Linfo_string328:
	.asciz	"bit_rate_scale"                # string offset=5019
.Linfo_string329:
	.asciz	"cpb_size_scale"                # string offset=5034
.Linfo_string330:
	.asciz	"bit_rate_value_minus1"         # string offset=5049
.Linfo_string331:
	.asciz	"cpb_size_value_minus1"         # string offset=5071
.Linfo_string332:
	.asciz	"cbr_flag"                      # string offset=5093
.Linfo_string333:
	.asciz	"initial_cpb_removal_delay_length_minus1" # string offset=5102
.Linfo_string334:
	.asciz	"cpb_removal_delay_length_minus1" # string offset=5142
.Linfo_string335:
	.asciz	"dpb_output_delay_length_minus1" # string offset=5174
.Linfo_string336:
	.asciz	"time_offset_length"            # string offset=5205
.Linfo_string337:
	.asciz	"hrd_parameters_t"              # string offset=5224
.Linfo_string338:
	.asciz	"vcl_hrd_parameters_present_flag" # string offset=5241
.Linfo_string339:
	.asciz	"vcl_hrd_parameters"            # string offset=5273
.Linfo_string340:
	.asciz	"low_delay_hrd_flag"            # string offset=5292
.Linfo_string341:
	.asciz	"pic_struct_present_flag"       # string offset=5311
.Linfo_string342:
	.asciz	"bitstream_restriction_flag"    # string offset=5335
.Linfo_string343:
	.asciz	"motion_vectors_over_pic_boundaries_flag" # string offset=5362
.Linfo_string344:
	.asciz	"max_bytes_per_pic_denom"       # string offset=5402
.Linfo_string345:
	.asciz	"max_bits_per_mb_denom"         # string offset=5426
.Linfo_string346:
	.asciz	"log2_max_mv_length_vertical"   # string offset=5448
.Linfo_string347:
	.asciz	"log2_max_mv_length_horizontal" # string offset=5476
.Linfo_string348:
	.asciz	"num_reorder_frames"            # string offset=5506
.Linfo_string349:
	.asciz	"max_dec_frame_buffering"       # string offset=5525
.Linfo_string350:
	.asciz	"vui_seq_parameters_t"          # string offset=5549
.Linfo_string351:
	.asciz	"seq_parameter_set_rbsp_t"      # string offset=5570
.Linfo_string352:
	.asciz	"SeqParSet"                     # string offset=5595
.Linfo_string353:
	.asciz	"PicParSet"                     # string offset=5605
.Linfo_string354:
	.asciz	"active_subset_sps"             # string offset=5615
.Linfo_string355:
	.asciz	"sps"                           # string offset=5633
.Linfo_string356:
	.asciz	"bit_equal_to_one"              # string offset=5637
.Linfo_string357:
	.asciz	"num_views_minus1"              # string offset=5654
.Linfo_string358:
	.asciz	"num_anchor_refs_l0"            # string offset=5671
.Linfo_string359:
	.asciz	"anchor_ref_l0"                 # string offset=5690
.Linfo_string360:
	.asciz	"num_anchor_refs_l1"            # string offset=5704
.Linfo_string361:
	.asciz	"anchor_ref_l1"                 # string offset=5723
.Linfo_string362:
	.asciz	"num_non_anchor_refs_l0"        # string offset=5737
.Linfo_string363:
	.asciz	"non_anchor_ref_l0"             # string offset=5760
.Linfo_string364:
	.asciz	"num_non_anchor_refs_l1"        # string offset=5778
.Linfo_string365:
	.asciz	"non_anchor_ref_l1"             # string offset=5801
.Linfo_string366:
	.asciz	"num_level_values_signalled_minus1" # string offset=5819
.Linfo_string367:
	.asciz	"num_applicable_ops_minus1"     # string offset=5853
.Linfo_string368:
	.asciz	"applicable_op_temporal_id"     # string offset=5879
.Linfo_string369:
	.asciz	"applicable_op_num_target_views_minus1" # string offset=5905
.Linfo_string370:
	.asciz	"applicable_op_target_view_id"  # string offset=5943
.Linfo_string371:
	.asciz	"applicable_op_num_views_minus1" # string offset=5972
.Linfo_string372:
	.asciz	"mvc_vui_parameters_present_flag" # string offset=6003
.Linfo_string373:
	.asciz	"MVCVUIParams"                  # string offset=6035
.Linfo_string374:
	.asciz	"num_ops_minus1"                # string offset=6048
.Linfo_string375:
	.asciz	"temporal_id"                   # string offset=6063
.Linfo_string376:
	.asciz	"num_target_output_views_minus1" # string offset=6075
.Linfo_string377:
	.asciz	"mvcvui_tag"                    # string offset=6106
.Linfo_string378:
	.asciz	"MVCVUI_t"                      # string offset=6117
.Linfo_string379:
	.asciz	"subset_seq_parameter_set_rbsp_t" # string offset=6126
.Linfo_string380:
	.asciz	"SubsetSeqParSet"               # string offset=6158
.Linfo_string381:
	.asciz	"last_pic_width_in_mbs_minus1"  # string offset=6174
.Linfo_string382:
	.asciz	"last_pic_height_in_map_units_minus1" # string offset=6203
.Linfo_string383:
	.asciz	"last_max_dec_frame_buffering"  # string offset=6239
.Linfo_string384:
	.asciz	"last_profile_idc"              # string offset=6268
.Linfo_string385:
	.asciz	"p_SEI"                         # string offset=6285
.Linfo_string386:
	.asciz	"sei_params"                    # string offset=6291
.Linfo_string387:
	.asciz	"old_slice"                     # string offset=6302
.Linfo_string388:
	.asciz	"field_pic_flag"                # string offset=6312
.Linfo_string389:
	.asciz	"nal_ref_idc"                   # string offset=6327
.Linfo_string390:
	.asciz	"pic_oder_cnt_lsb"              # string offset=6339
.Linfo_string391:
	.asciz	"delta_pic_oder_cnt_bottom"     # string offset=6356
.Linfo_string392:
	.asciz	"delta_pic_order_cnt"           # string offset=6382
.Linfo_string393:
	.asciz	"bottom_field_flag"             # string offset=6402
.Linfo_string394:
	.asciz	"idr_pic_id"                    # string offset=6420
.Linfo_string395:
	.asciz	"pps_id"                        # string offset=6431
.Linfo_string396:
	.asciz	"old_slice_par"                 # string offset=6438
.Linfo_string397:
	.asciz	"snr"                           # string offset=6452
.Linfo_string398:
	.asciz	"frame_ctr"                     # string offset=6456
.Linfo_string399:
	.asciz	"float"                         # string offset=6466
.Linfo_string400:
	.asciz	"snr1"                          # string offset=6472
.Linfo_string401:
	.asciz	"snra"                          # string offset=6477
.Linfo_string402:
	.asciz	"sse"                           # string offset=6482
.Linfo_string403:
	.asciz	"msse"                          # string offset=6486
.Linfo_string404:
	.asciz	"snr_par"                       # string offset=6491
.Linfo_string405:
	.asciz	"number"                        # string offset=6499
.Linfo_string406:
	.asciz	"num_dec_mb"                    # string offset=6506
.Linfo_string407:
	.asciz	"iSliceNumOfCurrPic"            # string offset=6517
.Linfo_string408:
	.asciz	"iNumOfSlicesAllocated"         # string offset=6536
.Linfo_string409:
	.asciz	"iNumOfSlicesDecoded"           # string offset=6558
.Linfo_string410:
	.asciz	"ppSliceList"                   # string offset=6578
.Linfo_string411:
	.asciz	"Slice"                         # string offset=6590
.Linfo_string412:
	.asciz	"intra_block"                   # string offset=6596
.Linfo_string413:
	.asciz	"intra_block_JV"                # string offset=6608
.Linfo_string414:
	.asciz	"type"                          # string offset=6623
.Linfo_string415:
	.asciz	"width_cr"                      # string offset=6628
.Linfo_string416:
	.asciz	"height_cr"                     # string offset=6637
.Linfo_string417:
	.asciz	"ipredmode"                     # string offset=6647
.Linfo_string418:
	.asciz	"ipredmode_JV"                  # string offset=6657
.Linfo_string419:
	.asciz	"nz_coeff"                      # string offset=6670
.Linfo_string420:
	.asciz	"siblock"                       # string offset=6679
.Linfo_string421:
	.asciz	"siblock_JV"                    # string offset=6687
.Linfo_string422:
	.asciz	"newframe"                      # string offset=6698
.Linfo_string423:
	.asciz	"pNextSlice"                    # string offset=6707
.Linfo_string424:
	.asciz	"mb_data"                       # string offset=6718
.Linfo_string425:
	.asciz	"mb_data_JV"                    # string offset=6726
.Linfo_string426:
	.asciz	"ChromaArrayType"               # string offset=6737
.Linfo_string427:
	.asciz	"concealment_head"              # string offset=6753
.Linfo_string428:
	.asciz	"concealment_node"              # string offset=6770
.Linfo_string429:
	.asciz	"concealment_end"               # string offset=6787
.Linfo_string430:
	.asciz	"pre_frame_num"                 # string offset=6803
.Linfo_string431:
	.asciz	"non_conforming_stream"         # string offset=6817
.Linfo_string432:
	.asciz	"PrevPicOrderCntMsb"            # string offset=6839
.Linfo_string433:
	.asciz	"PrevPicOrderCntLsb"            # string offset=6858
.Linfo_string434:
	.asciz	"ExpectedPicOrderCnt"           # string offset=6877
.Linfo_string435:
	.asciz	"PicOrderCntCycleCnt"           # string offset=6897
.Linfo_string436:
	.asciz	"FrameNumInPicOrderCntCycle"    # string offset=6917
.Linfo_string437:
	.asciz	"PreviousFrameNum"              # string offset=6944
.Linfo_string438:
	.asciz	"FrameNumOffset"                # string offset=6961
.Linfo_string439:
	.asciz	"ExpectedDeltaPerPicOrderCntCycle" # string offset=6976
.Linfo_string440:
	.asciz	"ThisPOC"                       # string offset=7009
.Linfo_string441:
	.asciz	"PreviousFrameNumOffset"        # string offset=7017
.Linfo_string442:
	.asciz	"MaxFrameNum"                   # string offset=7040
.Linfo_string443:
	.asciz	"PicHeightInMapUnits"           # string offset=7052
.Linfo_string444:
	.asciz	"FrameHeightInMbs"              # string offset=7072
.Linfo_string445:
	.asciz	"PicHeightInMbs"                # string offset=7089
.Linfo_string446:
	.asciz	"FrameSizeInMbs"                # string offset=7104
.Linfo_string447:
	.asciz	"oldFrameSizeInMbs"             # string offset=7119
.Linfo_string448:
	.asciz	"last_has_mmco_5"               # string offset=7137
.Linfo_string449:
	.asciz	"last_pic_bottom_field"         # string offset=7153
.Linfo_string450:
	.asciz	"pic_unit_bitsize_on_disk"      # string offset=7175
.Linfo_string451:
	.asciz	"bitdepth_luma"                 # string offset=7200
.Linfo_string452:
	.asciz	"bitdepth_chroma"               # string offset=7214
.Linfo_string453:
	.asciz	"bitdepth_scale"                # string offset=7230
.Linfo_string454:
	.asciz	"bitdepth_luma_qp_scale"        # string offset=7245
.Linfo_string455:
	.asciz	"bitdepth_chroma_qp_scale"      # string offset=7268
.Linfo_string456:
	.asciz	"dc_pred_value_comp"            # string offset=7293
.Linfo_string457:
	.asciz	"max_pel_value_comp"            # string offset=7312
.Linfo_string458:
	.asciz	"lossless_qpprime_flag"         # string offset=7331
.Linfo_string459:
	.asciz	"num_blk8x8_uv"                 # string offset=7353
.Linfo_string460:
	.asciz	"num_uv_blocks"                 # string offset=7367
.Linfo_string461:
	.asciz	"num_cdc_coeff"                 # string offset=7381
.Linfo_string462:
	.asciz	"mb_cr_size_x"                  # string offset=7395
.Linfo_string463:
	.asciz	"mb_cr_size_y"                  # string offset=7408
.Linfo_string464:
	.asciz	"mb_cr_size_x_blk"              # string offset=7421
.Linfo_string465:
	.asciz	"mb_cr_size_y_blk"              # string offset=7438
.Linfo_string466:
	.asciz	"mb_size"                       # string offset=7455
.Linfo_string467:
	.asciz	"mb_size_blk"                   # string offset=7463
.Linfo_string468:
	.asciz	"mb_size_shift"                 # string offset=7475
.Linfo_string469:
	.asciz	"subpel_x"                      # string offset=7489
.Linfo_string470:
	.asciz	"subpel_y"                      # string offset=7498
.Linfo_string471:
	.asciz	"shiftpel_x"                    # string offset=7507
.Linfo_string472:
	.asciz	"shiftpel_y"                    # string offset=7518
.Linfo_string473:
	.asciz	"total_scale"                   # string offset=7529
.Linfo_string474:
	.asciz	"max_vmv_r"                     # string offset=7541
.Linfo_string475:
	.asciz	"idr_psnr_number"               # string offset=7551
.Linfo_string476:
	.asciz	"psnr_number"                   # string offset=7567
.Linfo_string477:
	.asciz	"last_ref_pic_poc"              # string offset=7579
.Linfo_string478:
	.asciz	"earlier_missing_poc"           # string offset=7596
.Linfo_string479:
	.asciz	"frame_to_conceal"              # string offset=7616
.Linfo_string480:
	.asciz	"IDR_concealment_flag"          # string offset=7633
.Linfo_string481:
	.asciz	"conceal_slice_type"            # string offset=7654
.Linfo_string482:
	.asciz	"recovery_point"                # string offset=7673
.Linfo_string483:
	.asciz	"recovery_point_found"          # string offset=7688
.Linfo_string484:
	.asciz	"recovery_frame_cnt"            # string offset=7709
.Linfo_string485:
	.asciz	"recovery_frame_num"            # string offset=7728
.Linfo_string486:
	.asciz	"recovery_poc"                  # string offset=7747
.Linfo_string487:
	.asciz	"buf"                           # string offset=7760
.Linfo_string488:
	.asciz	"ibuf"                          # string offset=7764
.Linfo_string489:
	.asciz	"imgData"                       # string offset=7769
.Linfo_string490:
	.asciz	"frm_data"                      # string offset=7777
.Linfo_string491:
	.asciz	"top_data"                      # string offset=7786
.Linfo_string492:
	.asciz	"bot_data"                      # string offset=7795
.Linfo_string493:
	.asciz	"frm_uint16"                    # string offset=7804
.Linfo_string494:
	.asciz	"top_uint16"                    # string offset=7815
.Linfo_string495:
	.asciz	"bot_uint16"                    # string offset=7826
.Linfo_string496:
	.asciz	"frm_stride"                    # string offset=7837
.Linfo_string497:
	.asciz	"top_stride"                    # string offset=7848
.Linfo_string498:
	.asciz	"bot_stride"                    # string offset=7859
.Linfo_string499:
	.asciz	"image_data"                    # string offset=7870
.Linfo_string500:
	.asciz	"ImageData"                     # string offset=7881
.Linfo_string501:
	.asciz	"imgData0"                      # string offset=7891
.Linfo_string502:
	.asciz	"imgData1"                      # string offset=7900
.Linfo_string503:
	.asciz	"imgData2"                      # string offset=7909
.Linfo_string504:
	.asciz	"imgData32"                     # string offset=7918
.Linfo_string505:
	.asciz	"imgData4"                      # string offset=7928
.Linfo_string506:
	.asciz	"imgData5"                      # string offset=7937
.Linfo_string507:
	.asciz	"imgData6"                      # string offset=7946
.Linfo_string508:
	.asciz	"previous_frame_num"            # string offset=7955
.Linfo_string509:
	.asciz	"Is_primary_correct"            # string offset=7974
.Linfo_string510:
	.asciz	"Is_redundant_correct"          # string offset=7993
.Linfo_string511:
	.asciz	"tot_time"                      # string offset=8014
.Linfo_string512:
	.asciz	"long"                          # string offset=8023
.Linfo_string513:
	.asciz	"__int64_t"                     # string offset=8028
.Linfo_string514:
	.asciz	"int64_t"                       # string offset=8038
.Linfo_string515:
	.asciz	"int64"                         # string offset=8046
.Linfo_string516:
	.asciz	"p_out"                         # string offset=8052
.Linfo_string517:
	.asciz	"p_out_mvc"                     # string offset=8058
.Linfo_string518:
	.asciz	"p_ref"                         # string offset=8068
.Linfo_string519:
	.asciz	"LastAccessUnitExists"          # string offset=8074
.Linfo_string520:
	.asciz	"NALUCount"                     # string offset=8095
.Linfo_string521:
	.asciz	"Bframe_ctr"                    # string offset=8105
.Linfo_string522:
	.asciz	"frame_no"                      # string offset=8116
.Linfo_string523:
	.asciz	"g_nFrame"                      # string offset=8125
.Linfo_string524:
	.asciz	"global_init_done"              # string offset=8134
.Linfo_string525:
	.asciz	"imgY_ref"                      # string offset=8151
.Linfo_string526:
	.asciz	"imgUV_ref"                     # string offset=8160
.Linfo_string527:
	.asciz	"qp_per_matrix"                 # string offset=8170
.Linfo_string528:
	.asciz	"qp_rem_matrix"                 # string offset=8184
.Linfo_string529:
	.asciz	"last_out_fs"                   # string offset=8198
.Linfo_string530:
	.asciz	"is_used"                       # string offset=8210
.Linfo_string531:
	.asciz	"is_reference"                  # string offset=8218
.Linfo_string532:
	.asciz	"is_orig_reference"             # string offset=8231
.Linfo_string533:
	.asciz	"is_non_existent"               # string offset=8249
.Linfo_string534:
	.asciz	"frame_num_wrap"                # string offset=8265
.Linfo_string535:
	.asciz	"concealment_reference"         # string offset=8280
.Linfo_string536:
	.asciz	"StorablePicture"               # string offset=8302
.Linfo_string537:
	.asciz	"frame_store"                   # string offset=8318
.Linfo_string538:
	.asciz	"pocs_in_dpb"                   # string offset=8330
.Linfo_string539:
	.asciz	"dec_picture"                   # string offset=8342
.Linfo_string540:
	.asciz	"dec_picture_JV"                # string offset=8354
.Linfo_string541:
	.asciz	"no_reference_picture"          # string offset=8369
.Linfo_string542:
	.asciz	"erc_object_list"               # string offset=8390
.Linfo_string543:
	.asciz	"object_buffer"                 # string offset=8406
.Linfo_string544:
	.asciz	"erc_errorVar"                  # string offset=8420
.Linfo_string545:
	.asciz	"ercVariables_s"                # string offset=8433
.Linfo_string546:
	.asciz	"erc_mvperMB"                   # string offset=8448
.Linfo_string547:
	.asciz	"erc_img"                       # string offset=8460
.Linfo_string548:
	.asciz	"ec_flag"                       # string offset=8468
.Linfo_string549:
	.asciz	"annex_b"                       # string offset=8476
.Linfo_string550:
	.asciz	"annex_b_struct"                # string offset=8484
.Linfo_string551:
	.asciz	"bitsfile"                      # string offset=8499
.Linfo_string552:
	.asciz	"sBitsFile"                     # string offset=8508
.Linfo_string553:
	.asciz	"out_buffer"                    # string offset=8518
.Linfo_string554:
	.asciz	"pending_output"                # string offset=8529
.Linfo_string555:
	.asciz	"pending_output_state"          # string offset=8544
.Linfo_string556:
	.asciz	"recovery_flag"                 # string offset=8565
.Linfo_string557:
	.asciz	"BitStreamFile"                 # string offset=8579
.Linfo_string558:
	.asciz	"p_Dpb"                         # string offset=8593
.Linfo_string559:
	.asciz	"VideoParameters"               # string offset=8599
.Linfo_string560:
	.asciz	"InputParameters"               # string offset=8615
.Linfo_string561:
	.asciz	"fs"                            # string offset=8631
.Linfo_string562:
	.asciz	"FrameStore"                    # string offset=8634
.Linfo_string563:
	.asciz	"fs_ref"                        # string offset=8645
.Linfo_string564:
	.asciz	"fs_ltref"                      # string offset=8652
.Linfo_string565:
	.asciz	"used_size"                     # string offset=8661
.Linfo_string566:
	.asciz	"ref_frames_in_buffer"          # string offset=8671
.Linfo_string567:
	.asciz	"ltref_frames_in_buffer"        # string offset=8692
.Linfo_string568:
	.asciz	"last_output_poc"               # string offset=8715
.Linfo_string569:
	.asciz	"last_output_view_id"           # string offset=8731
.Linfo_string570:
	.asciz	"max_long_term_pic_idx"         # string offset=8751
.Linfo_string571:
	.asciz	"init_done"                     # string offset=8773
.Linfo_string572:
	.asciz	"last_picture"                  # string offset=8783
.Linfo_string573:
	.asciz	"decoded_picture_buffer"        # string offset=8796
.Linfo_string574:
	.asciz	"p_Dpb_legacy"                  # string offset=8819
.Linfo_string575:
	.asciz	"p_Dpb_layer"                   # string offset=8832
.Linfo_string576:
	.asciz	"cslice_type"                   # string offset=8844
.Linfo_string577:
	.asciz	"MbToSliceGroupMap"             # string offset=8856
.Linfo_string578:
	.asciz	"MapUnitToSliceGroupMap"        # string offset=8874
.Linfo_string579:
	.asciz	"NumberOfSliceGroups"           # string offset=8897
.Linfo_string580:
	.asciz	"seiToneMapping"                # string offset=8917
.Linfo_string581:
	.asciz	"tone_mapping_struct_s"         # string offset=8932
.Linfo_string582:
	.asciz	"buf2img"                       # string offset=8954
.Linfo_string583:
	.asciz	"getNeighbour"                  # string offset=8962
.Linfo_string584:
	.asciz	"available"                     # string offset=8975
.Linfo_string585:
	.asciz	"mb_addr"                       # string offset=8985
.Linfo_string586:
	.asciz	"pos_x"                         # string offset=8993
.Linfo_string587:
	.asciz	"pos_y"                         # string offset=8999
.Linfo_string588:
	.asciz	"pix_pos"                       # string offset=9005
.Linfo_string589:
	.asciz	"PixelPos"                      # string offset=9013
.Linfo_string590:
	.asciz	"get_mb_block_pos"              # string offset=9022
.Linfo_string591:
	.asciz	"GetStrengthVer"                # string offset=9039
.Linfo_string592:
	.asciz	"GetStrengthHor"                # string offset=9054
.Linfo_string593:
	.asciz	"EdgeLoopLumaVer"               # string offset=9069
.Linfo_string594:
	.asciz	"ColorPlane"                    # string offset=9085
.Linfo_string595:
	.asciz	"EdgeLoopLumaHor"               # string offset=9096
.Linfo_string596:
	.asciz	"EdgeLoopChromaVer"             # string offset=9112
.Linfo_string597:
	.asciz	"EdgeLoopChromaHor"             # string offset=9130
.Linfo_string598:
	.asciz	"img2buf"                       # string offset=9148
.Linfo_string599:
	.asciz	"pDecOuputPic"                  # string offset=9156
.Linfo_string600:
	.asciz	"bValid"                        # string offset=9169
.Linfo_string601:
	.asciz	"iViewId"                       # string offset=9176
.Linfo_string602:
	.asciz	"iPOC"                          # string offset=9184
.Linfo_string603:
	.asciz	"iYUVFormat"                    # string offset=9189
.Linfo_string604:
	.asciz	"iYUVStorageFormat"             # string offset=9200
.Linfo_string605:
	.asciz	"iBitDepth"                     # string offset=9218
.Linfo_string606:
	.asciz	"pY"                            # string offset=9228
.Linfo_string607:
	.asciz	"pU"                            # string offset=9231
.Linfo_string608:
	.asciz	"pV"                            # string offset=9234
.Linfo_string609:
	.asciz	"iWidth"                        # string offset=9237
.Linfo_string610:
	.asciz	"iHeight"                       # string offset=9244
.Linfo_string611:
	.asciz	"iYBufStride"                   # string offset=9252
.Linfo_string612:
	.asciz	"iUVBufStride"                  # string offset=9264
.Linfo_string613:
	.asciz	"iSkipPicNum"                   # string offset=9277
.Linfo_string614:
	.asciz	"pNext"                         # string offset=9289
.Linfo_string615:
	.asciz	"decodedpic_t"                  # string offset=9295
.Linfo_string616:
	.asciz	"DecodedPicList"                # string offset=9308
.Linfo_string617:
	.asciz	"iDeblockMode"                  # string offset=9323
.Linfo_string618:
	.asciz	"nalu"                          # string offset=9336
.Linfo_string619:
	.asciz	"nalu_t"                        # string offset=9341
.Linfo_string620:
	.asciz	"bDeblockEnable"                # string offset=9348
.Linfo_string621:
	.asciz	"iPostProcess"                  # string offset=9363
.Linfo_string622:
	.asciz	"bFrameInit"                    # string offset=9376
.Linfo_string623:
	.asciz	"pNextPPS"                      # string offset=9387
.Linfo_string624:
	.asciz	"video_par"                     # string offset=9396
.Linfo_string625:
	.asciz	"svc_extension_flag"            # string offset=9406
.Linfo_string626:
	.asciz	"nal_reference_idc"             # string offset=9425
.Linfo_string627:
	.asciz	"Transform8x8Mode"              # string offset=9443
.Linfo_string628:
	.asciz	"is_not_independent"            # string offset=9460
.Linfo_string629:
	.asciz	"toppoc"                        # string offset=9479
.Linfo_string630:
	.asciz	"bottompoc"                     # string offset=9486
.Linfo_string631:
	.asciz	"framepoc"                      # string offset=9496
.Linfo_string632:
	.asciz	"pic_order_cnt_lsb"             # string offset=9505
.Linfo_string633:
	.asciz	"delta_pic_order_cnt_bottom"    # string offset=9523
.Linfo_string634:
	.asciz	"PicOrderCntMsb"                # string offset=9550
.Linfo_string635:
	.asciz	"AbsFrameNum"                   # string offset=9565
.Linfo_string636:
	.asciz	"current_mb_nr"                 # string offset=9577
.Linfo_string637:
	.asciz	"current_slice_nr"              # string offset=9591
.Linfo_string638:
	.asciz	"cod_counter"                   # string offset=9608
.Linfo_string639:
	.asciz	"allrefzero"                    # string offset=9620
.Linfo_string640:
	.asciz	"direct_spatial_mv_pred_flag"   # string offset=9631
.Linfo_string641:
	.asciz	"num_ref_idx_active"            # string offset=9659
.Linfo_string642:
	.asciz	"ei_flag"                       # string offset=9678
.Linfo_string643:
	.asciz	"qs"                            # string offset=9686
.Linfo_string644:
	.asciz	"slice_qs_delta"                # string offset=9689
.Linfo_string645:
	.asciz	"model_number"                  # string offset=9704
.Linfo_string646:
	.asciz	"start_mb_nr"                   # string offset=9717
.Linfo_string647:
	.asciz	"end_mb_nr_plus1"               # string offset=9729
.Linfo_string648:
	.asciz	"max_part_nr"                   # string offset=9745
.Linfo_string649:
	.asciz	"dp_mode"                       # string offset=9757
.Linfo_string650:
	.asciz	"current_header"                # string offset=9765
.Linfo_string651:
	.asciz	"next_header"                   # string offset=9780
.Linfo_string652:
	.asciz	"last_dquant"                   # string offset=9792
.Linfo_string653:
	.asciz	"colour_plane_id"               # string offset=9804
.Linfo_string654:
	.asciz	"redundant_pic_cnt"             # string offset=9820
.Linfo_string655:
	.asciz	"sp_switch"                     # string offset=9838
.Linfo_string656:
	.asciz	"slice_group_change_cycle"      # string offset=9848
.Linfo_string657:
	.asciz	"redundant_slice_ref_idx"       # string offset=9873
.Linfo_string658:
	.asciz	"partArr"                       # string offset=9897
.Linfo_string659:
	.asciz	"bitstream"                     # string offset=9905
.Linfo_string660:
	.asciz	"read_len"                      # string offset=9915
.Linfo_string661:
	.asciz	"code_len"                      # string offset=9924
.Linfo_string662:
	.asciz	"frame_bitoffset"               # string offset=9933
.Linfo_string663:
	.asciz	"bitstream_length"              # string offset=9949
.Linfo_string664:
	.asciz	"streamBuffer"                  # string offset=9966
.Linfo_string665:
	.asciz	"bit_stream"                    # string offset=9979
.Linfo_string666:
	.asciz	"Bitstream"                     # string offset=9990
.Linfo_string667:
	.asciz	"de_cabac"                      # string offset=10000
.Linfo_string668:
	.asciz	"Drange"                        # string offset=10009
.Linfo_string669:
	.asciz	"Dvalue"                        # string offset=10016
.Linfo_string670:
	.asciz	"DbitsLeft"                     # string offset=10023
.Linfo_string671:
	.asciz	"Dcodestrm"                     # string offset=10033
.Linfo_string672:
	.asciz	"Dcodestrm_len"                 # string offset=10043
.Linfo_string673:
	.asciz	"DecodingEnvironment"           # string offset=10057
.Linfo_string674:
	.asciz	"readSyntaxElement"             # string offset=10077
.Linfo_string675:
	.asciz	"value1"                        # string offset=10095
.Linfo_string676:
	.asciz	"value2"                        # string offset=10102
.Linfo_string677:
	.asciz	"len"                           # string offset=10109
.Linfo_string678:
	.asciz	"inf"                           # string offset=10113
.Linfo_string679:
	.asciz	"bitpattern"                    # string offset=10117
.Linfo_string680:
	.asciz	"context"                       # string offset=10128
.Linfo_string681:
	.asciz	"k"                             # string offset=10136
.Linfo_string682:
	.asciz	"mapping"                       # string offset=10138
.Linfo_string683:
	.asciz	"reading"                       # string offset=10146
.Linfo_string684:
	.asciz	"DecodingEnvironmentPtr"        # string offset=10154
.Linfo_string685:
	.asciz	"syntaxelement"                 # string offset=10177
.Linfo_string686:
	.asciz	"SyntaxElement"                 # string offset=10191
.Linfo_string687:
	.asciz	"datapartition"                 # string offset=10205
.Linfo_string688:
	.asciz	"DataPartition"                 # string offset=10219
.Linfo_string689:
	.asciz	"mot_ctx"                       # string offset=10233
.Linfo_string690:
	.asciz	"mb_type_contexts"              # string offset=10241
.Linfo_string691:
	.asciz	"state"                         # string offset=10258
.Linfo_string692:
	.asciz	"MPS"                           # string offset=10264
.Linfo_string693:
	.asciz	"dummy"                         # string offset=10268
.Linfo_string694:
	.asciz	"BiContextType"                 # string offset=10274
.Linfo_string695:
	.asciz	"b8_type_contexts"              # string offset=10288
.Linfo_string696:
	.asciz	"mv_res_contexts"               # string offset=10305
.Linfo_string697:
	.asciz	"ref_no_contexts"               # string offset=10321
.Linfo_string698:
	.asciz	"delta_qp_contexts"             # string offset=10337
.Linfo_string699:
	.asciz	"mb_aff_contexts"               # string offset=10355
.Linfo_string700:
	.asciz	"MotionInfoContexts"            # string offset=10371
.Linfo_string701:
	.asciz	"tex_ctx"                       # string offset=10390
.Linfo_string702:
	.asciz	"transform_size_contexts"       # string offset=10398
.Linfo_string703:
	.asciz	"ipr_contexts"                  # string offset=10422
.Linfo_string704:
	.asciz	"cipr_contexts"                 # string offset=10435
.Linfo_string705:
	.asciz	"cbp_contexts"                  # string offset=10449
.Linfo_string706:
	.asciz	"bcbp_contexts"                 # string offset=10462
.Linfo_string707:
	.asciz	"map_contexts"                  # string offset=10476
.Linfo_string708:
	.asciz	"last_contexts"                 # string offset=10489
.Linfo_string709:
	.asciz	"one_contexts"                  # string offset=10503
.Linfo_string710:
	.asciz	"abs_contexts"                  # string offset=10516
.Linfo_string711:
	.asciz	"TextureInfoContexts"           # string offset=10529
.Linfo_string712:
	.asciz	"mvscale"                       # string offset=10549
.Linfo_string713:
	.asciz	"ref_pic_list_reordering_flag"  # string offset=10557
.Linfo_string714:
	.asciz	"reordering_of_pic_nums_idc"    # string offset=10586
.Linfo_string715:
	.asciz	"abs_diff_pic_num_minus1"       # string offset=10613
.Linfo_string716:
	.asciz	"long_term_pic_idx"             # string offset=10637
.Linfo_string717:
	.asciz	"abs_diff_view_idx_minus1"      # string offset=10655
.Linfo_string718:
	.asciz	"NaluHeaderMVCExt"              # string offset=10680
.Linfo_string719:
	.asciz	"non_idr_flag"                  # string offset=10697
.Linfo_string720:
	.asciz	"priority_id"                   # string offset=10710
.Linfo_string721:
	.asciz	"reserved_one_bit"              # string offset=10722
.Linfo_string722:
	.asciz	"iPrefixNALU"                   # string offset=10739
.Linfo_string723:
	.asciz	"nalunitheadermvcext_tag"       # string offset=10751
.Linfo_string724:
	.asciz	"NALUnitHeaderMVCExt_t"         # string offset=10775
.Linfo_string725:
	.asciz	"DFDisableIdc"                  # string offset=10797
.Linfo_string726:
	.asciz	"DFAlphaC0Offset"               # string offset=10810
.Linfo_string727:
	.asciz	"DFBetaOffset"                  # string offset=10826
.Linfo_string728:
	.asciz	"dpB_NotPresent"                # string offset=10839
.Linfo_string729:
	.asciz	"dpC_NotPresent"                # string offset=10854
.Linfo_string730:
	.asciz	"is_reset_coeff"                # string offset=10869
.Linfo_string731:
	.asciz	"mb_pred"                       # string offset=10884
.Linfo_string732:
	.asciz	"mb_rec"                        # string offset=10892
.Linfo_string733:
	.asciz	"mb_rres"                       # string offset=10899
.Linfo_string734:
	.asciz	"cof"                           # string offset=10907
.Linfo_string735:
	.asciz	"fcf"                           # string offset=10911
.Linfo_string736:
	.asciz	"cofu"                          # string offset=10915
.Linfo_string737:
	.asciz	"tmp_block_l0"                  # string offset=10920
.Linfo_string738:
	.asciz	"tmp_block_l1"                  # string offset=10933
.Linfo_string739:
	.asciz	"tmp_res"                       # string offset=10946
.Linfo_string740:
	.asciz	"tmp_block_l2"                  # string offset=10954
.Linfo_string741:
	.asciz	"tmp_block_l3"                  # string offset=10967
.Linfo_string742:
	.asciz	"InvLevelScale4x4_Intra"        # string offset=10980
.Linfo_string743:
	.asciz	"InvLevelScale4x4_Inter"        # string offset=11003
.Linfo_string744:
	.asciz	"InvLevelScale8x8_Intra"        # string offset=11026
.Linfo_string745:
	.asciz	"InvLevelScale8x8_Inter"        # string offset=11049
.Linfo_string746:
	.asciz	"qmatrix"                       # string offset=11072
.Linfo_string747:
	.asciz	"coeff"                         # string offset=11080
.Linfo_string748:
	.asciz	"coeff_ctr"                     # string offset=11086
.Linfo_string749:
	.asciz	"pos"                           # string offset=11096
.Linfo_string750:
	.asciz	"luma_log2_weight_denom"        # string offset=11100
.Linfo_string751:
	.asciz	"chroma_log2_weight_denom"      # string offset=11123
.Linfo_string752:
	.asciz	"wp_weight"                     # string offset=11148
.Linfo_string753:
	.asciz	"wp_offset"                     # string offset=11158
.Linfo_string754:
	.asciz	"wbp_weight"                    # string offset=11168
.Linfo_string755:
	.asciz	"wp_round_luma"                 # string offset=11179
.Linfo_string756:
	.asciz	"wp_round_chroma"               # string offset=11193
.Linfo_string757:
	.asciz	"listinterviewidx0"             # string offset=11209
.Linfo_string758:
	.asciz	"listinterviewidx1"             # string offset=11227
.Linfo_string759:
	.asciz	"fs_listinterview0"             # string offset=11245
.Linfo_string760:
	.asciz	"fs_listinterview1"             # string offset=11263
.Linfo_string761:
	.asciz	"max_mb_vmv_r"                  # string offset=11281
.Linfo_string762:
	.asciz	"ref_flag"                      # string offset=11294
.Linfo_string763:
	.asciz	"read_CBP_and_coeffs_from_NAL"  # string offset=11303
.Linfo_string764:
	.asciz	"decode_one_component"          # string offset=11332
.Linfo_string765:
	.asciz	"readSlice"                     # string offset=11353
.Linfo_string766:
	.asciz	"nal_startcode_follows"         # string offset=11363
.Linfo_string767:
	.asciz	"read_motion_info_from_NAL"     # string offset=11385
.Linfo_string768:
	.asciz	"read_one_macroblock"           # string offset=11411
.Linfo_string769:
	.asciz	"interpret_mb_mode"             # string offset=11431
.Linfo_string770:
	.asciz	"init_lists"                    # string offset=11449
.Linfo_string771:
	.asciz	"intrapred_chroma"              # string offset=11460
.Linfo_string772:
	.asciz	"linfo_cbp_intra"               # string offset=11477
.Linfo_string773:
	.asciz	"linfo_cbp_inter"               # string offset=11493
.Linfo_string774:
	.asciz	"update_direct_mv_info"         # string offset=11509
.Linfo_string775:
	.asciz	"chroma_vector_adjustment"      # string offset=11531
.Linfo_string776:
	.asciz	"slice"                         # string offset=11556
.Linfo_string777:
	.asciz	"mbAddrX"                       # string offset=11562
.Linfo_string778:
	.asciz	"mb"                            # string offset=11570
.Linfo_string779:
	.asciz	"BlockPos"                      # string offset=11573
.Linfo_string780:
	.asciz	"block_x"                       # string offset=11582
.Linfo_string781:
	.asciz	"block_y"                       # string offset=11590
.Linfo_string782:
	.asciz	"block_y_aff"                   # string offset=11598
.Linfo_string783:
	.asciz	"pix_x"                         # string offset=11610
.Linfo_string784:
	.asciz	"pix_y"                         # string offset=11616
.Linfo_string785:
	.asciz	"pix_c_x"                       # string offset=11622
.Linfo_string786:
	.asciz	"pix_c_y"                       # string offset=11630
.Linfo_string787:
	.asciz	"subblock_x"                    # string offset=11638
.Linfo_string788:
	.asciz	"subblock_y"                    # string offset=11649
.Linfo_string789:
	.asciz	"qpc"                           # string offset=11660
.Linfo_string790:
	.asciz	"qp_scaled"                     # string offset=11664
.Linfo_string791:
	.asciz	"is_lossless"                   # string offset=11674
.Linfo_string792:
	.asciz	"is_intra_block"                # string offset=11686
.Linfo_string793:
	.asciz	"is_v_block"                    # string offset=11701
.Linfo_string794:
	.asciz	"DeblockCall"                   # string offset=11712
.Linfo_string795:
	.asciz	"slice_nr"                      # string offset=11724
.Linfo_string796:
	.asciz	"dpl_flag"                      # string offset=11733
.Linfo_string797:
	.asciz	"delta_quant"                   # string offset=11742
.Linfo_string798:
	.asciz	"list_offset"                   # string offset=11754
.Linfo_string799:
	.asciz	"mb_up"                         # string offset=11766
.Linfo_string800:
	.asciz	"mb_left"                       # string offset=11772
.Linfo_string801:
	.asciz	"mbup"                          # string offset=11780
.Linfo_string802:
	.asciz	"mbleft"                        # string offset=11785
.Linfo_string803:
	.asciz	"mb_type"                       # string offset=11792
.Linfo_string804:
	.asciz	"mvd"                           # string offset=11800
.Linfo_string805:
	.asciz	"cbp"                           # string offset=11804
.Linfo_string806:
	.asciz	"cbp_blk"                       # string offset=11808
.Linfo_string807:
	.asciz	"cbp_bits"                      # string offset=11816
.Linfo_string808:
	.asciz	"cbp_bits_8x8"                  # string offset=11825
.Linfo_string809:
	.asciz	"i16mode"                       # string offset=11838
.Linfo_string810:
	.asciz	"b8mode"                        # string offset=11846
.Linfo_string811:
	.asciz	"b8pdir"                        # string offset=11853
.Linfo_string812:
	.asciz	"ipmode_DPCM"                   # string offset=11860
.Linfo_string813:
	.asciz	"c_ipred_mode"                  # string offset=11872
.Linfo_string814:
	.asciz	"skip_flag"                     # string offset=11885
.Linfo_string815:
	.asciz	"mbAddrA"                       # string offset=11895
.Linfo_string816:
	.asciz	"mbAddrB"                       # string offset=11903
.Linfo_string817:
	.asciz	"mbAddrC"                       # string offset=11911
.Linfo_string818:
	.asciz	"mbAddrD"                       # string offset=11919
.Linfo_string819:
	.asciz	"mbAvailA"                      # string offset=11927
.Linfo_string820:
	.asciz	"mbAvailB"                      # string offset=11936
.Linfo_string821:
	.asciz	"mbAvailC"                      # string offset=11945
.Linfo_string822:
	.asciz	"mbAvailD"                      # string offset=11954
.Linfo_string823:
	.asciz	"luma_transform_size_8x8_flag"  # string offset=11963
.Linfo_string824:
	.asciz	"NoMbPartLessThan8x8Flag"       # string offset=11992
.Linfo_string825:
	.asciz	"itrans_4x4"                    # string offset=12016
.Linfo_string826:
	.asciz	"itrans_8x8"                    # string offset=12027
.Linfo_string827:
	.asciz	"GetMVPredictor"                # string offset=12038
.Linfo_string828:
	.asciz	"read_and_store_CBP_block_bit"  # string offset=12053
.Linfo_string829:
	.asciz	"readRefPictureIdx"             # string offset=12082
.Linfo_string830:
	.asciz	"mixedModeEdgeFlag"             # string offset=12100
.Linfo_string831:
	.asciz	"macroblock"                    # string offset=12118
.Linfo_string832:
	.asciz	"Macroblock"                    # string offset=12129
.Linfo_string833:
	.asciz	"error"                         # string offset=12140
.Linfo_string834:
	.asciz	"get_colocated_info_4x4"        # string offset=12146
.Linfo_string835:
	.asciz	"currMB"                        # string offset=12169
.Linfo_string836:
	.asciz	"list1"                         # string offset=12176
.Linfo_string837:
	.asciz	"i"                             # string offset=12182
.Linfo_string838:
	.asciz	"j"                             # string offset=12184
.Linfo_string839:
	.asciz	"moving"                        # string offset=12186
.Linfo_string840:
	.asciz	"DW_ATE_signed_32"              # string offset=12193
.Linfo_string841:
	.asciz	"DW_ATE_signed_16"              # string offset=12210
.Linfo_string842:
	.asciz	"get_colocated_info_8x8"        # string offset=12227
.Linfo_string843:
	.asciz	"update_direct_types"           # string offset=12250
.Linfo_string844:
	.asciz	"update_direct_mv_info_spatial_8x8" # string offset=12270
.Linfo_string845:
	.asciz	"update_direct_mv_info_temporal" # string offset=12304
.Linfo_string846:
	.asciz	"update_direct_mv_info_spatial_4x4" # string offset=12335
.Linfo_string847:
	.asciz	"currSlice"                     # string offset=12369
.Linfo_string848:
	.asciz	"ii"                            # string offset=12379
.Linfo_string849:
	.asciz	"jdiv"                          # string offset=12382
.Linfo_string850:
	.asciz	"jj"                            # string offset=12387
.Linfo_string851:
	.asciz	"l0_rFrame"                     # string offset=12390
.Linfo_string852:
	.asciz	"l1_rFrame"                     # string offset=12400
.Linfo_string853:
	.asciz	"pmvl0"                         # string offset=12410
.Linfo_string854:
	.asciz	"pmvl1"                         # string offset=12416
.Linfo_string855:
	.asciz	"list0"                         # string offset=12422
.Linfo_string856:
	.asciz	"j4"                            # string offset=12428
.Linfo_string857:
	.asciz	"has_direct"                    # string offset=12431
.Linfo_string858:
	.asciz	"is_not_moving"                 # string offset=12442
.Linfo_string859:
	.asciz	"partmode"                      # string offset=12456
.Linfo_string860:
	.asciz	"j0"                            # string offset=12465
.Linfo_string861:
	.asciz	"i0"                            # string offset=12468
.Linfo_string862:
	.asciz	"mapped_idx"                    # string offset=12471
.Linfo_string863:
	.asciz	"iref"                          # string offset=12482
.Linfo_string864:
	.asciz	"colocated"                     # string offset=12487
.Linfo_string865:
	.asciz	"j6"                            # string offset=12497
.Linfo_string866:
	.asciz	"mv_scale"                      # string offset=12500
.Linfo_string867:
	.asciz	"step_h0"                       # string offset=12509
.Linfo_string868:
	.asciz	"step_v0"                       # string offset=12517
.Linfo_string869:
	.asciz	"refList"                       # string offset=12525
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
	.long	.Linfo_string309
	.long	.Linfo_string310
	.long	.Linfo_string311
	.long	.Linfo_string312
	.long	.Linfo_string313
	.long	.Linfo_string314
	.long	.Linfo_string315
	.long	.Linfo_string316
	.long	.Linfo_string317
	.long	.Linfo_string318
	.long	.Linfo_string319
	.long	.Linfo_string320
	.long	.Linfo_string321
	.long	.Linfo_string322
	.long	.Linfo_string323
	.long	.Linfo_string324
	.long	.Linfo_string325
	.long	.Linfo_string326
	.long	.Linfo_string327
	.long	.Linfo_string328
	.long	.Linfo_string329
	.long	.Linfo_string330
	.long	.Linfo_string331
	.long	.Linfo_string332
	.long	.Linfo_string333
	.long	.Linfo_string334
	.long	.Linfo_string335
	.long	.Linfo_string336
	.long	.Linfo_string337
	.long	.Linfo_string338
	.long	.Linfo_string339
	.long	.Linfo_string340
	.long	.Linfo_string341
	.long	.Linfo_string342
	.long	.Linfo_string343
	.long	.Linfo_string344
	.long	.Linfo_string345
	.long	.Linfo_string346
	.long	.Linfo_string347
	.long	.Linfo_string348
	.long	.Linfo_string349
	.long	.Linfo_string350
	.long	.Linfo_string351
	.long	.Linfo_string352
	.long	.Linfo_string353
	.long	.Linfo_string354
	.long	.Linfo_string355
	.long	.Linfo_string356
	.long	.Linfo_string357
	.long	.Linfo_string358
	.long	.Linfo_string359
	.long	.Linfo_string360
	.long	.Linfo_string361
	.long	.Linfo_string362
	.long	.Linfo_string363
	.long	.Linfo_string364
	.long	.Linfo_string365
	.long	.Linfo_string366
	.long	.Linfo_string367
	.long	.Linfo_string368
	.long	.Linfo_string369
	.long	.Linfo_string370
	.long	.Linfo_string371
	.long	.Linfo_string372
	.long	.Linfo_string373
	.long	.Linfo_string374
	.long	.Linfo_string375
	.long	.Linfo_string376
	.long	.Linfo_string377
	.long	.Linfo_string378
	.long	.Linfo_string379
	.long	.Linfo_string380
	.long	.Linfo_string381
	.long	.Linfo_string382
	.long	.Linfo_string383
	.long	.Linfo_string384
	.long	.Linfo_string385
	.long	.Linfo_string386
	.long	.Linfo_string387
	.long	.Linfo_string388
	.long	.Linfo_string389
	.long	.Linfo_string390
	.long	.Linfo_string391
	.long	.Linfo_string392
	.long	.Linfo_string393
	.long	.Linfo_string394
	.long	.Linfo_string395
	.long	.Linfo_string396
	.long	.Linfo_string397
	.long	.Linfo_string398
	.long	.Linfo_string399
	.long	.Linfo_string400
	.long	.Linfo_string401
	.long	.Linfo_string402
	.long	.Linfo_string403
	.long	.Linfo_string404
	.long	.Linfo_string405
	.long	.Linfo_string406
	.long	.Linfo_string407
	.long	.Linfo_string408
	.long	.Linfo_string409
	.long	.Linfo_string410
	.long	.Linfo_string411
	.long	.Linfo_string412
	.long	.Linfo_string413
	.long	.Linfo_string414
	.long	.Linfo_string415
	.long	.Linfo_string416
	.long	.Linfo_string417
	.long	.Linfo_string418
	.long	.Linfo_string419
	.long	.Linfo_string420
	.long	.Linfo_string421
	.long	.Linfo_string422
	.long	.Linfo_string423
	.long	.Linfo_string424
	.long	.Linfo_string425
	.long	.Linfo_string426
	.long	.Linfo_string427
	.long	.Linfo_string428
	.long	.Linfo_string429
	.long	.Linfo_string430
	.long	.Linfo_string431
	.long	.Linfo_string432
	.long	.Linfo_string433
	.long	.Linfo_string434
	.long	.Linfo_string435
	.long	.Linfo_string436
	.long	.Linfo_string437
	.long	.Linfo_string438
	.long	.Linfo_string439
	.long	.Linfo_string440
	.long	.Linfo_string441
	.long	.Linfo_string442
	.long	.Linfo_string443
	.long	.Linfo_string444
	.long	.Linfo_string445
	.long	.Linfo_string446
	.long	.Linfo_string447
	.long	.Linfo_string448
	.long	.Linfo_string449
	.long	.Linfo_string450
	.long	.Linfo_string451
	.long	.Linfo_string452
	.long	.Linfo_string453
	.long	.Linfo_string454
	.long	.Linfo_string455
	.long	.Linfo_string456
	.long	.Linfo_string457
	.long	.Linfo_string458
	.long	.Linfo_string459
	.long	.Linfo_string460
	.long	.Linfo_string461
	.long	.Linfo_string462
	.long	.Linfo_string463
	.long	.Linfo_string464
	.long	.Linfo_string465
	.long	.Linfo_string466
	.long	.Linfo_string467
	.long	.Linfo_string468
	.long	.Linfo_string469
	.long	.Linfo_string470
	.long	.Linfo_string471
	.long	.Linfo_string472
	.long	.Linfo_string473
	.long	.Linfo_string474
	.long	.Linfo_string475
	.long	.Linfo_string476
	.long	.Linfo_string477
	.long	.Linfo_string478
	.long	.Linfo_string479
	.long	.Linfo_string480
	.long	.Linfo_string481
	.long	.Linfo_string482
	.long	.Linfo_string483
	.long	.Linfo_string484
	.long	.Linfo_string485
	.long	.Linfo_string486
	.long	.Linfo_string487
	.long	.Linfo_string488
	.long	.Linfo_string489
	.long	.Linfo_string490
	.long	.Linfo_string491
	.long	.Linfo_string492
	.long	.Linfo_string493
	.long	.Linfo_string494
	.long	.Linfo_string495
	.long	.Linfo_string496
	.long	.Linfo_string497
	.long	.Linfo_string498
	.long	.Linfo_string499
	.long	.Linfo_string500
	.long	.Linfo_string501
	.long	.Linfo_string502
	.long	.Linfo_string503
	.long	.Linfo_string504
	.long	.Linfo_string505
	.long	.Linfo_string506
	.long	.Linfo_string507
	.long	.Linfo_string508
	.long	.Linfo_string509
	.long	.Linfo_string510
	.long	.Linfo_string511
	.long	.Linfo_string512
	.long	.Linfo_string513
	.long	.Linfo_string514
	.long	.Linfo_string515
	.long	.Linfo_string516
	.long	.Linfo_string517
	.long	.Linfo_string518
	.long	.Linfo_string519
	.long	.Linfo_string520
	.long	.Linfo_string521
	.long	.Linfo_string522
	.long	.Linfo_string523
	.long	.Linfo_string524
	.long	.Linfo_string525
	.long	.Linfo_string526
	.long	.Linfo_string527
	.long	.Linfo_string528
	.long	.Linfo_string529
	.long	.Linfo_string530
	.long	.Linfo_string531
	.long	.Linfo_string532
	.long	.Linfo_string533
	.long	.Linfo_string534
	.long	.Linfo_string535
	.long	.Linfo_string536
	.long	.Linfo_string537
	.long	.Linfo_string538
	.long	.Linfo_string539
	.long	.Linfo_string540
	.long	.Linfo_string541
	.long	.Linfo_string542
	.long	.Linfo_string543
	.long	.Linfo_string544
	.long	.Linfo_string545
	.long	.Linfo_string546
	.long	.Linfo_string547
	.long	.Linfo_string548
	.long	.Linfo_string549
	.long	.Linfo_string550
	.long	.Linfo_string551
	.long	.Linfo_string552
	.long	.Linfo_string553
	.long	.Linfo_string554
	.long	.Linfo_string555
	.long	.Linfo_string556
	.long	.Linfo_string557
	.long	.Linfo_string558
	.long	.Linfo_string559
	.long	.Linfo_string560
	.long	.Linfo_string561
	.long	.Linfo_string562
	.long	.Linfo_string563
	.long	.Linfo_string564
	.long	.Linfo_string565
	.long	.Linfo_string566
	.long	.Linfo_string567
	.long	.Linfo_string568
	.long	.Linfo_string569
	.long	.Linfo_string570
	.long	.Linfo_string571
	.long	.Linfo_string572
	.long	.Linfo_string573
	.long	.Linfo_string574
	.long	.Linfo_string575
	.long	.Linfo_string576
	.long	.Linfo_string577
	.long	.Linfo_string578
	.long	.Linfo_string579
	.long	.Linfo_string580
	.long	.Linfo_string581
	.long	.Linfo_string582
	.long	.Linfo_string583
	.long	.Linfo_string584
	.long	.Linfo_string585
	.long	.Linfo_string586
	.long	.Linfo_string587
	.long	.Linfo_string588
	.long	.Linfo_string589
	.long	.Linfo_string590
	.long	.Linfo_string591
	.long	.Linfo_string592
	.long	.Linfo_string593
	.long	.Linfo_string594
	.long	.Linfo_string595
	.long	.Linfo_string596
	.long	.Linfo_string597
	.long	.Linfo_string598
	.long	.Linfo_string599
	.long	.Linfo_string600
	.long	.Linfo_string601
	.long	.Linfo_string602
	.long	.Linfo_string603
	.long	.Linfo_string604
	.long	.Linfo_string605
	.long	.Linfo_string606
	.long	.Linfo_string607
	.long	.Linfo_string608
	.long	.Linfo_string609
	.long	.Linfo_string610
	.long	.Linfo_string611
	.long	.Linfo_string612
	.long	.Linfo_string613
	.long	.Linfo_string614
	.long	.Linfo_string615
	.long	.Linfo_string616
	.long	.Linfo_string617
	.long	.Linfo_string618
	.long	.Linfo_string619
	.long	.Linfo_string620
	.long	.Linfo_string621
	.long	.Linfo_string622
	.long	.Linfo_string623
	.long	.Linfo_string624
	.long	.Linfo_string625
	.long	.Linfo_string626
	.long	.Linfo_string627
	.long	.Linfo_string628
	.long	.Linfo_string629
	.long	.Linfo_string630
	.long	.Linfo_string631
	.long	.Linfo_string632
	.long	.Linfo_string633
	.long	.Linfo_string634
	.long	.Linfo_string635
	.long	.Linfo_string636
	.long	.Linfo_string637
	.long	.Linfo_string638
	.long	.Linfo_string639
	.long	.Linfo_string640
	.long	.Linfo_string641
	.long	.Linfo_string642
	.long	.Linfo_string643
	.long	.Linfo_string644
	.long	.Linfo_string645
	.long	.Linfo_string646
	.long	.Linfo_string647
	.long	.Linfo_string648
	.long	.Linfo_string649
	.long	.Linfo_string650
	.long	.Linfo_string651
	.long	.Linfo_string652
	.long	.Linfo_string653
	.long	.Linfo_string654
	.long	.Linfo_string655
	.long	.Linfo_string656
	.long	.Linfo_string657
	.long	.Linfo_string658
	.long	.Linfo_string659
	.long	.Linfo_string660
	.long	.Linfo_string661
	.long	.Linfo_string662
	.long	.Linfo_string663
	.long	.Linfo_string664
	.long	.Linfo_string665
	.long	.Linfo_string666
	.long	.Linfo_string667
	.long	.Linfo_string668
	.long	.Linfo_string669
	.long	.Linfo_string670
	.long	.Linfo_string671
	.long	.Linfo_string672
	.long	.Linfo_string673
	.long	.Linfo_string674
	.long	.Linfo_string675
	.long	.Linfo_string676
	.long	.Linfo_string677
	.long	.Linfo_string678
	.long	.Linfo_string679
	.long	.Linfo_string680
	.long	.Linfo_string681
	.long	.Linfo_string682
	.long	.Linfo_string683
	.long	.Linfo_string684
	.long	.Linfo_string685
	.long	.Linfo_string686
	.long	.Linfo_string687
	.long	.Linfo_string688
	.long	.Linfo_string689
	.long	.Linfo_string690
	.long	.Linfo_string691
	.long	.Linfo_string692
	.long	.Linfo_string693
	.long	.Linfo_string694
	.long	.Linfo_string695
	.long	.Linfo_string696
	.long	.Linfo_string697
	.long	.Linfo_string698
	.long	.Linfo_string699
	.long	.Linfo_string700
	.long	.Linfo_string701
	.long	.Linfo_string702
	.long	.Linfo_string703
	.long	.Linfo_string704
	.long	.Linfo_string705
	.long	.Linfo_string706
	.long	.Linfo_string707
	.long	.Linfo_string708
	.long	.Linfo_string709
	.long	.Linfo_string710
	.long	.Linfo_string711
	.long	.Linfo_string712
	.long	.Linfo_string713
	.long	.Linfo_string714
	.long	.Linfo_string715
	.long	.Linfo_string716
	.long	.Linfo_string717
	.long	.Linfo_string718
	.long	.Linfo_string719
	.long	.Linfo_string720
	.long	.Linfo_string721
	.long	.Linfo_string722
	.long	.Linfo_string723
	.long	.Linfo_string724
	.long	.Linfo_string725
	.long	.Linfo_string726
	.long	.Linfo_string727
	.long	.Linfo_string728
	.long	.Linfo_string729
	.long	.Linfo_string730
	.long	.Linfo_string731
	.long	.Linfo_string732
	.long	.Linfo_string733
	.long	.Linfo_string734
	.long	.Linfo_string735
	.long	.Linfo_string736
	.long	.Linfo_string737
	.long	.Linfo_string738
	.long	.Linfo_string739
	.long	.Linfo_string740
	.long	.Linfo_string741
	.long	.Linfo_string742
	.long	.Linfo_string743
	.long	.Linfo_string744
	.long	.Linfo_string745
	.long	.Linfo_string746
	.long	.Linfo_string747
	.long	.Linfo_string748
	.long	.Linfo_string749
	.long	.Linfo_string750
	.long	.Linfo_string751
	.long	.Linfo_string752
	.long	.Linfo_string753
	.long	.Linfo_string754
	.long	.Linfo_string755
	.long	.Linfo_string756
	.long	.Linfo_string757
	.long	.Linfo_string758
	.long	.Linfo_string759
	.long	.Linfo_string760
	.long	.Linfo_string761
	.long	.Linfo_string762
	.long	.Linfo_string763
	.long	.Linfo_string764
	.long	.Linfo_string765
	.long	.Linfo_string766
	.long	.Linfo_string767
	.long	.Linfo_string768
	.long	.Linfo_string769
	.long	.Linfo_string770
	.long	.Linfo_string771
	.long	.Linfo_string772
	.long	.Linfo_string773
	.long	.Linfo_string774
	.long	.Linfo_string775
	.long	.Linfo_string776
	.long	.Linfo_string777
	.long	.Linfo_string778
	.long	.Linfo_string779
	.long	.Linfo_string780
	.long	.Linfo_string781
	.long	.Linfo_string782
	.long	.Linfo_string783
	.long	.Linfo_string784
	.long	.Linfo_string785
	.long	.Linfo_string786
	.long	.Linfo_string787
	.long	.Linfo_string788
	.long	.Linfo_string789
	.long	.Linfo_string790
	.long	.Linfo_string791
	.long	.Linfo_string792
	.long	.Linfo_string793
	.long	.Linfo_string794
	.long	.Linfo_string795
	.long	.Linfo_string796
	.long	.Linfo_string797
	.long	.Linfo_string798
	.long	.Linfo_string799
	.long	.Linfo_string800
	.long	.Linfo_string801
	.long	.Linfo_string802
	.long	.Linfo_string803
	.long	.Linfo_string804
	.long	.Linfo_string805
	.long	.Linfo_string806
	.long	.Linfo_string807
	.long	.Linfo_string808
	.long	.Linfo_string809
	.long	.Linfo_string810
	.long	.Linfo_string811
	.long	.Linfo_string812
	.long	.Linfo_string813
	.long	.Linfo_string814
	.long	.Linfo_string815
	.long	.Linfo_string816
	.long	.Linfo_string817
	.long	.Linfo_string818
	.long	.Linfo_string819
	.long	.Linfo_string820
	.long	.Linfo_string821
	.long	.Linfo_string822
	.long	.Linfo_string823
	.long	.Linfo_string824
	.long	.Linfo_string825
	.long	.Linfo_string826
	.long	.Linfo_string827
	.long	.Linfo_string828
	.long	.Linfo_string829
	.long	.Linfo_string830
	.long	.Linfo_string831
	.long	.Linfo_string832
	.long	.Linfo_string833
	.long	.Linfo_string834
	.long	.Linfo_string835
	.long	.Linfo_string836
	.long	.Linfo_string837
	.long	.Linfo_string838
	.long	.Linfo_string839
	.long	.Linfo_string840
	.long	.Linfo_string841
	.long	.Linfo_string842
	.long	.Linfo_string843
	.long	.Linfo_string844
	.long	.Linfo_string845
	.long	.Linfo_string846
	.long	.Linfo_string847
	.long	.Linfo_string848
	.long	.Linfo_string849
	.long	.Linfo_string850
	.long	.Linfo_string851
	.long	.Linfo_string852
	.long	.Linfo_string853
	.long	.Linfo_string854
	.long	.Linfo_string855
	.long	.Linfo_string856
	.long	.Linfo_string857
	.long	.Linfo_string858
	.long	.Linfo_string859
	.long	.Linfo_string860
	.long	.Linfo_string861
	.long	.Linfo_string862
	.long	.Linfo_string863
	.long	.Linfo_string864
	.long	.Linfo_string865
	.long	.Linfo_string866
	.long	.Linfo_string867
	.long	.Linfo_string868
	.long	.Linfo_string869
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	BLOCK_STEP
	.quad	.Lfunc_begin0
	.quad	.Ltmp10
	.quad	.Ltmp13
	.quad	.Ltmp19
	.quad	.Ltmp22
	.quad	.Lfunc_begin1
	.quad	.Ltmp34
	.quad	.Ltmp35
	.quad	.Ltmp55
	.quad	.Ltmp59
	.quad	.Ltmp79
	.quad	.Ltmp80
	.quad	.Ltmp84
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Ltmp114
	.quad	.Ltmp129
	.quad	.Ltmp124
	.quad	.Ltmp143
	.quad	.Lfunc_begin4
	.quad	.Ltmp202
	.quad	.Ltmp368
	.quad	.Ltmp398
	.quad	.Ltmp400
	.quad	.Ltmp422
	.quad	.Ltmp452
	.quad	.Ltmp429
	.quad	.Ltmp431
	.quad	.Ltmp447
	.quad	.Ltmp237
	.quad	.Ltmp239
	.quad	.Ltmp251
	.quad	.Ltmp254
	.quad	.Ltmp260
	.quad	.Ltmp282
	.quad	.Ltmp284
	.quad	.Ltmp230
	.quad	.Lfunc_begin5
	.quad	.Ltmp553
	.quad	.Ltmp556
	.quad	.Ltmp573
	.quad	.Ltmp576
	.quad	.Ltmp496
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
