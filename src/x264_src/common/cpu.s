	.text
	.file	"cpu.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "x264_src/common/cpu.c" md5 0xdb4d05c503d17b664152f1c20ff72ae7
	.file	1 "x264_src/common" "cpu.h" md5 0x0beb41363cc0e5253fa85a15dbb3a435
	.globl	x264_cpu_detect                 # -- Begin function x264_cpu_detect
	.p2align	4, 0x90
	.type	x264_cpu_detect,@function
x264_cpu_detect:                        # @x264_cpu_detect
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 73 36 prologue_end            # x264_src/common/cpu.c:73:36
	xorl	%eax, %eax
	retq
.Ltmp0:
.Lfunc_end0:
	.size	x264_cpu_detect, .Lfunc_end0-x264_cpu_detect
	.cfi_endproc
                                        # -- End function
	.globl	x264_cpu_num_processors         # -- Begin function x264_cpu_num_processors
	.p2align	4, 0x90
	.type	x264_cpu_num_processors,@function
x264_cpu_num_processors:                # @x264_cpu_num_processors
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 344 5 prologue_end            # x264_src/common/cpu.c:344:5
	movl	$1, %eax
	retq
.Ltmp1:
.Lfunc_end1:
	.size	x264_cpu_num_processors, .Lfunc_end1-x264_cpu_num_processors
	.cfi_endproc
                                        # -- End function
	.type	x264_cpu_names,@object          # @x264_cpu_names
	.section	.rodata,"a",@progbits
	.globl	x264_cpu_names
	.p2align	4, 0x0
x264_cpu_names:
	.asciz	"Altivec\000\000\000\000\000\000\000\000"
	.long	4                               # 0x4
	.asciz	"MMX2\000\000\000\000\000\000\000\000\000\000\000"
	.long	24                              # 0x18
	.asciz	"MMXEXT\000\000\000\000\000\000\000\000\000"
	.long	24                              # 0x18
	.asciz	"SSE2Slow\000\000\000\000\000\000\000"
	.long	248                             # 0xf8
	.asciz	"SSE2\000\000\000\000\000\000\000\000\000\000\000"
	.long	120                             # 0x78
	.asciz	"SSE2Fast\000\000\000\000\000\000\000"
	.long	376                             # 0x178
	.asciz	"SSE3\000\000\000\000\000\000\000\000\000\000\000"
	.long	632                             # 0x278
	.asciz	"SSSE3\000\000\000\000\000\000\000\000\000\000"
	.long	1656                            # 0x678
	.asciz	"FastShuffle\000\000\000\000"
	.long	2168                            # 0x878
	.asciz	"SSE4.1\000\000\000\000\000\000\000\000\000"
	.long	9848                            # 0x2678
	.asciz	"SSE4.2\000\000\000\000\000\000\000\000\000"
	.long	26232                           # 0x6678
	.asciz	"Cache32\000\000\000\000\000\000\000\000"
	.long	1                               # 0x1
	.asciz	"Cache64\000\000\000\000\000\000\000\000"
	.long	2                               # 0x2
	.asciz	"SSEMisalign\000\000\000\000"
	.long	32768                           # 0x8000
	.asciz	"LZCNT\000\000\000\000\000\000\000\000\000\000"
	.long	65536                           # 0x10000
	.asciz	"Slow_mod4_stack"
	.long	4096                            # 0x1000
	.asciz	"ARMv6\000\000\000\000\000\000\000\000\000\000"
	.long	131072                          # 0x20000
	.asciz	"NEON\000\000\000\000\000\000\000\000\000\000\000"
	.long	262144                          # 0x40000
	.asciz	"Fast_NEON_MRC\000\000"
	.long	524288                          # 0x80000
	.asciz	"SlowCTZ\000\000\000\000\000\000\000\000"
	.long	1048576                         # 0x100000
	.asciz	"SlowAtom\000\000\000\000\000\000\000"
	.long	2097152                         # 0x200000
	.zero	20
	.size	x264_cpu_names, 440

	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	12                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xa3 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	46                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x2e:0xc DW_TAG_array_type
	.long	58                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x33:0x6 DW_TAG_subrange_type
	.long	115                             # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3a:0x5 DW_TAG_const_type
	.long	63                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3f:0x8 DW_TAG_typedef
	.long	71                              # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x47:0x17 DW_TAG_structure_type
	.byte	20                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4b:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	94                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x54:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	119                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x5e:0xc DW_TAG_array_type
	.long	106                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x63:0x6 DW_TAG_subrange_type
	.long	115                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x6a:0x5 DW_TAG_const_type
	.long	111                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6f:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x73:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x77:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x7b:0xf DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	154                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x8a:0x10 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	119                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x9a:0x8 DW_TAG_typedef
	.long	162                             # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xa2:0x8 DW_TAG_typedef
	.long	170                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xaa:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	64                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"x264_src/common/cpu.c"         # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=127
.Linfo_string3:
	.asciz	"x264_cpu_names"                # string offset=161
.Linfo_string4:
	.asciz	"name"                          # string offset=176
.Linfo_string5:
	.asciz	"char"                          # string offset=181
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=186
.Linfo_string7:
	.asciz	"flags"                         # string offset=206
.Linfo_string8:
	.asciz	"int"                           # string offset=212
.Linfo_string9:
	.asciz	"x264_cpu_name_t"               # string offset=216
.Linfo_string10:
	.asciz	"x264_cpu_detect"               # string offset=232
.Linfo_string11:
	.asciz	"unsigned int"                  # string offset=248
.Linfo_string12:
	.asciz	"__uint32_t"                    # string offset=261
.Linfo_string13:
	.asciz	"uint32_t"                      # string offset=272
.Linfo_string14:
	.asciz	"x264_cpu_num_processors"       # string offset=281
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	x264_cpu_names
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
