	.text
	.file	"nal.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/nal.c" md5 0xac4e26de8170da1817c77f4f79d2018d
	.globl	RBSPtoSODB                      # -- Begin function RBSPtoSODB
	.p2align	4, 0x90
	.type	RBSPtoSODB,@function
RBSPtoSODB:                             # @RBSPtoSODB
.Lfunc_begin0:
	.loc	0 35 0                          # ldecod_src/nal.c:35:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $rdi
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $esi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%esi, %ebx
.Ltmp0:
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- 0
	.loc	0 40 14 prologue_end            # ldecod_src/nal.c:40:14
	movslq	%esi, %rax
.Ltmp1:
	#DEBUG_VALUE: RBSPtoSODB:ctr_bit <- undef
	.loc	0 42 3                          # ldecod_src/nal.c:42:3
	testb	$1, -1(%rdi,%rax)
	jne	.LBB0_7
.Ltmp2:
# %bb.1:                                # %while.body.preheader
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $rdi
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- 0
	.loc	0 0 3 is_stmt 0                 # ldecod_src/nal.c:0:3
	movq	%rdi, %r14
	xorl	%eax, %eax
	jmp	.LBB0_2
.Ltmp3:
	.p2align	4, 0x90
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $r14
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	.loc	0 50 7 is_stmt 1                # ldecod_src/nal.c:50:7
	decl	%ebx
.Ltmp4:
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	.loc	0 0 7 is_stmt 0                 # ldecod_src/nal.c:0:7
	xorl	%eax, %eax
.Ltmp5:
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- 0
.LBB0_6:                                # %if.end7
                                        #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $r14
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- $eax
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	.loc	0 53 14 is_stmt 1               # ldecod_src/nal.c:53:14
	movslq	%ebx, %rcx
	movzbl	-1(%r14,%rcx), %ecx
.Ltmp6:
	#DEBUG_VALUE: RBSPtoSODB:ctr_bit <- undef
	.loc	0 42 17                         # ldecod_src/nal.c:42:17
	btl	%eax, %ecx
	.loc	0 42 3 is_stmt 0                # ldecod_src/nal.c:42:3
	jb	.LBB0_7
.Ltmp7:
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $r14
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- $eax
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	.loc	0 44 5 is_stmt 1                # ldecod_src/nal.c:44:5
	incl	%eax
.Ltmp8:
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- $eax
	.loc	0 45 18                         # ldecod_src/nal.c:45:18
	cmpl	$8, %eax
.Ltmp9:
	.loc	0 45 8 is_stmt 0                # ldecod_src/nal.c:45:8
	jne	.LBB0_6
.Ltmp10:
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $r14
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- $eax
	.loc	0 47 24 is_stmt 1               # ldecod_src/nal.c:47:24
	testl	%ebx, %ebx
.Ltmp11:
	.loc	0 47 10 is_stmt 0               # ldecod_src/nal.c:47:10
	jne	.LBB0_5
.Ltmp12:
# %bb.4:                                # %if.then6
                                        #   in Loop: Header=BB0_2 Depth=1
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- $r14
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	#DEBUG_VALUE: RBSPtoSODB:bitoffset <- $eax
	.loc	0 48 9 is_stmt 1                # ldecod_src/nal.c:48:9
	movl	$.Lstr, %edi
	callq	puts@PLT
.Ltmp13:
	.loc	0 0 9 is_stmt 0                 # ldecod_src/nal.c:0:9
	jmp	.LBB0_5
.Ltmp14:
.LBB0_7:                                # %while.end
	#DEBUG_VALUE: RBSPtoSODB:streamBuffer <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $ebx
	.loc	0 66 3 is_stmt 1                # ldecod_src/nal.c:66:3
	movl	%ebx, %eax
	.loc	0 66 3 epilogue_begin is_stmt 0 # ldecod_src/nal.c:66:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp15:
	#DEBUG_VALUE: RBSPtoSODB:last_byte_pos <- $eax
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp16:
.Lfunc_end0:
	.size	RBSPtoSODB, .Lfunc_end0-RBSPtoSODB
	.cfi_endproc
                                        # -- End function
	.globl	EBSPtoRBSP                      # -- Begin function EBSPtoRBSP
	.p2align	4, 0x90
	.type	EBSPtoRBSP,@function
