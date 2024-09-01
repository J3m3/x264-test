	.text
	.file	"vlc.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/common/vlc.c" md5 0xc16b9c79daf3939ca9cb3aa6c11de3f6
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "x264_src/common" "bs.h" md5 0x5e3e135f4389fadb006d4bc4f2055a86
	.globl	x264_init_vlc_tables            # -- Begin function x264_init_vlc_tables
	.p2align	4, 0x90
	.type	x264_init_vlc_tables,@function
x264_init_vlc_tables:                   # @x264_init_vlc_tables
.Lfunc_begin0:
	.loc	0 693 0                         # x264_src/common/vlc.c:693:0
	.cfi_startproc
# %bb.0:                                # %entry
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
	movl	$x264_level_token+3, %edx
	xorl	%eax, %eax
	#DEBUG_VALUE: i_suffix <- 0
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_9:                                # %for.cond.cleanup4
                                        #   in Loop: Header=BB0_1 Depth=1
	#DEBUG_VALUE: i_suffix <- $rax
.Ltmp0:
	#DEBUG_VALUE: i_suffix <- $rdi
	.loc	0 694 5 prologue_end            # x264_src/common/vlc.c:694:5
	addq	$512, %rdx                      # imm = 0x200
	movq	%rdi, %rax
.Ltmp1:
	.loc	0 694 37 is_stmt 0              # x264_src/common/vlc.c:694:37
	cmpq	$7, %rdi
.Ltmp2:
	.loc	0 694 5                         # x264_src/common/vlc.c:694:5
	je	.LBB0_10
.Ltmp3:
.LBB0_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_3 Depth 2
	#DEBUG_VALUE: i_suffix <- $rax
	.loc	0 0 5                           # x264_src/common/vlc.c:0:5
	cmpl	$2, %eax
	movl	$1, %r8d
	cmovael	%eax, %r8d
	leal	-1(%r8), %ecx
	movl	$3, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movl	$-15, %r9d
	movl	%eax, %ecx
	shll	%cl, %r9d
	movl	$1, %r10d
	shll	%cl, %r10d
.Ltmp4:
	.loc	0 694 50                        # x264_src/common/vlc.c:694:50
	leaq	1(%rax), %rdi
	#DEBUG_VALUE: level <- -64
	testq	%rax, %rax
	je	.LBB0_2
.Ltmp5:
# %bb.11:                               # %for.body5.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- -64
	.loc	0 0 50                          # x264_src/common/vlc.c:0:50
	leal	15(%rax), %r11d
	leal	65535(%r10), %ebx
	xorl	%r14d, %r14d
	jmp	.LBB0_12
.Ltmp6:
	.p2align	4, 0x90
.LBB0_17:                               # %if.else52
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	#DEBUG_VALUE: i_level_code <- undef
	.loc	0 723 29 is_stmt 1              # x264_src/common/vlc.c:723:29
	movb	$28, -1(%rdx,%r14,4)
	.loc	0 724 31                        # x264_src/common/vlc.c:724:31
	addl	%r9d, %r12d
	addl	$4096, %r12d                    # imm = 0x1000
.Ltmp7:
.LBB0_18:                               # %if.end65
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 0 31 is_stmt 0                # x264_src/common/vlc.c:0:31
	cmpq	$6, %rax
	setne	%cl
	movw	%r12w, -3(%rdx,%r14,4)
.Ltmp8:
	#DEBUG_VALUE: i_next <- undef
	.loc	0 728 27 is_stmt 1              # x264_src/common/vlc.c:728:27
	cmpl	%esi, %r15d
	setg	%bpl
	.loc	0 728 47 is_stmt 0              # x264_src/common/vlc.c:728:47
	andb	%cl, %bpl
	movzbl	%bpl, %ecx
	addl	%r8d, %ecx
.Ltmp9:
	#DEBUG_VALUE: i_next <- $ecx
	.loc	0 730 25 is_stmt 1              # x264_src/common/vlc.c:730:25
	movb	%cl, (%rdx,%r14,4)
