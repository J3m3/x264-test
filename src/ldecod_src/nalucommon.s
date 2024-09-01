	.text
	.file	"nalucommon.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/nalucommon.c" md5 0x2ee61d5d50e30fdda8104b7ee47d33ac
	.file	1 "ldecod_src/inc" "nalucommon.h" md5 0xf9e55677f5f79524218c8a7a94869788
	.file	2 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.globl	AllocNALU                       # -- Begin function AllocNALU
	.p2align	4, 0x90
	.type	AllocNALU,@function
AllocNALU:                              # @AllocNALU
.Lfunc_begin0:
	.loc	0 33 0                          # ldecod_src/nalucommon.c:33:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: AllocNALU:buffersize <- $edi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
.Ltmp0:
	.loc	0 36 21 prologue_end            # ldecod_src/nalucommon.c:36:21
	movl	$1, %edi
.Ltmp1:
	#DEBUG_VALUE: AllocNALU:buffersize <- $ebp
	movl	$72, %esi
	callq	calloc@PLT
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	#DEBUG_VALUE: AllocNALU:n <- $rbx
	.loc	0 36 50 is_stmt 0               # ldecod_src/nalucommon.c:36:50
	testq	%rax, %rax
.Ltmp4:
	.loc	0 36 7                          # ldecod_src/nalucommon.c:36:7
	jne	.LBB0_2
.Ltmp5:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: AllocNALU:buffersize <- $ebp
	#DEBUG_VALUE: AllocNALU:n <- $rbx
	.loc	0 37 5 is_stmt 1                # ldecod_src/nalucommon.c:37:5
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
.Ltmp6:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: AllocNALU:buffersize <- $ebp
	#DEBUG_VALUE: AllocNALU:n <- $rbx
	.loc	0 39 14                         # ldecod_src/nalucommon.c:39:14
	movl	%ebp, 8(%rbx)
.Ltmp7:
	.loc	0 41 32                         # ldecod_src/nalucommon.c:41:32
	movslq	%ebp, %rdi
	.loc	0 41 24 is_stmt 0               # ldecod_src/nalucommon.c:41:24
	movl	$1, %esi
	callq	calloc@PLT
.Ltmp8:
	.loc	0 41 15                         # ldecod_src/nalucommon.c:41:15
	movq	%rax, 24(%rbx)
	.loc	0 41 60                         # ldecod_src/nalucommon.c:41:60
	testq	%rax, %rax
.Ltmp9:
	.loc	0 41 7                          # ldecod_src/nalucommon.c:41:7
	jne	.LBB0_4
.Ltmp10:
# %bb.3:                                # %if.then4
	#DEBUG_VALUE: AllocNALU:buffersize <- $ebp
	#DEBUG_VALUE: AllocNALU:n <- $rbx
	.loc	0 43 5 is_stmt 1                # ldecod_src/nalucommon.c:43:5
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp11:
	.loc	0 44 5                          # ldecod_src/nalucommon.c:44:5
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.Ltmp12:
.LBB0_4:                                # %if.end5
	#DEBUG_VALUE: AllocNALU:buffersize <- $ebp
	#DEBUG_VALUE: AllocNALU:n <- $rbx
	.loc	0 47 3                          # ldecod_src/nalucommon.c:47:3
	movq	%rbx, %rax
	.loc	0 47 3 epilogue_begin is_stmt 0 # ldecod_src/nalucommon.c:47:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp13:
	#DEBUG_VALUE: AllocNALU:n <- $rax
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp14:
	#DEBUG_VALUE: AllocNALU:buffersize <- [DW_OP_LLVM_entry_value 1] $edi
	.cfi_def_cfa_offset 8
	retq
.Ltmp15:
.Lfunc_end0:
	.size	AllocNALU, .Lfunc_end0-AllocNALU
	.cfi_endproc
	.file	3 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "ldecod_src/inc" "memalloc.h" md5 0x88776e97a131c37d03036121c7c9e0ac
                                        # -- End function
	.globl	FreeNALU                        # -- Begin function FreeNALU
	.p2align	4, 0x90
	.type	FreeNALU,@function
FreeNALU:                               # @FreeNALU
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: FreeNALU:n <- $rdi
	.loc	0 63 9 prologue_end is_stmt 1   # ldecod_src/nalucommon.c:63:9
	testq	%rdi, %rdi
.Ltmp16:
	.loc	0 63 7 is_stmt 0                # ldecod_src/nalucommon.c:63:7
	je	.LBB1_3
.Ltmp17:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: FreeNALU:n <- $rdi
	.loc	0 65 12 is_stmt 1               # ldecod_src/nalucommon.c:65:12
	movq	24(%rdi), %rax
	.loc	0 65 16 is_stmt 0               # ldecod_src/nalucommon.c:65:16
	testq	%rax, %rax
