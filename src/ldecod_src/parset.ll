; ModuleID = 'ldecod_src/parset.c'
source_filename = "ldecod_src/parset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }

@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16, !dbg !0
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16, !dbg !1887
@.str = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1, !dbg !100
@p_Dec = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1, !dbg !106
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid Profile IDC (%d) encountered. \0A\00", align 1, !dbg !108
@.str.3 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1, !dbg !113
@.str.4 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1, !dbg !118
@.str.5 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1, !dbg !120
@.str.6 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1, !dbg !122
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set4_flag\00", align 1, !dbg !124
@.str.8 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_3bits\00", align 1, !dbg !126
@.str.9 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1, !dbg !131
@.str.10 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1, !dbg !136
@.str.11 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1, !dbg !141
@.str.12 = private unnamed_addr constant [32 x i8] c"SPS: separate_colour_plane_flag\00", align 1, !dbg !146
@.str.13 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1, !dbg !151
@.str.14 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1, !dbg !153
@.str.15 = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1, !dbg !158
@.str.16 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1, !dbg !163
@.str.17 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1, !dbg !168
@.str.18 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1, !dbg !173
@.str.19 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1, !dbg !178
@.str.20 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1, !dbg !183
@.str.21 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1, !dbg !188
@.str.22 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1, !dbg !193
@.str.23 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1, !dbg !198
@.str.24 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1, !dbg !203
@.str.25 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1, !dbg !208
@.str.26 = private unnamed_addr constant [29 x i8] c"SPS: offset_for_ref_frame[i]\00", align 1, !dbg !213
@.str.27 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1, !dbg !215
@.str.28 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1, !dbg !220
@.str.29 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1, !dbg !225
@.str.30 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1, !dbg !227
@.str.31 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1, !dbg !229
@.str.32 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1, !dbg !231
@.str.33 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1, !dbg !233
@.str.34 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1, !dbg !235
@.str.35 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1, !dbg !237
@.str.36 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1, !dbg !239
@.str.37 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1, !dbg !241
@.str.38 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1, !dbg !243
@.str.39 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1, !dbg !245
@.str.40 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1, !dbg !250
@.str.41 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1, !dbg !252
@.str.42 = private unnamed_addr constant [15 x i8] c"VUI: sar_width\00", align 1, !dbg !257
@.str.43 = private unnamed_addr constant [16 x i8] c"VUI: sar_height\00", align 1, !dbg !259
@.str.44 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1, !dbg !264
@.str.45 = private unnamed_addr constant [31 x i8] c"VUI: overscan_appropriate_flag\00", align 1, !dbg !266
@.str.46 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1, !dbg !268
@.str.47 = private unnamed_addr constant [18 x i8] c"VUI: video_format\00", align 1, !dbg !270
@.str.48 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1, !dbg !275
@.str.49 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1, !dbg !277
@.str.50 = private unnamed_addr constant [22 x i8] c"VUI: colour_primaries\00", align 1, !dbg !279
@.str.51 = private unnamed_addr constant [30 x i8] c"VUI: transfer_characteristics\00", align 1, !dbg !281
@.str.52 = private unnamed_addr constant [25 x i8] c"VUI: matrix_coefficients\00", align 1, !dbg !286
@.str.53 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1, !dbg !288
@.str.54 = private unnamed_addr constant [38 x i8] c"VUI: chroma_sample_loc_type_top_field\00", align 1, !dbg !290
@.str.55 = private unnamed_addr constant [41 x i8] c"VUI: chroma_sample_loc_type_bottom_field\00", align 1, !dbg !292
@.str.56 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1, !dbg !297
@.str.57 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1, !dbg !299
@.str.58 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1, !dbg !301
@.str.59 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1, !dbg !303
@.str.60 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1, !dbg !305
@.str.61 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1, !dbg !307
@.str.62 = private unnamed_addr constant [24 x i8] c"VUI: low_delay_hrd_flag\00", align 1, !dbg !309
@.str.63 = private unnamed_addr constant [32 x i8] c"VUI: pic_struct_present_flag   \00", align 1, !dbg !311
@.str.64 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1, !dbg !313
@.str.65 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1, !dbg !315
@.str.66 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1, !dbg !320
@.str.67 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1, !dbg !322
@.str.68 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1, !dbg !324
@.str.69 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1, !dbg !326
@.str.70 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1, !dbg !328
@.str.71 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1, !dbg !330
@.str.72 = private unnamed_addr constant [20 x i8] c"VUI: cpb_cnt_minus1\00", align 1, !dbg !332
@.str.73 = private unnamed_addr constant [20 x i8] c"VUI: bit_rate_scale\00", align 1, !dbg !334
@.str.74 = private unnamed_addr constant [20 x i8] c"VUI: cpb_size_scale\00", align 1, !dbg !336
@.str.75 = private unnamed_addr constant [27 x i8] c"VUI: bit_rate_value_minus1\00", align 1, !dbg !338
@.str.76 = private unnamed_addr constant [27 x i8] c"VUI: cpb_size_value_minus1\00", align 1, !dbg !340
@.str.77 = private unnamed_addr constant [14 x i8] c"VUI: cbr_flag\00", align 1, !dbg !342
@.str.78 = private unnamed_addr constant [45 x i8] c"VUI: initial_cpb_removal_delay_length_minus1\00", align 1, !dbg !347
@.str.79 = private unnamed_addr constant [37 x i8] c"VUI: cpb_removal_delay_length_minus1\00", align 1, !dbg !349
@.str.80 = private unnamed_addr constant [36 x i8] c"VUI: dpb_output_delay_length_minus1\00", align 1, !dbg !351
@.str.81 = private unnamed_addr constant [24 x i8] c"VUI: time_offset_length\00", align 1, !dbg !353
@.str.82 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1, !dbg !355
@.str.83 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1, !dbg !357
@.str.84 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1, !dbg !359
@.str.85 = private unnamed_addr constant [50 x i8] c"PPS: bottom_field_pic_order_in_frame_present_flag\00", align 1, !dbg !361
@.str.86 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1, !dbg !366
@.str.87 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1, !dbg !368
@.str.88 = private unnamed_addr constant [27 x i8] c"PPS: run_length_minus1 [i]\00", align 1, !dbg !370
@.str.89 = private unnamed_addr constant [18 x i8] c"PPS: top_left [i]\00", align 1, !dbg !372
@.str.90 = private unnamed_addr constant [22 x i8] c"PPS: bottom_right [i]\00", align 1, !dbg !374
@.str.91 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1, !dbg !376
@.str.92 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1, !dbg !378
@.str.93 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1, !dbg !380
@.str.94 = private unnamed_addr constant [29 x i8] c"InterpretPPS: slice_group_id\00", align 1, !dbg !382
@.str.95 = private unnamed_addr constant [18 x i8] c"slice_group_id[i]\00", align 1, !dbg !384
@.str.96 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1, !dbg !386
@.str.97 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1, !dbg !388
@.str.98 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1, !dbg !390
@.str.99 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1, !dbg !392
@.str.100 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1, !dbg !394
@.str.101 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1, !dbg !396
@.str.102 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1, !dbg !398
@.str.103 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1, !dbg !400
@.str.104 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1, !dbg !405
@.str.105 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1, !dbg !407
@.str.106 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1, !dbg !409
@.str.107 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1, !dbg !411
@.str.108 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1, !dbg !413
@.str.109 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1, !dbg !415
@reset_format_info.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16, !dbg !432
@reset_format_info.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16, !dbg !1679
@.str.113 = private unnamed_addr constant [101 x i8] c"Trying to use an invalid (uninitialized) Picture Parameter Set with ID %d, expect the unexpected...\0A\00", align 1, !dbg !1681
@.str.114 = private unnamed_addr constant [112 x i8] c"PicParset %d references an invalid (uninitialized) Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1, !dbg !1686
@.str.115 = private unnamed_addr constant [119 x i8] c"PicParset %d references an invalid (uninitialized) Subset Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1, !dbg !1691
@.str.116 = private unnamed_addr constant [38 x i8] c"invalid sps->pic_order_cnt_type = %d\0A\00", align 1, !dbg !1696
@.str.117 = private unnamed_addr constant [24 x i8] c"pic_order_cnt_type != 1\00", align 1, !dbg !1698
@.str.118 = private unnamed_addr constant [48 x i8] c"num_ref_frames_in_pic_order_cnt_cycle too large\00", align 1, !dbg !1700
@.str.119 = private unnamed_addr constant [17 x i8] c"num_views_minus1\00", align 1, !dbg !1705
@.str.120 = private unnamed_addr constant [51 x i8] c"init_subset_seq_parameter_set: subset_sps->view_id\00", align 1, !dbg !1707
@.str.121 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l0\00", align 1, !dbg !1712
@.str.122 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l1\00", align 1, !dbg !1717
@.str.123 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0\00", align 1, !dbg !1719
@.str.124 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1\00", align 1, !dbg !1724
@.str.125 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l0\00", align 1, !dbg !1726
@.str.126 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l1\00", align 1, !dbg !1728
@.str.127 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0\00", align 1, !dbg !1730
@.str.128 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1\00", align 1, !dbg !1735
@.str.129 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1, !dbg !1737
@.str.130 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l0\00", align 1, !dbg !1740
@.str.131 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0[i]\00", align 1, !dbg !1745
@.str.132 = private unnamed_addr constant [14 x i8] c"anchor_ref_l0\00", align 1, !dbg !1750
@.str.133 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l1\00", align 1, !dbg !1752
@.str.134 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1[i]\00", align 1, !dbg !1754
@.str.135 = private unnamed_addr constant [14 x i8] c"anchor_ref_l1\00", align 1, !dbg !1756
@.str.136 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l0\00", align 1, !dbg !1758
@.str.137 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0[i]\00", align 1, !dbg !1760
@.str.138 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l0\00", align 1, !dbg !1763
@.str.139 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l1\00", align 1, !dbg !1765
@.str.140 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1[i]\00", align 1, !dbg !1767
@.str.141 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l1\00", align 1, !dbg !1769
@.str.142 = private unnamed_addr constant [34 x i8] c"num_level_values_signalled_minus1\00", align 1, !dbg !1771
@.str.143 = private unnamed_addr constant [53 x i8] c"init_subset_seq_parameter_set: subset_sps->level_idc\00", align 1, !dbg !1773
@.str.144 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->num_applicable_ops_minus1\00", align 1, !dbg !1778
@.str.145 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id\00", align 1, !dbg !1783
@.str.146 = private unnamed_addr constant [81 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1\00", align 1, !dbg !1785
@.str.147 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id\00", align 1, !dbg !1790
@.str.148 = private unnamed_addr constant [74 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1\00", align 1, !dbg !1795
@.str.149 = private unnamed_addr constant [10 x i8] c"level_idc\00", align 1, !dbg !1800
@.str.150 = private unnamed_addr constant [26 x i8] c"num_applicable_ops_minus1\00", align 1, !dbg !1804
@.str.151 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id[i]\00", align 1, !dbg !1806
@.str.152 = private unnamed_addr constant [84 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1[i]\00", align 1, !dbg !1808
@.str.153 = private unnamed_addr constant [75 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i]\00", align 1, !dbg !1813
@.str.154 = private unnamed_addr constant [77 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1[i]\00", align 1, !dbg !1818
@.str.155 = private unnamed_addr constant [26 x i8] c"applicable_op_temporal_id\00", align 1, !dbg !1823
@.str.156 = private unnamed_addr constant [38 x i8] c"applicable_op_num_target_views_minus1\00", align 1, !dbg !1825
@.str.157 = private unnamed_addr constant [78 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i][j]\00", align 1, !dbg !1827
@.str.158 = private unnamed_addr constant [29 x i8] c"applicable_op_target_view_id\00", align 1, !dbg !1832
@.str.159 = private unnamed_addr constant [31 x i8] c"applicable_op_num_views_minus1\00", align 1, !dbg !1834
@.str.160 = private unnamed_addr constant [15 x i8] c"cpb_cnt_minus1\00", align 1, !dbg !1836
@.str.161 = private unnamed_addr constant [15 x i8] c"bit_rate_scale\00", align 1, !dbg !1838
@.str.162 = private unnamed_addr constant [15 x i8] c"cpb_size_scale\00", align 1, !dbg !1840
@.str.163 = private unnamed_addr constant [22 x i8] c"bit_rate_value_minus1\00", align 1, !dbg !1842
@.str.164 = private unnamed_addr constant [22 x i8] c"cpb_size_value_minus1\00", align 1, !dbg !1844
@.str.165 = private unnamed_addr constant [9 x i8] c"cbr_flag\00", align 1, !dbg !1846
@.str.166 = private unnamed_addr constant [40 x i8] c"initial_cpb_removal_delay_length_minus1\00", align 1, !dbg !1848
@.str.167 = private unnamed_addr constant [32 x i8] c"cpb_removal_delay_length_minus1\00", align 1, !dbg !1850
@.str.168 = private unnamed_addr constant [31 x i8] c"dpb_output_delay_length_minus1\00", align 1, !dbg !1852
@.str.169 = private unnamed_addr constant [19 x i8] c"time_offset_length\00", align 1, !dbg !1854
@.str.170 = private unnamed_addr constant [23 x i8] c"vui_mvc_num_ops_minus1\00", align 1, !dbg !1856
@.str.171 = private unnamed_addr constant [47 x i8] c"mvc_vui_parameters_extension: pMVCVUI->view_id\00", align 1, !dbg !1858
@.str.172 = private unnamed_addr constant [20 x i8] c"vui_mvc_temporal_id\00", align 1, !dbg !1863
@.str.173 = private unnamed_addr constant [39 x i8] c"vui_mvc_num_target_output_views_minus1\00", align 1, !dbg !1865
@.str.174 = private unnamed_addr constant [16 x i8] c"vui_mvc_view_id\00", align 1, !dbg !1867
@.str.175 = private unnamed_addr constant [33 x i8] c"vui_mvc_timing_info_present_flag\00", align 1, !dbg !1869
@.str.176 = private unnamed_addr constant [26 x i8] c"vui_mvc_num_units_in_tick\00", align 1, !dbg !1871
@.str.177 = private unnamed_addr constant [19 x i8] c"vui_mvc_time_scale\00", align 1, !dbg !1873
@.str.178 = private unnamed_addr constant [30 x i8] c"vui_mvc_fixed_frame_rate_flag\00", align 1, !dbg !1875
@.str.179 = private unnamed_addr constant [40 x i8] c"vui_mvc_nal_hrd_parameters_present_flag\00", align 1, !dbg !1877
@.str.180 = private unnamed_addr constant [32 x i8] c"vcl_hrd_parameters_present_flag\00", align 1, !dbg !1879
@.str.181 = private unnamed_addr constant [27 x i8] c"vui_mvc_low_delay_hrd_flag\00", align 1, !dbg !1881
@.str.182 = private unnamed_addr constant [32 x i8] c"vui_mvc_pic_struct_present_flag\00", align 1, !dbg !1883
@.str.183 = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1, !dbg !1885
@.str.184 = private unnamed_addr constant [17 x i8] c"bit_equal_to_one\00", align 1, !dbg !1892
@.str.186 = private unnamed_addr constant [32 x i8] c"mvc_vui_parameters_present_flag\00", align 1, !dbg !1896
@.str.187 = private unnamed_addr constant [27 x i8] c"additional_extension2_flag\00", align 1, !dbg !1898
@str = private unnamed_addr constant [57 x i8] c"Consistency checking a picture parset, to be implemented\00", align 1
@str.188 = private unnamed_addr constant [58 x i8] c"Consistency checking a sequence parset, to be implemented\00", align 1
@str.189 = private unnamed_addr constant [65 x i8] c"Consistency checking a subset sequence parset, to be implemented\00", align 1
@str.190 = private unnamed_addr constant [37 x i8] c"\0Abit_equal_to_one is not equal to 1!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Scaling_List(ptr nocapture noundef writeonly %scalingList, i32 noundef %sizeOfScalingList, ptr nocapture noundef writeonly %UseDefaultScalingMatrix, ptr noundef %s) local_unnamed_addr #0 !dbg !1909 {
entry:
    #dbg_value(ptr %scalingList, !1913, !DIExpression(), !1922)
    #dbg_value(i32 %sizeOfScalingList, !1914, !DIExpression(), !1922)
    #dbg_value(ptr %UseDefaultScalingMatrix, !1915, !DIExpression(), !1922)
    #dbg_value(ptr %s, !1916, !DIExpression(), !1922)
    #dbg_value(i32 8, !1920, !DIExpression(), !1922)
    #dbg_value(i32 8, !1921, !DIExpression(), !1922)
    #dbg_value(i32 0, !1917, !DIExpression(), !1922)
  %cmp38 = icmp sgt i32 %sizeOfScalingList, 0, !dbg !1923
  br i1 %cmp38, label %for.body.lr.ph, label %for.end, !dbg !1926

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %sizeOfScalingList, 16
  br i1 %cmp1, label %for.body.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %sizeOfScalingList to i64, !dbg !1923
  br label %for.body, !dbg !1926

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end.thread.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %if.end.thread.us ], [ 0, %for.body.lr.ph ]
  %nextScale.041.us = phi i32 [ %nextScale.136.us, %if.end.thread.us ], [ 8, %for.body.lr.ph ]
  %lastScale.040.us = phi i32 [ %3, %if.end.thread.us ], [ 8, %for.body.lr.ph ]
    #dbg_value(i32 %nextScale.041.us, !1921, !DIExpression(), !1922)
    #dbg_value(i32 %lastScale.040.us, !1920, !DIExpression(), !1922)
    #dbg_value(i64 %indvars.iv44, !1917, !DIExpression(), !1922)
  %arrayidx.us = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44, !dbg !1927
  %cond.in.us = load i8, ptr %arrayidx.us, align 1, !dbg !1929
    #dbg_value(i8 %cond.in.us, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1922)
  %cmp5.not.us = icmp eq i32 %nextScale.041.us, 0, !dbg !1930
  br i1 %cmp5.not.us, label %if.end.thread.us, label %if.end.us, !dbg !1932

if.end.us:                                        ; preds = %for.body.us
  %call.us = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %s) #16, !dbg !1933
    #dbg_value(i32 %call.us, !1919, !DIExpression(), !1922)
  %add.us = add nsw i32 %call.us, %lastScale.040.us, !dbg !1935
  %add.fr.us = freeze i32 %add.us, !dbg !1936
  %add7.us = add i32 %add.fr.us, 256, !dbg !1936
  %rem.us = srem i32 %add7.us, 256, !dbg !1937
    #dbg_value(i32 %rem.us, !1921, !DIExpression(), !1922)
  %0 = trunc nuw nsw i64 %indvars.iv44 to i32, !dbg !1938
  %1 = or i32 %rem.us, %0, !dbg !1938
  %2 = icmp eq i32 %1, 0, !dbg !1938
  %land.ext.us = zext i1 %2 to i32, !dbg !1938
  store i32 %land.ext.us, ptr %UseDefaultScalingMatrix, align 4, !dbg !1939
  %cmp12.us = icmp eq i32 %rem.us, 0, !dbg !1940
  %spec.select.us = select i1 %cmp12.us, i32 %lastScale.040.us, i32 %rem.us, !dbg !1941
  br label %if.end.thread.us, !dbg !1941

if.end.thread.us:                                 ; preds = %for.body.us, %if.end.us
  %nextScale.136.us = phi i32 [ 0, %for.body.us ], [ %rem.us, %if.end.us ]
  %3 = phi i32 [ %lastScale.040.us, %for.body.us ], [ %spec.select.us, %if.end.us ], !dbg !1941
  %idxprom18.us = zext i8 %cond.in.us to i64, !dbg !1942
  %arrayidx19.us = getelementptr inbounds i32, ptr %scalingList, i64 %idxprom18.us, !dbg !1942
  store i32 %3, ptr %arrayidx19.us, align 4, !dbg !1943
    #dbg_value(i32 %3, !1920, !DIExpression(), !1922)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !1944
    #dbg_value(i32 %nextScale.136.us, !1921, !DIExpression(), !1922)
    #dbg_value(i64 %indvars.iv.next45, !1917, !DIExpression(), !1922)
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, 16, !dbg !1923
  br i1 %exitcond48.not, label %for.end, label %for.body.us, !dbg !1926, !llvm.loop !1945

for.body:                                         ; preds = %for.body.preheader, %if.end.thread
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end.thread ]
  %nextScale.041 = phi i32 [ 8, %for.body.preheader ], [ %nextScale.136, %if.end.thread ]
  %lastScale.040 = phi i32 [ 8, %for.body.preheader ], [ %7, %if.end.thread ]
    #dbg_value(i32 %nextScale.041, !1921, !DIExpression(), !1922)
    #dbg_value(i32 %lastScale.040, !1920, !DIExpression(), !1922)
    #dbg_value(i64 %indvars.iv, !1917, !DIExpression(), !1922)
  %arrayidx3 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv, !dbg !1927
  %cond.in = load i8, ptr %arrayidx3, align 1, !dbg !1929
    #dbg_value(i8 %cond.in, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1922)
  %cmp5.not = icmp eq i32 %nextScale.041, 0, !dbg !1930
  br i1 %cmp5.not, label %if.end.thread, label %if.end, !dbg !1932

if.end:                                           ; preds = %for.body
  %call = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %s) #16, !dbg !1933
    #dbg_value(i32 %call, !1919, !DIExpression(), !1922)
  %add = add nsw i32 %call, %lastScale.040, !dbg !1935
  %add.fr = freeze i32 %add, !dbg !1936
  %add7 = add i32 %add.fr, 256, !dbg !1936
  %rem = srem i32 %add7, 256, !dbg !1937
    #dbg_value(i32 %rem, !1921, !DIExpression(), !1922)
  %4 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1938
  %5 = or i32 %rem, %4, !dbg !1938
  %6 = icmp eq i32 %5, 0, !dbg !1938
  %land.ext = zext i1 %6 to i32, !dbg !1938
  store i32 %land.ext, ptr %UseDefaultScalingMatrix, align 4, !dbg !1939
  %cmp12 = icmp eq i32 %rem, 0, !dbg !1940
  %spec.select = select i1 %cmp12, i32 %lastScale.040, i32 %rem, !dbg !1941
  br label %if.end.thread, !dbg !1941

if.end.thread:                                    ; preds = %if.end, %for.body
  %nextScale.136 = phi i32 [ 0, %for.body ], [ %rem, %if.end ]
  %7 = phi i32 [ %lastScale.040, %for.body ], [ %spec.select, %if.end ], !dbg !1941
  %idxprom18 = zext i8 %cond.in to i64, !dbg !1942
  %arrayidx19 = getelementptr inbounds i32, ptr %scalingList, i64 %idxprom18, !dbg !1942
  store i32 %7, ptr %arrayidx19, align 4, !dbg !1943
    #dbg_value(i32 %7, !1920, !DIExpression(), !1922)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1944
    #dbg_value(i32 %nextScale.136, !1921, !DIExpression(), !1922)
    #dbg_value(i64 %indvars.iv.next, !1917, !DIExpression(), !1922)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1923
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1926, !llvm.loop !1945

for.end:                                          ; preds = %if.end.thread, %if.end.thread.us, %entry
  ret void, !dbg !1947
}

declare !dbg !1948 i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretSPS(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %p, ptr nocapture noundef %sps) local_unnamed_addr #0 !dbg !1952 {
entry:
    #dbg_value(ptr %p_Vid, !1956, !DIExpression(), !1963)
    #dbg_value(ptr %p, !1957, !DIExpression(), !1963)
    #dbg_value(ptr %sps, !1958, !DIExpression(), !1963)
  %0 = load ptr, ptr %p, align 8, !dbg !1964
    #dbg_value(ptr %0, !1962, !DIExpression(), !1963)
  %1 = load ptr, ptr @p_Dec, align 8, !dbg !1965
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24, !dbg !1966
  store i32 0, ptr %UsedBits, align 8, !dbg !1967
  %call = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %0) #16, !dbg !1968
  %profile_idc = getelementptr inbounds i8, ptr %sps, i64 4, !dbg !1969
  store i32 %call, ptr %profile_idc, align 4, !dbg !1970
  switch i32 %call, label %if.then [
    i32 66, label %if.end
    i32 77, label %if.end
    i32 88, label %if.end
    i32 100, label %if.end
    i32 110, label %if.end
    i32 122, label %if.end
    i32 244, label %if.end
    i32 44, label %if.end
    i32 118, label %if.end
    i32 128, label %if.end
  ], !dbg !1971

if.then:                                          ; preds = %entry
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %call), !dbg !1973
  br label %cleanup, !dbg !1975

if.end:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call31 = tail call i32 @u_1(ptr noundef nonnull @.str.3, ptr noundef %0) #16, !dbg !1976
  %constrained_set0_flag = getelementptr inbounds i8, ptr %sps, i64 8, !dbg !1977
  store i32 %call31, ptr %constrained_set0_flag, align 4, !dbg !1978
  %call32 = tail call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %0) #16, !dbg !1979
  %constrained_set1_flag = getelementptr inbounds i8, ptr %sps, i64 12, !dbg !1980
  store i32 %call32, ptr %constrained_set1_flag, align 4, !dbg !1981
  %call33 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %0) #16, !dbg !1982
  %constrained_set2_flag = getelementptr inbounds i8, ptr %sps, i64 16, !dbg !1983
  store i32 %call33, ptr %constrained_set2_flag, align 4, !dbg !1984
  %call34 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %0) #16, !dbg !1985
  %constrained_set3_flag = getelementptr inbounds i8, ptr %sps, i64 20, !dbg !1986
  store i32 %call34, ptr %constrained_set3_flag, align 4, !dbg !1987
  %call35 = tail call i32 @u_1(ptr noundef nonnull @.str.7, ptr noundef %0) #16, !dbg !1988
  %constrained_set4_flag = getelementptr inbounds i8, ptr %sps, i64 24, !dbg !1989
  store i32 %call35, ptr %constrained_set4_flag, align 4, !dbg !1990
  %call36 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef %0) #16, !dbg !1991
    #dbg_value(i32 %call36, !1961, !DIExpression(), !1963)
  %call37 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %0) #16, !dbg !1992
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28, !dbg !1993
  store i32 %call37, ptr %level_idc, align 4, !dbg !1994
  %call38 = tail call i32 @ue_v(ptr noundef nonnull @.str.10, ptr noundef %0) #16, !dbg !1995
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %sps, i64 32, !dbg !1996
  store i32 %call38, ptr %seq_parameter_set_id, align 4, !dbg !1997
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36, !dbg !1998
  store i32 1, ptr %chroma_format_idc, align 4, !dbg !1999
  %bit_depth_luma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2060, !dbg !2000
  store i32 0, ptr %bit_depth_luma_minus8, align 4, !dbg !2001
  %bit_depth_chroma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2064, !dbg !2002
  store i32 0, ptr %bit_depth_chroma_minus8, align 4, !dbg !2003
  %lossless_qpprime_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849092, !dbg !2004
  store i32 0, ptr %lossless_qpprime_flag, align 4, !dbg !2005
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %sps, i64 4120, !dbg !2006
  store i32 0, ptr %separate_colour_plane_flag, align 4, !dbg !2007
  %2 = load i32, ptr %profile_idc, align 4, !dbg !2008
  switch i32 %2, label %if.end114 [
    i32 100, label %if.then58
    i32 110, label %if.then58
    i32 122, label %if.then58
    i32 244, label %if.then58
    i32 44, label %if.then58
    i32 118, label %if.then58
    i32 128, label %if.then58
  ], !dbg !2010

if.then58:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call59 = tail call i32 @ue_v(ptr noundef nonnull @.str.11, ptr noundef %0) #16, !dbg !2011
  store i32 %call59, ptr %chroma_format_idc, align 4, !dbg !2013
  %cmp62 = icmp eq i32 %call59, 3, !dbg !2014
  br i1 %cmp62, label %if.then63, label %if.end66, !dbg !2016

if.then63:                                        ; preds = %if.then58
  %call64 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %0) #16, !dbg !2017
  store i32 %call64, ptr %separate_colour_plane_flag, align 4, !dbg !2019
  br label %if.end66, !dbg !2020

if.end66:                                         ; preds = %if.then63, %if.then58
  %call67 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef %0) #16, !dbg !2021
  store i32 %call67, ptr %bit_depth_luma_minus8, align 4, !dbg !2022
  %call69 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %0) #16, !dbg !2023
  store i32 %call69, ptr %bit_depth_chroma_minus8, align 4, !dbg !2024
  %3 = load i32, ptr %bit_depth_luma_minus8, align 4, !dbg !2025
  %4 = add i32 %3, -9, !dbg !2027
  %cmp72 = icmp ult i32 %4, -17, !dbg !2027
  %5 = add i32 %call69, -9
  %cmp78 = icmp ult i32 %5, -17
  %or.cond = select i1 %cmp72, i1 true, i1 %cmp78, !dbg !2028
  br i1 %or.cond, label %if.then80, label %if.end81, !dbg !2028

if.then80:                                        ; preds = %if.end66
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 500) #16, !dbg !2029
  br label %if.end81, !dbg !2029

if.end81:                                         ; preds = %if.end66, %if.then80
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.16, ptr noundef %0) #16, !dbg !2030
  store i32 %call82, ptr %lossless_qpprime_flag, align 4, !dbg !2031
  %call84 = tail call i32 @u_1(ptr noundef nonnull @.str.17, ptr noundef %0) #16, !dbg !2032
  %seq_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %sps, i64 40, !dbg !2033
  store i32 %call84, ptr %seq_scaling_matrix_present_flag, align 4, !dbg !2034
  %tobool.not = icmp eq i32 %call84, 0, !dbg !2035
  br i1 %tobool.not, label %if.end114, label %if.then86, !dbg !2037

if.then86:                                        ; preds = %if.end81
  %6 = load i32, ptr %chroma_format_idc, align 4, !dbg !2038
  %cmp88.not = icmp eq i32 %6, 3, !dbg !2040
  %cond = select i1 %cmp88.not, i64 12, i64 8, !dbg !2041
    #dbg_value(i32 poison, !1960, !DIExpression(), !1963)
    #dbg_value(i32 0, !1959, !DIExpression(), !1963)
  %seq_scaling_list_present_flag = getelementptr inbounds i8, ptr %sps, i64 44
  %ScalingList8x8 = getelementptr inbounds i8, ptr %sps, i64 476
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %sps, i64 2036
  %ScalingList4x4 = getelementptr inbounds i8, ptr %sps, i64 92
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %sps, i64 2012
  br label %for.body, !dbg !2042

for.body:                                         ; preds = %if.then86, %for.inc
  %indvars.iv = phi i64 [ 0, %if.then86 ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !1959, !DIExpression(), !1963)
  %call92 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %0) #16, !dbg !2044
  %arrayidx = getelementptr inbounds [12 x i32], ptr %seq_scaling_list_present_flag, i64 0, i64 %indvars.iv, !dbg !2047
  store i32 %call92, ptr %arrayidx, align 4, !dbg !2048
  %tobool96.not = icmp eq i32 %call92, 0, !dbg !2049
  br i1 %tobool96.not, label %for.inc, label %if.then97, !dbg !2051

if.then97:                                        ; preds = %for.body
  %cmp98 = icmp ult i64 %indvars.iv, 6, !dbg !2052
  br i1 %cmp98, label %if.then100, label %if.else, !dbg !2055

if.then100:                                       ; preds = %if.then97
  %arrayidx102 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv, !dbg !2056
  %arrayidx104 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv, !dbg !2057
    #dbg_value(ptr %arrayidx102, !1913, !DIExpression(), !2058)
    #dbg_value(i32 16, !1914, !DIExpression(), !2058)
    #dbg_value(ptr %arrayidx104, !1915, !DIExpression(), !2058)
    #dbg_value(ptr %0, !1916, !DIExpression(), !2058)
    #dbg_value(i32 8, !1920, !DIExpression(), !2058)
    #dbg_value(i32 8, !1921, !DIExpression(), !2058)
    #dbg_value(i32 0, !1917, !DIExpression(), !2058)
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %if.end.thread.us.i, %if.then100
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %if.end.thread.us.i ], [ 0, %if.then100 ]
  %nextScale.041.us.i = phi i32 [ %nextScale.136.us.i, %if.end.thread.us.i ], [ 8, %if.then100 ]
  %lastScale.040.us.i = phi i32 [ %10, %if.end.thread.us.i ], [ 8, %if.then100 ]
    #dbg_value(i32 %nextScale.041.us.i, !1921, !DIExpression(), !2058)
    #dbg_value(i32 %lastScale.040.us.i, !1920, !DIExpression(), !2058)
    #dbg_value(i64 %indvars.iv44.i, !1917, !DIExpression(), !2058)
  %arrayidx.us.i = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44.i, !dbg !2060
  %cond.in.us.i = load i8, ptr %arrayidx.us.i, align 1, !dbg !2061
    #dbg_value(i8 %cond.in.us.i, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2058)
  %cmp5.not.us.i = icmp eq i32 %nextScale.041.us.i, 0, !dbg !2062
  br i1 %cmp5.not.us.i, label %if.end.thread.us.i, label %if.end.us.i, !dbg !2063

if.end.us.i:                                      ; preds = %for.body.us.i
  %call.us.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16, !dbg !2064
    #dbg_value(i32 %call.us.i, !1919, !DIExpression(), !2058)
  %add.us.i = add nsw i32 %call.us.i, %lastScale.040.us.i, !dbg !2065
  %add.fr.us.i = freeze i32 %add.us.i, !dbg !2066
  %add7.us.i = add i32 %add.fr.us.i, 256, !dbg !2066
  %rem.us.i = srem i32 %add7.us.i, 256, !dbg !2067
    #dbg_value(i32 %rem.us.i, !1921, !DIExpression(), !2058)
  %7 = trunc nuw nsw i64 %indvars.iv44.i to i32, !dbg !2068
  %8 = or i32 %rem.us.i, %7, !dbg !2068
  %9 = icmp eq i32 %8, 0, !dbg !2068
  %land.ext.us.i = zext i1 %9 to i32, !dbg !2068
  store i32 %land.ext.us.i, ptr %arrayidx104, align 4, !dbg !2069
  %cmp12.us.i = icmp eq i32 %rem.us.i, 0, !dbg !2070
  %spec.select.us.i = select i1 %cmp12.us.i, i32 %lastScale.040.us.i, i32 %rem.us.i, !dbg !2071
  br label %if.end.thread.us.i, !dbg !2071

if.end.thread.us.i:                               ; preds = %if.end.us.i, %for.body.us.i
  %nextScale.136.us.i = phi i32 [ 0, %for.body.us.i ], [ %rem.us.i, %if.end.us.i ]
  %10 = phi i32 [ %lastScale.040.us.i, %for.body.us.i ], [ %spec.select.us.i, %if.end.us.i ], !dbg !2071
  %idxprom18.us.i = zext i8 %cond.in.us.i to i64, !dbg !2072
  %arrayidx19.us.i = getelementptr inbounds i32, ptr %arrayidx102, i64 %idxprom18.us.i, !dbg !2072
  store i32 %10, ptr %arrayidx19.us.i, align 4, !dbg !2073
    #dbg_value(i32 %10, !1920, !DIExpression(), !2058)
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1, !dbg !2074
    #dbg_value(i32 %nextScale.136.us.i, !1921, !DIExpression(), !2058)
    #dbg_value(i64 %indvars.iv.next45.i, !1917, !DIExpression(), !2058)
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, 16, !dbg !2075
  br i1 %exitcond48.not.i, label %for.inc, label %for.body.us.i, !dbg !2076, !llvm.loop !2077

if.else:                                          ; preds = %if.then97
  %11 = add nsw i64 %indvars.iv, -6, !dbg !2079
  %arrayidx106 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %11, !dbg !2080
  %arrayidx110 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %11, !dbg !2081
    #dbg_value(ptr %arrayidx106, !1913, !DIExpression(), !2082)
    #dbg_value(i32 64, !1914, !DIExpression(), !2082)
    #dbg_value(ptr %arrayidx110, !1915, !DIExpression(), !2082)
    #dbg_value(ptr %0, !1916, !DIExpression(), !2082)
    #dbg_value(i32 8, !1920, !DIExpression(), !2082)
    #dbg_value(i32 8, !1921, !DIExpression(), !2082)
    #dbg_value(i32 0, !1917, !DIExpression(), !2082)
  br label %for.body.i, !dbg !2084

for.body.i:                                       ; preds = %if.end.thread.i, %if.else
  %indvars.iv.i = phi i64 [ 0, %if.else ], [ %indvars.iv.next.i, %if.end.thread.i ]
  %nextScale.041.i = phi i32 [ 8, %if.else ], [ %nextScale.136.i, %if.end.thread.i ]
  %lastScale.040.i = phi i32 [ 8, %if.else ], [ %15, %if.end.thread.i ]
    #dbg_value(i32 %nextScale.041.i, !1921, !DIExpression(), !2082)
    #dbg_value(i32 %lastScale.040.i, !1920, !DIExpression(), !2082)
    #dbg_value(i64 %indvars.iv.i, !1917, !DIExpression(), !2082)
  %arrayidx3.i = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv.i, !dbg !2085
  %cond.in.i = load i8, ptr %arrayidx3.i, align 1, !dbg !2086
    #dbg_value(i8 %cond.in.i, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2082)
  %cmp5.not.i = icmp eq i32 %nextScale.041.i, 0, !dbg !2087
  br i1 %cmp5.not.i, label %if.end.thread.i, label %if.end.i, !dbg !2088

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16, !dbg !2089
    #dbg_value(i32 %call.i, !1919, !DIExpression(), !2082)
  %add.i = add nsw i32 %call.i, %lastScale.040.i, !dbg !2090
  %add.fr.i = freeze i32 %add.i, !dbg !2091
  %add7.i = add i32 %add.fr.i, 256, !dbg !2091
  %rem.i = srem i32 %add7.i, 256, !dbg !2092
    #dbg_value(i32 %rem.i, !1921, !DIExpression(), !2082)
  %12 = trunc nuw nsw i64 %indvars.iv.i to i32, !dbg !2093
  %13 = or i32 %rem.i, %12, !dbg !2093
  %14 = icmp eq i32 %13, 0, !dbg !2093
  %land.ext.i = zext i1 %14 to i32, !dbg !2093
  store i32 %land.ext.i, ptr %arrayidx110, align 4, !dbg !2094
  %cmp12.i = icmp eq i32 %rem.i, 0, !dbg !2095
  %spec.select.i = select i1 %cmp12.i, i32 %lastScale.040.i, i32 %rem.i, !dbg !2096
  br label %if.end.thread.i, !dbg !2096

if.end.thread.i:                                  ; preds = %if.end.i, %for.body.i
  %nextScale.136.i = phi i32 [ 0, %for.body.i ], [ %rem.i, %if.end.i ]
  %15 = phi i32 [ %lastScale.040.i, %for.body.i ], [ %spec.select.i, %if.end.i ], !dbg !2096
  %idxprom18.i = zext i8 %cond.in.i to i64, !dbg !2097
  %arrayidx19.i = getelementptr inbounds i32, ptr %arrayidx106, i64 %idxprom18.i, !dbg !2097
  store i32 %15, ptr %arrayidx19.i, align 4, !dbg !2098
    #dbg_value(i32 %15, !1920, !DIExpression(), !2082)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2099
    #dbg_value(i32 %nextScale.136.i, !1921, !DIExpression(), !2082)
    #dbg_value(i64 %indvars.iv.next.i, !1917, !DIExpression(), !2082)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64, !dbg !2100
  br i1 %exitcond.not.i, label %for.inc, label %for.body.i, !dbg !2084, !llvm.loop !2101

for.inc:                                          ; preds = %if.end.thread.i, %if.end.thread.us.i, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2103
    #dbg_value(i64 %indvars.iv.next, !1959, !DIExpression(), !1963)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %cond, !dbg !2104
  br i1 %exitcond.not, label %if.end114, label %for.body, !dbg !2042, !llvm.loop !2105

if.end114:                                        ; preds = %for.inc, %if.end, %if.end81
  %call115 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef %0) #16, !dbg !2107
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps, i64 2068, !dbg !2108
  store i32 %call115, ptr %log2_max_frame_num_minus4, align 4, !dbg !2109
  %call116 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef %0) #16, !dbg !2110
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %sps, i64 2072, !dbg !2111
  store i32 %call116, ptr %pic_order_cnt_type, align 4, !dbg !2112
  switch i32 %call116, label %if.end143 [
    i32 0, label %if.then120
    i32 1, label %if.then126
  ], !dbg !2113

if.then120:                                       ; preds = %if.end114
  %call121 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %0) #16, !dbg !2114
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %sps, i64 2076, !dbg !2116
  store i32 %call121, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !2117
  br label %if.end143, !dbg !2118

if.then126:                                       ; preds = %if.end114
  %call127 = tail call i32 @u_1(ptr noundef nonnull @.str.22, ptr noundef %0) #16, !dbg !2119
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %sps, i64 2080, !dbg !2122
  store i32 %call127, ptr %delta_pic_order_always_zero_flag, align 4, !dbg !2123
  %call128 = tail call i32 @se_v(ptr noundef nonnull @.str.23, ptr noundef %0) #16, !dbg !2124
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %sps, i64 2084, !dbg !2125
  store i32 %call128, ptr %offset_for_non_ref_pic, align 4, !dbg !2126
  %call129 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %0) #16, !dbg !2127
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %sps, i64 2088, !dbg !2128
  store i32 %call129, ptr %offset_for_top_to_bottom_field, align 4, !dbg !2129
  %call130 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %0) #16, !dbg !2130
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %sps, i64 2092, !dbg !2131
  store i32 %call130, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2132
    #dbg_value(i32 0, !1959, !DIExpression(), !1963)
  %cmp133298.not = icmp eq i32 %call130, 0, !dbg !2133
  br i1 %cmp133298.not, label %if.end143, label %for.body135.lr.ph, !dbg !2136

for.body135.lr.ph:                                ; preds = %if.then126
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %sps, i64 2096
  br label %for.body135, !dbg !2136

for.body135:                                      ; preds = %for.body135.lr.ph, %for.body135
  %indvars.iv303 = phi i64 [ 0, %for.body135.lr.ph ], [ %indvars.iv.next304, %for.body135 ]
    #dbg_value(i64 %indvars.iv303, !1959, !DIExpression(), !1963)
  %call136 = tail call i32 @se_v(ptr noundef nonnull @.str.26, ptr noundef %0) #16, !dbg !2137
  %arrayidx138 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv303, !dbg !2138
  store i32 %call136, ptr %arrayidx138, align 4, !dbg !2139
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1, !dbg !2140
    #dbg_value(i64 %indvars.iv.next304, !1959, !DIExpression(), !1963)
  %16 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2141
  %17 = zext i32 %16 to i64, !dbg !2133
  %cmp133 = icmp ult i64 %indvars.iv.next304, %17, !dbg !2133
  br i1 %cmp133, label %for.body135, label %if.end143, !dbg !2136, !llvm.loop !2142

if.end143:                                        ; preds = %for.body135, %if.then126, %if.end114, %if.then120
  %call144 = tail call i32 @ue_v(ptr noundef nonnull @.str.27, ptr noundef %0) #16, !dbg !2144
  %num_ref_frames = getelementptr inbounds i8, ptr %sps, i64 3120, !dbg !2145
  store i32 %call144, ptr %num_ref_frames, align 4, !dbg !2146
  %call145 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %0) #16, !dbg !2147
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds i8, ptr %sps, i64 3124, !dbg !2148
  store i32 %call145, ptr %gaps_in_frame_num_value_allowed_flag, align 4, !dbg !2149
  %call146 = tail call i32 @ue_v(ptr noundef nonnull @.str.29, ptr noundef %0) #16, !dbg !2150
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128, !dbg !2151
  store i32 %call146, ptr %pic_width_in_mbs_minus1, align 4, !dbg !2152
  %call147 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %0) #16, !dbg !2153
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132, !dbg !2154
  store i32 %call147, ptr %pic_height_in_map_units_minus1, align 4, !dbg !2155
  %call148 = tail call i32 @u_1(ptr noundef nonnull @.str.31, ptr noundef %0) #16, !dbg !2156
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136, !dbg !2157
  store i32 %call148, ptr %frame_mbs_only_flag, align 4, !dbg !2158
  %tobool150.not = icmp eq i32 %call148, 0, !dbg !2159
  br i1 %tobool150.not, label %if.then151, label %if.end153, !dbg !2161

if.then151:                                       ; preds = %if.end143
  %call152 = tail call i32 @u_1(ptr noundef nonnull @.str.32, ptr noundef %0) #16, !dbg !2162
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %sps, i64 3140, !dbg !2164
  store i32 %call152, ptr %mb_adaptive_frame_field_flag, align 4, !dbg !2165
  br label %if.end153, !dbg !2166

if.end153:                                        ; preds = %if.then151, %if.end143
  %call154 = tail call i32 @u_1(ptr noundef nonnull @.str.33, ptr noundef %0) #16, !dbg !2167
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %sps, i64 3144, !dbg !2168
  store i32 %call154, ptr %direct_8x8_inference_flag, align 4, !dbg !2169
  %call155 = tail call i32 @u_1(ptr noundef nonnull @.str.34, ptr noundef %0) #16, !dbg !2170
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps, i64 3148, !dbg !2171
  store i32 %call155, ptr %frame_cropping_flag, align 4, !dbg !2172
  %tobool157.not = icmp eq i32 %call155, 0, !dbg !2173
  br i1 %tobool157.not, label %if.end163, label %if.then158, !dbg !2175

if.then158:                                       ; preds = %if.end153
  %call159 = tail call i32 @ue_v(ptr noundef nonnull @.str.35, ptr noundef %0) #16, !dbg !2176
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps, i64 3152, !dbg !2178
  store i32 %call159, ptr %frame_cropping_rect_left_offset, align 4, !dbg !2179
  %call160 = tail call i32 @ue_v(ptr noundef nonnull @.str.36, ptr noundef %0) #16, !dbg !2180
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %sps, i64 3156, !dbg !2181
  store i32 %call160, ptr %frame_cropping_rect_right_offset, align 4, !dbg !2182
  %call161 = tail call i32 @ue_v(ptr noundef nonnull @.str.37, ptr noundef %0) #16, !dbg !2183
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %sps, i64 3160, !dbg !2184
  store i32 %call161, ptr %frame_cropping_rect_top_offset, align 4, !dbg !2185
  %call162 = tail call i32 @ue_v(ptr noundef nonnull @.str.38, ptr noundef %0) #16, !dbg !2186
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %sps, i64 3164, !dbg !2187
  store i32 %call162, ptr %frame_cropping_rect_bottom_offset, align 4, !dbg !2188
  br label %if.end163, !dbg !2189

if.end163:                                        ; preds = %if.then158, %if.end153
  %call164 = tail call i32 @u_1(ptr noundef nonnull @.str.39, ptr noundef %0) #16, !dbg !2190
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3168, !dbg !2191
  store i32 %call164, ptr %vui_parameters_present_flag, align 4, !dbg !2192
    #dbg_value(ptr %sps, !2193, !DIExpression(), !2198)
  %matrix_coefficients.i = getelementptr inbounds i8, ptr %sps, i64 3216, !dbg !2200
  store i32 2, ptr %matrix_coefficients.i, align 4, !dbg !2201
  %call165 = tail call i32 @ReadVUI(ptr noundef nonnull %p, ptr noundef nonnull %sps), !dbg !2202
  store i32 1, ptr %sps, align 4, !dbg !2203
  br label %cleanup, !dbg !2204

cleanup:                                          ; preds = %if.end163, %if.then
  %.pn = load ptr, ptr @p_Dec, align 8, !dbg !1963
  %retval.0.in = getelementptr inbounds i8, ptr %.pn, i64 24, !dbg !1963
  %retval.0 = load i32, ptr %retval.0.in, align 8, !dbg !1963
  ret i32 %retval.0, !dbg !2205
}

declare !dbg !2206 i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !2209 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !2216 i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2217 i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2218 void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @InitVUI(ptr nocapture noundef writeonly %sps) local_unnamed_addr #3 !dbg !2194 {
entry:
    #dbg_value(ptr %sps, !2193, !DIExpression(), !2221)
  %matrix_coefficients = getelementptr inbounds i8, ptr %sps, i64 3216, !dbg !2222
  store i32 2, ptr %matrix_coefficients, align 4, !dbg !2223
  ret void, !dbg !2224
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadVUI(ptr nocapture noundef readonly %p, ptr nocapture noundef %sps) local_unnamed_addr #0 !dbg !2225 {
entry:
    #dbg_value(ptr %p, !2229, !DIExpression(), !2232)
    #dbg_value(ptr %sps, !2230, !DIExpression(), !2232)
  %0 = load ptr, ptr %p, align 8, !dbg !2233
    #dbg_value(ptr %0, !2231, !DIExpression(), !2232)
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3168, !dbg !2234
  %1 = load i32, ptr %vui_parameters_present_flag, align 4, !dbg !2234
  %tobool.not = icmp eq i32 %1, 0, !dbg !2236
  br i1 %tobool.not, label %if.end124, label %if.then, !dbg !2237

if.then:                                          ; preds = %entry
  %call = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef %0) #16, !dbg !2238
  %vui_seq_parameters = getelementptr inbounds i8, ptr %sps, i64 3172, !dbg !2240
  store i32 %call, ptr %vui_seq_parameters, align 4, !dbg !2241
  %tobool3.not = icmp eq i32 %call, 0, !dbg !2242
  br i1 %tobool3.not, label %if.end15, label %if.then4, !dbg !2244

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.41, ptr noundef %0) #16, !dbg !2245
  %aspect_ratio_idc = getelementptr inbounds i8, ptr %sps, i64 3176, !dbg !2247
  store i32 %call5, ptr %aspect_ratio_idc, align 4, !dbg !2248
  %cmp = icmp eq i32 %call5, 255, !dbg !2249
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !2251

if.then9:                                         ; preds = %if.then4
  %call10 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.42, ptr noundef %0) #16, !dbg !2252
  %conv = trunc i32 %call10 to i16, !dbg !2254
  %sar_width = getelementptr inbounds i8, ptr %sps, i64 3180, !dbg !2255
  store i16 %conv, ptr %sar_width, align 4, !dbg !2256
  %call12 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.43, ptr noundef %0) #16, !dbg !2257
  %conv13 = trunc i32 %call12 to i16, !dbg !2258
  %sar_height = getelementptr inbounds i8, ptr %sps, i64 3182, !dbg !2259
  store i16 %conv13, ptr %sar_height, align 2, !dbg !2260
  br label %if.end15, !dbg !2261

if.end15:                                         ; preds = %if.then4, %if.then9, %if.then
  %call16 = tail call i32 @u_1(ptr noundef nonnull @.str.44, ptr noundef %0) #16, !dbg !2262
  %overscan_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3184, !dbg !2263
  store i32 %call16, ptr %overscan_info_present_flag, align 4, !dbg !2264
  %tobool20.not = icmp eq i32 %call16, 0, !dbg !2265
  br i1 %tobool20.not, label %if.end24, label %if.then21, !dbg !2267

if.then21:                                        ; preds = %if.end15
  %call22 = tail call i32 @u_1(ptr noundef nonnull @.str.45, ptr noundef %0) #16, !dbg !2268
  %overscan_appropriate_flag = getelementptr inbounds i8, ptr %sps, i64 3188, !dbg !2270
  store i32 %call22, ptr %overscan_appropriate_flag, align 4, !dbg !2271
  br label %if.end24, !dbg !2272

if.end24:                                         ; preds = %if.then21, %if.end15
  %call25 = tail call i32 @u_1(ptr noundef nonnull @.str.46, ptr noundef %0) #16, !dbg !2273
  %video_signal_type_present_flag = getelementptr inbounds i8, ptr %sps, i64 3192, !dbg !2274
  store i32 %call25, ptr %video_signal_type_present_flag, align 4, !dbg !2275
  %tobool29.not = icmp eq i32 %call25, 0, !dbg !2276
  br i1 %tobool29.not, label %if.end48, label %if.then30, !dbg !2278

if.then30:                                        ; preds = %if.end24
  %call31 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef %0) #16, !dbg !2279
  %video_format = getelementptr inbounds i8, ptr %sps, i64 3196, !dbg !2281
  store i32 %call31, ptr %video_format, align 4, !dbg !2282
  %call33 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %0) #16, !dbg !2283
  %video_full_range_flag = getelementptr inbounds i8, ptr %sps, i64 3200, !dbg !2284
  store i32 %call33, ptr %video_full_range_flag, align 4, !dbg !2285
  %call35 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %0) #16, !dbg !2286
  %colour_description_present_flag = getelementptr inbounds i8, ptr %sps, i64 3204, !dbg !2287
  store i32 %call35, ptr %colour_description_present_flag, align 4, !dbg !2288
  %tobool39.not = icmp eq i32 %call35, 0, !dbg !2289
  br i1 %tobool39.not, label %if.end48, label %if.then40, !dbg !2291

if.then40:                                        ; preds = %if.then30
  %call41 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.50, ptr noundef %0) #16, !dbg !2292
  %colour_primaries = getelementptr inbounds i8, ptr %sps, i64 3208, !dbg !2294
  store i32 %call41, ptr %colour_primaries, align 4, !dbg !2295
  %call43 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.51, ptr noundef %0) #16, !dbg !2296
  %transfer_characteristics = getelementptr inbounds i8, ptr %sps, i64 3212, !dbg !2297
  store i32 %call43, ptr %transfer_characteristics, align 4, !dbg !2298
  %call45 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.52, ptr noundef %0) #16, !dbg !2299
  %matrix_coefficients = getelementptr inbounds i8, ptr %sps, i64 3216, !dbg !2300
  store i32 %call45, ptr %matrix_coefficients, align 4, !dbg !2301
  br label %if.end48, !dbg !2302

if.end48:                                         ; preds = %if.then30, %if.then40, %if.end24
  %call49 = tail call i32 @u_1(ptr noundef nonnull @.str.53, ptr noundef %0) #16, !dbg !2303
  %chroma_location_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3220, !dbg !2304
  store i32 %call49, ptr %chroma_location_info_present_flag, align 4, !dbg !2305
  %tobool53.not = icmp eq i32 %call49, 0, !dbg !2306
  br i1 %tobool53.not, label %if.end59, label %if.then54, !dbg !2308

if.then54:                                        ; preds = %if.end48
  %call55 = tail call i32 @ue_v(ptr noundef nonnull @.str.54, ptr noundef %0) #16, !dbg !2309
  %chroma_sample_loc_type_top_field = getelementptr inbounds i8, ptr %sps, i64 3224, !dbg !2311
  store i32 %call55, ptr %chroma_sample_loc_type_top_field, align 4, !dbg !2312
  %call57 = tail call i32 @ue_v(ptr noundef nonnull @.str.55, ptr noundef %0) #16, !dbg !2313
  %chroma_sample_loc_type_bottom_field = getelementptr inbounds i8, ptr %sps, i64 3228, !dbg !2314
  store i32 %call57, ptr %chroma_sample_loc_type_bottom_field, align 4, !dbg !2315
  br label %if.end59, !dbg !2316

if.end59:                                         ; preds = %if.then54, %if.end48
  %call60 = tail call i32 @u_1(ptr noundef nonnull @.str.56, ptr noundef %0) #16, !dbg !2317
  %timing_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3232, !dbg !2318
  store i32 %call60, ptr %timing_info_present_flag, align 4, !dbg !2319
  %tobool64.not = icmp eq i32 %call60, 0, !dbg !2320
  br i1 %tobool64.not, label %if.end72, label %if.then65, !dbg !2322

if.then65:                                        ; preds = %if.end59
  %call66 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %0) #16, !dbg !2323
  %num_units_in_tick = getelementptr inbounds i8, ptr %sps, i64 3236, !dbg !2325
  store i32 %call66, ptr %num_units_in_tick, align 4, !dbg !2326
  %call68 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef %0) #16, !dbg !2327
  %time_scale = getelementptr inbounds i8, ptr %sps, i64 3240, !dbg !2328
  store i32 %call68, ptr %time_scale, align 4, !dbg !2329
  %call70 = tail call i32 @u_1(ptr noundef nonnull @.str.59, ptr noundef %0) #16, !dbg !2330
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %sps, i64 3244, !dbg !2331
  store i32 %call70, ptr %fixed_frame_rate_flag, align 4, !dbg !2332
  br label %if.end72, !dbg !2333

if.end72:                                         ; preds = %if.then65, %if.end59
  %call73 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef %0) #16, !dbg !2334
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3248, !dbg !2335
  store i32 %call73, ptr %nal_hrd_parameters_present_flag, align 4, !dbg !2336
  %tobool77.not = icmp eq i32 %call73, 0, !dbg !2337
  br i1 %tobool77.not, label %if.end81, label %if.then78, !dbg !2339

if.then78:                                        ; preds = %if.end72
  %nal_hrd_parameters = getelementptr inbounds i8, ptr %sps, i64 3252, !dbg !2340
  %call80 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %p, ptr noundef nonnull %nal_hrd_parameters), !dbg !2342
  br label %if.end81, !dbg !2343

if.end81:                                         ; preds = %if.then78, %if.end72
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.61, ptr noundef %0) #16, !dbg !2344
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3664, !dbg !2345
  store i32 %call82, ptr %vcl_hrd_parameters_present_flag, align 4, !dbg !2346
  %tobool86.not = icmp eq i32 %call82, 0, !dbg !2347
  br i1 %tobool86.not, label %if.end90, label %if.then87, !dbg !2349

if.then87:                                        ; preds = %if.end81
  %vcl_hrd_parameters = getelementptr inbounds i8, ptr %sps, i64 3668, !dbg !2350
  %call89 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %p, ptr noundef nonnull %vcl_hrd_parameters), !dbg !2352
  br label %if.end90, !dbg !2353

if.end90:                                         ; preds = %if.then87, %if.end81
  %2 = load i32, ptr %nal_hrd_parameters_present_flag, align 4, !dbg !2354
  %tobool93.not = icmp eq i32 %2, 0, !dbg !2356
  br i1 %tobool93.not, label %lor.lhs.false, label %if.then97, !dbg !2357

lor.lhs.false:                                    ; preds = %if.end90
  %3 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4, !dbg !2358
  %tobool96.not = icmp eq i32 %3, 0, !dbg !2359
  br i1 %tobool96.not, label %if.end100, label %if.then97, !dbg !2360

if.then97:                                        ; preds = %lor.lhs.false, %if.end90
  %call98 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %0) #16, !dbg !2361
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %sps, i64 4080, !dbg !2363
  store i32 %call98, ptr %low_delay_hrd_flag, align 4, !dbg !2364
  br label %if.end100, !dbg !2365

if.end100:                                        ; preds = %if.then97, %lor.lhs.false
  %call101 = tail call i32 @u_1(ptr noundef nonnull @.str.63, ptr noundef %0) #16, !dbg !2366
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %sps, i64 4084, !dbg !2367
  store i32 %call101, ptr %pic_struct_present_flag, align 4, !dbg !2368
  %call103 = tail call i32 @u_1(ptr noundef nonnull @.str.64, ptr noundef %0) #16, !dbg !2369
  %bitstream_restriction_flag = getelementptr inbounds i8, ptr %sps, i64 4088, !dbg !2370
  store i32 %call103, ptr %bitstream_restriction_flag, align 4, !dbg !2371
  %tobool107.not = icmp eq i32 %call103, 0, !dbg !2372
  br i1 %tobool107.not, label %if.end124, label %if.then108, !dbg !2374

if.then108:                                       ; preds = %if.end100
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.65, ptr noundef %0) #16, !dbg !2375
  %motion_vectors_over_pic_boundaries_flag = getelementptr inbounds i8, ptr %sps, i64 4092, !dbg !2377
  store i32 %call109, ptr %motion_vectors_over_pic_boundaries_flag, align 4, !dbg !2378
  %call111 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %0) #16, !dbg !2379
  %max_bytes_per_pic_denom = getelementptr inbounds i8, ptr %sps, i64 4096, !dbg !2380
  store i32 %call111, ptr %max_bytes_per_pic_denom, align 4, !dbg !2381
  %call113 = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %0) #16, !dbg !2382
  %max_bits_per_mb_denom = getelementptr inbounds i8, ptr %sps, i64 4100, !dbg !2383
  store i32 %call113, ptr %max_bits_per_mb_denom, align 4, !dbg !2384
  %call115 = tail call i32 @ue_v(ptr noundef nonnull @.str.68, ptr noundef %0) #16, !dbg !2385
  %log2_max_mv_length_horizontal = getelementptr inbounds i8, ptr %sps, i64 4108, !dbg !2386
  store i32 %call115, ptr %log2_max_mv_length_horizontal, align 4, !dbg !2387
  %call117 = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %0) #16, !dbg !2388
  %log2_max_mv_length_vertical = getelementptr inbounds i8, ptr %sps, i64 4104, !dbg !2389
  store i32 %call117, ptr %log2_max_mv_length_vertical, align 4, !dbg !2390
  %call119 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef %0) #16, !dbg !2391
  %num_reorder_frames = getelementptr inbounds i8, ptr %sps, i64 4112, !dbg !2392
  store i32 %call119, ptr %num_reorder_frames, align 4, !dbg !2393
  %call121 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %0) #16, !dbg !2394
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 4116, !dbg !2395
  store i32 %call121, ptr %max_dec_frame_buffering, align 4, !dbg !2396
  br label %if.end124, !dbg !2397

if.end124:                                        ; preds = %if.end100, %if.then108, %entry
  ret i32 0, !dbg !2398
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadHRDParameters(ptr nocapture noundef readonly %p, ptr nocapture noundef %hrd) local_unnamed_addr #0 !dbg !2399 {
entry:
    #dbg_value(ptr %p, !2404, !DIExpression(), !2408)
    #dbg_value(ptr %hrd, !2405, !DIExpression(), !2408)
  %0 = load ptr, ptr %p, align 8, !dbg !2409
    #dbg_value(ptr %0, !2406, !DIExpression(), !2408)
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %0) #16, !dbg !2410
  store i32 %call, ptr %hrd, align 4, !dbg !2411
  %call1 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.73, ptr noundef %0) #16, !dbg !2412
  %bit_rate_scale = getelementptr inbounds i8, ptr %hrd, i64 4, !dbg !2413
  store i32 %call1, ptr %bit_rate_scale, align 4, !dbg !2414
  %call2 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef %0) #16, !dbg !2415
  %cpb_size_scale = getelementptr inbounds i8, ptr %hrd, i64 8, !dbg !2416
  store i32 %call2, ptr %cpb_size_scale, align 4, !dbg !2417
    #dbg_value(i32 0, !2407, !DIExpression(), !2408)
  %bit_rate_value_minus1 = getelementptr inbounds i8, ptr %hrd, i64 12
  %cpb_size_value_minus1 = getelementptr inbounds i8, ptr %hrd, i64 140
  %cbr_flag = getelementptr inbounds i8, ptr %hrd, i64 268
  br label %for.body, !dbg !2418

for.body:                                         ; preds = %entry, %for.body
  %SchedSelIdx.038 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
    #dbg_value(i32 %SchedSelIdx.038, !2407, !DIExpression(), !2408)
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.75, ptr noundef %0) #16, !dbg !2420
  %idxprom = zext i32 %SchedSelIdx.038 to i64, !dbg !2423
  %arrayidx = getelementptr inbounds [32 x i32], ptr %bit_rate_value_minus1, i64 0, i64 %idxprom, !dbg !2423
  store i32 %call4, ptr %arrayidx, align 4, !dbg !2424
  %call5 = tail call i32 @ue_v(ptr noundef nonnull @.str.76, ptr noundef %0) #16, !dbg !2425
  %arrayidx7 = getelementptr inbounds [32 x i32], ptr %cpb_size_value_minus1, i64 0, i64 %idxprom, !dbg !2426
  store i32 %call5, ptr %arrayidx7, align 4, !dbg !2427
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.77, ptr noundef %0) #16, !dbg !2428
  %arrayidx10 = getelementptr inbounds [32 x i32], ptr %cbr_flag, i64 0, i64 %idxprom, !dbg !2429
  store i32 %call8, ptr %arrayidx10, align 4, !dbg !2430
  %inc = add i32 %SchedSelIdx.038, 1, !dbg !2431
    #dbg_value(i32 %inc, !2407, !DIExpression(), !2408)
  %1 = load i32, ptr %hrd, align 4, !dbg !2432
  %cmp.not = icmp ugt i32 %inc, %1, !dbg !2433
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !2418, !llvm.loop !2434

for.end:                                          ; preds = %for.body
  %call11 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.78, ptr noundef %0) #16, !dbg !2436
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 396, !dbg !2437
  store i32 %call11, ptr %initial_cpb_removal_delay_length_minus1, align 4, !dbg !2438
  %call12 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.79, ptr noundef %0) #16, !dbg !2439
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 400, !dbg !2440
  store i32 %call12, ptr %cpb_removal_delay_length_minus1, align 4, !dbg !2441
  %call13 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.80, ptr noundef %0) #16, !dbg !2442
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 404, !dbg !2443
  store i32 %call13, ptr %dpb_output_delay_length_minus1, align 4, !dbg !2444
  %call14 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.81, ptr noundef %0) #16, !dbg !2445
  %time_offset_length = getelementptr inbounds i8, ptr %hrd, i64 408, !dbg !2446
  store i32 %call14, ptr %time_offset_length, align 4, !dbg !2447
  ret i32 0, !dbg !2448
}

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretPPS(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %p, ptr nocapture noundef %pps) local_unnamed_addr #0 !dbg !2449 {
entry:
    #dbg_value(ptr %p_Vid, !2453, !DIExpression(), !2461)
    #dbg_value(ptr %p, !2454, !DIExpression(), !2461)
    #dbg_value(ptr %pps, !2455, !DIExpression(), !2461)
  %0 = load ptr, ptr %p, align 8, !dbg !2462
    #dbg_value(ptr %0, !2460, !DIExpression(), !2461)
  %1 = load ptr, ptr @p_Dec, align 8, !dbg !2463
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24, !dbg !2464
  store i32 0, ptr %UsedBits, align 8, !dbg !2465
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.82, ptr noundef %0) #16, !dbg !2466
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %pps, i64 4, !dbg !2467
  store i32 %call, ptr %pic_parameter_set_id, align 4, !dbg !2468
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.83, ptr noundef %0) #16, !dbg !2469
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %pps, i64 8, !dbg !2470
  store i32 %call1, ptr %seq_parameter_set_id, align 8, !dbg !2471
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.84, ptr noundef %0) #16, !dbg !2472
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %pps, i64 12, !dbg !2473
  store i32 %call2, ptr %entropy_coding_mode_flag, align 4, !dbg !2474
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %0) #16, !dbg !2475
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %pps, i64 2040, !dbg !2476
  store i32 %call3, ptr %bottom_field_pic_order_in_frame_present_flag, align 8, !dbg !2477
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.86, ptr noundef %0) #16, !dbg !2478
  %num_slice_groups_minus1 = getelementptr inbounds i8, ptr %pps, i64 2044, !dbg !2479
  store i32 %call4, ptr %num_slice_groups_minus1, align 4, !dbg !2480
  %cmp.not = icmp eq i32 %call4, 0, !dbg !2481
  br i1 %cmp.not, label %if.end79, label %if.then, !dbg !2483

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.87, ptr noundef %0) #16, !dbg !2484
  %slice_group_map_type = getelementptr inbounds i8, ptr %pps, i64 2048, !dbg !2486
  store i32 %call6, ptr %slice_group_map_type, align 8, !dbg !2487
  switch i32 %call6, label %if.end79 [
    i32 0, label %for.cond.preheader
    i32 2, label %for.cond16.preheader
    i32 3, label %if.then37
    i32 4, label %if.then37
    i32 5, label %if.then37
    i32 6, label %if.then43
  ], !dbg !2488

for.cond16.preheader:                             ; preds = %if.then
    #dbg_value(i32 0, !2456, !DIExpression(), !2461)
  %2 = load i32, ptr %num_slice_groups_minus1, align 4, !dbg !2489
  %cmp18248.not = icmp eq i32 %2, 0, !dbg !2495
  br i1 %cmp18248.not, label %if.end79, label %for.body19.lr.ph, !dbg !2496

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %top_left = getelementptr inbounds i8, ptr %pps, i64 2084
  %bottom_right = getelementptr inbounds i8, ptr %pps, i64 2116
  br label %for.body19, !dbg !2496

for.cond.preheader:                               ; preds = %if.then
    #dbg_value(i32 0, !2456, !DIExpression(), !2461)
  %run_length_minus1 = getelementptr inbounds i8, ptr %pps, i64 2052
  br label %for.body, !dbg !2497

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0250 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
    #dbg_value(i32 %i.0250, !2456, !DIExpression(), !2461)
  %call12 = tail call i32 @ue_v(ptr noundef nonnull @.str.88, ptr noundef %0) #16, !dbg !2500
  %idxprom = zext i32 %i.0250 to i64, !dbg !2502
  %arrayidx = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %idxprom, !dbg !2502
  store i32 %call12, ptr %arrayidx, align 4, !dbg !2503
  %inc = add i32 %i.0250, 1, !dbg !2504
    #dbg_value(i32 %inc, !2456, !DIExpression(), !2461)
  %3 = load i32, ptr %num_slice_groups_minus1, align 4, !dbg !2505
  %cmp11.not = icmp ugt i32 %inc, %3, !dbg !2506
  br i1 %cmp11.not, label %if.end79, label %for.body, !dbg !2497, !llvm.loop !2507

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.body19 ]
    #dbg_value(i64 %indvars.iv, !2456, !DIExpression(), !2461)
  %call20 = tail call i32 @ue_v(ptr noundef nonnull @.str.89, ptr noundef %0) #16, !dbg !2509
  %arrayidx22 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv, !dbg !2511
  store i32 %call20, ptr %arrayidx22, align 4, !dbg !2512
  %call23 = tail call i32 @ue_v(ptr noundef nonnull @.str.90, ptr noundef %0) #16, !dbg !2513
  %arrayidx25 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv, !dbg !2514
  store i32 %call23, ptr %arrayidx25, align 4, !dbg !2515
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2516
    #dbg_value(i64 %indvars.iv.next, !2456, !DIExpression(), !2461)
  %4 = load i32, ptr %num_slice_groups_minus1, align 4, !dbg !2489
  %5 = zext i32 %4 to i64, !dbg !2495
  %cmp18 = icmp ult i64 %indvars.iv.next, %5, !dbg !2495
  br i1 %cmp18, label %for.body19, label %if.end79, !dbg !2496, !llvm.loop !2517

if.then37:                                        ; preds = %if.then, %if.then, %if.then
  %call38 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %0) #16, !dbg !2519
  %slice_group_change_direction_flag = getelementptr inbounds i8, ptr %pps, i64 2148, !dbg !2522
  store i32 %call38, ptr %slice_group_change_direction_flag, align 4, !dbg !2523
  %call39 = tail call i32 @ue_v(ptr noundef nonnull @.str.92, ptr noundef %0) #16, !dbg !2524
  %slice_group_change_rate_minus1 = getelementptr inbounds i8, ptr %pps, i64 2152, !dbg !2525
  store i32 %call39, ptr %slice_group_change_rate_minus1, align 8, !dbg !2526
  br label %if.end79, !dbg !2527

if.then43:                                        ; preds = %if.then
  %6 = load i32, ptr %num_slice_groups_minus1, align 4, !dbg !2528
  %add = add i32 %6, 1, !dbg !2532
  %cmp45 = icmp ugt i32 %add, 4, !dbg !2533
  %cmp50 = icmp ugt i32 %add, 2, !dbg !2534
  %. = select i1 %cmp50, i32 2, i32 1, !dbg !2534
  %NumberBitsPerSliceGroupId.0 = select i1 %cmp45, i32 3, i32 %., !dbg !2534
    #dbg_value(i32 %NumberBitsPerSliceGroupId.0, !2459, !DIExpression(), !2461)
  %call54 = tail call i32 @ue_v(ptr noundef nonnull @.str.93, ptr noundef %0) #16, !dbg !2535
  %pic_size_in_map_units_minus1 = getelementptr inbounds i8, ptr %pps, i64 2156, !dbg !2536
  store i32 %call54, ptr %pic_size_in_map_units_minus1, align 4, !dbg !2537
  %add56 = add i32 %call54, 1, !dbg !2538
  %conv = zext i32 %add56 to i64, !dbg !2540
  %call57 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 1) #17, !dbg !2541
  %slice_group_id = getelementptr inbounds i8, ptr %pps, i64 2160, !dbg !2542
  store ptr %call57, ptr %slice_group_id, align 8, !dbg !2543
  %cmp58 = icmp eq ptr %call57, null, !dbg !2544
  br i1 %cmp58, label %if.then60, label %for.body66.preheader, !dbg !2545

if.then60:                                        ; preds = %if.then43
  tail call void @no_mem_exit(ptr noundef nonnull @.str.94) #16, !dbg !2546
  br label %for.body66.preheader, !dbg !2546

for.body66.preheader:                             ; preds = %if.then60, %if.then43
  br label %for.body66, !dbg !2547

for.body66:                                       ; preds = %for.body66.preheader, %for.body66
  %i.2247 = phi i32 [ %inc73, %for.body66 ], [ 0, %for.body66.preheader ]
    #dbg_value(i32 %i.2247, !2456, !DIExpression(), !2461)
  %call67 = tail call i32 @u_v(i32 noundef %NumberBitsPerSliceGroupId.0, ptr noundef nonnull @.str.95, ptr noundef %0) #16, !dbg !2549
  %conv68 = trunc i32 %call67 to i8, !dbg !2551
  %7 = load ptr, ptr %slice_group_id, align 8, !dbg !2552
  %idxprom70 = zext i32 %i.2247 to i64, !dbg !2553
  %arrayidx71 = getelementptr inbounds i8, ptr %7, i64 %idxprom70, !dbg !2553
  store i8 %conv68, ptr %arrayidx71, align 1, !dbg !2554
  %inc73 = add i32 %i.2247, 1, !dbg !2555
    #dbg_value(i32 %inc73, !2456, !DIExpression(), !2461)
  %8 = load i32, ptr %pic_size_in_map_units_minus1, align 4, !dbg !2556
  %cmp64.not = icmp ugt i32 %inc73, %8, !dbg !2557
  br i1 %cmp64.not, label %if.end79, label %for.body66, !dbg !2547, !llvm.loop !2558

if.end79:                                         ; preds = %for.body66, %for.body19, %for.body, %for.cond16.preheader, %if.then, %if.then37, %entry
  %call80 = tail call i32 @ue_v(ptr noundef nonnull @.str.96, ptr noundef %0) #16, !dbg !2560
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %pps, i64 2168, !dbg !2561
  store i32 %call80, ptr %num_ref_idx_l0_active_minus1, align 8, !dbg !2562
  %call81 = tail call i32 @ue_v(ptr noundef nonnull @.str.97, ptr noundef %0) #16, !dbg !2563
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %pps, i64 2172, !dbg !2564
  store i32 %call81, ptr %num_ref_idx_l1_active_minus1, align 4, !dbg !2565
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %0) #16, !dbg !2566
  %weighted_pred_flag = getelementptr inbounds i8, ptr %pps, i64 2176, !dbg !2567
  store i32 %call82, ptr %weighted_pred_flag, align 8, !dbg !2568
  %call83 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.99, ptr noundef %0) #16, !dbg !2569
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %pps, i64 2180, !dbg !2570
  store i32 %call83, ptr %weighted_bipred_idc, align 4, !dbg !2571
  %call84 = tail call i32 @se_v(ptr noundef nonnull @.str.100, ptr noundef %0) #16, !dbg !2572
  %pic_init_qp_minus26 = getelementptr inbounds i8, ptr %pps, i64 2184, !dbg !2573
  store i32 %call84, ptr %pic_init_qp_minus26, align 8, !dbg !2574
  %call85 = tail call i32 @se_v(ptr noundef nonnull @.str.101, ptr noundef %0) #16, !dbg !2575
  %pic_init_qs_minus26 = getelementptr inbounds i8, ptr %pps, i64 2188, !dbg !2576
  store i32 %call85, ptr %pic_init_qs_minus26, align 4, !dbg !2577
  %call86 = tail call i32 @se_v(ptr noundef nonnull @.str.102, ptr noundef %0) #16, !dbg !2578
  %chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps, i64 2192, !dbg !2579
  store i32 %call86, ptr %chroma_qp_index_offset, align 8, !dbg !2580
  %call87 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef %0) #16, !dbg !2581
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %pps, i64 2200, !dbg !2582
  store i32 %call87, ptr %deblocking_filter_control_present_flag, align 8, !dbg !2583
  %call88 = tail call i32 @u_1(ptr noundef nonnull @.str.104, ptr noundef %0) #16, !dbg !2584
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %pps, i64 2204, !dbg !2585
  store i32 %call88, ptr %constrained_intra_pred_flag, align 4, !dbg !2586
  %call89 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef %0) #16, !dbg !2587
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %pps, i64 2208, !dbg !2588
  store i32 %call89, ptr %redundant_pic_cnt_present_flag, align 8, !dbg !2589
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16, !dbg !2590
  %9 = load ptr, ptr %streamBuffer, align 8, !dbg !2590
  %frame_bitoffset = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2592
  %10 = load i32, ptr %frame_bitoffset, align 8, !dbg !2592
  %bitstream_length = getelementptr inbounds i8, ptr %0, i64 12, !dbg !2593
  %11 = load i32, ptr %bitstream_length, align 4, !dbg !2593
  %call90 = tail call i32 @more_rbsp_data(ptr noundef %9, i32 noundef %10, i32 noundef %11) #16, !dbg !2594
  %tobool.not = icmp eq i32 %call90, 0, !dbg !2594
  br i1 %tobool.not, label %if.else138, label %if.then91, !dbg !2595

if.then91:                                        ; preds = %if.end79
  %call92 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef nonnull %0) #16, !dbg !2596
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %pps, i64 16, !dbg !2598
  store i32 %call92, ptr %transform_8x8_mode_flag, align 8, !dbg !2599
  %call93 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef nonnull %0) #16, !dbg !2600
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %pps, i64 20, !dbg !2601
  store i32 %call93, ptr %pic_scaling_matrix_present_flag, align 4, !dbg !2602
  %tobool95.not = icmp eq i32 %call93, 0, !dbg !2603
  br i1 %tobool95.not, label %if.end136, label %if.then96, !dbg !2605

if.then96:                                        ; preds = %if.then91
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24, !dbg !2606
  %12 = load i32, ptr %seq_parameter_set_id, align 8, !dbg !2608
  %idxprom98 = zext i32 %12 to i64, !dbg !2609
  %chroma_format_idc100 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom98, i32 9, !dbg !2610
  %13 = load i32, ptr %chroma_format_idc100, align 4, !dbg !2610
    #dbg_value(i32 %13, !2458, !DIExpression(), !2461)
  %cmp101.not = icmp eq i32 %13, 3, !dbg !2611
  %cond = select i1 %cmp101.not, i32 6, i32 2, !dbg !2612
  %14 = load i32, ptr %transform_8x8_mode_flag, align 8, !dbg !2613
  %mul = mul nsw i32 %cond, %14, !dbg !2614
  %add104 = add nsw i32 %mul, 6, !dbg !2615
    #dbg_value(i32 %add104, !2457, !DIExpression(), !2461)
    #dbg_value(i32 0, !2456, !DIExpression(), !2461)
  %cmp106251.not = icmp eq i32 %add104, 0, !dbg !2616
  br i1 %cmp106251.not, label %if.end136, label %for.body108.lr.ph, !dbg !2619

for.body108.lr.ph:                                ; preds = %if.then96
  %pic_scaling_list_present_flag = getelementptr inbounds i8, ptr %pps, i64 24
  %ScalingList8x8 = getelementptr inbounds i8, ptr %pps, i64 456
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %pps, i64 2016
  %ScalingList4x4 = getelementptr inbounds i8, ptr %pps, i64 72
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %pps, i64 1992
  %wide.trip.count = zext i32 %add104 to i64, !dbg !2616
  br label %for.body108, !dbg !2619

for.body108:                                      ; preds = %for.body108.lr.ph, %for.inc133
  %indvars.iv257 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next258, %for.inc133 ]
    #dbg_value(i64 %indvars.iv257, !2456, !DIExpression(), !2461)
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef %0) #16, !dbg !2620
  %arrayidx111 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag, i64 0, i64 %indvars.iv257, !dbg !2622
  store i32 %call109, ptr %arrayidx111, align 4, !dbg !2623
  %tobool115.not = icmp eq i32 %call109, 0, !dbg !2624
  br i1 %tobool115.not, label %for.inc133, label %if.then116, !dbg !2626

if.then116:                                       ; preds = %for.body108
  %cmp117 = icmp ult i64 %indvars.iv257, 6, !dbg !2627
  br i1 %cmp117, label %if.then119, label %if.else124, !dbg !2630

if.then119:                                       ; preds = %if.then116
  %arrayidx121 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv257, !dbg !2631
  %arrayidx123 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv257, !dbg !2632
    #dbg_value(ptr %arrayidx121, !1913, !DIExpression(), !2633)
    #dbg_value(i32 16, !1914, !DIExpression(), !2633)
    #dbg_value(ptr %arrayidx123, !1915, !DIExpression(), !2633)
    #dbg_value(ptr %0, !1916, !DIExpression(), !2633)
    #dbg_value(i32 8, !1920, !DIExpression(), !2633)
    #dbg_value(i32 8, !1921, !DIExpression(), !2633)
    #dbg_value(i32 0, !1917, !DIExpression(), !2633)
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %if.end.thread.us.i, %if.then119
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %if.end.thread.us.i ], [ 0, %if.then119 ]
  %nextScale.041.us.i = phi i32 [ %nextScale.136.us.i, %if.end.thread.us.i ], [ 8, %if.then119 ]
  %lastScale.040.us.i = phi i32 [ %18, %if.end.thread.us.i ], [ 8, %if.then119 ]
    #dbg_value(i32 %nextScale.041.us.i, !1921, !DIExpression(), !2633)
    #dbg_value(i32 %lastScale.040.us.i, !1920, !DIExpression(), !2633)
    #dbg_value(i64 %indvars.iv44.i, !1917, !DIExpression(), !2633)
  %arrayidx.us.i = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44.i, !dbg !2635
  %cond.in.us.i = load i8, ptr %arrayidx.us.i, align 1, !dbg !2636
    #dbg_value(i8 %cond.in.us.i, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2633)
  %cmp5.not.us.i = icmp eq i32 %nextScale.041.us.i, 0, !dbg !2637
  br i1 %cmp5.not.us.i, label %if.end.thread.us.i, label %if.end.us.i, !dbg !2638

if.end.us.i:                                      ; preds = %for.body.us.i
  %call.us.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16, !dbg !2639
    #dbg_value(i32 %call.us.i, !1919, !DIExpression(), !2633)
  %add.us.i = add nsw i32 %call.us.i, %lastScale.040.us.i, !dbg !2640
  %add.fr.us.i = freeze i32 %add.us.i, !dbg !2641
  %add7.us.i = add i32 %add.fr.us.i, 256, !dbg !2641
  %rem.us.i = srem i32 %add7.us.i, 256, !dbg !2642
    #dbg_value(i32 %rem.us.i, !1921, !DIExpression(), !2633)
  %15 = trunc nuw nsw i64 %indvars.iv44.i to i32, !dbg !2643
  %16 = or i32 %rem.us.i, %15, !dbg !2643
  %17 = icmp eq i32 %16, 0, !dbg !2643
  %land.ext.us.i = zext i1 %17 to i32, !dbg !2643
  store i32 %land.ext.us.i, ptr %arrayidx123, align 4, !dbg !2644
  %cmp12.us.i = icmp eq i32 %rem.us.i, 0, !dbg !2645
  %spec.select.us.i = select i1 %cmp12.us.i, i32 %lastScale.040.us.i, i32 %rem.us.i, !dbg !2646
  br label %if.end.thread.us.i, !dbg !2646

if.end.thread.us.i:                               ; preds = %if.end.us.i, %for.body.us.i
  %nextScale.136.us.i = phi i32 [ 0, %for.body.us.i ], [ %rem.us.i, %if.end.us.i ]
  %18 = phi i32 [ %lastScale.040.us.i, %for.body.us.i ], [ %spec.select.us.i, %if.end.us.i ], !dbg !2646
  %idxprom18.us.i = zext i8 %cond.in.us.i to i64, !dbg !2647
  %arrayidx19.us.i = getelementptr inbounds i32, ptr %arrayidx121, i64 %idxprom18.us.i, !dbg !2647
  store i32 %18, ptr %arrayidx19.us.i, align 4, !dbg !2648
    #dbg_value(i32 %18, !1920, !DIExpression(), !2633)
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1, !dbg !2649
    #dbg_value(i32 %nextScale.136.us.i, !1921, !DIExpression(), !2633)
    #dbg_value(i64 %indvars.iv.next45.i, !1917, !DIExpression(), !2633)
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, 16, !dbg !2650
  br i1 %exitcond48.not.i, label %for.inc133, label %for.body.us.i, !dbg !2651, !llvm.loop !2652

if.else124:                                       ; preds = %if.then116
  %19 = add nsw i64 %indvars.iv257, -6, !dbg !2654
  %arrayidx126 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %19, !dbg !2655
  %arrayidx130 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %19, !dbg !2656
    #dbg_value(ptr %arrayidx126, !1913, !DIExpression(), !2657)
    #dbg_value(i32 64, !1914, !DIExpression(), !2657)
    #dbg_value(ptr %arrayidx130, !1915, !DIExpression(), !2657)
    #dbg_value(ptr %0, !1916, !DIExpression(), !2657)
    #dbg_value(i32 8, !1920, !DIExpression(), !2657)
    #dbg_value(i32 8, !1921, !DIExpression(), !2657)
    #dbg_value(i32 0, !1917, !DIExpression(), !2657)
  br label %for.body.i, !dbg !2659

for.body.i:                                       ; preds = %if.end.thread.i, %if.else124
  %indvars.iv.i = phi i64 [ 0, %if.else124 ], [ %indvars.iv.next.i, %if.end.thread.i ]
  %nextScale.041.i = phi i32 [ 8, %if.else124 ], [ %nextScale.136.i, %if.end.thread.i ]
  %lastScale.040.i = phi i32 [ 8, %if.else124 ], [ %23, %if.end.thread.i ]
    #dbg_value(i32 %nextScale.041.i, !1921, !DIExpression(), !2657)
    #dbg_value(i32 %lastScale.040.i, !1920, !DIExpression(), !2657)
    #dbg_value(i64 %indvars.iv.i, !1917, !DIExpression(), !2657)
  %arrayidx3.i = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv.i, !dbg !2660
  %cond.in.i = load i8, ptr %arrayidx3.i, align 1, !dbg !2661
    #dbg_value(i8 %cond.in.i, !1918, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2657)
  %cmp5.not.i = icmp eq i32 %nextScale.041.i, 0, !dbg !2662
  br i1 %cmp5.not.i, label %if.end.thread.i, label %if.end.i, !dbg !2663

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16, !dbg !2664
    #dbg_value(i32 %call.i, !1919, !DIExpression(), !2657)
  %add.i = add nsw i32 %call.i, %lastScale.040.i, !dbg !2665
  %add.fr.i = freeze i32 %add.i, !dbg !2666
  %add7.i = add i32 %add.fr.i, 256, !dbg !2666
  %rem.i = srem i32 %add7.i, 256, !dbg !2667
    #dbg_value(i32 %rem.i, !1921, !DIExpression(), !2657)
  %20 = trunc nuw nsw i64 %indvars.iv.i to i32, !dbg !2668
  %21 = or i32 %rem.i, %20, !dbg !2668
  %22 = icmp eq i32 %21, 0, !dbg !2668
  %land.ext.i = zext i1 %22 to i32, !dbg !2668
  store i32 %land.ext.i, ptr %arrayidx130, align 4, !dbg !2669
  %cmp12.i = icmp eq i32 %rem.i, 0, !dbg !2670
  %spec.select.i = select i1 %cmp12.i, i32 %lastScale.040.i, i32 %rem.i, !dbg !2671
  br label %if.end.thread.i, !dbg !2671

if.end.thread.i:                                  ; preds = %if.end.i, %for.body.i
  %nextScale.136.i = phi i32 [ 0, %for.body.i ], [ %rem.i, %if.end.i ]
  %23 = phi i32 [ %lastScale.040.i, %for.body.i ], [ %spec.select.i, %if.end.i ], !dbg !2671
  %idxprom18.i = zext i8 %cond.in.i to i64, !dbg !2672
  %arrayidx19.i = getelementptr inbounds i32, ptr %arrayidx126, i64 %idxprom18.i, !dbg !2672
  store i32 %23, ptr %arrayidx19.i, align 4, !dbg !2673
    #dbg_value(i32 %23, !1920, !DIExpression(), !2657)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2674
    #dbg_value(i32 %nextScale.136.i, !1921, !DIExpression(), !2657)
    #dbg_value(i64 %indvars.iv.next.i, !1917, !DIExpression(), !2657)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64, !dbg !2675
  br i1 %exitcond.not.i, label %for.inc133, label %for.body.i, !dbg !2659, !llvm.loop !2676

for.inc133:                                       ; preds = %if.end.thread.i, %if.end.thread.us.i, %for.body108
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1, !dbg !2678
    #dbg_value(i64 %indvars.iv.next258, !2456, !DIExpression(), !2461)
  %exitcond.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count, !dbg !2616
  br i1 %exitcond.not, label %if.end136, label %for.body108, !dbg !2619, !llvm.loop !2679

if.end136:                                        ; preds = %for.inc133, %if.then96, %if.then91
  %call137 = tail call i32 @se_v(ptr noundef nonnull @.str.109, ptr noundef %0) #16, !dbg !2681
  br label %if.end141, !dbg !2682

if.else138:                                       ; preds = %if.end79
  %24 = load i32, ptr %chroma_qp_index_offset, align 8, !dbg !2683
  br label %if.end141

if.end141:                                        ; preds = %if.else138, %if.end136
  %.sink = phi i32 [ %24, %if.else138 ], [ %call137, %if.end136 ]
  %second_chroma_qp_index_offset140 = getelementptr inbounds i8, ptr %pps, i64 2196, !dbg !2685
  store i32 %.sink, ptr %second_chroma_qp_index_offset140, align 4, !dbg !2685
  store i32 1, ptr %pps, align 8, !dbg !2686
  %25 = load ptr, ptr @p_Dec, align 8, !dbg !2687
  %UsedBits142 = getelementptr inbounds i8, ptr %25, i64 24, !dbg !2688
  %26 = load i32, ptr %UsedBits142, align 8, !dbg !2688
  ret i32 %26, !dbg !2689
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !2690 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2697 void @no_mem_exit(ptr noundef) local_unnamed_addr #1

declare !dbg !2701 i32 @more_rbsp_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @PPSConsistencyCheck(ptr nocapture noundef readnone %pps) local_unnamed_addr #5 !dbg !2704 {
entry:
    #dbg_value(ptr %pps, !2708, !DIExpression(), !2709)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !2710
  ret void, !dbg !2711
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SPSConsistencyCheck(ptr nocapture noundef readnone %sps) local_unnamed_addr #5 !dbg !2712 {
entry:
    #dbg_value(ptr %sps, !2714, !DIExpression(), !2715)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.188), !dbg !2716
  ret void, !dbg !2717
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SubsetSPSConsistencyCheck(ptr nocapture noundef readnone %subset_sps) local_unnamed_addr #5 !dbg !2718 {
entry:
    #dbg_value(ptr %subset_sps, !2722, !DIExpression(), !2723)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.189), !dbg !2724
  ret void, !dbg !2725
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @MakePPSavailable(ptr nocapture noundef %p_Vid, i32 noundef %id, ptr nocapture noundef %pps) local_unnamed_addr #6 !dbg !2726 {
entry:
    #dbg_value(ptr %p_Vid, !2730, !DIExpression(), !2733)
    #dbg_value(i32 %id, !2731, !DIExpression(), !2733)
    #dbg_value(ptr %pps, !2732, !DIExpression(), !2733)
  %PicParSet = getelementptr inbounds i8, ptr %p_Vid, i64 132120, !dbg !2734
  %idxprom = sext i32 %id to i64, !dbg !2736
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %idxprom, !dbg !2736
  %0 = load i32, ptr %arrayidx, align 8, !dbg !2737
  %cmp = icmp eq i32 %0, 1, !dbg !2738
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2739

land.lhs.true:                                    ; preds = %entry
  %slice_group_id = getelementptr inbounds i8, ptr %arrayidx, i64 2160, !dbg !2740
  %1 = load ptr, ptr %slice_group_id, align 8, !dbg !2740
  %cmp4.not = icmp eq ptr %1, null, !dbg !2741
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %land.lhs.true
  tail call void @free(ptr noundef nonnull %1) #16, !dbg !2743
  br label %if.end, !dbg !2743

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %arrayidx, ptr noundef nonnull align 8 dereferenceable(2216) %pps, i64 2216, i1 false), !dbg !2744
  %slice_group_id12 = getelementptr inbounds i8, ptr %pps, i64 2160, !dbg !2745
  %2 = load ptr, ptr %slice_group_id12, align 8, !dbg !2745
  %slice_group_id16 = getelementptr inbounds i8, ptr %arrayidx, i64 2160, !dbg !2746
  store ptr %2, ptr %slice_group_id16, align 8, !dbg !2747
  store ptr null, ptr %slice_group_id12, align 8, !dbg !2748
  ret void, !dbg !2749
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2750 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @CleanUpPPS(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 !dbg !2753 {
entry:
    #dbg_value(ptr %p_Vid, !2755, !DIExpression(), !2757)
    #dbg_value(i32 0, !2756, !DIExpression(), !2757)
  %PicParSet = getelementptr inbounds i8, ptr %p_Vid, i64 132120
    #dbg_value(i32 0, !2756, !DIExpression(), !2757)
  br label %for.body, !dbg !2758

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
    #dbg_value(i64 %indvars.iv, !2756, !DIExpression(), !2757)
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %indvars.iv, !dbg !2760
  %0 = load i32, ptr %arrayidx, align 8, !dbg !2764
  %cmp1 = icmp eq i32 %0, 1, !dbg !2765
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2766

land.lhs.true:                                    ; preds = %for.body
  %slice_group_id = getelementptr inbounds i8, ptr %arrayidx, i64 2160, !dbg !2767
  %1 = load ptr, ptr %slice_group_id, align 8, !dbg !2767
  %cmp5.not = icmp eq ptr %1, null, !dbg !2768
  br i1 %cmp5.not, label %if.end, label %if.then, !dbg !2769

if.then:                                          ; preds = %land.lhs.true
  tail call void @free(ptr noundef nonnull %1) #16, !dbg !2770
  br label %if.end, !dbg !2770

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  store i32 0, ptr %arrayidx, align 8, !dbg !2771
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2772
    #dbg_value(i64 %indvars.iv.next, !2756, !DIExpression(), !2757)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !2773
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2758, !llvm.loop !2774

for.end:                                          ; preds = %if.end
  ret void, !dbg !2776
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MakeSPSavailable(ptr nocapture noundef writeonly %p_Vid, i32 noundef %id, ptr nocapture noundef readonly %sps) local_unnamed_addr #9 !dbg !2777 {
entry:
    #dbg_value(ptr %p_Vid, !2781, !DIExpression(), !2784)
    #dbg_value(i32 %id, !2782, !DIExpression(), !2784)
    #dbg_value(ptr %sps, !2783, !DIExpression(), !2784)
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24, !dbg !2785
  %idxprom = sext i32 %id to i64, !dbg !2786
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom, !dbg !2786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %arrayidx, ptr noundef nonnull align 4 dereferenceable(4128) %sps, i64 4128, i1 false), !dbg !2787
  ret void, !dbg !2788
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 !dbg !2789 {
entry:
    #dbg_value(ptr %p_Vid, !2793, !DIExpression(), !2797)
    #dbg_value(ptr %nalu, !2794, !DIExpression(), !2797)
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16, !dbg !2798
    #dbg_value(ptr %call, !2795, !DIExpression(), !2797)
  %call1 = tail call ptr @AllocSPS() #16, !dbg !2799
    #dbg_value(ptr %call1, !2796, !DIExpression(), !2797)
  %0 = load ptr, ptr %call, align 8, !dbg !2800
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16, !dbg !2801
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !2801
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !2802
  %2 = load ptr, ptr %buf, align 8, !dbg !2802
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2803
  %len = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !2804
  %3 = load i32, ptr %len, align 4, !dbg !2804
  %sub = add i32 %3, -1, !dbg !2805
  %conv = zext i32 %sub to i64, !dbg !2806
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false), !dbg !2807
  %4 = load ptr, ptr %call, align 8, !dbg !2808
  %streamBuffer3 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !2809
  %5 = load ptr, ptr %streamBuffer3, align 8, !dbg !2809
  %6 = load i32, ptr %len, align 4, !dbg !2810
  %sub5 = add i32 %6, -1, !dbg !2811
  %call6 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub5) #16, !dbg !2812
  %7 = load ptr, ptr %call, align 8, !dbg !2813
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12, !dbg !2814
  store i32 %call6, ptr %bitstream_length, align 4, !dbg !2815
  %8 = load ptr, ptr %call, align 8, !dbg !2816
  %code_len = getelementptr inbounds i8, ptr %8, i64 4, !dbg !2817
  store i32 %call6, ptr %code_len, align 4, !dbg !2818
  %9 = load ptr, ptr %call, align 8, !dbg !2819
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24, !dbg !2820
  store i32 0, ptr %ei_flag, align 8, !dbg !2821
  %10 = load ptr, ptr %call, align 8, !dbg !2822
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8, !dbg !2823
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2824
  %11 = load ptr, ptr %call, align 8, !dbg !2825
  store i32 0, ptr %11, align 8, !dbg !2826
  %call12 = tail call i32 @InterpretSPS(ptr noundef %p_Vid, ptr noundef nonnull %call, ptr noundef %call1), !dbg !2827
  tail call void @get_max_dec_frame_buf_size(ptr noundef %call1), !dbg !2828
  %12 = load i32, ptr %call1, align 4, !dbg !2829
  %tobool.not = icmp eq i32 %12, 0, !dbg !2831
  br i1 %tobool.not, label %if.end38, label %if.then, !dbg !2832

if.then:                                          ; preds = %entry
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2833
  %13 = load ptr, ptr %active_sps, align 8, !dbg !2833
  %tobool13.not = icmp eq ptr %13, null, !dbg !2836
  br i1 %tobool13.not, label %if.end29, label %if.then14, !dbg !2837

if.then14:                                        ; preds = %if.then
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %call1, i64 32, !dbg !2838
  %14 = load i32, ptr %seq_parameter_set_id, align 4, !dbg !2838
  %seq_parameter_set_id16 = getelementptr inbounds i8, ptr %13, i64 32, !dbg !2841
  %15 = load i32, ptr %seq_parameter_set_id16, align 4, !dbg !2841
  %cmp = icmp eq i32 %14, %15, !dbg !2842
  br i1 %cmp, label %if.then18, label %if.end29, !dbg !2843

if.then18:                                        ; preds = %if.then14
  %call20 = tail call i32 @sps_is_equal(ptr noundef nonnull %call1, ptr noundef nonnull %13) #16, !dbg !2844
  %tobool21.not = icmp eq i32 %call20, 0, !dbg !2844
  br i1 %tobool21.not, label %if.then22, label %if.end29, !dbg !2847

if.then22:                                        ; preds = %if.then18
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456, !dbg !2848
  %16 = load ptr, ptr %dec_picture, align 8, !dbg !2848
  %tobool23.not = icmp eq ptr %16, null, !dbg !2851
  br i1 %tobool23.not, label %if.end, label %if.then24, !dbg !2852

if.then24:                                        ; preds = %if.then22
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16, !dbg !2853
  br label %if.end, !dbg !2855

if.end:                                           ; preds = %if.then24, %if.then22
  store ptr null, ptr %active_sps, align 8, !dbg !2856
  br label %if.end29, !dbg !2857

if.end29:                                         ; preds = %if.then14, %if.end, %if.then18, %if.then
  %seq_parameter_set_id30 = getelementptr inbounds i8, ptr %call1, i64 32, !dbg !2858
  %17 = load i32, ptr %seq_parameter_set_id30, align 4, !dbg !2858
    #dbg_value(ptr %p_Vid, !2781, !DIExpression(), !2859)
    #dbg_value(i32 %17, !2782, !DIExpression(), !2859)
    #dbg_value(ptr %call1, !2783, !DIExpression(), !2859)
  %SeqParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 24, !dbg !2861
  %idxprom.i = sext i32 %17 to i64, !dbg !2862
  %arrayidx.i = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet.i, i64 0, i64 %idxprom.i, !dbg !2862
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %arrayidx.i, ptr noundef nonnull readonly align 4 dereferenceable(4128) %call1, i64 4128, i1 false), !dbg !2863
  %profile_idc = getelementptr inbounds i8, ptr %call1, i64 4, !dbg !2864
  %18 = load i32, ptr %profile_idc, align 4, !dbg !2864
  %profile_idc31 = getelementptr inbounds i8, ptr %p_Vid, i64 849084, !dbg !2865
  store i32 %18, ptr %profile_idc31, align 4, !dbg !2866
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %call1, i64 4120, !dbg !2867
  %19 = load i32, ptr %separate_colour_plane_flag, align 4, !dbg !2867
  %separate_colour_plane_flag32 = getelementptr inbounds i8, ptr %p_Vid, i64 849280, !dbg !2868
  store i32 %19, ptr %separate_colour_plane_flag32, align 8, !dbg !2869
  %tobool34.not = icmp eq i32 %19, 0, !dbg !2870
  br i1 %tobool34.not, label %if.else, label %if.end38.sink.split, !dbg !2872

if.else:                                          ; preds = %if.end29
  %chroma_format_idc = getelementptr inbounds i8, ptr %call1, i64 36, !dbg !2873
  %20 = load i32, ptr %chroma_format_idc, align 4, !dbg !2873
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.end29, %if.else
  %.sink = phi i32 [ %20, %if.else ], [ 0, %if.end29 ]
  %ChromaArrayType = getelementptr inbounds i8, ptr %p_Vid, i64 848920, !dbg !2875
  store i32 %.sink, ptr %ChromaArrayType, align 8, !dbg !2875
  br label %if.end38, !dbg !2876

if.end38:                                         ; preds = %if.end38.sink.split, %entry
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16, !dbg !2876
  tail call void @FreeSPS(ptr noundef nonnull %call1) #16, !dbg !2877
  ret void, !dbg !2878
}

declare !dbg !2879 ptr @AllocPartition(i32 noundef) local_unnamed_addr #1

declare !dbg !2882 ptr @AllocSPS() local_unnamed_addr #1

declare !dbg !2885 i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @get_max_dec_frame_buf_size(ptr nocapture noundef %sps) local_unnamed_addr #0 !dbg !2888 {
entry:
    #dbg_value(ptr %sps, !2890, !DIExpression(), !2893)
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128, !dbg !2894
  %0 = load i32, ptr %pic_width_in_mbs_minus1, align 4, !dbg !2894
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132, !dbg !2895
  %1 = load i32, ptr %pic_height_in_map_units_minus1, align 4, !dbg !2895
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136, !dbg !2896
  %2 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !2896
    #dbg_value(!DIArgList(i32 %0, i32 %2, i32 %1), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
    #dbg_value(i32 0, !2892, !DIExpression(), !2893)
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28, !dbg !2897
  %3 = load i32, ptr %level_idc, align 4, !dbg !2897
  switch i32 %3, label %sw.default [
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 11, label %sw.bb5
    i32 12, label %sw.bb9
    i32 13, label %sw.bb10
    i32 20, label %sw.bb11
    i32 21, label %sw.bb12
    i32 22, label %sw.bb13
    i32 30, label %sw.bb14
    i32 31, label %sw.bb15
    i32 32, label %sw.bb16
    i32 40, label %sw.bb17
    i32 41, label %sw.bb18
    i32 42, label %sw.bb19
    i32 50, label %sw.bb20
    i32 51, label %sw.bb21
  ], !dbg !2898

sw.bb5:                                           ; preds = %entry
  %profile_idc = getelementptr inbounds i8, ptr %sps, i64 4, !dbg !2899
  %4 = load i32, ptr %profile_idc, align 4, !dbg !2899
  %cmp = icmp ugt i32 %4, 99, !dbg !2899
  %cmp7 = icmp eq i32 %4, 44, !dbg !2899
  %or.cond = or i1 %cmp, %cmp7, !dbg !2899
  br i1 %or.cond, label %if.else, label %land.lhs.true, !dbg !2899

land.lhs.true:                                    ; preds = %sw.bb5
  %constrained_set3_flag = getelementptr inbounds i8, ptr %sps, i64 20, !dbg !2902
  %5 = load i32, ptr %constrained_set3_flag, align 4, !dbg !2902
  %cmp8 = icmp eq i32 %5, 1, !dbg !2903
  br i1 %cmp8, label %sw.epilog, label %if.else, !dbg !2904

if.else:                                          ; preds = %land.lhs.true, %sw.bb5
    #dbg_value(i32 345600, !2892, !DIExpression(), !2893)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
    #dbg_value(i32 912384, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2905

sw.bb10:                                          ; preds = %entry
    #dbg_value(i32 912384, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2906

sw.bb11:                                          ; preds = %entry
    #dbg_value(i32 912384, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2907

sw.bb12:                                          ; preds = %entry
    #dbg_value(i32 1824768, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2908

sw.bb13:                                          ; preds = %entry
    #dbg_value(i32 3110400, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2909

sw.bb14:                                          ; preds = %entry
    #dbg_value(i32 3110400, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2910

sw.bb15:                                          ; preds = %entry
    #dbg_value(i32 6912000, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2911

sw.bb16:                                          ; preds = %entry
    #dbg_value(i32 7864320, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2912

sw.bb17:                                          ; preds = %entry
    #dbg_value(i32 12582912, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2913

sw.bb18:                                          ; preds = %entry
    #dbg_value(i32 12582912, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2914

sw.bb19:                                          ; preds = %entry
    #dbg_value(i32 13369344, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2915

sw.bb20:                                          ; preds = %entry
    #dbg_value(i32 42393600, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2916

sw.bb21:                                          ; preds = %entry
    #dbg_value(i32 70778880, !2892, !DIExpression(), !2893)
  br label %sw.epilog, !dbg !2917

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.183, i32 noundef 500) #16, !dbg !2918
  br label %sw.epilog, !dbg !2919

sw.epilog:                                        ; preds = %land.lhs.true, %entry, %entry, %if.else, %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9
  %size.0 = phi i32 [ 0, %sw.default ], [ 70778880, %sw.bb21 ], [ 42393600, %sw.bb20 ], [ 13369344, %sw.bb19 ], [ 12582912, %sw.bb18 ], [ 12582912, %sw.bb17 ], [ 7864320, %sw.bb16 ], [ 6912000, %sw.bb15 ], [ 3110400, %sw.bb14 ], [ 3110400, %sw.bb13 ], [ 1824768, %sw.bb12 ], [ 912384, %sw.bb11 ], [ 912384, %sw.bb10 ], [ 912384, %sw.bb9 ], [ 345600, %if.else ], [ 152064, %entry ], [ 152064, %entry ], [ 152064, %land.lhs.true ], !dbg !2893
  %add = add i32 %0, 1, !dbg !2920
    #dbg_value(!DIArgList(i32 %add, i32 %2, i32 %1), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %add1 = add i32 %1, 1, !dbg !2921
    #dbg_value(!DIArgList(i32 %add, i32 %2, i32 %add1), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %mul = mul i32 %add1, %add, !dbg !2922
    #dbg_value(!DIArgList(i32 %mul, i32 %2), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %tobool.not = icmp eq i32 %2, 0, !dbg !2923
    #dbg_value(!DIArgList(i32 %mul, i1 %tobool.not), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %6 = zext i1 %tobool.not to i32, !dbg !2924
    #dbg_value(!DIArgList(i32 %mul, i32 %6), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %mul2 = shl i32 %mul, %6, !dbg !2924
    #dbg_value(i32 %mul2, !2891, !DIExpression(DW_OP_constu, 384, DW_OP_mul, DW_OP_stack_value), !2893)
  %mul3 = mul i32 %mul2, 384, !dbg !2925
    #dbg_value(i32 %mul3, !2891, !DIExpression(), !2893)
    #dbg_value(i32 %size.0, !2892, !DIExpression(), !2893)
  %div = sdiv i32 %size.0, %mul3, !dbg !2926
    #dbg_value(i32 %div, !2892, !DIExpression(), !2893)
    #dbg_value(i32 %div, !2927, !DIExpression(), !2934)
    #dbg_value(i32 16, !2933, !DIExpression(), !2934)
  %cond.i = tail call range(i32 -70778880, 70778881) i32 @llvm.smin.i32(i32 %div, i32 16), !dbg !2936
    #dbg_value(i32 %cond.i, !2892, !DIExpression(), !2893)
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 4124, !dbg !2937
  store i32 %cond.i, ptr %max_dec_frame_buffering, align 4, !dbg !2938
  ret void, !dbg !2939
}

declare !dbg !2940 i32 @sps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2943 void @exit_picture(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2948 void @FreePartition(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2951 void @FreeSPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSubsetSPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 !dbg !2952 {
entry:
    #dbg_value(ptr %p_Vid, !2954, !DIExpression(), !2959)
    #dbg_value(ptr %nalu, !2955, !DIExpression(), !2959)
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16, !dbg !2960
    #dbg_value(ptr %call, !2956, !DIExpression(), !2959)
  %0 = load ptr, ptr %call, align 8, !dbg !2961
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16, !dbg !2962
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !2962
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !2963
  %2 = load ptr, ptr %buf, align 8, !dbg !2963
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2964
  %len = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !2965
  %3 = load i32, ptr %len, align 4, !dbg !2965
  %sub = add i32 %3, -1, !dbg !2966
  %conv = zext i32 %sub to i64, !dbg !2967
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false), !dbg !2968
  %4 = load ptr, ptr %call, align 8, !dbg !2969
  %streamBuffer2 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !2970
  %5 = load ptr, ptr %streamBuffer2, align 8, !dbg !2970
  %6 = load i32, ptr %len, align 4, !dbg !2971
  %sub4 = add i32 %6, -1, !dbg !2972
  %call5 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub4) #16, !dbg !2973
  %7 = load ptr, ptr %call, align 8, !dbg !2974
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12, !dbg !2975
  store i32 %call5, ptr %bitstream_length, align 4, !dbg !2976
  %8 = load ptr, ptr %call, align 8, !dbg !2977
  %code_len = getelementptr inbounds i8, ptr %8, i64 4, !dbg !2978
  store i32 %call5, ptr %code_len, align 4, !dbg !2979
  %9 = load ptr, ptr %call, align 8, !dbg !2980
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24, !dbg !2981
  store i32 0, ptr %ei_flag, align 8, !dbg !2982
  %10 = load ptr, ptr %call, align 8, !dbg !2983
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8, !dbg !2984
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2985
  %11 = load ptr, ptr %call, align 8, !dbg !2986
  store i32 0, ptr %11, align 8, !dbg !2987
    #dbg_value(ptr %p_Vid, !2988, !DIExpression(), !2999)
    #dbg_value(ptr %call, !2993, !DIExpression(), !2999)
    #dbg_value(ptr undef, !2994, !DIExpression(), !2999)
  %12 = load ptr, ptr %call, align 8, !dbg !3001
    #dbg_value(ptr %12, !2997, !DIExpression(), !2999)
  %call.i = tail call ptr @AllocSPS() #16, !dbg !3002
    #dbg_value(ptr %call.i, !2998, !DIExpression(), !2999)
  %call1.i = tail call i32 @InterpretSPS(ptr noundef %p_Vid, ptr noundef nonnull readonly %call, ptr noundef %call.i), !dbg !3003
  %seq_parameter_set_id.i = getelementptr inbounds i8, ptr %call.i, i64 32, !dbg !3004
  %13 = load i32, ptr %seq_parameter_set_id.i, align 4, !dbg !3004
    #dbg_value(i32 %13, !2958, !DIExpression(), !2959)
  %SubsetSeqParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 699424, !dbg !3005
  %idx.ext.i = zext i32 %13 to i64, !dbg !3006
  %add.ptr.i = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet.i, i64 %idx.ext.i, !dbg !3006
    #dbg_value(ptr %add.ptr.i, !2995, !DIExpression(), !2999)
  %Valid.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4268, !dbg !3007
  %14 = load i32, ptr %Valid.i, align 4, !dbg !3007
  %tobool.not.i = icmp eq i32 %14, 0, !dbg !3009
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i, !dbg !3010

lor.lhs.false.i:                                  ; preds = %entry
  %num_views_minus1.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4132, !dbg !3011
  %15 = load i32, ptr %num_views_minus1.i, align 4, !dbg !3011
  %cmp.i = icmp sgt i32 %15, -1, !dbg !3012
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !3013

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  tail call void @reset_subset_sps(ptr noundef nonnull %add.ptr.i), !dbg !3014
  br label %if.end.i, !dbg !3016

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %add.ptr.i, ptr noundef nonnull align 4 dereferenceable(4128) %call.i, i64 4128, i1 false), !dbg !3017
  store i32 0, ptr %Valid.i, align 4, !dbg !3018
  %profile_idc.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4, !dbg !3019
  %16 = load i32, ptr %profile_idc.i, align 4, !dbg !3019
  switch i32 %16, label %if.end23.i [
    i32 118, label %if.then11.i
    i32 128, label %if.then11.i
  ], !dbg !3021

if.then11.i:                                      ; preds = %if.end.i, %if.end.i
  %call12.i = tail call i32 @u_1(ptr noundef nonnull @.str.184, ptr noundef %12) #16, !dbg !3022
  %bit_equal_to_one.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4128, !dbg !3024
  store i32 %call12.i, ptr %bit_equal_to_one.i, align 8, !dbg !3025
  %cmp14.not.i = icmp eq i32 %call12.i, 1, !dbg !3026
  br i1 %cmp14.not.i, label %if.end17.i, label %if.then15.i, !dbg !3028

if.then15.i:                                      ; preds = %if.then11.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190), !dbg !3029
  br label %InterpretSubsetSPS.exit, !dbg !3031

if.end17.i:                                       ; preds = %if.then11.i
  tail call void @seq_parameter_set_mvc_extension(ptr noundef nonnull %add.ptr.i, ptr noundef %12), !dbg !3032
  %call18.i = tail call i32 @u_1(ptr noundef nonnull @.str.186, ptr noundef %12) #16, !dbg !3033
  %mvc_vui_parameters_present_flag.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4264, !dbg !3034
  store i32 %call18.i, ptr %mvc_vui_parameters_present_flag.i, align 8, !dbg !3035
  %tobool20.not.i = icmp eq i32 %call18.i, 0, !dbg !3036
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i, !dbg !3038

if.then21.i:                                      ; preds = %if.end17.i
  %MVCVUIParams.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4272, !dbg !3039
  tail call void @mvc_vui_parameters_extension(ptr noundef nonnull %MVCVUIParams.i, ptr noundef %12), !dbg !3040
  br label %if.end23.i, !dbg !3040

if.end23.i:                                       ; preds = %if.then21.i, %if.end17.i, %if.end.i
  %call24.i = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef %12) #16, !dbg !3041
    #dbg_value(i32 %call24.i, !2996, !DIExpression(), !2999)
  %tobool25.not.i = icmp eq i32 %call24.i, 0, !dbg !3042
  br i1 %tobool25.not.i, label %if.end30.i, label %while.cond.preheader.i, !dbg !3044

while.cond.preheader.i:                           ; preds = %if.end23.i
  %streamBuffer.i = getelementptr inbounds i8, ptr %12, i64 16
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %12, i64 8
  %bitstream_length.i = getelementptr inbounds i8, ptr %12, i64 12
  %17 = load ptr, ptr %streamBuffer.i, align 8, !dbg !3045
  %18 = load i32, ptr %frame_bitoffset.i, align 8, !dbg !3047
  %19 = load i32, ptr %bitstream_length.i, align 4, !dbg !3048
  %call2769.i = tail call i32 @more_rbsp_data(ptr noundef %17, i32 noundef %18, i32 noundef %19) #16, !dbg !3049
  %tobool28.not70.i = icmp eq i32 %call2769.i, 0, !dbg !3050
  br i1 %tobool28.not70.i, label %if.end30.i, label %while.body.i, !dbg !3050

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %call29.i = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef nonnull %12) #16, !dbg !3051
    #dbg_value(i32 %call29.i, !2996, !DIExpression(), !2999)
  %20 = load ptr, ptr %streamBuffer.i, align 8, !dbg !3045
  %21 = load i32, ptr %frame_bitoffset.i, align 8, !dbg !3047
  %22 = load i32, ptr %bitstream_length.i, align 4, !dbg !3048
  %call27.i = tail call i32 @more_rbsp_data(ptr noundef %20, i32 noundef %21, i32 noundef %22) #16, !dbg !3049
  %tobool28.not.i = icmp eq i32 %call27.i, 0, !dbg !3050
  br i1 %tobool28.not.i, label %if.end30.i, label %while.body.i, !dbg !3050, !llvm.loop !3052

if.end30.i:                                       ; preds = %while.body.i, %while.cond.preheader.i, %if.end23.i
  %23 = load i32, ptr %add.ptr.i, align 8, !dbg !3054
  %tobool33.not.i = icmp eq i32 %23, 0, !dbg !3056
  br i1 %tobool33.not.i, label %if.end36.i, label %if.then34.i, !dbg !3057

if.then34.i:                                      ; preds = %if.end30.i
  store i32 1, ptr %Valid.i, align 4, !dbg !3058
  br label %if.end36.i, !dbg !3059

if.end36.i:                                       ; preds = %if.then34.i, %if.end30.i
  tail call void @FreeSPS(ptr noundef %call.i) #16, !dbg !3060
  br label %InterpretSubsetSPS.exit, !dbg !3061

InterpretSubsetSPS.exit:                          ; preds = %if.then15.i, %if.end36.i
  %idx.ext = sext i32 %13 to i64, !dbg !3062
  %add.ptr = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet.i, i64 %idx.ext, !dbg !3062
    #dbg_value(ptr %add.ptr, !2957, !DIExpression(), !2959)
  tail call void @get_max_dec_frame_buf_size(ptr noundef nonnull %add.ptr), !dbg !3063
  %Valid = getelementptr inbounds i8, ptr %add.ptr, i64 4268, !dbg !3064
  %24 = load i32, ptr %Valid, align 4, !dbg !3064
  %tobool.not = icmp eq i32 %24, 0, !dbg !3066
  br i1 %tobool.not, label %if.end21, label %if.then, !dbg !3067

if.then:                                          ; preds = %InterpretSubsetSPS.exit
  %profile_idc = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !3068
  %25 = load i32, ptr %profile_idc, align 4, !dbg !3068
  %profile_idc13 = getelementptr inbounds i8, ptr %p_Vid, i64 849084, !dbg !3070
  store i32 %25, ptr %profile_idc13, align 4, !dbg !3071
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %add.ptr, i64 4120, !dbg !3072
  %26 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !3072
  %separate_colour_plane_flag15 = getelementptr inbounds i8, ptr %p_Vid, i64 849280, !dbg !3073
  store i32 %26, ptr %separate_colour_plane_flag15, align 8, !dbg !3074
  %tobool17.not = icmp eq i32 %26, 0, !dbg !3075
  br i1 %tobool17.not, label %if.else, label %if.end21.sink.split, !dbg !3077

if.else:                                          ; preds = %if.then
  %chroma_format_idc = getelementptr inbounds i8, ptr %add.ptr, i64 36, !dbg !3078
  %27 = load i32, ptr %chroma_format_idc, align 4, !dbg !3078
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then, %if.else
  %.sink = phi i32 [ %27, %if.else ], [ 0, %if.then ]
  %ChromaArrayType = getelementptr inbounds i8, ptr %p_Vid, i64 848920, !dbg !3080
  store i32 %.sink, ptr %ChromaArrayType, align 8, !dbg !3080
  br label %if.end21, !dbg !3081

if.end21:                                         ; preds = %if.end21.sink.split, %InterpretSubsetSPS.exit
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16, !dbg !3081
  ret void, !dbg !3082
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessPPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 !dbg !3083 {
entry:
    #dbg_value(ptr %p_Vid, !3085, !DIExpression(), !3089)
    #dbg_value(ptr %nalu, !3086, !DIExpression(), !3089)
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16, !dbg !3090
    #dbg_value(ptr %call, !3087, !DIExpression(), !3089)
  %call1 = tail call ptr @AllocPPS() #16, !dbg !3091
    #dbg_value(ptr %call1, !3088, !DIExpression(), !3089)
  %0 = load ptr, ptr %call, align 8, !dbg !3092
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16, !dbg !3093
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !3093
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !3094
  %2 = load ptr, ptr %buf, align 8, !dbg !3094
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1, !dbg !3095
  %len = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !3096
  %3 = load i32, ptr %len, align 4, !dbg !3096
  %sub = add i32 %3, -1, !dbg !3097
  %conv = zext i32 %sub to i64, !dbg !3098
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false), !dbg !3099
  %4 = load ptr, ptr %call, align 8, !dbg !3100
  %streamBuffer3 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !3101
  %5 = load ptr, ptr %streamBuffer3, align 8, !dbg !3101
  %6 = load i32, ptr %len, align 4, !dbg !3102
  %sub5 = add i32 %6, -1, !dbg !3103
  %call6 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub5) #16, !dbg !3104
  %7 = load ptr, ptr %call, align 8, !dbg !3105
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12, !dbg !3106
  store i32 %call6, ptr %bitstream_length, align 4, !dbg !3107
  %8 = load ptr, ptr %call, align 8, !dbg !3108
  %code_len = getelementptr inbounds i8, ptr %8, i64 4, !dbg !3109
  store i32 %call6, ptr %code_len, align 4, !dbg !3110
  %9 = load ptr, ptr %call, align 8, !dbg !3111
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24, !dbg !3112
  store i32 0, ptr %ei_flag, align 8, !dbg !3113
  %10 = load ptr, ptr %call, align 8, !dbg !3114
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8, !dbg !3115
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3116
  %11 = load ptr, ptr %call, align 8, !dbg !3117
  store i32 0, ptr %11, align 8, !dbg !3118
  %call12 = tail call i32 @InterpretPPS(ptr noundef %p_Vid, ptr noundef nonnull %call, ptr noundef %call1), !dbg !3119
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8, !dbg !3120
  %12 = load ptr, ptr %active_pps, align 8, !dbg !3120
  %tobool.not = icmp eq ptr %12, null, !dbg !3122
  br i1 %tobool.not, label %if.end28, label %if.then, !dbg !3123

if.then:                                          ; preds = %entry
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %call1, i64 4, !dbg !3124
  %13 = load i32, ptr %pic_parameter_set_id, align 4, !dbg !3124
  %pic_parameter_set_id14 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !3127
  %14 = load i32, ptr %pic_parameter_set_id14, align 4, !dbg !3127
  %cmp = icmp eq i32 %13, %14, !dbg !3128
  br i1 %cmp, label %if.then16, label %if.end28, !dbg !3129

if.then16:                                        ; preds = %if.then
  %call18 = tail call i32 @pps_is_equal(ptr noundef nonnull %call1, ptr noundef nonnull %12) #16, !dbg !3130
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !3130
  br i1 %tobool19.not, label %if.then20, label %if.end28, !dbg !3133

if.then20:                                        ; preds = %if.then16
  %pNextPPS = getelementptr inbounds i8, ptr %p_Vid, i64 856872, !dbg !3134
  %15 = load ptr, ptr %pNextPPS, align 8, !dbg !3134
  %16 = load ptr, ptr %active_pps, align 8, !dbg !3136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %15, ptr noundef nonnull align 8 dereferenceable(2216) %16, i64 2216, i1 false), !dbg !3137
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456, !dbg !3138
  %17 = load ptr, ptr %dec_picture, align 8, !dbg !3138
  %tobool22.not = icmp eq ptr %17, null, !dbg !3141
  br i1 %tobool22.not, label %if.end, label %if.then23, !dbg !3142

if.then23:                                        ; preds = %if.then20
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16, !dbg !3143
  br label %if.end, !dbg !3145

if.end:                                           ; preds = %if.then23, %if.then20
  store ptr null, ptr %active_pps, align 8, !dbg !3146
  br label %if.end28, !dbg !3147

if.end28:                                         ; preds = %if.then, %if.end, %if.then16, %entry
  %pic_parameter_set_id29 = getelementptr inbounds i8, ptr %call1, i64 4, !dbg !3148
  %18 = load i32, ptr %pic_parameter_set_id29, align 4, !dbg !3148
    #dbg_value(ptr %p_Vid, !2730, !DIExpression(), !3149)
    #dbg_value(i32 %18, !2731, !DIExpression(), !3149)
    #dbg_value(ptr %call1, !2732, !DIExpression(), !3149)
  %PicParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 132120, !dbg !3151
  %idxprom.i = sext i32 %18 to i64, !dbg !3152
  %arrayidx.i = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet.i, i64 0, i64 %idxprom.i, !dbg !3152
  %19 = load i32, ptr %arrayidx.i, align 8, !dbg !3153
  %cmp.i = icmp eq i32 %19, 1, !dbg !3154
  br i1 %cmp.i, label %land.lhs.true.i, label %MakePPSavailable.exit, !dbg !3155

land.lhs.true.i:                                  ; preds = %if.end28
  %slice_group_id.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2160, !dbg !3156
  %20 = load ptr, ptr %slice_group_id.i, align 8, !dbg !3156
  %cmp4.not.i = icmp eq ptr %20, null, !dbg !3157
  br i1 %cmp4.not.i, label %MakePPSavailable.exit, label %if.then.i, !dbg !3158

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @free(ptr noundef nonnull %20) #16, !dbg !3159
  br label %MakePPSavailable.exit, !dbg !3159

MakePPSavailable.exit:                            ; preds = %if.end28, %land.lhs.true.i, %if.then.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %arrayidx.i, ptr noundef nonnull align 8 dereferenceable(2216) %call1, i64 2216, i1 false), !dbg !3160
  %slice_group_id12.i = getelementptr inbounds i8, ptr %call1, i64 2160, !dbg !3161
  %21 = load ptr, ptr %slice_group_id12.i, align 8, !dbg !3161
  %slice_group_id16.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2160, !dbg !3162
  store ptr %21, ptr %slice_group_id16.i, align 8, !dbg !3163
  store ptr null, ptr %slice_group_id12.i, align 8, !dbg !3164
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16, !dbg !3165
  tail call void @FreePPS(ptr noundef nonnull %call1) #16, !dbg !3166
  ret void, !dbg !3167
}

declare !dbg !3168 ptr @AllocPPS() local_unnamed_addr #1

declare !dbg !3171 i32 @pps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3174 void @FreePPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_format_info(ptr nocapture noundef readonly %sps, ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %source, ptr nocapture noundef %output) local_unnamed_addr #10 !dbg !434 {
entry:
    #dbg_value(ptr %sps, !1668, !DIExpression(), !3175)
    #dbg_value(ptr %p_Vid, !1669, !DIExpression(), !3175)
    #dbg_value(ptr %source, !1670, !DIExpression(), !3175)
    #dbg_value(ptr %output, !1671, !DIExpression(), !3175)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !3176
    #dbg_value(ptr %0, !1672, !DIExpression(), !3175)
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps, i64 3148, !dbg !3177
  %1 = load i32, ptr %frame_cropping_flag, align 4, !dbg !3177
  %tobool.not = icmp eq i32 %1, 0, !dbg !3179
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !3180

if.then:                                          ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36, !dbg !3181
  %2 = load i32, ptr %chroma_format_idc, align 4, !dbg !3181
  %idxprom = zext i32 %2 to i64, !dbg !3183
  %arrayidx = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubWidthC, i64 0, i64 %idxprom, !dbg !3183
  %3 = load i32, ptr %arrayidx, align 4, !dbg !3183
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps, i64 3152, !dbg !3184
  %4 = load i32, ptr %frame_cropping_rect_left_offset, align 4, !dbg !3184
    #dbg_value(!DIArgList(i32 %3, i32 %4), !1673, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3175)
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %sps, i64 3156, !dbg !3185
  %5 = load i32, ptr %frame_cropping_rect_right_offset, align 4, !dbg !3185
    #dbg_value(!DIArgList(i32 %3, i32 %5), !1674, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3175)
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubHeightC, i64 0, i64 %idxprom, !dbg !3186
  %6 = load i32, ptr %arrayidx8, align 4, !dbg !3186
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136, !dbg !3187
  %7 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !3187
  %sub.neg = add i32 %7, -2, !dbg !3188
  %mul9.neg = mul i32 %sub.neg, %6, !dbg !3189
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %sps, i64 3160, !dbg !3190
  %8 = load i32, ptr %frame_cropping_rect_top_offset, align 4, !dbg !3190
    #dbg_value(!DIArgList(i32 %6, i32 %8, i32 2, i32 %7), !1675, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3175)
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %sps, i64 3164, !dbg !3191
  %9 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4, !dbg !3191
    #dbg_value(!DIArgList(i32 %6, i32 %9, i32 2, i32 %7), !1676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3175)
  %mul5324 = add i32 %5, %4, !dbg !3192
  %10 = mul i32 %mul5324, %3, !dbg !3192
  %mul17325 = add i32 %9, %8, !dbg !3192
  %.neg = mul i32 %mul9.neg, %mul17325, !dbg !3192
  br label %if.end, !dbg !3192

if.end:                                           ; preds = %entry, %if.then
  %11 = phi i32 [ %10, %if.then ], [ 0, %entry ], !dbg !3193
  %.neg326 = phi i32 [ %.neg, %if.then ], [ 0, %entry ], !dbg !3194
    #dbg_value(i32 poison, !1676, !DIExpression(), !3175)
    #dbg_value(i32 poison, !1675, !DIExpression(), !3175)
    #dbg_value(i32 poison, !1674, !DIExpression(), !3175)
    #dbg_value(i32 poison, !1673, !DIExpression(), !3175)
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !3195
  %12 = load i32, ptr %width, align 4, !dbg !3195
  %sub19 = sub i32 %12, %11, !dbg !3193
  %width20 = getelementptr inbounds i8, ptr %source, i64 16, !dbg !3196
  store i32 %sub19, ptr %width20, align 8, !dbg !3197
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784, !dbg !3198
  %13 = load i32, ptr %height, align 8, !dbg !3198
  %sub23 = add i32 %13, %.neg326, !dbg !3194
  %height24 = getelementptr inbounds i8, ptr %source, i64 28, !dbg !3199
  store i32 %sub23, ptr %height24, align 4, !dbg !3200
  %14 = load i32, ptr %frame_cropping_flag, align 4, !dbg !3201
  %tobool27.not = icmp eq i32 %14, 0, !dbg !3203
  br i1 %tobool27.not, label %if.end40, label %if.then28, !dbg !3204

if.then28:                                        ; preds = %if.end
  %frame_cropping_rect_left_offset29 = getelementptr inbounds i8, ptr %sps, i64 3152, !dbg !3205
  %15 = load i32, ptr %frame_cropping_rect_left_offset29, align 4, !dbg !3205
    #dbg_value(i32 %15, !1673, !DIExpression(), !3175)
  %frame_cropping_rect_right_offset30 = getelementptr inbounds i8, ptr %sps, i64 3156, !dbg !3207
  %16 = load i32, ptr %frame_cropping_rect_right_offset30, align 4, !dbg !3207
    #dbg_value(i32 %16, !1674, !DIExpression(), !3175)
  %frame_mbs_only_flag31 = getelementptr inbounds i8, ptr %sps, i64 3136, !dbg !3208
  %17 = load i32, ptr %frame_mbs_only_flag31, align 4, !dbg !3208
  %sub32.neg = add i32 %17, -2, !dbg !3209
  %sub32 = sub nsw i32 2, %17, !dbg !3209
  %frame_cropping_rect_top_offset33 = getelementptr inbounds i8, ptr %sps, i64 3160, !dbg !3210
  %18 = load i32, ptr %frame_cropping_rect_top_offset33, align 4, !dbg !3210
  %mul34.neg = mul i32 %sub32.neg, %18, !dbg !3211
    #dbg_value(!DIArgList(i32 %sub32, i32 %18), !1675, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3175)
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds i8, ptr %sps, i64 3164, !dbg !3212
  %19 = load i32, ptr %frame_cropping_rect_bottom_offset37, align 4, !dbg !3212
  %mul38 = mul i32 %19, %sub32, !dbg !3213
    #dbg_value(i32 %mul38, !1676, !DIExpression(), !3175)
  br label %if.end40, !dbg !3214

if.end40:                                         ; preds = %if.end, %if.then28
  %crop_left.1 = phi i32 [ %15, %if.then28 ], [ 0, %if.end ], !dbg !3215
  %crop_right.1 = phi i32 [ %16, %if.then28 ], [ 0, %if.end ], !dbg !3215
  %crop_top.1.neg348 = phi i32 [ %mul34.neg, %if.then28 ], [ 0, %if.end ], !dbg !3215
  %crop_bottom.1 = phi i32 [ %mul38, %if.then28 ], [ 0, %if.end ], !dbg !3215
    #dbg_value(i32 %crop_bottom.1, !1676, !DIExpression(), !3175)
    #dbg_value(i32 poison, !1675, !DIExpression(), !3175)
    #dbg_value(i32 %crop_right.1, !1674, !DIExpression(), !3175)
    #dbg_value(i32 %crop_left.1, !1673, !DIExpression(), !3175)
  %chroma_format_idc41 = getelementptr inbounds i8, ptr %sps, i64 36, !dbg !3216
  %20 = load i32, ptr %chroma_format_idc41, align 4, !dbg !3216
  %cmp = icmp eq i32 %20, 0, !dbg !3218
  br i1 %cmp, label %land.lhs.true, label %if.else61, !dbg !3219

land.lhs.true:                                    ; preds = %if.end40
  %write_uv = getelementptr inbounds i8, ptr %0, i64 780, !dbg !3220
  %21 = load i32, ptr %write_uv, align 4, !dbg !3220
  %tobool42.not = icmp eq i32 %21, 0, !dbg !3221
  br i1 %tobool42.not, label %if.else61, label %if.then43, !dbg !3222

if.then43:                                        ; preds = %land.lhs.true
  %shr = ashr i32 %sub19, 1, !dbg !3223
  %arrayidx47 = getelementptr inbounds i8, ptr %source, i64 20, !dbg !3225
  store i32 %shr, ptr %arrayidx47, align 4, !dbg !3226
  %arrayidx51 = getelementptr inbounds i8, ptr %source, i64 24, !dbg !3227
  store i32 %shr, ptr %arrayidx51, align 8, !dbg !3228
  %shr54 = ashr i32 %sub23, 1, !dbg !3229
  br label %if.end78, !dbg !3230

if.else61:                                        ; preds = %land.lhs.true, %if.end40
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788, !dbg !3231
  %22 = load i32, ptr %width_cr, align 4, !dbg !3231
  %23 = add i32 %crop_right.1, %crop_left.1, !dbg !3233
  %sub63 = sub i32 %22, %23, !dbg !3233
  %arrayidx65 = getelementptr inbounds i8, ptr %source, i64 20, !dbg !3234
  store i32 %sub63, ptr %arrayidx65, align 4, !dbg !3235
  %arrayidx69 = getelementptr inbounds i8, ptr %source, i64 24, !dbg !3236
  store i32 %sub63, ptr %arrayidx69, align 8, !dbg !3237
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792, !dbg !3238
  %24 = load i32, ptr %height_cr, align 8, !dbg !3238
  %.neg347 = sub i32 %crop_top.1.neg348, %crop_bottom.1, !dbg !3239
  %sub71 = add i32 %.neg347, %24, !dbg !3239
  br label %if.end78

if.end78:                                         ; preds = %if.else61, %if.then43
  %sub71.sink349 = phi i32 [ %sub71, %if.else61 ], [ %shr54, %if.then43 ]
  %arrayidx73 = getelementptr inbounds i8, ptr %source, i64 32, !dbg !3240
  store i32 %sub71.sink349, ptr %arrayidx73, align 4, !dbg !3240
  %arrayidx77 = getelementptr inbounds i8, ptr %source, i64 36, !dbg !3240
  store i32 %sub71.sink349, ptr %arrayidx77, align 4, !dbg !3240
  %25 = load i32, ptr %width, align 4, !dbg !3241
  %width80 = getelementptr inbounds i8, ptr %output, i64 16, !dbg !3242
  store i32 %25, ptr %width80, align 8, !dbg !3243
  %width_cr82 = getelementptr inbounds i8, ptr %p_Vid, i64 848788, !dbg !3244
  %26 = load i32, ptr %width_cr82, align 4, !dbg !3244
  %arrayidx84 = getelementptr inbounds i8, ptr %source, i64 20, !dbg !3245
  store i32 %26, ptr %arrayidx84, align 4, !dbg !3246
  %arrayidx87 = getelementptr inbounds i8, ptr %source, i64 24, !dbg !3247
  store i32 %26, ptr %arrayidx87, align 8, !dbg !3248
  %27 = load i32, ptr %height, align 8, !dbg !3249
  %height89 = getelementptr inbounds i8, ptr %output, i64 28, !dbg !3250
  store i32 %27, ptr %height89, align 4, !dbg !3251
  %height_cr91 = getelementptr inbounds i8, ptr %p_Vid, i64 848792, !dbg !3252
  %28 = load i32, ptr %height_cr91, align 8, !dbg !3252
  %arrayidx93 = getelementptr inbounds i8, ptr %output, i64 32, !dbg !3253
  store i32 %28, ptr %arrayidx93, align 4, !dbg !3254
  %arrayidx96 = getelementptr inbounds i8, ptr %output, i64 36, !dbg !3255
  store i32 %28, ptr %arrayidx96, align 4, !dbg !3256
  %29 = load i32, ptr %width20, align 8, !dbg !3257
  %30 = load i32, ptr %height24, align 4, !dbg !3258
  %mul101 = mul nsw i32 %30, %29, !dbg !3259
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72, !dbg !3260
  store i32 %mul101, ptr %size_cmp, align 8, !dbg !3261
  %31 = load i32, ptr %arrayidx84, align 4, !dbg !3262
  %arrayidx106 = getelementptr inbounds i8, ptr %source, i64 32, !dbg !3263
  %32 = load i32, ptr %arrayidx106, align 4, !dbg !3263
  %mul107 = mul nsw i32 %32, %31, !dbg !3264
  %arrayidx109 = getelementptr inbounds i8, ptr %source, i64 76, !dbg !3265
  store i32 %mul107, ptr %arrayidx109, align 4, !dbg !3266
  %arrayidx113 = getelementptr inbounds i8, ptr %source, i64 80, !dbg !3267
  store i32 %mul107, ptr %arrayidx113, align 8, !dbg !3268
  %reass.add = shl i32 %mul107, 1, !dbg !3269
  %add120 = add i32 %reass.add, %mul101, !dbg !3269
  %size = getelementptr inbounds i8, ptr %source, i64 84, !dbg !3270
  store i32 %add120, ptr %size, align 4, !dbg !3271
  %mb_width = getelementptr inbounds i8, ptr %source, i64 64, !dbg !3272
  %33 = insertelement <2 x i32> poison, i32 %29, i64 0, !dbg !3273
  %34 = insertelement <2 x i32> %33, i32 %30, i64 1, !dbg !3273
  %35 = sdiv <2 x i32> %34, <i32 16, i32 16>, !dbg !3273
  store <2 x i32> %35, ptr %mb_width, align 8, !dbg !3274
  %36 = load i32, ptr %width80, align 8, !dbg !3275
  %37 = load i32, ptr %height89, align 4, !dbg !3276
  %mul130 = mul nsw i32 %37, %36, !dbg !3277
  %size_cmp131 = getelementptr inbounds i8, ptr %output, i64 72, !dbg !3278
  store i32 %mul130, ptr %size_cmp131, align 8, !dbg !3279
  %arrayidx134 = getelementptr inbounds i8, ptr %output, i64 20, !dbg !3280
  %38 = load i32, ptr %arrayidx134, align 4, !dbg !3280
  %39 = load i32, ptr %arrayidx93, align 4, !dbg !3281
  %mul137 = mul nsw i32 %39, %38, !dbg !3282
  %arrayidx139 = getelementptr inbounds i8, ptr %output, i64 76, !dbg !3283
  store i32 %mul137, ptr %arrayidx139, align 4, !dbg !3284
  %arrayidx143 = getelementptr inbounds i8, ptr %output, i64 80, !dbg !3285
  store i32 %mul137, ptr %arrayidx143, align 8, !dbg !3286
  %reass.add327 = shl i32 %mul137, 1, !dbg !3287
  %add151 = add i32 %reass.add327, %mul130, !dbg !3287
  %size152 = getelementptr inbounds i8, ptr %output, i64 84, !dbg !3288
  store i32 %add151, ptr %size152, align 4, !dbg !3289
  %mb_width156 = getelementptr inbounds i8, ptr %output, i64 64, !dbg !3290
  %40 = insertelement <2 x i32> poison, i32 %36, i64 0, !dbg !3291
  %41 = insertelement <2 x i32> %40, i32 %37, i64 1, !dbg !3291
  %42 = sdiv <2 x i32> %41, <i32 16, i32 16>, !dbg !3291
  store <2 x i32> %42, ptr %mb_width156, align 8, !dbg !3292
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040, !dbg !3293
  %43 = load i16, ptr %bitdepth_luma, align 8, !dbg !3293
  %conv = sext i16 %43 to i32, !dbg !3294
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88, !dbg !3295
  store i32 %conv, ptr %bit_depth, align 8, !dbg !3296
  %bit_depth162 = getelementptr inbounds i8, ptr %output, i64 88, !dbg !3297
  store i32 %conv, ptr %bit_depth162, align 8, !dbg !3298
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042, !dbg !3299
  %44 = load i16, ptr %bitdepth_chroma, align 2, !dbg !3299
  %conv164 = sext i16 %44 to i32, !dbg !3300
  %arrayidx166 = getelementptr inbounds i8, ptr %source, i64 92, !dbg !3301
  store i32 %conv164, ptr %arrayidx166, align 4, !dbg !3302
  %arrayidx168 = getelementptr inbounds i8, ptr %output, i64 92, !dbg !3303
  store i32 %conv164, ptr %arrayidx168, align 4, !dbg !3304
  %45 = load i16, ptr %bitdepth_chroma, align 2, !dbg !3305
  %conv170 = sext i16 %45 to i32, !dbg !3306
  %arrayidx172 = getelementptr inbounds i8, ptr %source, i64 96, !dbg !3307
  store i32 %conv170, ptr %arrayidx172, align 8, !dbg !3308
  %arrayidx174 = getelementptr inbounds i8, ptr %output, i64 96, !dbg !3309
  store i32 %conv170, ptr %arrayidx174, align 8, !dbg !3310
  %46 = load i32, ptr %bit_depth162, align 8, !dbg !3311
  %47 = load i32, ptr %arrayidx168, align 4, !dbg !3312
    #dbg_value(i32 %46, !3313, !DIExpression(), !3317)
    #dbg_value(i32 %47, !3316, !DIExpression(), !3317)
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %46, i32 %47), !dbg !3319
  %cmp179 = icmp sgt i32 %cond.i, 8, !dbg !3320
  %cond = select i1 %cmp179, i32 16, i32 8, !dbg !3321
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %output, i64 124, !dbg !3322
  store i32 %cond, ptr %pic_unit_size_on_disk, align 4, !dbg !3323
  %shr182 = lshr exact i32 %cond, 3, !dbg !3324
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %output, i64 128, !dbg !3325
  store i32 %shr182, ptr %pic_unit_size_shift3, align 8, !dbg !3326
  %frame_rate = getelementptr inbounds i8, ptr %source, i64 8, !dbg !3327
  %48 = load double, ptr %frame_rate, align 8, !dbg !3327
  %frame_rate183 = getelementptr inbounds i8, ptr %output, i64 8, !dbg !3328
  store double %48, ptr %frame_rate183, align 8, !dbg !3329
  %color_model = getelementptr inbounds i8, ptr %source, i64 4, !dbg !3330
  %49 = load i32, ptr %color_model, align 4, !dbg !3330
  %color_model184 = getelementptr inbounds i8, ptr %output, i64 4, !dbg !3331
  store i32 %49, ptr %color_model184, align 4, !dbg !3332
  %50 = load i32, ptr %chroma_format_idc41, align 4, !dbg !3333
  store i32 %50, ptr %source, align 8, !dbg !3334
  store i32 %50, ptr %output, align 8, !dbg !3335
  %auto_crop_bottom = getelementptr inbounds i8, ptr %output, i64 44, !dbg !3336
  store i32 %crop_bottom.1, ptr %auto_crop_bottom, align 4, !dbg !3337
  %auto_crop_right = getelementptr inbounds i8, ptr %output, i64 40, !dbg !3338
  store i32 %crop_right.1, ptr %auto_crop_right, align 8, !dbg !3339
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112, !dbg !3340
  %51 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3340
  %mul187 = mul nsw i32 %51, %crop_bottom.1, !dbg !3341
  %div188 = sdiv i32 %mul187, 16, !dbg !3342
  %auto_crop_bottom_cr = getelementptr inbounds i8, ptr %output, i64 52, !dbg !3343
  store i32 %div188, ptr %auto_crop_bottom_cr, align 4, !dbg !3344
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108, !dbg !3345
  %52 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3345
  %mul189 = mul nsw i32 %52, %crop_right.1, !dbg !3346
  %div190 = sdiv i32 %mul189, 16, !dbg !3347
  %auto_crop_right_cr = getelementptr inbounds i8, ptr %output, i64 48, !dbg !3348
  store i32 %div190, ptr %auto_crop_right_cr, align 8, !dbg !3349
  %auto_crop_bottom192 = getelementptr inbounds i8, ptr %source, i64 44, !dbg !3350
  store i32 %crop_bottom.1, ptr %auto_crop_bottom192, align 4, !dbg !3351
  %53 = load i32, ptr %auto_crop_right, align 8, !dbg !3352
  %auto_crop_right194 = getelementptr inbounds i8, ptr %source, i64 40, !dbg !3353
  store i32 %53, ptr %auto_crop_right194, align 8, !dbg !3354
  %54 = load i32, ptr %auto_crop_bottom_cr, align 4, !dbg !3355
  %auto_crop_bottom_cr196 = getelementptr inbounds i8, ptr %source, i64 52, !dbg !3356
  store i32 %54, ptr %auto_crop_bottom_cr196, align 4, !dbg !3357
  %55 = load i32, ptr %auto_crop_right_cr, align 8, !dbg !3358
  %auto_crop_right_cr198 = getelementptr inbounds i8, ptr %source, i64 48, !dbg !3359
  store i32 %55, ptr %auto_crop_right_cr198, align 8, !dbg !3360
    #dbg_value(ptr %source, !3361, !DIExpression(), !3366)
  %56 = load i32, ptr %bit_depth, align 8, !dbg !3368
  %notmask.i = shl nsw i32 -1, %56, !dbg !3369
  %sub.i = xor i32 %notmask.i, -1, !dbg !3369
  %max_value.i = getelementptr inbounds i8, ptr %source, i64 100, !dbg !3370
  store i32 %sub.i, ptr %max_value.i, align 4, !dbg !3371
  %mul.i = mul nuw nsw i32 %sub.i, %sub.i, !dbg !3372
  %max_value_sq.i = getelementptr inbounds i8, ptr %source, i64 112, !dbg !3373
  store i32 %mul.i, ptr %max_value_sq.i, align 8, !dbg !3374
  %57 = load i32, ptr %arrayidx166, align 4, !dbg !3375
  %notmask47.i = shl nsw i32 -1, %57, !dbg !3376
  %sub10.i = xor i32 %notmask47.i, -1, !dbg !3376
  %arrayidx12.i = getelementptr inbounds i8, ptr %source, i64 104, !dbg !3377
  store i32 %sub10.i, ptr %arrayidx12.i, align 4, !dbg !3378
  %mul17.i = mul nuw nsw i32 %sub10.i, %sub10.i, !dbg !3379
  %arrayidx19.i = getelementptr inbounds i8, ptr %source, i64 116, !dbg !3380
  store i32 %mul17.i, ptr %arrayidx19.i, align 4, !dbg !3381
  %58 = load i32, ptr %arrayidx172, align 8, !dbg !3382
  %notmask48.i = shl nsw i32 -1, %58, !dbg !3383
  %sub23.i = xor i32 %notmask48.i, -1, !dbg !3383
  %arrayidx25.i = getelementptr inbounds i8, ptr %source, i64 108, !dbg !3384
  store i32 %sub23.i, ptr %arrayidx25.i, align 4, !dbg !3385
  %mul30.i = mul nuw nsw i32 %sub23.i, %sub23.i, !dbg !3386
  %arrayidx32.i = getelementptr inbounds i8, ptr %source, i64 120, !dbg !3387
  store i32 %mul30.i, ptr %arrayidx32.i, align 8, !dbg !3388
    #dbg_value(ptr %output, !3361, !DIExpression(), !3389)
  %59 = load i32, ptr %bit_depth162, align 8, !dbg !3391
  %notmask.i329 = shl nsw i32 -1, %59, !dbg !3392
  %sub.i330 = xor i32 %notmask.i329, -1, !dbg !3392
  %max_value.i331 = getelementptr inbounds i8, ptr %output, i64 100, !dbg !3393
  store i32 %sub.i330, ptr %max_value.i331, align 4, !dbg !3394
  %mul.i332 = mul nuw nsw i32 %sub.i330, %sub.i330, !dbg !3395
  %max_value_sq.i333 = getelementptr inbounds i8, ptr %output, i64 112, !dbg !3396
  store i32 %mul.i332, ptr %max_value_sq.i333, align 8, !dbg !3397
  %60 = load i32, ptr %arrayidx168, align 4, !dbg !3398
  %notmask47.i335 = shl nsw i32 -1, %60, !dbg !3399
  %sub10.i336 = xor i32 %notmask47.i335, -1, !dbg !3399
  %arrayidx12.i337 = getelementptr inbounds i8, ptr %output, i64 104, !dbg !3400
  store i32 %sub10.i336, ptr %arrayidx12.i337, align 4, !dbg !3401
  %mul17.i338 = mul nuw nsw i32 %sub10.i336, %sub10.i336, !dbg !3402
  %arrayidx19.i339 = getelementptr inbounds i8, ptr %output, i64 116, !dbg !3403
  store i32 %mul17.i338, ptr %arrayidx19.i339, align 4, !dbg !3404
  %61 = load i32, ptr %arrayidx174, align 8, !dbg !3405
  %notmask48.i341 = shl nsw i32 -1, %61, !dbg !3406
  %sub23.i342 = xor i32 %notmask48.i341, -1, !dbg !3406
  %arrayidx25.i343 = getelementptr inbounds i8, ptr %output, i64 108, !dbg !3407
  store i32 %sub23.i342, ptr %arrayidx25.i343, align 4, !dbg !3408
  %mul30.i344 = mul nuw nsw i32 %sub23.i342, %sub23.i342, !dbg !3409
  %arrayidx32.i345 = getelementptr inbounds i8, ptr %output, i64 120, !dbg !3410
  store i32 %mul30.i344, ptr %arrayidx32.i345, align 8, !dbg !3411
  ret void, !dbg !3412
}

; Function Attrs: nounwind uwtable
define dso_local void @activate_sps(ptr noundef %p_Vid, ptr noundef %sps) local_unnamed_addr #0 !dbg !3413 {
entry:
    #dbg_value(ptr %p_Vid, !3417, !DIExpression(), !3420)
    #dbg_value(ptr %sps, !3418, !DIExpression(), !3420)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !3421
    #dbg_value(ptr %0, !3419, !DIExpression(), !3420)
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !3422
  %1 = load ptr, ptr %active_sps, align 8, !dbg !3422
  %cmp.not = icmp eq ptr %1, %sps, !dbg !3424
  br i1 %cmp.not, label %if.end157, label %if.then, !dbg !3425

if.then:                                          ; preds = %entry
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456, !dbg !3426
  %2 = load ptr, ptr %dec_picture, align 8, !dbg !3426
  %tobool.not = icmp eq ptr %2, null, !dbg !3429
  br i1 %tobool.not, label %if.end, label %if.then2, !dbg !3430

if.then2:                                         ; preds = %if.then
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16, !dbg !3431
  br label %if.end, !dbg !3433

if.end:                                           ; preds = %if.then2, %if.then
  store ptr %sps, ptr %active_sps, align 8, !dbg !3434
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042, !dbg !3435
  store i16 0, ptr %bitdepth_chroma, align 2, !dbg !3436
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788, !dbg !3437
  store i32 0, ptr %width_cr, align 4, !dbg !3438
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792, !dbg !3439
  store i32 0, ptr %height_cr, align 8, !dbg !3440
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28, !dbg !3441
  %3 = load i32, ptr %level_idc, align 4, !dbg !3441
  %cmp6 = icmp ult i32 %3, 11, !dbg !3443
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !3444

if.then7:                                         ; preds = %if.end
  %max_vmv_r = getelementptr inbounds i8, ptr %p_Vid, i64 849216, !dbg !3445
  store i32 256, ptr %max_vmv_r, align 8, !dbg !3447
  br label %if.end23, !dbg !3448

if.else:                                          ; preds = %if.end
  %cmp10 = icmp ult i32 %3, 21, !dbg !3449
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !3451

if.then11:                                        ; preds = %if.else
  %max_vmv_r12 = getelementptr inbounds i8, ptr %p_Vid, i64 849216, !dbg !3452
  store i32 512, ptr %max_vmv_r12, align 8, !dbg !3454
  br label %if.end23, !dbg !3455

if.else13:                                        ; preds = %if.else
  %cmp16 = icmp ult i32 %3, 31, !dbg !3456
  %max_vmv_r18 = getelementptr inbounds i8, ptr %p_Vid, i64 849216, !dbg !3458
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !3459

if.then17:                                        ; preds = %if.else13
  store i32 1024, ptr %max_vmv_r18, align 8, !dbg !3460
  br label %if.end23, !dbg !3462

if.else19:                                        ; preds = %if.else13
  store i32 2048, ptr %max_vmv_r18, align 8, !dbg !3463
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.else19, %if.then17, %if.then7
  %bit_depth_luma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2060, !dbg !3465
  %4 = load i32, ptr %bit_depth_luma_minus8, align 4, !dbg !3465
  %5 = trunc i32 %4 to i16, !dbg !3466
  %conv = add i16 %5, 8, !dbg !3466
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040, !dbg !3467
  store i16 %conv, ptr %bitdepth_luma, align 8, !dbg !3468
  %6 = load i32, ptr %bit_depth_luma_minus8, align 4, !dbg !3469
  %shl = shl nuw i32 1, %6, !dbg !3470
  %bitdepth_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849044, !dbg !3471
  store i32 %shl, ptr %bitdepth_scale, align 4, !dbg !3472
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36, !dbg !3473
  %7 = load i32, ptr %chroma_format_idc, align 4, !dbg !3473
  %cmp25.not = icmp eq i32 %7, 0, !dbg !3475
  br i1 %cmp25.not, label %if.end35, label %if.then27, !dbg !3476

if.then27:                                        ; preds = %if.end23
  %bit_depth_chroma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2064, !dbg !3477
  %8 = load i32, ptr %bit_depth_chroma_minus8, align 4, !dbg !3477
  %9 = trunc i32 %8 to i16, !dbg !3479
  %conv29 = add i16 %9, 8, !dbg !3479
  store i16 %conv29, ptr %bitdepth_chroma, align 2, !dbg !3480
  %10 = load i32, ptr %bit_depth_chroma_minus8, align 4, !dbg !3481
  %shl32 = shl nuw i32 1, %10, !dbg !3482
  %arrayidx34 = getelementptr inbounds i8, ptr %p_Vid, i64 849048, !dbg !3483
  store i32 %shl32, ptr %arrayidx34, align 4, !dbg !3484
  br label %if.end35, !dbg !3485

if.end35:                                         ; preds = %if.then27, %if.end23
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps, i64 2068, !dbg !3486
  %11 = load i32, ptr %log2_max_frame_num_minus4, align 4, !dbg !3486
  %add36 = add i32 %11, 4, !dbg !3487
  %shl37 = shl nuw i32 1, %add36, !dbg !3488
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992, !dbg !3489
  store i32 %shl37, ptr %MaxFrameNum, align 8, !dbg !3490
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128, !dbg !3491
  %12 = load i32, ptr %pic_width_in_mbs_minus1, align 4, !dbg !3491
  %add38 = add i32 %12, 1, !dbg !3492
  %PicWidthInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 848996, !dbg !3493
  store i32 %add38, ptr %PicWidthInMbs, align 4, !dbg !3494
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132, !dbg !3495
  %13 = load i32, ptr %pic_height_in_map_units_minus1, align 4, !dbg !3495
  %add39 = add i32 %13, 1, !dbg !3496
  %PicHeightInMapUnits = getelementptr inbounds i8, ptr %p_Vid, i64 849000, !dbg !3497
  store i32 %add39, ptr %PicHeightInMapUnits, align 8, !dbg !3498
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136, !dbg !3499
  %14 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !3499
  %sub = sub nsw i32 2, %14, !dbg !3500
  %mul = mul i32 %sub, %add39, !dbg !3501
  %FrameHeightInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849004, !dbg !3502
  store i32 %mul, ptr %FrameHeightInMbs, align 4, !dbg !3503
  %mul43 = mul i32 %mul, %add38, !dbg !3504
  %FrameSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849016, !dbg !3505
  store i32 %mul43, ptr %FrameSizeInMbs, align 8, !dbg !3506
  %15 = load i32, ptr %chroma_format_idc, align 4, !dbg !3507
  %yuv_format = getelementptr inbounds i8, ptr %p_Vid, i64 849088, !dbg !3508
  store i32 %15, ptr %yuv_format, align 8, !dbg !3509
  %mul46 = shl i32 %add38, 4, !dbg !3510
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !3511
  store i32 %mul46, ptr %width, align 4, !dbg !3512
  %mul48 = shl i32 %mul, 4, !dbg !3513
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784, !dbg !3514
  store i32 %mul48, ptr %height, align 8, !dbg !3515
  %16 = load i32, ptr %chroma_format_idc, align 4, !dbg !3516
  switch i32 %16, label %if.end80 [
    i32 1, label %if.then52
    i32 2, label %if.then62
    i32 3, label %if.then72
  ], !dbg !3518

if.then52:                                        ; preds = %if.end35
  %shr = ashr exact i32 %mul46, 1, !dbg !3519
  store i32 %shr, ptr %width_cr, align 4, !dbg !3521
  %shr56 = ashr exact i32 %mul48, 1, !dbg !3522
  store i32 %shr56, ptr %height_cr, align 8, !dbg !3523
  br label %if.end80, !dbg !3524

if.then62:                                        ; preds = %if.end35
  %shr64 = ashr exact i32 %mul46, 1, !dbg !3525
  store i32 %shr64, ptr %width_cr, align 4, !dbg !3528
  store i32 %mul48, ptr %height_cr, align 8, !dbg !3529
  %iChromaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856852, !dbg !3530
  store i32 16, ptr %iChromaPadY, align 4, !dbg !3531
  br label %if.end80, !dbg !3532

if.then72:                                        ; preds = %if.end35
  store i32 %mul46, ptr %width_cr, align 4, !dbg !3533
  store i32 %mul48, ptr %height_cr, align 8, !dbg !3536
  %iLumaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856840, !dbg !3537
  %iChromaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856848, !dbg !3538
  %17 = load <2 x i32>, ptr %iLumaPadX, align 8, !dbg !3537
  store <2 x i32> %17, ptr %iChromaPadX, align 8, !dbg !3539
  br label %if.end80, !dbg !3540

if.end80:                                         ; preds = %if.end35, %if.then62, %if.then72, %if.then52
  %last_pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 848672, !dbg !3541
  %18 = load i32, ptr %last_pic_width_in_mbs_minus1, align 8, !dbg !3541
  %19 = load i32, ptr %pic_width_in_mbs_minus1, align 4, !dbg !3543
  %cmp83.not = icmp eq i32 %18, %19, !dbg !3544
  br i1 %cmp83.not, label %lor.lhs.false, label %if.then104, !dbg !3545

lor.lhs.false:                                    ; preds = %if.end80
  %last_pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 848676, !dbg !3546
  %20 = load i32, ptr %last_pic_height_in_map_units_minus1, align 4, !dbg !3546
  %21 = load i32, ptr %pic_height_in_map_units_minus1, align 4, !dbg !3547
  %cmp87.not = icmp eq i32 %20, %21, !dbg !3548
  br i1 %cmp87.not, label %lor.lhs.false89, label %if.then104, !dbg !3549

lor.lhs.false89:                                  ; preds = %lor.lhs.false
  %last_max_dec_frame_buffering = getelementptr inbounds i8, ptr %p_Vid, i64 848680, !dbg !3550
  %22 = load i32, ptr %last_max_dec_frame_buffering, align 8, !dbg !3550
  %call = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid) #16, !dbg !3551
  %cmp90.not = icmp eq i32 %22, %call, !dbg !3552
  br i1 %cmp90.not, label %lor.lhs.false92, label %if.then104, !dbg !3553

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %last_profile_idc = getelementptr inbounds i8, ptr %p_Vid, i64 848684, !dbg !3554
  %23 = load i32, ptr %last_profile_idc, align 4, !dbg !3554
  %24 = load ptr, ptr %active_sps, align 8, !dbg !3555
  %profile_idc = getelementptr inbounds i8, ptr %24, i64 4, !dbg !3556
  %25 = load i32, ptr %profile_idc, align 4, !dbg !3556
  %cmp94.not = icmp ne i32 %23, %25, !dbg !3557
  %cmp98 = icmp ult i32 %25, 118
  %or.cond = and i1 %cmp94.not, %cmp98, !dbg !3558
  %cmp102 = icmp slt i32 %23, 118
  %or.cond274 = and i1 %cmp102, %or.cond, !dbg !3558
  br i1 %or.cond274, label %if.then104, label %if.else121, !dbg !3558

if.then104:                                       ; preds = %lor.lhs.false92, %lor.lhs.false89, %lor.lhs.false, %if.end80
  tail call void @init_frext(ptr noundef nonnull %p_Vid) #16, !dbg !3559
  %call105 = tail call i32 @init_global_buffers(ptr noundef nonnull %p_Vid) #16, !dbg !3561
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849024, !dbg !3562
  %26 = load i32, ptr %no_output_of_prior_pics_flag, align 8, !dbg !3562
  %tobool106.not = icmp eq i32 %26, 0, !dbg !3564
  br i1 %tobool106.not, label %if.then107, label %if.end108, !dbg !3565

if.then107:                                       ; preds = %if.then104
  %p_Dpb = getelementptr inbounds i8, ptr %p_Vid, i64 856656, !dbg !3566
  %27 = load ptr, ptr %p_Dpb, align 8, !dbg !3566
  tail call void @flush_dpb(ptr noundef %27, i32 noundef -1) #16, !dbg !3568
  br label %if.end108, !dbg !3569

if.end108:                                        ; preds = %if.then107, %if.then104
  %p_Dpb109 = getelementptr inbounds i8, ptr %p_Vid, i64 856656, !dbg !3570
  %28 = load ptr, ptr %p_Dpb109, align 8, !dbg !3570
  tail call void @init_dpb(ptr noundef nonnull %p_Vid, ptr noundef %28) #16, !dbg !3571
  %29 = load ptr, ptr %active_sps, align 8, !dbg !3572
  %pic_width_in_mbs_minus1111 = getelementptr inbounds i8, ptr %29, i64 3128, !dbg !3573
  %30 = load i32, ptr %pic_width_in_mbs_minus1111, align 4, !dbg !3573
  store i32 %30, ptr %last_pic_width_in_mbs_minus1, align 8, !dbg !3574
  %pic_height_in_map_units_minus1114 = getelementptr inbounds i8, ptr %29, i64 3132, !dbg !3575
  %31 = load i32, ptr %pic_height_in_map_units_minus1114, align 4, !dbg !3575
  %last_pic_height_in_map_units_minus1115 = getelementptr inbounds i8, ptr %p_Vid, i64 848676, !dbg !3576
  store i32 %31, ptr %last_pic_height_in_map_units_minus1115, align 4, !dbg !3577
  %call116 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid) #16, !dbg !3578
  %last_max_dec_frame_buffering117 = getelementptr inbounds i8, ptr %p_Vid, i64 848680, !dbg !3579
  store i32 %call116, ptr %last_max_dec_frame_buffering117, align 8, !dbg !3580
  %32 = load ptr, ptr %active_sps, align 8, !dbg !3581
  %profile_idc119 = getelementptr inbounds i8, ptr %32, i64 4, !dbg !3582
  %33 = load i32, ptr %profile_idc119, align 4, !dbg !3582
  %last_profile_idc120 = getelementptr inbounds i8, ptr %p_Vid, i64 848684, !dbg !3583
  store i32 %33, ptr %last_profile_idc120, align 4, !dbg !3584
  br label %if.end145, !dbg !3585

if.else121:                                       ; preds = %lor.lhs.false92
  %cmp125.not = icmp eq i32 %23, %25, !dbg !3586
  br i1 %cmp125.not, label %if.end145, label %land.lhs.true127, !dbg !3588

land.lhs.true127:                                 ; preds = %if.else121
  %cmp129 = icmp sgt i32 %23, 117, !dbg !3589
  %cmp134 = icmp ugt i32 %25, 117
  %or.cond275 = or i1 %cmp129, %cmp134, !dbg !3590
  br i1 %or.cond275, label %land.lhs.true136, label %if.end145, !dbg !3590

land.lhs.true136:                                 ; preds = %land.lhs.true127
  %p_Dpb137 = getelementptr inbounds i8, ptr %p_Vid, i64 856656, !dbg !3591
  %34 = load ptr, ptr %p_Dpb137, align 8, !dbg !3591
  %init_done = getelementptr inbounds i8, ptr %34, i64 4160, !dbg !3592
  %35 = load i32, ptr %init_done, align 8, !dbg !3592
  %tobool138.not = icmp eq i32 %35, 0, !dbg !3593
  br i1 %tobool138.not, label %if.end145, label %if.then139, !dbg !3594

if.then139:                                       ; preds = %land.lhs.true136
  tail call void @re_init_dpb(ptr noundef nonnull %p_Vid, ptr noundef nonnull %34) #16, !dbg !3595
  %36 = load ptr, ptr %active_sps, align 8, !dbg !3597
  %profile_idc142 = getelementptr inbounds i8, ptr %36, i64 4, !dbg !3598
  %37 = load i32, ptr %profile_idc142, align 4, !dbg !3598
  store i32 %37, ptr %last_profile_idc, align 4, !dbg !3599
  br label %if.end145, !dbg !3600

if.end145:                                        ; preds = %land.lhs.true127, %if.else121, %land.lhs.true136, %if.then139, %if.end108
  %38 = phi ptr [ %24, %land.lhs.true127 ], [ %24, %if.else121 ], [ %24, %land.lhs.true136 ], [ %36, %if.then139 ], [ %32, %if.end108 ], !dbg !3601
  %num_ref_frames = getelementptr inbounds i8, ptr %38, i64 3120, !dbg !3602
  %39 = load i32, ptr %num_ref_frames, align 4, !dbg !3602
  %p_Dpb147 = getelementptr inbounds i8, ptr %p_Vid, i64 856656, !dbg !3603
  %40 = load ptr, ptr %p_Dpb147, align 8, !dbg !3603
  %num_ref_frames148 = getelementptr inbounds i8, ptr %40, i64 4164, !dbg !3604
  store i32 %39, ptr %num_ref_frames148, align 4, !dbg !3605
  %41 = load i32, ptr %width, align 4, !dbg !3606
  %42 = load i32, ptr %height, align 8, !dbg !3607
  tail call void @ercInit(ptr noundef nonnull %p_Vid, i32 noundef %41, i32 noundef %42, i32 noundef 1) #16, !dbg !3608
  %43 = load ptr, ptr %dec_picture, align 8, !dbg !3609
  %tobool152.not = icmp eq ptr %43, null, !dbg !3611
  br i1 %tobool152.not, label %if.end157, label %if.then153, !dbg !3612

if.then153:                                       ; preds = %if.end145
  %erc_errorVar = getelementptr inbounds i8, ptr %p_Vid, i64 856504, !dbg !3613
  %44 = load ptr, ptr %erc_errorVar, align 8, !dbg !3613
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012, !dbg !3615
  %45 = load i32, ptr %PicSizeInMbs, align 4, !dbg !3615
  %size_x = getelementptr inbounds i8, ptr %43, i64 64, !dbg !3616
  %46 = load i32, ptr %size_x, align 8, !dbg !3616
  tail call void @ercReset(ptr noundef %44, i32 noundef %45, i32 noundef %45, i32 noundef %46) #16, !dbg !3617
  %erc_mvperMB = getelementptr inbounds i8, ptr %p_Vid, i64 856512, !dbg !3618
  store i32 0, ptr %erc_mvperMB, align 8, !dbg !3619
  br label %if.end157, !dbg !3620

if.end157:                                        ; preds = %if.end145, %if.then153, %entry
  %source = getelementptr inbounds i8, ptr %0, i64 792, !dbg !3621
  %output = getelementptr inbounds i8, ptr %0, i64 928, !dbg !3622
  tail call void @reset_format_info(ptr noundef %sps, ptr noundef nonnull %p_Vid, ptr noundef nonnull %source, ptr noundef nonnull %output), !dbg !3623
  ret void, !dbg !3624
}

declare !dbg !3625 i32 @GetMaxDecFrameBuffering(ptr noundef) local_unnamed_addr #1

declare !dbg !3628 void @init_frext(ptr noundef) local_unnamed_addr #1

declare !dbg !3629 i32 @init_global_buffers(ptr noundef) local_unnamed_addr #1

declare !dbg !3630 void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3635 void @init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3638 void @re_init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3639 void @ercInit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3642 void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @activate_pps(ptr noundef %p_Vid, ptr noundef %pps) local_unnamed_addr #0 !dbg !3647 {
entry:
    #dbg_value(ptr %p_Vid, !3651, !DIExpression(), !3653)
    #dbg_value(ptr %pps, !3652, !DIExpression(), !3653)
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8, !dbg !3654
  %0 = load ptr, ptr %active_pps, align 8, !dbg !3654
  %cmp.not = icmp eq ptr %0, %pps, !dbg !3656
  br i1 %cmp.not, label %if.end4, label %if.then, !dbg !3657

if.then:                                          ; preds = %entry
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456, !dbg !3658
  %1 = load ptr, ptr %dec_picture, align 8, !dbg !3658
  %tobool.not = icmp eq ptr %1, null, !dbg !3661
  br i1 %tobool.not, label %if.end, label %if.then1, !dbg !3662

if.then1:                                         ; preds = %if.then
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16, !dbg !3663
  br label %if.end, !dbg !3665

if.end:                                           ; preds = %if.then1, %if.then
  store ptr %pps, ptr %active_pps, align 8, !dbg !3666
  br label %if.end4, !dbg !3667

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local void @UseParameterSet(ptr nocapture noundef %currSlice) local_unnamed_addr #0 !dbg !3669 {
entry:
    #dbg_value(ptr %currSlice, !3673, !DIExpression(), !3679)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !3680
    #dbg_value(ptr %0, !3674, !DIExpression(), !3679)
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228, !dbg !3681
  %1 = load i32, ptr %pic_parameter_set_id, align 4, !dbg !3681
    #dbg_value(i32 %1, !3675, !DIExpression(), !3679)
  %PicParSet = getelementptr inbounds i8, ptr %0, i64 132120, !dbg !3682
  %idxprom = sext i32 %1 to i64, !dbg !3683
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %idxprom, !dbg !3683
    #dbg_value(ptr %arrayidx, !3676, !DIExpression(), !3679)
  %SeqParSet = getelementptr inbounds i8, ptr %0, i64 24, !dbg !3684
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !3685
  %2 = load i32, ptr %seq_parameter_set_id, align 8, !dbg !3685
  %idxprom2 = zext i32 %2 to i64, !dbg !3686
  %arrayidx3 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom2, !dbg !3686
    #dbg_value(ptr %arrayidx3, !3677, !DIExpression(), !3679)
  %3 = load i32, ptr %arrayidx, align 8, !dbg !3687
  %cmp.not = icmp eq i32 %3, 1, !dbg !3689
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3690

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %1), !dbg !3691
  br label %if.end, !dbg !3691

if.end:                                           ; preds = %if.then, %entry
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32, !dbg !3692
  %4 = load i32, ptr %svc_extension_flag, align 8, !dbg !3692
  %cmp4 = icmp eq i32 %4, -1, !dbg !3694
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3695

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %arrayidx3, align 4, !dbg !3696
  %cmp7.not = icmp eq i32 %5, 1, !dbg !3699
  br i1 %cmp7.not, label %if.end25, label %if.then8, !dbg !3700

if.then8:                                         ; preds = %if.then5
  %6 = load i32, ptr %seq_parameter_set_id, align 8, !dbg !3701
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef %1, i32 noundef %6), !dbg !3702
  br label %if.end25, !dbg !3702

if.else:                                          ; preds = %if.end
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %0, i64 699424, !dbg !3703
  %7 = load i32, ptr %seq_parameter_set_id, align 8, !dbg !3705
  %idx.ext = zext i32 %7 to i64, !dbg !3706
  %add.ptr = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet, i64 %idx.ext, !dbg !3706
  %active_subset_sps = getelementptr inbounds i8, ptr %0, i64 699416, !dbg !3707
  store ptr %add.ptr, ptr %active_subset_sps, align 8, !dbg !3708
    #dbg_value(ptr %add.ptr, !3677, !DIExpression(), !3679)
  %Valid19 = getelementptr inbounds [32 x %struct.subset_seq_parameter_set_rbsp_t], ptr %SubsetSeqParSet, i64 0, i64 %idx.ext, i32 20, !dbg !3709
  %8 = load i32, ptr %Valid19, align 4, !dbg !3709
  %cmp20.not = icmp eq i32 %8, 1, !dbg !3711
  br i1 %cmp20.not, label %if.end25, label %if.then21, !dbg !3712

if.then21:                                        ; preds = %if.else
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, i32 noundef %1, i32 noundef %7), !dbg !3713
  br label %if.end25, !dbg !3713

if.end25:                                         ; preds = %if.else, %if.then21, %if.then5, %if.then8
  %sps.0 = phi ptr [ %arrayidx3, %if.then8 ], [ %arrayidx3, %if.then5 ], [ %add.ptr, %if.then21 ], [ %add.ptr, %if.else ], !dbg !3679
    #dbg_value(ptr %sps.0, !3677, !DIExpression(), !3679)
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %sps.0, i64 2072, !dbg !3714
  %9 = load i32, ptr %pic_order_cnt_type, align 4, !dbg !3714
  %cmp28 = icmp ugt i32 %9, 2
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !3716

if.then29:                                        ; preds = %if.end25
  %call31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %9), !dbg !3717
  tail call void @error(ptr noundef nonnull @.str.117, i32 noundef -1000) #16, !dbg !3719
  %.pr = load i32, ptr %pic_order_cnt_type, align 4, !dbg !3720
  br label %if.end32, !dbg !3722

if.end32:                                         ; preds = %if.end25, %if.then29
  %10 = phi i32 [ %9, %if.end25 ], [ %.pr, %if.then29 ], !dbg !3720
  %cmp34 = icmp eq i32 %10, 1, !dbg !3723
  br i1 %cmp34, label %if.then35, label %if.end39, !dbg !3724

if.then35:                                        ; preds = %if.end32
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %sps.0, i64 2092, !dbg !3725
  %11 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !3725
  %cmp36 = icmp ugt i32 %11, 255, !dbg !3728
  br i1 %cmp36, label %if.then37, label %if.end39, !dbg !3729

if.then37:                                        ; preds = %if.then35
  tail call void @error(ptr noundef nonnull @.str.118, i32 noundef -1011) #16, !dbg !3730
  br label %if.end39, !dbg !3732

if.end39:                                         ; preds = %if.then35, %if.then37, %if.end32
  tail call void @activate_sps(ptr noundef nonnull %0, ptr noundef nonnull %sps.0), !dbg !3733
    #dbg_value(ptr %0, !3651, !DIExpression(), !3734)
    #dbg_value(ptr %arrayidx, !3652, !DIExpression(), !3734)
  %active_pps.i = getelementptr inbounds i8, ptr %0, i64 8, !dbg !3736
  %12 = load ptr, ptr %active_pps.i, align 8, !dbg !3736
  %cmp.not.i = icmp eq ptr %12, %arrayidx, !dbg !3737
  br i1 %cmp.not.i, label %activate_pps.exit, label %if.then.i, !dbg !3738

if.then.i:                                        ; preds = %if.end39
  %dec_picture.i = getelementptr inbounds i8, ptr %0, i64 856456, !dbg !3739
  %13 = load ptr, ptr %dec_picture.i, align 8, !dbg !3739
  %tobool.not.i = icmp eq ptr %13, null, !dbg !3740
  br i1 %tobool.not.i, label %if.end.i, label %if.then1.i, !dbg !3741

if.then1.i:                                       ; preds = %if.then.i
  tail call void @exit_picture(ptr noundef nonnull %0, ptr noundef nonnull %dec_picture.i) #16, !dbg !3742
  br label %if.end.i, !dbg !3743

if.end.i:                                         ; preds = %if.then1.i, %if.then.i
  store ptr %arrayidx, ptr %active_pps.i, align 8, !dbg !3744
  br label %activate_pps.exit, !dbg !3745

activate_pps.exit:                                ; preds = %if.end39, %if.end.i
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %arrayidx, i64 12, !dbg !3746
  %14 = load i32, ptr %entropy_coding_mode_flag, align 4, !dbg !3746
  %cmp40 = icmp eq i32 %14, 0, !dbg !3748
  %nal_startcode_follows = getelementptr inbounds i8, ptr %currSlice, i64 13432, !dbg !3749
    #dbg_value(i32 0, !3678, !DIExpression(), !3679)
    #dbg_value(i32 0, !3678, !DIExpression(), !3679)
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
    #dbg_value(i64 3, !3678, !DIExpression(), !3679)
    #dbg_value(i64 3, !3678, !DIExpression(), !3679)
    #dbg_value(i32 0, !3678, !DIExpression(), !3679)
    #dbg_value(i32 0, !3678, !DIExpression(), !3679)
    #dbg_value(i64 0, !3678, !DIExpression(), !3679)
    #dbg_value(i64 0, !3678, !DIExpression(), !3679)
    #dbg_value(i64 1, !3678, !DIExpression(), !3679)
    #dbg_value(i64 1, !3678, !DIExpression(), !3679)
    #dbg_value(i64 2, !3678, !DIExpression(), !3679)
    #dbg_value(i64 2, !3678, !DIExpression(), !3679)
  %uvlc_startcode_follows.cabac_startcode_follows = select i1 %cmp40, ptr @uvlc_startcode_follows, ptr @cabac_startcode_follows, !dbg !3750
  %readSyntaxElement_UVLC.readSyntaxElement_CABAC = select i1 %cmp40, ptr @readSyntaxElement_UVLC, ptr @readSyntaxElement_CABAC, !dbg !3750
  store ptr %uvlc_startcode_follows.cabac_startcode_follows, ptr %nal_startcode_follows, align 8, !dbg !3749
  %15 = load ptr, ptr %partArr, align 8, !dbg !3749
  %readSyntaxElement53 = getelementptr inbounds i8, ptr %15, i64 40, !dbg !3749
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53, align 8, !dbg !3749
  %16 = load ptr, ptr %partArr, align 8, !dbg !3749
  %readSyntaxElement53.1 = getelementptr inbounds i8, ptr %16, i64 88, !dbg !3749
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53.1, align 8, !dbg !3749
  %17 = load ptr, ptr %partArr, align 8, !dbg !3749
  %readSyntaxElement53.2 = getelementptr inbounds i8, ptr %17, i64 136, !dbg !3749
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53.2, align 8, !dbg !3749
  ret void, !dbg !3750
}

declare i32 @uvlc_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_UVLC(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cabac_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_CABAC(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @seq_parameter_set_mvc_extension(ptr nocapture noundef %subset_sps, ptr noundef %s) local_unnamed_addr #0 !dbg !3751 {
entry:
    #dbg_value(ptr %subset_sps, !3755, !DIExpression(), !3769)
    #dbg_value(ptr %s, !3756, !DIExpression(), !3769)
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.119, ptr noundef %s) #16, !dbg !3770
  %num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4132, !dbg !3771
  store i32 %call, ptr %num_views_minus1, align 4, !dbg !3772
    #dbg_value(i32 %call, !3759, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3769)
  %cmp = icmp sgt i32 %call, -1, !dbg !3773
  br i1 %cmp, label %if.then, label %for.end228, !dbg !3775

if.then:                                          ; preds = %entry
  %add = add nuw nsw i32 %call, 1, !dbg !3776
    #dbg_value(i32 %add, !3759, !DIExpression(), !3769)
  %conv = zext nneg i32 %add to i64, !dbg !3777
  %call2 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17, !dbg !3780
  %view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4136, !dbg !3781
  store ptr %call2, ptr %view_id, align 8, !dbg !3782
  %cmp3 = icmp eq ptr %call2, null, !dbg !3783
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !3784

if.then5:                                         ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str.120) #16, !dbg !3785
  br label %if.end, !dbg !3785

if.end:                                           ; preds = %if.then5, %if.then
  %call7 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17, !dbg !3786
  %num_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4144, !dbg !3788
  store ptr %call7, ptr %num_anchor_refs_l0, align 8, !dbg !3789
  %cmp8 = icmp eq ptr %call7, null, !dbg !3790
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !3791

if.then10:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.121) #16, !dbg !3792
  br label %if.end11, !dbg !3792

if.end11:                                         ; preds = %if.then10, %if.end
  %call13 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17, !dbg !3793
  %num_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4160, !dbg !3795
  store ptr %call13, ptr %num_anchor_refs_l1, align 8, !dbg !3796
  %cmp14 = icmp eq ptr %call13, null, !dbg !3797
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !3798

if.then16:                                        ; preds = %if.end11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.122) #16, !dbg !3799
  br label %if.end17, !dbg !3799

if.end17:                                         ; preds = %if.then16, %if.end11
  %call19 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17, !dbg !3800
  %anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4152, !dbg !3802
  store ptr %call19, ptr %anchor_ref_l0, align 8, !dbg !3803
  %cmp20 = icmp eq ptr %call19, null, !dbg !3804
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3805

if.then22:                                        ; preds = %if.end17
  tail call void @no_mem_exit(ptr noundef nonnull @.str.123) #16, !dbg !3806
  br label %if.end23, !dbg !3806

if.end23:                                         ; preds = %if.then22, %if.end17
  %call25 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17, !dbg !3807
  %anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4168, !dbg !3809
  store ptr %call25, ptr %anchor_ref_l1, align 8, !dbg !3810
  %cmp26 = icmp eq ptr %call25, null, !dbg !3811
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !3812

if.then28:                                        ; preds = %if.end23
  tail call void @no_mem_exit(ptr noundef nonnull @.str.124) #16, !dbg !3813
  br label %if.end29, !dbg !3813

if.end29:                                         ; preds = %if.then28, %if.end23
  %call31 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17, !dbg !3814
  %num_non_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4176, !dbg !3816
  store ptr %call31, ptr %num_non_anchor_refs_l0, align 8, !dbg !3817
  %cmp32 = icmp eq ptr %call31, null, !dbg !3818
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !3819

if.then34:                                        ; preds = %if.end29
  tail call void @no_mem_exit(ptr noundef nonnull @.str.125) #16, !dbg !3820
  br label %if.end35, !dbg !3820

if.end35:                                         ; preds = %if.then34, %if.end29
  %call37 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17, !dbg !3821
  %num_non_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4192, !dbg !3823
  store ptr %call37, ptr %num_non_anchor_refs_l1, align 8, !dbg !3824
  %cmp38 = icmp eq ptr %call37, null, !dbg !3825
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !3826

if.then40:                                        ; preds = %if.end35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.126) #16, !dbg !3827
  br label %if.end41, !dbg !3827

if.end41:                                         ; preds = %if.then40, %if.end35
  %call43 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17, !dbg !3828
  %non_anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4184, !dbg !3830
  store ptr %call43, ptr %non_anchor_ref_l0, align 8, !dbg !3831
  %cmp44 = icmp eq ptr %call43, null, !dbg !3832
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !3833

if.then46:                                        ; preds = %if.end41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.127) #16, !dbg !3834
  br label %if.end47, !dbg !3834

if.end47:                                         ; preds = %if.then46, %if.end41
  %call49 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17, !dbg !3835
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4200, !dbg !3837
  store ptr %call49, ptr %non_anchor_ref_l1, align 8, !dbg !3838
  %cmp50 = icmp eq ptr %call49, null, !dbg !3839
  br i1 %cmp50, label %if.then52, label %for.body.lr.ph, !dbg !3840

if.then52:                                        ; preds = %if.end47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.128) #16, !dbg !3841
  br label %for.body.lr.ph, !dbg !3841

for.body.lr.ph:                                   ; preds = %if.end47, %if.then52
    #dbg_value(i32 0, !3757, !DIExpression(), !3769)
  %view_id58 = getelementptr inbounds i8, ptr %subset_sps, i64 4136
  %0 = add nuw i32 %call, 1, !dbg !3842
  %wide.trip.count = zext i32 %0 to i64, !dbg !3844
  br label %for.body, !dbg !3842

for.cond59.preheader:                             ; preds = %for.body
    #dbg_value(i32 1, !3757, !DIExpression(), !3769)
  %cmp60.not609 = icmp eq i32 %call, 0, !dbg !3846
  br i1 %cmp60.not609, label %for.end228, label %for.body62.lr.ph, !dbg !3849

for.body62.lr.ph:                                 ; preds = %for.cond59.preheader
  %num_anchor_refs_l064 = getelementptr inbounds i8, ptr %subset_sps, i64 4144
  %anchor_ref_l078 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  %num_anchor_refs_l1103 = getelementptr inbounds i8, ptr %subset_sps, i64 4160
  %anchor_ref_l1117 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  %1 = add nuw i32 %call, 1, !dbg !3849
  %wide.trip.count638 = zext i32 %1 to i64, !dbg !3846
  br label %for.body62, !dbg !3849

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !3757, !DIExpression(), !3769)
  %call57 = tail call i32 @ue_v(ptr noundef nonnull @.str.129, ptr noundef %s) #16, !dbg !3850
  %2 = load ptr, ptr %view_id58, align 8, !dbg !3852
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !3853
  store i32 %call57, ptr %arrayidx, align 4, !dbg !3854
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3855
    #dbg_value(i64 %indvars.iv.next, !3757, !DIExpression(), !3769)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3844
  br i1 %exitcond.not, label %for.cond59.preheader, label %for.body, !dbg !3842, !llvm.loop !3856

for.cond144.preheader:                            ; preds = %for.inc141
    #dbg_value(i32 1, !3757, !DIExpression(), !3769)
  br i1 %cmp60.not609, label %for.end228, label %for.body147.lr.ph, !dbg !3858

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %num_non_anchor_refs_l0149 = getelementptr inbounds i8, ptr %subset_sps, i64 4176
  %non_anchor_ref_l0163 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  %num_non_anchor_refs_l1188 = getelementptr inbounds i8, ptr %subset_sps, i64 4192
  %non_anchor_ref_l1202 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  %3 = add nuw i32 %call, 1, !dbg !3858
  %wide.trip.count649 = zext i32 %3 to i64, !dbg !3860
  br label %for.body147, !dbg !3858

for.body62:                                       ; preds = %for.body62.lr.ph, %for.inc141
  %indvars.iv635 = phi i64 [ 1, %for.body62.lr.ph ], [ %indvars.iv.next636, %for.inc141 ]
    #dbg_value(i64 %indvars.iv635, !3757, !DIExpression(), !3769)
  %call63 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %s) #16, !dbg !3862
  %4 = load ptr, ptr %num_anchor_refs_l064, align 8, !dbg !3864
  %arrayidx66 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv635, !dbg !3865
  store i32 %call63, ptr %arrayidx66, align 4, !dbg !3866
  %5 = load ptr, ptr %num_anchor_refs_l064, align 8, !dbg !3867
  %arrayidx69 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv635, !dbg !3869
  %6 = load i32, ptr %arrayidx69, align 4, !dbg !3869
  %cmp70 = icmp sgt i32 %6, 0, !dbg !3870
  br i1 %cmp70, label %if.then72, label %if.end101, !dbg !3871

if.then72:                                        ; preds = %for.body62
  %conv76 = zext nneg i32 %6 to i64, !dbg !3872
  %call77 = tail call noalias ptr @calloc(i64 noundef %conv76, i64 noundef 4) #17, !dbg !3875
  %7 = load ptr, ptr %anchor_ref_l078, align 8, !dbg !3876
  %arrayidx80 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv635, !dbg !3877
  store ptr %call77, ptr %arrayidx80, align 8, !dbg !3878
  %cmp81 = icmp eq ptr %call77, null, !dbg !3879
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !3880

if.then83:                                        ; preds = %if.then72
  tail call void @no_mem_exit(ptr noundef nonnull @.str.131) #16, !dbg !3881
  br label %if.end84, !dbg !3881

if.end84:                                         ; preds = %if.then83, %if.then72
    #dbg_value(i32 0, !3758, !DIExpression(), !3769)
  %8 = load ptr, ptr %num_anchor_refs_l064, align 8, !dbg !3882
  %arrayidx88603 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv635, !dbg !3885
  %9 = load i32, ptr %arrayidx88603, align 4, !dbg !3885
  %cmp89604 = icmp sgt i32 %9, 0, !dbg !3886
  br i1 %cmp89604, label %for.body91, label %if.end101, !dbg !3887

for.body91:                                       ; preds = %if.end84, %for.body91
  %indvars.iv629 = phi i64 [ %indvars.iv.next630, %for.body91 ], [ 0, %if.end84 ]
    #dbg_value(i64 %indvars.iv629, !3758, !DIExpression(), !3769)
  %call92 = tail call i32 @ue_v(ptr noundef nonnull @.str.132, ptr noundef %s) #16, !dbg !3888
  %10 = load ptr, ptr %anchor_ref_l078, align 8, !dbg !3889
  %arrayidx95 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv635, !dbg !3890
  %11 = load ptr, ptr %arrayidx95, align 8, !dbg !3890
  %arrayidx97 = getelementptr inbounds i32, ptr %11, i64 %indvars.iv629, !dbg !3890
  store i32 %call92, ptr %arrayidx97, align 4, !dbg !3891
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 1, !dbg !3892
    #dbg_value(i64 %indvars.iv.next630, !3758, !DIExpression(), !3769)
  %12 = load ptr, ptr %num_anchor_refs_l064, align 8, !dbg !3882
  %arrayidx88 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv635, !dbg !3885
  %13 = load i32, ptr %arrayidx88, align 4, !dbg !3885
  %14 = sext i32 %13 to i64, !dbg !3886
  %cmp89 = icmp slt i64 %indvars.iv.next630, %14, !dbg !3886
  br i1 %cmp89, label %for.body91, label %if.end101, !dbg !3887, !llvm.loop !3893

if.end101:                                        ; preds = %for.body91, %if.end84, %for.body62
  %call102 = tail call i32 @ue_v(ptr noundef nonnull @.str.133, ptr noundef %s) #16, !dbg !3895
  %15 = load ptr, ptr %num_anchor_refs_l1103, align 8, !dbg !3896
  %arrayidx105 = getelementptr inbounds i32, ptr %15, i64 %indvars.iv635, !dbg !3897
  store i32 %call102, ptr %arrayidx105, align 4, !dbg !3898
  %16 = load ptr, ptr %num_anchor_refs_l1103, align 8, !dbg !3899
  %arrayidx108 = getelementptr inbounds i32, ptr %16, i64 %indvars.iv635, !dbg !3901
  %17 = load i32, ptr %arrayidx108, align 4, !dbg !3901
  %cmp109 = icmp sgt i32 %17, 0, !dbg !3902
  br i1 %cmp109, label %if.then111, label %for.inc141, !dbg !3903

if.then111:                                       ; preds = %if.end101
  %conv115 = zext nneg i32 %17 to i64, !dbg !3904
  %call116 = tail call noalias ptr @calloc(i64 noundef %conv115, i64 noundef 4) #17, !dbg !3907
  %18 = load ptr, ptr %anchor_ref_l1117, align 8, !dbg !3908
  %arrayidx119 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv635, !dbg !3909
  store ptr %call116, ptr %arrayidx119, align 8, !dbg !3910
  %cmp120 = icmp eq ptr %call116, null, !dbg !3911
  br i1 %cmp120, label %if.then122, label %if.end123, !dbg !3912

if.then122:                                       ; preds = %if.then111
  tail call void @no_mem_exit(ptr noundef nonnull @.str.134) #16, !dbg !3913
  br label %if.end123, !dbg !3913

if.end123:                                        ; preds = %if.then122, %if.then111
    #dbg_value(i32 0, !3758, !DIExpression(), !3769)
  %19 = load ptr, ptr %num_anchor_refs_l1103, align 8, !dbg !3914
  %arrayidx127606 = getelementptr inbounds i32, ptr %19, i64 %indvars.iv635, !dbg !3917
  %20 = load i32, ptr %arrayidx127606, align 4, !dbg !3917
  %cmp128607 = icmp sgt i32 %20, 0, !dbg !3918
  br i1 %cmp128607, label %for.body130, label %for.inc141, !dbg !3919

for.body130:                                      ; preds = %if.end123, %for.body130
  %indvars.iv632 = phi i64 [ %indvars.iv.next633, %for.body130 ], [ 0, %if.end123 ]
    #dbg_value(i64 %indvars.iv632, !3758, !DIExpression(), !3769)
  %call131 = tail call i32 @ue_v(ptr noundef nonnull @.str.135, ptr noundef %s) #16, !dbg !3920
  %21 = load ptr, ptr %anchor_ref_l1117, align 8, !dbg !3921
  %arrayidx134 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv635, !dbg !3922
  %22 = load ptr, ptr %arrayidx134, align 8, !dbg !3922
  %arrayidx136 = getelementptr inbounds i32, ptr %22, i64 %indvars.iv632, !dbg !3922
  store i32 %call131, ptr %arrayidx136, align 4, !dbg !3923
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 1, !dbg !3924
    #dbg_value(i64 %indvars.iv.next633, !3758, !DIExpression(), !3769)
  %23 = load ptr, ptr %num_anchor_refs_l1103, align 8, !dbg !3914
  %arrayidx127 = getelementptr inbounds i32, ptr %23, i64 %indvars.iv635, !dbg !3917
  %24 = load i32, ptr %arrayidx127, align 4, !dbg !3917
  %25 = sext i32 %24 to i64, !dbg !3918
  %cmp128 = icmp slt i64 %indvars.iv.next633, %25, !dbg !3918
  br i1 %cmp128, label %for.body130, label %for.inc141, !dbg !3919, !llvm.loop !3925

for.inc141:                                       ; preds = %for.body130, %if.end123, %if.end101
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1, !dbg !3927
    #dbg_value(i64 %indvars.iv.next636, !3757, !DIExpression(), !3769)
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count638, !dbg !3846
  br i1 %exitcond639.not, label %for.cond144.preheader, label %for.body62, !dbg !3849, !llvm.loop !3928

for.body147:                                      ; preds = %for.body147.lr.ph, %for.inc226
  %indvars.iv646 = phi i64 [ 1, %for.body147.lr.ph ], [ %indvars.iv.next647, %for.inc226 ]
    #dbg_value(i64 %indvars.iv646, !3757, !DIExpression(), !3769)
  %call148 = tail call i32 @ue_v(ptr noundef nonnull @.str.136, ptr noundef %s) #16, !dbg !3930
  %26 = load ptr, ptr %num_non_anchor_refs_l0149, align 8, !dbg !3932
  %arrayidx151 = getelementptr inbounds i32, ptr %26, i64 %indvars.iv646, !dbg !3933
  store i32 %call148, ptr %arrayidx151, align 4, !dbg !3934
  %27 = load ptr, ptr %num_non_anchor_refs_l0149, align 8, !dbg !3935
  %arrayidx154 = getelementptr inbounds i32, ptr %27, i64 %indvars.iv646, !dbg !3937
  %28 = load i32, ptr %arrayidx154, align 4, !dbg !3937
  %cmp155 = icmp sgt i32 %28, 0, !dbg !3938
  br i1 %cmp155, label %if.then157, label %if.end186, !dbg !3939

if.then157:                                       ; preds = %for.body147
  %conv161 = zext nneg i32 %28 to i64, !dbg !3940
  %call162 = tail call noalias ptr @calloc(i64 noundef %conv161, i64 noundef 4) #17, !dbg !3943
  %29 = load ptr, ptr %non_anchor_ref_l0163, align 8, !dbg !3944
  %arrayidx165 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv646, !dbg !3945
  store ptr %call162, ptr %arrayidx165, align 8, !dbg !3946
  %cmp166 = icmp eq ptr %call162, null, !dbg !3947
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !3948

if.then168:                                       ; preds = %if.then157
  tail call void @no_mem_exit(ptr noundef nonnull @.str.137) #16, !dbg !3949
  br label %if.end169, !dbg !3949

if.end169:                                        ; preds = %if.then168, %if.then157
    #dbg_value(i32 0, !3758, !DIExpression(), !3769)
  %30 = load ptr, ptr %num_non_anchor_refs_l0149, align 8, !dbg !3950
  %arrayidx173611 = getelementptr inbounds i32, ptr %30, i64 %indvars.iv646, !dbg !3953
  %31 = load i32, ptr %arrayidx173611, align 4, !dbg !3953
  %cmp174612 = icmp sgt i32 %31, 0, !dbg !3954
  br i1 %cmp174612, label %for.body176, label %if.end186, !dbg !3955

for.body176:                                      ; preds = %if.end169, %for.body176
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %for.body176 ], [ 0, %if.end169 ]
    #dbg_value(i64 %indvars.iv640, !3758, !DIExpression(), !3769)
  %call177 = tail call i32 @ue_v(ptr noundef nonnull @.str.138, ptr noundef %s) #16, !dbg !3956
  %32 = load ptr, ptr %non_anchor_ref_l0163, align 8, !dbg !3957
  %arrayidx180 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv646, !dbg !3958
  %33 = load ptr, ptr %arrayidx180, align 8, !dbg !3958
  %arrayidx182 = getelementptr inbounds i32, ptr %33, i64 %indvars.iv640, !dbg !3958
  store i32 %call177, ptr %arrayidx182, align 4, !dbg !3959
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1, !dbg !3960
    #dbg_value(i64 %indvars.iv.next641, !3758, !DIExpression(), !3769)
  %34 = load ptr, ptr %num_non_anchor_refs_l0149, align 8, !dbg !3950
  %arrayidx173 = getelementptr inbounds i32, ptr %34, i64 %indvars.iv646, !dbg !3953
  %35 = load i32, ptr %arrayidx173, align 4, !dbg !3953
  %36 = sext i32 %35 to i64, !dbg !3954
  %cmp174 = icmp slt i64 %indvars.iv.next641, %36, !dbg !3954
  br i1 %cmp174, label %for.body176, label %if.end186, !dbg !3955, !llvm.loop !3961

if.end186:                                        ; preds = %for.body176, %if.end169, %for.body147
  %call187 = tail call i32 @ue_v(ptr noundef nonnull @.str.139, ptr noundef %s) #16, !dbg !3963
  %37 = load ptr, ptr %num_non_anchor_refs_l1188, align 8, !dbg !3964
  %arrayidx190 = getelementptr inbounds i32, ptr %37, i64 %indvars.iv646, !dbg !3965
  store i32 %call187, ptr %arrayidx190, align 4, !dbg !3966
  %38 = load ptr, ptr %num_non_anchor_refs_l1188, align 8, !dbg !3967
  %arrayidx193 = getelementptr inbounds i32, ptr %38, i64 %indvars.iv646, !dbg !3969
  %39 = load i32, ptr %arrayidx193, align 4, !dbg !3969
  %cmp194 = icmp sgt i32 %39, 0, !dbg !3970
  br i1 %cmp194, label %if.then196, label %for.inc226, !dbg !3971

if.then196:                                       ; preds = %if.end186
  %conv200 = zext nneg i32 %39 to i64, !dbg !3972
  %call201 = tail call noalias ptr @calloc(i64 noundef %conv200, i64 noundef 4) #17, !dbg !3975
  %40 = load ptr, ptr %non_anchor_ref_l1202, align 8, !dbg !3976
  %arrayidx204 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv646, !dbg !3977
  store ptr %call201, ptr %arrayidx204, align 8, !dbg !3978
  %cmp205 = icmp eq ptr %call201, null, !dbg !3979
  br i1 %cmp205, label %if.then207, label %if.end208, !dbg !3980

if.then207:                                       ; preds = %if.then196
  tail call void @no_mem_exit(ptr noundef nonnull @.str.140) #16, !dbg !3981
  br label %if.end208, !dbg !3981

if.end208:                                        ; preds = %if.then207, %if.then196
    #dbg_value(i32 0, !3758, !DIExpression(), !3769)
  %41 = load ptr, ptr %num_non_anchor_refs_l1188, align 8, !dbg !3982
  %arrayidx212614 = getelementptr inbounds i32, ptr %41, i64 %indvars.iv646, !dbg !3985
  %42 = load i32, ptr %arrayidx212614, align 4, !dbg !3985
  %cmp213615 = icmp sgt i32 %42, 0, !dbg !3986
  br i1 %cmp213615, label %for.body215, label %for.inc226, !dbg !3987

for.body215:                                      ; preds = %if.end208, %for.body215
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %for.body215 ], [ 0, %if.end208 ]
    #dbg_value(i64 %indvars.iv643, !3758, !DIExpression(), !3769)
  %call216 = tail call i32 @ue_v(ptr noundef nonnull @.str.141, ptr noundef %s) #16, !dbg !3988
  %43 = load ptr, ptr %non_anchor_ref_l1202, align 8, !dbg !3989
  %arrayidx219 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv646, !dbg !3990
  %44 = load ptr, ptr %arrayidx219, align 8, !dbg !3990
  %arrayidx221 = getelementptr inbounds i32, ptr %44, i64 %indvars.iv643, !dbg !3990
  store i32 %call216, ptr %arrayidx221, align 4, !dbg !3991
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1, !dbg !3992
    #dbg_value(i64 %indvars.iv.next644, !3758, !DIExpression(), !3769)
  %45 = load ptr, ptr %num_non_anchor_refs_l1188, align 8, !dbg !3982
  %arrayidx212 = getelementptr inbounds i32, ptr %45, i64 %indvars.iv646, !dbg !3985
  %46 = load i32, ptr %arrayidx212, align 4, !dbg !3985
  %47 = sext i32 %46 to i64, !dbg !3986
  %cmp213 = icmp slt i64 %indvars.iv.next644, %47, !dbg !3986
  br i1 %cmp213, label %for.body215, label %for.inc226, !dbg !3987, !llvm.loop !3993

for.inc226:                                       ; preds = %for.body215, %if.end208, %if.end186
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1, !dbg !3995
    #dbg_value(i64 %indvars.iv.next647, !3757, !DIExpression(), !3769)
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count649, !dbg !3860
  br i1 %exitcond650.not, label %for.end228, label %for.body147, !dbg !3858, !llvm.loop !3996

for.end228:                                       ; preds = %for.inc226, %entry, %for.cond59.preheader, %for.cond144.preheader
  %call229 = tail call i32 @ue_v(ptr noundef nonnull @.str.142, ptr noundef %s) #16, !dbg !3998
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4208, !dbg !3999
  store i32 %call229, ptr %num_level_values_signalled_minus1, align 8, !dbg !4000
  %cmp231 = icmp sgt i32 %call229, -1, !dbg !4001
  br i1 %cmp231, label %if.then233, label %for.end421, !dbg !4003

if.then233:                                       ; preds = %for.end228
  %add235 = add nuw nsw i32 %call229, 1, !dbg !4004
    #dbg_value(i32 %add235, !3757, !DIExpression(), !3769)
  %conv236 = zext nneg i32 %add235 to i64, !dbg !4006
  %call237 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 4) #17, !dbg !4008
  %level_idc = getelementptr inbounds i8, ptr %subset_sps, i64 4216, !dbg !4009
  store ptr %call237, ptr %level_idc, align 8, !dbg !4010
  %cmp238 = icmp eq ptr %call237, null, !dbg !4011
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !4012

if.then240:                                       ; preds = %if.then233
  tail call void @no_mem_exit(ptr noundef nonnull @.str.143) #16, !dbg !4013
  br label %if.end241, !dbg !4013

if.end241:                                        ; preds = %if.then240, %if.then233
  %call243 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 4) #17, !dbg !4014
  %num_applicable_ops_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4224, !dbg !4016
  store ptr %call243, ptr %num_applicable_ops_minus1, align 8, !dbg !4017
  %cmp244 = icmp eq ptr %call243, null, !dbg !4018
  br i1 %cmp244, label %if.then246, label %if.end247, !dbg !4019

if.then246:                                       ; preds = %if.end241
  tail call void @no_mem_exit(ptr noundef nonnull @.str.144) #16, !dbg !4020
  br label %if.end247, !dbg !4020

if.end247:                                        ; preds = %if.then246, %if.end241
  %call249 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17, !dbg !4021
  %applicable_op_temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4232, !dbg !4023
  store ptr %call249, ptr %applicable_op_temporal_id, align 8, !dbg !4024
  %cmp250 = icmp eq ptr %call249, null, !dbg !4025
  br i1 %cmp250, label %if.then252, label %if.end253, !dbg !4026

if.then252:                                       ; preds = %if.end247
  tail call void @no_mem_exit(ptr noundef nonnull @.str.145) #16, !dbg !4027
  br label %if.end253, !dbg !4027

if.end253:                                        ; preds = %if.then252, %if.end247
  %call255 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17, !dbg !4028
  %applicable_op_num_target_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4240, !dbg !4030
  store ptr %call255, ptr %applicable_op_num_target_views_minus1, align 8, !dbg !4031
  %cmp256 = icmp eq ptr %call255, null, !dbg !4032
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !4033

if.then258:                                       ; preds = %if.end253
  tail call void @no_mem_exit(ptr noundef nonnull @.str.146) #16, !dbg !4034
  br label %if.end259, !dbg !4034

if.end259:                                        ; preds = %if.then258, %if.end253
  %call261 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17, !dbg !4035
  %applicable_op_target_view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4248, !dbg !4037
  store ptr %call261, ptr %applicable_op_target_view_id, align 8, !dbg !4038
  %cmp262 = icmp eq ptr %call261, null, !dbg !4039
  br i1 %cmp262, label %if.then264, label %if.end265, !dbg !4040

if.then264:                                       ; preds = %if.end259
  tail call void @no_mem_exit(ptr noundef nonnull @.str.147) #16, !dbg !4041
  br label %if.end265, !dbg !4041

if.end265:                                        ; preds = %if.then264, %if.end259
  %call267 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17, !dbg !4042
  %applicable_op_num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4256, !dbg !4044
  store ptr %call267, ptr %applicable_op_num_views_minus1, align 8, !dbg !4045
  %cmp268 = icmp eq ptr %call267, null, !dbg !4046
  br i1 %cmp268, label %if.then270, label %if.end272, !dbg !4047

if.then270:                                       ; preds = %if.end265
  tail call void @no_mem_exit(ptr noundef nonnull @.str.148) #16, !dbg !4048
  br label %if.end272, !dbg !4048

if.end272:                                        ; preds = %if.end265, %if.then270
  %.pr = load i32, ptr %num_level_values_signalled_minus1, align 8, !dbg !4049
    #dbg_value(i32 0, !3757, !DIExpression(), !3769)
  %cmp275.not626 = icmp slt i32 %.pr, 0, !dbg !4050
  br i1 %cmp275.not626, label %for.end421, label %for.body277.lr.ph, !dbg !4051

for.body277.lr.ph:                                ; preds = %if.end272
  %level_idc279 = getelementptr inbounds i8, ptr %subset_sps, i64 4216
  %num_applicable_ops_minus1283 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  %applicable_op_temporal_id298 = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  %applicable_op_num_target_views_minus1311 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  %applicable_op_target_view_id324 = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  %applicable_op_num_views_minus1337 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  br label %for.body277, !dbg !4051

for.body277:                                      ; preds = %for.body277.lr.ph, %for.inc419
  %indvars.iv657 = phi i64 [ 0, %for.body277.lr.ph ], [ %indvars.iv.next658, %for.inc419 ]
    #dbg_value(i64 %indvars.iv657, !3757, !DIExpression(), !3769)
  %call278 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.149, ptr noundef %s) #16, !dbg !4052
  %48 = load ptr, ptr %level_idc279, align 8, !dbg !4053
  %arrayidx281 = getelementptr inbounds i32, ptr %48, i64 %indvars.iv657, !dbg !4054
  store i32 %call278, ptr %arrayidx281, align 4, !dbg !4055
  %call282 = tail call i32 @ue_v(ptr noundef nonnull @.str.150, ptr noundef %s) #16, !dbg !4056
  %49 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4057
  %arrayidx285 = getelementptr inbounds i32, ptr %49, i64 %indvars.iv657, !dbg !4058
  store i32 %call282, ptr %arrayidx285, align 4, !dbg !4059
  %50 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4060
  %arrayidx288 = getelementptr inbounds i32, ptr %50, i64 %indvars.iv657, !dbg !4061
  %51 = load i32, ptr %arrayidx288, align 4, !dbg !4061
  %cmp289 = icmp sgt i32 %51, -1, !dbg !4062
  br i1 %cmp289, label %if.then291, label %for.inc419, !dbg !4063

if.then291:                                       ; preds = %for.body277
  %add295 = add nuw nsw i32 %51, 1, !dbg !4064
  %conv296 = zext nneg i32 %add295 to i64, !dbg !4066
  %call297 = tail call noalias ptr @calloc(i64 noundef %conv296, i64 noundef 4) #17, !dbg !4067
  %52 = load ptr, ptr %applicable_op_temporal_id298, align 8, !dbg !4068
  %arrayidx300 = getelementptr inbounds ptr, ptr %52, i64 %indvars.iv657, !dbg !4069
  store ptr %call297, ptr %arrayidx300, align 8, !dbg !4070
  %cmp301 = icmp eq ptr %call297, null, !dbg !4071
  br i1 %cmp301, label %if.then303, label %if.end304, !dbg !4072

if.then303:                                       ; preds = %if.then291
  tail call void @no_mem_exit(ptr noundef nonnull @.str.151) #16, !dbg !4073
  br label %if.end304, !dbg !4073

if.end304:                                        ; preds = %if.then303, %if.then291
  %53 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4074
  %arrayidx307 = getelementptr inbounds i32, ptr %53, i64 %indvars.iv657, !dbg !4076
  %54 = load i32, ptr %arrayidx307, align 4, !dbg !4076
  %add308 = add nsw i32 %54, 1, !dbg !4077
  %conv309 = sext i32 %add308 to i64, !dbg !4078
  %call310 = tail call noalias ptr @calloc(i64 noundef %conv309, i64 noundef 4) #17, !dbg !4079
  %55 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8, !dbg !4080
  %arrayidx313 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv657, !dbg !4081
  store ptr %call310, ptr %arrayidx313, align 8, !dbg !4082
  %cmp314 = icmp eq ptr %call310, null, !dbg !4083
  br i1 %cmp314, label %if.then316, label %if.end317, !dbg !4084

if.then316:                                       ; preds = %if.end304
  tail call void @no_mem_exit(ptr noundef nonnull @.str.152) #16, !dbg !4085
  br label %if.end317, !dbg !4085

if.end317:                                        ; preds = %if.then316, %if.end304
  %56 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4086
  %arrayidx320 = getelementptr inbounds i32, ptr %56, i64 %indvars.iv657, !dbg !4088
  %57 = load i32, ptr %arrayidx320, align 4, !dbg !4088
  %add321 = add nsw i32 %57, 1, !dbg !4089
  %conv322 = sext i32 %add321 to i64, !dbg !4090
  %call323 = tail call noalias ptr @calloc(i64 noundef %conv322, i64 noundef 8) #17, !dbg !4091
  %58 = load ptr, ptr %applicable_op_target_view_id324, align 8, !dbg !4092
  %arrayidx326 = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv657, !dbg !4093
  store ptr %call323, ptr %arrayidx326, align 8, !dbg !4094
  %cmp327 = icmp eq ptr %call323, null, !dbg !4095
  br i1 %cmp327, label %if.then329, label %if.end330, !dbg !4096

if.then329:                                       ; preds = %if.end317
  tail call void @no_mem_exit(ptr noundef nonnull @.str.153) #16, !dbg !4097
  br label %if.end330, !dbg !4097

if.end330:                                        ; preds = %if.then329, %if.end317
  %59 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4098
  %arrayidx333 = getelementptr inbounds i32, ptr %59, i64 %indvars.iv657, !dbg !4100
  %60 = load i32, ptr %arrayidx333, align 4, !dbg !4100
  %add334 = add nsw i32 %60, 1, !dbg !4101
  %conv335 = sext i32 %add334 to i64, !dbg !4102
  %call336 = tail call noalias ptr @calloc(i64 noundef %conv335, i64 noundef 4) #17, !dbg !4103
  %61 = load ptr, ptr %applicable_op_num_views_minus1337, align 8, !dbg !4104
  %arrayidx339 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv657, !dbg !4105
  store ptr %call336, ptr %arrayidx339, align 8, !dbg !4106
  %cmp340 = icmp eq ptr %call336, null, !dbg !4107
  br i1 %cmp340, label %if.then342, label %if.end343, !dbg !4108

if.then342:                                       ; preds = %if.end330
  tail call void @no_mem_exit(ptr noundef nonnull @.str.154) #16, !dbg !4109
  br label %if.end343, !dbg !4109

if.end343:                                        ; preds = %if.then342, %if.end330
    #dbg_value(i32 0, !3758, !DIExpression(), !3769)
  %62 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4110
  %arrayidx347623 = getelementptr inbounds i32, ptr %62, i64 %indvars.iv657, !dbg !4111
  %63 = load i32, ptr %arrayidx347623, align 4, !dbg !4111
  %cmp348.not624 = icmp slt i32 %63, 0, !dbg !4112
  br i1 %cmp348.not624, label %for.inc419, label %for.body350, !dbg !4113

for.body350:                                      ; preds = %if.end343, %if.end408
  %indvars.iv654 = phi i64 [ %indvars.iv.next655, %if.end408 ], [ 0, %if.end343 ]
    #dbg_value(i64 %indvars.iv654, !3758, !DIExpression(), !3769)
  %call351 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.155, ptr noundef %s) #16, !dbg !4114
  %64 = load ptr, ptr %applicable_op_temporal_id298, align 8, !dbg !4115
  %arrayidx354 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv657, !dbg !4116
  %65 = load ptr, ptr %arrayidx354, align 8, !dbg !4116
  %arrayidx356 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv654, !dbg !4116
  store i32 %call351, ptr %arrayidx356, align 4, !dbg !4117
  %call357 = tail call i32 @ue_v(ptr noundef nonnull @.str.156, ptr noundef %s) #16, !dbg !4118
  %66 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8, !dbg !4119
  %arrayidx360 = getelementptr inbounds ptr, ptr %66, i64 %indvars.iv657, !dbg !4120
  %67 = load ptr, ptr %arrayidx360, align 8, !dbg !4120
  %arrayidx362 = getelementptr inbounds i32, ptr %67, i64 %indvars.iv654, !dbg !4120
  store i32 %call357, ptr %arrayidx362, align 4, !dbg !4121
  %68 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8, !dbg !4122
  %arrayidx365 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv657, !dbg !4124
  %69 = load ptr, ptr %arrayidx365, align 8, !dbg !4124
  %arrayidx367 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv654, !dbg !4124
  %70 = load i32, ptr %arrayidx367, align 4, !dbg !4124
  %cmp368 = icmp sgt i32 %70, -1, !dbg !4125
  br i1 %cmp368, label %if.then370, label %if.end408, !dbg !4126

if.then370:                                       ; preds = %for.body350
  %add376 = add nuw nsw i32 %70, 1, !dbg !4127
  %conv377 = zext nneg i32 %add376 to i64, !dbg !4130
  %call378 = tail call noalias ptr @calloc(i64 noundef %conv377, i64 noundef 4) #17, !dbg !4131
  %71 = load ptr, ptr %applicable_op_target_view_id324, align 8, !dbg !4132
  %arrayidx381 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv657, !dbg !4133
  %72 = load ptr, ptr %arrayidx381, align 8, !dbg !4133
  %arrayidx383 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv654, !dbg !4133
  store ptr %call378, ptr %arrayidx383, align 8, !dbg !4134
  %cmp384 = icmp eq ptr %call378, null, !dbg !4135
  br i1 %cmp384, label %if.then386, label %if.end387, !dbg !4136

if.then386:                                       ; preds = %if.then370
  tail call void @no_mem_exit(ptr noundef nonnull @.str.157) #16, !dbg !4137
  br label %if.end387, !dbg !4137

if.end387:                                        ; preds = %if.then386, %if.then370
    #dbg_value(i32 0, !3760, !DIExpression(), !4138)
  %73 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8, !dbg !4139
  %arrayidx391619 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv657, !dbg !4142
  %74 = load ptr, ptr %arrayidx391619, align 8, !dbg !4142
  %arrayidx393620 = getelementptr inbounds i32, ptr %74, i64 %indvars.iv654, !dbg !4142
  %75 = load i32, ptr %arrayidx393620, align 4, !dbg !4142
  %cmp394.not621 = icmp slt i32 %75, 0, !dbg !4143
  br i1 %cmp394.not621, label %if.end408, label %for.body396, !dbg !4144

for.body396:                                      ; preds = %if.end387, %for.body396
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %for.body396 ], [ 0, %if.end387 ]
    #dbg_value(i64 %indvars.iv651, !3760, !DIExpression(), !4138)
  %call397 = tail call i32 @ue_v(ptr noundef nonnull @.str.158, ptr noundef %s) #16, !dbg !4145
  %76 = load ptr, ptr %applicable_op_target_view_id324, align 8, !dbg !4146
  %arrayidx400 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv657, !dbg !4147
  %77 = load ptr, ptr %arrayidx400, align 8, !dbg !4147
  %arrayidx402 = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv654, !dbg !4147
  %78 = load ptr, ptr %arrayidx402, align 8, !dbg !4147
  %arrayidx404 = getelementptr inbounds i32, ptr %78, i64 %indvars.iv651, !dbg !4147
  store i32 %call397, ptr %arrayidx404, align 4, !dbg !4148
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1, !dbg !4149
    #dbg_value(i64 %indvars.iv.next652, !3760, !DIExpression(), !4138)
  %79 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8, !dbg !4139
  %arrayidx391 = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv657, !dbg !4142
  %80 = load ptr, ptr %arrayidx391, align 8, !dbg !4142
  %arrayidx393 = getelementptr inbounds i32, ptr %80, i64 %indvars.iv654, !dbg !4142
  %81 = load i32, ptr %arrayidx393, align 4, !dbg !4142
  %82 = sext i32 %81 to i64, !dbg !4143
  %cmp394.not.not = icmp slt i64 %indvars.iv651, %82, !dbg !4143
  br i1 %cmp394.not.not, label %for.body396, label %if.end408, !dbg !4144, !llvm.loop !4150

if.end408:                                        ; preds = %for.body396, %if.end387, %for.body350
  %call409 = tail call i32 @ue_v(ptr noundef nonnull @.str.159, ptr noundef %s) #16, !dbg !4152
  %83 = load ptr, ptr %applicable_op_num_views_minus1337, align 8, !dbg !4153
  %arrayidx412 = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv657, !dbg !4154
  %84 = load ptr, ptr %arrayidx412, align 8, !dbg !4154
  %arrayidx414 = getelementptr inbounds i32, ptr %84, i64 %indvars.iv654, !dbg !4154
  store i32 %call409, ptr %arrayidx414, align 4, !dbg !4155
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1, !dbg !4156
    #dbg_value(i64 %indvars.iv.next655, !3758, !DIExpression(), !3769)
  %85 = load ptr, ptr %num_applicable_ops_minus1283, align 8, !dbg !4110
  %arrayidx347 = getelementptr inbounds i32, ptr %85, i64 %indvars.iv657, !dbg !4111
  %86 = load i32, ptr %arrayidx347, align 4, !dbg !4111
  %87 = sext i32 %86 to i64, !dbg !4112
  %cmp348.not.not = icmp slt i64 %indvars.iv654, %87, !dbg !4112
  br i1 %cmp348.not.not, label %for.body350, label %for.inc419, !dbg !4113, !llvm.loop !4157

for.inc419:                                       ; preds = %if.end408, %if.end343, %for.body277
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1, !dbg !4159
    #dbg_value(i64 %indvars.iv.next658, !3757, !DIExpression(), !3769)
  %88 = load i32, ptr %num_level_values_signalled_minus1, align 8, !dbg !4049
  %89 = sext i32 %88 to i64, !dbg !4050
  %cmp275.not.not = icmp slt i64 %indvars.iv657, %89, !dbg !4050
  br i1 %cmp275.not.not, label %for.body277, label %for.end421, !dbg !4051, !llvm.loop !4160

for.end421:                                       ; preds = %for.inc419, %for.end228, %if.end272
  ret void, !dbg !4162
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @MemAlloc1D(ptr nocapture noundef writeonly %ppBuf, i32 noundef %iEleSize, i32 noundef %iNum) local_unnamed_addr #11 !dbg !4163 {
entry:
    #dbg_value(ptr %ppBuf, !4167, !DIExpression(), !4170)
    #dbg_value(i32 %iEleSize, !4168, !DIExpression(), !4170)
    #dbg_value(i32 %iNum, !4169, !DIExpression(), !4170)
  %mul = mul nsw i32 %iNum, %iEleSize, !dbg !4171
  %cmp = icmp slt i32 %mul, 1, !dbg !4173
  br i1 %cmp, label %return, label %if.end, !dbg !4174

if.end:                                           ; preds = %entry
  %conv = sext i32 %iNum to i64, !dbg !4175
  %conv1 = sext i32 %iEleSize to i64, !dbg !4176
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef %conv1) #17, !dbg !4177
  store ptr %call, ptr %ppBuf, align 8, !dbg !4178
  %cmp2 = icmp eq ptr %call, null, !dbg !4179
  %conv3 = zext i1 %cmp2 to i32, !dbg !4179
  br label %return, !dbg !4180

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv3, %if.end ], [ 1, %entry ], !dbg !4170
  ret i32 %retval.0, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local void @hrd_parameters(ptr nocapture noundef %pMVCVUI, ptr noundef %s) local_unnamed_addr #0 !dbg !4182 {
entry:
    #dbg_value(ptr %pMVCVUI, !4187, !DIExpression(), !4190)
    #dbg_value(ptr %s, !4188, !DIExpression(), !4190)
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.160, ptr noundef %s) #16, !dbg !4191
  %conv = trunc i32 %call to i8, !dbg !4192
  %cpb_cnt_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 96, !dbg !4193
  store i8 %conv, ptr %cpb_cnt_minus1, align 8, !dbg !4194
  %call1 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.161, ptr noundef %s) #16, !dbg !4195
  %conv2 = trunc i32 %call1 to i8, !dbg !4196
  %bit_rate_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 97, !dbg !4197
  store i8 %conv2, ptr %bit_rate_scale, align 1, !dbg !4198
  %call3 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.162, ptr noundef %s) #16, !dbg !4199
  %conv4 = trunc i32 %call3 to i8, !dbg !4200
  %cpb_size_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 98, !dbg !4201
  store i8 %conv4, ptr %cpb_size_scale, align 2, !dbg !4202
    #dbg_value(i32 0, !4189, !DIExpression(), !4190)
  %0 = load i8, ptr %cpb_cnt_minus1, align 8, !dbg !4203
  %cmp.not48 = icmp slt i8 %0, 0, !dbg !4206
  br i1 %cmp.not48, label %for.end, label %for.body.lr.ph, !dbg !4207

for.body.lr.ph:                                   ; preds = %entry
  %bit_rate_value_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 100
  %cpb_size_value_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 228
  %cbr_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 356
  br label %for.body, !dbg !4207

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !4189, !DIExpression(), !4190)
  %call8 = tail call i32 @ue_v(ptr noundef nonnull @.str.163, ptr noundef %s) #16, !dbg !4208
  %arrayidx = getelementptr inbounds [32 x i32], ptr %bit_rate_value_minus1, i64 0, i64 %indvars.iv, !dbg !4210
  store i32 %call8, ptr %arrayidx, align 4, !dbg !4211
  %call9 = tail call i32 @ue_v(ptr noundef nonnull @.str.164, ptr noundef %s) #16, !dbg !4212
  %arrayidx11 = getelementptr inbounds [32 x i32], ptr %cpb_size_value_minus1, i64 0, i64 %indvars.iv, !dbg !4213
  store i32 %call9, ptr %arrayidx11, align 4, !dbg !4214
  %call12 = tail call i32 @u_1(ptr noundef nonnull @.str.165, ptr noundef %s) #16, !dbg !4215
  %conv13 = trunc i32 %call12 to i8, !dbg !4216
  %arrayidx15 = getelementptr inbounds [32 x i8], ptr %cbr_flag, i64 0, i64 %indvars.iv, !dbg !4217
  store i8 %conv13, ptr %arrayidx15, align 1, !dbg !4218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4219
    #dbg_value(i64 %indvars.iv.next, !4189, !DIExpression(), !4190)
  %1 = load i8, ptr %cpb_cnt_minus1, align 8, !dbg !4203
  %2 = sext i8 %1 to i64, !dbg !4206
  %cmp.not.not = icmp slt i64 %indvars.iv, %2, !dbg !4206
  br i1 %cmp.not.not, label %for.body, label %for.end, !dbg !4207, !llvm.loop !4220

for.end:                                          ; preds = %for.body, %entry
  %call16 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.166, ptr noundef %s) #16, !dbg !4222
  %conv17 = trunc i32 %call16 to i8, !dbg !4223
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 388, !dbg !4224
  store i8 %conv17, ptr %initial_cpb_removal_delay_length_minus1, align 4, !dbg !4225
  %call18 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.167, ptr noundef %s) #16, !dbg !4226
  %conv19 = trunc i32 %call18 to i8, !dbg !4227
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 389, !dbg !4228
  store i8 %conv19, ptr %cpb_removal_delay_length_minus1, align 1, !dbg !4229
  %call20 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.168, ptr noundef %s) #16, !dbg !4230
  %conv21 = trunc i32 %call20 to i8, !dbg !4231
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 390, !dbg !4232
  store i8 %conv21, ptr %dpb_output_delay_length_minus1, align 2, !dbg !4233
  %call22 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.169, ptr noundef %s) #16, !dbg !4234
  %conv23 = trunc i32 %call22 to i8, !dbg !4235
  %time_offset_length = getelementptr inbounds i8, ptr %pMVCVUI, i64 391, !dbg !4236
  store i8 %conv23, ptr %time_offset_length, align 1, !dbg !4237
  ret void, !dbg !4238
}

; Function Attrs: nounwind uwtable
define dso_local void @mvc_vui_parameters_extension(ptr nocapture noundef %pMVCVUI, ptr noundef %s) local_unnamed_addr #0 !dbg !4239 {
entry:
    #dbg_value(ptr %pMVCVUI, !4241, !DIExpression(), !4246)
    #dbg_value(ptr %s, !4242, !DIExpression(), !4246)
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.170, ptr noundef %s) #16, !dbg !4247
  store i32 %call, ptr %pMVCVUI, align 8, !dbg !4248
    #dbg_value(i32 %call, !4245, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4246)
  %cmp = icmp sgt i32 %call, -1, !dbg !4249
  br i1 %cmp, label %MemAlloc1D.exit, label %if.end123, !dbg !4251

MemAlloc1D.exit:                                  ; preds = %entry
  %add = add nuw nsw i32 %call, 1, !dbg !4252
    #dbg_value(i32 %add, !4245, !DIExpression(), !4246)
  %temporal_id = getelementptr inbounds i8, ptr %pMVCVUI, i64 8, !dbg !4253
    #dbg_value(ptr %temporal_id, !4167, !DIExpression(), !4255)
    #dbg_value(i32 1, !4168, !DIExpression(), !4255)
    #dbg_value(i32 %add, !4169, !DIExpression(), !4255)
  %conv.i = zext nneg i32 %add to i64, !dbg !4257
  %call.i = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4258
  store ptr %call.i, ptr %temporal_id, align 8, !dbg !4259
  %num_target_output_views_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 16, !dbg !4260
    #dbg_value(ptr %num_target_output_views_minus1, !4167, !DIExpression(), !4261)
    #dbg_value(i32 4, !4168, !DIExpression(), !4261)
    #dbg_value(i32 %add, !4169, !DIExpression(), !4261)
  %call.i209 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17, !dbg !4263
  store ptr %call.i209, ptr %num_target_output_views_minus1, align 8, !dbg !4264
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 8) #17, !dbg !4265
  %view_id = getelementptr inbounds i8, ptr %pMVCVUI, i64 24, !dbg !4267
  store ptr %call4, ptr %view_id, align 8, !dbg !4268
  %cmp5 = icmp eq ptr %call4, null, !dbg !4269
  br i1 %cmp5, label %if.then7, label %for.body.preheader, !dbg !4270

if.then7:                                         ; preds = %MemAlloc1D.exit
  tail call void @no_mem_exit(ptr noundef nonnull @.str.171) #16, !dbg !4271
  br label %for.body.preheader, !dbg !4271

for.body.preheader:                               ; preds = %MemAlloc1D.exit, %if.then7
  %timing_info_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 32, !dbg !4272
    #dbg_value(ptr %timing_info_present_flag, !4167, !DIExpression(), !4273)
    #dbg_value(i32 1, !4168, !DIExpression(), !4273)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4273)
  %call.i218 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4275
  store ptr %call.i218, ptr %timing_info_present_flag, align 8, !dbg !4276
  %num_units_in_tick = getelementptr inbounds i8, ptr %pMVCVUI, i64 40, !dbg !4277
    #dbg_value(ptr %num_units_in_tick, !4167, !DIExpression(), !4278)
    #dbg_value(i32 4, !4168, !DIExpression(), !4278)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4278)
  %call.i227 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17, !dbg !4280
  store ptr %call.i227, ptr %num_units_in_tick, align 8, !dbg !4281
  %time_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 48, !dbg !4282
    #dbg_value(ptr %time_scale, !4167, !DIExpression(), !4283)
    #dbg_value(i32 4, !4168, !DIExpression(), !4283)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4283)
  %call.i236 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17, !dbg !4285
  store ptr %call.i236, ptr %time_scale, align 8, !dbg !4286
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 56, !dbg !4287
    #dbg_value(ptr %fixed_frame_rate_flag, !4167, !DIExpression(), !4288)
    #dbg_value(i32 1, !4168, !DIExpression(), !4288)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4288)
  %call.i245 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4290
  store ptr %call.i245, ptr %fixed_frame_rate_flag, align 8, !dbg !4291
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 64, !dbg !4292
    #dbg_value(ptr %nal_hrd_parameters_present_flag, !4167, !DIExpression(), !4293)
    #dbg_value(i32 1, !4168, !DIExpression(), !4293)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4293)
  %call.i254 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4295
  store ptr %call.i254, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4296
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 72, !dbg !4297
    #dbg_value(ptr %vcl_hrd_parameters_present_flag, !4167, !DIExpression(), !4298)
    #dbg_value(i32 1, !4168, !DIExpression(), !4298)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4298)
  %call.i263 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4300
  store ptr %call.i263, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4301
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 80, !dbg !4302
    #dbg_value(ptr %low_delay_hrd_flag, !4167, !DIExpression(), !4303)
    #dbg_value(i32 1, !4168, !DIExpression(), !4303)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4303)
  %call.i272 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4305
  store ptr %call.i272, ptr %low_delay_hrd_flag, align 8, !dbg !4306
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 88, !dbg !4307
    #dbg_value(ptr %pic_struct_present_flag, !4167, !DIExpression(), !4308)
    #dbg_value(i32 1, !4168, !DIExpression(), !4308)
    #dbg_value(i32 %call, !4169, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4308)
  %call.i281 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17, !dbg !4310
  store ptr %call.i281, ptr %pic_struct_present_flag, align 8, !dbg !4311
    #dbg_value(i32 0, !4243, !DIExpression(), !4246)
  %0 = add nuw i32 %call, 1, !dbg !4312
  %wide.trip.count = zext i32 %0 to i64, !dbg !4314
  br label %for.body, !dbg !4312

for.body:                                         ; preds = %for.body.preheader, %if.end114
  %indvars.iv301 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next302, %if.end114 ]
    #dbg_value(i64 %indvars.iv301, !4243, !DIExpression(), !4246)
  %call18 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.172, ptr noundef %s) #16, !dbg !4316
  %conv19 = trunc i32 %call18 to i8, !dbg !4318
  %1 = load ptr, ptr %temporal_id, align 8, !dbg !4319
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %indvars.iv301, !dbg !4320
  store i8 %conv19, ptr %arrayidx, align 1, !dbg !4321
  %call21 = tail call i32 @ue_v(ptr noundef nonnull @.str.173, ptr noundef %s) #16, !dbg !4322
  %2 = load ptr, ptr %num_target_output_views_minus1, align 8, !dbg !4323
  %arrayidx24 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv301, !dbg !4324
  store i32 %call21, ptr %arrayidx24, align 4, !dbg !4325
  %3 = load ptr, ptr %num_target_output_views_minus1, align 8, !dbg !4326
  %arrayidx27 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv301, !dbg !4328
  %4 = load i32, ptr %arrayidx27, align 4, !dbg !4328
  %cmp28 = icmp sgt i32 %4, -1, !dbg !4329
  br i1 %cmp28, label %if.end39, label %for.end, !dbg !4330

if.end39:                                         ; preds = %for.body
  %5 = load ptr, ptr %view_id, align 8, !dbg !4331
  %arrayidx33 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv301, !dbg !4332
  %add37 = add nuw nsw i32 %4, 1, !dbg !4333
    #dbg_value(ptr %arrayidx33, !4167, !DIExpression(), !4334)
    #dbg_value(i32 4, !4168, !DIExpression(), !4334)
    #dbg_value(i32 %add37, !4169, !DIExpression(), !4334)
  %conv.i289 = zext nneg i32 %add37 to i64, !dbg !4336
  %call.i290 = tail call noalias ptr @calloc(i64 noundef %conv.i289, i64 noundef 4) #17, !dbg !4337
  store ptr %call.i290, ptr %arrayidx33, align 8, !dbg !4338
  %.pre = load ptr, ptr %num_target_output_views_minus1, align 8, !dbg !4339
  %arrayidx43295.phi.trans.insert = getelementptr inbounds i32, ptr %.pre, i64 %indvars.iv301
  %.pre304 = load i32, ptr %arrayidx43295.phi.trans.insert, align 4, !dbg !4342
    #dbg_value(i32 0, !4244, !DIExpression(), !4246)
  %cmp44.not296 = icmp slt i32 %.pre304, 0, !dbg !4343
  br i1 %cmp44.not296, label %for.end, label %for.body46, !dbg !4344

for.body46:                                       ; preds = %if.end39, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %if.end39 ]
    #dbg_value(i64 %indvars.iv, !4244, !DIExpression(), !4246)
  %call47 = tail call i32 @ue_v(ptr noundef nonnull @.str.174, ptr noundef %s) #16, !dbg !4345
  %6 = load ptr, ptr %view_id, align 8, !dbg !4346
  %arrayidx50 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv301, !dbg !4347
  %7 = load ptr, ptr %arrayidx50, align 8, !dbg !4347
  %arrayidx52 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv, !dbg !4347
  store i32 %call47, ptr %arrayidx52, align 4, !dbg !4348
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4349
    #dbg_value(i64 %indvars.iv.next, !4244, !DIExpression(), !4246)
  %8 = load ptr, ptr %num_target_output_views_minus1, align 8, !dbg !4339
  %arrayidx43 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv301, !dbg !4342
  %9 = load i32, ptr %arrayidx43, align 4, !dbg !4342
  %10 = sext i32 %9 to i64, !dbg !4343
  %cmp44.not.not = icmp slt i64 %indvars.iv, %10, !dbg !4343
  br i1 %cmp44.not.not, label %for.body46, label %for.end, !dbg !4344, !llvm.loop !4350

for.end:                                          ; preds = %for.body46, %for.body, %if.end39
  %call53 = tail call i32 @u_1(ptr noundef nonnull @.str.175, ptr noundef %s) #16, !dbg !4352
  %conv54 = trunc i32 %call53 to i8, !dbg !4353
  %11 = load ptr, ptr %timing_info_present_flag, align 8, !dbg !4354
  %arrayidx57 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv301, !dbg !4355
  store i8 %conv54, ptr %arrayidx57, align 1, !dbg !4356
  %12 = load ptr, ptr %timing_info_present_flag, align 8, !dbg !4357
  %arrayidx60 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv301, !dbg !4359
  %13 = load i8, ptr %arrayidx60, align 1, !dbg !4359
  %tobool.not = icmp eq i8 %13, 0, !dbg !4359
  br i1 %tobool.not, label %if.end75, label %if.then61, !dbg !4360

if.then61:                                        ; preds = %for.end
  %call62 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.176, ptr noundef %s) #16, !dbg !4361
  %14 = load ptr, ptr %num_units_in_tick, align 8, !dbg !4363
  %arrayidx65 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv301, !dbg !4364
  store i32 %call62, ptr %arrayidx65, align 4, !dbg !4365
  %call66 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.177, ptr noundef %s) #16, !dbg !4366
  %15 = load ptr, ptr %time_scale, align 8, !dbg !4367
  %arrayidx69 = getelementptr inbounds i32, ptr %15, i64 %indvars.iv301, !dbg !4368
  store i32 %call66, ptr %arrayidx69, align 4, !dbg !4369
  %call70 = tail call i32 @u_1(ptr noundef nonnull @.str.178, ptr noundef %s) #16, !dbg !4370
  %conv71 = trunc i32 %call70 to i8, !dbg !4371
  %16 = load ptr, ptr %fixed_frame_rate_flag, align 8, !dbg !4372
  %arrayidx74 = getelementptr inbounds i8, ptr %16, i64 %indvars.iv301, !dbg !4373
  store i8 %conv71, ptr %arrayidx74, align 1, !dbg !4374
  br label %if.end75, !dbg !4375

if.end75:                                         ; preds = %if.then61, %for.end
  %call76 = tail call i32 @u_1(ptr noundef nonnull @.str.179, ptr noundef %s) #16, !dbg !4376
  %conv77 = trunc i32 %call76 to i8, !dbg !4377
  %17 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4378
  %arrayidx80 = getelementptr inbounds i8, ptr %17, i64 %indvars.iv301, !dbg !4379
  store i8 %conv77, ptr %arrayidx80, align 1, !dbg !4380
  %18 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4381
  %arrayidx83 = getelementptr inbounds i8, ptr %18, i64 %indvars.iv301, !dbg !4383
  %19 = load i8, ptr %arrayidx83, align 1, !dbg !4383
  %tobool84.not = icmp eq i8 %19, 0, !dbg !4383
  br i1 %tobool84.not, label %if.end86, label %if.then85, !dbg !4384

if.then85:                                        ; preds = %if.end75
  tail call void @hrd_parameters(ptr noundef nonnull %pMVCVUI, ptr noundef %s), !dbg !4385
  br label %if.end86, !dbg !4385

if.end86:                                         ; preds = %if.then85, %if.end75
  %call87 = tail call i32 @u_1(ptr noundef nonnull @.str.180, ptr noundef %s) #16, !dbg !4386
  %conv88 = trunc i32 %call87 to i8, !dbg !4387
  %20 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4388
  %arrayidx91 = getelementptr inbounds i8, ptr %20, i64 %indvars.iv301, !dbg !4389
  store i8 %conv88, ptr %arrayidx91, align 1, !dbg !4390
  %21 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4391
  %arrayidx94 = getelementptr inbounds i8, ptr %21, i64 %indvars.iv301, !dbg !4393
  %22 = load i8, ptr %arrayidx94, align 1, !dbg !4393
  %tobool95.not = icmp eq i8 %22, 0, !dbg !4393
  br i1 %tobool95.not, label %if.end97, label %if.then96, !dbg !4394

if.then96:                                        ; preds = %if.end86
  tail call void @hrd_parameters(ptr noundef nonnull %pMVCVUI, ptr noundef %s), !dbg !4395
  br label %if.end97, !dbg !4395

if.end97:                                         ; preds = %if.then96, %if.end86
  %23 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4396
  %arrayidx100 = getelementptr inbounds i8, ptr %23, i64 %indvars.iv301, !dbg !4398
  %24 = load i8, ptr %arrayidx100, align 1, !dbg !4398
  %tobool102.not = icmp eq i8 %24, 0, !dbg !4398
  br i1 %tobool102.not, label %lor.lhs.false, label %if.then108, !dbg !4399

lor.lhs.false:                                    ; preds = %if.end97
  %25 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4400
  %arrayidx105 = getelementptr inbounds i8, ptr %25, i64 %indvars.iv301, !dbg !4401
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !4401
  %tobool107.not = icmp eq i8 %26, 0, !dbg !4401
  br i1 %tobool107.not, label %if.end114, label %if.then108, !dbg !4402

if.then108:                                       ; preds = %lor.lhs.false, %if.end97
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.181, ptr noundef %s) #16, !dbg !4403
  %conv110 = trunc i32 %call109 to i8, !dbg !4404
  %27 = load ptr, ptr %low_delay_hrd_flag, align 8, !dbg !4405
  %arrayidx113 = getelementptr inbounds i8, ptr %27, i64 %indvars.iv301, !dbg !4406
  store i8 %conv110, ptr %arrayidx113, align 1, !dbg !4407
  br label %if.end114, !dbg !4406

if.end114:                                        ; preds = %if.then108, %lor.lhs.false
  %call115 = tail call i32 @u_1(ptr noundef nonnull @.str.182, ptr noundef %s) #16, !dbg !4408
  %conv116 = trunc i32 %call115 to i8, !dbg !4409
  %28 = load ptr, ptr %pic_struct_present_flag, align 8, !dbg !4410
  %arrayidx119 = getelementptr inbounds i8, ptr %28, i64 %indvars.iv301, !dbg !4411
  store i8 %conv116, ptr %arrayidx119, align 1, !dbg !4412
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1, !dbg !4413
    #dbg_value(i64 %indvars.iv.next302, !4243, !DIExpression(), !4246)
  %exitcond.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count, !dbg !4314
  br i1 %exitcond.not, label %if.end123, label %for.body, !dbg !4312, !llvm.loop !4414

if.end123:                                        ; preds = %if.end114, %entry
  ret void, !dbg !4416
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @init_subset_sps_list(ptr nocapture noundef writeonly %subset_sps_list, i32 noundef %iSize) local_unnamed_addr #12 !dbg !4417 {
entry:
    #dbg_value(ptr %subset_sps_list, !4421, !DIExpression(), !4424)
    #dbg_value(i32 %iSize, !4422, !DIExpression(), !4424)
  %conv = sext i32 %iSize to i64, !dbg !4425
  %mul = mul nsw i64 %conv, 4664, !dbg !4426
  tail call void @llvm.memset.p0.i64(ptr align 8 %subset_sps_list, i8 0, i64 %mul, i1 false), !dbg !4427
    #dbg_value(i32 0, !4423, !DIExpression(), !4424)
  %cmp18 = icmp sgt i32 %iSize, 0, !dbg !4428
  br i1 %cmp18, label %for.body.preheader, label %for.end, !dbg !4431

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %iSize to i64, !dbg !4428
  %min.iters.check = icmp ult i32 %iSize, 4, !dbg !4431
  br i1 %min.iters.check, label %for.body.preheader21, label %vector.ph, !dbg !4431

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644, !dbg !4431
  br label %vector.body, !dbg !4431

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !4432
  %0 = or disjoint i64 %index, 1, !dbg !4431
  %1 = or disjoint i64 %index, 2, !dbg !4431
  %2 = or disjoint i64 %index, 3, !dbg !4431
  %3 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %index, !dbg !4433
  %4 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %0, !dbg !4433
  %5 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %1, !dbg !4433
  %6 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %2, !dbg !4433
  %7 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !4435
  %8 = getelementptr inbounds i8, ptr %4, i64 32, !dbg !4435
  %9 = getelementptr inbounds i8, ptr %5, i64 32, !dbg !4435
  %10 = getelementptr inbounds i8, ptr %6, i64 32, !dbg !4435
  store i32 -1, ptr %7, align 8, !dbg !4436
  store i32 -1, ptr %8, align 8, !dbg !4436
  store i32 -1, ptr %9, align 8, !dbg !4436
  store i32 -1, ptr %10, align 8, !dbg !4436
  %11 = getelementptr inbounds i8, ptr %3, i64 4132, !dbg !4437
  %12 = getelementptr inbounds i8, ptr %4, i64 4132, !dbg !4437
  %13 = getelementptr inbounds i8, ptr %5, i64 4132, !dbg !4437
  %14 = getelementptr inbounds i8, ptr %6, i64 4132, !dbg !4437
  store i32 -1, ptr %11, align 4, !dbg !4438
  store i32 -1, ptr %12, align 4, !dbg !4438
  store i32 -1, ptr %13, align 4, !dbg !4438
  store i32 -1, ptr %14, align 4, !dbg !4438
  %15 = getelementptr inbounds i8, ptr %3, i64 4208, !dbg !4439
  %16 = getelementptr inbounds i8, ptr %4, i64 4208, !dbg !4439
  %17 = getelementptr inbounds i8, ptr %5, i64 4208, !dbg !4439
  %18 = getelementptr inbounds i8, ptr %6, i64 4208, !dbg !4439
  store i32 -1, ptr %15, align 8, !dbg !4440
  store i32 -1, ptr %16, align 8, !dbg !4440
  store i32 -1, ptr %17, align 8, !dbg !4440
  store i32 -1, ptr %18, align 8, !dbg !4440
  %19 = getelementptr inbounds i8, ptr %3, i64 4272, !dbg !4441
  %20 = getelementptr inbounds i8, ptr %4, i64 4272, !dbg !4441
  %21 = getelementptr inbounds i8, ptr %5, i64 4272, !dbg !4441
  %22 = getelementptr inbounds i8, ptr %6, i64 4272, !dbg !4441
  store i32 -1, ptr %19, align 8, !dbg !4442
  store i32 -1, ptr %20, align 8, !dbg !4442
  store i32 -1, ptr %21, align 8, !dbg !4442
  store i32 -1, ptr %22, align 8, !dbg !4442
  %index.next = add nuw i64 %index, 4, !dbg !4432
  %23 = icmp eq i64 %index.next, %n.vec, !dbg !4432
  br i1 %23, label %middle.block, label %vector.body, !dbg !4432, !llvm.loop !4443

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !4431
  br i1 %cmp.n, label %for.end, label %for.body.preheader21, !dbg !4431

for.body.preheader21:                             ; preds = %middle.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count, 3, !dbg !4431
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4431
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !4431

for.body.prol:                                    ; preds = %for.body.preheader21, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader21 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader21 ]
    #dbg_value(i64 %indvars.iv.prol, !4423, !DIExpression(), !4424)
  %arrayidx.prol = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv.prol, !dbg !4433
  %seq_parameter_set_id.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 32, !dbg !4435
  store i32 -1, ptr %seq_parameter_set_id.prol, align 8, !dbg !4436
  %num_views_minus1.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4132, !dbg !4437
  store i32 -1, ptr %num_views_minus1.prol, align 4, !dbg !4438
  %num_level_values_signalled_minus1.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4208, !dbg !4439
  store i32 -1, ptr %num_level_values_signalled_minus1.prol, align 8, !dbg !4440
  %MVCVUIParams.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4272, !dbg !4441
  store i32 -1, ptr %MVCVUIParams.prol, align 8, !dbg !4442
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1, !dbg !4432
    #dbg_value(i64 %indvars.iv.next.prol, !4423, !DIExpression(), !4424)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !4431
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !4431
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !4431, !llvm.loop !4447

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader21
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader21 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %24 = sub nsw i64 %indvars.iv.ph, %wide.trip.count, !dbg !4431
  %25 = icmp ugt i64 %24, -4, !dbg !4431
  br i1 %25, label %for.end, label %for.body, !dbg !4431

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
    #dbg_value(i64 %indvars.iv, !4423, !DIExpression(), !4424)
  %arrayidx = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv, !dbg !4433
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !4435
  store i32 -1, ptr %seq_parameter_set_id, align 8, !dbg !4436
  %num_views_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 4132, !dbg !4437
  store i32 -1, ptr %num_views_minus1, align 4, !dbg !4438
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 4208, !dbg !4439
  store i32 -1, ptr %num_level_values_signalled_minus1, align 8, !dbg !4440
  %MVCVUIParams = getelementptr inbounds i8, ptr %arrayidx, i64 4272, !dbg !4441
  store i32 -1, ptr %MVCVUIParams, align 8, !dbg !4442
    #dbg_value(i64 %indvars.iv, !4423, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4424)
  %26 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv, !dbg !4433
  %seq_parameter_set_id.1 = getelementptr i8, ptr %26, i64 4696, !dbg !4435
  store i32 -1, ptr %seq_parameter_set_id.1, align 8, !dbg !4436
  %num_views_minus1.1 = getelementptr i8, ptr %26, i64 8796, !dbg !4437
  store i32 -1, ptr %num_views_minus1.1, align 4, !dbg !4438
  %num_level_values_signalled_minus1.1 = getelementptr i8, ptr %26, i64 8872, !dbg !4439
  store i32 -1, ptr %num_level_values_signalled_minus1.1, align 8, !dbg !4440
  %MVCVUIParams.1 = getelementptr i8, ptr %26, i64 8936, !dbg !4441
  store i32 -1, ptr %MVCVUIParams.1, align 8, !dbg !4442
    #dbg_value(i64 %indvars.iv, !4423, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !4424)
  %27 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv, !dbg !4433
  %seq_parameter_set_id.2 = getelementptr i8, ptr %27, i64 9360, !dbg !4435
  store i32 -1, ptr %seq_parameter_set_id.2, align 8, !dbg !4436
  %num_views_minus1.2 = getelementptr i8, ptr %27, i64 13460, !dbg !4437
  store i32 -1, ptr %num_views_minus1.2, align 4, !dbg !4438
  %num_level_values_signalled_minus1.2 = getelementptr i8, ptr %27, i64 13536, !dbg !4439
  store i32 -1, ptr %num_level_values_signalled_minus1.2, align 8, !dbg !4440
  %MVCVUIParams.2 = getelementptr i8, ptr %27, i64 13600, !dbg !4441
  store i32 -1, ptr %MVCVUIParams.2, align 8, !dbg !4442
    #dbg_value(i64 %indvars.iv, !4423, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !4424)
  %28 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv, !dbg !4433
  %seq_parameter_set_id.3 = getelementptr i8, ptr %28, i64 14024, !dbg !4435
  store i32 -1, ptr %seq_parameter_set_id.3, align 8, !dbg !4436
  %num_views_minus1.3 = getelementptr i8, ptr %28, i64 18124, !dbg !4437
  store i32 -1, ptr %num_views_minus1.3, align 4, !dbg !4438
  %num_level_values_signalled_minus1.3 = getelementptr i8, ptr %28, i64 18200, !dbg !4439
  store i32 -1, ptr %num_level_values_signalled_minus1.3, align 8, !dbg !4440
  %MVCVUIParams.3 = getelementptr i8, ptr %28, i64 18264, !dbg !4441
  store i32 -1, ptr %MVCVUIParams.3, align 8, !dbg !4442
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !4432
    #dbg_value(i64 %indvars.iv.next.3, !4423, !DIExpression(), !4424)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count, !dbg !4428
  br i1 %exitcond.not.3, label %for.end, label %for.body, !dbg !4431, !llvm.loop !4449

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void, !dbg !4450
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @reset_subset_sps(ptr noundef %subset_sps) local_unnamed_addr #0 !dbg !4451 {
entry:
    #dbg_value(ptr %subset_sps, !4453, !DIExpression(), !4459)
  %tobool.not = icmp eq ptr %subset_sps, null, !dbg !4460
  br i1 %tobool.not, label %if.end302, label %land.lhs.true, !dbg !4462

land.lhs.true:                                    ; preds = %entry
  %num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4132, !dbg !4463
  %0 = load i32, ptr %num_views_minus1, align 4, !dbg !4463
  %cmp = icmp sgt i32 %0, -1, !dbg !4464
  br i1 %cmp, label %if.then, label %land.lhs.true219, !dbg !4465

if.then:                                          ; preds = %land.lhs.true
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %subset_sps, i64 32, !dbg !4466
  store i32 -1, ptr %seq_parameter_set_id, align 8, !dbg !4468
  %view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4136, !dbg !4469
  %1 = load ptr, ptr %view_id, align 8, !dbg !4469
  %tobool1.not = icmp eq ptr %1, null, !dbg !4469
  br i1 %tobool1.not, label %for.body.lr.ph, label %if.end, !dbg !4472

if.end:                                           ; preds = %if.then
  tail call void @free(ptr noundef nonnull %1) #16, !dbg !4473
  store ptr null, ptr %view_id, align 8, !dbg !4473
  %.pre = load i32, ptr %num_views_minus1, align 4, !dbg !4475
    #dbg_value(i32 0, !4454, !DIExpression(), !4459)
  %cmp6.not503 = icmp slt i32 %.pre, 0, !dbg !4478
  br i1 %cmp6.not503, label %for.end, label %for.body.lr.ph, !dbg !4479

for.body.lr.ph:                                   ; preds = %if.then, %if.end
  %anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  %anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  br label %for.body, !dbg !4479

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !4454, !DIExpression(), !4459)
  %2 = load ptr, ptr %anchor_ref_l0, align 8, !dbg !4480
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv, !dbg !4480
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !4480
  %tobool7.not = icmp eq ptr %3, null, !dbg !4480
  br i1 %tobool7.not, label %if.end15, label %if.then8, !dbg !4484

if.then8:                                         ; preds = %for.body
  tail call void @free(ptr noundef nonnull %3) #16, !dbg !4485
  %4 = load ptr, ptr %anchor_ref_l0, align 8, !dbg !4485
  %arrayidx14 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !4485
  store ptr null, ptr %arrayidx14, align 8, !dbg !4485
  br label %if.end15, !dbg !4485

if.end15:                                         ; preds = %if.then8, %for.body
  %5 = load ptr, ptr %anchor_ref_l1, align 8, !dbg !4487
  %arrayidx17 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv, !dbg !4487
  %6 = load ptr, ptr %arrayidx17, align 8, !dbg !4487
  %tobool18.not = icmp eq ptr %6, null, !dbg !4487
  br i1 %tobool18.not, label %for.inc, label %if.then19, !dbg !4490

if.then19:                                        ; preds = %if.end15
  tail call void @free(ptr noundef nonnull %6) #16, !dbg !4491
  %7 = load ptr, ptr %anchor_ref_l1, align 8, !dbg !4491
  %arrayidx25 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv, !dbg !4491
  store ptr null, ptr %arrayidx25, align 8, !dbg !4491
  br label %for.inc, !dbg !4491

for.inc:                                          ; preds = %if.end15, %if.then19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4493
    #dbg_value(i64 %indvars.iv.next, !4454, !DIExpression(), !4459)
  %8 = load i32, ptr %num_views_minus1, align 4, !dbg !4475
  %9 = sext i32 %8 to i64, !dbg !4478
  %cmp6.not.not = icmp slt i64 %indvars.iv, %9, !dbg !4478
  br i1 %cmp6.not.not, label %for.body, label %for.end, !dbg !4479, !llvm.loop !4494

for.end:                                          ; preds = %for.inc, %if.end
  %anchor_ref_l027 = getelementptr inbounds i8, ptr %subset_sps, i64 4152, !dbg !4496
  %10 = load ptr, ptr %anchor_ref_l027, align 8, !dbg !4496
  %tobool28.not = icmp eq ptr %10, null, !dbg !4496
  br i1 %tobool28.not, label %if.end32, label %if.then29, !dbg !4499

if.then29:                                        ; preds = %for.end
  tail call void @free(ptr noundef nonnull %10) #16, !dbg !4500
  store ptr null, ptr %anchor_ref_l027, align 8, !dbg !4500
  br label %if.end32, !dbg !4500

if.end32:                                         ; preds = %if.then29, %for.end
  %anchor_ref_l133 = getelementptr inbounds i8, ptr %subset_sps, i64 4168, !dbg !4502
  %11 = load ptr, ptr %anchor_ref_l133, align 8, !dbg !4502
  %tobool34.not = icmp eq ptr %11, null, !dbg !4502
  br i1 %tobool34.not, label %if.end38, label %if.then35, !dbg !4505

if.then35:                                        ; preds = %if.end32
  tail call void @free(ptr noundef nonnull %11) #16, !dbg !4506
  store ptr null, ptr %anchor_ref_l133, align 8, !dbg !4506
  br label %if.end38, !dbg !4506

if.end38:                                         ; preds = %if.then35, %if.end32
  %num_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4144, !dbg !4508
  %12 = load ptr, ptr %num_anchor_refs_l0, align 8, !dbg !4508
  %tobool39.not = icmp eq ptr %12, null, !dbg !4508
  br i1 %tobool39.not, label %if.end43, label %if.then40, !dbg !4511

if.then40:                                        ; preds = %if.end38
  tail call void @free(ptr noundef nonnull %12) #16, !dbg !4512
  store ptr null, ptr %num_anchor_refs_l0, align 8, !dbg !4512
  br label %if.end43, !dbg !4512

if.end43:                                         ; preds = %if.then40, %if.end38
  %num_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4160, !dbg !4514
  %13 = load ptr, ptr %num_anchor_refs_l1, align 8, !dbg !4514
  %tobool44.not = icmp eq ptr %13, null, !dbg !4514
  br i1 %tobool44.not, label %if.end48, label %if.then45, !dbg !4517

if.then45:                                        ; preds = %if.end43
  tail call void @free(ptr noundef nonnull %13) #16, !dbg !4518
  store ptr null, ptr %num_anchor_refs_l1, align 8, !dbg !4518
  br label %if.end48, !dbg !4518

if.end48:                                         ; preds = %if.then45, %if.end43
    #dbg_value(i32 0, !4454, !DIExpression(), !4459)
  %14 = load i32, ptr %num_views_minus1, align 4, !dbg !4520
  %cmp51.not505 = icmp slt i32 %14, 0, !dbg !4523
  br i1 %cmp51.not505, label %for.end77, label %for.body52.lr.ph, !dbg !4524

for.body52.lr.ph:                                 ; preds = %if.end48
  %non_anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  br label %for.body52, !dbg !4524

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc75
  %indvars.iv515 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next516, %for.inc75 ]
    #dbg_value(i64 %indvars.iv515, !4454, !DIExpression(), !4459)
  %15 = load ptr, ptr %non_anchor_ref_l0, align 8, !dbg !4525
  %arrayidx54 = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv515, !dbg !4525
  %16 = load ptr, ptr %arrayidx54, align 8, !dbg !4525
  %tobool55.not = icmp eq ptr %16, null, !dbg !4525
  br i1 %tobool55.not, label %if.end63, label %if.then56, !dbg !4529

if.then56:                                        ; preds = %for.body52
  tail call void @free(ptr noundef nonnull %16) #16, !dbg !4530
  %17 = load ptr, ptr %non_anchor_ref_l0, align 8, !dbg !4530
  %arrayidx62 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv515, !dbg !4530
  store ptr null, ptr %arrayidx62, align 8, !dbg !4530
  br label %if.end63, !dbg !4530

if.end63:                                         ; preds = %if.then56, %for.body52
  %18 = load ptr, ptr %non_anchor_ref_l1, align 8, !dbg !4532
  %arrayidx65 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv515, !dbg !4532
  %19 = load ptr, ptr %arrayidx65, align 8, !dbg !4532
  %tobool66.not = icmp eq ptr %19, null, !dbg !4532
  br i1 %tobool66.not, label %for.inc75, label %if.then67, !dbg !4535

if.then67:                                        ; preds = %if.end63
  tail call void @free(ptr noundef nonnull %19) #16, !dbg !4536
  %20 = load ptr, ptr %non_anchor_ref_l1, align 8, !dbg !4536
  %arrayidx73 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv515, !dbg !4536
  store ptr null, ptr %arrayidx73, align 8, !dbg !4536
  br label %for.inc75, !dbg !4536

for.inc75:                                        ; preds = %if.end63, %if.then67
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1, !dbg !4538
    #dbg_value(i64 %indvars.iv.next516, !4454, !DIExpression(), !4459)
  %21 = load i32, ptr %num_views_minus1, align 4, !dbg !4520
  %22 = sext i32 %21 to i64, !dbg !4523
  %cmp51.not.not = icmp slt i64 %indvars.iv515, %22, !dbg !4523
  br i1 %cmp51.not.not, label %for.body52, label %for.end77, !dbg !4524, !llvm.loop !4539

for.end77:                                        ; preds = %for.inc75, %if.end48
  %non_anchor_ref_l078 = getelementptr inbounds i8, ptr %subset_sps, i64 4184, !dbg !4541
  %23 = load ptr, ptr %non_anchor_ref_l078, align 8, !dbg !4541
  %tobool79.not = icmp eq ptr %23, null, !dbg !4541
  br i1 %tobool79.not, label %if.end83, label %if.then80, !dbg !4544

if.then80:                                        ; preds = %for.end77
  tail call void @free(ptr noundef nonnull %23) #16, !dbg !4545
  store ptr null, ptr %non_anchor_ref_l078, align 8, !dbg !4545
  br label %if.end83, !dbg !4545

if.end83:                                         ; preds = %if.then80, %for.end77
  %non_anchor_ref_l184 = getelementptr inbounds i8, ptr %subset_sps, i64 4200, !dbg !4547
  %24 = load ptr, ptr %non_anchor_ref_l184, align 8, !dbg !4547
  %tobool85.not = icmp eq ptr %24, null, !dbg !4547
  br i1 %tobool85.not, label %if.end89, label %if.then86, !dbg !4550

if.then86:                                        ; preds = %if.end83
  tail call void @free(ptr noundef nonnull %24) #16, !dbg !4551
  store ptr null, ptr %non_anchor_ref_l184, align 8, !dbg !4551
  br label %if.end89, !dbg !4551

if.end89:                                         ; preds = %if.then86, %if.end83
  %num_non_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4176, !dbg !4553
  %25 = load ptr, ptr %num_non_anchor_refs_l0, align 8, !dbg !4553
  %tobool90.not = icmp eq ptr %25, null, !dbg !4553
  br i1 %tobool90.not, label %if.end94, label %if.then91, !dbg !4556

if.then91:                                        ; preds = %if.end89
  tail call void @free(ptr noundef nonnull %25) #16, !dbg !4557
  store ptr null, ptr %num_non_anchor_refs_l0, align 8, !dbg !4557
  br label %if.end94, !dbg !4557

if.end94:                                         ; preds = %if.then91, %if.end89
  %num_non_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4192, !dbg !4559
  %26 = load ptr, ptr %num_non_anchor_refs_l1, align 8, !dbg !4559
  %tobool95.not = icmp eq ptr %26, null, !dbg !4559
  br i1 %tobool95.not, label %if.end99, label %if.then96, !dbg !4562

if.then96:                                        ; preds = %if.end94
  tail call void @free(ptr noundef nonnull %26) #16, !dbg !4563
  store ptr null, ptr %num_non_anchor_refs_l1, align 8, !dbg !4563
  br label %if.end99, !dbg !4563

if.end99:                                         ; preds = %if.then96, %if.end94
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4208, !dbg !4565
  %27 = load i32, ptr %num_level_values_signalled_minus1, align 8, !dbg !4565
  %cmp100 = icmp sgt i32 %27, -1, !dbg !4567
  br i1 %cmp100, label %if.then101, label %if.end215, !dbg !4568

if.then101:                                       ; preds = %if.end99
  %level_idc = getelementptr inbounds i8, ptr %subset_sps, i64 4216, !dbg !4569
  %28 = load ptr, ptr %level_idc, align 8, !dbg !4569
  %tobool102.not = icmp eq ptr %28, null, !dbg !4569
  br i1 %tobool102.not, label %for.cond111.preheader.lr.ph, label %if.end106, !dbg !4573

if.end106:                                        ; preds = %if.then101
  tail call void @free(ptr noundef nonnull %28) #16, !dbg !4574
  store ptr null, ptr %level_idc, align 8, !dbg !4574
  %.pre527 = load i32, ptr %num_level_values_signalled_minus1, align 8, !dbg !4576
    #dbg_value(i32 0, !4454, !DIExpression(), !4459)
  %cmp109.not510 = icmp slt i32 %.pre527, 0, !dbg !4579
  br i1 %cmp109.not510, label %for.end183, label %for.cond111.preheader.lr.ph, !dbg !4580

for.cond111.preheader.lr.ph:                      ; preds = %if.then101, %if.end106
  %num_applicable_ops_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  %applicable_op_target_view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  %applicable_op_temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  %applicable_op_num_target_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  %applicable_op_num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  br label %for.cond111.preheader, !dbg !4580

for.cond111.preheader:                            ; preds = %for.cond111.preheader.lr.ph, %for.inc181
  %indvars.iv521 = phi i64 [ 0, %for.cond111.preheader.lr.ph ], [ %indvars.iv.next522, %for.inc181 ]
    #dbg_value(i64 %indvars.iv521, !4454, !DIExpression(), !4459)
    #dbg_value(i32 0, !4455, !DIExpression(), !4459)
  %29 = load ptr, ptr %num_applicable_ops_minus1, align 8, !dbg !4581
  %arrayidx113507 = getelementptr inbounds i32, ptr %29, i64 %indvars.iv521, !dbg !4585
  %30 = load i32, ptr %arrayidx113507, align 4, !dbg !4585
  %cmp114.not508 = icmp slt i32 %30, 0, !dbg !4586
  br i1 %cmp114.not508, label %for.end135, label %for.body115, !dbg !4587

for.body115:                                      ; preds = %for.cond111.preheader, %for.inc133
  %31 = phi ptr [ %37, %for.inc133 ], [ %29, %for.cond111.preheader ]
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %for.inc133 ], [ 0, %for.cond111.preheader ]
    #dbg_value(i64 %indvars.iv518, !4455, !DIExpression(), !4459)
  %32 = load ptr, ptr %applicable_op_target_view_id, align 8, !dbg !4588
  %arrayidx117 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv521, !dbg !4588
  %33 = load ptr, ptr %arrayidx117, align 8, !dbg !4588
  %arrayidx119 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv518, !dbg !4588
  %34 = load ptr, ptr %arrayidx119, align 8, !dbg !4588
  %tobool120.not = icmp eq ptr %34, null, !dbg !4588
  br i1 %tobool120.not, label %for.inc133, label %if.then121, !dbg !4592

if.then121:                                       ; preds = %for.body115
  tail call void @free(ptr noundef nonnull %34) #16, !dbg !4593
  %35 = load ptr, ptr %applicable_op_target_view_id, align 8, !dbg !4593
  %arrayidx129 = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv521, !dbg !4593
  %36 = load ptr, ptr %arrayidx129, align 8, !dbg !4593
  %arrayidx131 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv518, !dbg !4593
  store ptr null, ptr %arrayidx131, align 8, !dbg !4593
  %.pre528 = load ptr, ptr %num_applicable_ops_minus1, align 8, !dbg !4581
  br label %for.inc133, !dbg !4593

for.inc133:                                       ; preds = %for.body115, %if.then121
  %37 = phi ptr [ %31, %for.body115 ], [ %.pre528, %if.then121 ], !dbg !4581
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1, !dbg !4595
    #dbg_value(i64 %indvars.iv.next519, !4455, !DIExpression(), !4459)
  %arrayidx113 = getelementptr inbounds i32, ptr %37, i64 %indvars.iv521, !dbg !4585
  %38 = load i32, ptr %arrayidx113, align 4, !dbg !4585
  %39 = sext i32 %38 to i64, !dbg !4586
  %cmp114.not.not = icmp slt i64 %indvars.iv518, %39, !dbg !4586
  br i1 %cmp114.not.not, label %for.body115, label %for.end135, !dbg !4587, !llvm.loop !4596

for.end135:                                       ; preds = %for.inc133, %for.cond111.preheader
  %40 = load ptr, ptr %applicable_op_target_view_id, align 8, !dbg !4598
  %arrayidx138 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv521, !dbg !4598
  %41 = load ptr, ptr %arrayidx138, align 8, !dbg !4598
  %tobool139.not = icmp eq ptr %41, null, !dbg !4598
  br i1 %tobool139.not, label %if.end147, label %if.then140, !dbg !4601

if.then140:                                       ; preds = %for.end135
  tail call void @free(ptr noundef nonnull %41) #16, !dbg !4602
  %42 = load ptr, ptr %applicable_op_target_view_id, align 8, !dbg !4602
  %arrayidx146 = getelementptr inbounds ptr, ptr %42, i64 %indvars.iv521, !dbg !4602
  store ptr null, ptr %arrayidx146, align 8, !dbg !4602
  br label %if.end147, !dbg !4602

if.end147:                                        ; preds = %if.then140, %for.end135
  %43 = load ptr, ptr %applicable_op_temporal_id, align 8, !dbg !4604
  %arrayidx149 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv521, !dbg !4604
  %44 = load ptr, ptr %arrayidx149, align 8, !dbg !4604
  %tobool150.not = icmp eq ptr %44, null, !dbg !4604
  br i1 %tobool150.not, label %if.end158, label %if.then151, !dbg !4607

if.then151:                                       ; preds = %if.end147
  tail call void @free(ptr noundef nonnull %44) #16, !dbg !4608
  %45 = load ptr, ptr %applicable_op_temporal_id, align 8, !dbg !4608
  %arrayidx157 = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv521, !dbg !4608
  store ptr null, ptr %arrayidx157, align 8, !dbg !4608
  br label %if.end158, !dbg !4608

if.end158:                                        ; preds = %if.then151, %if.end147
  %46 = load ptr, ptr %applicable_op_num_target_views_minus1, align 8, !dbg !4610
  %arrayidx160 = getelementptr inbounds ptr, ptr %46, i64 %indvars.iv521, !dbg !4610
  %47 = load ptr, ptr %arrayidx160, align 8, !dbg !4610
  %tobool161.not = icmp eq ptr %47, null, !dbg !4610
  br i1 %tobool161.not, label %if.end169, label %if.then162, !dbg !4613

if.then162:                                       ; preds = %if.end158
  tail call void @free(ptr noundef nonnull %47) #16, !dbg !4614
  %48 = load ptr, ptr %applicable_op_num_target_views_minus1, align 8, !dbg !4614
  %arrayidx168 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv521, !dbg !4614
  store ptr null, ptr %arrayidx168, align 8, !dbg !4614
  br label %if.end169, !dbg !4614

if.end169:                                        ; preds = %if.then162, %if.end158
  %49 = load ptr, ptr %applicable_op_num_views_minus1, align 8, !dbg !4616
  %arrayidx171 = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv521, !dbg !4616
  %50 = load ptr, ptr %arrayidx171, align 8, !dbg !4616
  %tobool172.not = icmp eq ptr %50, null, !dbg !4616
  br i1 %tobool172.not, label %for.inc181, label %if.then173, !dbg !4619

if.then173:                                       ; preds = %if.end169
  tail call void @free(ptr noundef nonnull %50) #16, !dbg !4620
  %51 = load ptr, ptr %applicable_op_num_views_minus1, align 8, !dbg !4620
  %arrayidx179 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv521, !dbg !4620
  store ptr null, ptr %arrayidx179, align 8, !dbg !4620
  br label %for.inc181, !dbg !4620

for.inc181:                                       ; preds = %if.end169, %if.then173
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1, !dbg !4622
    #dbg_value(i64 %indvars.iv.next522, !4454, !DIExpression(), !4459)
  %52 = load i32, ptr %num_level_values_signalled_minus1, align 8, !dbg !4576
  %53 = sext i32 %52 to i64, !dbg !4579
  %cmp109.not.not = icmp slt i64 %indvars.iv521, %53, !dbg !4579
  br i1 %cmp109.not.not, label %for.cond111.preheader, label %for.end183, !dbg !4580, !llvm.loop !4623

for.end183:                                       ; preds = %for.inc181, %if.end106
  %applicable_op_target_view_id184 = getelementptr inbounds i8, ptr %subset_sps, i64 4248, !dbg !4625
  %54 = load ptr, ptr %applicable_op_target_view_id184, align 8, !dbg !4625
  %tobool185.not = icmp eq ptr %54, null, !dbg !4625
  br i1 %tobool185.not, label %if.end189, label %if.then186, !dbg !4628

if.then186:                                       ; preds = %for.end183
  tail call void @free(ptr noundef nonnull %54) #16, !dbg !4629
  store ptr null, ptr %applicable_op_target_view_id184, align 8, !dbg !4629
  br label %if.end189, !dbg !4629

if.end189:                                        ; preds = %if.then186, %for.end183
  %applicable_op_temporal_id190 = getelementptr inbounds i8, ptr %subset_sps, i64 4232, !dbg !4631
  %55 = load ptr, ptr %applicable_op_temporal_id190, align 8, !dbg !4631
  %tobool191.not = icmp eq ptr %55, null, !dbg !4631
  br i1 %tobool191.not, label %if.end195, label %if.then192, !dbg !4634

if.then192:                                       ; preds = %if.end189
  tail call void @free(ptr noundef nonnull %55) #16, !dbg !4635
  store ptr null, ptr %applicable_op_temporal_id190, align 8, !dbg !4635
  br label %if.end195, !dbg !4635

if.end195:                                        ; preds = %if.then192, %if.end189
  %applicable_op_num_target_views_minus1196 = getelementptr inbounds i8, ptr %subset_sps, i64 4240, !dbg !4637
  %56 = load ptr, ptr %applicable_op_num_target_views_minus1196, align 8, !dbg !4637
  %tobool197.not = icmp eq ptr %56, null, !dbg !4637
  br i1 %tobool197.not, label %if.end201, label %if.then198, !dbg !4640

if.then198:                                       ; preds = %if.end195
  tail call void @free(ptr noundef nonnull %56) #16, !dbg !4641
  store ptr null, ptr %applicable_op_num_target_views_minus1196, align 8, !dbg !4641
  br label %if.end201, !dbg !4641

if.end201:                                        ; preds = %if.then198, %if.end195
  %applicable_op_num_views_minus1202 = getelementptr inbounds i8, ptr %subset_sps, i64 4256, !dbg !4643
  %57 = load ptr, ptr %applicable_op_num_views_minus1202, align 8, !dbg !4643
  %tobool203.not = icmp eq ptr %57, null, !dbg !4643
  br i1 %tobool203.not, label %if.end207, label %if.then204, !dbg !4646

if.then204:                                       ; preds = %if.end201
  tail call void @free(ptr noundef nonnull %57) #16, !dbg !4647
  store ptr null, ptr %applicable_op_num_views_minus1202, align 8, !dbg !4647
  br label %if.end207, !dbg !4647

if.end207:                                        ; preds = %if.then204, %if.end201
  %num_applicable_ops_minus1208 = getelementptr inbounds i8, ptr %subset_sps, i64 4224, !dbg !4649
  %58 = load ptr, ptr %num_applicable_ops_minus1208, align 8, !dbg !4649
  %tobool209.not = icmp eq ptr %58, null, !dbg !4649
  br i1 %tobool209.not, label %if.end213, label %if.then210, !dbg !4652

if.then210:                                       ; preds = %if.end207
  tail call void @free(ptr noundef nonnull %58) #16, !dbg !4653
  store ptr null, ptr %num_applicable_ops_minus1208, align 8, !dbg !4653
  br label %if.end213, !dbg !4653

if.end213:                                        ; preds = %if.then210, %if.end207
  store i32 -1, ptr %num_level_values_signalled_minus1, align 8, !dbg !4655
  br label %if.end215, !dbg !4656

if.end215:                                        ; preds = %if.end213, %if.end99
  store i32 -1, ptr %num_views_minus1, align 4, !dbg !4657
  br label %land.lhs.true219, !dbg !4658

land.lhs.true219:                                 ; preds = %land.lhs.true, %if.end215
  %mvc_vui_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4264, !dbg !4659
  %59 = load i32, ptr %mvc_vui_parameters_present_flag, align 8, !dbg !4659
  %tobool220.not = icmp eq i32 %59, 0, !dbg !4660
  br i1 %tobool220.not, label %if.end302, label %if.then221, !dbg !4661

if.then221:                                       ; preds = %land.lhs.true219
  %MVCVUIParams = getelementptr inbounds i8, ptr %subset_sps, i64 4272, !dbg !4662
    #dbg_value(ptr %MVCVUIParams, !4456, !DIExpression(), !4663)
  %60 = load i32, ptr %MVCVUIParams, align 8, !dbg !4664
  %cmp222 = icmp sgt i32 %60, -1, !dbg !4666
  br i1 %cmp222, label %if.then223, label %if.end300, !dbg !4667

if.then223:                                       ; preds = %if.then221
  %temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4280, !dbg !4668
  %61 = load ptr, ptr %temporal_id, align 8, !dbg !4668
  %tobool224.not = icmp eq ptr %61, null, !dbg !4668
  br i1 %tobool224.not, label %if.end228, label %if.then225, !dbg !4672

if.then225:                                       ; preds = %if.then223
  tail call void @free(ptr noundef nonnull %61) #16, !dbg !4673
  store ptr null, ptr %temporal_id, align 8, !dbg !4673
  br label %if.end228, !dbg !4673

if.end228:                                        ; preds = %if.then225, %if.then223
  %num_target_output_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4288, !dbg !4675
  %62 = load ptr, ptr %num_target_output_views_minus1, align 8, !dbg !4675
  %tobool229.not = icmp eq ptr %62, null, !dbg !4675
  br i1 %tobool229.not, label %if.end233, label %if.then230, !dbg !4678

if.then230:                                       ; preds = %if.end228
  tail call void @free(ptr noundef nonnull %62) #16, !dbg !4679
  store ptr null, ptr %num_target_output_views_minus1, align 8, !dbg !4679
  br label %if.end233, !dbg !4679

if.end233:                                        ; preds = %if.then230, %if.end228
    #dbg_value(i32 0, !4454, !DIExpression(), !4459)
  %63 = load i32, ptr %MVCVUIParams, align 8, !dbg !4681
  %cmp236.not512 = icmp slt i32 %63, 0, !dbg !4684
  br i1 %cmp236.not512, label %for.end252, label %for.body237.lr.ph, !dbg !4685

for.body237.lr.ph:                                ; preds = %if.end233
  %view_id238 = getelementptr inbounds i8, ptr %subset_sps, i64 4296
  br label %for.body237, !dbg !4685

for.body237:                                      ; preds = %for.body237.lr.ph, %for.inc250
  %64 = phi i32 [ %63, %for.body237.lr.ph ], [ %68, %for.inc250 ]
  %indvars.iv524 = phi i64 [ 0, %for.body237.lr.ph ], [ %indvars.iv.next525, %for.inc250 ]
    #dbg_value(i64 %indvars.iv524, !4454, !DIExpression(), !4459)
  %65 = load ptr, ptr %view_id238, align 8, !dbg !4686
  %arrayidx240 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv524, !dbg !4686
  %66 = load ptr, ptr %arrayidx240, align 8, !dbg !4686
  %tobool241.not = icmp eq ptr %66, null, !dbg !4686
  br i1 %tobool241.not, label %for.inc250, label %if.then242, !dbg !4689

if.then242:                                       ; preds = %for.body237
  tail call void @free(ptr noundef nonnull %66) #16, !dbg !4690
  %67 = load ptr, ptr %view_id238, align 8, !dbg !4690
  %arrayidx248 = getelementptr inbounds ptr, ptr %67, i64 %indvars.iv524, !dbg !4690
  store ptr null, ptr %arrayidx248, align 8, !dbg !4690
  %.pre529 = load i32, ptr %MVCVUIParams, align 8, !dbg !4681
  br label %for.inc250, !dbg !4690

for.inc250:                                       ; preds = %for.body237, %if.then242
  %68 = phi i32 [ %64, %for.body237 ], [ %.pre529, %if.then242 ], !dbg !4681
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1, !dbg !4692
    #dbg_value(i64 %indvars.iv.next525, !4454, !DIExpression(), !4459)
  %69 = sext i32 %68 to i64, !dbg !4684
  %cmp236.not.not = icmp slt i64 %indvars.iv524, %69, !dbg !4684
  br i1 %cmp236.not.not, label %for.body237, label %for.end252, !dbg !4685, !llvm.loop !4693

for.end252:                                       ; preds = %for.inc250, %if.end233
  %view_id253 = getelementptr inbounds i8, ptr %subset_sps, i64 4296, !dbg !4695
  %70 = load ptr, ptr %view_id253, align 8, !dbg !4695
  %tobool254.not = icmp eq ptr %70, null, !dbg !4695
  br i1 %tobool254.not, label %if.end258, label %if.then255, !dbg !4698

if.then255:                                       ; preds = %for.end252
  tail call void @free(ptr noundef nonnull %70) #16, !dbg !4699
  store ptr null, ptr %view_id253, align 8, !dbg !4699
  br label %if.end258, !dbg !4699

if.end258:                                        ; preds = %if.then255, %for.end252
  %timing_info_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4304, !dbg !4701
  %71 = load ptr, ptr %timing_info_present_flag, align 8, !dbg !4701
  %tobool259.not = icmp eq ptr %71, null, !dbg !4701
  br i1 %tobool259.not, label %if.end263, label %if.then260, !dbg !4704

if.then260:                                       ; preds = %if.end258
  tail call void @free(ptr noundef nonnull %71) #16, !dbg !4705
  store ptr null, ptr %timing_info_present_flag, align 8, !dbg !4705
  br label %if.end263, !dbg !4705

if.end263:                                        ; preds = %if.then260, %if.end258
  %num_units_in_tick = getelementptr inbounds i8, ptr %subset_sps, i64 4312, !dbg !4707
  %72 = load ptr, ptr %num_units_in_tick, align 8, !dbg !4707
  %tobool264.not = icmp eq ptr %72, null, !dbg !4707
  br i1 %tobool264.not, label %if.end268, label %if.then265, !dbg !4710

if.then265:                                       ; preds = %if.end263
  tail call void @free(ptr noundef nonnull %72) #16, !dbg !4711
  store ptr null, ptr %num_units_in_tick, align 8, !dbg !4711
  br label %if.end268, !dbg !4711

if.end268:                                        ; preds = %if.then265, %if.end263
  %time_scale = getelementptr inbounds i8, ptr %subset_sps, i64 4320, !dbg !4713
  %73 = load ptr, ptr %time_scale, align 8, !dbg !4713
  %tobool269.not = icmp eq ptr %73, null, !dbg !4713
  br i1 %tobool269.not, label %if.end273, label %if.then270, !dbg !4716

if.then270:                                       ; preds = %if.end268
  tail call void @free(ptr noundef nonnull %73) #16, !dbg !4717
  store ptr null, ptr %time_scale, align 8, !dbg !4717
  br label %if.end273, !dbg !4717

if.end273:                                        ; preds = %if.then270, %if.end268
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4328, !dbg !4719
  %74 = load ptr, ptr %fixed_frame_rate_flag, align 8, !dbg !4719
  %tobool274.not = icmp eq ptr %74, null, !dbg !4719
  br i1 %tobool274.not, label %if.end278, label %if.then275, !dbg !4722

if.then275:                                       ; preds = %if.end273
  tail call void @free(ptr noundef nonnull %74) #16, !dbg !4723
  store ptr null, ptr %fixed_frame_rate_flag, align 8, !dbg !4723
  br label %if.end278, !dbg !4723

if.end278:                                        ; preds = %if.then275, %if.end273
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4336, !dbg !4725
  %75 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4725
  %tobool279.not = icmp eq ptr %75, null, !dbg !4725
  br i1 %tobool279.not, label %if.end283, label %if.then280, !dbg !4728

if.then280:                                       ; preds = %if.end278
  tail call void @free(ptr noundef nonnull %75) #16, !dbg !4729
  store ptr null, ptr %nal_hrd_parameters_present_flag, align 8, !dbg !4729
  br label %if.end283, !dbg !4729

if.end283:                                        ; preds = %if.then280, %if.end278
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4344, !dbg !4731
  %76 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4731
  %tobool284.not = icmp eq ptr %76, null, !dbg !4731
  br i1 %tobool284.not, label %if.end288, label %if.then285, !dbg !4734

if.then285:                                       ; preds = %if.end283
  tail call void @free(ptr noundef nonnull %76) #16, !dbg !4735
  store ptr null, ptr %vcl_hrd_parameters_present_flag, align 8, !dbg !4735
  br label %if.end288, !dbg !4735

if.end288:                                        ; preds = %if.then285, %if.end283
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4352, !dbg !4737
  %77 = load ptr, ptr %low_delay_hrd_flag, align 8, !dbg !4737
  %tobool289.not = icmp eq ptr %77, null, !dbg !4737
  br i1 %tobool289.not, label %if.end293, label %if.then290, !dbg !4740

if.then290:                                       ; preds = %if.end288
  tail call void @free(ptr noundef nonnull %77) #16, !dbg !4741
  store ptr null, ptr %low_delay_hrd_flag, align 8, !dbg !4741
  br label %if.end293, !dbg !4741

if.end293:                                        ; preds = %if.then290, %if.end288
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4360, !dbg !4743
  %78 = load ptr, ptr %pic_struct_present_flag, align 8, !dbg !4743
  %tobool294.not = icmp eq ptr %78, null, !dbg !4743
  br i1 %tobool294.not, label %if.end298, label %if.then295, !dbg !4746

if.then295:                                       ; preds = %if.end293
  tail call void @free(ptr noundef nonnull %78) #16, !dbg !4747
  store ptr null, ptr %pic_struct_present_flag, align 8, !dbg !4747
  br label %if.end298, !dbg !4747

if.end298:                                        ; preds = %if.then295, %if.end293
  store i32 -1, ptr %MVCVUIParams, align 8, !dbg !4749
  br label %if.end300, !dbg !4750

if.end300:                                        ; preds = %if.end298, %if.then221
  store i32 0, ptr %mvc_vui_parameters_present_flag, align 8, !dbg !4751
  br label %if.end302, !dbg !4752

if.end302:                                        ; preds = %entry, %if.end300, %land.lhs.true219
  ret void, !dbg !4753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetBaseViewId(ptr noundef %p_Vid, ptr nocapture noundef writeonly %subset_sps) local_unnamed_addr #10 !dbg !4754 {
entry:
    #dbg_value(ptr %p_Vid, !4759, !DIExpression(), !4764)
    #dbg_value(ptr %subset_sps, !4760, !DIExpression(), !4764)
    #dbg_value(i32 0, !4763, !DIExpression(), !4764)
  store ptr null, ptr %subset_sps, align 8, !dbg !4765
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 699424, DW_OP_stack_value), !4764)
    #dbg_value(i32 0, !4762, !DIExpression(), !4764)
    #dbg_value(i32 0, !4762, !DIExpression(), !4764)
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 699424, DW_OP_stack_value), !4764)
  %num_views_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 703556, !dbg !4766
  %0 = load i32, ptr %num_views_minus1, align 4, !dbg !4766
  %cmp1 = icmp sgt i32 %0, -1, !dbg !4771
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !4772

land.lhs.true:                                    ; preds = %entry
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 699424, !dbg !4773
    #dbg_value(ptr %SubsetSeqParSet, !4761, !DIExpression(), !4764)
  %1 = load i32, ptr %SubsetSeqParSet, align 8, !dbg !4774
  %tobool.not = icmp eq i32 %1, 0, !dbg !4775
  br i1 %tobool.not, label %if.end, label %if.then3, !dbg !4776

if.end:                                           ; preds = %land.lhs.true, %entry
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 704088, DW_OP_stack_value), !4764)
    #dbg_value(i32 1, !4762, !DIExpression(), !4764)
  %num_views_minus1.1 = getelementptr inbounds i8, ptr %p_Vid, i64 708220, !dbg !4766
  %2 = load i32, ptr %num_views_minus1.1, align 4, !dbg !4766
  %cmp1.1 = icmp sgt i32 %2, -1, !dbg !4771
  br i1 %cmp1.1, label %land.lhs.true.1, label %if.end.1, !dbg !4772

land.lhs.true.1:                                  ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, ptr %p_Vid, i64 704088, !dbg !4777
    #dbg_value(ptr %incdec.ptr, !4761, !DIExpression(), !4764)
  %3 = load i32, ptr %incdec.ptr, align 8, !dbg !4774
  %tobool.not.1 = icmp eq i32 %3, 0, !dbg !4775
  br i1 %tobool.not.1, label %if.end.1, label %if.then3, !dbg !4776

if.end.1:                                         ; preds = %land.lhs.true.1, %if.end
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 708752, DW_OP_stack_value), !4764)
    #dbg_value(i32 2, !4762, !DIExpression(), !4764)
  %num_views_minus1.2 = getelementptr inbounds i8, ptr %p_Vid, i64 712884, !dbg !4766
  %4 = load i32, ptr %num_views_minus1.2, align 4, !dbg !4766
  %cmp1.2 = icmp sgt i32 %4, -1, !dbg !4771
  br i1 %cmp1.2, label %land.lhs.true.2, label %if.end.2, !dbg !4772

land.lhs.true.2:                                  ; preds = %if.end.1
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %p_Vid, i64 708752, !dbg !4777
    #dbg_value(ptr %incdec.ptr.1, !4761, !DIExpression(), !4764)
  %5 = load i32, ptr %incdec.ptr.1, align 8, !dbg !4774
  %tobool.not.2 = icmp eq i32 %5, 0, !dbg !4775
  br i1 %tobool.not.2, label %if.end.2, label %if.then3, !dbg !4776

if.end.2:                                         ; preds = %land.lhs.true.2, %if.end.1
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 713416, DW_OP_stack_value), !4764)
    #dbg_value(i32 3, !4762, !DIExpression(), !4764)
  %num_views_minus1.3 = getelementptr inbounds i8, ptr %p_Vid, i64 717548, !dbg !4766
  %6 = load i32, ptr %num_views_minus1.3, align 4, !dbg !4766
  %cmp1.3 = icmp sgt i32 %6, -1, !dbg !4771
  br i1 %cmp1.3, label %land.lhs.true.3, label %if.end.3, !dbg !4772

land.lhs.true.3:                                  ; preds = %if.end.2
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %p_Vid, i64 713416, !dbg !4777
    #dbg_value(ptr %incdec.ptr.2, !4761, !DIExpression(), !4764)
  %7 = load i32, ptr %incdec.ptr.2, align 8, !dbg !4774
  %tobool.not.3 = icmp eq i32 %7, 0, !dbg !4775
  br i1 %tobool.not.3, label %if.end.3, label %if.then3, !dbg !4776

if.end.3:                                         ; preds = %land.lhs.true.3, %if.end.2
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 718080, DW_OP_stack_value), !4764)
    #dbg_value(i32 4, !4762, !DIExpression(), !4764)
  %num_views_minus1.4 = getelementptr inbounds i8, ptr %p_Vid, i64 722212, !dbg !4766
  %8 = load i32, ptr %num_views_minus1.4, align 4, !dbg !4766
  %cmp1.4 = icmp sgt i32 %8, -1, !dbg !4771
  br i1 %cmp1.4, label %land.lhs.true.4, label %if.end.4, !dbg !4772

land.lhs.true.4:                                  ; preds = %if.end.3
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %p_Vid, i64 718080, !dbg !4777
    #dbg_value(ptr %incdec.ptr.3, !4761, !DIExpression(), !4764)
  %9 = load i32, ptr %incdec.ptr.3, align 8, !dbg !4774
  %tobool.not.4 = icmp eq i32 %9, 0, !dbg !4775
  br i1 %tobool.not.4, label %if.end.4, label %if.then3, !dbg !4776

if.end.4:                                         ; preds = %land.lhs.true.4, %if.end.3
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 722744, DW_OP_stack_value), !4764)
    #dbg_value(i32 5, !4762, !DIExpression(), !4764)
  %num_views_minus1.5 = getelementptr inbounds i8, ptr %p_Vid, i64 726876, !dbg !4766
  %10 = load i32, ptr %num_views_minus1.5, align 4, !dbg !4766
  %cmp1.5 = icmp sgt i32 %10, -1, !dbg !4771
  br i1 %cmp1.5, label %land.lhs.true.5, label %if.end.5, !dbg !4772

land.lhs.true.5:                                  ; preds = %if.end.4
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %p_Vid, i64 722744, !dbg !4777
    #dbg_value(ptr %incdec.ptr.4, !4761, !DIExpression(), !4764)
  %11 = load i32, ptr %incdec.ptr.4, align 8, !dbg !4774
  %tobool.not.5 = icmp eq i32 %11, 0, !dbg !4775
  br i1 %tobool.not.5, label %if.end.5, label %if.then3, !dbg !4776

if.end.5:                                         ; preds = %land.lhs.true.5, %if.end.4
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 727408, DW_OP_stack_value), !4764)
    #dbg_value(i32 6, !4762, !DIExpression(), !4764)
  %num_views_minus1.6 = getelementptr inbounds i8, ptr %p_Vid, i64 731540, !dbg !4766
  %12 = load i32, ptr %num_views_minus1.6, align 4, !dbg !4766
  %cmp1.6 = icmp sgt i32 %12, -1, !dbg !4771
  br i1 %cmp1.6, label %land.lhs.true.6, label %if.end.6, !dbg !4772

land.lhs.true.6:                                  ; preds = %if.end.5
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %p_Vid, i64 727408, !dbg !4777
    #dbg_value(ptr %incdec.ptr.5, !4761, !DIExpression(), !4764)
  %13 = load i32, ptr %incdec.ptr.5, align 8, !dbg !4774
  %tobool.not.6 = icmp eq i32 %13, 0, !dbg !4775
  br i1 %tobool.not.6, label %if.end.6, label %if.then3, !dbg !4776

if.end.6:                                         ; preds = %land.lhs.true.6, %if.end.5
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 732072, DW_OP_stack_value), !4764)
    #dbg_value(i32 7, !4762, !DIExpression(), !4764)
  %num_views_minus1.7 = getelementptr inbounds i8, ptr %p_Vid, i64 736204, !dbg !4766
  %14 = load i32, ptr %num_views_minus1.7, align 4, !dbg !4766
  %cmp1.7 = icmp sgt i32 %14, -1, !dbg !4771
  br i1 %cmp1.7, label %land.lhs.true.7, label %if.end.7, !dbg !4772

land.lhs.true.7:                                  ; preds = %if.end.6
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %p_Vid, i64 732072, !dbg !4777
    #dbg_value(ptr %incdec.ptr.6, !4761, !DIExpression(), !4764)
  %15 = load i32, ptr %incdec.ptr.6, align 8, !dbg !4774
  %tobool.not.7 = icmp eq i32 %15, 0, !dbg !4775
  br i1 %tobool.not.7, label %if.end.7, label %if.then3, !dbg !4776

if.end.7:                                         ; preds = %land.lhs.true.7, %if.end.6
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 736736, DW_OP_stack_value), !4764)
    #dbg_value(i32 8, !4762, !DIExpression(), !4764)
  %num_views_minus1.8 = getelementptr inbounds i8, ptr %p_Vid, i64 740868, !dbg !4766
  %16 = load i32, ptr %num_views_minus1.8, align 4, !dbg !4766
  %cmp1.8 = icmp sgt i32 %16, -1, !dbg !4771
  br i1 %cmp1.8, label %land.lhs.true.8, label %if.end.8, !dbg !4772

land.lhs.true.8:                                  ; preds = %if.end.7
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %p_Vid, i64 736736, !dbg !4777
    #dbg_value(ptr %incdec.ptr.7, !4761, !DIExpression(), !4764)
  %17 = load i32, ptr %incdec.ptr.7, align 8, !dbg !4774
  %tobool.not.8 = icmp eq i32 %17, 0, !dbg !4775
  br i1 %tobool.not.8, label %if.end.8, label %if.then3, !dbg !4776

if.end.8:                                         ; preds = %land.lhs.true.8, %if.end.7
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 741400, DW_OP_stack_value), !4764)
    #dbg_value(i32 9, !4762, !DIExpression(), !4764)
  %num_views_minus1.9 = getelementptr inbounds i8, ptr %p_Vid, i64 745532, !dbg !4766
  %18 = load i32, ptr %num_views_minus1.9, align 4, !dbg !4766
  %cmp1.9 = icmp sgt i32 %18, -1, !dbg !4771
  br i1 %cmp1.9, label %land.lhs.true.9, label %if.end.9, !dbg !4772

land.lhs.true.9:                                  ; preds = %if.end.8
  %incdec.ptr.8 = getelementptr inbounds i8, ptr %p_Vid, i64 741400, !dbg !4777
    #dbg_value(ptr %incdec.ptr.8, !4761, !DIExpression(), !4764)
  %19 = load i32, ptr %incdec.ptr.8, align 8, !dbg !4774
  %tobool.not.9 = icmp eq i32 %19, 0, !dbg !4775
  br i1 %tobool.not.9, label %if.end.9, label %if.then3, !dbg !4776

if.end.9:                                         ; preds = %land.lhs.true.9, %if.end.8
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 746064, DW_OP_stack_value), !4764)
    #dbg_value(i32 10, !4762, !DIExpression(), !4764)
  %num_views_minus1.10 = getelementptr inbounds i8, ptr %p_Vid, i64 750196, !dbg !4766
  %20 = load i32, ptr %num_views_minus1.10, align 4, !dbg !4766
  %cmp1.10 = icmp sgt i32 %20, -1, !dbg !4771
  br i1 %cmp1.10, label %land.lhs.true.10, label %if.end.10, !dbg !4772

land.lhs.true.10:                                 ; preds = %if.end.9
  %incdec.ptr.9 = getelementptr inbounds i8, ptr %p_Vid, i64 746064, !dbg !4777
    #dbg_value(ptr %incdec.ptr.9, !4761, !DIExpression(), !4764)
  %21 = load i32, ptr %incdec.ptr.9, align 8, !dbg !4774
  %tobool.not.10 = icmp eq i32 %21, 0, !dbg !4775
  br i1 %tobool.not.10, label %if.end.10, label %if.then3, !dbg !4776

if.end.10:                                        ; preds = %land.lhs.true.10, %if.end.9
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 750728, DW_OP_stack_value), !4764)
    #dbg_value(i32 11, !4762, !DIExpression(), !4764)
  %num_views_minus1.11 = getelementptr inbounds i8, ptr %p_Vid, i64 754860, !dbg !4766
  %22 = load i32, ptr %num_views_minus1.11, align 4, !dbg !4766
  %cmp1.11 = icmp sgt i32 %22, -1, !dbg !4771
  br i1 %cmp1.11, label %land.lhs.true.11, label %if.end.11, !dbg !4772

land.lhs.true.11:                                 ; preds = %if.end.10
  %incdec.ptr.10 = getelementptr inbounds i8, ptr %p_Vid, i64 750728, !dbg !4777
    #dbg_value(ptr %incdec.ptr.10, !4761, !DIExpression(), !4764)
  %23 = load i32, ptr %incdec.ptr.10, align 8, !dbg !4774
  %tobool.not.11 = icmp eq i32 %23, 0, !dbg !4775
  br i1 %tobool.not.11, label %if.end.11, label %if.then3, !dbg !4776

if.end.11:                                        ; preds = %land.lhs.true.11, %if.end.10
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 755392, DW_OP_stack_value), !4764)
    #dbg_value(i32 12, !4762, !DIExpression(), !4764)
  %num_views_minus1.12 = getelementptr inbounds i8, ptr %p_Vid, i64 759524, !dbg !4766
  %24 = load i32, ptr %num_views_minus1.12, align 4, !dbg !4766
  %cmp1.12 = icmp sgt i32 %24, -1, !dbg !4771
  br i1 %cmp1.12, label %land.lhs.true.12, label %if.end.12, !dbg !4772

land.lhs.true.12:                                 ; preds = %if.end.11
  %incdec.ptr.11 = getelementptr inbounds i8, ptr %p_Vid, i64 755392, !dbg !4777
    #dbg_value(ptr %incdec.ptr.11, !4761, !DIExpression(), !4764)
  %25 = load i32, ptr %incdec.ptr.11, align 8, !dbg !4774
  %tobool.not.12 = icmp eq i32 %25, 0, !dbg !4775
  br i1 %tobool.not.12, label %if.end.12, label %if.then3, !dbg !4776

if.end.12:                                        ; preds = %land.lhs.true.12, %if.end.11
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 760056, DW_OP_stack_value), !4764)
    #dbg_value(i32 13, !4762, !DIExpression(), !4764)
  %num_views_minus1.13 = getelementptr inbounds i8, ptr %p_Vid, i64 764188, !dbg !4766
  %26 = load i32, ptr %num_views_minus1.13, align 4, !dbg !4766
  %cmp1.13 = icmp sgt i32 %26, -1, !dbg !4771
  br i1 %cmp1.13, label %land.lhs.true.13, label %if.end.13, !dbg !4772

land.lhs.true.13:                                 ; preds = %if.end.12
  %incdec.ptr.12 = getelementptr inbounds i8, ptr %p_Vid, i64 760056, !dbg !4777
    #dbg_value(ptr %incdec.ptr.12, !4761, !DIExpression(), !4764)
  %27 = load i32, ptr %incdec.ptr.12, align 8, !dbg !4774
  %tobool.not.13 = icmp eq i32 %27, 0, !dbg !4775
  br i1 %tobool.not.13, label %if.end.13, label %if.then3, !dbg !4776

if.end.13:                                        ; preds = %land.lhs.true.13, %if.end.12
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 764720, DW_OP_stack_value), !4764)
    #dbg_value(i32 14, !4762, !DIExpression(), !4764)
  %num_views_minus1.14 = getelementptr inbounds i8, ptr %p_Vid, i64 768852, !dbg !4766
  %28 = load i32, ptr %num_views_minus1.14, align 4, !dbg !4766
  %cmp1.14 = icmp sgt i32 %28, -1, !dbg !4771
  br i1 %cmp1.14, label %land.lhs.true.14, label %if.end.14, !dbg !4772

land.lhs.true.14:                                 ; preds = %if.end.13
  %incdec.ptr.13 = getelementptr inbounds i8, ptr %p_Vid, i64 764720, !dbg !4777
    #dbg_value(ptr %incdec.ptr.13, !4761, !DIExpression(), !4764)
  %29 = load i32, ptr %incdec.ptr.13, align 8, !dbg !4774
  %tobool.not.14 = icmp eq i32 %29, 0, !dbg !4775
  br i1 %tobool.not.14, label %if.end.14, label %if.then3, !dbg !4776

if.end.14:                                        ; preds = %land.lhs.true.14, %if.end.13
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 769384, DW_OP_stack_value), !4764)
    #dbg_value(i32 15, !4762, !DIExpression(), !4764)
  %num_views_minus1.15 = getelementptr inbounds i8, ptr %p_Vid, i64 773516, !dbg !4766
  %30 = load i32, ptr %num_views_minus1.15, align 4, !dbg !4766
  %cmp1.15 = icmp sgt i32 %30, -1, !dbg !4771
  br i1 %cmp1.15, label %land.lhs.true.15, label %if.end.15, !dbg !4772

land.lhs.true.15:                                 ; preds = %if.end.14
  %incdec.ptr.14 = getelementptr inbounds i8, ptr %p_Vid, i64 769384, !dbg !4777
    #dbg_value(ptr %incdec.ptr.14, !4761, !DIExpression(), !4764)
  %31 = load i32, ptr %incdec.ptr.14, align 8, !dbg !4774
  %tobool.not.15 = icmp eq i32 %31, 0, !dbg !4775
  br i1 %tobool.not.15, label %if.end.15, label %if.then3, !dbg !4776

if.end.15:                                        ; preds = %land.lhs.true.15, %if.end.14
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 774048, DW_OP_stack_value), !4764)
    #dbg_value(i32 16, !4762, !DIExpression(), !4764)
  %num_views_minus1.16 = getelementptr inbounds i8, ptr %p_Vid, i64 778180, !dbg !4766
  %32 = load i32, ptr %num_views_minus1.16, align 4, !dbg !4766
  %cmp1.16 = icmp sgt i32 %32, -1, !dbg !4771
  br i1 %cmp1.16, label %land.lhs.true.16, label %if.end.16, !dbg !4772

land.lhs.true.16:                                 ; preds = %if.end.15
  %incdec.ptr.15 = getelementptr inbounds i8, ptr %p_Vid, i64 774048, !dbg !4777
    #dbg_value(ptr %incdec.ptr.15, !4761, !DIExpression(), !4764)
  %33 = load i32, ptr %incdec.ptr.15, align 8, !dbg !4774
  %tobool.not.16 = icmp eq i32 %33, 0, !dbg !4775
  br i1 %tobool.not.16, label %if.end.16, label %if.then3, !dbg !4776

if.end.16:                                        ; preds = %land.lhs.true.16, %if.end.15
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 778712, DW_OP_stack_value), !4764)
    #dbg_value(i32 17, !4762, !DIExpression(), !4764)
  %num_views_minus1.17 = getelementptr inbounds i8, ptr %p_Vid, i64 782844, !dbg !4766
  %34 = load i32, ptr %num_views_minus1.17, align 4, !dbg !4766
  %cmp1.17 = icmp sgt i32 %34, -1, !dbg !4771
  br i1 %cmp1.17, label %land.lhs.true.17, label %if.end.17, !dbg !4772

land.lhs.true.17:                                 ; preds = %if.end.16
  %incdec.ptr.16 = getelementptr inbounds i8, ptr %p_Vid, i64 778712, !dbg !4777
    #dbg_value(ptr %incdec.ptr.16, !4761, !DIExpression(), !4764)
  %35 = load i32, ptr %incdec.ptr.16, align 8, !dbg !4774
  %tobool.not.17 = icmp eq i32 %35, 0, !dbg !4775
  br i1 %tobool.not.17, label %if.end.17, label %if.then3, !dbg !4776

if.end.17:                                        ; preds = %land.lhs.true.17, %if.end.16
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 783376, DW_OP_stack_value), !4764)
    #dbg_value(i32 18, !4762, !DIExpression(), !4764)
  %num_views_minus1.18 = getelementptr inbounds i8, ptr %p_Vid, i64 787508, !dbg !4766
  %36 = load i32, ptr %num_views_minus1.18, align 4, !dbg !4766
  %cmp1.18 = icmp sgt i32 %36, -1, !dbg !4771
  br i1 %cmp1.18, label %land.lhs.true.18, label %if.end.18, !dbg !4772

land.lhs.true.18:                                 ; preds = %if.end.17
  %incdec.ptr.17 = getelementptr inbounds i8, ptr %p_Vid, i64 783376, !dbg !4777
    #dbg_value(ptr %incdec.ptr.17, !4761, !DIExpression(), !4764)
  %37 = load i32, ptr %incdec.ptr.17, align 8, !dbg !4774
  %tobool.not.18 = icmp eq i32 %37, 0, !dbg !4775
  br i1 %tobool.not.18, label %if.end.18, label %if.then3, !dbg !4776

if.end.18:                                        ; preds = %land.lhs.true.18, %if.end.17
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 788040, DW_OP_stack_value), !4764)
    #dbg_value(i32 19, !4762, !DIExpression(), !4764)
  %num_views_minus1.19 = getelementptr inbounds i8, ptr %p_Vid, i64 792172, !dbg !4766
  %38 = load i32, ptr %num_views_minus1.19, align 4, !dbg !4766
  %cmp1.19 = icmp sgt i32 %38, -1, !dbg !4771
  br i1 %cmp1.19, label %land.lhs.true.19, label %if.end.19, !dbg !4772

land.lhs.true.19:                                 ; preds = %if.end.18
  %incdec.ptr.18 = getelementptr inbounds i8, ptr %p_Vid, i64 788040, !dbg !4777
    #dbg_value(ptr %incdec.ptr.18, !4761, !DIExpression(), !4764)
  %39 = load i32, ptr %incdec.ptr.18, align 8, !dbg !4774
  %tobool.not.19 = icmp eq i32 %39, 0, !dbg !4775
  br i1 %tobool.not.19, label %if.end.19, label %if.then3, !dbg !4776

if.end.19:                                        ; preds = %land.lhs.true.19, %if.end.18
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 792704, DW_OP_stack_value), !4764)
    #dbg_value(i32 20, !4762, !DIExpression(), !4764)
  %num_views_minus1.20 = getelementptr inbounds i8, ptr %p_Vid, i64 796836, !dbg !4766
  %40 = load i32, ptr %num_views_minus1.20, align 4, !dbg !4766
  %cmp1.20 = icmp sgt i32 %40, -1, !dbg !4771
  br i1 %cmp1.20, label %land.lhs.true.20, label %if.end.20, !dbg !4772

land.lhs.true.20:                                 ; preds = %if.end.19
  %incdec.ptr.19 = getelementptr inbounds i8, ptr %p_Vid, i64 792704, !dbg !4777
    #dbg_value(ptr %incdec.ptr.19, !4761, !DIExpression(), !4764)
  %41 = load i32, ptr %incdec.ptr.19, align 8, !dbg !4774
  %tobool.not.20 = icmp eq i32 %41, 0, !dbg !4775
  br i1 %tobool.not.20, label %if.end.20, label %if.then3, !dbg !4776

if.end.20:                                        ; preds = %land.lhs.true.20, %if.end.19
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 797368, DW_OP_stack_value), !4764)
    #dbg_value(i32 21, !4762, !DIExpression(), !4764)
  %num_views_minus1.21 = getelementptr inbounds i8, ptr %p_Vid, i64 801500, !dbg !4766
  %42 = load i32, ptr %num_views_minus1.21, align 4, !dbg !4766
  %cmp1.21 = icmp sgt i32 %42, -1, !dbg !4771
  br i1 %cmp1.21, label %land.lhs.true.21, label %if.end.21, !dbg !4772

land.lhs.true.21:                                 ; preds = %if.end.20
  %incdec.ptr.20 = getelementptr inbounds i8, ptr %p_Vid, i64 797368, !dbg !4777
    #dbg_value(ptr %incdec.ptr.20, !4761, !DIExpression(), !4764)
  %43 = load i32, ptr %incdec.ptr.20, align 8, !dbg !4774
  %tobool.not.21 = icmp eq i32 %43, 0, !dbg !4775
  br i1 %tobool.not.21, label %if.end.21, label %if.then3, !dbg !4776

if.end.21:                                        ; preds = %land.lhs.true.21, %if.end.20
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 802032, DW_OP_stack_value), !4764)
    #dbg_value(i32 22, !4762, !DIExpression(), !4764)
  %num_views_minus1.22 = getelementptr inbounds i8, ptr %p_Vid, i64 806164, !dbg !4766
  %44 = load i32, ptr %num_views_minus1.22, align 4, !dbg !4766
  %cmp1.22 = icmp sgt i32 %44, -1, !dbg !4771
  br i1 %cmp1.22, label %land.lhs.true.22, label %if.end.22, !dbg !4772

land.lhs.true.22:                                 ; preds = %if.end.21
  %incdec.ptr.21 = getelementptr inbounds i8, ptr %p_Vid, i64 802032, !dbg !4777
    #dbg_value(ptr %incdec.ptr.21, !4761, !DIExpression(), !4764)
  %45 = load i32, ptr %incdec.ptr.21, align 8, !dbg !4774
  %tobool.not.22 = icmp eq i32 %45, 0, !dbg !4775
  br i1 %tobool.not.22, label %if.end.22, label %if.then3, !dbg !4776

if.end.22:                                        ; preds = %land.lhs.true.22, %if.end.21
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 806696, DW_OP_stack_value), !4764)
    #dbg_value(i32 23, !4762, !DIExpression(), !4764)
  %num_views_minus1.23 = getelementptr inbounds i8, ptr %p_Vid, i64 810828, !dbg !4766
  %46 = load i32, ptr %num_views_minus1.23, align 4, !dbg !4766
  %cmp1.23 = icmp sgt i32 %46, -1, !dbg !4771
  br i1 %cmp1.23, label %land.lhs.true.23, label %if.end.23, !dbg !4772

land.lhs.true.23:                                 ; preds = %if.end.22
  %incdec.ptr.22 = getelementptr inbounds i8, ptr %p_Vid, i64 806696, !dbg !4777
    #dbg_value(ptr %incdec.ptr.22, !4761, !DIExpression(), !4764)
  %47 = load i32, ptr %incdec.ptr.22, align 8, !dbg !4774
  %tobool.not.23 = icmp eq i32 %47, 0, !dbg !4775
  br i1 %tobool.not.23, label %if.end.23, label %if.then3, !dbg !4776

if.end.23:                                        ; preds = %land.lhs.true.23, %if.end.22
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 811360, DW_OP_stack_value), !4764)
    #dbg_value(i32 24, !4762, !DIExpression(), !4764)
  %num_views_minus1.24 = getelementptr inbounds i8, ptr %p_Vid, i64 815492, !dbg !4766
  %48 = load i32, ptr %num_views_minus1.24, align 4, !dbg !4766
  %cmp1.24 = icmp sgt i32 %48, -1, !dbg !4771
  br i1 %cmp1.24, label %land.lhs.true.24, label %if.end.24, !dbg !4772

land.lhs.true.24:                                 ; preds = %if.end.23
  %incdec.ptr.23 = getelementptr inbounds i8, ptr %p_Vid, i64 811360, !dbg !4777
    #dbg_value(ptr %incdec.ptr.23, !4761, !DIExpression(), !4764)
  %49 = load i32, ptr %incdec.ptr.23, align 8, !dbg !4774
  %tobool.not.24 = icmp eq i32 %49, 0, !dbg !4775
  br i1 %tobool.not.24, label %if.end.24, label %if.then3, !dbg !4776

if.end.24:                                        ; preds = %land.lhs.true.24, %if.end.23
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 816024, DW_OP_stack_value), !4764)
    #dbg_value(i32 25, !4762, !DIExpression(), !4764)
  %num_views_minus1.25 = getelementptr inbounds i8, ptr %p_Vid, i64 820156, !dbg !4766
  %50 = load i32, ptr %num_views_minus1.25, align 4, !dbg !4766
  %cmp1.25 = icmp sgt i32 %50, -1, !dbg !4771
  br i1 %cmp1.25, label %land.lhs.true.25, label %if.end.25, !dbg !4772

land.lhs.true.25:                                 ; preds = %if.end.24
  %incdec.ptr.24 = getelementptr inbounds i8, ptr %p_Vid, i64 816024, !dbg !4777
    #dbg_value(ptr %incdec.ptr.24, !4761, !DIExpression(), !4764)
  %51 = load i32, ptr %incdec.ptr.24, align 8, !dbg !4774
  %tobool.not.25 = icmp eq i32 %51, 0, !dbg !4775
  br i1 %tobool.not.25, label %if.end.25, label %if.then3, !dbg !4776

if.end.25:                                        ; preds = %land.lhs.true.25, %if.end.24
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 820688, DW_OP_stack_value), !4764)
    #dbg_value(i32 26, !4762, !DIExpression(), !4764)
  %num_views_minus1.26 = getelementptr inbounds i8, ptr %p_Vid, i64 824820, !dbg !4766
  %52 = load i32, ptr %num_views_minus1.26, align 4, !dbg !4766
  %cmp1.26 = icmp sgt i32 %52, -1, !dbg !4771
  br i1 %cmp1.26, label %land.lhs.true.26, label %if.end.26, !dbg !4772

land.lhs.true.26:                                 ; preds = %if.end.25
  %incdec.ptr.25 = getelementptr inbounds i8, ptr %p_Vid, i64 820688, !dbg !4777
    #dbg_value(ptr %incdec.ptr.25, !4761, !DIExpression(), !4764)
  %53 = load i32, ptr %incdec.ptr.25, align 8, !dbg !4774
  %tobool.not.26 = icmp eq i32 %53, 0, !dbg !4775
  br i1 %tobool.not.26, label %if.end.26, label %if.then3, !dbg !4776

if.end.26:                                        ; preds = %land.lhs.true.26, %if.end.25
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 825352, DW_OP_stack_value), !4764)
    #dbg_value(i32 27, !4762, !DIExpression(), !4764)
  %num_views_minus1.27 = getelementptr inbounds i8, ptr %p_Vid, i64 829484, !dbg !4766
  %54 = load i32, ptr %num_views_minus1.27, align 4, !dbg !4766
  %cmp1.27 = icmp sgt i32 %54, -1, !dbg !4771
  br i1 %cmp1.27, label %land.lhs.true.27, label %if.end.27, !dbg !4772

land.lhs.true.27:                                 ; preds = %if.end.26
  %incdec.ptr.26 = getelementptr inbounds i8, ptr %p_Vid, i64 825352, !dbg !4777
    #dbg_value(ptr %incdec.ptr.26, !4761, !DIExpression(), !4764)
  %55 = load i32, ptr %incdec.ptr.26, align 8, !dbg !4774
  %tobool.not.27 = icmp eq i32 %55, 0, !dbg !4775
  br i1 %tobool.not.27, label %if.end.27, label %if.then3, !dbg !4776

if.end.27:                                        ; preds = %land.lhs.true.27, %if.end.26
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 830016, DW_OP_stack_value), !4764)
    #dbg_value(i32 28, !4762, !DIExpression(), !4764)
  %num_views_minus1.28 = getelementptr inbounds i8, ptr %p_Vid, i64 834148, !dbg !4766
  %56 = load i32, ptr %num_views_minus1.28, align 4, !dbg !4766
  %cmp1.28 = icmp sgt i32 %56, -1, !dbg !4771
  br i1 %cmp1.28, label %land.lhs.true.28, label %if.end.28, !dbg !4772

land.lhs.true.28:                                 ; preds = %if.end.27
  %incdec.ptr.27 = getelementptr inbounds i8, ptr %p_Vid, i64 830016, !dbg !4777
    #dbg_value(ptr %incdec.ptr.27, !4761, !DIExpression(), !4764)
  %57 = load i32, ptr %incdec.ptr.27, align 8, !dbg !4774
  %tobool.not.28 = icmp eq i32 %57, 0, !dbg !4775
  br i1 %tobool.not.28, label %if.end.28, label %if.then3, !dbg !4776

if.end.28:                                        ; preds = %land.lhs.true.28, %if.end.27
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 834680, DW_OP_stack_value), !4764)
    #dbg_value(i32 29, !4762, !DIExpression(), !4764)
  %num_views_minus1.29 = getelementptr inbounds i8, ptr %p_Vid, i64 838812, !dbg !4766
  %58 = load i32, ptr %num_views_minus1.29, align 4, !dbg !4766
  %cmp1.29 = icmp sgt i32 %58, -1, !dbg !4771
  br i1 %cmp1.29, label %land.lhs.true.29, label %if.end.29, !dbg !4772

land.lhs.true.29:                                 ; preds = %if.end.28
  %incdec.ptr.28 = getelementptr inbounds i8, ptr %p_Vid, i64 834680, !dbg !4777
    #dbg_value(ptr %incdec.ptr.28, !4761, !DIExpression(), !4764)
  %59 = load i32, ptr %incdec.ptr.28, align 8, !dbg !4774
  %tobool.not.29 = icmp eq i32 %59, 0, !dbg !4775
  br i1 %tobool.not.29, label %if.end.29, label %if.then3, !dbg !4776

if.end.29:                                        ; preds = %land.lhs.true.29, %if.end.28
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 839344, DW_OP_stack_value), !4764)
    #dbg_value(i32 30, !4762, !DIExpression(), !4764)
  %num_views_minus1.30 = getelementptr inbounds i8, ptr %p_Vid, i64 843476, !dbg !4766
  %60 = load i32, ptr %num_views_minus1.30, align 4, !dbg !4766
  %cmp1.30 = icmp sgt i32 %60, -1, !dbg !4771
  br i1 %cmp1.30, label %land.lhs.true.30, label %if.end.30, !dbg !4772

land.lhs.true.30:                                 ; preds = %if.end.29
  %incdec.ptr.29 = getelementptr inbounds i8, ptr %p_Vid, i64 839344, !dbg !4777
    #dbg_value(ptr %incdec.ptr.29, !4761, !DIExpression(), !4764)
  %61 = load i32, ptr %incdec.ptr.29, align 8, !dbg !4774
  %tobool.not.30 = icmp eq i32 %61, 0, !dbg !4775
  br i1 %tobool.not.30, label %if.end.30, label %if.then3, !dbg !4776

if.end.30:                                        ; preds = %land.lhs.true.30, %if.end.29
    #dbg_value(ptr %p_Vid, !4761, !DIExpression(DW_OP_plus_uconst, 844008, DW_OP_stack_value), !4764)
    #dbg_value(i32 31, !4762, !DIExpression(), !4764)
  %num_views_minus1.31 = getelementptr inbounds i8, ptr %p_Vid, i64 848140, !dbg !4766
  %62 = load i32, ptr %num_views_minus1.31, align 4, !dbg !4766
  %cmp1.31 = icmp sgt i32 %62, -1, !dbg !4771
  br i1 %cmp1.31, label %land.lhs.true.31, label %if.end4, !dbg !4772

land.lhs.true.31:                                 ; preds = %if.end.30
  %incdec.ptr.30 = getelementptr inbounds i8, ptr %p_Vid, i64 844008, !dbg !4777
    #dbg_value(ptr %incdec.ptr.30, !4761, !DIExpression(), !4764)
  %63 = load i32, ptr %incdec.ptr.30, align 8, !dbg !4774
  %tobool.not.31 = icmp eq i32 %63, 0, !dbg !4775
  br i1 %tobool.not.31, label %if.end4, label %if.then3, !dbg !4776

if.then3:                                         ; preds = %land.lhs.true.31, %land.lhs.true.30, %land.lhs.true.29, %land.lhs.true.28, %land.lhs.true.27, %land.lhs.true.26, %land.lhs.true.25, %land.lhs.true.24, %land.lhs.true.23, %land.lhs.true.22, %land.lhs.true.21, %land.lhs.true.20, %land.lhs.true.19, %land.lhs.true.18, %land.lhs.true.17, %land.lhs.true.16, %land.lhs.true.15, %land.lhs.true.14, %land.lhs.true.13, %land.lhs.true.12, %land.lhs.true.11, %land.lhs.true.10, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true.7, %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %curr_subset_sps.016.lcssa = phi ptr [ %SubsetSeqParSet, %land.lhs.true ], [ %incdec.ptr, %land.lhs.true.1 ], [ %incdec.ptr.1, %land.lhs.true.2 ], [ %incdec.ptr.2, %land.lhs.true.3 ], [ %incdec.ptr.3, %land.lhs.true.4 ], [ %incdec.ptr.4, %land.lhs.true.5 ], [ %incdec.ptr.5, %land.lhs.true.6 ], [ %incdec.ptr.6, %land.lhs.true.7 ], [ %incdec.ptr.7, %land.lhs.true.8 ], [ %incdec.ptr.8, %land.lhs.true.9 ], [ %incdec.ptr.9, %land.lhs.true.10 ], [ %incdec.ptr.10, %land.lhs.true.11 ], [ %incdec.ptr.11, %land.lhs.true.12 ], [ %incdec.ptr.12, %land.lhs.true.13 ], [ %incdec.ptr.13, %land.lhs.true.14 ], [ %incdec.ptr.14, %land.lhs.true.15 ], [ %incdec.ptr.15, %land.lhs.true.16 ], [ %incdec.ptr.16, %land.lhs.true.17 ], [ %incdec.ptr.17, %land.lhs.true.18 ], [ %incdec.ptr.18, %land.lhs.true.19 ], [ %incdec.ptr.19, %land.lhs.true.20 ], [ %incdec.ptr.20, %land.lhs.true.21 ], [ %incdec.ptr.21, %land.lhs.true.22 ], [ %incdec.ptr.22, %land.lhs.true.23 ], [ %incdec.ptr.23, %land.lhs.true.24 ], [ %incdec.ptr.24, %land.lhs.true.25 ], [ %incdec.ptr.25, %land.lhs.true.26 ], [ %incdec.ptr.26, %land.lhs.true.27 ], [ %incdec.ptr.27, %land.lhs.true.28 ], [ %incdec.ptr.28, %land.lhs.true.29 ], [ %incdec.ptr.29, %land.lhs.true.30 ], [ %incdec.ptr.30, %land.lhs.true.31 ]
  %view_id = getelementptr inbounds i8, ptr %curr_subset_sps.016.lcssa, i64 4136, !dbg !4778
  %64 = load ptr, ptr %view_id, align 8, !dbg !4778
  %65 = load i32, ptr %64, align 4, !dbg !4780
    #dbg_value(i32 %65, !4763, !DIExpression(), !4764)
  store ptr %curr_subset_sps.016.lcssa, ptr %subset_sps, align 8, !dbg !4781
  br label %if.end4, !dbg !4783

if.end4:                                          ; preds = %if.end.30, %land.lhs.true.31, %if.then3
  %iBaseViewId.013 = phi i32 [ %65, %if.then3 ], [ 0, %land.lhs.true.31 ], [ 0, %if.end.30 ]
  ret i32 %iBaseViewId.013, !dbg !4784
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907}
!llvm.ident = !{!1908}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ZZ_SCAN", scope: !2, file: !1889, line: 23, type: !1900, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !86, globals: !99, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/parset.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d0b0ad2ce9ef30cabd6fd6cc332c532d")
!4 = !{!5, !14, !20, !29, !36, !44, !63, !69, !82}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!10 = !DIEnumerator(name: "YUV400", value: 0)
!11 = !DIEnumerator(name: "YUV420", value: 1)
!12 = !DIEnumerator(name: "YUV422", value: 2)
!13 = !DIEnumerator(name: "YUV444", value: 3)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 15, baseType: !7, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!17 = !DIEnumerator(name: "CM_YUV", value: 0)
!18 = !DIEnumerator(name: "CM_RGB", value: 1)
!19 = !DIEnumerator(name: "CM_XYZ", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 25, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!24 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!25 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!26 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!27 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!28 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 135, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "FRAME", value: 0)
!34 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!35 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "PLANE_Y", value: 0)
!39 = !DIEnumerator(name: "PLANE_U", value: 1)
!40 = !DIEnumerator(name: "PLANE_V", value: 2)
!41 = !DIEnumerator(name: "PLANE_G", value: 0)
!42 = !DIEnumerator(name: "PLANE_B", value: 1)
!43 = !DIEnumerator(name: "PLANE_R", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 24, baseType: !31, size: 32, elements: !46)
!45 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!47 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!48 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!49 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!50 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!51 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!52 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!53 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!54 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!55 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!56 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!57 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!58 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!59 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!60 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!61 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!62 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 46, baseType: !31, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!66 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!67 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!68 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 74, baseType: !31, size: 32, elements: !71)
!70 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!72 = !DIEnumerator(name: "FREXT_CAVLC444", value: 44)
!73 = !DIEnumerator(name: "BASELINE", value: 66)
!74 = !DIEnumerator(name: "MAIN", value: 77)
!75 = !DIEnumerator(name: "EXTENDED", value: 88)
!76 = !DIEnumerator(name: "FREXT_HP", value: 100)
!77 = !DIEnumerator(name: "FREXT_Hi10P", value: 110)
!78 = !DIEnumerator(name: "FREXT_Hi422", value: 122)
!79 = !DIEnumerator(name: "FREXT_Hi444", value: 244)
!80 = !DIEnumerator(name: "MVC_HIGH", value: 118)
!81 = !DIEnumerator(name: "STEREO_HIGH", value: 128)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 119, baseType: !31, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "CAVLC", value: 0)
!85 = !DIEnumerator(name: "CABAC", value: 1)
!86 = !{!7, !87, !88, !89, !92, !93, !94, !95, !96, !97, !98, !31}
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !90, line: 21, baseType: !91)
!90 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !6, line: 28, baseType: !5)
!93 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!99 = !{!100, !106, !108, !113, !118, !120, !122, !124, !126, !131, !136, !141, !146, !151, !153, !158, !163, !168, !173, !178, !183, !188, !193, !198, !203, !208, !213, !215, !220, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !250, !252, !257, !259, !264, !266, !268, !270, !275, !277, !279, !281, !286, !288, !290, !292, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !347, !349, !351, !353, !355, !357, !359, !361, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !405, !407, !409, !411, !413, !415, !417, !422, !427, !432, !1679, !1681, !1686, !1691, !1696, !1698, !1700, !1705, !1707, !1712, !1717, !1719, !1724, !1726, !1728, !1730, !1735, !1737, !1740, !1745, !1750, !1752, !1754, !1756, !1758, !1760, !1763, !1765, !1767, !1769, !1771, !1773, !1778, !1783, !1785, !1790, !1795, !1800, !1804, !1806, !1808, !1813, !1818, !1823, !1825, !1827, !1832, !1834, !1836, !1838, !1840, !1842, !1844, !1846, !1848, !1850, !1852, !1854, !1856, !1858, !1863, !1865, !1867, !1869, !1871, !1873, !1875, !1877, !1879, !1881, !1883, !1885, !0, !1887, !1892, !1894, !1896, !1898}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 136, elements: !104)
!103 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!104 = !{!105}
!105 = !DISubrange(count: 17)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !102, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 320, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 40)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 216, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 27)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !115, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !115, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !115, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !115, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 200, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 25)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 120, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 15)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 208, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 26)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 184, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 23)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 32)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !115, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 232, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 29)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 888, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 111)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 272, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 34)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 296, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 37)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 280, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 35)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 248, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 31)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 192, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 24)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 312, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 39)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 304, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 38)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 224, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 28)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 288, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 36)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 344, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 43)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !155, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 160, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 20)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 336, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 42)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !155, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !205, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !128, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !165, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !180, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !128, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !170, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !195, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !205, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !190, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 264, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 33)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !205, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 176, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 22)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !133, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 16)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 292, type: !148, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !180, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !205, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 144, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 18)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !115, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !205, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !254, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 240, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 30)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !128, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !165, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !195, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 328, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 41)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !283, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !143, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !261, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !115, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !170, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !170, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !185, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !148, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !148, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 360, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 45)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !155, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !115, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !175, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !247, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !185, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !155, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !217, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !217, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !217, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !115, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !115, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 112, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 14)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !317, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !170, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !205, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 375, type: !185, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !138, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !138, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !283, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 400, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 50)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !155, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !138, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !115, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !272, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !254, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !190, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !205, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !165, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !155, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !272, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !165, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !165, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !185, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !128, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !128, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !128, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !200, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 352, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 44)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !247, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !205, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !155, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !170, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !175, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !175, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 464, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 58)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 472, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 59)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 528, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 66)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "SubWidthC", scope: !434, file: !3, line: 701, type: !1677, isLocal: true, isDefinition: true)
!434 = distinct !DISubprogram(name: "reset_format_info", scope: !3, file: !3, line: 698, type: !435, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437, !549, !1666, !1666}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !439, line: 197, baseType: !440)
!439 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 142, size: 33024, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !457, !461, !465, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !547, !548}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !440, file: !439, line: 144, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !440, file: !439, line: 146, baseType: !31, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !440, file: !439, line: 147, baseType: !7, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !440, file: !439, line: 148, baseType: !7, size: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !440, file: !439, line: 149, baseType: !7, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !440, file: !439, line: 150, baseType: !7, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !440, file: !439, line: 152, baseType: !7, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !440, file: !439, line: 154, baseType: !31, size: 32, offset: 224)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !440, file: !439, line: 155, baseType: !31, size: 32, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !440, file: !439, line: 156, baseType: !31, size: 32, offset: 288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !440, file: !439, line: 158, baseType: !7, size: 32, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !440, file: !439, line: 159, baseType: !454, size: 384, offset: 352)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 12)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !440, file: !439, line: 160, baseType: !458, size: 3072, offset: 736)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !459)
!459 = !{!460, !263}
!460 = !DISubrange(count: 6)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !440, file: !439, line: 161, baseType: !462, size: 12288, offset: 3808)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !463)
!463 = !{!460, !464}
!464 = !DISubrange(count: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !440, file: !439, line: 162, baseType: !466, size: 192, offset: 16096)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !467)
!467 = !{!460}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !440, file: !439, line: 163, baseType: !466, size: 192, offset: 16288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !440, file: !439, line: 165, baseType: !31, size: 32, offset: 16480)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !440, file: !439, line: 166, baseType: !31, size: 32, offset: 16512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !440, file: !439, line: 167, baseType: !31, size: 32, offset: 16544)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !440, file: !439, line: 168, baseType: !31, size: 32, offset: 16576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !440, file: !439, line: 170, baseType: !31, size: 32, offset: 16608)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !440, file: !439, line: 172, baseType: !7, size: 32, offset: 16640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !440, file: !439, line: 173, baseType: !7, size: 32, offset: 16672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !440, file: !439, line: 174, baseType: !7, size: 32, offset: 16704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !440, file: !439, line: 175, baseType: !31, size: 32, offset: 16736)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !440, file: !439, line: 177, baseType: !479, size: 8192, offset: 16768)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !440, file: !439, line: 178, baseType: !31, size: 32, offset: 24960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !440, file: !439, line: 179, baseType: !7, size: 32, offset: 24992)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !440, file: !439, line: 180, baseType: !31, size: 32, offset: 25024)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !440, file: !439, line: 181, baseType: !31, size: 32, offset: 25056)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !440, file: !439, line: 182, baseType: !7, size: 32, offset: 25088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !440, file: !439, line: 184, baseType: !7, size: 32, offset: 25120)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !440, file: !439, line: 185, baseType: !7, size: 32, offset: 25152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !440, file: !439, line: 186, baseType: !7, size: 32, offset: 25184)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !440, file: !439, line: 187, baseType: !31, size: 32, offset: 25216)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !440, file: !439, line: 188, baseType: !31, size: 32, offset: 25248)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !440, file: !439, line: 189, baseType: !31, size: 32, offset: 25280)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !440, file: !439, line: 190, baseType: !31, size: 32, offset: 25312)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !440, file: !439, line: 191, baseType: !7, size: 32, offset: 25344)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !440, file: !439, line: 192, baseType: !496, size: 7584, offset: 25376)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !439, line: 90, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 53, size: 7584, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !497, file: !439, line: 55, baseType: !7, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !497, file: !439, line: 56, baseType: !31, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !497, file: !439, line: 57, baseType: !87, size: 16, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !497, file: !439, line: 58, baseType: !87, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !497, file: !439, line: 59, baseType: !7, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !497, file: !439, line: 60, baseType: !7, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !497, file: !439, line: 61, baseType: !7, size: 32, offset: 160)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !497, file: !439, line: 62, baseType: !31, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !497, file: !439, line: 63, baseType: !7, size: 32, offset: 224)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !497, file: !439, line: 64, baseType: !7, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !497, file: !439, line: 65, baseType: !31, size: 32, offset: 288)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !497, file: !439, line: 66, baseType: !31, size: 32, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !497, file: !439, line: 67, baseType: !31, size: 32, offset: 352)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !497, file: !439, line: 68, baseType: !7, size: 32, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !497, file: !439, line: 69, baseType: !31, size: 32, offset: 416)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !497, file: !439, line: 70, baseType: !31, size: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !497, file: !439, line: 71, baseType: !7, size: 32, offset: 480)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !497, file: !439, line: 72, baseType: !31, size: 32, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !497, file: !439, line: 73, baseType: !31, size: 32, offset: 544)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !497, file: !439, line: 74, baseType: !7, size: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !497, file: !439, line: 75, baseType: !7, size: 32, offset: 608)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !497, file: !439, line: 76, baseType: !521, size: 3296, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !439, line: 50, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 38, size: 3296, elements: !523)
!523 = !{!524, !525, !526, !527, !529, !530, !531, !532, !533, !534}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !522, file: !439, line: 40, baseType: !31, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !522, file: !439, line: 41, baseType: !31, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !522, file: !439, line: 42, baseType: !31, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !522, file: !439, line: 43, baseType: !528, size: 1024, offset: 96)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !149)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !522, file: !439, line: 44, baseType: !528, size: 1024, offset: 1120)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !522, file: !439, line: 45, baseType: !528, size: 1024, offset: 2144)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !522, file: !439, line: 46, baseType: !31, size: 32, offset: 3168)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !522, file: !439, line: 47, baseType: !31, size: 32, offset: 3200)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !522, file: !439, line: 48, baseType: !31, size: 32, offset: 3232)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !522, file: !439, line: 49, baseType: !31, size: 32, offset: 3264)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !497, file: !439, line: 77, baseType: !7, size: 32, offset: 3936)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !497, file: !439, line: 78, baseType: !521, size: 3296, offset: 3968)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !497, file: !439, line: 80, baseType: !7, size: 32, offset: 7264)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !497, file: !439, line: 81, baseType: !7, size: 32, offset: 7296)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !497, file: !439, line: 82, baseType: !7, size: 32, offset: 7328)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !497, file: !439, line: 83, baseType: !7, size: 32, offset: 7360)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !497, file: !439, line: 84, baseType: !31, size: 32, offset: 7392)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !497, file: !439, line: 85, baseType: !31, size: 32, offset: 7424)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !497, file: !439, line: 86, baseType: !31, size: 32, offset: 7456)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !497, file: !439, line: 87, baseType: !31, size: 32, offset: 7488)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !497, file: !439, line: 88, baseType: !31, size: 32, offset: 7520)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !497, file: !439, line: 89, baseType: !31, size: 32, offset: 7552)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !440, file: !439, line: 193, baseType: !31, size: 32, offset: 32960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !440, file: !439, line: 195, baseType: !7, size: 32, offset: 32992)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !551, line: 836, baseType: !552)
!551 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !551, line: 566, size: 6855040, elements: !553)
!553 = !{!554, !637, !678, !679, !681, !683, !738, !740, !741, !742, !743, !744, !747, !767, !779, !780, !781, !782, !783, !784, !1349, !1350, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1360, !1363, !1364, !1366, !1367, !1368, !1369, !1370, !1372, !1373, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1502, !1503, !1505, !1506, !1515, !1537, !1538, !1539, !1541, !1544, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1593, !1596, !1597, !1598, !1599, !1602, !1607, !1611, !1615, !1619, !1620, !1624, !1625, !1629, !1630, !1634, !1655, !1656, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !552, file: !551, line: 568, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !551, line: 850, size: 32128, elements: !557)
!557 = !{!558, !562, !563, !564, !565, !566, !567, !568, !569, !570, !599, !600, !601, !602, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !556, file: !551, line: 852, baseType: !559, size: 2040)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 2040, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 255)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !556, file: !551, line: 853, baseType: !559, size: 2040, offset: 2040)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !556, file: !551, line: 854, baseType: !559, size: 2040, offset: 4080)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !556, file: !551, line: 856, baseType: !7, size: 32, offset: 6144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !556, file: !551, line: 857, baseType: !7, size: 32, offset: 6176)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !556, file: !551, line: 858, baseType: !7, size: 32, offset: 6208)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !556, file: !551, line: 859, baseType: !7, size: 32, offset: 6240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !556, file: !551, line: 860, baseType: !7, size: 32, offset: 6272)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !556, file: !551, line: 861, baseType: !7, size: 32, offset: 6304)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !556, file: !551, line: 864, baseType: !571, size: 1088, offset: 6336)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !6, line: 52, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !6, line: 30, size: 1088, elements: !573)
!573 = !{!574, !575, !577, !579, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !572, file: !6, line: 32, baseType: !92, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !572, file: !6, line: 33, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !6, line: 20, baseType: !14)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !572, file: !6, line: 34, baseType: !578, size: 64, offset: 64)
!578 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !572, file: !6, line: 35, baseType: !580, size: 96, offset: 128)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 3)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !572, file: !6, line: 36, baseType: !580, size: 96, offset: 224)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !572, file: !6, line: 37, baseType: !7, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !572, file: !6, line: 38, baseType: !7, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !572, file: !6, line: 39, baseType: !7, size: 32, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !572, file: !6, line: 40, baseType: !7, size: 32, offset: 416)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !572, file: !6, line: 41, baseType: !7, size: 32, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !572, file: !6, line: 42, baseType: !7, size: 32, offset: 480)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !572, file: !6, line: 43, baseType: !7, size: 32, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !572, file: !6, line: 44, baseType: !7, size: 32, offset: 544)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !572, file: !6, line: 45, baseType: !580, size: 96, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !6, line: 46, baseType: !7, size: 32, offset: 672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !572, file: !6, line: 47, baseType: !580, size: 96, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !572, file: !6, line: 48, baseType: !580, size: 96, offset: 800)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !572, file: !6, line: 49, baseType: !580, size: 96, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !572, file: !6, line: 50, baseType: !7, size: 32, offset: 992)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !572, file: !6, line: 51, baseType: !7, size: 32, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !556, file: !551, line: 865, baseType: !571, size: 1088, offset: 7424)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !556, file: !551, line: 867, baseType: !7, size: 32, offset: 8512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !556, file: !551, line: 868, baseType: !7, size: 32, offset: 8544)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !556, file: !551, line: 869, baseType: !603, size: 7744, offset: 8576)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !21, line: 60, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !21, line: 34, size: 7744, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !604, file: !21, line: 37, baseType: !559, size: 2040)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !604, file: !21, line: 38, baseType: !559, size: 2040, offset: 2040)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !604, file: !21, line: 39, baseType: !559, size: 2040, offset: 4080)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !604, file: !21, line: 40, baseType: !7, size: 32, offset: 6144)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !604, file: !21, line: 41, baseType: !611, size: 32, offset: 6176)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !21, line: 32, baseType: !20)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !604, file: !21, line: 42, baseType: !571, size: 1088, offset: 6208)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !604, file: !21, line: 43, baseType: !7, size: 32, offset: 7296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !604, file: !21, line: 44, baseType: !7, size: 32, offset: 7328)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !604, file: !21, line: 45, baseType: !7, size: 32, offset: 7360)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !604, file: !21, line: 46, baseType: !7, size: 32, offset: 7392)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !604, file: !21, line: 47, baseType: !7, size: 32, offset: 7424)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !604, file: !21, line: 48, baseType: !7, size: 32, offset: 7456)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !604, file: !21, line: 49, baseType: !7, size: 32, offset: 7488)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !604, file: !21, line: 50, baseType: !7, size: 32, offset: 7520)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !604, file: !21, line: 51, baseType: !7, size: 32, offset: 7552)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !604, file: !21, line: 52, baseType: !7, size: 32, offset: 7584)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !604, file: !21, line: 53, baseType: !7, size: 32, offset: 7616)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !604, file: !21, line: 56, baseType: !94, size: 64, offset: 7680)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !556, file: !551, line: 870, baseType: !603, size: 7744, offset: 16320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !556, file: !551, line: 871, baseType: !603, size: 7744, offset: 24064)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !556, file: !551, line: 873, baseType: !7, size: 32, offset: 31808)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !556, file: !551, line: 884, baseType: !7, size: 32, offset: 31840)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !556, file: !551, line: 885, baseType: !7, size: 32, offset: 31872)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !556, file: !551, line: 886, baseType: !7, size: 32, offset: 31904)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !556, file: !551, line: 890, baseType: !7, size: 32, offset: 31936)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !556, file: !551, line: 893, baseType: !7, size: 32, offset: 31968)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !556, file: !551, line: 894, baseType: !7, size: 32, offset: 32000)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !556, file: !551, line: 895, baseType: !7, size: 32, offset: 32032)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !556, file: !551, line: 897, baseType: !7, size: 32, offset: 32064)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !556, file: !551, line: 899, baseType: !7, size: 32, offset: 32096)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !552, file: !551, line: 569, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !439, line: 138, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 94, size: 17728, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !660, !661, !662, !663, !664, !665, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !640, file: !439, line: 96, baseType: !7, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !640, file: !439, line: 97, baseType: !31, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !640, file: !439, line: 98, baseType: !31, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !640, file: !439, line: 99, baseType: !7, size: 32, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !640, file: !439, line: 100, baseType: !7, size: 32, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !640, file: !439, line: 102, baseType: !7, size: 32, offset: 160)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !640, file: !439, line: 103, baseType: !454, size: 384, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !640, file: !439, line: 104, baseType: !458, size: 3072, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !640, file: !439, line: 105, baseType: !462, size: 12288, offset: 3648)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !640, file: !439, line: 106, baseType: !466, size: 192, offset: 15936)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !640, file: !439, line: 107, baseType: !466, size: 192, offset: 16128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !640, file: !439, line: 110, baseType: !7, size: 32, offset: 16320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !640, file: !439, line: 111, baseType: !31, size: 32, offset: 16352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !640, file: !439, line: 112, baseType: !31, size: 32, offset: 16384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !640, file: !439, line: 114, baseType: !657, size: 256, offset: 16416)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 8)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !640, file: !439, line: 116, baseType: !657, size: 256, offset: 16672)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !640, file: !439, line: 117, baseType: !657, size: 256, offset: 16928)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !640, file: !439, line: 119, baseType: !7, size: 32, offset: 17184)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !640, file: !439, line: 120, baseType: !31, size: 32, offset: 17216)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !640, file: !439, line: 122, baseType: !31, size: 32, offset: 17248)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !640, file: !439, line: 123, baseType: !666, size: 64, offset: 17280)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !640, file: !439, line: 125, baseType: !7, size: 32, offset: 17344)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !640, file: !439, line: 126, baseType: !7, size: 32, offset: 17376)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !640, file: !439, line: 127, baseType: !7, size: 32, offset: 17408)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !640, file: !439, line: 128, baseType: !31, size: 32, offset: 17440)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !640, file: !439, line: 129, baseType: !7, size: 32, offset: 17472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !640, file: !439, line: 130, baseType: !7, size: 32, offset: 17504)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !640, file: !439, line: 131, baseType: !7, size: 32, offset: 17536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !640, file: !439, line: 133, baseType: !7, size: 32, offset: 17568)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !640, file: !439, line: 135, baseType: !7, size: 32, offset: 17600)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !640, file: !439, line: 136, baseType: !7, size: 32, offset: 17632)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !640, file: !439, line: 137, baseType: !7, size: 32, offset: 17664)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !552, file: !551, line: 570, baseType: !437, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !552, file: !551, line: 571, baseType: !680, size: 1056768, offset: 192)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1056768, elements: !149)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !552, file: !551, line: 572, baseType: !682, size: 4538368, offset: 1056960)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 4538368, elements: !480)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !552, file: !551, line: 575, baseType: !684, size: 64, offset: 5595328)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !439, line: 256, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 228, size: 37312, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !686, file: !439, line: 230, baseType: !438, size: 33024)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !686, file: !439, line: 232, baseType: !31, size: 32, offset: 33024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !686, file: !439, line: 233, baseType: !7, size: 32, offset: 33056)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !686, file: !439, line: 234, baseType: !94, size: 64, offset: 33088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !686, file: !439, line: 235, baseType: !94, size: 64, offset: 33152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !686, file: !439, line: 236, baseType: !95, size: 64, offset: 33216)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !686, file: !439, line: 237, baseType: !94, size: 64, offset: 33280)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !686, file: !439, line: 238, baseType: !95, size: 64, offset: 33344)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !686, file: !439, line: 240, baseType: !94, size: 64, offset: 33408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !686, file: !439, line: 241, baseType: !95, size: 64, offset: 33472)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !686, file: !439, line: 242, baseType: !94, size: 64, offset: 33536)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !686, file: !439, line: 243, baseType: !95, size: 64, offset: 33600)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !686, file: !439, line: 245, baseType: !7, size: 32, offset: 33664)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !686, file: !439, line: 246, baseType: !94, size: 64, offset: 33728)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !686, file: !439, line: 247, baseType: !94, size: 64, offset: 33792)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !686, file: !439, line: 248, baseType: !95, size: 64, offset: 33856)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !686, file: !439, line: 249, baseType: !95, size: 64, offset: 33920)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !686, file: !439, line: 250, baseType: !96, size: 64, offset: 33984)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !686, file: !439, line: 251, baseType: !95, size: 64, offset: 34048)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !686, file: !439, line: 253, baseType: !31, size: 32, offset: 34112)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !686, file: !439, line: 254, baseType: !7, size: 32, offset: 34144)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !686, file: !439, line: 255, baseType: !710, size: 3136, offset: 34176)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !439, line: 226, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !439, line: 200, size: 3136, elements: !712)
!712 = !{!713, !714, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !731, !732, !734, !735, !736, !737}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !711, file: !439, line: 202, baseType: !7, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !711, file: !439, line: 203, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !711, file: !439, line: 204, baseType: !94, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !711, file: !439, line: 205, baseType: !95, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !711, file: !439, line: 206, baseType: !715, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !711, file: !439, line: 207, baseType: !94, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !711, file: !439, line: 208, baseType: !94, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !711, file: !439, line: 209, baseType: !715, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !711, file: !439, line: 210, baseType: !715, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !711, file: !439, line: 211, baseType: !715, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !711, file: !439, line: 212, baseType: !715, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !711, file: !439, line: 213, baseType: !715, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !711, file: !439, line: 216, baseType: !97, size: 8, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !711, file: !439, line: 217, baseType: !97, size: 8, offset: 776)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !711, file: !439, line: 218, baseType: !97, size: 8, offset: 784)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !711, file: !439, line: 219, baseType: !730, size: 1024, offset: 800)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !149)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !711, file: !439, line: 220, baseType: !730, size: 1024, offset: 1824)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !711, file: !439, line: 221, baseType: !733, size: 256, offset: 2848)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !149)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !711, file: !439, line: 222, baseType: !97, size: 8, offset: 3104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !711, file: !439, line: 223, baseType: !97, size: 8, offset: 3112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !711, file: !439, line: 224, baseType: !97, size: 8, offset: 3120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !711, file: !439, line: 225, baseType: !97, size: 8, offset: 3128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !552, file: !551, line: 577, baseType: !739, size: 1193984, offset: 5595392)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 1193984, elements: !149)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !552, file: !551, line: 578, baseType: !7, size: 32, offset: 6789376)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !552, file: !551, line: 579, baseType: !7, size: 32, offset: 6789408)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !552, file: !551, line: 580, baseType: !7, size: 32, offset: 6789440)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !552, file: !551, line: 581, baseType: !7, size: 32, offset: 6789472)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !552, file: !551, line: 584, baseType: !745, size: 64, offset: 6789504)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !551, line: 584, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !552, file: !551, line: 586, baseType: !748, size: 64, offset: 6789568)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !551, line: 902, size: 416, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !760, !761, !762, !763, !764, !765, !766}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !749, file: !551, line: 904, baseType: !31, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !749, file: !551, line: 905, baseType: !31, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !749, file: !551, line: 906, baseType: !7, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !749, file: !551, line: 907, baseType: !31, size: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !749, file: !551, line: 908, baseType: !7, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !749, file: !551, line: 909, baseType: !757, size: 64, offset: 160)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 2)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !749, file: !551, line: 910, baseType: !89, size: 8, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !749, file: !551, line: 911, baseType: !89, size: 8, offset: 232)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !749, file: !551, line: 912, baseType: !7, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !749, file: !551, line: 913, baseType: !7, size: 32, offset: 288)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !749, file: !551, line: 915, baseType: !7, size: 32, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !749, file: !551, line: 916, baseType: !7, size: 32, offset: 352)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !749, file: !551, line: 917, baseType: !7, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !552, file: !551, line: 587, baseType: !768, size: 64, offset: 6789632)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !551, line: 839, size: 512, elements: !770)
!770 = !{!771, !772, !775, !776, !777, !778}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !769, file: !551, line: 841, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !769, file: !551, line: 842, baseType: !773, size: 96, offset: 32)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 96, elements: !581)
!774 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !769, file: !551, line: 843, baseType: !773, size: 96, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !769, file: !551, line: 844, baseType: !773, size: 96, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !769, file: !551, line: 845, baseType: !773, size: 96, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !769, file: !551, line: 846, baseType: !773, size: 96, offset: 416)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !552, file: !551, line: 588, baseType: !7, size: 32, offset: 6789696)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !552, file: !551, line: 591, baseType: !31, size: 32, offset: 6789728)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !552, file: !551, line: 592, baseType: !7, size: 32, offset: 6789760)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !552, file: !551, line: 593, baseType: !7, size: 32, offset: 6789792)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !552, file: !551, line: 594, baseType: !7, size: 32, offset: 6789824)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !552, file: !551, line: 595, baseType: !785, size: 64, offset: 6789888)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !551, line: 542, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !551, line: 341, size: 109184, elements: !789)
!789 = !{!790, !792, !793, !794, !795, !796, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1017, !1019, !1182, !1211, !1236, !1239, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1274, !1275, !1276, !1277, !1278, !1279, !1282, !1283, !1286, !1287, !1289, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1302, !1303, !1304, !1305, !1306, !1309, !1310, !1311, !1313, !1317, !1321, !1325, !1329, !1330, !1331, !1332, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1346, !1347}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !788, file: !551, line: 343, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !788, file: !551, line: 344, baseType: !555, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !788, file: !551, line: 345, baseType: !638, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !788, file: !551, line: 346, baseType: !437, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !788, file: !551, line: 347, baseType: !7, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !788, file: !551, line: 350, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !799, line: 186, size: 33408, elements: !800)
!799 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!800 = !{!801, !802, !805, !951, !952, !953, !954, !955, !956, !957, !958, !959, !963, !964, !965}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !798, file: !799, line: 188, baseType: !549, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !798, file: !799, line: 189, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !551, line: 900, baseType: !556)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !798, file: !799, line: 190, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !799, line: 182, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !799, line: 152, size: 768, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !946, !947, !948, !949, !950}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !809, file: !799, line: 154, baseType: !7, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !809, file: !799, line: 155, baseType: !7, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !809, file: !799, line: 156, baseType: !7, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !809, file: !799, line: 157, baseType: !7, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !809, file: !799, line: 159, baseType: !7, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !809, file: !799, line: 161, baseType: !31, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !809, file: !799, line: 162, baseType: !31, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !809, file: !799, line: 164, baseType: !7, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !809, file: !799, line: 165, baseType: !7, size: 32, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !809, file: !799, line: 166, baseType: !7, size: 32, offset: 288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !809, file: !799, line: 167, baseType: !7, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !809, file: !799, line: 170, baseType: !7, size: 32, offset: 352)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !809, file: !799, line: 172, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !799, line: 138, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !799, line: 46, size: 3328, elements: !827)
!827 = !{!828, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !866, !868, !869, !886, !888, !892, !894, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !826, file: !799, line: 48, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !29)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !826, file: !799, line: 50, baseType: !7, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !826, file: !799, line: 51, baseType: !7, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !826, file: !799, line: 52, baseType: !7, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !826, file: !799, line: 53, baseType: !7, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !826, file: !799, line: 54, baseType: !31, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !826, file: !799, line: 55, baseType: !31, size: 32, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !826, file: !799, line: 57, baseType: !7, size: 32, offset: 224)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !826, file: !799, line: 58, baseType: !7, size: 32, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !826, file: !799, line: 59, baseType: !7, size: 32, offset: 288)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !826, file: !799, line: 61, baseType: !89, size: 8, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !826, file: !799, line: 62, baseType: !7, size: 32, offset: 352)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !826, file: !799, line: 63, baseType: !7, size: 32, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !826, file: !799, line: 64, baseType: !7, size: 32, offset: 416)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !826, file: !799, line: 65, baseType: !7, size: 32, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !826, file: !799, line: 67, baseType: !93, size: 16, offset: 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !826, file: !799, line: 69, baseType: !7, size: 32, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !826, file: !799, line: 69, baseType: !7, size: 32, offset: 544)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !826, file: !799, line: 69, baseType: !7, size: 32, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !826, file: !799, line: 69, baseType: !7, size: 32, offset: 608)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !826, file: !799, line: 70, baseType: !7, size: 32, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !826, file: !799, line: 70, baseType: !7, size: 32, offset: 672)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !826, file: !799, line: 70, baseType: !7, size: 32, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !826, file: !799, line: 70, baseType: !7, size: 32, offset: 736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !826, file: !799, line: 71, baseType: !7, size: 32, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !826, file: !799, line: 72, baseType: !7, size: 32, offset: 800)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !826, file: !799, line: 73, baseType: !31, size: 32, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !826, file: !799, line: 74, baseType: !31, size: 32, offset: 864)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !826, file: !799, line: 75, baseType: !7, size: 32, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !826, file: !799, line: 75, baseType: !7, size: 32, offset: 928)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !826, file: !799, line: 76, baseType: !7, size: 32, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !826, file: !799, line: 76, baseType: !7, size: 32, offset: 992)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !826, file: !799, line: 79, baseType: !862, size: 64, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !90, line: 41, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !90, line: 23, baseType: !87)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !826, file: !799, line: 80, baseType: !867, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !826, file: !799, line: 81, baseType: !867, size: 64, offset: 1152)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !826, file: !799, line: 84, baseType: !870, size: 64, offset: 1216)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !799, line: 36, size: 256, elements: !873)
!873 = !{!874, !877, !884}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !872, file: !799, line: 38, baseType: !875, size: 128)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 128, elements: !758)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !872, file: !799, line: 39, baseType: !878, size: 64, offset: 128)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 64, elements: !758)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !551, line: 104, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 100, size: 32, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !880, file: !551, line: 102, baseType: !93, size: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !880, file: !551, line: 103, baseType: !93, size: 16, offset: 16)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !872, file: !799, line: 40, baseType: !885, size: 16, offset: 192)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !758)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !826, file: !799, line: 85, baseType: !887, size: 192, offset: 1280)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 192, elements: !581)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !826, file: !799, line: 87, baseType: !889, size: 64, offset: 1472)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !799, line: 29, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !889, file: !799, line: 31, baseType: !666, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !826, file: !799, line: 88, baseType: !893, size: 192, offset: 1536)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 192, elements: !581)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !826, file: !799, line: 90, baseType: !895, size: 64, offset: 1728)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !826, file: !799, line: 92, baseType: !876, size: 64, offset: 1792)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !826, file: !799, line: 93, baseType: !876, size: 64, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !826, file: !799, line: 94, baseType: !876, size: 64, offset: 1920)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !826, file: !799, line: 96, baseType: !7, size: 32, offset: 1984)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !826, file: !799, line: 97, baseType: !7, size: 32, offset: 2016)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !826, file: !799, line: 98, baseType: !7, size: 32, offset: 2048)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !826, file: !799, line: 99, baseType: !7, size: 32, offset: 2080)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !826, file: !799, line: 100, baseType: !7, size: 32, offset: 2112)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !826, file: !799, line: 102, baseType: !7, size: 32, offset: 2144)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !826, file: !799, line: 103, baseType: !7, size: 32, offset: 2176)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !826, file: !799, line: 104, baseType: !7, size: 32, offset: 2208)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !826, file: !799, line: 105, baseType: !7, size: 32, offset: 2240)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !826, file: !799, line: 106, baseType: !7, size: 32, offset: 2272)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !826, file: !799, line: 107, baseType: !7, size: 32, offset: 2304)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !826, file: !799, line: 108, baseType: !7, size: 32, offset: 2336)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !826, file: !799, line: 109, baseType: !7, size: 32, offset: 2368)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !826, file: !799, line: 110, baseType: !757, size: 64, offset: 2400)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !826, file: !799, line: 111, baseType: !7, size: 32, offset: 2464)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !826, file: !799, line: 112, baseType: !916, size: 64, offset: 2496)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !551, line: 194, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !551, line: 186, size: 256, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !918, file: !551, line: 188, baseType: !7, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !918, file: !551, line: 189, baseType: !7, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !918, file: !551, line: 190, baseType: !7, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !918, file: !551, line: 191, baseType: !7, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !918, file: !551, line: 192, baseType: !7, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !918, file: !551, line: 193, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !826, file: !799, line: 115, baseType: !7, size: 32, offset: 2560)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !826, file: !799, line: 118, baseType: !7, size: 32, offset: 2592)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !826, file: !799, line: 119, baseType: !7, size: 32, offset: 2624)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !826, file: !799, line: 120, baseType: !7, size: 32, offset: 2656)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !826, file: !799, line: 121, baseType: !863, size: 64, offset: 2688)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !826, file: !799, line: 124, baseType: !7, size: 32, offset: 2752)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !826, file: !799, line: 125, baseType: !7, size: 32, offset: 2784)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !826, file: !799, line: 126, baseType: !7, size: 32, offset: 2816)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !826, file: !799, line: 128, baseType: !7, size: 32, offset: 2848)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !826, file: !799, line: 129, baseType: !7, size: 32, offset: 2880)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !826, file: !799, line: 130, baseType: !7, size: 32, offset: 2912)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !826, file: !799, line: 131, baseType: !7, size: 32, offset: 2944)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !826, file: !799, line: 132, baseType: !862, size: 64, offset: 3008)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !826, file: !799, line: 133, baseType: !7, size: 32, offset: 3072)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !826, file: !799, line: 134, baseType: !7, size: 32, offset: 3104)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !826, file: !799, line: 136, baseType: !885, size: 16, offset: 3136)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !826, file: !799, line: 137, baseType: !944, size: 128, offset: 3200)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 128, elements: !758)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !809, file: !799, line: 173, baseType: !824, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !809, file: !799, line: 174, baseType: !824, size: 64, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !809, file: !799, line: 177, baseType: !7, size: 32, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !809, file: !799, line: 178, baseType: !757, size: 64, offset: 608)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !809, file: !799, line: 179, baseType: !757, size: 64, offset: 672)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !798, file: !799, line: 191, baseType: !806, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !798, file: !799, line: 192, baseType: !806, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !798, file: !799, line: 193, baseType: !31, size: 32, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !798, file: !799, line: 194, baseType: !31, size: 32, offset: 352)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !798, file: !799, line: 195, baseType: !31, size: 32, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !798, file: !799, line: 196, baseType: !31, size: 32, offset: 416)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !798, file: !799, line: 197, baseType: !7, size: 32, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !798, file: !799, line: 199, baseType: !7, size: 32, offset: 480)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !798, file: !799, line: 200, baseType: !960, size: 32768, offset: 512)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 1024)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !798, file: !799, line: 205, baseType: !7, size: 32, offset: 33280)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !798, file: !799, line: 206, baseType: !7, size: 32, offset: 33312)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !798, file: !799, line: 208, baseType: !807, size: 64, offset: 33344)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !788, file: !551, line: 353, baseType: !7, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !788, file: !551, line: 354, baseType: !7, size: 32, offset: 416)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !788, file: !551, line: 355, baseType: !7, size: 32, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !788, file: !551, line: 356, baseType: !7, size: 32, offset: 480)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !788, file: !551, line: 357, baseType: !7, size: 32, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !788, file: !551, line: 359, baseType: !7, size: 32, offset: 544)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !788, file: !551, line: 360, baseType: !7, size: 32, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !788, file: !551, line: 361, baseType: !7, size: 32, offset: 608)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !788, file: !551, line: 365, baseType: !31, size: 32, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !788, file: !551, line: 366, baseType: !7, size: 32, offset: 672)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !788, file: !551, line: 368, baseType: !757, size: 64, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !788, file: !551, line: 372, baseType: !7, size: 32, offset: 768)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !788, file: !551, line: 378, baseType: !31, size: 32, offset: 800)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !788, file: !551, line: 379, baseType: !7, size: 32, offset: 832)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !788, file: !551, line: 387, baseType: !31, size: 32, offset: 864)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !788, file: !551, line: 388, baseType: !31, size: 32, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !788, file: !551, line: 389, baseType: !93, size: 16, offset: 928)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !788, file: !551, line: 396, baseType: !7, size: 32, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !788, file: !551, line: 397, baseType: !7, size: 32, offset: 992)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !788, file: !551, line: 400, baseType: !7, size: 32, offset: 1024)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !788, file: !551, line: 401, baseType: !7, size: 32, offset: 1056)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !788, file: !551, line: 402, baseType: !757, size: 64, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !788, file: !551, line: 406, baseType: !7, size: 32, offset: 1152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !788, file: !551, line: 407, baseType: !7, size: 32, offset: 1184)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !788, file: !551, line: 408, baseType: !7, size: 32, offset: 1216)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !788, file: !551, line: 409, baseType: !7, size: 32, offset: 1248)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !788, file: !551, line: 410, baseType: !7, size: 32, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !788, file: !551, line: 411, baseType: !7, size: 32, offset: 1312)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !788, file: !551, line: 412, baseType: !7, size: 32, offset: 1344)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !788, file: !551, line: 413, baseType: !31, size: 32, offset: 1376)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !788, file: !551, line: 414, baseType: !31, size: 32, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !788, file: !551, line: 415, baseType: !89, size: 8, offset: 1440)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !788, file: !551, line: 416, baseType: !829, size: 32, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !788, file: !551, line: 417, baseType: !7, size: 32, offset: 1504)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !788, file: !551, line: 418, baseType: !7, size: 32, offset: 1536)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !788, file: !551, line: 419, baseType: !7, size: 32, offset: 1568)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !788, file: !551, line: 420, baseType: !7, size: 32, offset: 1600)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !788, file: !551, line: 421, baseType: !7, size: 32, offset: 1632)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !788, file: !551, line: 422, baseType: !7, size: 32, offset: 1664)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !788, file: !551, line: 423, baseType: !7, size: 32, offset: 1696)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !788, file: !551, line: 426, baseType: !7, size: 32, offset: 1728)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !788, file: !551, line: 427, baseType: !7, size: 32, offset: 1760)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !788, file: !551, line: 428, baseType: !7, size: 32, offset: 1792)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !788, file: !551, line: 429, baseType: !7, size: 32, offset: 1824)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !788, file: !551, line: 430, baseType: !7, size: 32, offset: 1856)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !788, file: !551, line: 431, baseType: !7, size: 32, offset: 1888)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !788, file: !551, line: 432, baseType: !7, size: 32, offset: 1920)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !788, file: !551, line: 433, baseType: !7, size: 32, offset: 1952)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !788, file: !551, line: 434, baseType: !916, size: 64, offset: 1984)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !788, file: !551, line: 436, baseType: !1016, size: 48, offset: 2048)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 48, elements: !467)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !788, file: !551, line: 437, baseType: !1018, size: 384, offset: 2112)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 384, elements: !467)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !788, file: !551, line: 440, baseType: !1020, size: 64, offset: 2496)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !551, line: 324, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !551, line: 314, size: 384, elements: !1023)
!1023 = !{!1024, !1035, !1044}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !1022, file: !551, line: 317, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !551, line: 47, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !551, line: 300, size: 256, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !1027, file: !551, line: 303, baseType: !7, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !1027, file: !551, line: 304, baseType: !7, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !1027, file: !551, line: 306, baseType: !7, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !1027, file: !551, line: 307, baseType: !7, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !1027, file: !551, line: 309, baseType: !666, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1027, file: !551, line: 310, baseType: !7, size: 32, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !1022, file: !551, line: 318, baseType: !1036, size: 256, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !551, line: 95, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 88, size: 256, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !1037, file: !551, line: 90, baseType: !31, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !1037, file: !551, line: 91, baseType: !31, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !1037, file: !551, line: 92, baseType: !7, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !1037, file: !551, line: 93, baseType: !666, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !1037, file: !551, line: 94, baseType: !94, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !1022, file: !551, line: 320, baseType: !1045, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!7, !1048, !1180, !1178}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !551, line: 273, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !551, line: 197, size: 3840, elements: !1051)
!1051 = !{!1052, !1054, !1055, !1056, !1057, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1086, !1087, !1088, !1089, !1090, !1094, !1095, !1104, !1105, !1106, !1107, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1133, !1134, !1149, !1155, !1179}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !1050, file: !551, line: 199, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !1050, file: !551, line: 200, baseType: !791, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !1050, file: !551, line: 201, baseType: !555, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !1050, file: !551, line: 202, baseType: !7, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1050, file: !551, line: 203, baseType: !1058, size: 32, offset: 224)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !551, line: 112, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 108, size: 32, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1059, file: !551, line: 110, baseType: !93, size: 16)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1059, file: !551, line: 111, baseType: !93, size: 16, offset: 16)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !1050, file: !551, line: 204, baseType: !7, size: 32, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !1050, file: !551, line: 205, baseType: !7, size: 32, offset: 288)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !1050, file: !551, line: 206, baseType: !7, size: 32, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !1050, file: !551, line: 207, baseType: !7, size: 32, offset: 352)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !1050, file: !551, line: 208, baseType: !7, size: 32, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !1050, file: !551, line: 209, baseType: !7, size: 32, offset: 416)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !1050, file: !551, line: 210, baseType: !7, size: 32, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !1050, file: !551, line: 212, baseType: !7, size: 32, offset: 480)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !1050, file: !551, line: 213, baseType: !7, size: 32, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1050, file: !551, line: 215, baseType: !7, size: 32, offset: 544)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !1050, file: !551, line: 216, baseType: !757, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !1050, file: !551, line: 217, baseType: !580, size: 96, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !1050, file: !551, line: 218, baseType: !7, size: 32, offset: 736)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !1050, file: !551, line: 219, baseType: !7, size: 32, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !1050, file: !551, line: 220, baseType: !7, size: 32, offset: 800)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !1050, file: !551, line: 221, baseType: !7, size: 32, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !1050, file: !551, line: 223, baseType: !93, size: 16, offset: 864)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1050, file: !551, line: 224, baseType: !97, size: 8, offset: 880)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !1050, file: !551, line: 225, baseType: !97, size: 8, offset: 888)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !1050, file: !551, line: 226, baseType: !93, size: 16, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !1050, file: !551, line: 227, baseType: !93, size: 16, offset: 912)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !1050, file: !551, line: 229, baseType: !1085, size: 64, offset: 960)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !1050, file: !551, line: 230, baseType: !1085, size: 64, offset: 1024)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !1050, file: !551, line: 232, baseType: !1085, size: 64, offset: 1088)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !1050, file: !551, line: 233, baseType: !1085, size: 64, offset: 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1050, file: !551, line: 236, baseType: !93, size: 16, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1050, file: !551, line: 237, baseType: !1091, size: 1024, offset: 1232)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !1092)
!1092 = !{!759, !1093, !1093, !759}
!1093 = !DISubrange(count: 4)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1050, file: !551, line: 239, baseType: !7, size: 32, offset: 2272)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !1050, file: !551, line: 240, baseType: !1096, size: 192, offset: 2304)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 192, elements: !581)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !1098, line: 103, baseType: !1099)
!1098 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1100, line: 27, baseType: !1101)
!1100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1102, line: 44, baseType: !1103)
!1102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1103 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !1050, file: !551, line: 241, baseType: !1096, size: 192, offset: 2496)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !1050, file: !551, line: 242, baseType: !1096, size: 192, offset: 2688)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !1050, file: !551, line: 244, baseType: !7, size: 32, offset: 2880)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !1050, file: !551, line: 245, baseType: !1108, size: 32, offset: 2912)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32, elements: !1109)
!1109 = !{!1093}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !1050, file: !551, line: 246, baseType: !1108, size: 32, offset: 2944)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !1050, file: !551, line: 247, baseType: !97, size: 8, offset: 2976)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !1050, file: !551, line: 248, baseType: !97, size: 8, offset: 2984)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !1050, file: !551, line: 249, baseType: !97, size: 8, offset: 2992)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !1050, file: !551, line: 250, baseType: !93, size: 16, offset: 3008)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !1050, file: !551, line: 251, baseType: !93, size: 16, offset: 3024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !1050, file: !551, line: 252, baseType: !93, size: 16, offset: 3040)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !1050, file: !551, line: 254, baseType: !7, size: 32, offset: 3072)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !1050, file: !551, line: 256, baseType: !7, size: 32, offset: 3104)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !1050, file: !551, line: 256, baseType: !7, size: 32, offset: 3136)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !1050, file: !551, line: 256, baseType: !7, size: 32, offset: 3168)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !1050, file: !551, line: 256, baseType: !7, size: 32, offset: 3200)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !1050, file: !551, line: 257, baseType: !7, size: 32, offset: 3232)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !1050, file: !551, line: 257, baseType: !7, size: 32, offset: 3264)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !1050, file: !551, line: 257, baseType: !7, size: 32, offset: 3296)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !1050, file: !551, line: 257, baseType: !7, size: 32, offset: 3328)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !1050, file: !551, line: 259, baseType: !7, size: 32, offset: 3360)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !1050, file: !551, line: 260, baseType: !7, size: 32, offset: 3392)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !1050, file: !551, line: 262, baseType: !1129, size: 64, offset: 3456)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1085, !1132, !7, !7}
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !36)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !1050, file: !551, line: 263, baseType: !1129, size: 64, offset: 3520)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !1050, file: !551, line: 265, baseType: !1135, size: 64, offset: 3584)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1085, !1138, !1148, !93, !870, !7, !7, !7, !7, !7}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !551, line: 85, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !551, line: 77, size: 128, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !1140, file: !551, line: 79, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !1140, file: !551, line: 80, baseType: !7, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1140, file: !551, line: 81, baseType: !93, size: 16, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1140, file: !551, line: 82, baseType: !93, size: 16, offset: 80)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !1140, file: !551, line: 83, baseType: !93, size: 16, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !1140, file: !551, line: 84, baseType: !93, size: 16, offset: 112)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !1050, file: !551, line: 268, baseType: !1150, size: 64, offset: 3648)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!7, !1085, !1153, !7}
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !551, line: 97, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !1050, file: !551, line: 269, baseType: !1156, size: 64, offset: 3712)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!97, !1085, !1159, !1178, !97, !7}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !551, line: 276, size: 384, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1174}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1160, file: !551, line: 278, baseType: !7, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !1160, file: !551, line: 279, baseType: !7, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !1160, file: !551, line: 280, baseType: !7, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1160, file: !551, line: 281, baseType: !7, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !1160, file: !551, line: 282, baseType: !7, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !1160, file: !551, line: 283, baseType: !31, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1160, file: !551, line: 284, baseType: !7, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1160, file: !551, line: 285, baseType: !7, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1160, file: !551, line: 293, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !7, !7, !94, !94}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !1160, file: !551, line: 295, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1048, !1159, !1153}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !1050, file: !551, line: 272, baseType: !89, size: 8, offset: 3776)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !551, line: 296, baseType: !1160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !788, file: !551, line: 441, baseType: !1183, size: 64, offset: 2560)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !551, line: 153, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 145, size: 2912, elements: !1186)
!1186 = !{!1187, !1197, !1201, !1205, !1208, !1210}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !1185, file: !551, line: 147, baseType: !1188, size: 1056)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 1056, elements: !1195)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !551, line: 122, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 117, size: 32, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1190, file: !551, line: 119, baseType: !865, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1190, file: !551, line: 120, baseType: !91, size: 8, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1190, file: !551, line: 121, baseType: !91, size: 8, offset: 24)
!1195 = !{!582, !1196}
!1196 = !DISubrange(count: 11)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !1185, file: !551, line: 148, baseType: !1198, size: 576, offset: 1056)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 576, elements: !1199)
!1199 = !{!759, !1200}
!1200 = !DISubrange(count: 9)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !1185, file: !551, line: 149, baseType: !1202, size: 640, offset: 1632)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 640, elements: !1203)
!1203 = !{!759, !1204}
!1204 = !DISubrange(count: 10)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !1185, file: !551, line: 150, baseType: !1206, size: 384, offset: 2272)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 384, elements: !1207)
!1207 = !{!759, !460}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !1185, file: !551, line: 151, baseType: !1209, size: 128, offset: 2656)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 128, elements: !1109)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !1185, file: !551, line: 152, baseType: !1209, size: 128, offset: 2784)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !788, file: !551, line: 442, baseType: !1212, size: 64, offset: 2624)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !551, line: 175, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 164, size: 52768, elements: !1215)
!1215 = !{!1216, !1218, !1220, !1221, !1224, !1227, !1230, !1231, !1235}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1214, file: !551, line: 166, baseType: !1217, size: 96)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 96, elements: !581)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1214, file: !551, line: 167, baseType: !1219, size: 64, offset: 96)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 64, elements: !758)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1214, file: !551, line: 168, baseType: !1209, size: 128, offset: 160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1214, file: !551, line: 169, baseType: !1222, size: 384, offset: 288)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 384, elements: !1223)
!1223 = !{!582, !1093}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1214, file: !551, line: 170, baseType: !1225, size: 2816, offset: 672)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 2816, elements: !1226)
!1226 = !{!256, !1093}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1214, file: !551, line: 171, baseType: !1228, size: 21120, offset: 3488)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 21120, elements: !1229)
!1229 = !{!759, !256, !135}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1214, file: !551, line: 172, baseType: !1228, size: 21120, offset: 24608)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1214, file: !551, line: 173, baseType: !1232, size: 3520, offset: 45728)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 3520, elements: !1233)
!1233 = !{!256, !1234}
!1234 = !DISubrange(count: 5)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1214, file: !551, line: 174, baseType: !1232, size: 3520, offset: 49248)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !788, file: !551, line: 444, baseType: !1237, size: 6144, offset: 2688)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !1238)
!1238 = !{!460, !150}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !788, file: !551, line: 446, baseType: !757, size: 64, offset: 8832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !788, file: !551, line: 447, baseType: !1241, size: 128, offset: 8896)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !758)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !788, file: !551, line: 448, baseType: !1241, size: 128, offset: 9024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !788, file: !551, line: 449, baseType: !1241, size: 128, offset: 9152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !788, file: !551, line: 452, baseType: !1241, size: 128, offset: 9280)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !788, file: !551, line: 454, baseType: !7, size: 32, offset: 9408)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !788, file: !551, line: 455, baseType: !7, size: 32, offset: 9440)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !788, file: !551, line: 456, baseType: !7, size: 32, offset: 9472)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !788, file: !551, line: 458, baseType: !1249, size: 256, offset: 9504)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !551, line: 337, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !551, line: 327, size: 256, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1250, file: !551, line: 329, baseType: !31, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1250, file: !551, line: 330, baseType: !31, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1250, file: !551, line: 331, baseType: !31, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1250, file: !551, line: 332, baseType: !31, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1250, file: !551, line: 333, baseType: !31, size: 32, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1250, file: !551, line: 334, baseType: !31, size: 32, offset: 160)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1250, file: !551, line: 335, baseType: !31, size: 32, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1250, file: !551, line: 336, baseType: !31, size: 32, offset: 224)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !788, file: !551, line: 461, baseType: !93, size: 16, offset: 9760)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !788, file: !551, line: 462, baseType: !93, size: 16, offset: 9776)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !788, file: !551, line: 463, baseType: !93, size: 16, offset: 9792)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !788, file: !551, line: 465, baseType: !7, size: 32, offset: 9824)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !788, file: !551, line: 467, baseType: !7, size: 32, offset: 9856)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !788, file: !551, line: 468, baseType: !7, size: 32, offset: 9888)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !788, file: !551, line: 470, baseType: !7, size: 32, offset: 9920)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !788, file: !551, line: 471, baseType: !867, size: 64, offset: 9984)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !788, file: !551, line: 472, baseType: !867, size: 64, offset: 10048)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !788, file: !551, line: 473, baseType: !96, size: 64, offset: 10112)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !788, file: !551, line: 474, baseType: !96, size: 64, offset: 10176)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !788, file: !551, line: 475, baseType: !96, size: 64, offset: 10240)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !788, file: !551, line: 477, baseType: !1273, size: 512, offset: 10304)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !262)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !788, file: !551, line: 479, baseType: !862, size: 64, offset: 10816)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !788, file: !551, line: 480, baseType: !862, size: 64, offset: 10880)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !788, file: !551, line: 481, baseType: !95, size: 64, offset: 10944)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !788, file: !551, line: 482, baseType: !862, size: 64, offset: 11008)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !788, file: !551, line: 483, baseType: !862, size: 64, offset: 11072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !788, file: !551, line: 486, baseType: !1280, size: 9216, offset: 11136)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !1281)
!1281 = !{!582, !460, !1093, !1093}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !788, file: !551, line: 487, baseType: !1280, size: 9216, offset: 20352)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !788, file: !551, line: 488, baseType: !1284, size: 36864, offset: 29568)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !1285)
!1285 = !{!582, !460, !659, !659}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !788, file: !551, line: 489, baseType: !1284, size: 36864, offset: 66432)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !788, file: !551, line: 491, baseType: !1288, size: 768, offset: 103296)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 768, elements: !455)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !788, file: !551, line: 494, baseType: !1290, size: 2048, offset: 104064)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !1291)
!1291 = !{!464}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !788, file: !551, line: 495, baseType: !7, size: 32, offset: 106112)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !788, file: !551, line: 496, baseType: !7, size: 32, offset: 106144)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !788, file: !551, line: 500, baseType: !87, size: 16, offset: 106176)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !788, file: !551, line: 501, baseType: !87, size: 16, offset: 106192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !788, file: !551, line: 503, baseType: !87, size: 16, offset: 106208)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !788, file: !551, line: 504, baseType: !87, size: 16, offset: 106224)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !788, file: !551, line: 505, baseType: !96, size: 64, offset: 106240)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !788, file: !551, line: 506, baseType: !96, size: 64, offset: 106304)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !788, file: !551, line: 507, baseType: !1301, size: 64, offset: 106368)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !788, file: !551, line: 508, baseType: !93, size: 16, offset: 106432)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !788, file: !551, line: 509, baseType: !93, size: 16, offset: 106448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !788, file: !551, line: 512, baseType: !7, size: 32, offset: 106464)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !788, file: !551, line: 513, baseType: !7, size: 32, offset: 106496)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !788, file: !551, line: 514, baseType: !1307, size: 64, offset: 106560)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !788, file: !551, line: 515, baseType: !1307, size: 64, offset: 106624)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !788, file: !551, line: 520, baseType: !7, size: 32, offset: 106688)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !788, file: !551, line: 521, baseType: !1312, size: 544, offset: 106720)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !104)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !788, file: !551, line: 523, baseType: !1314, size: 64, offset: 107264)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1048}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !788, file: !551, line: 524, baseType: !1318, size: 64, offset: 107328)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!7, !1048, !1132, !862, !876}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !788, file: !551, line: 525, baseType: !1322, size: 64, offset: 107392)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!7, !791, !555}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !788, file: !551, line: 526, baseType: !1326, size: 64, offset: 107456)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!7, !1053, !7}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !788, file: !551, line: 527, baseType: !1314, size: 64, offset: 107520)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !788, file: !551, line: 528, baseType: !1314, size: 64, offset: 107584)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !788, file: !551, line: 529, baseType: !1314, size: 64, offset: 107648)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !788, file: !551, line: 530, baseType: !1333, size: 64, offset: 107712)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1053}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !788, file: !551, line: 531, baseType: !1314, size: 64, offset: 107776)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !788, file: !551, line: 532, baseType: !1171, size: 64, offset: 107840)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !788, file: !551, line: 533, baseType: !1171, size: 64, offset: 107904)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !788, file: !551, line: 534, baseType: !1314, size: 64, offset: 107968)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !788, file: !551, line: 535, baseType: !7, size: 32, offset: 108032)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !788, file: !551, line: 536, baseType: !1048, size: 64, offset: 108096)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !788, file: !551, line: 537, baseType: !876, size: 64, offset: 108160)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !788, file: !551, line: 538, baseType: !95, size: 64, offset: 108224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !788, file: !551, line: 539, baseType: !1345, size: 64, offset: 108288)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !788, file: !551, line: 540, baseType: !715, size: 64, offset: 108352)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !788, file: !551, line: 541, baseType: !1348, size: 768, offset: 108416)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 768, elements: !459)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !552, file: !551, line: 596, baseType: !715, size: 64, offset: 6789952)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !552, file: !551, line: 597, baseType: !1351, size: 192, offset: 6790016)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 192, elements: !581)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !551, line: 601, baseType: !7, size: 32, offset: 6790208)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !552, file: !551, line: 602, baseType: !7, size: 32, offset: 6790240)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !552, file: !551, line: 603, baseType: !7, size: 32, offset: 6790272)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !552, file: !551, line: 604, baseType: !7, size: 32, offset: 6790304)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !552, file: !551, line: 605, baseType: !7, size: 32, offset: 6790336)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !552, file: !551, line: 607, baseType: !1345, size: 64, offset: 6790400)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !552, file: !551, line: 608, baseType: !1359, size: 192, offset: 6790464)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 192, elements: !581)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !552, file: !551, line: 609, baseType: !1361, size: 64, offset: 6790656)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !552, file: !551, line: 610, baseType: !95, size: 64, offset: 6790720)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !552, file: !551, line: 611, baseType: !1365, size: 192, offset: 6790784)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 192, elements: !581)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !552, file: !551, line: 613, baseType: !7, size: 32, offset: 6790976)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !552, file: !551, line: 614, baseType: !7, size: 32, offset: 6791008)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !552, file: !551, line: 617, baseType: !786, size: 64, offset: 6791040)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !552, file: !551, line: 618, baseType: !1048, size: 64, offset: 6791104)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !552, file: !551, line: 619, baseType: !1371, size: 192, offset: 6791168)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 192, elements: !581)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !552, file: !551, line: 621, baseType: !7, size: 32, offset: 6791360)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !552, file: !551, line: 626, baseType: !1374, size: 64, offset: 6791424)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !1376, line: 136, size: 192, elements: !1377)
!1376 = !DIFile(filename: "ldecod_src/inc/erc_api.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9f38a583d5066807e951e2b61474101e")
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !1375, file: !1376, line: 137, baseType: !824, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "missingpocs", scope: !1375, file: !1376, line: 138, baseType: !7, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1375, file: !1376, line: 139, baseType: !1374, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !552, file: !551, line: 627, baseType: !1374, size: 64, offset: 6791488)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !552, file: !551, line: 629, baseType: !31, size: 32, offset: 6791552)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !552, file: !551, line: 630, baseType: !7, size: 32, offset: 6791584)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !552, file: !551, line: 634, baseType: !7, size: 32, offset: 6791616)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !552, file: !551, line: 635, baseType: !31, size: 32, offset: 6791648)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !552, file: !551, line: 638, baseType: !7, size: 32, offset: 6791680)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !552, file: !551, line: 638, baseType: !7, size: 32, offset: 6791712)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !552, file: !551, line: 638, baseType: !7, size: 32, offset: 6791744)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !552, file: !551, line: 639, baseType: !31, size: 32, offset: 6791776)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !552, file: !551, line: 639, baseType: !31, size: 32, offset: 6791808)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !552, file: !551, line: 640, baseType: !7, size: 32, offset: 6791840)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !552, file: !551, line: 641, baseType: !7, size: 32, offset: 6791872)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !552, file: !551, line: 642, baseType: !7, size: 32, offset: 6791904)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !552, file: !551, line: 645, baseType: !7, size: 32, offset: 6791936)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !552, file: !551, line: 647, baseType: !31, size: 32, offset: 6791968)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !552, file: !551, line: 648, baseType: !31, size: 32, offset: 6792000)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !552, file: !551, line: 649, baseType: !31, size: 32, offset: 6792032)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !552, file: !551, line: 650, baseType: !31, size: 32, offset: 6792064)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !552, file: !551, line: 651, baseType: !31, size: 32, offset: 6792096)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !552, file: !551, line: 652, baseType: !31, size: 32, offset: 6792128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !552, file: !551, line: 653, baseType: !31, size: 32, offset: 6792160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !552, file: !551, line: 655, baseType: !7, size: 32, offset: 6792192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !552, file: !551, line: 657, baseType: !7, size: 32, offset: 6792224)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !552, file: !551, line: 658, baseType: !7, size: 32, offset: 6792256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !552, file: !551, line: 661, baseType: !7, size: 32, offset: 6792288)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !552, file: !551, line: 662, baseType: !93, size: 16, offset: 6792320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !552, file: !551, line: 663, baseType: !93, size: 16, offset: 6792336)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !552, file: !551, line: 664, baseType: !757, size: 64, offset: 6792352)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !552, file: !551, line: 665, baseType: !7, size: 32, offset: 6792416)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !552, file: !551, line: 666, baseType: !7, size: 32, offset: 6792448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !552, file: !551, line: 667, baseType: !1412, size: 96, offset: 6792480)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !581)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !552, file: !551, line: 668, baseType: !580, size: 96, offset: 6792576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !552, file: !551, line: 670, baseType: !7, size: 32, offset: 6792672)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !552, file: !551, line: 671, baseType: !7, size: 32, offset: 6792704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !552, file: !551, line: 672, baseType: !7, size: 32, offset: 6792736)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !552, file: !551, line: 673, baseType: !7, size: 32, offset: 6792768)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !552, file: !551, line: 674, baseType: !7, size: 32, offset: 6792800)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !552, file: !551, line: 675, baseType: !7, size: 32, offset: 6792832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !552, file: !551, line: 676, baseType: !7, size: 32, offset: 6792864)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !552, file: !551, line: 677, baseType: !7, size: 32, offset: 6792896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !552, file: !551, line: 678, baseType: !7, size: 32, offset: 6792928)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !552, file: !551, line: 679, baseType: !7, size: 32, offset: 6792960)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !552, file: !551, line: 680, baseType: !1425, size: 192, offset: 6792992)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !1426)
!1426 = !{!582, !759}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !552, file: !551, line: 681, baseType: !1425, size: 192, offset: 6793184)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !552, file: !551, line: 682, baseType: !1425, size: 192, offset: 6793376)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !552, file: !551, line: 683, baseType: !7, size: 32, offset: 6793568)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !552, file: !551, line: 684, baseType: !7, size: 32, offset: 6793600)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !552, file: !551, line: 685, baseType: !7, size: 32, offset: 6793632)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !552, file: !551, line: 686, baseType: !7, size: 32, offset: 6793664)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !552, file: !551, line: 687, baseType: !7, size: 32, offset: 6793696)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !552, file: !551, line: 689, baseType: !7, size: 32, offset: 6793728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !552, file: !551, line: 692, baseType: !7, size: 32, offset: 6793760)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !552, file: !551, line: 693, baseType: !7, size: 32, offset: 6793792)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !552, file: !551, line: 700, baseType: !7, size: 32, offset: 6793824)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !552, file: !551, line: 701, baseType: !7, size: 32, offset: 6793856)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !552, file: !551, line: 702, baseType: !7, size: 32, offset: 6793888)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !552, file: !551, line: 703, baseType: !7, size: 32, offset: 6793920)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !552, file: !551, line: 704, baseType: !7, size: 32, offset: 6793952)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !552, file: !551, line: 705, baseType: !31, size: 32, offset: 6793984)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !552, file: !551, line: 706, baseType: !7, size: 32, offset: 6794016)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !552, file: !551, line: 707, baseType: !7, size: 32, offset: 6794048)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !552, file: !551, line: 710, baseType: !7, size: 32, offset: 6794080)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !552, file: !551, line: 711, baseType: !7, size: 32, offset: 6794112)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !552, file: !551, line: 712, baseType: !7, size: 32, offset: 6794144)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !552, file: !551, line: 713, baseType: !7, size: 32, offset: 6794176)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !552, file: !551, line: 714, baseType: !7, size: 32, offset: 6794208)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !552, file: !551, line: 716, baseType: !7, size: 32, offset: 6794240)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !552, file: !551, line: 717, baseType: !7, size: 32, offset: 6794272)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !552, file: !551, line: 719, baseType: !666, size: 64, offset: 6794304)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !552, file: !551, line: 720, baseType: !666, size: 64, offset: 6794368)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !552, file: !551, line: 722, baseType: !1455, size: 2560, offset: 6794432)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1456, line: 38, baseType: !1457)
!1456 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1456, line: 20, size: 2560, elements: !1458)
!1458 = !{!1459, !1460, !1462, !1463, !1464, !1468, !1469, !1470, !1471, !1472}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1457, file: !1456, line: 22, baseType: !571, size: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1457, file: !1456, line: 24, baseType: !1461, size: 192, offset: 1088)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 192, elements: !581)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1457, file: !1456, line: 25, baseType: !1461, size: 192, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1457, file: !1456, line: 26, baseType: !1461, size: 192, offset: 1472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1457, file: !1456, line: 31, baseType: !1465, size: 192, offset: 1664)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 192, elements: !581)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1457, file: !1456, line: 32, baseType: !1465, size: 192, offset: 1856)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1457, file: !1456, line: 33, baseType: !1465, size: 192, offset: 2048)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1457, file: !1456, line: 35, baseType: !580, size: 96, offset: 2240)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1457, file: !1456, line: 36, baseType: !580, size: 96, offset: 2336)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1457, file: !1456, line: 37, baseType: !580, size: 96, offset: 2432)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !552, file: !551, line: 723, baseType: !1455, size: 2560, offset: 6796992)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !552, file: !551, line: 724, baseType: !1455, size: 2560, offset: 6799552)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !552, file: !551, line: 725, baseType: !1455, size: 2560, offset: 6802112)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !552, file: !551, line: 728, baseType: !1455, size: 2560, offset: 6804672)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !552, file: !551, line: 729, baseType: !1455, size: 2560, offset: 6807232)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !552, file: !551, line: 730, baseType: !1455, size: 2560, offset: 6809792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !552, file: !551, line: 731, baseType: !1455, size: 2560, offset: 6812352)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !552, file: !551, line: 735, baseType: !31, size: 32, offset: 6814912)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !552, file: !551, line: 737, baseType: !7, size: 32, offset: 6814944)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !552, file: !551, line: 738, baseType: !7, size: 32, offset: 6814976)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !552, file: !551, line: 741, baseType: !1097, size: 64, offset: 6815040)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !552, file: !551, line: 744, baseType: !7, size: 32, offset: 6815104)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !552, file: !551, line: 746, baseType: !960, size: 32768, offset: 6815136)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !552, file: !551, line: 748, baseType: !7, size: 32, offset: 6847904)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !552, file: !551, line: 751, baseType: !7, size: 32, offset: 6847936)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !552, file: !551, line: 752, baseType: !7, size: 32, offset: 6847968)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !552, file: !551, line: 755, baseType: !7, size: 32, offset: 6848000)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !552, file: !551, line: 756, baseType: !7, size: 32, offset: 6848032)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !552, file: !551, line: 758, baseType: !7, size: 32, offset: 6848064)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !552, file: !551, line: 759, baseType: !7, size: 32, offset: 6848096)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !552, file: !551, line: 762, baseType: !862, size: 64, offset: 6848128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !552, file: !551, line: 763, baseType: !867, size: 64, offset: 6848192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !552, file: !551, line: 765, baseType: !94, size: 64, offset: 6848256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !552, file: !551, line: 766, baseType: !94, size: 64, offset: 6848320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !552, file: !551, line: 768, baseType: !1308, size: 64, offset: 6848384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !552, file: !551, line: 769, baseType: !1499, size: 3200, offset: 6848448)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 100)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !552, file: !551, line: 771, baseType: !876, size: 64, offset: 6851648)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !552, file: !551, line: 772, baseType: !1504, size: 192, offset: 6851712)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 192, elements: !581)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !552, file: !551, line: 773, baseType: !876, size: 64, offset: 6851904)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !552, file: !551, line: 776, baseType: !1507, size: 64, offset: 6851968)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !1509, line: 42, size: 192, elements: !1510)
!1509 = !DIFile(filename: "ldecod_src/inc/erc_globals.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c27fab662deb7c381592b003d3b76fc7")
!1510 = !{!1511, !1512, !1513, !1514}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "regionMode", scope: !1508, file: !1509, line: 44, baseType: !89, size: 8)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "xMin", scope: !1508, file: !1509, line: 45, baseType: !7, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "yMin", scope: !1508, file: !1509, line: 46, baseType: !7, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1508, file: !1509, line: 47, baseType: !580, size: 96, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !552, file: !551, line: 777, baseType: !1516, size: 64, offset: 6852032)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !1376, line: 79, size: 576, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1532, !1533, !1534, !1535, !1536}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nOfMBs", scope: !1517, file: !1376, line: 82, baseType: !7, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nOfSegments", scope: !1517, file: !1376, line: 84, baseType: !7, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "yCondition", scope: !1517, file: !1376, line: 87, baseType: !715, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uCondition", scope: !1517, file: !1376, line: 89, baseType: !715, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vCondition", scope: !1517, file: !1376, line: 91, baseType: !715, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "segments", scope: !1517, file: !1376, line: 94, baseType: !1525, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercSegment_t", file: !1376, line: 76, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercSegment_s", file: !1376, line: 71, size: 48, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "startMBPos", scope: !1527, file: !1376, line: 73, baseType: !93, size: 16)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "endMBPos", scope: !1527, file: !1376, line: 74, baseType: !93, size: 16, offset: 16)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fCorrupted", scope: !1527, file: !1376, line: 75, baseType: !97, size: 8, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "currSegment", scope: !1517, file: !1376, line: 95, baseType: !7, size: 32, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prevFrameYCondition", scope: !1517, file: !1376, line: 98, baseType: !715, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "currSegmentCorrupted", scope: !1517, file: !1376, line: 101, baseType: !7, size: 32, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nOfCorruptedSegments", scope: !1517, file: !1376, line: 103, baseType: !7, size: 32, offset: 480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "concealment", scope: !1517, file: !1376, line: 106, baseType: !7, size: 32, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !552, file: !551, line: 779, baseType: !7, size: 32, offset: 6852096)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !552, file: !551, line: 780, baseType: !791, size: 64, offset: 6852160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !552, file: !551, line: 781, baseType: !1540, size: 640, offset: 6852224)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !218)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !552, file: !551, line: 783, baseType: !1542, size: 64, offset: 6852864)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !551, line: 783, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !552, file: !551, line: 784, baseType: !1545, size: 64, offset: 6852928)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !1547, line: 22, size: 192, elements: !1548)
!1547 = !DIFile(filename: "ldecod_src/inc/nalu.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b3549c8c215a89e3e10b3ba1698c39db")
!1548 = !{!1549, !1554, !1558}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "OpenBitsFile", scope: !1546, file: !1547, line: 24, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !549, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "CloseBitsFile", scope: !1546, file: !1547, line: 25, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !549}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "GetNALU", scope: !1546, file: !1547, line: 26, baseType: !1559, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!7, !549, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !45, line: 74, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !45, line: 54, size: 576, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1572, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !1564, file: !45, line: 56, baseType: !7, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1564, file: !45, line: 57, baseType: !31, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1564, file: !45, line: 58, baseType: !31, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !1564, file: !45, line: 59, baseType: !7, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !1564, file: !45, line: 60, baseType: !1571, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !45, line: 43, baseType: !44)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !1564, file: !45, line: 61, baseType: !1573, size: 32, offset: 160)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !45, line: 51, baseType: !63)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1564, file: !45, line: 62, baseType: !666, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !1564, file: !45, line: 63, baseType: !865, size: 16, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !1564, file: !45, line: 65, baseType: !7, size: 32, offset: 288)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1564, file: !45, line: 66, baseType: !7, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1564, file: !45, line: 67, baseType: !7, size: 32, offset: 352)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1564, file: !45, line: 68, baseType: !7, size: 32, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1564, file: !45, line: 69, baseType: !7, size: 32, offset: 416)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1564, file: !45, line: 70, baseType: !7, size: 32, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1564, file: !45, line: 71, baseType: !7, size: 32, offset: 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1564, file: !45, line: 72, baseType: !7, size: 32, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !552, file: !551, line: 786, baseType: !1308, size: 64, offset: 6852992)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !552, file: !551, line: 788, baseType: !876, size: 64, offset: 6853056)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !552, file: !551, line: 789, baseType: !7, size: 32, offset: 6853120)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !552, file: !551, line: 790, baseType: !7, size: 32, offset: 6853152)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !552, file: !551, line: 792, baseType: !7, size: 32, offset: 6853184)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !552, file: !551, line: 794, baseType: !797, size: 64, offset: 6853248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !552, file: !551, line: 795, baseType: !797, size: 64, offset: 6853312)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !552, file: !551, line: 796, baseType: !1592, size: 128, offset: 6853376)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 128, elements: !758)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !552, file: !551, line: 800, baseType: !1594, size: 72, offset: 6853504)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 72, elements: !1595)
!1595 = !{!1200}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !552, file: !551, line: 802, baseType: !94, size: 64, offset: 6853632)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !552, file: !551, line: 803, baseType: !94, size: 64, offset: 6853696)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !552, file: !551, line: 804, baseType: !7, size: 32, offset: 6853760)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !552, file: !551, line: 807, baseType: !1600, size: 64, offset: 6853824)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !551, line: 807, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !552, file: !551, line: 810, baseType: !1603, size: 64, offset: 6853888)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !862, !1606, !7, !7, !7, !7, !7, !7}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !552, file: !551, line: 811, baseType: !1608, size: 64, offset: 6853952)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1048, !7, !7, !94, !1138}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !552, file: !551, line: 812, baseType: !1612, size: 64, offset: 6854016)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !7, !896, !896}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !552, file: !551, line: 813, baseType: !1616, size: 64, offset: 6854080)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !666, !1048, !7, !7, !876}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !552, file: !551, line: 814, baseType: !1616, size: 64, offset: 6854144)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !552, file: !551, line: 815, baseType: !1621, size: 64, offset: 6854208)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1132, !862, !666, !1048, !7, !876}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !552, file: !551, line: 816, baseType: !1621, size: 64, offset: 6854272)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !552, file: !551, line: 817, baseType: !1626, size: 64, offset: 6854336)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !862, !666, !1048, !7, !7, !876}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !552, file: !551, line: 818, baseType: !1626, size: 64, offset: 6854400)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !552, file: !551, line: 819, baseType: !1631, size: 64, offset: 6854464)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !862, !1606, !7, !7, !7, !7, !7, !7, !7, !7}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !552, file: !551, line: 821, baseType: !1635, size: 64, offset: 6854528)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !551, line: 561, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !551, line: 544, size: 640, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1637, file: !551, line: 546, baseType: !7, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1637, file: !551, line: 547, baseType: !7, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1637, file: !551, line: 548, baseType: !7, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1637, file: !551, line: 549, baseType: !7, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1637, file: !551, line: 550, baseType: !7, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1637, file: !551, line: 551, baseType: !7, size: 32, offset: 160)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1637, file: !551, line: 552, baseType: !666, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1637, file: !551, line: 553, baseType: !666, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1637, file: !551, line: 554, baseType: !666, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1637, file: !551, line: 555, baseType: !7, size: 32, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1637, file: !551, line: 556, baseType: !7, size: 32, offset: 416)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1637, file: !551, line: 557, baseType: !7, size: 32, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1637, file: !551, line: 558, baseType: !7, size: 32, offset: 480)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1637, file: !551, line: 559, baseType: !7, size: 32, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1637, file: !551, line: 560, baseType: !1654, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !552, file: !551, line: 822, baseType: !7, size: 32, offset: 6854592)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !552, file: !551, line: 823, baseType: !1657, size: 64, offset: 6854656)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !552, file: !551, line: 824, baseType: !7, size: 32, offset: 6854720)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !552, file: !551, line: 825, baseType: !7, size: 32, offset: 6854752)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !552, file: !551, line: 826, baseType: !7, size: 32, offset: 6854784)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !552, file: !551, line: 827, baseType: !7, size: 32, offset: 6854816)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !552, file: !551, line: 829, baseType: !7, size: 32, offset: 6854848)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !552, file: !551, line: 830, baseType: !7, size: 32, offset: 6854880)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !552, file: !551, line: 831, baseType: !7, size: 32, offset: 6854912)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !552, file: !551, line: 835, baseType: !638, size: 64, offset: 6854976)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1668 = !DILocalVariable(name: "sps", arg: 1, scope: !434, file: !3, line: 698, type: !437)
!1669 = !DILocalVariable(name: "p_Vid", arg: 2, scope: !434, file: !3, line: 698, type: !549)
!1670 = !DILocalVariable(name: "source", arg: 3, scope: !434, file: !3, line: 698, type: !1666)
!1671 = !DILocalVariable(name: "output", arg: 4, scope: !434, file: !3, line: 698, type: !1666)
!1672 = !DILocalVariable(name: "p_Inp", scope: !434, file: !3, line: 700, type: !803)
!1673 = !DILocalVariable(name: "crop_left", scope: !434, file: !3, line: 704, type: !7)
!1674 = !DILocalVariable(name: "crop_right", scope: !434, file: !3, line: 704, type: !7)
!1675 = !DILocalVariable(name: "crop_top", scope: !434, file: !3, line: 705, type: !7)
!1676 = !DILocalVariable(name: "crop_bottom", scope: !434, file: !3, line: 705, type: !7)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1678, size: 128, elements: !1109)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1679 = !DIGlobalVariableExpression(var: !1680, expr: !DIExpression())
!1680 = distinct !DIGlobalVariable(name: "SubHeightC", scope: !434, file: !3, line: 702, type: !1677, isLocal: true, isDefinition: true)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !3, line: 958, type: !1683, isLocal: true, isDefinition: true)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 808, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 101)
!1686 = !DIGlobalVariableExpression(var: !1687, expr: !DIExpression())
!1687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 963, type: !1688, isLocal: true, isDefinition: true)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 896, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 112)
!1691 = !DIGlobalVariableExpression(var: !1692, expr: !DIExpression())
!1692 = distinct !DIGlobalVariable(scope: null, file: !3, line: 972, type: !1693, isLocal: true, isDefinition: true)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 952, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 119)
!1696 = !DIGlobalVariableExpression(var: !1697, expr: !DIExpression())
!1697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 989, type: !195, isLocal: true, isDefinition: true)
!1698 = !DIGlobalVariableExpression(var: !1699, expr: !DIExpression())
!1699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 990, type: !185, isLocal: true, isDefinition: true)
!1700 = !DIGlobalVariableExpression(var: !1701, expr: !DIExpression())
!1701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 997, type: !1702, isLocal: true, isDefinition: true)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 384, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 48)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1028, type: !102, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1033, type: !1709, isLocal: true, isDefinition: true)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 408, elements: !1710)
!1710 = !{!1711}
!1711 = !DISubrange(count: 51)
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1035, type: !1714, isLocal: true, isDefinition: true)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 496, elements: !1715)
!1715 = !{!1716}
!1716 = !DISubrange(count: 62)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1037, type: !1714, isLocal: true, isDefinition: true)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1039, type: !1721, isLocal: true, isDefinition: true)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 456, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 57)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1041, type: !1721, isLocal: true, isDefinition: true)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1043, type: !429, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1045, type: !429, isLocal: true, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1047, type: !1732, isLocal: true, isDefinition: true)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 488, elements: !1733)
!1733 = !{!1734}
!1734 = !DISubrange(count: 61)
!1735 = !DIGlobalVariableExpression(var: !1736, expr: !DIExpression())
!1736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1049, type: !1732, isLocal: true, isDefinition: true)
!1737 = !DIGlobalVariableExpression(var: !1738, expr: !DIExpression())
!1738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1053, type: !1739, isLocal: true, isDefinition: true)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !658)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1057, type: !1742, isLocal: true, isDefinition: true)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 152, elements: !1743)
!1743 = !{!1744}
!1744 = !DISubrange(count: 19)
!1745 = !DIGlobalVariableExpression(var: !1746, expr: !DIExpression())
!1746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1061, type: !1747, isLocal: true, isDefinition: true)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 480, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 60)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1063, type: !344, isLocal: true, isDefinition: true)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1066, type: !1742, isLocal: true, isDefinition: true)
!1754 = !DIGlobalVariableExpression(var: !1755, expr: !DIExpression())
!1755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1070, type: !1747, isLocal: true, isDefinition: true)
!1756 = !DIGlobalVariableExpression(var: !1757, expr: !DIExpression())
!1757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1072, type: !344, isLocal: true, isDefinition: true)
!1758 = !DIGlobalVariableExpression(var: !1759, expr: !DIExpression())
!1759 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1077, type: !143, isLocal: true, isDefinition: true)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1081, type: !1762, isLocal: true, isDefinition: true)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 512, elements: !1291)
!1763 = !DIGlobalVariableExpression(var: !1764, expr: !DIExpression())
!1764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1083, type: !272, isLocal: true, isDefinition: true)
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1085, type: !143, isLocal: true, isDefinition: true)
!1767 = !DIGlobalVariableExpression(var: !1768, expr: !DIExpression())
!1768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1089, type: !1762, isLocal: true, isDefinition: true)
!1769 = !DIGlobalVariableExpression(var: !1770, expr: !DIExpression())
!1770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1091, type: !272, isLocal: true, isDefinition: true)
!1771 = !DIGlobalVariableExpression(var: !1772, expr: !DIExpression())
!1772 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1094, type: !165, isLocal: true, isDefinition: true)
!1773 = !DIGlobalVariableExpression(var: !1774, expr: !DIExpression())
!1774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1099, type: !1775, isLocal: true, isDefinition: true)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 424, elements: !1776)
!1776 = !{!1777}
!1777 = !DISubrange(count: 53)
!1778 = !DIGlobalVariableExpression(var: !1779, expr: !DIExpression())
!1779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1101, type: !1780, isLocal: true, isDefinition: true)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 552, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 69)
!1783 = !DIGlobalVariableExpression(var: !1784, expr: !DIExpression())
!1784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1103, type: !1780, isLocal: true, isDefinition: true)
!1785 = !DIGlobalVariableExpression(var: !1786, expr: !DIExpression())
!1786 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1105, type: !1787, isLocal: true, isDefinition: true)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 648, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 81)
!1790 = !DIGlobalVariableExpression(var: !1791, expr: !DIExpression())
!1791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1107, type: !1792, isLocal: true, isDefinition: true)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 576, elements: !1793)
!1793 = !{!1794}
!1794 = !DISubrange(count: 72)
!1795 = !DIGlobalVariableExpression(var: !1796, expr: !DIExpression())
!1796 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1109, type: !1797, isLocal: true, isDefinition: true)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 592, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 74)
!1800 = !DIGlobalVariableExpression(var: !1801, expr: !DIExpression())
!1801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1113, type: !1802, isLocal: true, isDefinition: true)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 80, elements: !1803)
!1803 = !{!1204}
!1804 = !DIGlobalVariableExpression(var: !1805, expr: !DIExpression())
!1805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1114, type: !138, isLocal: true, isDefinition: true)
!1806 = !DIGlobalVariableExpression(var: !1807, expr: !DIExpression())
!1807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1118, type: !1792, isLocal: true, isDefinition: true)
!1808 = !DIGlobalVariableExpression(var: !1809, expr: !DIExpression())
!1809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1120, type: !1810, isLocal: true, isDefinition: true)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 672, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 84)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1122, type: !1815, isLocal: true, isDefinition: true)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 600, elements: !1816)
!1816 = !{!1817}
!1817 = !DISubrange(count: 75)
!1818 = !DIGlobalVariableExpression(var: !1819, expr: !DIExpression())
!1819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1124, type: !1820, isLocal: true, isDefinition: true)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 616, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 77)
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1129, type: !138, isLocal: true, isDefinition: true)
!1825 = !DIGlobalVariableExpression(var: !1826, expr: !DIExpression())
!1826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1130, type: !195, isLocal: true, isDefinition: true)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1134, type: !1829, isLocal: true, isDefinition: true)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 624, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 78)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1136, type: !155, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1138, type: !180, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1157, type: !133, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1159, type: !133, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1160, type: !133, isLocal: true, isDefinition: true)
!1842 = !DIGlobalVariableExpression(var: !1843, expr: !DIExpression())
!1843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1163, type: !254, isLocal: true, isDefinition: true)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1164, type: !254, isLocal: true, isDefinition: true)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1165, type: !1594, isLocal: true, isDefinition: true)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1167, type: !110, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1168, type: !148, isLocal: true, isDefinition: true)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1169, type: !180, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1170, type: !1742, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1178, type: !143, isLocal: true, isDefinition: true)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1185, type: !1860, isLocal: true, isDefinition: true)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 376, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: 47)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1197, type: !217, isLocal: true, isDefinition: true)
!1865 = !DIGlobalVariableExpression(var: !1866, expr: !DIExpression())
!1866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1198, type: !190, isLocal: true, isDefinition: true)
!1867 = !DIGlobalVariableExpression(var: !1868, expr: !DIExpression())
!1868 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1202, type: !261, isLocal: true, isDefinition: true)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1203, type: !247, isLocal: true, isDefinition: true)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1206, type: !138, isLocal: true, isDefinition: true)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1207, type: !1742, isLocal: true, isDefinition: true)
!1875 = !DIGlobalVariableExpression(var: !1876, expr: !DIExpression())
!1876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1208, type: !283, isLocal: true, isDefinition: true)
!1877 = !DIGlobalVariableExpression(var: !1878, expr: !DIExpression())
!1878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1210, type: !110, isLocal: true, isDefinition: true)
!1879 = !DIGlobalVariableExpression(var: !1880, expr: !DIExpression())
!1880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1213, type: !148, isLocal: true, isDefinition: true)
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1217, type: !115, isLocal: true, isDefinition: true)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1218, type: !148, isLocal: true, isDefinition: true)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1399, type: !261, isLocal: true, isDefinition: true)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "ZZ_SCAN8", scope: !2, file: !1889, line: 27, type: !1890, isLocal: true, isDefinition: true)
!1889 = !DIFile(filename: "ldecod_src/inc/parset.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1b4400c3096806a6f80ce4d1614e45c")
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 512, elements: !1291)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1892 = !DIGlobalVariableExpression(var: !1893, expr: !DIExpression())
!1893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !102, isLocal: true, isDefinition: true)
!1894 = !DIGlobalVariableExpression(var: !1895, expr: !DIExpression())
!1895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !195, isLocal: true, isDefinition: true)
!1896 = !DIGlobalVariableExpression(var: !1897, expr: !DIExpression())
!1897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !148, isLocal: true, isDefinition: true)
!1898 = !DIGlobalVariableExpression(var: !1899, expr: !DIExpression())
!1899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !115, isLocal: true, isDefinition: true)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 128, elements: !262)
!1901 = !{i32 7, !"Dwarf Version", i32 5}
!1902 = !{i32 2, !"Debug Info Version", i32 3}
!1903 = !{i32 1, !"wchar_size", i32 4}
!1904 = !{i32 8, !"PIC Level", i32 2}
!1905 = !{i32 7, !"PIE Level", i32 2}
!1906 = !{i32 7, !"uwtable", i32 2}
!1907 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1908 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1909 = distinct !DISubprogram(name: "Scaling_List", scope: !3, file: !3, line: 37, type: !1910, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !94, !7, !94, !1025}
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921}
!1913 = !DILocalVariable(name: "scalingList", arg: 1, scope: !1909, file: !3, line: 37, type: !94)
!1914 = !DILocalVariable(name: "sizeOfScalingList", arg: 2, scope: !1909, file: !3, line: 37, type: !7)
!1915 = !DILocalVariable(name: "UseDefaultScalingMatrix", arg: 3, scope: !1909, file: !3, line: 37, type: !94)
!1916 = !DILocalVariable(name: "s", arg: 4, scope: !1909, file: !3, line: 37, type: !1025)
!1917 = !DILocalVariable(name: "j", scope: !1909, file: !3, line: 39, type: !7)
!1918 = !DILocalVariable(name: "scanj", scope: !1909, file: !3, line: 39, type: !7)
!1919 = !DILocalVariable(name: "delta_scale", scope: !1909, file: !3, line: 40, type: !7)
!1920 = !DILocalVariable(name: "lastScale", scope: !1909, file: !3, line: 40, type: !7)
!1921 = !DILocalVariable(name: "nextScale", scope: !1909, file: !3, line: 40, type: !7)
!1922 = !DILocation(line: 0, scope: !1909)
!1923 = !DILocation(line: 45, column: 13, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 45, column: 3)
!1925 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 45, column: 3)
!1926 = !DILocation(line: 45, column: 3, scope: !1925)
!1927 = !DILocation(line: 47, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 46, column: 3)
!1929 = !DILocation(line: 47, scope: !1928)
!1930 = !DILocation(line: 49, column: 17, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 49, column: 8)
!1932 = !DILocation(line: 49, column: 8, scope: !1928)
!1933 = !DILocation(line: 51, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 50, column: 5)
!1935 = !DILocation(line: 52, column: 30, scope: !1934)
!1936 = !DILocation(line: 52, column: 44, scope: !1934)
!1937 = !DILocation(line: 52, column: 51, scope: !1934)
!1938 = !DILocation(line: 53, column: 54, scope: !1934)
!1939 = !DILocation(line: 53, column: 32, scope: !1934)
!1940 = !DILocation(line: 56, column: 36, scope: !1928)
!1941 = !DILocation(line: 56, column: 26, scope: !1928)
!1942 = !DILocation(line: 56, column: 5, scope: !1928)
!1943 = !DILocation(line: 56, column: 24, scope: !1928)
!1944 = !DILocation(line: 45, column: 34, scope: !1924)
!1945 = distinct !{!1945, !1926, !1946}
!1946 = !DILocation(line: 58, column: 3, scope: !1925)
!1947 = !DILocation(line: 59, column: 1, scope: !1909)
!1948 = !DISubprogram(name: "se_v", scope: !1949, file: !1949, line: 70, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1949 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!7, !1553, !1025}
!1952 = distinct !DISubprogram(name: "InterpretSPS", scope: !3, file: !3, line: 62, type: !1953, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!7, !549, !1020, !437}
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1956 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1952, file: !3, line: 62, type: !549)
!1957 = !DILocalVariable(name: "p", arg: 2, scope: !1952, file: !3, line: 62, type: !1020)
!1958 = !DILocalVariable(name: "sps", arg: 3, scope: !1952, file: !3, line: 62, type: !437)
!1959 = !DILocalVariable(name: "i", scope: !1952, file: !3, line: 64, type: !31)
!1960 = !DILocalVariable(name: "n_ScalingList", scope: !1952, file: !3, line: 65, type: !31)
!1961 = !DILocalVariable(name: "reserved_zero", scope: !1952, file: !3, line: 66, type: !7)
!1962 = !DILocalVariable(name: "s", scope: !1952, file: !3, line: 67, type: !1025)
!1963 = !DILocation(line: 0, scope: !1952)
!1964 = !DILocation(line: 67, column: 21, scope: !1952)
!1965 = !DILocation(line: 74, column: 3, scope: !1952)
!1966 = !DILocation(line: 74, column: 10, scope: !1952)
!1967 = !DILocation(line: 74, column: 19, scope: !1952)
!1968 = !DILocation(line: 76, column: 49, scope: !1952)
!1969 = !DILocation(line: 76, column: 8, scope: !1952)
!1970 = !DILocation(line: 76, column: 47, scope: !1952)
!1971 = !DILocation(line: 78, column: 43, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 78, column: 7)
!1973 = !DILocation(line: 92, column: 5, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 91, column: 3)
!1975 = !DILocation(line: 93, column: 5, scope: !1974)
!1976 = !DILocation(line: 96, column: 49, scope: !1952)
!1977 = !DILocation(line: 96, column: 8, scope: !1952)
!1978 = !DILocation(line: 96, column: 47, scope: !1952)
!1979 = !DILocation(line: 97, column: 49, scope: !1952)
!1980 = !DILocation(line: 97, column: 8, scope: !1952)
!1981 = !DILocation(line: 97, column: 47, scope: !1952)
!1982 = !DILocation(line: 98, column: 49, scope: !1952)
!1983 = !DILocation(line: 98, column: 8, scope: !1952)
!1984 = !DILocation(line: 98, column: 47, scope: !1952)
!1985 = !DILocation(line: 99, column: 49, scope: !1952)
!1986 = !DILocation(line: 99, column: 8, scope: !1952)
!1987 = !DILocation(line: 99, column: 47, scope: !1952)
!1988 = !DILocation(line: 101, column: 49, scope: !1952)
!1989 = !DILocation(line: 101, column: 8, scope: !1952)
!1990 = !DILocation(line: 101, column: 47, scope: !1952)
!1991 = !DILocation(line: 102, column: 49, scope: !1952)
!1992 = !DILocation(line: 108, column: 49, scope: !1952)
!1993 = !DILocation(line: 108, column: 8, scope: !1952)
!1994 = !DILocation(line: 108, column: 47, scope: !1952)
!1995 = !DILocation(line: 110, column: 49, scope: !1952)
!1996 = !DILocation(line: 110, column: 8, scope: !1952)
!1997 = !DILocation(line: 110, column: 47, scope: !1952)
!1998 = !DILocation(line: 113, column: 8, scope: !1952)
!1999 = !DILocation(line: 113, column: 26, scope: !1952)
!2000 = !DILocation(line: 114, column: 8, scope: !1952)
!2001 = !DILocation(line: 114, column: 32, scope: !1952)
!2002 = !DILocation(line: 115, column: 8, scope: !1952)
!2003 = !DILocation(line: 115, column: 32, scope: !1952)
!2004 = !DILocation(line: 116, column: 10, scope: !1952)
!2005 = !DILocation(line: 116, column: 34, scope: !1952)
!2006 = !DILocation(line: 117, column: 8, scope: !1952)
!2007 = !DILocation(line: 117, column: 35, scope: !1952)
!2008 = !DILocation(line: 119, column: 12, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 119, column: 6)
!2010 = !DILocation(line: 119, column: 38, scope: !2009)
!2011 = !DILocation(line: 130, column: 51, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 129, column: 3)
!2013 = !DILocation(line: 130, column: 49, scope: !2012)
!2014 = !DILocation(line: 132, column: 31, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 132, column: 8)
!2016 = !DILocation(line: 132, column: 8, scope: !2012)
!2017 = !DILocation(line: 134, column: 51, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 133, column: 5)
!2019 = !DILocation(line: 134, column: 49, scope: !2018)
!2020 = !DILocation(line: 135, column: 5, scope: !2018)
!2021 = !DILocation(line: 137, column: 51, scope: !2012)
!2022 = !DILocation(line: 137, column: 49, scope: !2012)
!2023 = !DILocation(line: 138, column: 51, scope: !2012)
!2024 = !DILocation(line: 138, column: 49, scope: !2012)
!2025 = !DILocation(line: 140, column: 14, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 140, column: 8)
!2027 = !DILocation(line: 140, column: 38, scope: !2026)
!2028 = !DILocation(line: 140, column: 58, scope: !2026)
!2029 = !DILocation(line: 141, column: 7, scope: !2026)
!2030 = !DILocation(line: 143, column: 53, scope: !2012)
!2031 = !DILocation(line: 143, column: 51, scope: !2012)
!2032 = !DILocation(line: 145, column: 51, scope: !2012)
!2033 = !DILocation(line: 145, column: 10, scope: !2012)
!2034 = !DILocation(line: 145, column: 49, scope: !2012)
!2035 = !DILocation(line: 147, column: 8, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 147, column: 8)
!2037 = !DILocation(line: 147, column: 8, scope: !2012)
!2038 = !DILocation(line: 149, column: 29, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 148, column: 5)
!2040 = !DILocation(line: 149, column: 47, scope: !2039)
!2041 = !DILocation(line: 149, column: 23, scope: !2039)
!2042 = !DILocation(line: 150, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 150, column: 7)
!2044 = !DILocation(line: 152, column: 51, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 151, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 150, column: 7)
!2047 = !DILocation(line: 152, column: 9, scope: !2045)
!2048 = !DILocation(line: 152, column: 49, scope: !2045)
!2049 = !DILocation(line: 153, column: 12, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 153, column: 12)
!2051 = !DILocation(line: 153, column: 12, scope: !2045)
!2052 = !DILocation(line: 155, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 155, column: 14)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 154, column: 9)
!2055 = !DILocation(line: 155, column: 14, scope: !2054)
!2056 = !DILocation(line: 156, column: 26, scope: !2053)
!2057 = !DILocation(line: 156, column: 55, scope: !2053)
!2058 = !DILocation(line: 0, scope: !1909, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 156, column: 13, scope: !2053)
!2060 = !DILocation(line: 47, column: 13, scope: !1928, inlinedAt: !2059)
!2061 = !DILocation(line: 47, scope: !1928, inlinedAt: !2059)
!2062 = !DILocation(line: 49, column: 17, scope: !1931, inlinedAt: !2059)
!2063 = !DILocation(line: 49, column: 8, scope: !1928, inlinedAt: !2059)
!2064 = !DILocation(line: 51, column: 21, scope: !1934, inlinedAt: !2059)
!2065 = !DILocation(line: 52, column: 30, scope: !1934, inlinedAt: !2059)
!2066 = !DILocation(line: 52, column: 44, scope: !1934, inlinedAt: !2059)
!2067 = !DILocation(line: 52, column: 51, scope: !1934, inlinedAt: !2059)
!2068 = !DILocation(line: 53, column: 54, scope: !1934, inlinedAt: !2059)
!2069 = !DILocation(line: 53, column: 32, scope: !1934, inlinedAt: !2059)
!2070 = !DILocation(line: 56, column: 36, scope: !1928, inlinedAt: !2059)
!2071 = !DILocation(line: 56, column: 26, scope: !1928, inlinedAt: !2059)
!2072 = !DILocation(line: 56, column: 5, scope: !1928, inlinedAt: !2059)
!2073 = !DILocation(line: 56, column: 24, scope: !1928, inlinedAt: !2059)
!2074 = !DILocation(line: 45, column: 34, scope: !1924, inlinedAt: !2059)
!2075 = !DILocation(line: 45, column: 13, scope: !1924, inlinedAt: !2059)
!2076 = !DILocation(line: 45, column: 3, scope: !1925, inlinedAt: !2059)
!2077 = distinct !{!2077, !2076, !2078}
!2078 = !DILocation(line: 58, column: 3, scope: !1925, inlinedAt: !2059)
!2079 = !DILocation(line: 158, column: 47, scope: !2053)
!2080 = !DILocation(line: 158, column: 26, scope: !2053)
!2081 = !DILocation(line: 158, column: 57, scope: !2053)
!2082 = !DILocation(line: 0, scope: !1909, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 158, column: 13, scope: !2053)
!2084 = !DILocation(line: 45, column: 3, scope: !1925, inlinedAt: !2083)
!2085 = !DILocation(line: 47, column: 13, scope: !1928, inlinedAt: !2083)
!2086 = !DILocation(line: 47, scope: !1928, inlinedAt: !2083)
!2087 = !DILocation(line: 49, column: 17, scope: !1931, inlinedAt: !2083)
!2088 = !DILocation(line: 49, column: 8, scope: !1928, inlinedAt: !2083)
!2089 = !DILocation(line: 51, column: 21, scope: !1934, inlinedAt: !2083)
!2090 = !DILocation(line: 52, column: 30, scope: !1934, inlinedAt: !2083)
!2091 = !DILocation(line: 52, column: 44, scope: !1934, inlinedAt: !2083)
!2092 = !DILocation(line: 52, column: 51, scope: !1934, inlinedAt: !2083)
!2093 = !DILocation(line: 53, column: 54, scope: !1934, inlinedAt: !2083)
!2094 = !DILocation(line: 53, column: 32, scope: !1934, inlinedAt: !2083)
!2095 = !DILocation(line: 56, column: 36, scope: !1928, inlinedAt: !2083)
!2096 = !DILocation(line: 56, column: 26, scope: !1928, inlinedAt: !2083)
!2097 = !DILocation(line: 56, column: 5, scope: !1928, inlinedAt: !2083)
!2098 = !DILocation(line: 56, column: 24, scope: !1928, inlinedAt: !2083)
!2099 = !DILocation(line: 45, column: 34, scope: !1924, inlinedAt: !2083)
!2100 = !DILocation(line: 45, column: 13, scope: !1924, inlinedAt: !2083)
!2101 = distinct !{!2101, !2084, !2102}
!2102 = !DILocation(line: 58, column: 3, scope: !1925, inlinedAt: !2083)
!2103 = !DILocation(line: 150, column: 34, scope: !2046)
!2104 = !DILocation(line: 150, column: 17, scope: !2046)
!2105 = distinct !{!2105, !2042, !2106}
!2106 = !DILocation(line: 160, column: 7, scope: !2043)
!2107 = !DILocation(line: 164, column: 49, scope: !1952)
!2108 = !DILocation(line: 164, column: 8, scope: !1952)
!2109 = !DILocation(line: 164, column: 47, scope: !1952)
!2110 = !DILocation(line: 165, column: 49, scope: !1952)
!2111 = !DILocation(line: 165, column: 8, scope: !1952)
!2112 = !DILocation(line: 165, column: 47, scope: !1952)
!2113 = !DILocation(line: 167, column: 7, scope: !1952)
!2114 = !DILocation(line: 168, column: 46, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 167, column: 7)
!2116 = !DILocation(line: 168, column: 10, scope: !2115)
!2117 = !DILocation(line: 168, column: 44, scope: !2115)
!2118 = !DILocation(line: 168, column: 5, scope: !2115)
!2119 = !DILocation(line: 171, column: 50, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 170, column: 3)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 169, column: 12)
!2122 = !DILocation(line: 171, column: 10, scope: !2120)
!2123 = !DILocation(line: 171, column: 48, scope: !2120)
!2124 = !DILocation(line: 172, column: 50, scope: !2120)
!2125 = !DILocation(line: 172, column: 10, scope: !2120)
!2126 = !DILocation(line: 172, column: 48, scope: !2120)
!2127 = !DILocation(line: 173, column: 50, scope: !2120)
!2128 = !DILocation(line: 173, column: 10, scope: !2120)
!2129 = !DILocation(line: 173, column: 48, scope: !2120)
!2130 = !DILocation(line: 174, column: 50, scope: !2120)
!2131 = !DILocation(line: 174, column: 10, scope: !2120)
!2132 = !DILocation(line: 174, column: 48, scope: !2120)
!2133 = !DILocation(line: 175, column: 15, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 175, column: 5)
!2135 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 175, column: 5)
!2136 = !DILocation(line: 175, column: 5, scope: !2135)
!2137 = !DILocation(line: 176, column: 52, scope: !2134)
!2138 = !DILocation(line: 176, column: 7, scope: !2134)
!2139 = !DILocation(line: 176, column: 50, scope: !2134)
!2140 = !DILocation(line: 175, column: 61, scope: !2134)
!2141 = !DILocation(line: 175, column: 21, scope: !2134)
!2142 = distinct !{!2142, !2136, !2143}
!2143 = !DILocation(line: 176, column: 105, scope: !2135)
!2144 = !DILocation(line: 178, column: 48, scope: !1952)
!2145 = !DILocation(line: 178, column: 8, scope: !1952)
!2146 = !DILocation(line: 178, column: 46, scope: !1952)
!2147 = !DILocation(line: 179, column: 48, scope: !1952)
!2148 = !DILocation(line: 179, column: 8, scope: !1952)
!2149 = !DILocation(line: 179, column: 46, scope: !1952)
!2150 = !DILocation(line: 180, column: 48, scope: !1952)
!2151 = !DILocation(line: 180, column: 8, scope: !1952)
!2152 = !DILocation(line: 180, column: 46, scope: !1952)
!2153 = !DILocation(line: 181, column: 48, scope: !1952)
!2154 = !DILocation(line: 181, column: 8, scope: !1952)
!2155 = !DILocation(line: 181, column: 46, scope: !1952)
!2156 = !DILocation(line: 182, column: 48, scope: !1952)
!2157 = !DILocation(line: 182, column: 8, scope: !1952)
!2158 = !DILocation(line: 182, column: 46, scope: !1952)
!2159 = !DILocation(line: 183, column: 8, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 183, column: 7)
!2161 = !DILocation(line: 183, column: 7, scope: !1952)
!2162 = !DILocation(line: 185, column: 48, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 184, column: 3)
!2164 = !DILocation(line: 185, column: 10, scope: !2163)
!2165 = !DILocation(line: 185, column: 46, scope: !2163)
!2166 = !DILocation(line: 186, column: 3, scope: !2163)
!2167 = !DILocation(line: 187, column: 48, scope: !1952)
!2168 = !DILocation(line: 187, column: 8, scope: !1952)
!2169 = !DILocation(line: 187, column: 46, scope: !1952)
!2170 = !DILocation(line: 188, column: 48, scope: !1952)
!2171 = !DILocation(line: 188, column: 8, scope: !1952)
!2172 = !DILocation(line: 188, column: 46, scope: !1952)
!2173 = !DILocation(line: 190, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 190, column: 7)
!2175 = !DILocation(line: 190, column: 7, scope: !1952)
!2176 = !DILocation(line: 192, column: 49, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 191, column: 3)
!2178 = !DILocation(line: 192, column: 10, scope: !2177)
!2179 = !DILocation(line: 192, column: 47, scope: !2177)
!2180 = !DILocation(line: 193, column: 49, scope: !2177)
!2181 = !DILocation(line: 193, column: 10, scope: !2177)
!2182 = !DILocation(line: 193, column: 47, scope: !2177)
!2183 = !DILocation(line: 194, column: 49, scope: !2177)
!2184 = !DILocation(line: 194, column: 10, scope: !2177)
!2185 = !DILocation(line: 194, column: 47, scope: !2177)
!2186 = !DILocation(line: 195, column: 49, scope: !2177)
!2187 = !DILocation(line: 195, column: 10, scope: !2177)
!2188 = !DILocation(line: 195, column: 47, scope: !2177)
!2189 = !DILocation(line: 196, column: 3, scope: !2177)
!2190 = !DILocation(line: 197, column: 58, scope: !1952)
!2191 = !DILocation(line: 197, column: 8, scope: !1952)
!2192 = !DILocation(line: 197, column: 46, scope: !1952)
!2193 = !DILocalVariable(name: "sps", arg: 1, scope: !2194, file: !3, line: 270, type: !437)
!2194 = distinct !DISubprogram(name: "InitVUI", scope: !3, file: !3, line: 270, type: !2195, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !437}
!2197 = !{!2193}
!2198 = !DILocation(line: 0, scope: !2194, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 199, column: 3, scope: !1952)
!2200 = !DILocation(line: 272, column: 27, scope: !2194, inlinedAt: !2199)
!2201 = !DILocation(line: 272, column: 47, scope: !2194, inlinedAt: !2199)
!2202 = !DILocation(line: 200, column: 3, scope: !1952)
!2203 = !DILocation(line: 202, column: 14, scope: !1952)
!2204 = !DILocation(line: 203, column: 3, scope: !1952)
!2205 = !DILocation(line: 204, column: 1, scope: !1952)
!2206 = !DISubprogram(name: "u_v", scope: !1949, file: !1949, line: 73, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!7, !7, !1553, !1025}
!2209 = !DISubprogram(name: "printf", scope: !2210, file: !2210, line: 356, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2210 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!7, !2213, null}
!2213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2216 = !DISubprogram(name: "u_1", scope: !1949, file: !1949, line: 72, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2217 = !DISubprogram(name: "ue_v", scope: !1949, file: !1949, line: 71, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubprogram(name: "error", scope: !551, file: !551, line: 940, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !1553, !7}
!2221 = !DILocation(line: 0, scope: !2194)
!2222 = !DILocation(line: 272, column: 27, scope: !2194)
!2223 = !DILocation(line: 272, column: 47, scope: !2194)
!2224 = !DILocation(line: 273, column: 1, scope: !2194)
!2225 = distinct !DISubprogram(name: "ReadVUI", scope: !3, file: !3, line: 276, type: !2226, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!7, !1020, !437}
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "p", arg: 1, scope: !2225, file: !3, line: 276, type: !1020)
!2230 = !DILocalVariable(name: "sps", arg: 2, scope: !2225, file: !3, line: 276, type: !437)
!2231 = !DILocalVariable(name: "s", scope: !2225, file: !3, line: 278, type: !1025)
!2232 = !DILocation(line: 0, scope: !2225)
!2233 = !DILocation(line: 278, column: 21, scope: !2225)
!2234 = !DILocation(line: 279, column: 12, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 279, column: 7)
!2236 = !DILocation(line: 279, column: 7, scope: !2235)
!2237 = !DILocation(line: 279, column: 7, scope: !2225)
!2238 = !DILocation(line: 281, column: 62, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 280, column: 3)
!2240 = !DILocation(line: 281, column: 10, scope: !2239)
!2241 = !DILocation(line: 281, column: 60, scope: !2239)
!2242 = !DILocation(line: 282, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 282, column: 9)
!2244 = !DILocation(line: 282, column: 9, scope: !2239)
!2245 = !DILocation(line: 284, column: 62, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 283, column: 5)
!2247 = !DILocation(line: 284, column: 31, scope: !2246)
!2248 = !DILocation(line: 284, column: 60, scope: !2246)
!2249 = !DILocation(line: 285, column: 14, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 285, column: 11)
!2251 = !DILocation(line: 285, column: 11, scope: !2246)
!2252 = !DILocation(line: 287, column: 79, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 286, column: 7)
!2254 = !DILocation(line: 287, column: 62, scope: !2253)
!2255 = !DILocation(line: 287, column: 33, scope: !2253)
!2256 = !DILocation(line: 287, column: 60, scope: !2253)
!2257 = !DILocation(line: 288, column: 79, scope: !2253)
!2258 = !DILocation(line: 288, column: 62, scope: !2253)
!2259 = !DILocation(line: 288, column: 33, scope: !2253)
!2260 = !DILocation(line: 288, column: 60, scope: !2253)
!2261 = !DILocation(line: 289, column: 7, scope: !2253)
!2262 = !DILocation(line: 292, column: 62, scope: !2239)
!2263 = !DILocation(line: 292, column: 29, scope: !2239)
!2264 = !DILocation(line: 292, column: 60, scope: !2239)
!2265 = !DILocation(line: 293, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 293, column: 9)
!2267 = !DILocation(line: 293, column: 9, scope: !2239)
!2268 = !DILocation(line: 295, column: 62, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 294, column: 5)
!2270 = !DILocation(line: 295, column: 31, scope: !2269)
!2271 = !DILocation(line: 295, column: 60, scope: !2269)
!2272 = !DILocation(line: 296, column: 5, scope: !2269)
!2273 = !DILocation(line: 298, column: 62, scope: !2239)
!2274 = !DILocation(line: 298, column: 29, scope: !2239)
!2275 = !DILocation(line: 298, column: 60, scope: !2239)
!2276 = !DILocation(line: 299, column: 9, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 299, column: 9)
!2278 = !DILocation(line: 299, column: 9, scope: !2239)
!2279 = !DILocation(line: 301, column: 65, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 300, column: 5)
!2281 = !DILocation(line: 301, column: 31, scope: !2280)
!2282 = !DILocation(line: 301, column: 63, scope: !2280)
!2283 = !DILocation(line: 302, column: 65, scope: !2280)
!2284 = !DILocation(line: 302, column: 31, scope: !2280)
!2285 = !DILocation(line: 302, column: 63, scope: !2280)
!2286 = !DILocation(line: 303, column: 65, scope: !2280)
!2287 = !DILocation(line: 303, column: 31, scope: !2280)
!2288 = !DILocation(line: 303, column: 63, scope: !2280)
!2289 = !DILocation(line: 304, column: 10, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 304, column: 10)
!2291 = !DILocation(line: 304, column: 10, scope: !2280)
!2292 = !DILocation(line: 306, column: 65, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 305, column: 7)
!2294 = !DILocation(line: 306, column: 33, scope: !2293)
!2295 = !DILocation(line: 306, column: 63, scope: !2293)
!2296 = !DILocation(line: 307, column: 65, scope: !2293)
!2297 = !DILocation(line: 307, column: 33, scope: !2293)
!2298 = !DILocation(line: 307, column: 63, scope: !2293)
!2299 = !DILocation(line: 308, column: 65, scope: !2293)
!2300 = !DILocation(line: 308, column: 33, scope: !2293)
!2301 = !DILocation(line: 308, column: 63, scope: !2293)
!2302 = !DILocation(line: 309, column: 7, scope: !2293)
!2303 = !DILocation(line: 311, column: 65, scope: !2239)
!2304 = !DILocation(line: 311, column: 29, scope: !2239)
!2305 = !DILocation(line: 311, column: 63, scope: !2239)
!2306 = !DILocation(line: 312, column: 8, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 312, column: 8)
!2308 = !DILocation(line: 312, column: 8, scope: !2239)
!2309 = !DILocation(line: 314, column: 70, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 313, column: 5)
!2311 = !DILocation(line: 314, column: 31, scope: !2310)
!2312 = !DILocation(line: 314, column: 68, scope: !2310)
!2313 = !DILocation(line: 315, column: 70, scope: !2310)
!2314 = !DILocation(line: 315, column: 31, scope: !2310)
!2315 = !DILocation(line: 315, column: 68, scope: !2310)
!2316 = !DILocation(line: 316, column: 5, scope: !2310)
!2317 = !DILocation(line: 317, column: 65, scope: !2239)
!2318 = !DILocation(line: 317, column: 29, scope: !2239)
!2319 = !DILocation(line: 317, column: 63, scope: !2239)
!2320 = !DILocation(line: 318, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 318, column: 9)
!2322 = !DILocation(line: 318, column: 9, scope: !2239)
!2323 = !DILocation(line: 320, column: 65, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 319, column: 5)
!2325 = !DILocation(line: 320, column: 31, scope: !2324)
!2326 = !DILocation(line: 320, column: 63, scope: !2324)
!2327 = !DILocation(line: 321, column: 65, scope: !2324)
!2328 = !DILocation(line: 321, column: 31, scope: !2324)
!2329 = !DILocation(line: 321, column: 63, scope: !2324)
!2330 = !DILocation(line: 322, column: 65, scope: !2324)
!2331 = !DILocation(line: 322, column: 31, scope: !2324)
!2332 = !DILocation(line: 322, column: 63, scope: !2324)
!2333 = !DILocation(line: 323, column: 5, scope: !2324)
!2334 = !DILocation(line: 324, column: 65, scope: !2239)
!2335 = !DILocation(line: 324, column: 29, scope: !2239)
!2336 = !DILocation(line: 324, column: 63, scope: !2239)
!2337 = !DILocation(line: 325, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 325, column: 9)
!2339 = !DILocation(line: 325, column: 9, scope: !2239)
!2340 = !DILocation(line: 327, column: 54, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 326, column: 5)
!2342 = !DILocation(line: 327, column: 7, scope: !2341)
!2343 = !DILocation(line: 328, column: 5, scope: !2341)
!2344 = !DILocation(line: 329, column: 65, scope: !2239)
!2345 = !DILocation(line: 329, column: 29, scope: !2239)
!2346 = !DILocation(line: 329, column: 63, scope: !2239)
!2347 = !DILocation(line: 330, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 330, column: 9)
!2349 = !DILocation(line: 330, column: 9, scope: !2239)
!2350 = !DILocation(line: 332, column: 54, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 331, column: 5)
!2352 = !DILocation(line: 332, column: 7, scope: !2351)
!2353 = !DILocation(line: 333, column: 5, scope: !2351)
!2354 = !DILocation(line: 334, column: 33, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 334, column: 9)
!2356 = !DILocation(line: 334, column: 9, scope: !2355)
!2357 = !DILocation(line: 334, column: 65, scope: !2355)
!2358 = !DILocation(line: 334, column: 92, scope: !2355)
!2359 = !DILocation(line: 334, column: 68, scope: !2355)
!2360 = !DILocation(line: 334, column: 9, scope: !2239)
!2361 = !DILocation(line: 336, column: 65, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 335, column: 5)
!2363 = !DILocation(line: 336, column: 31, scope: !2362)
!2364 = !DILocation(line: 336, column: 62, scope: !2362)
!2365 = !DILocation(line: 337, column: 5, scope: !2362)
!2366 = !DILocation(line: 338, column: 65, scope: !2239)
!2367 = !DILocation(line: 338, column: 29, scope: !2239)
!2368 = !DILocation(line: 338, column: 62, scope: !2239)
!2369 = !DILocation(line: 339, column: 65, scope: !2239)
!2370 = !DILocation(line: 339, column: 29, scope: !2239)
!2371 = !DILocation(line: 339, column: 62, scope: !2239)
!2372 = !DILocation(line: 340, column: 9, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 340, column: 9)
!2374 = !DILocation(line: 340, column: 9, scope: !2239)
!2375 = !DILocation(line: 342, column: 74, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 341, column: 5)
!2377 = !DILocation(line: 342, column: 31, scope: !2376)
!2378 = !DILocation(line: 342, column: 71, scope: !2376)
!2379 = !DILocation(line: 343, column: 74, scope: !2376)
!2380 = !DILocation(line: 343, column: 31, scope: !2376)
!2381 = !DILocation(line: 343, column: 71, scope: !2376)
!2382 = !DILocation(line: 344, column: 74, scope: !2376)
!2383 = !DILocation(line: 344, column: 31, scope: !2376)
!2384 = !DILocation(line: 344, column: 71, scope: !2376)
!2385 = !DILocation(line: 345, column: 74, scope: !2376)
!2386 = !DILocation(line: 345, column: 31, scope: !2376)
!2387 = !DILocation(line: 345, column: 71, scope: !2376)
!2388 = !DILocation(line: 346, column: 74, scope: !2376)
!2389 = !DILocation(line: 346, column: 31, scope: !2376)
!2390 = !DILocation(line: 346, column: 71, scope: !2376)
!2391 = !DILocation(line: 347, column: 74, scope: !2376)
!2392 = !DILocation(line: 347, column: 31, scope: !2376)
!2393 = !DILocation(line: 347, column: 71, scope: !2376)
!2394 = !DILocation(line: 348, column: 74, scope: !2376)
!2395 = !DILocation(line: 348, column: 31, scope: !2376)
!2396 = !DILocation(line: 348, column: 71, scope: !2376)
!2397 = !DILocation(line: 349, column: 5, scope: !2376)
!2398 = !DILocation(line: 352, column: 3, scope: !2225)
!2399 = distinct !DISubprogram(name: "ReadHRDParameters", scope: !3, file: !3, line: 356, type: !2400, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!7, !1020, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DILocalVariable(name: "p", arg: 1, scope: !2399, file: !3, line: 356, type: !1020)
!2405 = !DILocalVariable(name: "hrd", arg: 2, scope: !2399, file: !3, line: 356, type: !2402)
!2406 = !DILocalVariable(name: "s", scope: !2399, file: !3, line: 358, type: !1025)
!2407 = !DILocalVariable(name: "SchedSelIdx", scope: !2399, file: !3, line: 359, type: !31)
!2408 = !DILocation(line: 0, scope: !2399)
!2409 = !DILocation(line: 358, column: 21, scope: !2399)
!2410 = !DILocation(line: 361, column: 62, scope: !2399)
!2411 = !DILocation(line: 361, column: 60, scope: !2399)
!2412 = !DILocation(line: 362, column: 62, scope: !2399)
!2413 = !DILocation(line: 362, column: 8, scope: !2399)
!2414 = !DILocation(line: 362, column: 60, scope: !2399)
!2415 = !DILocation(line: 363, column: 62, scope: !2399)
!2416 = !DILocation(line: 363, column: 8, scope: !2399)
!2417 = !DILocation(line: 363, column: 60, scope: !2399)
!2418 = !DILocation(line: 365, column: 3, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 365, column: 3)
!2420 = !DILocation(line: 367, column: 61, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 366, column: 3)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 365, column: 3)
!2423 = !DILocation(line: 367, column: 5, scope: !2421)
!2424 = !DILocation(line: 367, column: 59, scope: !2421)
!2425 = !DILocation(line: 368, column: 61, scope: !2421)
!2426 = !DILocation(line: 368, column: 5, scope: !2421)
!2427 = !DILocation(line: 368, column: 59, scope: !2421)
!2428 = !DILocation(line: 369, column: 61, scope: !2421)
!2429 = !DILocation(line: 369, column: 5, scope: !2421)
!2430 = !DILocation(line: 369, column: 59, scope: !2421)
!2431 = !DILocation(line: 365, column: 72, scope: !2422)
!2432 = !DILocation(line: 365, column: 45, scope: !2422)
!2433 = !DILocation(line: 365, column: 37, scope: !2422)
!2434 = distinct !{!2434, !2418, !2435}
!2435 = !DILocation(line: 370, column: 3, scope: !2419)
!2436 = !DILocation(line: 372, column: 61, scope: !2399)
!2437 = !DILocation(line: 372, column: 8, scope: !2399)
!2438 = !DILocation(line: 372, column: 59, scope: !2399)
!2439 = !DILocation(line: 373, column: 61, scope: !2399)
!2440 = !DILocation(line: 373, column: 8, scope: !2399)
!2441 = !DILocation(line: 373, column: 59, scope: !2399)
!2442 = !DILocation(line: 374, column: 61, scope: !2399)
!2443 = !DILocation(line: 374, column: 8, scope: !2399)
!2444 = !DILocation(line: 374, column: 59, scope: !2399)
!2445 = !DILocation(line: 375, column: 61, scope: !2399)
!2446 = !DILocation(line: 375, column: 8, scope: !2399)
!2447 = !DILocation(line: 375, column: 59, scope: !2399)
!2448 = !DILocation(line: 377, column: 3, scope: !2399)
!2449 = distinct !DISubprogram(name: "InterpretPPS", scope: !3, file: !3, line: 381, type: !2450, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!7, !549, !1020, !638}
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2449, file: !3, line: 381, type: !549)
!2454 = !DILocalVariable(name: "p", arg: 2, scope: !2449, file: !3, line: 381, type: !1020)
!2455 = !DILocalVariable(name: "pps", arg: 3, scope: !2449, file: !3, line: 381, type: !638)
!2456 = !DILocalVariable(name: "i", scope: !2449, file: !3, line: 383, type: !31)
!2457 = !DILocalVariable(name: "n_ScalingList", scope: !2449, file: !3, line: 384, type: !31)
!2458 = !DILocalVariable(name: "chroma_format_idc", scope: !2449, file: !3, line: 385, type: !7)
!2459 = !DILocalVariable(name: "NumberBitsPerSliceGroupId", scope: !2449, file: !3, line: 386, type: !7)
!2460 = !DILocalVariable(name: "s", scope: !2449, file: !3, line: 387, type: !1025)
!2461 = !DILocation(line: 0, scope: !2449)
!2462 = !DILocation(line: 387, column: 21, scope: !2449)
!2463 = !DILocation(line: 394, column: 3, scope: !2449)
!2464 = !DILocation(line: 394, column: 10, scope: !2449)
!2465 = !DILocation(line: 394, column: 19, scope: !2449)
!2466 = !DILocation(line: 396, column: 48, scope: !2449)
!2467 = !DILocation(line: 396, column: 8, scope: !2449)
!2468 = !DILocation(line: 396, column: 46, scope: !2449)
!2469 = !DILocation(line: 397, column: 48, scope: !2449)
!2470 = !DILocation(line: 397, column: 8, scope: !2449)
!2471 = !DILocation(line: 397, column: 46, scope: !2449)
!2472 = !DILocation(line: 398, column: 48, scope: !2449)
!2473 = !DILocation(line: 398, column: 8, scope: !2449)
!2474 = !DILocation(line: 398, column: 46, scope: !2449)
!2475 = !DILocation(line: 405, column: 70, scope: !2449)
!2476 = !DILocation(line: 405, column: 8, scope: !2449)
!2477 = !DILocation(line: 405, column: 68, scope: !2449)
!2478 = !DILocation(line: 407, column: 48, scope: !2449)
!2479 = !DILocation(line: 407, column: 8, scope: !2449)
!2480 = !DILocation(line: 407, column: 46, scope: !2449)
!2481 = !DILocation(line: 410, column: 36, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 410, column: 7)
!2483 = !DILocation(line: 410, column: 7, scope: !2449)
!2484 = !DILocation(line: 412, column: 47, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 411, column: 3)
!2486 = !DILocation(line: 412, column: 10, scope: !2485)
!2487 = !DILocation(line: 412, column: 45, scope: !2485)
!2488 = !DILocation(line: 413, column: 9, scope: !2485)
!2489 = !DILocation(line: 420, column: 24, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 420, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 420, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 419, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 418, column: 14)
!2494 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 413, column: 9)
!2495 = !DILocation(line: 420, column: 18, scope: !2490)
!2496 = !DILocation(line: 420, column: 7, scope: !2491)
!2497 = !DILocation(line: 415, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 415, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 414, column: 5)
!2500 = !DILocation(line: 416, column: 55, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 415, column: 7)
!2502 = !DILocation(line: 416, column: 9, scope: !2501)
!2503 = !DILocation(line: 416, column: 53, scope: !2501)
!2504 = !DILocation(line: 415, column: 51, scope: !2501)
!2505 = !DILocation(line: 415, column: 25, scope: !2501)
!2506 = !DILocation(line: 415, column: 18, scope: !2501)
!2507 = distinct !{!2507, !2497, !2508}
!2508 = !DILocation(line: 416, column: 106, scope: !2498)
!2509 = !DILocation(line: 423, column: 54, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 421, column: 7)
!2511 = !DILocation(line: 423, column: 9, scope: !2510)
!2512 = !DILocation(line: 423, column: 52, scope: !2510)
!2513 = !DILocation(line: 424, column: 54, scope: !2510)
!2514 = !DILocation(line: 424, column: 9, scope: !2510)
!2515 = !DILocation(line: 424, column: 52, scope: !2510)
!2516 = !DILocation(line: 420, column: 50, scope: !2490)
!2517 = distinct !{!2517, !2496, !2518}
!2518 = !DILocation(line: 425, column: 7, scope: !2491)
!2519 = !DILocation(line: 431, column: 52, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 430, column: 5)
!2521 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 427, column: 14)
!2522 = !DILocation(line: 431, column: 12, scope: !2520)
!2523 = !DILocation(line: 431, column: 50, scope: !2520)
!2524 = !DILocation(line: 432, column: 52, scope: !2520)
!2525 = !DILocation(line: 432, column: 12, scope: !2520)
!2526 = !DILocation(line: 432, column: 50, scope: !2520)
!2527 = !DILocation(line: 433, column: 5, scope: !2520)
!2528 = !DILocation(line: 436, column: 16, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 436, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 435, column: 5)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 434, column: 14)
!2532 = !DILocation(line: 436, column: 39, scope: !2529)
!2533 = !DILocation(line: 436, column: 42, scope: !2529)
!2534 = !DILocation(line: 436, column: 11, scope: !2530)
!2535 = !DILocation(line: 442, column: 48, scope: !2530)
!2536 = !DILocation(line: 442, column: 12, scope: !2530)
!2537 = !DILocation(line: 442, column: 46, scope: !2530)
!2538 = !DILocation(line: 443, column: 75, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 443, column: 11)
!2540 = !DILocation(line: 443, column: 42, scope: !2539)
!2541 = !DILocation(line: 443, column: 34, scope: !2539)
!2542 = !DILocation(line: 443, column: 17, scope: !2539)
!2543 = !DILocation(line: 443, column: 32, scope: !2539)
!2544 = !DILocation(line: 443, column: 83, scope: !2539)
!2545 = !DILocation(line: 443, column: 11, scope: !2530)
!2546 = !DILocation(line: 444, column: 9, scope: !2539)
!2547 = !DILocation(line: 445, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 445, column: 7)
!2549 = !DILocation(line: 446, column: 41, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 445, column: 7)
!2551 = !DILocation(line: 446, column: 34, scope: !2550)
!2552 = !DILocation(line: 446, column: 14, scope: !2550)
!2553 = !DILocation(line: 446, column: 9, scope: !2550)
!2554 = !DILocation(line: 446, column: 32, scope: !2550)
!2555 = !DILocation(line: 445, column: 56, scope: !2550)
!2556 = !DILocation(line: 445, column: 25, scope: !2550)
!2557 = !DILocation(line: 445, column: 18, scope: !2550)
!2558 = distinct !{!2558, !2547, !2559}
!2559 = !DILocation(line: 446, column: 95, scope: !2548)
!2560 = !DILocation(line: 452, column: 48, scope: !2449)
!2561 = !DILocation(line: 452, column: 8, scope: !2449)
!2562 = !DILocation(line: 452, column: 46, scope: !2449)
!2563 = !DILocation(line: 453, column: 48, scope: !2449)
!2564 = !DILocation(line: 453, column: 8, scope: !2449)
!2565 = !DILocation(line: 453, column: 46, scope: !2449)
!2566 = !DILocation(line: 454, column: 48, scope: !2449)
!2567 = !DILocation(line: 454, column: 8, scope: !2449)
!2568 = !DILocation(line: 454, column: 46, scope: !2449)
!2569 = !DILocation(line: 455, column: 48, scope: !2449)
!2570 = !DILocation(line: 455, column: 8, scope: !2449)
!2571 = !DILocation(line: 455, column: 46, scope: !2449)
!2572 = !DILocation(line: 456, column: 48, scope: !2449)
!2573 = !DILocation(line: 456, column: 8, scope: !2449)
!2574 = !DILocation(line: 456, column: 46, scope: !2449)
!2575 = !DILocation(line: 457, column: 48, scope: !2449)
!2576 = !DILocation(line: 457, column: 8, scope: !2449)
!2577 = !DILocation(line: 457, column: 46, scope: !2449)
!2578 = !DILocation(line: 459, column: 48, scope: !2449)
!2579 = !DILocation(line: 459, column: 8, scope: !2449)
!2580 = !DILocation(line: 459, column: 46, scope: !2449)
!2581 = !DILocation(line: 461, column: 49, scope: !2449)
!2582 = !DILocation(line: 461, column: 8, scope: !2449)
!2583 = !DILocation(line: 461, column: 47, scope: !2449)
!2584 = !DILocation(line: 462, column: 48, scope: !2449)
!2585 = !DILocation(line: 462, column: 8, scope: !2449)
!2586 = !DILocation(line: 462, column: 46, scope: !2449)
!2587 = !DILocation(line: 463, column: 48, scope: !2449)
!2588 = !DILocation(line: 463, column: 8, scope: !2449)
!2589 = !DILocation(line: 463, column: 46, scope: !2449)
!2590 = !DILocation(line: 465, column: 24, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 465, column: 6)
!2592 = !DILocation(line: 465, column: 41, scope: !2591)
!2593 = !DILocation(line: 465, column: 60, scope: !2591)
!2594 = !DILocation(line: 465, column: 6, scope: !2591)
!2595 = !DILocation(line: 465, column: 6, scope: !2449)
!2596 = !DILocation(line: 468, column: 46, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 466, column: 3)
!2598 = !DILocation(line: 468, column: 10, scope: !2597)
!2599 = !DILocation(line: 468, column: 44, scope: !2597)
!2600 = !DILocation(line: 469, column: 47, scope: !2597)
!2601 = !DILocation(line: 469, column: 10, scope: !2597)
!2602 = !DILocation(line: 469, column: 44, scope: !2597)
!2603 = !DILocation(line: 471, column: 8, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 471, column: 8)
!2605 = !DILocation(line: 471, column: 8, scope: !2597)
!2606 = !DILocation(line: 473, column: 34, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 472, column: 5)
!2608 = !DILocation(line: 473, column: 49, scope: !2607)
!2609 = !DILocation(line: 473, column: 27, scope: !2607)
!2610 = !DILocation(line: 473, column: 71, scope: !2607)
!2611 = !DILocation(line: 474, column: 47, scope: !2607)
!2612 = !DILocation(line: 474, column: 28, scope: !2607)
!2613 = !DILocation(line: 474, column: 74, scope: !2607)
!2614 = !DILocation(line: 474, column: 67, scope: !2607)
!2615 = !DILocation(line: 474, column: 25, scope: !2607)
!2616 = !DILocation(line: 475, column: 17, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 475, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 475, column: 7)
!2619 = !DILocation(line: 475, column: 7, scope: !2618)
!2620 = !DILocation(line: 477, column: 48, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 476, column: 7)
!2622 = !DILocation(line: 477, column: 9, scope: !2621)
!2623 = !DILocation(line: 477, column: 46, scope: !2621)
!2624 = !DILocation(line: 479, column: 12, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 479, column: 12)
!2626 = !DILocation(line: 479, column: 12, scope: !2621)
!2627 = !DILocation(line: 481, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 481, column: 14)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 480, column: 9)
!2630 = !DILocation(line: 481, column: 14, scope: !2629)
!2631 = !DILocation(line: 482, column: 26, scope: !2628)
!2632 = !DILocation(line: 482, column: 55, scope: !2628)
!2633 = !DILocation(line: 0, scope: !1909, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 482, column: 13, scope: !2628)
!2635 = !DILocation(line: 47, column: 13, scope: !1928, inlinedAt: !2634)
!2636 = !DILocation(line: 47, scope: !1928, inlinedAt: !2634)
!2637 = !DILocation(line: 49, column: 17, scope: !1931, inlinedAt: !2634)
!2638 = !DILocation(line: 49, column: 8, scope: !1928, inlinedAt: !2634)
!2639 = !DILocation(line: 51, column: 21, scope: !1934, inlinedAt: !2634)
!2640 = !DILocation(line: 52, column: 30, scope: !1934, inlinedAt: !2634)
!2641 = !DILocation(line: 52, column: 44, scope: !1934, inlinedAt: !2634)
!2642 = !DILocation(line: 52, column: 51, scope: !1934, inlinedAt: !2634)
!2643 = !DILocation(line: 53, column: 54, scope: !1934, inlinedAt: !2634)
!2644 = !DILocation(line: 53, column: 32, scope: !1934, inlinedAt: !2634)
!2645 = !DILocation(line: 56, column: 36, scope: !1928, inlinedAt: !2634)
!2646 = !DILocation(line: 56, column: 26, scope: !1928, inlinedAt: !2634)
!2647 = !DILocation(line: 56, column: 5, scope: !1928, inlinedAt: !2634)
!2648 = !DILocation(line: 56, column: 24, scope: !1928, inlinedAt: !2634)
!2649 = !DILocation(line: 45, column: 34, scope: !1924, inlinedAt: !2634)
!2650 = !DILocation(line: 45, column: 13, scope: !1924, inlinedAt: !2634)
!2651 = !DILocation(line: 45, column: 3, scope: !1925, inlinedAt: !2634)
!2652 = distinct !{!2652, !2651, !2653}
!2653 = !DILocation(line: 58, column: 3, scope: !1925, inlinedAt: !2634)
!2654 = !DILocation(line: 484, column: 47, scope: !2628)
!2655 = !DILocation(line: 484, column: 26, scope: !2628)
!2656 = !DILocation(line: 484, column: 57, scope: !2628)
!2657 = !DILocation(line: 0, scope: !1909, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 484, column: 13, scope: !2628)
!2659 = !DILocation(line: 45, column: 3, scope: !1925, inlinedAt: !2658)
!2660 = !DILocation(line: 47, column: 13, scope: !1928, inlinedAt: !2658)
!2661 = !DILocation(line: 47, scope: !1928, inlinedAt: !2658)
!2662 = !DILocation(line: 49, column: 17, scope: !1931, inlinedAt: !2658)
!2663 = !DILocation(line: 49, column: 8, scope: !1928, inlinedAt: !2658)
!2664 = !DILocation(line: 51, column: 21, scope: !1934, inlinedAt: !2658)
!2665 = !DILocation(line: 52, column: 30, scope: !1934, inlinedAt: !2658)
!2666 = !DILocation(line: 52, column: 44, scope: !1934, inlinedAt: !2658)
!2667 = !DILocation(line: 52, column: 51, scope: !1934, inlinedAt: !2658)
!2668 = !DILocation(line: 53, column: 54, scope: !1934, inlinedAt: !2658)
!2669 = !DILocation(line: 53, column: 32, scope: !1934, inlinedAt: !2658)
!2670 = !DILocation(line: 56, column: 36, scope: !1928, inlinedAt: !2658)
!2671 = !DILocation(line: 56, column: 26, scope: !1928, inlinedAt: !2658)
!2672 = !DILocation(line: 56, column: 5, scope: !1928, inlinedAt: !2658)
!2673 = !DILocation(line: 56, column: 24, scope: !1928, inlinedAt: !2658)
!2674 = !DILocation(line: 45, column: 34, scope: !1924, inlinedAt: !2658)
!2675 = !DILocation(line: 45, column: 13, scope: !1924, inlinedAt: !2658)
!2676 = distinct !{!2676, !2659, !2677}
!2677 = !DILocation(line: 58, column: 3, scope: !1925, inlinedAt: !2658)
!2678 = !DILocation(line: 475, column: 34, scope: !2617)
!2679 = distinct !{!2679, !2619, !2680}
!2680 = !DILocation(line: 486, column: 7, scope: !2618)
!2681 = !DILocation(line: 488, column: 47, scope: !2597)
!2682 = !DILocation(line: 489, column: 3, scope: !2597)
!2683 = !DILocation(line: 492, column: 52, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 491, column: 3)
!2685 = !DILocation(line: 0, scope: !2591)
!2686 = !DILocation(line: 495, column: 14, scope: !2449)
!2687 = !DILocation(line: 496, column: 10, scope: !2449)
!2688 = !DILocation(line: 496, column: 17, scope: !2449)
!2689 = !DILocation(line: 496, column: 3, scope: !2449)
!2690 = !DISubprogram(name: "calloc", scope: !2691, file: !2691, line: 543, type: !2692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2691 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!88, !2694, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2695, line: 18, baseType: !2696)
!2695 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!2696 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!2697 = !DISubprogram(name: "no_mem_exit", scope: !2698, file: !2698, line: 180, type: !2699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2698 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !1553}
!2701 = !DISubprogram(name: "more_rbsp_data", scope: !1949, file: !1949, line: 108, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!7, !666, !7, !7}
!2704 = distinct !DISubprogram(name: "PPSConsistencyCheck", scope: !3, file: !3, line: 500, type: !2705, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !638}
!2707 = !{!2708}
!2708 = !DILocalVariable(name: "pps", arg: 1, scope: !2704, file: !3, line: 500, type: !638)
!2709 = !DILocation(line: 0, scope: !2704)
!2710 = !DILocation(line: 502, column: 3, scope: !2704)
!2711 = !DILocation(line: 504, column: 1, scope: !2704)
!2712 = distinct !DISubprogram(name: "SPSConsistencyCheck", scope: !3, file: !3, line: 506, type: !2195, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "sps", arg: 1, scope: !2712, file: !3, line: 506, type: !437)
!2715 = !DILocation(line: 0, scope: !2712)
!2716 = !DILocation(line: 508, column: 3, scope: !2712)
!2717 = !DILocation(line: 509, column: 1, scope: !2712)
!2718 = distinct !DISubprogram(name: "SubsetSPSConsistencyCheck", scope: !3, file: !3, line: 512, type: !2719, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !684}
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "subset_sps", arg: 1, scope: !2718, file: !3, line: 512, type: !684)
!2723 = !DILocation(line: 0, scope: !2718)
!2724 = !DILocation(line: 514, column: 3, scope: !2718)
!2725 = !DILocation(line: 515, column: 1, scope: !2718)
!2726 = distinct !DISubprogram(name: "MakePPSavailable", scope: !3, file: !3, line: 518, type: !2727, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !549, !7, !638}
!2729 = !{!2730, !2731, !2732}
!2730 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2726, file: !3, line: 518, type: !549)
!2731 = !DILocalVariable(name: "id", arg: 2, scope: !2726, file: !3, line: 518, type: !7)
!2732 = !DILocalVariable(name: "pps", arg: 3, scope: !2726, file: !3, line: 518, type: !638)
!2733 = !DILocation(line: 0, scope: !2726)
!2734 = !DILocation(line: 522, column: 14, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 522, column: 7)
!2736 = !DILocation(line: 522, column: 7, scope: !2735)
!2737 = !DILocation(line: 522, column: 28, scope: !2735)
!2738 = !DILocation(line: 522, column: 34, scope: !2735)
!2739 = !DILocation(line: 522, column: 42, scope: !2735)
!2740 = !DILocation(line: 522, column: 66, scope: !2735)
!2741 = !DILocation(line: 522, column: 81, scope: !2735)
!2742 = !DILocation(line: 522, column: 7, scope: !2726)
!2743 = !DILocation(line: 523, column: 5, scope: !2735)
!2744 = !DILocation(line: 525, column: 3, scope: !2726)
!2745 = !DILocation(line: 529, column: 46, scope: !2726)
!2746 = !DILocation(line: 529, column: 24, scope: !2726)
!2747 = !DILocation(line: 529, column: 39, scope: !2726)
!2748 = !DILocation(line: 530, column: 32, scope: !2726)
!2749 = !DILocation(line: 531, column: 1, scope: !2726)
!2750 = !DISubprogram(name: "free", scope: !2691, file: !2691, line: 555, type: !2751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !88}
!2753 = distinct !DISubprogram(name: "CleanUpPPS", scope: !3, file: !3, line: 533, type: !1556, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2754)
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2753, file: !3, line: 533, type: !549)
!2756 = !DILocalVariable(name: "i", scope: !2753, file: !3, line: 535, type: !7)
!2757 = !DILocation(line: 0, scope: !2753)
!2758 = !DILocation(line: 537, column: 3, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 537, column: 3)
!2760 = !DILocation(line: 539, column: 9, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 539, column: 9)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 538, column: 3)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 537, column: 3)
!2764 = !DILocation(line: 539, column: 29, scope: !2761)
!2765 = !DILocation(line: 539, column: 35, scope: !2761)
!2766 = !DILocation(line: 539, column: 43, scope: !2761)
!2767 = !DILocation(line: 539, column: 66, scope: !2761)
!2768 = !DILocation(line: 539, column: 81, scope: !2761)
!2769 = !DILocation(line: 539, column: 9, scope: !2762)
!2770 = !DILocation(line: 540, column: 7, scope: !2761)
!2771 = !DILocation(line: 542, column: 31, scope: !2762)
!2772 = !DILocation(line: 537, column: 24, scope: !2763)
!2773 = !DILocation(line: 537, column: 14, scope: !2763)
!2774 = distinct !{!2774, !2758, !2775}
!2775 = !DILocation(line: 543, column: 3, scope: !2759)
!2776 = !DILocation(line: 544, column: 1, scope: !2753)
!2777 = distinct !DISubprogram(name: "MakeSPSavailable", scope: !3, file: !3, line: 547, type: !2778, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !549, !7, !437}
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2777, file: !3, line: 547, type: !549)
!2782 = !DILocalVariable(name: "id", arg: 2, scope: !2777, file: !3, line: 547, type: !7)
!2783 = !DILocalVariable(name: "sps", arg: 3, scope: !2777, file: !3, line: 547, type: !437)
!2784 = !DILocation(line: 0, scope: !2777)
!2785 = !DILocation(line: 550, column: 19, scope: !2777)
!2786 = !DILocation(line: 550, column: 12, scope: !2777)
!2787 = !DILocation(line: 550, column: 3, scope: !2777)
!2788 = !DILocation(line: 551, column: 1, scope: !2777)
!2789 = distinct !DISubprogram(name: "ProcessSPS", scope: !3, file: !3, line: 554, type: !2790, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !549, !1562}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2789, file: !3, line: 554, type: !549)
!2794 = !DILocalVariable(name: "nalu", arg: 2, scope: !2789, file: !3, line: 554, type: !1562)
!2795 = !DILocalVariable(name: "dp", scope: !2789, file: !3, line: 556, type: !1020)
!2796 = !DILocalVariable(name: "sps", scope: !2789, file: !3, line: 557, type: !437)
!2797 = !DILocation(line: 0, scope: !2789)
!2798 = !DILocation(line: 556, column: 23, scope: !2789)
!2799 = !DILocation(line: 557, column: 35, scope: !2789)
!2800 = !DILocation(line: 559, column: 15, scope: !2789)
!2801 = !DILocation(line: 559, column: 26, scope: !2789)
!2802 = !DILocation(line: 559, column: 47, scope: !2789)
!2803 = !DILocation(line: 559, column: 41, scope: !2789)
!2804 = !DILocation(line: 559, column: 61, scope: !2789)
!2805 = !DILocation(line: 559, column: 64, scope: !2789)
!2806 = !DILocation(line: 559, column: 55, scope: !2789)
!2807 = !DILocation(line: 559, column: 3, scope: !2789)
!2808 = !DILocation(line: 560, column: 79, scope: !2789)
!2809 = !DILocation(line: 560, column: 90, scope: !2789)
!2810 = !DILocation(line: 560, column: 110, scope: !2789)
!2811 = !DILocation(line: 560, column: 113, scope: !2789)
!2812 = !DILocation(line: 560, column: 63, scope: !2789)
!2813 = !DILocation(line: 560, column: 33, scope: !2789)
!2814 = !DILocation(line: 560, column: 44, scope: !2789)
!2815 = !DILocation(line: 560, column: 61, scope: !2789)
!2816 = !DILocation(line: 560, column: 7, scope: !2789)
!2817 = !DILocation(line: 560, column: 18, scope: !2789)
!2818 = !DILocation(line: 560, column: 27, scope: !2789)
!2819 = !DILocation(line: 561, column: 7, scope: !2789)
!2820 = !DILocation(line: 561, column: 18, scope: !2789)
!2821 = !DILocation(line: 561, column: 26, scope: !2789)
!2822 = !DILocation(line: 562, column: 33, scope: !2789)
!2823 = !DILocation(line: 562, column: 44, scope: !2789)
!2824 = !DILocation(line: 562, column: 60, scope: !2789)
!2825 = !DILocation(line: 562, column: 7, scope: !2789)
!2826 = !DILocation(line: 562, column: 27, scope: !2789)
!2827 = !DILocation(line: 563, column: 3, scope: !2789)
!2828 = !DILocation(line: 565, column: 3, scope: !2789)
!2829 = !DILocation(line: 568, column: 12, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 568, column: 7)
!2831 = !DILocation(line: 568, column: 7, scope: !2830)
!2832 = !DILocation(line: 568, column: 7, scope: !2789)
!2833 = !DILocation(line: 570, column: 16, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 570, column: 9)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 569, column: 3)
!2836 = !DILocation(line: 570, column: 9, scope: !2834)
!2837 = !DILocation(line: 570, column: 9, scope: !2835)
!2838 = !DILocation(line: 572, column: 16, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 572, column: 11)
!2840 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 571, column: 5)
!2841 = !DILocation(line: 572, column: 59, scope: !2839)
!2842 = !DILocation(line: 572, column: 37, scope: !2839)
!2843 = !DILocation(line: 572, column: 11, scope: !2840)
!2844 = !DILocation(line: 574, column: 14, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 574, column: 13)
!2846 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 573, column: 7)
!2847 = !DILocation(line: 574, column: 13, scope: !2846)
!2848 = !DILocation(line: 576, column: 22, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 576, column: 15)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 575, column: 9)
!2851 = !DILocation(line: 576, column: 15, scope: !2849)
!2852 = !DILocation(line: 576, column: 15, scope: !2850)
!2853 = !DILocation(line: 579, column: 13, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 577, column: 11)
!2855 = !DILocation(line: 580, column: 11, scope: !2854)
!2856 = !DILocation(line: 581, column: 28, scope: !2850)
!2857 = !DILocation(line: 582, column: 9, scope: !2850)
!2858 = !DILocation(line: 586, column: 35, scope: !2835)
!2859 = !DILocation(line: 0, scope: !2777, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 586, column: 5, scope: !2835)
!2861 = !DILocation(line: 550, column: 19, scope: !2777, inlinedAt: !2860)
!2862 = !DILocation(line: 550, column: 12, scope: !2777, inlinedAt: !2860)
!2863 = !DILocation(line: 550, column: 3, scope: !2777, inlinedAt: !2860)
!2864 = !DILocation(line: 587, column: 31, scope: !2835)
!2865 = !DILocation(line: 587, column: 12, scope: !2835)
!2866 = !DILocation(line: 587, column: 24, scope: !2835)
!2867 = !DILocation(line: 588, column: 46, scope: !2835)
!2868 = !DILocation(line: 588, column: 12, scope: !2835)
!2869 = !DILocation(line: 588, column: 39, scope: !2835)
!2870 = !DILocation(line: 589, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 589, column: 9)
!2872 = !DILocation(line: 589, column: 9, scope: !2835)
!2873 = !DILocation(line: 595, column: 37, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 594, column: 5)
!2875 = !DILocation(line: 0, scope: !2871)
!2876 = !DILocation(line: 599, column: 3, scope: !2789)
!2877 = !DILocation(line: 600, column: 3, scope: !2789)
!2878 = !DILocation(line: 601, column: 1, scope: !2789)
!2879 = !DISubprogram(name: "AllocPartition", scope: !551, file: !551, line: 950, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!1020, !7}
!2882 = !DISubprogram(name: "AllocSPS", scope: !439, file: !439, line: 263, type: !2883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!437}
!2885 = !DISubprogram(name: "RBSPtoSODB", scope: !551, file: !551, line: 946, type: !2886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!7, !666, !7}
!2888 = distinct !DISubprogram(name: "get_max_dec_frame_buf_size", scope: !3, file: !3, line: 1339, type: !2195, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DILocalVariable(name: "sps", arg: 1, scope: !2888, file: !3, line: 1339, type: !437)
!2891 = !DILocalVariable(name: "pic_size", scope: !2888, file: !3, line: 1341, type: !7)
!2892 = !DILocalVariable(name: "size", scope: !2888, file: !3, line: 1343, type: !7)
!2893 = !DILocation(line: 0, scope: !2888)
!2894 = !DILocation(line: 1341, column: 24, scope: !2888)
!2895 = !DILocation(line: 1341, column: 61, scope: !2888)
!2896 = !DILocation(line: 1341, column: 105, scope: !2888)
!2897 = !DILocation(line: 1345, column: 16, scope: !2888)
!2898 = !DILocation(line: 1345, column: 3, scope: !2888)
!2899 = !DILocation(line: 1354, column: 10, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 1354, column: 9)
!2901 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1346, column: 3)
!2902 = !DILocation(line: 1354, column: 54, scope: !2900)
!2903 = !DILocation(line: 1354, column: 76, scope: !2900)
!2904 = !DILocation(line: 1354, column: 9, scope: !2901)
!2905 = !DILocation(line: 1361, column: 5, scope: !2901)
!2906 = !DILocation(line: 1364, column: 5, scope: !2901)
!2907 = !DILocation(line: 1367, column: 5, scope: !2901)
!2908 = !DILocation(line: 1370, column: 5, scope: !2901)
!2909 = !DILocation(line: 1373, column: 5, scope: !2901)
!2910 = !DILocation(line: 1376, column: 5, scope: !2901)
!2911 = !DILocation(line: 1379, column: 5, scope: !2901)
!2912 = !DILocation(line: 1382, column: 5, scope: !2901)
!2913 = !DILocation(line: 1385, column: 5, scope: !2901)
!2914 = !DILocation(line: 1388, column: 5, scope: !2901)
!2915 = !DILocation(line: 1391, column: 5, scope: !2901)
!2916 = !DILocation(line: 1394, column: 5, scope: !2901)
!2917 = !DILocation(line: 1397, column: 5, scope: !2901)
!2918 = !DILocation(line: 1399, column: 5, scope: !2901)
!2919 = !DILocation(line: 1400, column: 5, scope: !2901)
!2920 = !DILocation(line: 1341, column: 48, scope: !2888)
!2921 = !DILocation(line: 1341, column: 92, scope: !2888)
!2922 = !DILocation(line: 1341, column: 53, scope: !2888)
!2923 = !DILocation(line: 1341, column: 100, scope: !2888)
!2924 = !DILocation(line: 1341, column: 97, scope: !2888)
!2925 = !DILocation(line: 1341, column: 130, scope: !2888)
!2926 = !DILocation(line: 1403, column: 8, scope: !2888)
!2927 = !DILocalVariable(name: "a", arg: 1, scope: !2928, file: !2929, line: 42, type: !7)
!2928 = distinct !DISubprogram(name: "imin", scope: !2929, file: !2929, line: 42, type: !2930, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2929 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!7, !7, !7}
!2932 = !{!2927, !2933}
!2933 = !DILocalVariable(name: "b", arg: 2, scope: !2928, file: !2929, line: 42, type: !7)
!2934 = !DILocation(line: 0, scope: !2928, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1404, column: 10, scope: !2888)
!2936 = !DILocation(line: 44, column: 10, scope: !2928, inlinedAt: !2935)
!2937 = !DILocation(line: 1405, column: 8, scope: !2888)
!2938 = !DILocation(line: 1405, column: 32, scope: !2888)
!2939 = !DILocation(line: 1406, column: 1, scope: !2888)
!2940 = !DISubprogram(name: "sps_is_equal", scope: !439, file: !439, line: 268, type: !2941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!7, !437, !437}
!2943 = !DISubprogram(name: "exit_picture", scope: !2944, file: !2944, line: 23, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2944 = !DIFile(filename: "ldecod_src/inc/image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e4b0e470a939c3c4ca7dabe5f653bfe4")
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !549, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!2948 = !DISubprogram(name: "FreePartition", scope: !551, file: !551, line: 949, type: !2949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !1020, !7}
!2951 = !DISubprogram(name: "FreeSPS", scope: !439, file: !439, line: 266, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2952 = distinct !DISubprogram(name: "ProcessSubsetSPS", scope: !3, file: !3, line: 604, type: !2790, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958}
!2954 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2952, file: !3, line: 604, type: !549)
!2955 = !DILocalVariable(name: "nalu", arg: 2, scope: !2952, file: !3, line: 604, type: !1562)
!2956 = !DILocalVariable(name: "dp", scope: !2952, file: !3, line: 606, type: !1020)
!2957 = !DILocalVariable(name: "subset_sps", scope: !2952, file: !3, line: 607, type: !684)
!2958 = !DILocalVariable(name: "curr_seq_set_id", scope: !2952, file: !3, line: 608, type: !7)
!2959 = !DILocation(line: 0, scope: !2952)
!2960 = !DILocation(line: 606, column: 23, scope: !2952)
!2961 = !DILocation(line: 610, column: 15, scope: !2952)
!2962 = !DILocation(line: 610, column: 26, scope: !2952)
!2963 = !DILocation(line: 610, column: 47, scope: !2952)
!2964 = !DILocation(line: 610, column: 41, scope: !2952)
!2965 = !DILocation(line: 610, column: 61, scope: !2952)
!2966 = !DILocation(line: 610, column: 64, scope: !2952)
!2967 = !DILocation(line: 610, column: 55, scope: !2952)
!2968 = !DILocation(line: 610, column: 3, scope: !2952)
!2969 = !DILocation(line: 611, column: 79, scope: !2952)
!2970 = !DILocation(line: 611, column: 90, scope: !2952)
!2971 = !DILocation(line: 611, column: 110, scope: !2952)
!2972 = !DILocation(line: 611, column: 113, scope: !2952)
!2973 = !DILocation(line: 611, column: 63, scope: !2952)
!2974 = !DILocation(line: 611, column: 33, scope: !2952)
!2975 = !DILocation(line: 611, column: 44, scope: !2952)
!2976 = !DILocation(line: 611, column: 61, scope: !2952)
!2977 = !DILocation(line: 611, column: 7, scope: !2952)
!2978 = !DILocation(line: 611, column: 18, scope: !2952)
!2979 = !DILocation(line: 611, column: 27, scope: !2952)
!2980 = !DILocation(line: 612, column: 7, scope: !2952)
!2981 = !DILocation(line: 612, column: 18, scope: !2952)
!2982 = !DILocation(line: 612, column: 26, scope: !2952)
!2983 = !DILocation(line: 613, column: 33, scope: !2952)
!2984 = !DILocation(line: 613, column: 44, scope: !2952)
!2985 = !DILocation(line: 613, column: 60, scope: !2952)
!2986 = !DILocation(line: 613, column: 7, scope: !2952)
!2987 = !DILocation(line: 613, column: 27, scope: !2952)
!2988 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2989, file: !3, line: 208, type: !549)
!2989 = distinct !DISubprogram(name: "InterpretSubsetSPS", scope: !3, file: !3, line: 208, type: !2990, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!7, !549, !1020, !94}
!2992 = !{!2988, !2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DILocalVariable(name: "p", arg: 2, scope: !2989, file: !3, line: 208, type: !1020)
!2994 = !DILocalVariable(name: "curr_seq_set_id", arg: 3, scope: !2989, file: !3, line: 208, type: !94)
!2995 = !DILocalVariable(name: "subset_sps", scope: !2989, file: !3, line: 210, type: !684)
!2996 = !DILocalVariable(name: "additional_extension2_flag", scope: !2989, file: !3, line: 211, type: !31)
!2997 = !DILocalVariable(name: "s", scope: !2989, file: !3, line: 212, type: !1025)
!2998 = !DILocalVariable(name: "sps", scope: !2989, file: !3, line: 213, type: !437)
!2999 = !DILocation(line: 0, scope: !2989, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 614, column: 3, scope: !2952)
!3001 = !DILocation(line: 212, column: 21, scope: !2989, inlinedAt: !3000)
!3002 = !DILocation(line: 213, column: 35, scope: !2989, inlinedAt: !3000)
!3003 = !DILocation(line: 219, column: 3, scope: !2989, inlinedAt: !3000)
!3004 = !DILocation(line: 221, column: 27, scope: !2989, inlinedAt: !3000)
!3005 = !DILocation(line: 222, column: 23, scope: !2989, inlinedAt: !3000)
!3006 = !DILocation(line: 222, column: 39, scope: !2989, inlinedAt: !3000)
!3007 = !DILocation(line: 223, column: 18, scope: !3008, inlinedAt: !3000)
!3008 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 223, column: 6)
!3009 = !DILocation(line: 223, column: 6, scope: !3008, inlinedAt: !3000)
!3010 = !DILocation(line: 223, column: 24, scope: !3008, inlinedAt: !3000)
!3011 = !DILocation(line: 223, column: 39, scope: !3008, inlinedAt: !3000)
!3012 = !DILocation(line: 223, column: 55, scope: !3008, inlinedAt: !3000)
!3013 = !DILocation(line: 223, column: 6, scope: !2989, inlinedAt: !3000)
!3014 = !DILocation(line: 225, column: 5, scope: !3015, inlinedAt: !3000)
!3015 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 224, column: 3)
!3016 = !DILocation(line: 226, column: 3, scope: !3015, inlinedAt: !3000)
!3017 = !DILocation(line: 227, column: 3, scope: !2989, inlinedAt: !3000)
!3018 = !DILocation(line: 230, column: 21, scope: !2989, inlinedAt: !3000)
!3019 = !DILocation(line: 237, column: 22, scope: !3020, inlinedAt: !3000)
!3020 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 237, column: 6)
!3021 = !DILocation(line: 237, column: 46, scope: !3020, inlinedAt: !3000)
!3022 = !DILocation(line: 239, column: 35, scope: !3023, inlinedAt: !3000)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 238, column: 3)
!3024 = !DILocation(line: 239, column: 16, scope: !3023, inlinedAt: !3000)
!3025 = !DILocation(line: 239, column: 33, scope: !3023, inlinedAt: !3000)
!3026 = !DILocation(line: 241, column: 36, scope: !3027, inlinedAt: !3000)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 241, column: 7)
!3028 = !DILocation(line: 241, column: 7, scope: !3023, inlinedAt: !3000)
!3029 = !DILocation(line: 243, column: 5, scope: !3030, inlinedAt: !3000)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 242, column: 4)
!3031 = !DILocation(line: 244, column: 5, scope: !3030, inlinedAt: !3000)
!3032 = !DILocation(line: 247, column: 4, scope: !3023, inlinedAt: !3000)
!3033 = !DILocation(line: 249, column: 50, scope: !3023, inlinedAt: !3000)
!3034 = !DILocation(line: 249, column: 16, scope: !3023, inlinedAt: !3000)
!3035 = !DILocation(line: 249, column: 48, scope: !3023, inlinedAt: !3000)
!3036 = !DILocation(line: 250, column: 7, scope: !3037, inlinedAt: !3000)
!3037 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 250, column: 7)
!3038 = !DILocation(line: 250, column: 7, scope: !3023, inlinedAt: !3000)
!3039 = !DILocation(line: 251, column: 48, scope: !3037, inlinedAt: !3000)
!3040 = !DILocation(line: 251, column: 5, scope: !3037, inlinedAt: !3000)
!3041 = !DILocation(line: 254, column: 32, scope: !2989, inlinedAt: !3000)
!3042 = !DILocation(line: 255, column: 6, scope: !3043, inlinedAt: !3000)
!3043 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 255, column: 6)
!3044 = !DILocation(line: 255, column: 6, scope: !2989, inlinedAt: !3000)
!3045 = !DILocation(line: 257, column: 29, scope: !3046, inlinedAt: !3000)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 256, column: 3)
!3047 = !DILocation(line: 257, column: 46, scope: !3046, inlinedAt: !3000)
!3048 = !DILocation(line: 257, column: 65, scope: !3046, inlinedAt: !3000)
!3049 = !DILocation(line: 257, column: 11, scope: !3046, inlinedAt: !3000)
!3050 = !DILocation(line: 257, column: 4, scope: !3046, inlinedAt: !3000)
!3051 = !DILocation(line: 258, column: 34, scope: !3046, inlinedAt: !3000)
!3052 = distinct !{!3052, !3050, !3053}
!3053 = !DILocation(line: 258, column: 77, scope: !3046, inlinedAt: !3000)
!3054 = !DILocation(line: 261, column: 23, scope: !3055, inlinedAt: !3000)
!3055 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 261, column: 7)
!3056 = !DILocation(line: 261, column: 7, scope: !3055, inlinedAt: !3000)
!3057 = !DILocation(line: 261, column: 7, scope: !2989, inlinedAt: !3000)
!3058 = !DILocation(line: 262, column: 22, scope: !3055, inlinedAt: !3000)
!3059 = !DILocation(line: 262, column: 4, scope: !3055, inlinedAt: !3000)
!3060 = !DILocation(line: 264, column: 3, scope: !2989, inlinedAt: !3000)
!3061 = !DILocation(line: 265, column: 3, scope: !2989, inlinedAt: !3000)
!3062 = !DILocation(line: 616, column: 39, scope: !2952)
!3063 = !DILocation(line: 617, column: 3, scope: !2952)
!3064 = !DILocation(line: 619, column: 19, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 619, column: 7)
!3066 = !DILocation(line: 619, column: 7, scope: !3065)
!3067 = !DILocation(line: 619, column: 7, scope: !2952)
!3068 = !DILocation(line: 622, column: 42, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 620, column: 3)
!3070 = !DILocation(line: 622, column: 12, scope: !3069)
!3071 = !DILocation(line: 622, column: 24, scope: !3069)
!3072 = !DILocation(line: 623, column: 57, scope: !3069)
!3073 = !DILocation(line: 623, column: 12, scope: !3069)
!3074 = !DILocation(line: 623, column: 39, scope: !3069)
!3075 = !DILocation(line: 624, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 624, column: 9)
!3077 = !DILocation(line: 624, column: 9, scope: !3069)
!3078 = !DILocation(line: 630, column: 48, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 629, column: 5)
!3080 = !DILocation(line: 0, scope: !3076)
!3081 = !DILocation(line: 635, column: 3, scope: !2952)
!3082 = !DILocation(line: 636, column: 1, scope: !2952)
!3083 = distinct !DISubprogram(name: "ProcessPPS", scope: !3, file: !3, line: 639, type: !2790, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3083, file: !3, line: 639, type: !549)
!3086 = !DILocalVariable(name: "nalu", arg: 2, scope: !3083, file: !3, line: 639, type: !1562)
!3087 = !DILocalVariable(name: "dp", scope: !3083, file: !3, line: 641, type: !1020)
!3088 = !DILocalVariable(name: "pps", scope: !3083, file: !3, line: 642, type: !638)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 641, column: 23, scope: !3083)
!3091 = !DILocation(line: 642, column: 35, scope: !3083)
!3092 = !DILocation(line: 644, column: 15, scope: !3083)
!3093 = !DILocation(line: 644, column: 26, scope: !3083)
!3094 = !DILocation(line: 644, column: 47, scope: !3083)
!3095 = !DILocation(line: 644, column: 41, scope: !3083)
!3096 = !DILocation(line: 644, column: 61, scope: !3083)
!3097 = !DILocation(line: 644, column: 64, scope: !3083)
!3098 = !DILocation(line: 644, column: 55, scope: !3083)
!3099 = !DILocation(line: 644, column: 3, scope: !3083)
!3100 = !DILocation(line: 645, column: 79, scope: !3083)
!3101 = !DILocation(line: 645, column: 90, scope: !3083)
!3102 = !DILocation(line: 645, column: 110, scope: !3083)
!3103 = !DILocation(line: 645, column: 113, scope: !3083)
!3104 = !DILocation(line: 645, column: 63, scope: !3083)
!3105 = !DILocation(line: 645, column: 33, scope: !3083)
!3106 = !DILocation(line: 645, column: 44, scope: !3083)
!3107 = !DILocation(line: 645, column: 61, scope: !3083)
!3108 = !DILocation(line: 645, column: 7, scope: !3083)
!3109 = !DILocation(line: 645, column: 18, scope: !3083)
!3110 = !DILocation(line: 645, column: 27, scope: !3083)
!3111 = !DILocation(line: 646, column: 7, scope: !3083)
!3112 = !DILocation(line: 646, column: 18, scope: !3083)
!3113 = !DILocation(line: 646, column: 26, scope: !3083)
!3114 = !DILocation(line: 647, column: 33, scope: !3083)
!3115 = !DILocation(line: 647, column: 44, scope: !3083)
!3116 = !DILocation(line: 647, column: 60, scope: !3083)
!3117 = !DILocation(line: 647, column: 7, scope: !3083)
!3118 = !DILocation(line: 647, column: 27, scope: !3083)
!3119 = !DILocation(line: 648, column: 3, scope: !3083)
!3120 = !DILocation(line: 650, column: 14, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 650, column: 7)
!3122 = !DILocation(line: 650, column: 7, scope: !3121)
!3123 = !DILocation(line: 650, column: 7, scope: !3083)
!3124 = !DILocation(line: 652, column: 14, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 652, column: 9)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 651, column: 3)
!3127 = !DILocation(line: 652, column: 57, scope: !3125)
!3128 = !DILocation(line: 652, column: 35, scope: !3125)
!3129 = !DILocation(line: 652, column: 9, scope: !3126)
!3130 = !DILocation(line: 654, column: 11, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 654, column: 10)
!3132 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 653, column: 5)
!3133 = !DILocation(line: 654, column: 10, scope: !3132)
!3134 = !DILocation(line: 657, column: 23, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 655, column: 7)
!3136 = !DILocation(line: 657, column: 40, scope: !3135)
!3137 = !DILocation(line: 657, column: 9, scope: !3135)
!3138 = !DILocation(line: 659, column: 22, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 659, column: 15)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 658, column: 9)
!3141 = !DILocation(line: 659, column: 15, scope: !3139)
!3142 = !DILocation(line: 659, column: 15, scope: !3140)
!3143 = !DILocation(line: 662, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 660, column: 11)
!3145 = !DILocation(line: 663, column: 11, scope: !3144)
!3146 = !DILocation(line: 664, column: 29, scope: !3140)
!3147 = !DILocation(line: 666, column: 7, scope: !3135)
!3148 = !DILocation(line: 669, column: 33, scope: !3083)
!3149 = !DILocation(line: 0, scope: !2726, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 669, column: 3, scope: !3083)
!3151 = !DILocation(line: 522, column: 14, scope: !2735, inlinedAt: !3150)
!3152 = !DILocation(line: 522, column: 7, scope: !2735, inlinedAt: !3150)
!3153 = !DILocation(line: 522, column: 28, scope: !2735, inlinedAt: !3150)
!3154 = !DILocation(line: 522, column: 34, scope: !2735, inlinedAt: !3150)
!3155 = !DILocation(line: 522, column: 42, scope: !2735, inlinedAt: !3150)
!3156 = !DILocation(line: 522, column: 66, scope: !2735, inlinedAt: !3150)
!3157 = !DILocation(line: 522, column: 81, scope: !2735, inlinedAt: !3150)
!3158 = !DILocation(line: 522, column: 7, scope: !2726, inlinedAt: !3150)
!3159 = !DILocation(line: 523, column: 5, scope: !2735, inlinedAt: !3150)
!3160 = !DILocation(line: 525, column: 3, scope: !2726, inlinedAt: !3150)
!3161 = !DILocation(line: 529, column: 46, scope: !2726, inlinedAt: !3150)
!3162 = !DILocation(line: 529, column: 24, scope: !2726, inlinedAt: !3150)
!3163 = !DILocation(line: 529, column: 39, scope: !2726, inlinedAt: !3150)
!3164 = !DILocation(line: 530, column: 32, scope: !2726, inlinedAt: !3150)
!3165 = !DILocation(line: 670, column: 3, scope: !3083)
!3166 = !DILocation(line: 671, column: 3, scope: !3083)
!3167 = !DILocation(line: 672, column: 1, scope: !3083)
!3168 = !DISubprogram(name: "AllocPPS", scope: !439, file: !439, line: 262, type: !3169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!638}
!3171 = !DISubprogram(name: "pps_is_equal", scope: !439, file: !439, line: 269, type: !3172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!7, !638, !638}
!3174 = !DISubprogram(name: "FreePPS", scope: !439, file: !439, line: 265, type: !2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3175 = !DILocation(line: 0, scope: !434)
!3176 = !DILocation(line: 700, column: 35, scope: !434)
!3177 = !DILocation(line: 708, column: 12, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !434, file: !3, line: 708, column: 7)
!3179 = !DILocation(line: 708, column: 7, scope: !3178)
!3180 = !DILocation(line: 708, column: 7, scope: !434)
!3181 = !DILocation(line: 710, column: 35, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 709, column: 3)
!3183 = !DILocation(line: 710, column: 19, scope: !3182)
!3184 = !DILocation(line: 710, column: 61, scope: !3182)
!3185 = !DILocation(line: 711, column: 61, scope: !3182)
!3186 = !DILocation(line: 712, column: 19, scope: !3182)
!3187 = !DILocation(line: 712, column: 67, scope: !3182)
!3188 = !DILocation(line: 712, column: 60, scope: !3182)
!3189 = !DILocation(line: 712, column: 54, scope: !3182)
!3190 = !DILocation(line: 712, column: 97, scope: !3182)
!3191 = !DILocation(line: 713, column: 97, scope: !3182)
!3192 = !DILocation(line: 714, column: 3, scope: !3182)
!3193 = !DILocation(line: 720, column: 47, scope: !434)
!3194 = !DILocation(line: 721, column: 48, scope: !434)
!3195 = !DILocation(line: 720, column: 29, scope: !434)
!3196 = !DILocation(line: 720, column: 11, scope: !434)
!3197 = !DILocation(line: 720, column: 20, scope: !434)
!3198 = !DILocation(line: 721, column: 30, scope: !434)
!3199 = !DILocation(line: 721, column: 11, scope: !434)
!3200 = !DILocation(line: 721, column: 21, scope: !434)
!3201 = !DILocation(line: 724, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !434, file: !3, line: 724, column: 7)
!3203 = !DILocation(line: 724, column: 7, scope: !3202)
!3204 = !DILocation(line: 724, column: 7, scope: !434)
!3205 = !DILocation(line: 726, column: 24, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 725, column: 3)
!3207 = !DILocation(line: 727, column: 24, scope: !3206)
!3208 = !DILocation(line: 728, column: 30, scope: !3206)
!3209 = !DILocation(line: 728, column: 23, scope: !3206)
!3210 = !DILocation(line: 728, column: 60, scope: !3206)
!3211 = !DILocation(line: 728, column: 52, scope: !3206)
!3212 = !DILocation(line: 729, column: 60, scope: !3206)
!3213 = !DILocation(line: 729, column: 52, scope: !3206)
!3214 = !DILocation(line: 730, column: 3, scope: !3206)
!3215 = !DILocation(line: 0, scope: !3202)
!3216 = !DILocation(line: 736, column: 13, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !434, file: !3, line: 736, column: 7)
!3218 = !DILocation(line: 736, column: 30, scope: !3217)
!3219 = !DILocation(line: 736, column: 40, scope: !3217)
!3220 = !DILocation(line: 736, column: 50, scope: !3217)
!3221 = !DILocation(line: 736, column: 43, scope: !3217)
!3222 = !DILocation(line: 736, column: 7, scope: !434)
!3223 = !DILocation(line: 738, column: 43, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 737, column: 3)
!3225 = !DILocation(line: 738, column: 5, scope: !3224)
!3226 = !DILocation(line: 738, column: 23, scope: !3224)
!3227 = !DILocation(line: 739, column: 5, scope: !3224)
!3228 = !DILocation(line: 739, column: 23, scope: !3224)
!3229 = !DILocation(line: 740, column: 44, scope: !3224)
!3230 = !DILocation(line: 742, column: 3, scope: !3224)
!3231 = !DILocation(line: 745, column: 32, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 744, column: 3)
!3233 = !DILocation(line: 745, column: 53, scope: !3232)
!3234 = !DILocation(line: 745, column: 5, scope: !3232)
!3235 = !DILocation(line: 745, column: 23, scope: !3232)
!3236 = !DILocation(line: 746, column: 5, scope: !3232)
!3237 = !DILocation(line: 746, column: 23, scope: !3232)
!3238 = !DILocation(line: 747, column: 32, scope: !3232)
!3239 = !DILocation(line: 747, column: 53, scope: !3232)
!3240 = !DILocation(line: 0, scope: !3217)
!3241 = !DILocation(line: 751, column: 30, scope: !434)
!3242 = !DILocation(line: 751, column: 11, scope: !434)
!3243 = !DILocation(line: 751, column: 21, scope: !434)
!3244 = !DILocation(line: 752, column: 30, scope: !434)
!3245 = !DILocation(line: 752, column: 3, scope: !434)
!3246 = !DILocation(line: 752, column: 21, scope: !434)
!3247 = !DILocation(line: 753, column: 3, scope: !434)
!3248 = !DILocation(line: 753, column: 21, scope: !434)
!3249 = !DILocation(line: 754, column: 30, scope: !434)
!3250 = !DILocation(line: 754, column: 11, scope: !434)
!3251 = !DILocation(line: 754, column: 21, scope: !434)
!3252 = !DILocation(line: 755, column: 30, scope: !434)
!3253 = !DILocation(line: 755, column: 3, scope: !434)
!3254 = !DILocation(line: 755, column: 21, scope: !434)
!3255 = !DILocation(line: 756, column: 3, scope: !434)
!3256 = !DILocation(line: 756, column: 21, scope: !434)
!3257 = !DILocation(line: 758, column: 25, scope: !434)
!3258 = !DILocation(line: 758, column: 44, scope: !434)
!3259 = !DILocation(line: 758, column: 42, scope: !434)
!3260 = !DILocation(line: 758, column: 11, scope: !434)
!3261 = !DILocation(line: 758, column: 23, scope: !434)
!3262 = !DILocation(line: 759, column: 25, scope: !434)
!3263 = !DILocation(line: 759, column: 44, scope: !434)
!3264 = !DILocation(line: 759, column: 42, scope: !434)
!3265 = !DILocation(line: 759, column: 3, scope: !434)
!3266 = !DILocation(line: 759, column: 23, scope: !434)
!3267 = !DILocation(line: 760, column: 3, scope: !434)
!3268 = !DILocation(line: 760, column: 23, scope: !434)
!3269 = !DILocation(line: 761, column: 67, scope: !434)
!3270 = !DILocation(line: 761, column: 11, scope: !434)
!3271 = !DILocation(line: 761, column: 23, scope: !434)
!3272 = !DILocation(line: 762, column: 11, scope: !434)
!3273 = !DILocation(line: 762, column: 43, scope: !434)
!3274 = !DILocation(line: 762, column: 23, scope: !434)
!3275 = !DILocation(line: 766, column: 25, scope: !434)
!3276 = !DILocation(line: 766, column: 44, scope: !434)
!3277 = !DILocation(line: 766, column: 42, scope: !434)
!3278 = !DILocation(line: 766, column: 11, scope: !434)
!3279 = !DILocation(line: 766, column: 23, scope: !434)
!3280 = !DILocation(line: 767, column: 25, scope: !434)
!3281 = !DILocation(line: 767, column: 44, scope: !434)
!3282 = !DILocation(line: 767, column: 42, scope: !434)
!3283 = !DILocation(line: 767, column: 3, scope: !434)
!3284 = !DILocation(line: 767, column: 23, scope: !434)
!3285 = !DILocation(line: 768, column: 3, scope: !434)
!3286 = !DILocation(line: 768, column: 23, scope: !434)
!3287 = !DILocation(line: 769, column: 67, scope: !434)
!3288 = !DILocation(line: 769, column: 11, scope: !434)
!3289 = !DILocation(line: 769, column: 23, scope: !434)
!3290 = !DILocation(line: 770, column: 11, scope: !434)
!3291 = !DILocation(line: 770, column: 43, scope: !434)
!3292 = !DILocation(line: 770, column: 23, scope: !434)
!3293 = !DILocation(line: 774, column: 56, scope: !434)
!3294 = !DILocation(line: 774, column: 49, scope: !434)
!3295 = !DILocation(line: 774, column: 34, scope: !434)
!3296 = !DILocation(line: 774, column: 47, scope: !434)
!3297 = !DILocation(line: 774, column: 11, scope: !434)
!3298 = !DILocation(line: 774, column: 24, scope: !434)
!3299 = !DILocation(line: 775, column: 56, scope: !434)
!3300 = !DILocation(line: 775, column: 49, scope: !434)
!3301 = !DILocation(line: 775, column: 26, scope: !434)
!3302 = !DILocation(line: 775, column: 47, scope: !434)
!3303 = !DILocation(line: 775, column: 3, scope: !434)
!3304 = !DILocation(line: 775, column: 24, scope: !434)
!3305 = !DILocation(line: 776, column: 56, scope: !434)
!3306 = !DILocation(line: 776, column: 49, scope: !434)
!3307 = !DILocation(line: 776, column: 26, scope: !434)
!3308 = !DILocation(line: 776, column: 47, scope: !434)
!3309 = !DILocation(line: 776, column: 3, scope: !434)
!3310 = !DILocation(line: 776, column: 24, scope: !434)
!3311 = !DILocation(line: 777, column: 41, scope: !434)
!3312 = !DILocation(line: 777, column: 63, scope: !434)
!3313 = !DILocalVariable(name: "a", arg: 1, scope: !3314, file: !2929, line: 47, type: !7)
!3314 = distinct !DISubprogram(name: "imax", scope: !2929, file: !2929, line: 47, type: !2930, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3315)
!3315 = !{!3313, !3316}
!3316 = !DILocalVariable(name: "b", arg: 2, scope: !3314, file: !2929, line: 47, type: !7)
!3317 = !DILocation(line: 0, scope: !3314, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 777, column: 36, scope: !434)
!3319 = !DILocation(line: 49, column: 10, scope: !3314, inlinedAt: !3318)
!3320 = !DILocation(line: 777, column: 85, scope: !434)
!3321 = !DILocation(line: 777, column: 35, scope: !434)
!3322 = !DILocation(line: 777, column: 11, scope: !434)
!3323 = !DILocation(line: 777, column: 33, scope: !434)
!3324 = !DILocation(line: 778, column: 64, scope: !434)
!3325 = !DILocation(line: 778, column: 11, scope: !434)
!3326 = !DILocation(line: 778, column: 32, scope: !434)
!3327 = !DILocation(line: 780, column: 33, scope: !434)
!3328 = !DILocation(line: 780, column: 11, scope: !434)
!3329 = !DILocation(line: 780, column: 23, scope: !434)
!3330 = !DILocation(line: 781, column: 33, scope: !434)
!3331 = !DILocation(line: 781, column: 11, scope: !434)
!3332 = !DILocation(line: 781, column: 23, scope: !434)
!3333 = !DILocation(line: 782, column: 65, scope: !434)
!3334 = !DILocation(line: 782, column: 44, scope: !434)
!3335 = !DILocation(line: 782, column: 23, scope: !434)
!3336 = !DILocation(line: 784, column: 11, scope: !434)
!3337 = !DILocation(line: 784, column: 31, scope: !434)
!3338 = !DILocation(line: 785, column: 11, scope: !434)
!3339 = !DILocation(line: 785, column: 31, scope: !434)
!3340 = !DILocation(line: 786, column: 55, scope: !434)
!3341 = !DILocation(line: 786, column: 46, scope: !434)
!3342 = !DILocation(line: 786, column: 69, scope: !434)
!3343 = !DILocation(line: 786, column: 11, scope: !434)
!3344 = !DILocation(line: 786, column: 31, scope: !434)
!3345 = !DILocation(line: 787, column: 54, scope: !434)
!3346 = !DILocation(line: 787, column: 45, scope: !434)
!3347 = !DILocation(line: 787, column: 68, scope: !434)
!3348 = !DILocation(line: 787, column: 11, scope: !434)
!3349 = !DILocation(line: 787, column: 31, scope: !434)
!3350 = !DILocation(line: 789, column: 11, scope: !434)
!3351 = !DILocation(line: 789, column: 31, scope: !434)
!3352 = !DILocation(line: 790, column: 41, scope: !434)
!3353 = !DILocation(line: 790, column: 11, scope: !434)
!3354 = !DILocation(line: 790, column: 31, scope: !434)
!3355 = !DILocation(line: 791, column: 41, scope: !434)
!3356 = !DILocation(line: 791, column: 11, scope: !434)
!3357 = !DILocation(line: 791, column: 31, scope: !434)
!3358 = !DILocation(line: 792, column: 41, scope: !434)
!3359 = !DILocation(line: 792, column: 11, scope: !434)
!3360 = !DILocation(line: 792, column: 31, scope: !434)
!3361 = !DILocalVariable(name: "format", arg: 1, scope: !3362, file: !3, line: 681, type: !1666)
!3362 = distinct !DISubprogram(name: "updateMaxValue", scope: !3, file: !3, line: 681, type: !3363, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !1666}
!3365 = !{!3361}
!3366 = !DILocation(line: 0, scope: !3362, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 794, column: 3, scope: !434)
!3368 = !DILocation(line: 683, column: 32, scope: !3362, inlinedAt: !3367)
!3369 = !DILocation(line: 683, column: 54, scope: !3362, inlinedAt: !3367)
!3370 = !DILocation(line: 683, column: 11, scope: !3362, inlinedAt: !3367)
!3371 = !DILocation(line: 683, column: 24, scope: !3362, inlinedAt: !3367)
!3372 = !DILocation(line: 684, column: 50, scope: !3362, inlinedAt: !3367)
!3373 = !DILocation(line: 684, column: 11, scope: !3362, inlinedAt: !3367)
!3374 = !DILocation(line: 684, column: 27, scope: !3362, inlinedAt: !3367)
!3375 = !DILocation(line: 685, column: 32, scope: !3362, inlinedAt: !3367)
!3376 = !DILocation(line: 685, column: 54, scope: !3362, inlinedAt: !3367)
!3377 = !DILocation(line: 685, column: 3, scope: !3362, inlinedAt: !3367)
!3378 = !DILocation(line: 685, column: 24, scope: !3362, inlinedAt: !3367)
!3379 = !DILocation(line: 686, column: 50, scope: !3362, inlinedAt: !3367)
!3380 = !DILocation(line: 686, column: 3, scope: !3362, inlinedAt: !3367)
!3381 = !DILocation(line: 686, column: 27, scope: !3362, inlinedAt: !3367)
!3382 = !DILocation(line: 687, column: 32, scope: !3362, inlinedAt: !3367)
!3383 = !DILocation(line: 687, column: 54, scope: !3362, inlinedAt: !3367)
!3384 = !DILocation(line: 687, column: 3, scope: !3362, inlinedAt: !3367)
!3385 = !DILocation(line: 687, column: 24, scope: !3362, inlinedAt: !3367)
!3386 = !DILocation(line: 688, column: 50, scope: !3362, inlinedAt: !3367)
!3387 = !DILocation(line: 688, column: 3, scope: !3362, inlinedAt: !3367)
!3388 = !DILocation(line: 688, column: 27, scope: !3362, inlinedAt: !3367)
!3389 = !DILocation(line: 0, scope: !3362, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 795, column: 3, scope: !434)
!3391 = !DILocation(line: 683, column: 32, scope: !3362, inlinedAt: !3390)
!3392 = !DILocation(line: 683, column: 54, scope: !3362, inlinedAt: !3390)
!3393 = !DILocation(line: 683, column: 11, scope: !3362, inlinedAt: !3390)
!3394 = !DILocation(line: 683, column: 24, scope: !3362, inlinedAt: !3390)
!3395 = !DILocation(line: 684, column: 50, scope: !3362, inlinedAt: !3390)
!3396 = !DILocation(line: 684, column: 11, scope: !3362, inlinedAt: !3390)
!3397 = !DILocation(line: 684, column: 27, scope: !3362, inlinedAt: !3390)
!3398 = !DILocation(line: 685, column: 32, scope: !3362, inlinedAt: !3390)
!3399 = !DILocation(line: 685, column: 54, scope: !3362, inlinedAt: !3390)
!3400 = !DILocation(line: 685, column: 3, scope: !3362, inlinedAt: !3390)
!3401 = !DILocation(line: 685, column: 24, scope: !3362, inlinedAt: !3390)
!3402 = !DILocation(line: 686, column: 50, scope: !3362, inlinedAt: !3390)
!3403 = !DILocation(line: 686, column: 3, scope: !3362, inlinedAt: !3390)
!3404 = !DILocation(line: 686, column: 27, scope: !3362, inlinedAt: !3390)
!3405 = !DILocation(line: 687, column: 32, scope: !3362, inlinedAt: !3390)
!3406 = !DILocation(line: 687, column: 54, scope: !3362, inlinedAt: !3390)
!3407 = !DILocation(line: 687, column: 3, scope: !3362, inlinedAt: !3390)
!3408 = !DILocation(line: 687, column: 24, scope: !3362, inlinedAt: !3390)
!3409 = !DILocation(line: 688, column: 50, scope: !3362, inlinedAt: !3390)
!3410 = !DILocation(line: 688, column: 3, scope: !3362, inlinedAt: !3390)
!3411 = !DILocation(line: 688, column: 27, scope: !3362, inlinedAt: !3390)
!3412 = !DILocation(line: 796, column: 1, scope: !434)
!3413 = distinct !DISubprogram(name: "activate_sps", scope: !3, file: !3, line: 805, type: !3414, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !549, !437}
!3416 = !{!3417, !3418, !3419}
!3417 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3413, file: !3, line: 805, type: !549)
!3418 = !DILocalVariable(name: "sps", arg: 2, scope: !3413, file: !3, line: 805, type: !437)
!3419 = !DILocalVariable(name: "p_Inp", scope: !3413, file: !3, line: 807, type: !803)
!3420 = !DILocation(line: 0, scope: !3413)
!3421 = !DILocation(line: 807, column: 35, scope: !3413)
!3422 = !DILocation(line: 809, column: 14, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 809, column: 7)
!3424 = !DILocation(line: 809, column: 25, scope: !3423)
!3425 = !DILocation(line: 809, column: 7, scope: !3413)
!3426 = !DILocation(line: 811, column: 16, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 811, column: 9)
!3428 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 810, column: 3)
!3429 = !DILocation(line: 811, column: 9, scope: !3427)
!3430 = !DILocation(line: 811, column: 9, scope: !3428)
!3431 = !DILocation(line: 814, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 812, column: 5)
!3433 = !DILocation(line: 815, column: 5, scope: !3432)
!3434 = !DILocation(line: 816, column: 23, scope: !3428)
!3435 = !DILocation(line: 818, column: 12, scope: !3428)
!3436 = !DILocation(line: 818, column: 28, scope: !3428)
!3437 = !DILocation(line: 819, column: 12, scope: !3428)
!3438 = !DILocation(line: 819, column: 28, scope: !3428)
!3439 = !DILocation(line: 820, column: 12, scope: !3428)
!3440 = !DILocation(line: 820, column: 28, scope: !3428)
!3441 = !DILocation(line: 823, column: 28, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 823, column: 9)
!3443 = !DILocation(line: 823, column: 38, scope: !3442)
!3444 = !DILocation(line: 823, column: 9, scope: !3428)
!3445 = !DILocation(line: 825, column: 14, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 824, column: 5)
!3447 = !DILocation(line: 825, column: 24, scope: !3446)
!3448 = !DILocation(line: 826, column: 5, scope: !3446)
!3449 = !DILocation(line: 827, column: 43, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 827, column: 14)
!3451 = !DILocation(line: 827, column: 14, scope: !3442)
!3452 = !DILocation(line: 829, column: 14, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 828, column: 5)
!3454 = !DILocation(line: 829, column: 24, scope: !3453)
!3455 = !DILocation(line: 830, column: 5, scope: !3453)
!3456 = !DILocation(line: 831, column: 43, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 831, column: 14)
!3458 = !DILocation(line: 0, scope: !3457)
!3459 = !DILocation(line: 831, column: 14, scope: !3450)
!3460 = !DILocation(line: 833, column: 24, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 832, column: 5)
!3462 = !DILocation(line: 834, column: 5, scope: !3461)
!3463 = !DILocation(line: 837, column: 24, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 836, column: 5)
!3465 = !DILocation(line: 841, column: 48, scope: !3428)
!3466 = !DILocation(line: 841, column: 34, scope: !3428)
!3467 = !DILocation(line: 841, column: 12, scope: !3428)
!3468 = !DILocation(line: 841, column: 32, scope: !3428)
!3469 = !DILocation(line: 842, column: 44, scope: !3428)
!3470 = !DILocation(line: 842, column: 36, scope: !3428)
!3471 = !DILocation(line: 842, column: 12, scope: !3428)
!3472 = !DILocation(line: 842, column: 32, scope: !3428)
!3473 = !DILocation(line: 843, column: 14, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 843, column: 9)
!3475 = !DILocation(line: 843, column: 32, scope: !3474)
!3476 = !DILocation(line: 843, column: 9, scope: !3428)
!3477 = !DILocation(line: 845, column: 48, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 844, column: 5)
!3479 = !DILocation(line: 845, column: 34, scope: !3478)
!3480 = !DILocation(line: 845, column: 32, scope: !3478)
!3481 = !DILocation(line: 846, column: 44, scope: !3478)
!3482 = !DILocation(line: 846, column: 36, scope: !3478)
!3483 = !DILocation(line: 846, column: 7, scope: !3478)
!3484 = !DILocation(line: 846, column: 32, scope: !3478)
!3485 = !DILocation(line: 847, column: 5, scope: !3478)
!3486 = !DILocation(line: 849, column: 35, scope: !3428)
!3487 = !DILocation(line: 849, column: 60, scope: !3428)
!3488 = !DILocation(line: 849, column: 27, scope: !3428)
!3489 = !DILocation(line: 849, column: 12, scope: !3428)
!3490 = !DILocation(line: 849, column: 24, scope: !3428)
!3491 = !DILocation(line: 850, column: 34, scope: !3428)
!3492 = !DILocation(line: 850, column: 58, scope: !3428)
!3493 = !DILocation(line: 850, column: 12, scope: !3428)
!3494 = !DILocation(line: 850, column: 26, scope: !3428)
!3495 = !DILocation(line: 851, column: 40, scope: !3428)
!3496 = !DILocation(line: 851, column: 71, scope: !3428)
!3497 = !DILocation(line: 851, column: 12, scope: !3428)
!3498 = !DILocation(line: 851, column: 32, scope: !3428)
!3499 = !DILocation(line: 852, column: 42, scope: !3428)
!3500 = !DILocation(line: 852, column: 35, scope: !3428)
!3501 = !DILocation(line: 852, column: 64, scope: !3428)
!3502 = !DILocation(line: 852, column: 12, scope: !3428)
!3503 = !DILocation(line: 852, column: 29, scope: !3428)
!3504 = !DILocation(line: 853, column: 50, scope: !3428)
!3505 = !DILocation(line: 853, column: 12, scope: !3428)
!3506 = !DILocation(line: 853, column: 27, scope: !3428)
!3507 = !DILocation(line: 855, column: 28, scope: !3428)
!3508 = !DILocation(line: 855, column: 12, scope: !3428)
!3509 = !DILocation(line: 855, column: 22, scope: !3428)
!3510 = !DILocation(line: 857, column: 41, scope: !3428)
!3511 = !DILocation(line: 857, column: 12, scope: !3428)
!3512 = !DILocation(line: 857, column: 18, scope: !3428)
!3513 = !DILocation(line: 858, column: 45, scope: !3428)
!3514 = !DILocation(line: 858, column: 12, scope: !3428)
!3515 = !DILocation(line: 858, column: 19, scope: !3428)
!3516 = !DILocation(line: 860, column: 14, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 860, column: 9)
!3518 = !DILocation(line: 860, column: 9, scope: !3428)
!3519 = !DILocation(line: 862, column: 41, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 861, column: 5)
!3521 = !DILocation(line: 862, column: 24, scope: !3520)
!3522 = !DILocation(line: 863, column: 41, scope: !3520)
!3523 = !DILocation(line: 863, column: 24, scope: !3520)
!3524 = !DILocation(line: 864, column: 5, scope: !3520)
!3525 = !DILocation(line: 867, column: 40, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 866, column: 5)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 865, column: 14)
!3528 = !DILocation(line: 867, column: 24, scope: !3526)
!3529 = !DILocation(line: 868, column: 24, scope: !3526)
!3530 = !DILocation(line: 869, column: 14, scope: !3526)
!3531 = !DILocation(line: 869, column: 26, scope: !3526)
!3532 = !DILocation(line: 870, column: 5, scope: !3526)
!3533 = !DILocation(line: 874, column: 23, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 872, column: 5)
!3535 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 871, column: 14)
!3536 = !DILocation(line: 875, column: 24, scope: !3534)
!3537 = !DILocation(line: 876, column: 35, scope: !3534)
!3538 = !DILocation(line: 876, column: 14, scope: !3534)
!3539 = !DILocation(line: 876, column: 26, scope: !3534)
!3540 = !DILocation(line: 878, column: 5, scope: !3534)
!3541 = !DILocation(line: 881, column: 16, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 881, column: 9)
!3543 = !DILocation(line: 881, column: 73, scope: !3542)
!3544 = !DILocation(line: 881, column: 45, scope: !3542)
!3545 = !DILocation(line: 882, column: 2, scope: !3542)
!3546 = !DILocation(line: 882, column: 12, scope: !3542)
!3547 = !DILocation(line: 882, column: 76, scope: !3542)
!3548 = !DILocation(line: 882, column: 48, scope: !3542)
!3549 = !DILocation(line: 883, column: 2, scope: !3542)
!3550 = !DILocation(line: 883, column: 12, scope: !3542)
!3551 = !DILocation(line: 883, column: 44, scope: !3542)
!3552 = !DILocation(line: 883, column: 41, scope: !3542)
!3553 = !DILocation(line: 884, column: 9, scope: !3542)
!3554 = !DILocation(line: 884, column: 20, scope: !3542)
!3555 = !DILocation(line: 884, column: 53, scope: !3542)
!3556 = !DILocation(line: 884, column: 65, scope: !3542)
!3557 = !DILocation(line: 884, column: 37, scope: !3542)
!3558 = !DILocation(line: 885, column: 6, scope: !3542)
!3559 = !DILocation(line: 888, column: 4, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 887, column: 3)
!3561 = !DILocation(line: 889, column: 4, scope: !3560)
!3562 = !DILocation(line: 891, column: 16, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 891, column: 8)
!3564 = !DILocation(line: 891, column: 9, scope: !3563)
!3565 = !DILocation(line: 891, column: 8, scope: !3560)
!3566 = !DILocation(line: 893, column: 22, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 892, column: 4)
!3568 = !DILocation(line: 893, column: 5, scope: !3567)
!3569 = !DILocation(line: 894, column: 4, scope: !3567)
!3570 = !DILocation(line: 896, column: 30, scope: !3560)
!3571 = !DILocation(line: 896, column: 7, scope: !3560)
!3572 = !DILocation(line: 898, column: 49, scope: !3560)
!3573 = !DILocation(line: 898, column: 61, scope: !3560)
!3574 = !DILocation(line: 898, column: 40, scope: !3560)
!3575 = !DILocation(line: 899, column: 68, scope: !3560)
!3576 = !DILocation(line: 899, column: 11, scope: !3560)
!3577 = !DILocation(line: 899, column: 47, scope: !3560)
!3578 = !DILocation(line: 900, column: 42, scope: !3560)
!3579 = !DILocation(line: 900, column: 11, scope: !3560)
!3580 = !DILocation(line: 900, column: 40, scope: !3560)
!3581 = !DILocation(line: 901, column: 40, scope: !3560)
!3582 = !DILocation(line: 901, column: 52, scope: !3560)
!3583 = !DILocation(line: 901, column: 14, scope: !3560)
!3584 = !DILocation(line: 901, column: 31, scope: !3560)
!3585 = !DILocation(line: 902, column: 3, scope: !3560)
!3586 = !DILocation(line: 903, column: 37, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 903, column: 13)
!3588 = !DILocation(line: 904, column: 2, scope: !3587)
!3589 = !DILocation(line: 904, column: 29, scope: !3587)
!3590 = !DILocation(line: 904, column: 40, scope: !3587)
!3591 = !DILocation(line: 905, column: 19, scope: !3587)
!3592 = !DILocation(line: 905, column: 26, scope: !3587)
!3593 = !DILocation(line: 905, column: 12, scope: !3587)
!3594 = !DILocation(line: 903, column: 13, scope: !3542)
!3595 = !DILocation(line: 907, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 906, column: 5)
!3597 = !DILocation(line: 908, column: 40, scope: !3596)
!3598 = !DILocation(line: 908, column: 52, scope: !3596)
!3599 = !DILocation(line: 908, column: 31, scope: !3596)
!3600 = !DILocation(line: 909, column: 5, scope: !3596)
!3601 = !DILocation(line: 911, column: 41, scope: !3428)
!3602 = !DILocation(line: 911, column: 53, scope: !3428)
!3603 = !DILocation(line: 911, column: 10, scope: !3428)
!3604 = !DILocation(line: 911, column: 17, scope: !3428)
!3605 = !DILocation(line: 911, column: 32, scope: !3428)
!3606 = !DILocation(line: 923, column: 27, scope: !3428)
!3607 = !DILocation(line: 923, column: 41, scope: !3428)
!3608 = !DILocation(line: 923, column: 5, scope: !3428)
!3609 = !DILocation(line: 924, column: 15, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 924, column: 8)
!3611 = !DILocation(line: 924, column: 8, scope: !3610)
!3612 = !DILocation(line: 924, column: 8, scope: !3428)
!3613 = !DILocation(line: 926, column: 23, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 925, column: 5)
!3615 = !DILocation(line: 926, column: 44, scope: !3614)
!3616 = !DILocation(line: 926, column: 99, scope: !3614)
!3617 = !DILocation(line: 926, column: 7, scope: !3614)
!3618 = !DILocation(line: 927, column: 14, scope: !3614)
!3619 = !DILocation(line: 927, column: 26, scope: !3614)
!3620 = !DILocation(line: 928, column: 5, scope: !3614)
!3621 = !DILocation(line: 931, column: 41, scope: !3413)
!3622 = !DILocation(line: 931, column: 57, scope: !3413)
!3623 = !DILocation(line: 931, column: 3, scope: !3413)
!3624 = !DILocation(line: 933, column: 1, scope: !3413)
!3625 = !DISubprogram(name: "GetMaxDecFrameBuffering", scope: !799, file: !799, line: 224, type: !3626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!7, !549}
!3628 = !DISubprogram(name: "init_frext", scope: !3, file: !3, line: 34, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3629 = !DISubprogram(name: "init_global_buffers", scope: !551, file: !551, line: 943, type: !3626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3630 = !DISubprogram(name: "flush_dpb", scope: !799, file: !799, line: 223, type: !3631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3633, !7}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPictureBuffer", file: !799, line: 209, baseType: !798)
!3635 = !DISubprogram(name: "init_dpb", scope: !799, file: !799, line: 211, type: !3636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !549, !3633}
!3638 = !DISubprogram(name: "re_init_dpb", scope: !799, file: !799, line: 212, type: !3636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3639 = !DISubprogram(name: "ercInit", scope: !1376, file: !1376, line: 114, type: !3640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !549, !7, !7, !7}
!3642 = !DISubprogram(name: "ercReset", scope: !1376, file: !1376, line: 116, type: !3643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3645, !7, !7, !7}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercVariables_t", file: !1376, line: 108, baseType: !1517)
!3647 = distinct !DISubprogram(name: "activate_pps", scope: !3, file: !3, line: 935, type: !3648, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !549, !638}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3647, file: !3, line: 935, type: !549)
!3652 = !DILocalVariable(name: "pps", arg: 2, scope: !3647, file: !3, line: 935, type: !638)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocation(line: 937, column: 14, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 937, column: 7)
!3656 = !DILocation(line: 937, column: 25, scope: !3655)
!3657 = !DILocation(line: 937, column: 7, scope: !3647)
!3658 = !DILocation(line: 939, column: 16, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 939, column: 9)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 938, column: 3)
!3661 = !DILocation(line: 939, column: 9, scope: !3659)
!3662 = !DILocation(line: 939, column: 9, scope: !3660)
!3663 = !DILocation(line: 942, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 940, column: 5)
!3665 = !DILocation(line: 943, column: 5, scope: !3664)
!3666 = !DILocation(line: 945, column: 23, scope: !3660)
!3667 = !DILocation(line: 946, column: 3, scope: !3660)
!3668 = !DILocation(line: 947, column: 1, scope: !3647)
!3669 = distinct !DISubprogram(name: "UseParameterSet", scope: !3, file: !3, line: 949, type: !3670, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !786}
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678}
!3673 = !DILocalVariable(name: "currSlice", arg: 1, scope: !3669, file: !3, line: 949, type: !786)
!3674 = !DILocalVariable(name: "p_Vid", scope: !3669, file: !3, line: 951, type: !549)
!3675 = !DILocalVariable(name: "PicParsetId", scope: !3669, file: !3, line: 952, type: !7)
!3676 = !DILocalVariable(name: "pps", scope: !3669, file: !3, line: 953, type: !638)
!3677 = !DILocalVariable(name: "sps", scope: !3669, file: !3, line: 954, type: !437)
!3678 = !DILocalVariable(name: "i", scope: !3669, file: !3, line: 955, type: !7)
!3679 = !DILocation(line: 0, scope: !3669)
!3680 = !DILocation(line: 951, column: 39, scope: !3669)
!3681 = !DILocation(line: 952, column: 32, scope: !3669)
!3682 = !DILocation(line: 953, column: 43, scope: !3669)
!3683 = !DILocation(line: 953, column: 36, scope: !3669)
!3684 = !DILocation(line: 954, column: 43, scope: !3669)
!3685 = !DILocation(line: 954, column: 58, scope: !3669)
!3686 = !DILocation(line: 954, column: 36, scope: !3669)
!3687 = !DILocation(line: 957, column: 12, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 957, column: 7)
!3689 = !DILocation(line: 957, column: 18, scope: !3688)
!3690 = !DILocation(line: 957, column: 7, scope: !3669)
!3691 = !DILocation(line: 958, column: 5, scope: !3688)
!3692 = !DILocation(line: 960, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 960, column: 6)
!3694 = !DILocation(line: 960, column: 37, scope: !3693)
!3695 = !DILocation(line: 960, column: 6, scope: !3669)
!3696 = !DILocation(line: 962, column: 14, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 962, column: 9)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 961, column: 3)
!3699 = !DILocation(line: 962, column: 20, scope: !3697)
!3700 = !DILocation(line: 962, column: 9, scope: !3698)
!3701 = !DILocation(line: 964, column: 31, scope: !3697)
!3702 = !DILocation(line: 963, column: 7, scope: !3697)
!3703 = !DILocation(line: 969, column: 39, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 967, column: 3)
!3705 = !DILocation(line: 969, column: 62, scope: !3704)
!3706 = !DILocation(line: 969, column: 55, scope: !3704)
!3707 = !DILocation(line: 969, column: 12, scope: !3704)
!3708 = !DILocation(line: 969, column: 30, scope: !3704)
!3709 = !DILocation(line: 971, column: 59, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 971, column: 9)
!3711 = !DILocation(line: 971, column: 65, scope: !3710)
!3712 = !DILocation(line: 971, column: 9, scope: !3704)
!3713 = !DILocation(line: 972, column: 7, scope: !3710)
!3714 = !DILocation(line: 987, column: 18, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 987, column: 7)
!3716 = !DILocation(line: 987, column: 41, scope: !3715)
!3717 = !DILocation(line: 989, column: 5, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 988, column: 3)
!3719 = !DILocation(line: 990, column: 5, scope: !3718)
!3720 = !DILocation(line: 993, column: 12, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 993, column: 7)
!3722 = !DILocation(line: 991, column: 3, scope: !3718)
!3723 = !DILocation(line: 993, column: 31, scope: !3721)
!3724 = !DILocation(line: 993, column: 7, scope: !3669)
!3725 = !DILocation(line: 995, column: 13, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 995, column: 8)
!3727 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 994, column: 3)
!3728 = !DILocation(line: 995, column: 51, scope: !3726)
!3729 = !DILocation(line: 995, column: 8, scope: !3727)
!3730 = !DILocation(line: 997, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 996, column: 5)
!3732 = !DILocation(line: 998, column: 5, scope: !3731)
!3733 = !DILocation(line: 1001, column: 3, scope: !3669)
!3734 = !DILocation(line: 0, scope: !3647, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1002, column: 3, scope: !3669)
!3736 = !DILocation(line: 937, column: 14, scope: !3655, inlinedAt: !3735)
!3737 = !DILocation(line: 937, column: 25, scope: !3655, inlinedAt: !3735)
!3738 = !DILocation(line: 937, column: 7, scope: !3647, inlinedAt: !3735)
!3739 = !DILocation(line: 939, column: 16, scope: !3659, inlinedAt: !3735)
!3740 = !DILocation(line: 939, column: 9, scope: !3659, inlinedAt: !3735)
!3741 = !DILocation(line: 939, column: 9, scope: !3660, inlinedAt: !3735)
!3742 = !DILocation(line: 942, column: 7, scope: !3664, inlinedAt: !3735)
!3743 = !DILocation(line: 943, column: 5, scope: !3664, inlinedAt: !3735)
!3744 = !DILocation(line: 945, column: 23, scope: !3660, inlinedAt: !3735)
!3745 = !DILocation(line: 946, column: 3, scope: !3660, inlinedAt: !3735)
!3746 = !DILocation(line: 1005, column: 12, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 1005, column: 7)
!3748 = !DILocation(line: 1005, column: 37, scope: !3747)
!3749 = !DILocation(line: 0, scope: !3747)
!3750 = !DILocation(line: 1021, column: 1, scope: !3669)
!3751 = distinct !DISubprogram(name: "seq_parameter_set_mvc_extension", scope: !3, file: !3, line: 1024, type: !3752, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !684, !1025}
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760}
!3755 = !DILocalVariable(name: "subset_sps", arg: 1, scope: !3751, file: !3, line: 1024, type: !684)
!3756 = !DILocalVariable(name: "s", arg: 2, scope: !3751, file: !3, line: 1024, type: !1025)
!3757 = !DILocalVariable(name: "i", scope: !3751, file: !3, line: 1026, type: !7)
!3758 = !DILocalVariable(name: "j", scope: !3751, file: !3, line: 1026, type: !7)
!3759 = !DILocalVariable(name: "num_views", scope: !3751, file: !3, line: 1026, type: !7)
!3760 = !DILocalVariable(name: "k", scope: !3761, file: !3, line: 1128, type: !7)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1127, column: 7)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 1126, column: 7)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1126, column: 7)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 1116, column: 5)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 1115, column: 8)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1112, column: 3)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1111, column: 3)
!3768 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1111, column: 3)
!3769 = !DILocation(line: 0, scope: !3751)
!3770 = !DILocation(line: 1028, column: 34, scope: !3751)
!3771 = !DILocation(line: 1028, column: 15, scope: !3751)
!3772 = !DILocation(line: 1028, column: 32, scope: !3751)
!3773 = !DILocation(line: 1030, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1030, column: 7)
!3775 = !DILocation(line: 1030, column: 7, scope: !3751)
!3776 = !DILocation(line: 1029, column: 16, scope: !3751)
!3777 = !DILocation(line: 1032, column: 46, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1032, column: 9)
!3779 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 1031, column: 3)
!3780 = !DILocation(line: 1032, column: 39, scope: !3778)
!3781 = !DILocation(line: 1032, column: 22, scope: !3778)
!3782 = !DILocation(line: 1032, column: 30, scope: !3778)
!3783 = !DILocation(line: 1032, column: 71, scope: !3778)
!3784 = !DILocation(line: 1032, column: 9, scope: !3779)
!3785 = !DILocation(line: 1033, column: 7, scope: !3778)
!3786 = !DILocation(line: 1034, column: 50, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1034, column: 9)
!3788 = !DILocation(line: 1034, column: 22, scope: !3787)
!3789 = !DILocation(line: 1034, column: 41, scope: !3787)
!3790 = !DILocation(line: 1034, column: 82, scope: !3787)
!3791 = !DILocation(line: 1034, column: 9, scope: !3779)
!3792 = !DILocation(line: 1035, column: 7, scope: !3787)
!3793 = !DILocation(line: 1036, column: 50, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1036, column: 9)
!3795 = !DILocation(line: 1036, column: 22, scope: !3794)
!3796 = !DILocation(line: 1036, column: 41, scope: !3794)
!3797 = !DILocation(line: 1036, column: 82, scope: !3794)
!3798 = !DILocation(line: 1036, column: 9, scope: !3779)
!3799 = !DILocation(line: 1037, column: 7, scope: !3794)
!3800 = !DILocation(line: 1038, column: 46, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1038, column: 9)
!3802 = !DILocation(line: 1038, column: 22, scope: !3801)
!3803 = !DILocation(line: 1038, column: 36, scope: !3801)
!3804 = !DILocation(line: 1038, column: 79, scope: !3801)
!3805 = !DILocation(line: 1038, column: 9, scope: !3779)
!3806 = !DILocation(line: 1039, column: 7, scope: !3801)
!3807 = !DILocation(line: 1040, column: 46, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1040, column: 9)
!3809 = !DILocation(line: 1040, column: 22, scope: !3808)
!3810 = !DILocation(line: 1040, column: 36, scope: !3808)
!3811 = !DILocation(line: 1040, column: 79, scope: !3808)
!3812 = !DILocation(line: 1040, column: 9, scope: !3779)
!3813 = !DILocation(line: 1041, column: 7, scope: !3808)
!3814 = !DILocation(line: 1042, column: 54, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1042, column: 9)
!3816 = !DILocation(line: 1042, column: 22, scope: !3815)
!3817 = !DILocation(line: 1042, column: 45, scope: !3815)
!3818 = !DILocation(line: 1042, column: 86, scope: !3815)
!3819 = !DILocation(line: 1042, column: 9, scope: !3779)
!3820 = !DILocation(line: 1043, column: 7, scope: !3815)
!3821 = !DILocation(line: 1044, column: 54, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1044, column: 9)
!3823 = !DILocation(line: 1044, column: 22, scope: !3822)
!3824 = !DILocation(line: 1044, column: 45, scope: !3822)
!3825 = !DILocation(line: 1044, column: 86, scope: !3822)
!3826 = !DILocation(line: 1044, column: 9, scope: !3779)
!3827 = !DILocation(line: 1045, column: 7, scope: !3822)
!3828 = !DILocation(line: 1046, column: 50, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1046, column: 9)
!3830 = !DILocation(line: 1046, column: 22, scope: !3829)
!3831 = !DILocation(line: 1046, column: 40, scope: !3829)
!3832 = !DILocation(line: 1046, column: 83, scope: !3829)
!3833 = !DILocation(line: 1046, column: 9, scope: !3779)
!3834 = !DILocation(line: 1047, column: 7, scope: !3829)
!3835 = !DILocation(line: 1048, column: 50, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1048, column: 9)
!3837 = !DILocation(line: 1048, column: 22, scope: !3836)
!3838 = !DILocation(line: 1048, column: 40, scope: !3836)
!3839 = !DILocation(line: 1048, column: 83, scope: !3836)
!3840 = !DILocation(line: 1048, column: 9, scope: !3779)
!3841 = !DILocation(line: 1049, column: 7, scope: !3836)
!3842 = !DILocation(line: 1051, column: 3, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1051, column: 3)
!3844 = !DILocation(line: 1051, column: 13, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1051, column: 3)
!3846 = !DILocation(line: 1055, column: 13, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1055, column: 3)
!3848 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1055, column: 3)
!3849 = !DILocation(line: 1055, column: 3, scope: !3848)
!3850 = !DILocation(line: 1053, column: 30, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 1052, column: 3)
!3852 = !DILocation(line: 1053, column: 17, scope: !3851)
!3853 = !DILocation(line: 1053, column: 5, scope: !3851)
!3854 = !DILocation(line: 1053, column: 28, scope: !3851)
!3855 = !DILocation(line: 1051, column: 26, scope: !3845)
!3856 = distinct !{!3856, !3842, !3857}
!3857 = !DILocation(line: 1054, column: 3, scope: !3843)
!3858 = !DILocation(line: 1075, column: 3, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1075, column: 3)
!3860 = !DILocation(line: 1075, column: 13, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 1075, column: 3)
!3862 = !DILocation(line: 1057, column: 41, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1056, column: 3)
!3864 = !DILocation(line: 1057, column: 17, scope: !3863)
!3865 = !DILocation(line: 1057, column: 5, scope: !3863)
!3866 = !DILocation(line: 1057, column: 39, scope: !3863)
!3867 = !DILocation(line: 1058, column: 20, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 1058, column: 8)
!3869 = !DILocation(line: 1058, column: 8, scope: !3868)
!3870 = !DILocation(line: 1058, column: 41, scope: !3868)
!3871 = !DILocation(line: 1058, column: 8, scope: !3863)
!3872 = !DILocation(line: 1060, column: 57, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1060, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 1059, column: 5)
!3875 = !DILocation(line: 1060, column: 50, scope: !3873)
!3876 = !DILocation(line: 1060, column: 24, scope: !3873)
!3877 = !DILocation(line: 1060, column: 12, scope: !3873)
!3878 = !DILocation(line: 1060, column: 41, scope: !3873)
!3879 = !DILocation(line: 1060, column: 106, scope: !3873)
!3880 = !DILocation(line: 1060, column: 11, scope: !3874)
!3881 = !DILocation(line: 1061, column: 9, scope: !3873)
!3882 = !DILocation(line: 1062, column: 30, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 1062, column: 7)
!3884 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1062, column: 7)
!3885 = !DILocation(line: 1062, column: 18, scope: !3883)
!3886 = !DILocation(line: 1062, column: 17, scope: !3883)
!3887 = !DILocation(line: 1062, column: 7, scope: !3884)
!3888 = !DILocation(line: 1063, column: 43, scope: !3883)
!3889 = !DILocation(line: 1063, column: 21, scope: !3883)
!3890 = !DILocation(line: 1063, column: 9, scope: !3883)
!3891 = !DILocation(line: 1063, column: 41, scope: !3883)
!3892 = !DILocation(line: 1062, column: 54, scope: !3883)
!3893 = distinct !{!3893, !3887, !3894}
!3894 = !DILocation(line: 1063, column: 80, scope: !3884)
!3895 = !DILocation(line: 1066, column: 41, scope: !3863)
!3896 = !DILocation(line: 1066, column: 17, scope: !3863)
!3897 = !DILocation(line: 1066, column: 5, scope: !3863)
!3898 = !DILocation(line: 1066, column: 39, scope: !3863)
!3899 = !DILocation(line: 1067, column: 20, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 1067, column: 8)
!3901 = !DILocation(line: 1067, column: 8, scope: !3900)
!3902 = !DILocation(line: 1067, column: 41, scope: !3900)
!3903 = !DILocation(line: 1067, column: 8, scope: !3863)
!3904 = !DILocation(line: 1069, column: 57, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1069, column: 11)
!3906 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1068, column: 5)
!3907 = !DILocation(line: 1069, column: 50, scope: !3905)
!3908 = !DILocation(line: 1069, column: 24, scope: !3905)
!3909 = !DILocation(line: 1069, column: 12, scope: !3905)
!3910 = !DILocation(line: 1069, column: 41, scope: !3905)
!3911 = !DILocation(line: 1069, column: 106, scope: !3905)
!3912 = !DILocation(line: 1069, column: 11, scope: !3906)
!3913 = !DILocation(line: 1070, column: 9, scope: !3905)
!3914 = !DILocation(line: 1071, column: 30, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1071, column: 7)
!3916 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1071, column: 7)
!3917 = !DILocation(line: 1071, column: 18, scope: !3915)
!3918 = !DILocation(line: 1071, column: 17, scope: !3915)
!3919 = !DILocation(line: 1071, column: 7, scope: !3916)
!3920 = !DILocation(line: 1072, column: 43, scope: !3915)
!3921 = !DILocation(line: 1072, column: 21, scope: !3915)
!3922 = !DILocation(line: 1072, column: 9, scope: !3915)
!3923 = !DILocation(line: 1072, column: 41, scope: !3915)
!3924 = !DILocation(line: 1071, column: 54, scope: !3915)
!3925 = distinct !{!3925, !3919, !3926}
!3926 = !DILocation(line: 1072, column: 80, scope: !3916)
!3927 = !DILocation(line: 1055, column: 26, scope: !3847)
!3928 = distinct !{!3928, !3849, !3929}
!3929 = !DILocation(line: 1074, column: 3, scope: !3848)
!3930 = !DILocation(line: 1077, column: 45, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1076, column: 3)
!3932 = !DILocation(line: 1077, column: 17, scope: !3931)
!3933 = !DILocation(line: 1077, column: 5, scope: !3931)
!3934 = !DILocation(line: 1077, column: 43, scope: !3931)
!3935 = !DILocation(line: 1078, column: 20, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1078, column: 8)
!3937 = !DILocation(line: 1078, column: 8, scope: !3936)
!3938 = !DILocation(line: 1078, column: 45, scope: !3936)
!3939 = !DILocation(line: 1078, column: 8, scope: !3931)
!3940 = !DILocation(line: 1080, column: 61, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1080, column: 11)
!3942 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 1079, column: 5)
!3943 = !DILocation(line: 1080, column: 54, scope: !3941)
!3944 = !DILocation(line: 1080, column: 24, scope: !3941)
!3945 = !DILocation(line: 1080, column: 12, scope: !3941)
!3946 = !DILocation(line: 1080, column: 45, scope: !3941)
!3947 = !DILocation(line: 1080, column: 114, scope: !3941)
!3948 = !DILocation(line: 1080, column: 11, scope: !3942)
!3949 = !DILocation(line: 1081, column: 9, scope: !3941)
!3950 = !DILocation(line: 1082, column: 30, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 1082, column: 7)
!3952 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1082, column: 7)
!3953 = !DILocation(line: 1082, column: 18, scope: !3951)
!3954 = !DILocation(line: 1082, column: 17, scope: !3951)
!3955 = !DILocation(line: 1082, column: 7, scope: !3952)
!3956 = !DILocation(line: 1083, column: 47, scope: !3951)
!3957 = !DILocation(line: 1083, column: 21, scope: !3951)
!3958 = !DILocation(line: 1083, column: 9, scope: !3951)
!3959 = !DILocation(line: 1083, column: 45, scope: !3951)
!3960 = !DILocation(line: 1082, column: 58, scope: !3951)
!3961 = distinct !{!3961, !3955, !3962}
!3962 = !DILocation(line: 1083, column: 86, scope: !3952)
!3963 = !DILocation(line: 1085, column: 45, scope: !3931)
!3964 = !DILocation(line: 1085, column: 17, scope: !3931)
!3965 = !DILocation(line: 1085, column: 5, scope: !3931)
!3966 = !DILocation(line: 1085, column: 43, scope: !3931)
!3967 = !DILocation(line: 1086, column: 20, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1086, column: 8)
!3969 = !DILocation(line: 1086, column: 8, scope: !3968)
!3970 = !DILocation(line: 1086, column: 45, scope: !3968)
!3971 = !DILocation(line: 1086, column: 8, scope: !3931)
!3972 = !DILocation(line: 1088, column: 61, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 1088, column: 11)
!3974 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 1087, column: 5)
!3975 = !DILocation(line: 1088, column: 54, scope: !3973)
!3976 = !DILocation(line: 1088, column: 24, scope: !3973)
!3977 = !DILocation(line: 1088, column: 12, scope: !3973)
!3978 = !DILocation(line: 1088, column: 45, scope: !3973)
!3979 = !DILocation(line: 1088, column: 114, scope: !3973)
!3980 = !DILocation(line: 1088, column: 11, scope: !3974)
!3981 = !DILocation(line: 1089, column: 9, scope: !3973)
!3982 = !DILocation(line: 1090, column: 30, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1090, column: 7)
!3984 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 1090, column: 7)
!3985 = !DILocation(line: 1090, column: 18, scope: !3983)
!3986 = !DILocation(line: 1090, column: 17, scope: !3983)
!3987 = !DILocation(line: 1090, column: 7, scope: !3984)
!3988 = !DILocation(line: 1091, column: 47, scope: !3983)
!3989 = !DILocation(line: 1091, column: 21, scope: !3983)
!3990 = !DILocation(line: 1091, column: 9, scope: !3983)
!3991 = !DILocation(line: 1091, column: 45, scope: !3983)
!3992 = !DILocation(line: 1090, column: 58, scope: !3983)
!3993 = distinct !{!3993, !3987, !3994}
!3994 = !DILocation(line: 1091, column: 86, scope: !3984)
!3995 = !DILocation(line: 1075, column: 26, scope: !3861)
!3996 = distinct !{!3996, !3858, !3997}
!3997 = !DILocation(line: 1093, column: 3, scope: !3859)
!3998 = !DILocation(line: 1094, column: 51, scope: !3751)
!3999 = !DILocation(line: 1094, column: 15, scope: !3751)
!4000 = !DILocation(line: 1094, column: 49, scope: !3751)
!4001 = !DILocation(line: 1095, column: 52, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1095, column: 6)
!4003 = !DILocation(line: 1095, column: 6, scope: !3751)
!4004 = !DILocation(line: 1097, column: 10, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 1096, column: 3)
!4006 = !DILocation(line: 1098, column: 48, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1098, column: 9)
!4008 = !DILocation(line: 1098, column: 41, scope: !4007)
!4009 = !DILocation(line: 1098, column: 22, scope: !4007)
!4010 = !DILocation(line: 1098, column: 32, scope: !4007)
!4011 = !DILocation(line: 1098, column: 65, scope: !4007)
!4012 = !DILocation(line: 1098, column: 9, scope: !4005)
!4013 = !DILocation(line: 1099, column: 7, scope: !4007)
!4014 = !DILocation(line: 1100, column: 57, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1100, column: 9)
!4016 = !DILocation(line: 1100, column: 22, scope: !4015)
!4017 = !DILocation(line: 1100, column: 48, scope: !4015)
!4018 = !DILocation(line: 1100, column: 81, scope: !4015)
!4019 = !DILocation(line: 1100, column: 9, scope: !4005)
!4020 = !DILocation(line: 1101, column: 7, scope: !4015)
!4021 = !DILocation(line: 1102, column: 58, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1102, column: 9)
!4023 = !DILocation(line: 1102, column: 22, scope: !4022)
!4024 = !DILocation(line: 1102, column: 48, scope: !4022)
!4025 = !DILocation(line: 1102, column: 83, scope: !4022)
!4026 = !DILocation(line: 1102, column: 9, scope: !4005)
!4027 = !DILocation(line: 1103, column: 7, scope: !4022)
!4028 = !DILocation(line: 1104, column: 70, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1104, column: 9)
!4030 = !DILocation(line: 1104, column: 22, scope: !4029)
!4031 = !DILocation(line: 1104, column: 60, scope: !4029)
!4032 = !DILocation(line: 1104, column: 95, scope: !4029)
!4033 = !DILocation(line: 1104, column: 9, scope: !4005)
!4034 = !DILocation(line: 1105, column: 7, scope: !4029)
!4035 = !DILocation(line: 1106, column: 62, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1106, column: 9)
!4037 = !DILocation(line: 1106, column: 22, scope: !4036)
!4038 = !DILocation(line: 1106, column: 51, scope: !4036)
!4039 = !DILocation(line: 1106, column: 88, scope: !4036)
!4040 = !DILocation(line: 1106, column: 9, scope: !4005)
!4041 = !DILocation(line: 1107, column: 7, scope: !4036)
!4042 = !DILocation(line: 1108, column: 63, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1108, column: 9)
!4044 = !DILocation(line: 1108, column: 22, scope: !4043)
!4045 = !DILocation(line: 1108, column: 53, scope: !4043)
!4046 = !DILocation(line: 1108, column: 88, scope: !4043)
!4047 = !DILocation(line: 1108, column: 9, scope: !4005)
!4048 = !DILocation(line: 1109, column: 7, scope: !4043)
!4049 = !DILocation(line: 1111, column: 27, scope: !3767)
!4050 = !DILocation(line: 1111, column: 13, scope: !3767)
!4051 = !DILocation(line: 1111, column: 3, scope: !3768)
!4052 = !DILocation(line: 1113, column: 32, scope: !3766)
!4053 = !DILocation(line: 1113, column: 17, scope: !3766)
!4054 = !DILocation(line: 1113, column: 5, scope: !3766)
!4055 = !DILocation(line: 1113, column: 30, scope: !3766)
!4056 = !DILocation(line: 1114, column: 48, scope: !3766)
!4057 = !DILocation(line: 1114, column: 17, scope: !3766)
!4058 = !DILocation(line: 1114, column: 5, scope: !3766)
!4059 = !DILocation(line: 1114, column: 46, scope: !3766)
!4060 = !DILocation(line: 1115, column: 20, scope: !3765)
!4061 = !DILocation(line: 1115, column: 8, scope: !3765)
!4062 = !DILocation(line: 1115, column: 48, scope: !3765)
!4063 = !DILocation(line: 1115, column: 8, scope: !3766)
!4064 = !DILocation(line: 1117, column: 70, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1117, column: 11)
!4066 = !DILocation(line: 1117, column: 69, scope: !4065)
!4067 = !DILocation(line: 1117, column: 62, scope: !4065)
!4068 = !DILocation(line: 1117, column: 24, scope: !4065)
!4069 = !DILocation(line: 1117, column: 12, scope: !4065)
!4070 = !DILocation(line: 1117, column: 53, scope: !4065)
!4071 = !DILocation(line: 1117, column: 127, scope: !4065)
!4072 = !DILocation(line: 1117, column: 11, scope: !3764)
!4073 = !DILocation(line: 1118, column: 9, scope: !4065)
!4074 = !DILocation(line: 1119, column: 95, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1119, column: 11)
!4076 = !DILocation(line: 1119, column: 83, scope: !4075)
!4077 = !DILocation(line: 1119, column: 82, scope: !4075)
!4078 = !DILocation(line: 1119, column: 81, scope: !4075)
!4079 = !DILocation(line: 1119, column: 74, scope: !4075)
!4080 = !DILocation(line: 1119, column: 24, scope: !4075)
!4081 = !DILocation(line: 1119, column: 12, scope: !4075)
!4082 = !DILocation(line: 1119, column: 65, scope: !4075)
!4083 = !DILocation(line: 1119, column: 139, scope: !4075)
!4084 = !DILocation(line: 1119, column: 11, scope: !3764)
!4085 = !DILocation(line: 1120, column: 9, scope: !4075)
!4086 = !DILocation(line: 1121, column: 87, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1121, column: 11)
!4088 = !DILocation(line: 1121, column: 75, scope: !4087)
!4089 = !DILocation(line: 1121, column: 74, scope: !4087)
!4090 = !DILocation(line: 1121, column: 73, scope: !4087)
!4091 = !DILocation(line: 1121, column: 66, scope: !4087)
!4092 = !DILocation(line: 1121, column: 24, scope: !4087)
!4093 = !DILocation(line: 1121, column: 12, scope: !4087)
!4094 = !DILocation(line: 1121, column: 56, scope: !4087)
!4095 = !DILocation(line: 1121, column: 133, scope: !4087)
!4096 = !DILocation(line: 1121, column: 11, scope: !3764)
!4097 = !DILocation(line: 1122, column: 9, scope: !4087)
!4098 = !DILocation(line: 1123, column: 88, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1123, column: 11)
!4100 = !DILocation(line: 1123, column: 76, scope: !4099)
!4101 = !DILocation(line: 1123, column: 75, scope: !4099)
!4102 = !DILocation(line: 1123, column: 74, scope: !4099)
!4103 = !DILocation(line: 1123, column: 67, scope: !4099)
!4104 = !DILocation(line: 1123, column: 24, scope: !4099)
!4105 = !DILocation(line: 1123, column: 12, scope: !4099)
!4106 = !DILocation(line: 1123, column: 58, scope: !4099)
!4107 = !DILocation(line: 1123, column: 132, scope: !4099)
!4108 = !DILocation(line: 1123, column: 11, scope: !3764)
!4109 = !DILocation(line: 1124, column: 9, scope: !4099)
!4110 = !DILocation(line: 1126, column: 31, scope: !3762)
!4111 = !DILocation(line: 1126, column: 19, scope: !3762)
!4112 = !DILocation(line: 1126, column: 17, scope: !3762)
!4113 = !DILocation(line: 1126, column: 7, scope: !3763)
!4114 = !DILocation(line: 1129, column: 55, scope: !3761)
!4115 = !DILocation(line: 1129, column: 21, scope: !3761)
!4116 = !DILocation(line: 1129, column: 9, scope: !3761)
!4117 = !DILocation(line: 1129, column: 53, scope: !3761)
!4118 = !DILocation(line: 1130, column: 67, scope: !3761)
!4119 = !DILocation(line: 1130, column: 21, scope: !3761)
!4120 = !DILocation(line: 1130, column: 9, scope: !3761)
!4121 = !DILocation(line: 1130, column: 65, scope: !3761)
!4122 = !DILocation(line: 1131, column: 24, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 1131, column: 12)
!4124 = !DILocation(line: 1131, column: 12, scope: !4123)
!4125 = !DILocation(line: 1131, column: 67, scope: !4123)
!4126 = !DILocation(line: 1131, column: 12, scope: !3761)
!4127 = !DILocation(line: 1133, column: 80, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1133, column: 15)
!4129 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 1132, column: 9)
!4130 = !DILocation(line: 1133, column: 79, scope: !4128)
!4131 = !DILocation(line: 1133, column: 72, scope: !4128)
!4132 = !DILocation(line: 1133, column: 28, scope: !4128)
!4133 = !DILocation(line: 1133, column: 16, scope: !4128)
!4134 = !DILocation(line: 1133, column: 63, scope: !4128)
!4135 = !DILocation(line: 1133, column: 152, scope: !4128)
!4136 = !DILocation(line: 1133, column: 15, scope: !4129)
!4137 = !DILocation(line: 1134, column: 13, scope: !4128)
!4138 = !DILocation(line: 0, scope: !3761)
!4139 = !DILocation(line: 1135, column: 39, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 1135, column: 11)
!4141 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1135, column: 11)
!4142 = !DILocation(line: 1135, column: 27, scope: !4140)
!4143 = !DILocation(line: 1135, column: 24, scope: !4140)
!4144 = !DILocation(line: 1135, column: 11, scope: !4141)
!4145 = !DILocation(line: 1136, column: 65, scope: !4140)
!4146 = !DILocation(line: 1136, column: 25, scope: !4140)
!4147 = !DILocation(line: 1136, column: 13, scope: !4140)
!4148 = !DILocation(line: 1136, column: 63, scope: !4140)
!4149 = !DILocation(line: 1135, column: 85, scope: !4140)
!4150 = distinct !{!4150, !4144, !4151}
!4151 = !DILocation(line: 1136, column: 107, scope: !4141)
!4152 = !DILocation(line: 1138, column: 60, scope: !3761)
!4153 = !DILocation(line: 1138, column: 21, scope: !3761)
!4154 = !DILocation(line: 1138, column: 9, scope: !3761)
!4155 = !DILocation(line: 1138, column: 58, scope: !3761)
!4156 = !DILocation(line: 1126, column: 62, scope: !3762)
!4157 = distinct !{!4157, !4113, !4158}
!4158 = !DILocation(line: 1139, column: 7, scope: !3763)
!4159 = !DILocation(line: 1111, column: 63, scope: !3767)
!4160 = distinct !{!4160, !4051, !4161}
!4161 = !DILocation(line: 1141, column: 3, scope: !3768)
!4162 = !DILocation(line: 1142, column: 1, scope: !3751)
!4163 = distinct !DISubprogram(name: "MemAlloc1D", scope: !3, file: !3, line: 1144, type: !4164, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!7, !98, !7, !7}
!4166 = !{!4167, !4168, !4169}
!4167 = !DILocalVariable(name: "ppBuf", arg: 1, scope: !4163, file: !3, line: 1144, type: !98)
!4168 = !DILocalVariable(name: "iEleSize", arg: 2, scope: !4163, file: !3, line: 1144, type: !7)
!4169 = !DILocalVariable(name: "iNum", arg: 3, scope: !4163, file: !3, line: 1144, type: !7)
!4170 = !DILocation(line: 0, scope: !4163)
!4171 = !DILocation(line: 1146, column: 14, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 1146, column: 6)
!4173 = !DILocation(line: 1146, column: 20, scope: !4172)
!4174 = !DILocation(line: 1146, column: 6, scope: !4163)
!4175 = !DILocation(line: 1149, column: 19, scope: !4163)
!4176 = !DILocation(line: 1149, column: 25, scope: !4163)
!4177 = !DILocation(line: 1149, column: 12, scope: !4163)
!4178 = !DILocation(line: 1149, column: 10, scope: !4163)
!4179 = !DILocation(line: 1150, column: 18, scope: !4163)
!4180 = !DILocation(line: 1150, column: 3, scope: !4163)
!4181 = !DILocation(line: 1151, column: 1, scope: !4163)
!4182 = distinct !DISubprogram(name: "hrd_parameters", scope: !3, file: !3, line: 1153, type: !4183, scopeLine: 1154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4186)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !4185, !1025}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!4186 = !{!4187, !4188, !4189}
!4187 = !DILocalVariable(name: "pMVCVUI", arg: 1, scope: !4182, file: !3, line: 1153, type: !4185)
!4188 = !DILocalVariable(name: "s", arg: 2, scope: !4182, file: !3, line: 1153, type: !1025)
!4189 = !DILocalVariable(name: "i", scope: !4182, file: !3, line: 1155, type: !7)
!4190 = !DILocation(line: 0, scope: !4182)
!4191 = !DILocation(line: 1157, column: 43, scope: !4182)
!4192 = !DILocation(line: 1157, column: 29, scope: !4182)
!4193 = !DILocation(line: 1157, column: 12, scope: !4182)
!4194 = !DILocation(line: 1157, column: 27, scope: !4182)
!4195 = !DILocation(line: 1159, column: 43, scope: !4182)
!4196 = !DILocation(line: 1159, column: 29, scope: !4182)
!4197 = !DILocation(line: 1159, column: 12, scope: !4182)
!4198 = !DILocation(line: 1159, column: 27, scope: !4182)
!4199 = !DILocation(line: 1160, column: 43, scope: !4182)
!4200 = !DILocation(line: 1160, column: 29, scope: !4182)
!4201 = !DILocation(line: 1160, column: 12, scope: !4182)
!4202 = !DILocation(line: 1160, column: 27, scope: !4182)
!4203 = !DILocation(line: 1161, column: 24, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 1161, column: 3)
!4205 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 1161, column: 3)
!4206 = !DILocation(line: 1161, column: 13, scope: !4204)
!4207 = !DILocation(line: 1161, column: 3, scope: !4205)
!4208 = !DILocation(line: 1163, column: 41, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 1162, column: 3)
!4210 = !DILocation(line: 1163, column: 5, scope: !4209)
!4211 = !DILocation(line: 1163, column: 39, scope: !4209)
!4212 = !DILocation(line: 1164, column: 41, scope: !4209)
!4213 = !DILocation(line: 1164, column: 5, scope: !4209)
!4214 = !DILocation(line: 1164, column: 39, scope: !4209)
!4215 = !DILocation(line: 1165, column: 55, scope: !4209)
!4216 = !DILocation(line: 1165, column: 41, scope: !4209)
!4217 = !DILocation(line: 1165, column: 5, scope: !4209)
!4218 = !DILocation(line: 1165, column: 39, scope: !4209)
!4219 = !DILocation(line: 1161, column: 41, scope: !4204)
!4220 = distinct !{!4220, !4207, !4221}
!4221 = !DILocation(line: 1166, column: 3, scope: !4205)
!4222 = !DILocation(line: 1167, column: 68, scope: !4182)
!4223 = !DILocation(line: 1167, column: 54, scope: !4182)
!4224 = !DILocation(line: 1167, column: 12, scope: !4182)
!4225 = !DILocation(line: 1167, column: 52, scope: !4182)
!4226 = !DILocation(line: 1168, column: 68, scope: !4182)
!4227 = !DILocation(line: 1168, column: 54, scope: !4182)
!4228 = !DILocation(line: 1168, column: 12, scope: !4182)
!4229 = !DILocation(line: 1168, column: 52, scope: !4182)
!4230 = !DILocation(line: 1169, column: 68, scope: !4182)
!4231 = !DILocation(line: 1169, column: 54, scope: !4182)
!4232 = !DILocation(line: 1169, column: 12, scope: !4182)
!4233 = !DILocation(line: 1169, column: 52, scope: !4182)
!4234 = !DILocation(line: 1170, column: 68, scope: !4182)
!4235 = !DILocation(line: 1170, column: 54, scope: !4182)
!4236 = !DILocation(line: 1170, column: 12, scope: !4182)
!4237 = !DILocation(line: 1170, column: 52, scope: !4182)
!4238 = !DILocation(line: 1172, column: 1, scope: !4182)
!4239 = distinct !DISubprogram(name: "mvc_vui_parameters_extension", scope: !3, file: !3, line: 1174, type: !4183, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245}
!4241 = !DILocalVariable(name: "pMVCVUI", arg: 1, scope: !4239, file: !3, line: 1174, type: !4185)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4239, file: !3, line: 1174, type: !1025)
!4243 = !DILocalVariable(name: "i", scope: !4239, file: !3, line: 1176, type: !7)
!4244 = !DILocalVariable(name: "j", scope: !4239, file: !3, line: 1176, type: !7)
!4245 = !DILocalVariable(name: "iNumOps", scope: !4239, file: !3, line: 1176, type: !7)
!4246 = !DILocation(line: 0, scope: !4239)
!4247 = !DILocation(line: 1178, column: 29, scope: !4239)
!4248 = !DILocation(line: 1178, column: 27, scope: !4239)
!4249 = !DILocation(line: 1180, column: 14, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 1180, column: 6)
!4251 = !DILocation(line: 1180, column: 6, scope: !4239)
!4252 = !DILocation(line: 1179, column: 14, scope: !4239)
!4253 = !DILocation(line: 1182, column: 36, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 1181, column: 3)
!4255 = !DILocation(line: 0, scope: !4163, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 1182, column: 5, scope: !4254)
!4257 = !DILocation(line: 1149, column: 19, scope: !4163, inlinedAt: !4256)
!4258 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4256)
!4259 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4256)
!4260 = !DILocation(line: 1183, column: 36, scope: !4254)
!4261 = !DILocation(line: 0, scope: !4163, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 1183, column: 5, scope: !4254)
!4263 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4262)
!4264 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4262)
!4265 = !DILocation(line: 1184, column: 37, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 1184, column: 9)
!4267 = !DILocation(line: 1184, column: 19, scope: !4266)
!4268 = !DILocation(line: 1184, column: 27, scope: !4266)
!4269 = !DILocation(line: 1184, column: 68, scope: !4266)
!4270 = !DILocation(line: 1184, column: 9, scope: !4254)
!4271 = !DILocation(line: 1185, column: 7, scope: !4266)
!4272 = !DILocation(line: 1186, column: 36, scope: !4254)
!4273 = !DILocation(line: 0, scope: !4163, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 1186, column: 5, scope: !4254)
!4275 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4274)
!4276 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4274)
!4277 = !DILocation(line: 1187, column: 36, scope: !4254)
!4278 = !DILocation(line: 0, scope: !4163, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 1187, column: 5, scope: !4254)
!4280 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4279)
!4281 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4279)
!4282 = !DILocation(line: 1188, column: 36, scope: !4254)
!4283 = !DILocation(line: 0, scope: !4163, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 1188, column: 5, scope: !4254)
!4285 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4284)
!4286 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4284)
!4287 = !DILocation(line: 1189, column: 36, scope: !4254)
!4288 = !DILocation(line: 0, scope: !4163, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 1189, column: 5, scope: !4254)
!4290 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4289)
!4291 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4289)
!4292 = !DILocation(line: 1190, column: 36, scope: !4254)
!4293 = !DILocation(line: 0, scope: !4163, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 1190, column: 5, scope: !4254)
!4295 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4294)
!4296 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4294)
!4297 = !DILocation(line: 1191, column: 36, scope: !4254)
!4298 = !DILocation(line: 0, scope: !4163, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 1191, column: 5, scope: !4254)
!4300 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4299)
!4301 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4299)
!4302 = !DILocation(line: 1192, column: 36, scope: !4254)
!4303 = !DILocation(line: 0, scope: !4163, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 1192, column: 5, scope: !4254)
!4305 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4304)
!4306 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4304)
!4307 = !DILocation(line: 1193, column: 36, scope: !4254)
!4308 = !DILocation(line: 0, scope: !4163, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 1193, column: 5, scope: !4254)
!4310 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4309)
!4311 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4309)
!4312 = !DILocation(line: 1195, column: 5, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 1195, column: 5)
!4314 = !DILocation(line: 1195, column: 15, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 1195, column: 5)
!4316 = !DILocation(line: 1197, column: 47, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1196, column: 5)
!4318 = !DILocation(line: 1197, column: 33, scope: !4317)
!4319 = !DILocation(line: 1197, column: 16, scope: !4317)
!4320 = !DILocation(line: 1197, column: 7, scope: !4317)
!4321 = !DILocation(line: 1197, column: 31, scope: !4317)
!4322 = !DILocation(line: 1198, column: 52, scope: !4317)
!4323 = !DILocation(line: 1198, column: 16, scope: !4317)
!4324 = !DILocation(line: 1198, column: 7, scope: !4317)
!4325 = !DILocation(line: 1198, column: 50, scope: !4317)
!4326 = !DILocation(line: 1199, column: 19, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1199, column: 10)
!4328 = !DILocation(line: 1199, column: 10, scope: !4327)
!4329 = !DILocation(line: 1199, column: 53, scope: !4327)
!4330 = !DILocation(line: 1199, column: 10, scope: !4317)
!4331 = !DILocation(line: 1200, column: 40, scope: !4327)
!4332 = !DILocation(line: 1200, column: 31, scope: !4327)
!4333 = !DILocation(line: 1200, column: 127, scope: !4327)
!4334 = !DILocation(line: 0, scope: !4163, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 1200, column: 9, scope: !4327)
!4336 = !DILocation(line: 1149, column: 19, scope: !4163, inlinedAt: !4335)
!4337 = !DILocation(line: 1149, column: 12, scope: !4163, inlinedAt: !4335)
!4338 = !DILocation(line: 1149, column: 10, scope: !4163, inlinedAt: !4335)
!4339 = !DILocation(line: 1201, column: 28, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 1201, column: 7)
!4341 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1201, column: 7)
!4342 = !DILocation(line: 1201, column: 19, scope: !4340)
!4343 = !DILocation(line: 1201, column: 17, scope: !4340)
!4344 = !DILocation(line: 1201, column: 7, scope: !4341)
!4345 = !DILocation(line: 1202, column: 34, scope: !4340)
!4346 = !DILocation(line: 1202, column: 18, scope: !4340)
!4347 = !DILocation(line: 1202, column: 9, scope: !4340)
!4348 = !DILocation(line: 1202, column: 32, scope: !4340)
!4349 = !DILocation(line: 1201, column: 64, scope: !4340)
!4350 = distinct !{!4350, !4344, !4351}
!4351 = !DILocation(line: 1202, column: 73, scope: !4341)
!4352 = !DILocation(line: 1203, column: 60, scope: !4317)
!4353 = !DILocation(line: 1203, column: 46, scope: !4317)
!4354 = !DILocation(line: 1203, column: 16, scope: !4317)
!4355 = !DILocation(line: 1203, column: 7, scope: !4317)
!4356 = !DILocation(line: 1203, column: 44, scope: !4317)
!4357 = !DILocation(line: 1204, column: 19, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1204, column: 10)
!4359 = !DILocation(line: 1204, column: 10, scope: !4358)
!4360 = !DILocation(line: 1204, column: 10, scope: !4317)
!4361 = !DILocation(line: 1206, column: 45, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 1205, column: 7)
!4363 = !DILocation(line: 1206, column: 18, scope: !4362)
!4364 = !DILocation(line: 1206, column: 9, scope: !4362)
!4365 = !DILocation(line: 1206, column: 43, scope: !4362)
!4366 = !DILocation(line: 1207, column: 45, scope: !4362)
!4367 = !DILocation(line: 1207, column: 18, scope: !4362)
!4368 = !DILocation(line: 1207, column: 9, scope: !4362)
!4369 = !DILocation(line: 1207, column: 43, scope: !4362)
!4370 = !DILocation(line: 1208, column: 59, scope: !4362)
!4371 = !DILocation(line: 1208, column: 45, scope: !4362)
!4372 = !DILocation(line: 1208, column: 18, scope: !4362)
!4373 = !DILocation(line: 1208, column: 9, scope: !4362)
!4374 = !DILocation(line: 1208, column: 43, scope: !4362)
!4375 = !DILocation(line: 1209, column: 7, scope: !4362)
!4376 = !DILocation(line: 1210, column: 67, scope: !4317)
!4377 = !DILocation(line: 1210, column: 53, scope: !4317)
!4378 = !DILocation(line: 1210, column: 16, scope: !4317)
!4379 = !DILocation(line: 1210, column: 7, scope: !4317)
!4380 = !DILocation(line: 1210, column: 51, scope: !4317)
!4381 = !DILocation(line: 1211, column: 19, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1211, column: 10)
!4383 = !DILocation(line: 1211, column: 10, scope: !4382)
!4384 = !DILocation(line: 1211, column: 10, scope: !4317)
!4385 = !DILocation(line: 1212, column: 9, scope: !4382)
!4386 = !DILocation(line: 1213, column: 67, scope: !4317)
!4387 = !DILocation(line: 1213, column: 53, scope: !4317)
!4388 = !DILocation(line: 1213, column: 16, scope: !4317)
!4389 = !DILocation(line: 1213, column: 7, scope: !4317)
!4390 = !DILocation(line: 1213, column: 51, scope: !4317)
!4391 = !DILocation(line: 1214, column: 19, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1214, column: 10)
!4393 = !DILocation(line: 1214, column: 10, scope: !4392)
!4394 = !DILocation(line: 1214, column: 10, scope: !4317)
!4395 = !DILocation(line: 1215, column: 9, scope: !4392)
!4396 = !DILocation(line: 1216, column: 19, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1216, column: 10)
!4398 = !DILocation(line: 1216, column: 10, scope: !4397)
!4399 = !DILocation(line: 1216, column: 53, scope: !4397)
!4400 = !DILocation(line: 1216, column: 64, scope: !4397)
!4401 = !DILocation(line: 1216, column: 55, scope: !4397)
!4402 = !DILocation(line: 1216, column: 10, scope: !4317)
!4403 = !DILocation(line: 1217, column: 59, scope: !4397)
!4404 = !DILocation(line: 1217, column: 45, scope: !4397)
!4405 = !DILocation(line: 1217, column: 18, scope: !4397)
!4406 = !DILocation(line: 1217, column: 9, scope: !4397)
!4407 = !DILocation(line: 1217, column: 43, scope: !4397)
!4408 = !DILocation(line: 1218, column: 59, scope: !4317)
!4409 = !DILocation(line: 1218, column: 45, scope: !4317)
!4410 = !DILocation(line: 1218, column: 16, scope: !4317)
!4411 = !DILocation(line: 1218, column: 7, scope: !4317)
!4412 = !DILocation(line: 1218, column: 43, scope: !4317)
!4413 = !DILocation(line: 1195, column: 26, scope: !4315)
!4414 = distinct !{!4414, !4312, !4415}
!4415 = !DILocation(line: 1219, column: 5, scope: !4313)
!4416 = !DILocation(line: 1221, column: 1, scope: !4239)
!4417 = distinct !DISubprogram(name: "init_subset_sps_list", scope: !3, file: !3, line: 1223, type: !4418, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !684, !7}
!4420 = !{!4421, !4422, !4423}
!4421 = !DILocalVariable(name: "subset_sps_list", arg: 1, scope: !4417, file: !3, line: 1223, type: !684)
!4422 = !DILocalVariable(name: "iSize", arg: 2, scope: !4417, file: !3, line: 1223, type: !7)
!4423 = !DILocalVariable(name: "i", scope: !4417, file: !3, line: 1225, type: !7)
!4424 = !DILocation(line: 0, scope: !4417)
!4425 = !DILocation(line: 1226, column: 30, scope: !4417)
!4426 = !DILocation(line: 1226, column: 35, scope: !4417)
!4427 = !DILocation(line: 1226, column: 3, scope: !4417)
!4428 = !DILocation(line: 1227, column: 13, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 1227, column: 3)
!4430 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 1227, column: 3)
!4431 = !DILocation(line: 1227, column: 3, scope: !4430)
!4432 = !DILocation(line: 1227, column: 22, scope: !4429)
!4433 = !DILocation(line: 1229, column: 5, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 1228, column: 3)
!4435 = !DILocation(line: 1229, column: 28, scope: !4434)
!4436 = !DILocation(line: 1229, column: 49, scope: !4434)
!4437 = !DILocation(line: 1230, column: 24, scope: !4434)
!4438 = !DILocation(line: 1230, column: 41, scope: !4434)
!4439 = !DILocation(line: 1231, column: 24, scope: !4434)
!4440 = !DILocation(line: 1231, column: 58, scope: !4434)
!4441 = !DILocation(line: 1232, column: 24, scope: !4434)
!4442 = !DILocation(line: 1232, column: 52, scope: !4434)
!4443 = distinct !{!4443, !4431, !4444, !4445, !4446}
!4444 = !DILocation(line: 1233, column: 3, scope: !4430)
!4445 = !{!"llvm.loop.isvectorized", i32 1}
!4446 = !{!"llvm.loop.unroll.runtime.disable"}
!4447 = distinct !{!4447, !4448}
!4448 = !{!"llvm.loop.unroll.disable"}
!4449 = distinct !{!4449, !4431, !4444, !4445}
!4450 = !DILocation(line: 1234, column: 1, scope: !4417)
!4451 = distinct !DISubprogram(name: "reset_subset_sps", scope: !3, file: !3, line: 1236, type: !2719, scopeLine: 1237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4452 = !{!4453, !4454, !4455, !4456}
!4453 = !DILocalVariable(name: "subset_sps", arg: 1, scope: !4451, file: !3, line: 1236, type: !684)
!4454 = !DILocalVariable(name: "i", scope: !4451, file: !3, line: 1238, type: !7)
!4455 = !DILocalVariable(name: "j", scope: !4451, file: !3, line: 1238, type: !7)
!4456 = !DILocalVariable(name: "pMVCVUI", scope: !4457, file: !3, line: 1294, type: !4185)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 1293, column: 3)
!4458 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 1292, column: 6)
!4459 = !DILocation(line: 0, scope: !4451)
!4460 = !DILocation(line: 1240, column: 6, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 1240, column: 6)
!4462 = !DILocation(line: 1240, column: 17, scope: !4461)
!4463 = !DILocation(line: 1240, column: 32, scope: !4461)
!4464 = !DILocation(line: 1240, column: 48, scope: !4461)
!4465 = !DILocation(line: 1240, column: 6, scope: !4451)
!4466 = !DILocation(line: 1242, column: 21, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 1241, column: 3)
!4468 = !DILocation(line: 1242, column: 42, scope: !4467)
!4469 = !DILocation(line: 1244, column: 5, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 1244, column: 5)
!4471 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1244, column: 5)
!4472 = !DILocation(line: 1244, column: 5, scope: !4471)
!4473 = !DILocation(line: 1244, column: 5, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 1244, column: 5)
!4475 = !DILocation(line: 1245, column: 29, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1245, column: 5)
!4477 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1245, column: 5)
!4478 = !DILocation(line: 1245, column: 15, scope: !4476)
!4479 = !DILocation(line: 1245, column: 5, scope: !4477)
!4480 = !DILocation(line: 1247, column: 7, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 1247, column: 7)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 1247, column: 7)
!4483 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1246, column: 5)
!4484 = !DILocation(line: 1247, column: 7, scope: !4482)
!4485 = !DILocation(line: 1247, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 1247, column: 7)
!4487 = !DILocation(line: 1248, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 1248, column: 7)
!4489 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 1248, column: 7)
!4490 = !DILocation(line: 1248, column: 7, scope: !4489)
!4491 = !DILocation(line: 1248, column: 7, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1248, column: 7)
!4493 = !DILocation(line: 1245, column: 48, scope: !4476)
!4494 = distinct !{!4494, !4479, !4495}
!4495 = !DILocation(line: 1249, column: 5, scope: !4477)
!4496 = !DILocation(line: 1250, column: 5, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 1250, column: 5)
!4498 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1250, column: 5)
!4499 = !DILocation(line: 1250, column: 5, scope: !4498)
!4500 = !DILocation(line: 1250, column: 5, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 1250, column: 5)
!4502 = !DILocation(line: 1251, column: 5, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 1251, column: 5)
!4504 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1251, column: 5)
!4505 = !DILocation(line: 1251, column: 5, scope: !4504)
!4506 = !DILocation(line: 1251, column: 5, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 1251, column: 5)
!4508 = !DILocation(line: 1252, column: 5, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1252, column: 5)
!4510 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1252, column: 5)
!4511 = !DILocation(line: 1252, column: 5, scope: !4510)
!4512 = !DILocation(line: 1252, column: 5, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 1252, column: 5)
!4514 = !DILocation(line: 1253, column: 5, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1253, column: 5)
!4516 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1253, column: 5)
!4517 = !DILocation(line: 1253, column: 5, scope: !4516)
!4518 = !DILocation(line: 1253, column: 5, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 1253, column: 5)
!4520 = !DILocation(line: 1255, column: 29, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 1255, column: 5)
!4522 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1255, column: 5)
!4523 = !DILocation(line: 1255, column: 15, scope: !4521)
!4524 = !DILocation(line: 1255, column: 5, scope: !4522)
!4525 = !DILocation(line: 1257, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1257, column: 7)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 1257, column: 7)
!4528 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 1256, column: 5)
!4529 = !DILocation(line: 1257, column: 7, scope: !4527)
!4530 = !DILocation(line: 1257, column: 7, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1257, column: 7)
!4532 = !DILocation(line: 1258, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1258, column: 7)
!4534 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 1258, column: 7)
!4535 = !DILocation(line: 1258, column: 7, scope: !4534)
!4536 = !DILocation(line: 1258, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 1258, column: 7)
!4538 = !DILocation(line: 1255, column: 48, scope: !4521)
!4539 = distinct !{!4539, !4524, !4540}
!4540 = !DILocation(line: 1259, column: 5, scope: !4522)
!4541 = !DILocation(line: 1260, column: 5, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 1260, column: 5)
!4543 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1260, column: 5)
!4544 = !DILocation(line: 1260, column: 5, scope: !4543)
!4545 = !DILocation(line: 1260, column: 5, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 1260, column: 5)
!4547 = !DILocation(line: 1261, column: 5, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 1261, column: 5)
!4549 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1261, column: 5)
!4550 = !DILocation(line: 1261, column: 5, scope: !4549)
!4551 = !DILocation(line: 1261, column: 5, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1261, column: 5)
!4553 = !DILocation(line: 1262, column: 5, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 1262, column: 5)
!4555 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1262, column: 5)
!4556 = !DILocation(line: 1262, column: 5, scope: !4555)
!4557 = !DILocation(line: 1262, column: 5, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 1262, column: 5)
!4559 = !DILocation(line: 1263, column: 5, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 1263, column: 5)
!4561 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1263, column: 5)
!4562 = !DILocation(line: 1263, column: 5, scope: !4561)
!4563 = !DILocation(line: 1263, column: 5, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1263, column: 5)
!4565 = !DILocation(line: 1265, column: 20, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 1265, column: 8)
!4567 = !DILocation(line: 1265, column: 54, scope: !4566)
!4568 = !DILocation(line: 1265, column: 8, scope: !4467)
!4569 = !DILocation(line: 1267, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 1267, column: 7)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1267, column: 7)
!4572 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 1266, column: 5)
!4573 = !DILocation(line: 1267, column: 7, scope: !4571)
!4574 = !DILocation(line: 1267, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 1267, column: 7)
!4576 = !DILocation(line: 1268, column: 31, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 1268, column: 7)
!4578 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1268, column: 7)
!4579 = !DILocation(line: 1268, column: 17, scope: !4577)
!4580 = !DILocation(line: 1268, column: 7, scope: !4578)
!4581 = !DILocation(line: 1270, column: 33, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 1270, column: 9)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1270, column: 9)
!4584 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1269, column: 7)
!4585 = !DILocation(line: 1270, column: 21, scope: !4582)
!4586 = !DILocation(line: 1270, column: 19, scope: !4582)
!4587 = !DILocation(line: 1270, column: 9, scope: !4583)
!4588 = !DILocation(line: 1272, column: 11, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 1272, column: 11)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 1272, column: 11)
!4591 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 1271, column: 9)
!4592 = !DILocation(line: 1272, column: 11, scope: !4590)
!4593 = !DILocation(line: 1272, column: 11, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 1272, column: 11)
!4595 = !DILocation(line: 1270, column: 64, scope: !4582)
!4596 = distinct !{!4596, !4587, !4597}
!4597 = !DILocation(line: 1273, column: 9, scope: !4583)
!4598 = !DILocation(line: 1274, column: 9, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 1274, column: 9)
!4600 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1274, column: 9)
!4601 = !DILocation(line: 1274, column: 9, scope: !4600)
!4602 = !DILocation(line: 1274, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 1274, column: 9)
!4604 = !DILocation(line: 1275, column: 9, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 1275, column: 9)
!4606 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1275, column: 9)
!4607 = !DILocation(line: 1275, column: 9, scope: !4606)
!4608 = !DILocation(line: 1275, column: 9, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 1275, column: 9)
!4610 = !DILocation(line: 1276, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1276, column: 9)
!4612 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1276, column: 9)
!4613 = !DILocation(line: 1276, column: 9, scope: !4612)
!4614 = !DILocation(line: 1276, column: 9, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1276, column: 9)
!4616 = !DILocation(line: 1277, column: 9, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 1277, column: 9)
!4618 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1277, column: 9)
!4619 = !DILocation(line: 1277, column: 9, scope: !4618)
!4620 = !DILocation(line: 1277, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 1277, column: 9)
!4622 = !DILocation(line: 1268, column: 67, scope: !4577)
!4623 = distinct !{!4623, !4580, !4624}
!4624 = !DILocation(line: 1278, column: 7, scope: !4578)
!4625 = !DILocation(line: 1279, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 1279, column: 7)
!4627 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1279, column: 7)
!4628 = !DILocation(line: 1279, column: 7, scope: !4627)
!4629 = !DILocation(line: 1279, column: 7, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 1279, column: 7)
!4631 = !DILocation(line: 1280, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 1280, column: 7)
!4633 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1280, column: 7)
!4634 = !DILocation(line: 1280, column: 7, scope: !4633)
!4635 = !DILocation(line: 1280, column: 7, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 1280, column: 7)
!4637 = !DILocation(line: 1281, column: 7, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 1281, column: 7)
!4639 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1281, column: 7)
!4640 = !DILocation(line: 1281, column: 7, scope: !4639)
!4641 = !DILocation(line: 1281, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 1281, column: 7)
!4643 = !DILocation(line: 1282, column: 7, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 1282, column: 7)
!4645 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1282, column: 7)
!4646 = !DILocation(line: 1282, column: 7, scope: !4645)
!4647 = !DILocation(line: 1282, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 1282, column: 7)
!4649 = !DILocation(line: 1283, column: 7, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1283, column: 7)
!4651 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1283, column: 7)
!4652 = !DILocation(line: 1283, column: 7, scope: !4651)
!4653 = !DILocation(line: 1283, column: 7, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 1283, column: 7)
!4655 = !DILocation(line: 1285, column: 53, scope: !4572)
!4656 = !DILocation(line: 1286, column: 5, scope: !4572)
!4657 = !DILocation(line: 1289, column: 34, scope: !4467)
!4658 = !DILocation(line: 1290, column: 3, scope: !4467)
!4659 = !DILocation(line: 1292, column: 32, scope: !4458)
!4660 = !DILocation(line: 1292, column: 20, scope: !4458)
!4661 = !DILocation(line: 1292, column: 6, scope: !4451)
!4662 = !DILocation(line: 1294, column: 39, scope: !4457)
!4663 = !DILocation(line: 0, scope: !4457)
!4664 = !DILocation(line: 1295, column: 17, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 1295, column: 8)
!4666 = !DILocation(line: 1295, column: 32, scope: !4665)
!4667 = !DILocation(line: 1295, column: 8, scope: !4457)
!4668 = !DILocation(line: 1297, column: 7, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 1297, column: 7)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1297, column: 7)
!4671 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 1296, column: 5)
!4672 = !DILocation(line: 1297, column: 7, scope: !4670)
!4673 = !DILocation(line: 1297, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1297, column: 7)
!4675 = !DILocation(line: 1298, column: 7, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1298, column: 7)
!4677 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1298, column: 7)
!4678 = !DILocation(line: 1298, column: 7, scope: !4677)
!4679 = !DILocation(line: 1298, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 1298, column: 7)
!4681 = !DILocation(line: 1299, column: 28, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 1299, column: 7)
!4683 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1299, column: 7)
!4684 = !DILocation(line: 1299, column: 17, scope: !4682)
!4685 = !DILocation(line: 1299, column: 7, scope: !4683)
!4686 = !DILocation(line: 1300, column: 9, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 1300, column: 9)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 1300, column: 9)
!4689 = !DILocation(line: 1300, column: 9, scope: !4688)
!4690 = !DILocation(line: 1300, column: 9, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 1300, column: 9)
!4692 = !DILocation(line: 1299, column: 45, scope: !4682)
!4693 = distinct !{!4693, !4685, !4694}
!4694 = !DILocation(line: 1300, column: 9, scope: !4683)
!4695 = !DILocation(line: 1301, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 1301, column: 7)
!4697 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1301, column: 7)
!4698 = !DILocation(line: 1301, column: 7, scope: !4697)
!4699 = !DILocation(line: 1301, column: 7, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1301, column: 7)
!4701 = !DILocation(line: 1302, column: 7, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 1302, column: 7)
!4703 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1302, column: 7)
!4704 = !DILocation(line: 1302, column: 7, scope: !4703)
!4705 = !DILocation(line: 1302, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1302, column: 7)
!4707 = !DILocation(line: 1303, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 1303, column: 7)
!4709 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1303, column: 7)
!4710 = !DILocation(line: 1303, column: 7, scope: !4709)
!4711 = !DILocation(line: 1303, column: 7, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1303, column: 7)
!4713 = !DILocation(line: 1304, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 1304, column: 7)
!4715 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1304, column: 7)
!4716 = !DILocation(line: 1304, column: 7, scope: !4715)
!4717 = !DILocation(line: 1304, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 1304, column: 7)
!4719 = !DILocation(line: 1305, column: 7, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 1305, column: 7)
!4721 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1305, column: 7)
!4722 = !DILocation(line: 1305, column: 7, scope: !4721)
!4723 = !DILocation(line: 1305, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 1305, column: 7)
!4725 = !DILocation(line: 1306, column: 7, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 1306, column: 7)
!4727 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1306, column: 7)
!4728 = !DILocation(line: 1306, column: 7, scope: !4727)
!4729 = !DILocation(line: 1306, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 1306, column: 7)
!4731 = !DILocation(line: 1307, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 1307, column: 7)
!4733 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1307, column: 7)
!4734 = !DILocation(line: 1307, column: 7, scope: !4733)
!4735 = !DILocation(line: 1307, column: 7, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 1307, column: 7)
!4737 = !DILocation(line: 1308, column: 7, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 1308, column: 7)
!4739 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1308, column: 7)
!4740 = !DILocation(line: 1308, column: 7, scope: !4739)
!4741 = !DILocation(line: 1308, column: 7, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 1308, column: 7)
!4743 = !DILocation(line: 1309, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 1309, column: 7)
!4745 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1309, column: 7)
!4746 = !DILocation(line: 1309, column: 7, scope: !4745)
!4747 = !DILocation(line: 1309, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 1309, column: 7)
!4749 = !DILocation(line: 1311, column: 31, scope: !4671)
!4750 = !DILocation(line: 1312, column: 5, scope: !4671)
!4751 = !DILocation(line: 1313, column: 49, scope: !4457)
!4752 = !DILocation(line: 1314, column: 3, scope: !4457)
!4753 = !DILocation(line: 1315, column: 1, scope: !4451)
!4754 = distinct !DISubprogram(name: "GetBaseViewId", scope: !3, file: !3, line: 1317, type: !4755, scopeLine: 1318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4758)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!7, !549, !4757}
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!4758 = !{!4759, !4760, !4761, !4762, !4763}
!4759 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !4754, file: !3, line: 1317, type: !549)
!4760 = !DILocalVariable(name: "subset_sps", arg: 2, scope: !4754, file: !3, line: 1317, type: !4757)
!4761 = !DILocalVariable(name: "curr_subset_sps", scope: !4754, file: !3, line: 1319, type: !684)
!4762 = !DILocalVariable(name: "i", scope: !4754, file: !3, line: 1320, type: !7)
!4763 = !DILocalVariable(name: "iBaseViewId", scope: !4754, file: !3, line: 1320, type: !7)
!4764 = !DILocation(line: 0, scope: !4754)
!4765 = !DILocation(line: 1322, column: 15, scope: !4754)
!4766 = !DILocation(line: 1326, column: 25, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1326, column: 8)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 1325, column: 3)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 1324, column: 3)
!4770 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 1324, column: 3)
!4771 = !DILocation(line: 1326, column: 41, scope: !4767)
!4772 = !DILocation(line: 1326, column: 45, scope: !4767)
!4773 = !DILocation(line: 1323, column: 28, scope: !4754)
!4774 = !DILocation(line: 1326, column: 69, scope: !4767)
!4775 = !DILocation(line: 1326, column: 48, scope: !4767)
!4776 = !DILocation(line: 1326, column: 8, scope: !4768)
!4777 = !DILocation(line: 1331, column: 20, scope: !4768)
!4778 = !DILocation(line: 1328, column: 38, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 1327, column: 5)
!4780 = !DILocation(line: 1328, column: 21, scope: !4779)
!4781 = !DILocation(line: 1335, column: 17, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 1334, column: 6)
!4783 = !DILocation(line: 1335, column: 5, scope: !4782)
!4784 = !DILocation(line: 1336, column: 3, scope: !4754)