.Ltmp10:
	#DEBUG_VALUE: level <- [DW_OP_constu 63, DW_OP_minus, DW_OP_stack_value] $r14
	.loc	0 695 57                        # x264_src/common/vlc.c:695:57
	incq	%r14
.Ltmp11:
	cmpq	$128, %r14
.Ltmp12:
	.loc	0 695 9 is_stmt 0               # x264_src/common/vlc.c:695:9
	je	.LBB0_9
.Ltmp13:
.LBB0_12:                               # %for.body5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	.loc	0 697 30 is_stmt 1              # x264_src/common/vlc.c:697:30
	leal	-64(%r14), %r15d
	movl	%r15d, %ecx
	sarl	$15, %ecx
.Ltmp14:
	#DEBUG_VALUE: mask <- $ecx
	.loc	0 698 35                        # x264_src/common/vlc.c:698:35
	xorl	%ecx, %r15d
	.loc	0 698 41 is_stmt 0              # x264_src/common/vlc.c:698:41
	subl	%ecx, %r15d
.Ltmp15:
	#DEBUG_VALUE: abs_level <- $r15d
	.loc	0 699 41 is_stmt 1              # x264_src/common/vlc.c:699:41
	leal	(%r15,%r15), %r12d
	.loc	0 699 43 is_stmt 0              # x264_src/common/vlc.c:699:43
	subl	%ecx, %r12d
	.loc	0 699 48                        # x264_src/common/vlc.c:699:48
	addl	$-2, %r12d
.Ltmp16:
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	#DEBUG_VALUE: vlc <- undef
	.loc	0 703 32 is_stmt 1              # x264_src/common/vlc.c:703:32
	movl	%r12d, %ebp
	movl	%eax, %ecx
.Ltmp17:
	sarl	%cl, %ebp
	.loc	0 703 46 is_stmt 0              # x264_src/common/vlc.c:703:46
	cmpl	$13, %ebp
.Ltmp18:
	.loc	0 703 17                        # x264_src/common/vlc.c:703:17
	jg	.LBB0_14
.Ltmp19:
# %bb.13:                               # %if.then
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 705 62 is_stmt 1              # x264_src/common/vlc.c:705:62
	addl	%edi, %ebp
	.loc	0 705 29 is_stmt 0              # x264_src/common/vlc.c:705:29
	movb	%bpl, -1(%rdx,%r14,4)
	.loc	0 706 61 is_stmt 1              # x264_src/common/vlc.c:706:61
	jmp	.LBB0_16
.Ltmp20:
	.p2align	4, 0x90
.LBB0_14:                               # %if.else34
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 0 61 is_stmt 0                # x264_src/common/vlc.c:0:61
	cmpl	$14, %ebp
.Ltmp21:
	.loc	0 713 35 is_stmt 1              # x264_src/common/vlc.c:713:35
	jne	.LBB0_17
.Ltmp22:
# %bb.15:                               # %if.then41
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 715 29                        # x264_src/common/vlc.c:715:29
	movb	%r11b, -1(%rdx,%r14,4)
.Ltmp23:
.LBB0_16:                               # %if.end65
                                        #   in Loop: Header=BB0_12 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $r14
	#DEBUG_VALUE: abs_level <- $r15d
	#DEBUG_VALUE: i_level_code <- $r12d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 0 0 is_stmt 0                 # x264_src/common/vlc.c:0:0
	andl	%ebx, %r12d
.Ltmp24:
	addl	%r10d, %r12d
.Ltmp25:
	.loc	0 717 13 is_stmt 1              # x264_src/common/vlc.c:717:13
	jmp	.LBB0_18
.Ltmp26:
	.p2align	4, 0x90
.LBB0_2:                                # %for.body5.us.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- -64
	.loc	0 0 13 is_stmt 0                # x264_src/common/vlc.c:0:13
	xorl	%ecx, %ecx
	jmp	.LBB0_3
.Ltmp27:
	.p2align	4, 0x90
.LBB0_7:                                # %if.then.us
                                        #   in Loop: Header=BB0_3 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: mask <- $r10d
	#DEBUG_VALUE: abs_level <- $r8d
	#DEBUG_VALUE: i_level_code <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 705 31 is_stmt 1              # x264_src/common/vlc.c:705:31
	decb	%r9b