.Ltmp18:
	.loc	0 65 9                          # ldecod_src/nalucommon.c:65:9
	je	free@PLT                        # TAILCALL
.Ltmp19:
# %bb.2:                                # %if.then2
	#DEBUG_VALUE: FreeNALU:n <- [DW_OP_LLVM_entry_value 1] $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp20:
	.loc	0 67 7 is_stmt 1                # ldecod_src/nalucommon.c:67:7
	movq	%rax, %rdi
	callq	free@PLT
.Ltmp21:
	.loc	0 0 7 is_stmt 0                 # ldecod_src/nalucommon.c:0:7
	movq	%rbx, %rdi
	popq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 70 5 is_stmt 1                # ldecod_src/nalucommon.c:70:5
	jmp	free@PLT                        # TAILCALL
.Ltmp23:
.LBB1_3:                                # %if.end5
	#DEBUG_VALUE: FreeNALU:n <- $rdi
	.loc	0 72 1                          # ldecod_src/nalucommon.c:72:1
	retq
.Ltmp24:
.Lfunc_end1:
	.size	FreeNALU, .Lfunc_end1-FreeNALU
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocNALU: n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocNALU: n->buf"
	.size	.L.str.1, 18

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
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
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x218 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	13                              # DW_AT_count
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
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	18                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5b:0x39 DW_TAG_enumeration_type
	.long	148                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x63:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x66:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x69:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x6c:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x6f:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x72:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x75:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x78:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x7b:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x7e:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x81:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x84:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x87:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x8a:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x8d:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0x90:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	24                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x94:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x98:0x15 DW_TAG_enumeration_type
	.long	148                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa0:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xa3:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xa6:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	8                               # Abbrev [8] 0xa9:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xad:0x5 DW_TAG_pointer_type
	.long	178                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb2:0x8 DW_TAG_typedef
	.long	186                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xba:0x96 DW_TAG_structure_type
	.byte	49                              # DW_AT_name
	.byte	72                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbf:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xc8:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xd1:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xda:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xe3:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	340                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xec:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	348                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xf5:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xfe:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x107:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x110:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x119:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x122:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x12b:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x134:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x13d:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x146:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x150:0x4 DW_TAG_base_type
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x154:0x8 DW_TAG_typedef
	.long	91                              # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x15c:0x8 DW_TAG_typedef
	.long	152                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x164:0x5 DW_TAG_pointer_type
	.long	361                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x169:0x8 DW_TAG_typedef
	.long	369                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x171:0x4 DW_TAG_base_type
	.byte	36                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x175:0x8 DW_TAG_typedef
	.long	381                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x17d:0x4 DW_TAG_base_type
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x181:0x1 DW_TAG_pointer_type
	.byte	14                              # Abbrev [14] 0x182:0x40 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	173                             # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x191:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	336                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x19a:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	173                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1a3:0x6 DW_TAG_call_site
	.long	450                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x1a9:0x6 DW_TAG_call_site
	.long	482                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x1af:0x6 DW_TAG_call_site
	.long	450                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x1b5:0x6 DW_TAG_call_site
	.long	497                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x1bb:0x6 DW_TAG_call_site
	.long	482                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1c2:0x14 DW_TAG_subprogram
	.byte	51                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	385                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x1cb:0x5 DW_TAG_formal_parameter
	.long	470                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1d0:0x5 DW_TAG_formal_parameter
	.long	470                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1d6:0x8 DW_TAG_typedef
	.long	478                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1de:0x4 DW_TAG_base_type
	.byte	52                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x1e2:0xa DW_TAG_subprogram
	.byte	54                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x1e6:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1ec:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1f1:0xb DW_TAG_subprogram
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x1f6:0x5 DW_TAG_formal_parameter
	.long	385                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x1fc:0x27 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x207:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	173                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x210:0x6 DW_TAG_call_site
	.long	497                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	9                               # DW_AT_call_pc
	.byte	17                              # Abbrev [17] 0x216:0x6 DW_TAG_call_site
	.long	497                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x21c:0x6 DW_TAG_call_site
	.long	497                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	244                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/nalucommon.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=129
.Linfo_string3:
	.asciz	"char"                          # string offset=163
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=168
.Linfo_string5:
	.asciz	"unsigned int"                  # string offset=188
.Linfo_string6:
	.asciz	"NALU_TYPE_SLICE"               # string offset=201
.Linfo_string7:
	.asciz	"NALU_TYPE_DPA"                 # string offset=217
.Linfo_string8:
	.asciz	"NALU_TYPE_DPB"                 # string offset=231