EBSPtoRBSP:                             # @EBSPtoRBSP
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- $edx
                                        # kill: def $esi killed $esi def $rsi
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	.loc	0 89 18 prologue_end is_stmt 1  # ldecod_src/nal.c:89:18
	cmpl	%edx, %esi
.Ltmp17:
	.loc	0 89 6 is_stmt 0                # ldecod_src/nal.c:89:6
	jge	.LBB1_3
.Ltmp18:
# %bb.1:
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	.loc	0 0 6                           # ldecod_src/nal.c:0:6
	movl	%esi, %eax
	.loc	0 120 1 is_stmt 1               # ldecod_src/nal.c:120:1
	retq
.Ltmp19:
.LBB1_3:                                # %for.cond.preheader
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	#DEBUG_VALUE: EBSPtoRBSP:j <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $edx
	.loc	0 94 3                          # ldecod_src/nal.c:94:3
	jle	.LBB1_4
.Ltmp20:
# %bb.5:                                # %for.body.lr.ph
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	#DEBUG_VALUE: EBSPtoRBSP:j <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $edx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leal	-1(%rsi), %ecx
	movslq	%edx, %r8
	addq	%rdi, %r8
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movl	%edx, %r10d
	jmp	.LBB1_6
.Ltmp21:
	.p2align	4, 0x90
.LBB1_14:                               # %if.end31
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	#DEBUG_VALUE: EBSPtoRBSP:count <- $r11d
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 111 23                        # ldecod_src/nal.c:111:23
	movslq	%r10d, %r10
.Ltmp22:
	movzbl	(%rdi,%r10), %eax
	.loc	0 111 21 is_stmt 0              # ldecod_src/nal.c:111:21
	movb	%al, (%r8)
	.loc	0 112 8 is_stmt 1               # ldecod_src/nal.c:112:8
	incl	%r11d
.Ltmp23:
	.loc	0 112 24 is_stmt 0              # ldecod_src/nal.c:112:24
	testb	%al, %al
.Ltmp24:
	.loc	0 112 8                         # ldecod_src/nal.c:112:8
	cmovnel	%r9d, %r11d
.Ltmp25:
	#DEBUG_VALUE: EBSPtoRBSP:count <- $r11d
	#DEBUG_VALUE: EBSPtoRBSP:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 94 43 is_stmt 1               # ldecod_src/nal.c:94:43
	incl	%r10d
.Ltmp26:
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 94 3 is_stmt 0                # ldecod_src/nal.c:94:3
	incl	%edx
	incq	%r8
	movl	%edx, %eax
.Ltmp27:
	.loc	0 94 28                         # ldecod_src/nal.c:94:28
	cmpl	%esi, %r10d
.Ltmp28:
	.loc	0 94 3                          # ldecod_src/nal.c:94:3
	jge	.LBB1_15
.Ltmp29:
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	#DEBUG_VALUE: EBSPtoRBSP:count <- $r11d
	#DEBUG_VALUE: EBSPtoRBSP:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 97 14 is_stmt 1               # ldecod_src/nal.c:97:14
	cmpl	$2, %r11d
	.loc	0 97 42 is_stmt 0               # ldecod_src/nal.c:97:42
	jne	.LBB1_14
.Ltmp30:
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- $r11d
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 97 45                         # ldecod_src/nal.c:97:45
	movslq	%r10d, %rbx
	movl	$-1, %eax
	.loc	0 97 61                         # ldecod_src/nal.c:97:61
	cmpb	$3, (%rdi,%rbx)
.Ltmp31:
	.loc	0 97 8                          # ldecod_src/nal.c:97:8
	jb	.LBB1_15
.Ltmp32:
# %bb.8:                                # %land.lhs.true9
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- $r11d
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 0 8                           # ldecod_src/nal.c:0:8
	movl	$2, %r11d
.Ltmp33:
	.loc	0 99 8 is_stmt 1                # ldecod_src/nal.c:99:8
	jne	.LBB1_14
.Ltmp34:
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 102 13                        # ldecod_src/nal.c:102:13
	cmpl	%ecx, %r10d
	.loc	0 102 30 is_stmt 0              # ldecod_src/nal.c:102:30
	jge	.LBB1_11