.Ltmp28:
	.loc	0 705 29 is_stmt 0              # x264_src/common/vlc.c:705:29
	movb	%r9b, x264_level_token+2(,%rcx,4)
	movw	$1, %r9w
.Ltmp29:
.LBB0_8:                                # %if.end65.us
                                        #   in Loop: Header=BB0_3 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: mask <- $r10d
	#DEBUG_VALUE: abs_level <- $r8d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 0 29                          # x264_src/common/vlc.c:0:29
	cmpq	$6, %rax
	setne	%r10b
.Ltmp30:
	movw	%r9w, x264_level_token(,%rcx,4)
.Ltmp31:
	#DEBUG_VALUE: i_next <- undef
	.loc	0 728 27 is_stmt 1              # x264_src/common/vlc.c:728:27
	cmpl	%esi, %r8d
	setg	%r8b
.Ltmp32:
	.loc	0 728 47 is_stmt 0              # x264_src/common/vlc.c:728:47
	andb	%r10b, %r8b
.Ltmp33:
	#DEBUG_VALUE: i_next <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 32 7, DW_OP_plus, DW_OP_stack_value] 1, $r8b
	.loc	0 730 27 is_stmt 1              # x264_src/common/vlc.c:730:27
	incb	%r8b
.Ltmp34:
	.loc	0 730 25 is_stmt 0              # x264_src/common/vlc.c:730:25
	movb	%r8b, x264_level_token+3(,%rcx,4)
.Ltmp35:
	#DEBUG_VALUE: level <- [DW_OP_constu 63, DW_OP_minus, DW_OP_stack_value] $rcx
	.loc	0 695 57 is_stmt 1              # x264_src/common/vlc.c:695:57
	incq	%rcx
.Ltmp36:
	cmpq	$128, %rcx
.Ltmp37:
	.loc	0 695 9 is_stmt 0               # x264_src/common/vlc.c:695:9
	je	.LBB0_9
.Ltmp38:
.LBB0_3:                                # %for.body5.us
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	.loc	0 697 30 is_stmt 1              # x264_src/common/vlc.c:697:30
	leal	-64(%rcx), %r8d
	movl	%r8d, %r10d
	sarl	$15, %r10d
.Ltmp39:
	#DEBUG_VALUE: mask <- $r10d
	.loc	0 698 35                        # x264_src/common/vlc.c:698:35
	xorl	%r10d, %r8d
	.loc	0 698 41 is_stmt 0              # x264_src/common/vlc.c:698:41
	subl	%r10d, %r8d
.Ltmp40:
	#DEBUG_VALUE: abs_level <- $r8d
	.loc	0 699 41 is_stmt 1              # x264_src/common/vlc.c:699:41
	leal	(%r8,%r8), %r9d
	.loc	0 699 43 is_stmt 0              # x264_src/common/vlc.c:699:43
	subl	%r10d, %r9d
.Ltmp41:
	#DEBUG_VALUE: vlc <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_mul, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: i_level_code <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 703 46 is_stmt 1              # x264_src/common/vlc.c:703:46
	cmpl	$16, %r9d
.Ltmp42:
	.loc	0 703 17 is_stmt 0              # x264_src/common/vlc.c:703:17
	jl	.LBB0_7
.Ltmp43:
# %bb.4:                                # %if.else.us
                                        #   in Loop: Header=BB0_3 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: mask <- $r10d
	#DEBUG_VALUE: abs_level <- $r8d
	#DEBUG_VALUE: i_level_code <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 0 17                          # x264_src/common/vlc.c:0:17
	cmpl	$32, %r9d
.Ltmp44:
	.loc	0 708 36 is_stmt 1              # x264_src/common/vlc.c:708:36
	jae	.LBB0_5
.Ltmp45:
# %bb.6:                                # %if.then28.us
                                        #   in Loop: Header=BB0_3 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: mask <- $r10d
	#DEBUG_VALUE: abs_level <- $r8d
	#DEBUG_VALUE: i_level_code <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: i_next <- $rax
	.loc	0 710 29                        # x264_src/common/vlc.c:710:29
	movb	$19, x264_level_token+2(,%rcx,4)
	.loc	0 712 13                        # x264_src/common/vlc.c:712:13
	jmp	.LBB0_8
