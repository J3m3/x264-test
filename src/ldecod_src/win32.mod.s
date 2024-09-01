	.text
	.file	"win32.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/win32.c" md5 0x864d3167eea91a6b80a395ab23077545
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	3 "ldecod_src/inc" "win32.h" md5 0x100def0ffeee72ecdc377183538a04bb
	.globl	gettime                         # -- Begin function gettime
	.p2align	4, 0x90
	.type	gettime,@function
gettime:                                # @gettime
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: gettime:time <- $rdi
	.loc	0 71 30 prologue_end            # ldecod_src/win32.c:71:30
	retq
.Ltmp0:
.Lfunc_end0:
	.size	gettime, .Lfunc_end0-gettime
	.cfi_endproc
                                        # -- End function
	.globl	timediff                        # -- Begin function timediff
	.p2align	4, 0x90
	.type	timediff,@function
timediff:                               # @timediff
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: timediff:start <- $rdi
	#DEBUG_VALUE: timediff:end <- $rsi
	.loc	0 78 14 prologue_end            # ldecod_src/win32.c:78:14
	movl	(%rsi), %eax
.Ltmp1:
	#DEBUG_VALUE: timediff:t1 <- undef
	.loc	0 78 22 is_stmt 0               # ldecod_src/win32.c:78:22
	subl	(%rdi), %eax
	.loc	0 79 14 is_stmt 1               # ldecod_src/win32.c:79:14
	movl	8(%rsi), %ecx
	.loc	0 79 22 is_stmt 0               # ldecod_src/win32.c:79:22
	subl	8(%rdi), %ecx
.Ltmp2:
	#DEBUG_VALUE: timediff:t2 <- undef
	.loc	0 80 10 is_stmt 1               # ldecod_src/win32.c:80:10
	movslq	%ecx, %rcx
	.loc	0 80 23 is_stmt 0               # ldecod_src/win32.c:80:23
	cltq
	.loc	0 80 34                         # ldecod_src/win32.c:80:34
	imulq	$1000000, %rax, %rax            # imm = 0xF4240
	.loc	0 80 21                         # ldecod_src/win32.c:80:21
	addq	%rcx, %rax
	.loc	0 80 3                          # ldecod_src/win32.c:80:3
	retq
.Ltmp3:
.Lfunc_end1:
	.size	timediff, .Lfunc_end1-timediff
	.cfi_endproc
                                        # -- End function
	.globl	timenorm                        # -- Begin function timenorm
	.p2align	4, 0x90
	.type	timenorm,@function
timenorm:                               # @timenorm
.Lfunc_begin2:
	.loc	0 84 0 is_stmt 1                # ldecod_src/win32.c:84:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: timenorm:cur_time <- $rdi
	movq	%rdi, %rax
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
.Ltmp4:
	.loc	0 85 27 prologue_end            # ldecod_src/win32.c:85:27
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rdx, %rax
	.loc	0 85 3 is_stmt 0                # ldecod_src/win32.c:85:3
	retq
.Ltmp5:
.Lfunc_end2:
	.size	timenorm, .Lfunc_end2-timenorm
	.cfi_endproc
                                        # -- End function
	.file	4 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timeval.h" md5 0x9b45d950050c215f216850b27bd1e8f3
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xc9 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x2b:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x33:0x8 DW_TAG_typedef
	.long	59                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x3b:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x3f:0x16 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x4a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	163                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x55:0x34 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	35                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x64:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	163                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	163                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x78:0x8 DW_TAG_variable
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	208                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x80:0x8 DW_TAG_variable
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	208                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x89:0x1a DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	35                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x98:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	35                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa3:0x5 DW_TAG_pointer_type
	.long	168                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa8:0x18 DW_TAG_structure_type
	.byte	15                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xad:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb6:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	200                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xc0:0x8 DW_TAG_typedef
	.long	59                              # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xc8:0x8 DW_TAG_typedef
	.long	59                              # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xd0:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	92                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/win32.c"            # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=124
.Linfo_string3:
	.asciz	"long"                          # string offset=158
.Linfo_string4:
	.asciz	"__int64_t"                     # string offset=163
.Linfo_string5:
	.asciz	"int64_t"                       # string offset=173
.Linfo_string6:
	.asciz	"int64"                         # string offset=181
.Linfo_string7:
	.asciz	"gettime"                       # string offset=187
.Linfo_string8:
	.asciz	"timediff"                      # string offset=195
.Linfo_string9:
	.asciz	"timenorm"                      # string offset=204
.Linfo_string10:
	.asciz	"time"                          # string offset=213
.Linfo_string11:
	.asciz	"tv_sec"                        # string offset=218
.Linfo_string12:
	.asciz	"__time_t"                      # string offset=225
.Linfo_string13:
	.asciz	"tv_usec"                       # string offset=234
.Linfo_string14:
	.asciz	"__suseconds_t"                 # string offset=242
.Linfo_string15:
	.asciz	"timeval"                       # string offset=256
.Linfo_string16:
	.asciz	"start"                         # string offset=264
.Linfo_string17:
	.asciz	"end"                           # string offset=270
.Linfo_string18:
	.asciz	"t1"                            # string offset=274
.Linfo_string19:
	.asciz	"int"                           # string offset=277
.Linfo_string20:
	.asciz	"t2"                            # string offset=281
.Linfo_string21:
	.asciz	"cur_time"                      # string offset=284
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