.Ltmp35:
# %bb.10:                               # %land.lhs.true18
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 102 52                        # ldecod_src/nal.c:102:52
	cmpb	$3, 1(%rdi,%rbx)
.Ltmp36:
	.loc	0 102 10                        # ldecod_src/nal.c:102:10
	ja	.LBB1_15
.Ltmp37:
.LBB1_11:                               # %if.end25
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 105 12 is_stmt 1              # ldecod_src/nal.c:105:12
	cmpl	%ecx, %r10d
.Ltmp38:
	.loc	0 105 10 is_stmt 0              # ldecod_src/nal.c:105:10
	je	.LBB1_12
.Ltmp39:
# %bb.13:                               # %if.end30
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 108 7 is_stmt 1               # ldecod_src/nal.c:108:7
	incl	%r10d
.Ltmp40:
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 0 7 is_stmt 0                 # ldecod_src/nal.c:0:7
	xorl	%r11d, %r11d
.Ltmp41:
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	jmp	.LBB1_14
.Ltmp42:
.LBB1_4:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:count <- 0
	#DEBUG_VALUE: EBSPtoRBSP:j <- $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $edx
	movl	%edx, %eax
	.loc	0 120 1 is_stmt 1               # ldecod_src/nal.c:120:1
	retq
.Ltmp43:
.LBB1_15:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 0 1 is_stmt 0                 # ldecod_src/nal.c:0:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 120 1                         # ldecod_src/nal.c:120:1
	retq
.Ltmp44:
.LBB1_12:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: EBSPtoRBSP:streamBuffer <- $rdi
	#DEBUG_VALUE: EBSPtoRBSP:end_bytepos <- $esi
	#DEBUG_VALUE: EBSPtoRBSP:begin_bytepos <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: EBSPtoRBSP:i <- $r10d
	.loc	0 0 1                           # ldecod_src/nal.c:0:1
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 120 1                         # ldecod_src/nal.c:120:1
	retq
.Ltmp45:
.Lfunc_end1:
	.size	EBSPtoRBSP, .Lfunc_end1-EBSPtoRBSP
	.cfi_endproc
                                        # -- End function
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	" Panic: All zero data sequence in RBSP "
	.size	.Lstr, 40

	.file	1 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	7                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
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
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xc7 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x7 DW_TAG_variable
	.long	46                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2e:0xc DW_TAG_array_type
	.long	58                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x33:0x6 DW_TAG_subrange_type
	.long	62                              # DW_AT_type
	.byte	41                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3a:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x3e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x42:0x33 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	189                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x51:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	193                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5a:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x63:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6c:0x8 DW_TAG_variable
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x75:0x48 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	189                             # DW_AT_type
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x84:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	193                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x8e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x98:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa1:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xaa:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb3:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xbd:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xc1:0x5 DW_TAG_pointer_type
	.long	198                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xc6:0x8 DW_TAG_typedef
	.long	206                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xce:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	80                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/nal.c"              # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=122
.Linfo_string3:
	.asciz	"char"                          # string offset=156
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=161
.Linfo_string5:
	.asciz	"RBSPtoSODB"                    # string offset=181
.Linfo_string6:
	.asciz	"int"                           # string offset=192
.Linfo_string7:
	.asciz	"EBSPtoRBSP"                    # string offset=196
.Linfo_string8:
	.asciz	"streamBuffer"                  # string offset=207
.Linfo_string9:
	.asciz	"unsigned char"                 # string offset=220
.Linfo_string10:
	.asciz	"byte"                          # string offset=234
.Linfo_string11:
	.asciz	"last_byte_pos"                 # string offset=239
.Linfo_string12:
	.asciz	"bitoffset"                     # string offset=253
.Linfo_string13:
	.asciz	"ctr_bit"                       # string offset=263
.Linfo_string14:
	.asciz	"end_bytepos"                   # string offset=271
.Linfo_string15:
	.asciz	"begin_bytepos"                 # string offset=283
.Linfo_string16:
	.asciz	"count"                         # string offset=297
.Linfo_string17:
	.asciz	"j"                             # string offset=303
.Linfo_string18:
	.asciz	"i"                             # string offset=305
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