.Ltmp46:
	.p2align	4, 0x90
.LBB0_5:                                # %if.else34.us
                                        #   in Loop: Header=BB0_3 Depth=2
	#DEBUG_VALUE: i_suffix <- $rax
	#DEBUG_VALUE: level <- [DW_OP_constu 64, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: mask <- $r10d
	#DEBUG_VALUE: abs_level <- $r8d
	#DEBUG_VALUE: i_level_code <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: i_next <- $rax
	#DEBUG_VALUE: i_level_code <- undef
	.loc	0 723 29                        # x264_src/common/vlc.c:723:29
	movb	$28, x264_level_token+2(,%rcx,4)
	.loc	0 724 31                        # x264_src/common/vlc.c:724:31
	addl	$4064, %r9d                     # imm = 0xFE0
	jmp	.LBB0_8
.Ltmp47:
.LBB0_10:                               # %for.cond.cleanup
	.loc	0 732 1 epilogue_begin          # x264_src/common/vlc.c:732:1
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
.Ltmp48:
.Lfunc_end0:
	.size	x264_init_vlc_tables, .Lfunc_end0-x264_init_vlc_tables
	.cfi_endproc
                                        # -- End function
	.type	x264_coeff0_token,@object       # @x264_coeff0_token
	.section	.rodata,"a",@progbits
	.globl	x264_coeff0_token
x264_coeff0_token:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	15                              # 0xf
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.size	x264_coeff0_token, 10

	.type	x264_coeff_token,@object        # @x264_coeff_token
	.globl	x264_coeff_token
	.p2align	4, 0x0
x264_coeff_token:
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	2
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	12                              # 0xc
	.byte	15                              # 0xf
	.byte	11                              # 0xb
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.byte	16                              # 0x10
	.byte	13                              # 0xd
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	7                               # 0x7
	.byte	16                              # 0x10
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	12                              # 0xc
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	6                               # 0x6
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	2
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	15                              # 0xf
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	5                               # 0x5
	.byte	14                              # 0xe
	.byte	4                               # 0x4
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	4                               # 0x4
	.zero	2
	.zero	2
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	5                               # 0x5
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.zero	2
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	12                              # 0xc
	.byte	5                               # 0x5
	.byte	14                              # 0xe
	.byte	5                               # 0x5
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	15                              # 0xf
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	11                              # 0xb
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	3                               # 0x3
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.zero	2
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	16                              # 0x10
	.byte	6                               # 0x6
	.byte	17                              # 0x11
	.byte	6                               # 0x6
	.byte	18                              # 0x12
	.byte	6                               # 0x6
	.byte	19                              # 0x13
	.byte	6                               # 0x6
	.byte	20                              # 0x14
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	6                               # 0x6
	.byte	23                              # 0x17
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	6                               # 0x6
	.byte	26                              # 0x1a
	.byte	6                               # 0x6
	.byte	27                              # 0x1b
	.byte	6                               # 0x6
	.byte	28                              # 0x1c
	.byte	6                               # 0x6
	.byte	29                              # 0x1d
	.byte	6                               # 0x6
	.byte	30                              # 0x1e
	.byte	6                               # 0x6
	.byte	31                              # 0x1f
	.byte	6                               # 0x6
	.byte	32                              # 0x20
	.byte	6                               # 0x6
	.byte	33                              # 0x21
	.byte	6                               # 0x6
	.byte	34                              # 0x22
	.byte	6                               # 0x6
	.byte	35                              # 0x23
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	37                              # 0x25
	.byte	6                               # 0x6
	.byte	38                              # 0x26
	.byte	6                               # 0x6
	.byte	39                              # 0x27
	.byte	6                               # 0x6
	.byte	40                              # 0x28
	.byte	6                               # 0x6
	.byte	41                              # 0x29
	.byte	6                               # 0x6
	.byte	42                              # 0x2a
	.byte	6                               # 0x6
	.byte	43                              # 0x2b
	.byte	6                               # 0x6
	.byte	44                              # 0x2c
	.byte	6                               # 0x6
	.byte	45                              # 0x2d
	.byte	6                               # 0x6
	.byte	46                              # 0x2e
	.byte	6                               # 0x6
	.byte	47                              # 0x2f
	.byte	6                               # 0x6
	.byte	48                              # 0x30
	.byte	6                               # 0x6
	.byte	49                              # 0x31
	.byte	6                               # 0x6
	.byte	50                              # 0x32
	.byte	6                               # 0x6
	.byte	51                              # 0x33
	.byte	6                               # 0x6
	.byte	52                              # 0x34
	.byte	6                               # 0x6
	.byte	53                              # 0x35
	.byte	6                               # 0x6
	.byte	54                              # 0x36
	.byte	6                               # 0x6
	.byte	55                              # 0x37
	.byte	6                               # 0x6
	.byte	56                              # 0x38
	.byte	6                               # 0x6
	.byte	57                              # 0x39
	.byte	6                               # 0x6
	.byte	58                              # 0x3a
	.byte	6                               # 0x6
	.byte	59                              # 0x3b
	.byte	6                               # 0x6
	.byte	60                              # 0x3c
	.byte	6                               # 0x6
	.byte	61                              # 0x3d
	.byte	6                               # 0x6
	.byte	62                              # 0x3e
	.byte	6                               # 0x6
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.zero	96
	.size	x264_coeff_token, 640

	.type	x264_total_zeros,@object        # @x264_total_zeros
	.globl	x264_total_zeros
	.p2align	4, 0x0