.Linfo_string9:
	.asciz	"NALU_TYPE_DPC"                 # string offset=245
.Linfo_string10:
	.asciz	"NALU_TYPE_IDR"                 # string offset=259
.Linfo_string11:
	.asciz	"NALU_TYPE_SEI"                 # string offset=273
.Linfo_string12:
	.asciz	"NALU_TYPE_SPS"                 # string offset=287
.Linfo_string13:
	.asciz	"NALU_TYPE_PPS"                 # string offset=301
.Linfo_string14:
	.asciz	"NALU_TYPE_AUD"                 # string offset=315
.Linfo_string15:
	.asciz	"NALU_TYPE_EOSEQ"               # string offset=329
.Linfo_string16:
	.asciz	"NALU_TYPE_EOSTREAM"            # string offset=345
.Linfo_string17:
	.asciz	"NALU_TYPE_FILL"                # string offset=364
.Linfo_string18:
	.asciz	"NALU_TYPE_PREFIX"              # string offset=379
.Linfo_string19:
	.asciz	"NALU_TYPE_SUB_SPS"             # string offset=396
.Linfo_string20:
	.asciz	"NALU_TYPE_SLC_EXT"             # string offset=414
.Linfo_string21:
	.asciz	"NALU_TYPE_VDRD"                # string offset=432
.Linfo_string22:
	.asciz	"NALU_PRIORITY_HIGHEST"         # string offset=447
.Linfo_string23:
	.asciz	"NALU_PRIORITY_HIGH"            # string offset=469
.Linfo_string24:
	.asciz	"NALU_PRIORITY_LOW"             # string offset=488
.Linfo_string25:
	.asciz	"NALU_PRIORITY_DISPOSABLE"      # string offset=506
.Linfo_string26:
	.asciz	"startcodeprefix_len"           # string offset=531
.Linfo_string27:
	.asciz	"int"                           # string offset=551
.Linfo_string28:
	.asciz	"len"                           # string offset=555
.Linfo_string29:
	.asciz	"max_size"                      # string offset=559
.Linfo_string30:
	.asciz	"forbidden_bit"                 # string offset=568
.Linfo_string31:
	.asciz	"nal_unit_type"                 # string offset=582
.Linfo_string32:
	.asciz	"NaluType"                      # string offset=596
.Linfo_string33:
	.asciz	"nal_reference_idc"             # string offset=605
.Linfo_string34:
	.asciz	"NalRefIdc"                     # string offset=623
.Linfo_string35:
	.asciz	"buf"                           # string offset=633
.Linfo_string36:
	.asciz	"unsigned char"                 # string offset=637
.Linfo_string37:
	.asciz	"byte"                          # string offset=651
.Linfo_string38:
	.asciz	"lost_packets"                  # string offset=656
.Linfo_string39:
	.asciz	"unsigned short"                # string offset=669
.Linfo_string40:
	.asciz	"uint16"                        # string offset=684
.Linfo_string41:
	.asciz	"svc_extension_flag"            # string offset=691
.Linfo_string42:
	.asciz	"non_idr_flag"                  # string offset=710
.Linfo_string43:
	.asciz	"priority_id"                   # string offset=723
.Linfo_string44:
	.asciz	"view_id"                       # string offset=735
.Linfo_string45:
	.asciz	"temporal_id"                   # string offset=743
.Linfo_string46:
	.asciz	"anchor_pic_flag"               # string offset=755
.Linfo_string47:
	.asciz	"inter_view_flag"               # string offset=771
.Linfo_string48:
	.asciz	"reserved_one_bit"              # string offset=787
.Linfo_string49:
	.asciz	"nalu_t"                        # string offset=804
.Linfo_string50:
	.asciz	"NALU_t"                        # string offset=811
.Linfo_string51:
	.asciz	"calloc"                        # string offset=818
.Linfo_string52:
	.asciz	"unsigned long"                 # string offset=825
.Linfo_string53:
	.asciz	"size_t"                        # string offset=839
.Linfo_string54:
	.asciz	"no_mem_exit"                   # string offset=846
.Linfo_string55:
	.asciz	"free"                          # string offset=858
.Linfo_string56:
	.asciz	"AllocNALU"                     # string offset=863
.Linfo_string57:
	.asciz	"FreeNALU"                      # string offset=873
.Linfo_string58:
	.asciz	"buffersize"                    # string offset=882
.Linfo_string59:
	.asciz	"n"                             # string offset=893
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp6
	.quad	.Ltmp8
	.quad	.Ltmp11
	.quad	.Ltmp12
	.quad	.Lfunc_begin1
	.quad	.Ltmp18
	.quad	.Ltmp21
	.quad	.Ltmp22
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