x264_total_zeros:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	9                               # 0x9
	.byte	2                               # 0x2
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.zero	16
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.zero	18
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	20
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	22
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	24
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	26
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	28
	.size	x264_total_zeros, 480

	.type	x264_total_zeros_dc,@object     # @x264_total_zeros_dc
	.globl	x264_total_zeros_dc
	.p2align	4, 0x0
x264_total_zeros_dc:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.size	x264_total_zeros_dc, 24

	.type	x264_run_before,@object         # @x264_run_before
	.globl	x264_run_before
	.p2align	4, 0x0
x264_run_before:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	28
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	26
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	24
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.zero	22
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.zero	20
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.zero	18
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	11                              # 0xb
	.zero	2
	.size	x264_run_before, 224

	.type	x264_level_token,@object        # @x264_level_token
	.bss
	.globl	x264_level_token
	.p2align	4, 0x0
x264_level_token:
	.zero	3584
	.size	x264_level_token, 3584

	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	6                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	64                              # -64
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	65                              # -63
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	64                              # -64
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	192                             # 18446744073709551552
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	64                              # -64
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	65                              # -63
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	64                              # -64
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # Abbreviation Code
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
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x1d2 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3e:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x43:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4a:0x5 DW_TAG_const_type
	.long	79                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4f:0x8 DW_TAG_typedef
	.long	87                              # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x57:0x17 DW_TAG_structure_type
	.byte	2                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5b:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	110                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x64:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	110                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	1                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6e:0x8 DW_TAG_typedef
	.long	118                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x76:0x8 DW_TAG_typedef
	.long	126                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x7e:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x82:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x86:0xb DW_TAG_variable
	.byte	11                              # DW_AT_name
	.long	145                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x91:0x18 DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x96:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0x9c:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	5                               # Abbrev [5] 0xa2:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xa9:0xc DW_TAG_variable
	.byte	12                              # DW_AT_name
	.long	181                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	440                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0xb5:0x12 DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xba:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	5                               # Abbrev [5] 0xc0:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc7:0xc DW_TAG_variable
	.byte	13                              # DW_AT_name
	.long	211                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	610                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               # Abbrev [4] 0xd3:0x12 DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd8:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0xde:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xe5:0xc DW_TAG_variable
	.byte	14                              # DW_AT_name
	.long	241                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	630                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	4                               # Abbrev [4] 0xf1:0x12 DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf6:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0xfc:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x103:0xc DW_TAG_variable
	.byte	15                              # DW_AT_name
	.long	271                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.short	690                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0x10f:0x12 DW_TAG_array_type
	.long	289                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x114:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0x11a:0x6 DW_TAG_subrange_type
	.long	130                             # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x121:0x8 DW_TAG_typedef
	.long	297                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x129:0x20 DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x12d:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x136:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	110                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x13f:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	110                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x149:0x8 DW_TAG_typedef
	.long	337                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x151:0x8 DW_TAG_typedef
	.long	345                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x159:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x15d:0x63 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	692                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x169:0x56 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp0                  # DW_AT_high_pc
	.byte	14                              # Abbrev [14] 0x16f:0xa DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	694                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x179:0x45 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp6                  # DW_AT_high_pc
	.byte	14                              # Abbrev [14] 0x17f:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	695                             # DW_AT_decl_line
	.long	452                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x189:0x34 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	14                              # Abbrev [14] 0x18b:0xa DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	698                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x195:0xa DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	699                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x19f:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	700                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1a9:0xa DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	697                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1b3:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	701                             # DW_AT_decl_line
	.long	472                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1c0:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1c4:0x8 DW_TAG_typedef
	.long	460                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1cc:0x8 DW_TAG_typedef
	.long	468                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1d4:0x4 DW_TAG_base_type
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x1d8:0x5 DW_TAG_pointer_type
	.long	289                             # DW_AT_type
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	140                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/common/vlc.c"         # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=127
.Linfo_string3:
	.asciz	"x264_coeff0_token"             # string offset=161
.Linfo_string4:
	.asciz	"i_bits"                        # string offset=179
.Linfo_string5:
	.asciz	"unsigned char"                 # string offset=186
.Linfo_string6:
	.asciz	"__uint8_t"                     # string offset=200
.Linfo_string7:
	.asciz	"uint8_t"                       # string offset=210
.Linfo_string8:
	.asciz	"i_size"                        # string offset=218
.Linfo_string9:
	.asciz	"vlc_t"                         # string offset=225
.Linfo_string10:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=231
.Linfo_string11:
	.asciz	"x264_coeff_token"              # string offset=251
.Linfo_string12:
	.asciz	"x264_total_zeros"              # string offset=268
.Linfo_string13:
	.asciz	"x264_total_zeros_dc"           # string offset=285
.Linfo_string14:
	.asciz	"x264_run_before"               # string offset=305
.Linfo_string15:
	.asciz	"x264_level_token"              # string offset=321
.Linfo_string16:
	.asciz	"unsigned short"                # string offset=338
.Linfo_string17:
	.asciz	"__uint16_t"                    # string offset=353
.Linfo_string18:
	.asciz	"uint16_t"                      # string offset=364
.Linfo_string19:
	.asciz	"i_next"                        # string offset=373
.Linfo_string20:
	.asciz	"vlc_large_t"                   # string offset=380
.Linfo_string21:
	.asciz	"DW_ATE_unsigned_32"            # string offset=392
.Linfo_string22:
	.asciz	"DW_ATE_unsigned_1"             # string offset=411
.Linfo_string23:
	.asciz	"x264_init_vlc_tables"          # string offset=429
.Linfo_string24:
	.asciz	"i_suffix"                      # string offset=450
.Linfo_string25:
	.asciz	"int"                           # string offset=459
.Linfo_string26:
	.asciz	"level"                         # string offset=463
.Linfo_string27:
	.asciz	"short"                         # string offset=469
.Linfo_string28:
	.asciz	"__int16_t"                     # string offset=475
.Linfo_string29:
	.asciz	"int16_t"                       # string offset=485
.Linfo_string30:
	.asciz	"abs_level"                     # string offset=493
.Linfo_string31:
	.asciz	"i_level_code"                  # string offset=503
.Linfo_string32:
	.asciz	"mask"                          # string offset=516
.Linfo_string33:
	.asciz	"vlc"                           # string offset=521
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	x264_coeff0_token
	.quad	x264_coeff_token
	.quad	x264_total_zeros
	.quad	x264_total_zeros_dc
	.quad	x264_run_before
	.quad	x264_level_token
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp6
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
