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

@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@p_Dec = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid Profile IDC (%d) encountered. \0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set4_flag\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_3bits\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"SPS: separate_colour_plane_flag\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"SPS: offset_for_ref_frame[i]\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"VUI: sar_width\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"VUI: sar_height\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"VUI: overscan_appropriate_flag\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"VUI: video_format\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"VUI: colour_primaries\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"VUI: transfer_characteristics\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"VUI: matrix_coefficients\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"VUI: chroma_sample_loc_type_top_field\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"VUI: chroma_sample_loc_type_bottom_field\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"VUI: low_delay_hrd_flag\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"VUI: pic_struct_present_flag   \00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"VUI: cpb_cnt_minus1\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"VUI: bit_rate_scale\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"VUI: cpb_size_scale\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"VUI: bit_rate_value_minus1\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"VUI: cpb_size_value_minus1\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"VUI: cbr_flag\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"VUI: initial_cpb_removal_delay_length_minus1\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"VUI: cpb_removal_delay_length_minus1\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"VUI: dpb_output_delay_length_minus1\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"VUI: time_offset_length\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.85 = private unnamed_addr constant [50 x i8] c"PPS: bottom_field_pic_order_in_frame_present_flag\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"PPS: run_length_minus1 [i]\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"PPS: top_left [i]\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"PPS: bottom_right [i]\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"InterpretPPS: slice_group_id\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"slice_group_id[i]\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@reset_format_info.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@reset_format_info.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@.str.113 = private unnamed_addr constant [101 x i8] c"Trying to use an invalid (uninitialized) Picture Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.114 = private unnamed_addr constant [112 x i8] c"PicParset %d references an invalid (uninitialized) Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.115 = private unnamed_addr constant [119 x i8] c"PicParset %d references an invalid (uninitialized) Subset Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"invalid sps->pic_order_cnt_type = %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"pic_order_cnt_type != 1\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"num_ref_frames_in_pic_order_cnt_cycle too large\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"num_views_minus1\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"init_subset_seq_parameter_set: subset_sps->view_id\00", align 1
@.str.121 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l0\00", align 1
@.str.122 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l1\00", align 1
@.str.123 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0\00", align 1
@.str.124 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1\00", align 1
@.str.125 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l0\00", align 1
@.str.126 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l1\00", align 1
@.str.127 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0\00", align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l0\00", align 1
@.str.131 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0[i]\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"anchor_ref_l0\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l1\00", align 1
@.str.134 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1[i]\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"anchor_ref_l1\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l0\00", align 1
@.str.137 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0[i]\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l0\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l1\00", align 1
@.str.140 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1[i]\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l1\00", align 1
@.str.142 = private unnamed_addr constant [34 x i8] c"num_level_values_signalled_minus1\00", align 1
@.str.143 = private unnamed_addr constant [53 x i8] c"init_subset_seq_parameter_set: subset_sps->level_idc\00", align 1
@.str.144 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->num_applicable_ops_minus1\00", align 1
@.str.145 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id\00", align 1
@.str.146 = private unnamed_addr constant [81 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1\00", align 1
@.str.147 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id\00", align 1
@.str.148 = private unnamed_addr constant [74 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"level_idc\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"num_applicable_ops_minus1\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id[i]\00", align 1
@.str.152 = private unnamed_addr constant [84 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1[i]\00", align 1
@.str.153 = private unnamed_addr constant [75 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i]\00", align 1
@.str.154 = private unnamed_addr constant [77 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1[i]\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"applicable_op_temporal_id\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"applicable_op_num_target_views_minus1\00", align 1
@.str.157 = private unnamed_addr constant [78 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i][j]\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"applicable_op_target_view_id\00", align 1
@.str.159 = private unnamed_addr constant [31 x i8] c"applicable_op_num_views_minus1\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"cpb_cnt_minus1\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"bit_rate_scale\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"cpb_size_scale\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"bit_rate_value_minus1\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"cpb_size_value_minus1\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"cbr_flag\00", align 1
@.str.166 = private unnamed_addr constant [40 x i8] c"initial_cpb_removal_delay_length_minus1\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"cpb_removal_delay_length_minus1\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"dpb_output_delay_length_minus1\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"time_offset_length\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"vui_mvc_num_ops_minus1\00", align 1
@.str.171 = private unnamed_addr constant [47 x i8] c"mvc_vui_parameters_extension: pMVCVUI->view_id\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"vui_mvc_temporal_id\00", align 1
@.str.173 = private unnamed_addr constant [39 x i8] c"vui_mvc_num_target_output_views_minus1\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"vui_mvc_view_id\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"vui_mvc_timing_info_present_flag\00", align 1
@.str.176 = private unnamed_addr constant [26 x i8] c"vui_mvc_num_units_in_tick\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"vui_mvc_time_scale\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"vui_mvc_fixed_frame_rate_flag\00", align 1
@.str.179 = private unnamed_addr constant [40 x i8] c"vui_mvc_nal_hrd_parameters_present_flag\00", align 1
@.str.180 = private unnamed_addr constant [32 x i8] c"vcl_hrd_parameters_present_flag\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"vui_mvc_low_delay_hrd_flag\00", align 1
@.str.182 = private unnamed_addr constant [32 x i8] c"vui_mvc_pic_struct_present_flag\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"bit_equal_to_one\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"mvc_vui_parameters_present_flag\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"additional_extension2_flag\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Consistency checking a picture parset, to be implemented\00", align 1
@str.188 = private unnamed_addr constant [58 x i8] c"Consistency checking a sequence parset, to be implemented\00", align 1
@str.189 = private unnamed_addr constant [65 x i8] c"Consistency checking a subset sequence parset, to be implemented\00", align 1
@str.190 = private unnamed_addr constant [37 x i8] c"\0Abit_equal_to_one is not equal to 1!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Scaling_List(ptr nocapture noundef writeonly %scalingList, i32 noundef %sizeOfScalingList, ptr nocapture noundef writeonly %UseDefaultScalingMatrix, ptr noundef %s) local_unnamed_addr #0 {
entry:
  %cmp38 = icmp sgt i32 %sizeOfScalingList, 0
  br i1 %cmp38, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %sizeOfScalingList, 16
  br i1 %cmp1, label %for.body.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %sizeOfScalingList to i64
  br label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end.thread.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %if.end.thread.us ], [ 0, %for.body.lr.ph ]
  %nextScale.041.us = phi i32 [ %nextScale.136.us, %if.end.thread.us ], [ 8, %for.body.lr.ph ]
  %lastScale.040.us = phi i32 [ %3, %if.end.thread.us ], [ 8, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44
  %cond.in.us = load i8, ptr %arrayidx.us, align 1
  %cmp5.not.us = icmp eq i32 %nextScale.041.us, 0
  br i1 %cmp5.not.us, label %if.end.thread.us, label %if.end.us

if.end.us:                                        ; preds = %for.body.us
  %call.us = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %s) #16
  %add.us = add nsw i32 %call.us, %lastScale.040.us
  %add.fr.us = freeze i32 %add.us
  %add7.us = add i32 %add.fr.us, 256
  %rem.us = srem i32 %add7.us, 256
  %0 = trunc nuw nsw i64 %indvars.iv44 to i32
  %1 = or i32 %rem.us, %0
  %2 = icmp eq i32 %1, 0
  %land.ext.us = zext i1 %2 to i32
  store i32 %land.ext.us, ptr %UseDefaultScalingMatrix, align 4
  %cmp12.us = icmp eq i32 %rem.us, 0
  %spec.select.us = select i1 %cmp12.us, i32 %lastScale.040.us, i32 %rem.us
  br label %if.end.thread.us

if.end.thread.us:                                 ; preds = %for.body.us, %if.end.us
  %nextScale.136.us = phi i32 [ 0, %for.body.us ], [ %rem.us, %if.end.us ]
  %3 = phi i32 [ %lastScale.040.us, %for.body.us ], [ %spec.select.us, %if.end.us ]
  %idxprom18.us = zext i8 %cond.in.us to i64
  %arrayidx19.us = getelementptr inbounds i32, ptr %scalingList, i64 %idxprom18.us
  store i32 %3, ptr %arrayidx19.us, align 4
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, 16
  br i1 %exitcond48.not, label %for.end, label %for.body.us

for.body:                                         ; preds = %for.body.preheader, %if.end.thread
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end.thread ]
  %nextScale.041 = phi i32 [ 8, %for.body.preheader ], [ %nextScale.136, %if.end.thread ]
  %lastScale.040 = phi i32 [ 8, %for.body.preheader ], [ %7, %if.end.thread ]
  %arrayidx3 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv
  %cond.in = load i8, ptr %arrayidx3, align 1
  %cmp5.not = icmp eq i32 %nextScale.041, 0
  br i1 %cmp5.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %for.body
  %call = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %s) #16
  %add = add nsw i32 %call, %lastScale.040
  %add.fr = freeze i32 %add
  %add7 = add i32 %add.fr, 256
  %rem = srem i32 %add7, 256
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %5 = or i32 %rem, %4
  %6 = icmp eq i32 %5, 0
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, ptr %UseDefaultScalingMatrix, align 4
  %cmp12 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp12, i32 %lastScale.040, i32 %rem
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %for.body
  %nextScale.136 = phi i32 [ 0, %for.body ], [ %rem, %if.end ]
  %7 = phi i32 [ %lastScale.040, %for.body ], [ %spec.select, %if.end ]
  %idxprom18 = zext i8 %cond.in to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %scalingList, i64 %idxprom18
  store i32 %7, ptr %arrayidx19, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end.thread, %if.end.thread.us, %entry
  ret void
}

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretSPS(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %p, ptr nocapture noundef %sps) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p, align 8
  %1 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %0) #16
  %profile_idc = getelementptr inbounds i8, ptr %sps, i64 4
  store i32 %call, ptr %profile_idc, align 4
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
  ]

if.then:                                          ; preds = %entry
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %call)
  br label %cleanup

if.end:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call31 = tail call i32 @u_1(ptr noundef nonnull @.str.3, ptr noundef %0) #16
  %constrained_set0_flag = getelementptr inbounds i8, ptr %sps, i64 8
  store i32 %call31, ptr %constrained_set0_flag, align 4
  %call32 = tail call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %0) #16
  %constrained_set1_flag = getelementptr inbounds i8, ptr %sps, i64 12
  store i32 %call32, ptr %constrained_set1_flag, align 4
  %call33 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %0) #16
  %constrained_set2_flag = getelementptr inbounds i8, ptr %sps, i64 16
  store i32 %call33, ptr %constrained_set2_flag, align 4
  %call34 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %0) #16
  %constrained_set3_flag = getelementptr inbounds i8, ptr %sps, i64 20
  store i32 %call34, ptr %constrained_set3_flag, align 4
  %call35 = tail call i32 @u_1(ptr noundef nonnull @.str.7, ptr noundef %0) #16
  %constrained_set4_flag = getelementptr inbounds i8, ptr %sps, i64 24
  store i32 %call35, ptr %constrained_set4_flag, align 4
  %call36 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef %0) #16
  %call37 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %0) #16
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28
  store i32 %call37, ptr %level_idc, align 4
  %call38 = tail call i32 @ue_v(ptr noundef nonnull @.str.10, ptr noundef %0) #16
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %sps, i64 32
  store i32 %call38, ptr %seq_parameter_set_id, align 4
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36
  store i32 1, ptr %chroma_format_idc, align 4
  %bit_depth_luma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2060
  store i32 0, ptr %bit_depth_luma_minus8, align 4
  %bit_depth_chroma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2064
  store i32 0, ptr %bit_depth_chroma_minus8, align 4
  %lossless_qpprime_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849092
  store i32 0, ptr %lossless_qpprime_flag, align 4
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %sps, i64 4120
  store i32 0, ptr %separate_colour_plane_flag, align 4
  %2 = load i32, ptr %profile_idc, align 4
  switch i32 %2, label %if.end114 [
    i32 100, label %if.then58
    i32 110, label %if.then58
    i32 122, label %if.then58
    i32 244, label %if.then58
    i32 44, label %if.then58
    i32 118, label %if.then58
    i32 128, label %if.then58
  ]

if.then58:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call59 = tail call i32 @ue_v(ptr noundef nonnull @.str.11, ptr noundef %0) #16
  store i32 %call59, ptr %chroma_format_idc, align 4
  %cmp62 = icmp eq i32 %call59, 3
  br i1 %cmp62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.then58
  %call64 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %0) #16
  store i32 %call64, ptr %separate_colour_plane_flag, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.then58
  %call67 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef %0) #16
  store i32 %call67, ptr %bit_depth_luma_minus8, align 4
  %call69 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %0) #16
  store i32 %call69, ptr %bit_depth_chroma_minus8, align 4
  %3 = load i32, ptr %bit_depth_luma_minus8, align 4
  %4 = add i32 %3, -9
  %cmp72 = icmp ult i32 %4, -17
  %5 = add i32 %call69, -9
  %cmp78 = icmp ult i32 %5, -17
  %or.cond = select i1 %cmp72, i1 true, i1 %cmp78
  br i1 %or.cond, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end66
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 500) #16
  br label %if.end81

if.end81:                                         ; preds = %if.end66, %if.then80
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.16, ptr noundef %0) #16
  store i32 %call82, ptr %lossless_qpprime_flag, align 4
  %call84 = tail call i32 @u_1(ptr noundef nonnull @.str.17, ptr noundef %0) #16
  %seq_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %sps, i64 40
  store i32 %call84, ptr %seq_scaling_matrix_present_flag, align 4
  %tobool.not = icmp eq i32 %call84, 0
  br i1 %tobool.not, label %if.end114, label %if.then86

if.then86:                                        ; preds = %if.end81
  %6 = load i32, ptr %chroma_format_idc, align 4
  %cmp88.not = icmp eq i32 %6, 3
  %cond = select i1 %cmp88.not, i64 12, i64 8
  %seq_scaling_list_present_flag = getelementptr inbounds i8, ptr %sps, i64 44
  %ScalingList8x8 = getelementptr inbounds i8, ptr %sps, i64 476
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %sps, i64 2036
  %ScalingList4x4 = getelementptr inbounds i8, ptr %sps, i64 92
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %sps, i64 2012
  br label %for.body

for.body:                                         ; preds = %if.then86, %for.inc
  %indvars.iv = phi i64 [ 0, %if.then86 ], [ %indvars.iv.next, %for.inc ]
  %call92 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %0) #16
  %arrayidx = getelementptr inbounds [12 x i32], ptr %seq_scaling_list_present_flag, i64 0, i64 %indvars.iv
  store i32 %call92, ptr %arrayidx, align 4
  %tobool96.not = icmp eq i32 %call92, 0
  br i1 %tobool96.not, label %for.inc, label %if.then97

if.then97:                                        ; preds = %for.body
  %cmp98 = icmp ult i64 %indvars.iv, 6
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.then97
  %arrayidx102 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv
  %arrayidx104 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %if.end.thread.us.i, %if.then100
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %if.end.thread.us.i ], [ 0, %if.then100 ]
  %nextScale.041.us.i = phi i32 [ %nextScale.136.us.i, %if.end.thread.us.i ], [ 8, %if.then100 ]
  %lastScale.040.us.i = phi i32 [ %10, %if.end.thread.us.i ], [ 8, %if.then100 ]
  %arrayidx.us.i = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44.i
  %cond.in.us.i = load i8, ptr %arrayidx.us.i, align 1
  %cmp5.not.us.i = icmp eq i32 %nextScale.041.us.i, 0
  br i1 %cmp5.not.us.i, label %if.end.thread.us.i, label %if.end.us.i

if.end.us.i:                                      ; preds = %for.body.us.i
  %call.us.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16
  %add.us.i = add nsw i32 %call.us.i, %lastScale.040.us.i
  %add.fr.us.i = freeze i32 %add.us.i
  %add7.us.i = add i32 %add.fr.us.i, 256
  %rem.us.i = srem i32 %add7.us.i, 256
  %7 = trunc nuw nsw i64 %indvars.iv44.i to i32
  %8 = or i32 %rem.us.i, %7
  %9 = icmp eq i32 %8, 0
  %land.ext.us.i = zext i1 %9 to i32
  store i32 %land.ext.us.i, ptr %arrayidx104, align 4
  %cmp12.us.i = icmp eq i32 %rem.us.i, 0
  %spec.select.us.i = select i1 %cmp12.us.i, i32 %lastScale.040.us.i, i32 %rem.us.i
  br label %if.end.thread.us.i

if.end.thread.us.i:                               ; preds = %if.end.us.i, %for.body.us.i
  %nextScale.136.us.i = phi i32 [ 0, %for.body.us.i ], [ %rem.us.i, %if.end.us.i ]
  %10 = phi i32 [ %lastScale.040.us.i, %for.body.us.i ], [ %spec.select.us.i, %if.end.us.i ]
  %idxprom18.us.i = zext i8 %cond.in.us.i to i64
  %arrayidx19.us.i = getelementptr inbounds i32, ptr %arrayidx102, i64 %idxprom18.us.i
  store i32 %10, ptr %arrayidx19.us.i, align 4
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, 16
  br i1 %exitcond48.not.i, label %for.inc, label %for.body.us.i

if.else:                                          ; preds = %if.then97
  %11 = add nsw i64 %indvars.iv, -6
  %arrayidx106 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %11
  %arrayidx110 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.thread.i, %if.else
  %indvars.iv.i = phi i64 [ 0, %if.else ], [ %indvars.iv.next.i, %if.end.thread.i ]
  %nextScale.041.i = phi i32 [ 8, %if.else ], [ %nextScale.136.i, %if.end.thread.i ]
  %lastScale.040.i = phi i32 [ 8, %if.else ], [ %15, %if.end.thread.i ]
  %arrayidx3.i = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv.i
  %cond.in.i = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i32 %nextScale.041.i, 0
  br i1 %cmp5.not.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16
  %add.i = add nsw i32 %call.i, %lastScale.040.i
  %add.fr.i = freeze i32 %add.i
  %add7.i = add i32 %add.fr.i, 256
  %rem.i = srem i32 %add7.i, 256
  %12 = trunc nuw nsw i64 %indvars.iv.i to i32
  %13 = or i32 %rem.i, %12
  %14 = icmp eq i32 %13, 0
  %land.ext.i = zext i1 %14 to i32
  store i32 %land.ext.i, ptr %arrayidx110, align 4
  %cmp12.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %lastScale.040.i, i32 %rem.i
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i, %for.body.i
  %nextScale.136.i = phi i32 [ 0, %for.body.i ], [ %rem.i, %if.end.i ]
  %15 = phi i32 [ %lastScale.040.i, %for.body.i ], [ %spec.select.i, %if.end.i ]
  %idxprom18.i = zext i8 %cond.in.i to i64
  %arrayidx19.i = getelementptr inbounds i32, ptr %arrayidx106, i64 %idxprom18.i
  store i32 %15, ptr %arrayidx19.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %for.inc, label %for.body.i

for.inc:                                          ; preds = %if.end.thread.i, %if.end.thread.us.i, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %cond
  br i1 %exitcond.not, label %if.end114, label %for.body

if.end114:                                        ; preds = %for.inc, %if.end, %if.end81
  %call115 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef %0) #16
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps, i64 2068
  store i32 %call115, ptr %log2_max_frame_num_minus4, align 4
  %call116 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef %0) #16
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %sps, i64 2072
  store i32 %call116, ptr %pic_order_cnt_type, align 4
  switch i32 %call116, label %if.end143 [
    i32 0, label %if.then120
    i32 1, label %if.then126
  ]

if.then120:                                       ; preds = %if.end114
  %call121 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %0) #16
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %sps, i64 2076
  store i32 %call121, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4
  br label %if.end143

if.then126:                                       ; preds = %if.end114
  %call127 = tail call i32 @u_1(ptr noundef nonnull @.str.22, ptr noundef %0) #16
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %sps, i64 2080
  store i32 %call127, ptr %delta_pic_order_always_zero_flag, align 4
  %call128 = tail call i32 @se_v(ptr noundef nonnull @.str.23, ptr noundef %0) #16
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %sps, i64 2084
  store i32 %call128, ptr %offset_for_non_ref_pic, align 4
  %call129 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %0) #16
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %sps, i64 2088
  store i32 %call129, ptr %offset_for_top_to_bottom_field, align 4
  %call130 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %0) #16
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %sps, i64 2092
  store i32 %call130, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %cmp133298.not = icmp eq i32 %call130, 0
  br i1 %cmp133298.not, label %if.end143, label %for.body135.lr.ph

for.body135.lr.ph:                                ; preds = %if.then126
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %sps, i64 2096
  br label %for.body135

for.body135:                                      ; preds = %for.body135.lr.ph, %for.body135
  %indvars.iv303 = phi i64 [ 0, %for.body135.lr.ph ], [ %indvars.iv.next304, %for.body135 ]
  %call136 = tail call i32 @se_v(ptr noundef nonnull @.str.26, ptr noundef %0) #16
  %arrayidx138 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv303
  store i32 %call136, ptr %arrayidx138, align 4
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1
  %16 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %17 = zext i32 %16 to i64
  %cmp133 = icmp ult i64 %indvars.iv.next304, %17
  br i1 %cmp133, label %for.body135, label %if.end143

if.end143:                                        ; preds = %for.body135, %if.then126, %if.end114, %if.then120
  %call144 = tail call i32 @ue_v(ptr noundef nonnull @.str.27, ptr noundef %0) #16
  %num_ref_frames = getelementptr inbounds i8, ptr %sps, i64 3120
  store i32 %call144, ptr %num_ref_frames, align 4
  %call145 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %0) #16
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds i8, ptr %sps, i64 3124
  store i32 %call145, ptr %gaps_in_frame_num_value_allowed_flag, align 4
  %call146 = tail call i32 @ue_v(ptr noundef nonnull @.str.29, ptr noundef %0) #16
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128
  store i32 %call146, ptr %pic_width_in_mbs_minus1, align 4
  %call147 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %0) #16
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132
  store i32 %call147, ptr %pic_height_in_map_units_minus1, align 4
  %call148 = tail call i32 @u_1(ptr noundef nonnull @.str.31, ptr noundef %0) #16
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136
  store i32 %call148, ptr %frame_mbs_only_flag, align 4
  %tobool150.not = icmp eq i32 %call148, 0
  br i1 %tobool150.not, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end143
  %call152 = tail call i32 @u_1(ptr noundef nonnull @.str.32, ptr noundef %0) #16
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %sps, i64 3140
  store i32 %call152, ptr %mb_adaptive_frame_field_flag, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end143
  %call154 = tail call i32 @u_1(ptr noundef nonnull @.str.33, ptr noundef %0) #16
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %sps, i64 3144
  store i32 %call154, ptr %direct_8x8_inference_flag, align 4
  %call155 = tail call i32 @u_1(ptr noundef nonnull @.str.34, ptr noundef %0) #16
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps, i64 3148
  store i32 %call155, ptr %frame_cropping_flag, align 4
  %tobool157.not = icmp eq i32 %call155, 0
  br i1 %tobool157.not, label %if.end163, label %if.then158

if.then158:                                       ; preds = %if.end153
  %call159 = tail call i32 @ue_v(ptr noundef nonnull @.str.35, ptr noundef %0) #16
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps, i64 3152
  store i32 %call159, ptr %frame_cropping_rect_left_offset, align 4
  %call160 = tail call i32 @ue_v(ptr noundef nonnull @.str.36, ptr noundef %0) #16
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %sps, i64 3156
  store i32 %call160, ptr %frame_cropping_rect_right_offset, align 4
  %call161 = tail call i32 @ue_v(ptr noundef nonnull @.str.37, ptr noundef %0) #16
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %sps, i64 3160
  store i32 %call161, ptr %frame_cropping_rect_top_offset, align 4
  %call162 = tail call i32 @ue_v(ptr noundef nonnull @.str.38, ptr noundef %0) #16
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %sps, i64 3164
  store i32 %call162, ptr %frame_cropping_rect_bottom_offset, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.end153
  %call164 = tail call i32 @u_1(ptr noundef nonnull @.str.39, ptr noundef %0) #16
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3168
  store i32 %call164, ptr %vui_parameters_present_flag, align 4
  %matrix_coefficients.i = getelementptr inbounds i8, ptr %sps, i64 3216
  store i32 2, ptr %matrix_coefficients.i, align 4
  %call165 = tail call i32 @ReadVUI(ptr noundef nonnull %p, ptr noundef nonnull %sps)
  store i32 1, ptr %sps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.then
  %.pn = load ptr, ptr @p_Dec, align 8
  %retval.0.in = getelementptr inbounds i8, ptr %.pn, i64 24
  %retval.0 = load i32, ptr %retval.0.in, align 8
  ret i32 %retval.0
}

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @InitVUI(ptr nocapture noundef writeonly %sps) local_unnamed_addr #3 {
entry:
  %matrix_coefficients = getelementptr inbounds i8, ptr %sps, i64 3216
  store i32 2, ptr %matrix_coefficients, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadVUI(ptr nocapture noundef readonly %p, ptr nocapture noundef %sps) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p, align 8
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3168
  %1 = load i32, ptr %vui_parameters_present_flag, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end124, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef %0) #16
  %vui_seq_parameters = getelementptr inbounds i8, ptr %sps, i64 3172
  store i32 %call, ptr %vui_seq_parameters, align 4
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end15, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.41, ptr noundef %0) #16
  %aspect_ratio_idc = getelementptr inbounds i8, ptr %sps, i64 3176
  store i32 %call5, ptr %aspect_ratio_idc, align 4
  %cmp = icmp eq i32 %call5, 255
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then4
  %call10 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.42, ptr noundef %0) #16
  %conv = trunc i32 %call10 to i16
  %sar_width = getelementptr inbounds i8, ptr %sps, i64 3180
  store i16 %conv, ptr %sar_width, align 4
  %call12 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.43, ptr noundef %0) #16
  %conv13 = trunc i32 %call12 to i16
  %sar_height = getelementptr inbounds i8, ptr %sps, i64 3182
  store i16 %conv13, ptr %sar_height, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.then9, %if.then
  %call16 = tail call i32 @u_1(ptr noundef nonnull @.str.44, ptr noundef %0) #16
  %overscan_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3184
  store i32 %call16, ptr %overscan_info_present_flag, align 4
  %tobool20.not = icmp eq i32 %call16, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end15
  %call22 = tail call i32 @u_1(ptr noundef nonnull @.str.45, ptr noundef %0) #16
  %overscan_appropriate_flag = getelementptr inbounds i8, ptr %sps, i64 3188
  store i32 %call22, ptr %overscan_appropriate_flag, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end15
  %call25 = tail call i32 @u_1(ptr noundef nonnull @.str.46, ptr noundef %0) #16
  %video_signal_type_present_flag = getelementptr inbounds i8, ptr %sps, i64 3192
  store i32 %call25, ptr %video_signal_type_present_flag, align 4
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end48, label %if.then30

if.then30:                                        ; preds = %if.end24
  %call31 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef %0) #16
  %video_format = getelementptr inbounds i8, ptr %sps, i64 3196
  store i32 %call31, ptr %video_format, align 4
  %call33 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %0) #16
  %video_full_range_flag = getelementptr inbounds i8, ptr %sps, i64 3200
  store i32 %call33, ptr %video_full_range_flag, align 4
  %call35 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %0) #16
  %colour_description_present_flag = getelementptr inbounds i8, ptr %sps, i64 3204
  store i32 %call35, ptr %colour_description_present_flag, align 4
  %tobool39.not = icmp eq i32 %call35, 0
  br i1 %tobool39.not, label %if.end48, label %if.then40

if.then40:                                        ; preds = %if.then30
  %call41 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.50, ptr noundef %0) #16
  %colour_primaries = getelementptr inbounds i8, ptr %sps, i64 3208
  store i32 %call41, ptr %colour_primaries, align 4
  %call43 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.51, ptr noundef %0) #16
  %transfer_characteristics = getelementptr inbounds i8, ptr %sps, i64 3212
  store i32 %call43, ptr %transfer_characteristics, align 4
  %call45 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.52, ptr noundef %0) #16
  %matrix_coefficients = getelementptr inbounds i8, ptr %sps, i64 3216
  store i32 %call45, ptr %matrix_coefficients, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then30, %if.then40, %if.end24
  %call49 = tail call i32 @u_1(ptr noundef nonnull @.str.53, ptr noundef %0) #16
  %chroma_location_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3220
  store i32 %call49, ptr %chroma_location_info_present_flag, align 4
  %tobool53.not = icmp eq i32 %call49, 0
  br i1 %tobool53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end48
  %call55 = tail call i32 @ue_v(ptr noundef nonnull @.str.54, ptr noundef %0) #16
  %chroma_sample_loc_type_top_field = getelementptr inbounds i8, ptr %sps, i64 3224
  store i32 %call55, ptr %chroma_sample_loc_type_top_field, align 4
  %call57 = tail call i32 @ue_v(ptr noundef nonnull @.str.55, ptr noundef %0) #16
  %chroma_sample_loc_type_bottom_field = getelementptr inbounds i8, ptr %sps, i64 3228
  store i32 %call57, ptr %chroma_sample_loc_type_bottom_field, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end48
  %call60 = tail call i32 @u_1(ptr noundef nonnull @.str.56, ptr noundef %0) #16
  %timing_info_present_flag = getelementptr inbounds i8, ptr %sps, i64 3232
  store i32 %call60, ptr %timing_info_present_flag, align 4
  %tobool64.not = icmp eq i32 %call60, 0
  br i1 %tobool64.not, label %if.end72, label %if.then65

if.then65:                                        ; preds = %if.end59
  %call66 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %0) #16
  %num_units_in_tick = getelementptr inbounds i8, ptr %sps, i64 3236
  store i32 %call66, ptr %num_units_in_tick, align 4
  %call68 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef %0) #16
  %time_scale = getelementptr inbounds i8, ptr %sps, i64 3240
  store i32 %call68, ptr %time_scale, align 4
  %call70 = tail call i32 @u_1(ptr noundef nonnull @.str.59, ptr noundef %0) #16
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %sps, i64 3244
  store i32 %call70, ptr %fixed_frame_rate_flag, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.end59
  %call73 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef %0) #16
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3248
  store i32 %call73, ptr %nal_hrd_parameters_present_flag, align 4
  %tobool77.not = icmp eq i32 %call73, 0
  br i1 %tobool77.not, label %if.end81, label %if.then78

if.then78:                                        ; preds = %if.end72
  %nal_hrd_parameters = getelementptr inbounds i8, ptr %sps, i64 3252
  %call80 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %p, ptr noundef nonnull %nal_hrd_parameters)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end72
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.61, ptr noundef %0) #16
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %sps, i64 3664
  store i32 %call82, ptr %vcl_hrd_parameters_present_flag, align 4
  %tobool86.not = icmp eq i32 %call82, 0
  br i1 %tobool86.not, label %if.end90, label %if.then87

if.then87:                                        ; preds = %if.end81
  %vcl_hrd_parameters = getelementptr inbounds i8, ptr %sps, i64 3668
  %call89 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %p, ptr noundef nonnull %vcl_hrd_parameters)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end81
  %2 = load i32, ptr %nal_hrd_parameters_present_flag, align 4
  %tobool93.not = icmp eq i32 %2, 0
  br i1 %tobool93.not, label %lor.lhs.false, label %if.then97

lor.lhs.false:                                    ; preds = %if.end90
  %3 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4
  %tobool96.not = icmp eq i32 %3, 0
  br i1 %tobool96.not, label %if.end100, label %if.then97

if.then97:                                        ; preds = %lor.lhs.false, %if.end90
  %call98 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %0) #16
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %sps, i64 4080
  store i32 %call98, ptr %low_delay_hrd_flag, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %lor.lhs.false
  %call101 = tail call i32 @u_1(ptr noundef nonnull @.str.63, ptr noundef %0) #16
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %sps, i64 4084
  store i32 %call101, ptr %pic_struct_present_flag, align 4
  %call103 = tail call i32 @u_1(ptr noundef nonnull @.str.64, ptr noundef %0) #16
  %bitstream_restriction_flag = getelementptr inbounds i8, ptr %sps, i64 4088
  store i32 %call103, ptr %bitstream_restriction_flag, align 4
  %tobool107.not = icmp eq i32 %call103, 0
  br i1 %tobool107.not, label %if.end124, label %if.then108

if.then108:                                       ; preds = %if.end100
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.65, ptr noundef %0) #16
  %motion_vectors_over_pic_boundaries_flag = getelementptr inbounds i8, ptr %sps, i64 4092
  store i32 %call109, ptr %motion_vectors_over_pic_boundaries_flag, align 4
  %call111 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %0) #16
  %max_bytes_per_pic_denom = getelementptr inbounds i8, ptr %sps, i64 4096
  store i32 %call111, ptr %max_bytes_per_pic_denom, align 4
  %call113 = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %0) #16
  %max_bits_per_mb_denom = getelementptr inbounds i8, ptr %sps, i64 4100
  store i32 %call113, ptr %max_bits_per_mb_denom, align 4
  %call115 = tail call i32 @ue_v(ptr noundef nonnull @.str.68, ptr noundef %0) #16
  %log2_max_mv_length_horizontal = getelementptr inbounds i8, ptr %sps, i64 4108
  store i32 %call115, ptr %log2_max_mv_length_horizontal, align 4
  %call117 = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %0) #16
  %log2_max_mv_length_vertical = getelementptr inbounds i8, ptr %sps, i64 4104
  store i32 %call117, ptr %log2_max_mv_length_vertical, align 4
  %call119 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef %0) #16
  %num_reorder_frames = getelementptr inbounds i8, ptr %sps, i64 4112
  store i32 %call119, ptr %num_reorder_frames, align 4
  %call121 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %0) #16
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 4116
  store i32 %call121, ptr %max_dec_frame_buffering, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.end100, %if.then108, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadHRDParameters(ptr nocapture noundef readonly %p, ptr nocapture noundef %hrd) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p, align 8
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %0) #16
  store i32 %call, ptr %hrd, align 4
  %call1 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.73, ptr noundef %0) #16
  %bit_rate_scale = getelementptr inbounds i8, ptr %hrd, i64 4
  store i32 %call1, ptr %bit_rate_scale, align 4
  %call2 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef %0) #16
  %cpb_size_scale = getelementptr inbounds i8, ptr %hrd, i64 8
  store i32 %call2, ptr %cpb_size_scale, align 4
  %bit_rate_value_minus1 = getelementptr inbounds i8, ptr %hrd, i64 12
  %cpb_size_value_minus1 = getelementptr inbounds i8, ptr %hrd, i64 140
  %cbr_flag = getelementptr inbounds i8, ptr %hrd, i64 268
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %SchedSelIdx.038 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.75, ptr noundef %0) #16
  %idxprom = zext i32 %SchedSelIdx.038 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr %bit_rate_value_minus1, i64 0, i64 %idxprom
  store i32 %call4, ptr %arrayidx, align 4
  %call5 = tail call i32 @ue_v(ptr noundef nonnull @.str.76, ptr noundef %0) #16
  %arrayidx7 = getelementptr inbounds [32 x i32], ptr %cpb_size_value_minus1, i64 0, i64 %idxprom
  store i32 %call5, ptr %arrayidx7, align 4
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.77, ptr noundef %0) #16
  %arrayidx10 = getelementptr inbounds [32 x i32], ptr %cbr_flag, i64 0, i64 %idxprom
  store i32 %call8, ptr %arrayidx10, align 4
  %inc = add i32 %SchedSelIdx.038, 1
  %1 = load i32, ptr %hrd, align 4
  %cmp.not = icmp ugt i32 %inc, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call11 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.78, ptr noundef %0) #16
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 396
  store i32 %call11, ptr %initial_cpb_removal_delay_length_minus1, align 4
  %call12 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.79, ptr noundef %0) #16
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 400
  store i32 %call12, ptr %cpb_removal_delay_length_minus1, align 4
  %call13 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.80, ptr noundef %0) #16
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %hrd, i64 404
  store i32 %call13, ptr %dpb_output_delay_length_minus1, align 4
  %call14 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.81, ptr noundef %0) #16
  %time_offset_length = getelementptr inbounds i8, ptr %hrd, i64 408
  store i32 %call14, ptr %time_offset_length, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretPPS(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %p, ptr nocapture noundef %pps) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p, align 8
  %1 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.82, ptr noundef %0) #16
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %pps, i64 4
  store i32 %call, ptr %pic_parameter_set_id, align 4
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.83, ptr noundef %0) #16
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %pps, i64 8
  store i32 %call1, ptr %seq_parameter_set_id, align 8
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.84, ptr noundef %0) #16
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %pps, i64 12
  store i32 %call2, ptr %entropy_coding_mode_flag, align 4
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %0) #16
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %pps, i64 2040
  store i32 %call3, ptr %bottom_field_pic_order_in_frame_present_flag, align 8
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.86, ptr noundef %0) #16
  %num_slice_groups_minus1 = getelementptr inbounds i8, ptr %pps, i64 2044
  store i32 %call4, ptr %num_slice_groups_minus1, align 4
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end79, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.87, ptr noundef %0) #16
  %slice_group_map_type = getelementptr inbounds i8, ptr %pps, i64 2048
  store i32 %call6, ptr %slice_group_map_type, align 8
  switch i32 %call6, label %if.end79 [
    i32 0, label %for.cond.preheader
    i32 2, label %for.cond16.preheader
    i32 3, label %if.then37
    i32 4, label %if.then37
    i32 5, label %if.then37
    i32 6, label %if.then43
  ]

for.cond16.preheader:                             ; preds = %if.then
  %2 = load i32, ptr %num_slice_groups_minus1, align 4
  %cmp18248.not = icmp eq i32 %2, 0
  br i1 %cmp18248.not, label %if.end79, label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %top_left = getelementptr inbounds i8, ptr %pps, i64 2084
  %bottom_right = getelementptr inbounds i8, ptr %pps, i64 2116
  br label %for.body19

for.cond.preheader:                               ; preds = %if.then
  %run_length_minus1 = getelementptr inbounds i8, ptr %pps, i64 2052
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0250 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  %call12 = tail call i32 @ue_v(ptr noundef nonnull @.str.88, ptr noundef %0) #16
  %idxprom = zext i32 %i.0250 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %idxprom
  store i32 %call12, ptr %arrayidx, align 4
  %inc = add i32 %i.0250, 1
  %3 = load i32, ptr %num_slice_groups_minus1, align 4
  %cmp11.not = icmp ugt i32 %inc, %3
  br i1 %cmp11.not, label %if.end79, label %for.body

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.body19 ]
  %call20 = tail call i32 @ue_v(ptr noundef nonnull @.str.89, ptr noundef %0) #16
  %arrayidx22 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv
  store i32 %call20, ptr %arrayidx22, align 4
  %call23 = tail call i32 @ue_v(ptr noundef nonnull @.str.90, ptr noundef %0) #16
  %arrayidx25 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv
  store i32 %call23, ptr %arrayidx25, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %num_slice_groups_minus1, align 4
  %5 = zext i32 %4 to i64
  %cmp18 = icmp ult i64 %indvars.iv.next, %5
  br i1 %cmp18, label %for.body19, label %if.end79

if.then37:                                        ; preds = %if.then, %if.then, %if.then
  %call38 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %0) #16
  %slice_group_change_direction_flag = getelementptr inbounds i8, ptr %pps, i64 2148
  store i32 %call38, ptr %slice_group_change_direction_flag, align 4
  %call39 = tail call i32 @ue_v(ptr noundef nonnull @.str.92, ptr noundef %0) #16
  %slice_group_change_rate_minus1 = getelementptr inbounds i8, ptr %pps, i64 2152
  store i32 %call39, ptr %slice_group_change_rate_minus1, align 8
  br label %if.end79

if.then43:                                        ; preds = %if.then
  %6 = load i32, ptr %num_slice_groups_minus1, align 4
  %add = add i32 %6, 1
  %cmp45 = icmp ugt i32 %add, 4
  %cmp50 = icmp ugt i32 %add, 2
  %. = select i1 %cmp50, i32 2, i32 1
  %NumberBitsPerSliceGroupId.0 = select i1 %cmp45, i32 3, i32 %.
  %call54 = tail call i32 @ue_v(ptr noundef nonnull @.str.93, ptr noundef %0) #16
  %pic_size_in_map_units_minus1 = getelementptr inbounds i8, ptr %pps, i64 2156
  store i32 %call54, ptr %pic_size_in_map_units_minus1, align 4
  %add56 = add i32 %call54, 1
  %conv = zext i32 %add56 to i64
  %call57 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 1) #17
  %slice_group_id = getelementptr inbounds i8, ptr %pps, i64 2160
  store ptr %call57, ptr %slice_group_id, align 8
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %if.then60, label %for.body66.preheader

if.then60:                                        ; preds = %if.then43
  tail call void @no_mem_exit(ptr noundef nonnull @.str.94) #16
  br label %for.body66.preheader

for.body66.preheader:                             ; preds = %if.then60, %if.then43
  br label %for.body66

for.body66:                                       ; preds = %for.body66.preheader, %for.body66
  %i.2247 = phi i32 [ %inc73, %for.body66 ], [ 0, %for.body66.preheader ]
  %call67 = tail call i32 @u_v(i32 noundef %NumberBitsPerSliceGroupId.0, ptr noundef nonnull @.str.95, ptr noundef %0) #16
  %conv68 = trunc i32 %call67 to i8
  %7 = load ptr, ptr %slice_group_id, align 8
  %idxprom70 = zext i32 %i.2247 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %7, i64 %idxprom70
  store i8 %conv68, ptr %arrayidx71, align 1
  %inc73 = add i32 %i.2247, 1
  %8 = load i32, ptr %pic_size_in_map_units_minus1, align 4
  %cmp64.not = icmp ugt i32 %inc73, %8
  br i1 %cmp64.not, label %if.end79, label %for.body66

if.end79:                                         ; preds = %for.body66, %for.body19, %for.body, %for.cond16.preheader, %if.then, %if.then37, %entry
  %call80 = tail call i32 @ue_v(ptr noundef nonnull @.str.96, ptr noundef %0) #16
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %pps, i64 2168
  store i32 %call80, ptr %num_ref_idx_l0_active_minus1, align 8
  %call81 = tail call i32 @ue_v(ptr noundef nonnull @.str.97, ptr noundef %0) #16
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %pps, i64 2172
  store i32 %call81, ptr %num_ref_idx_l1_active_minus1, align 4
  %call82 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %0) #16
  %weighted_pred_flag = getelementptr inbounds i8, ptr %pps, i64 2176
  store i32 %call82, ptr %weighted_pred_flag, align 8
  %call83 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.99, ptr noundef %0) #16
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %pps, i64 2180
  store i32 %call83, ptr %weighted_bipred_idc, align 4
  %call84 = tail call i32 @se_v(ptr noundef nonnull @.str.100, ptr noundef %0) #16
  %pic_init_qp_minus26 = getelementptr inbounds i8, ptr %pps, i64 2184
  store i32 %call84, ptr %pic_init_qp_minus26, align 8
  %call85 = tail call i32 @se_v(ptr noundef nonnull @.str.101, ptr noundef %0) #16
  %pic_init_qs_minus26 = getelementptr inbounds i8, ptr %pps, i64 2188
  store i32 %call85, ptr %pic_init_qs_minus26, align 4
  %call86 = tail call i32 @se_v(ptr noundef nonnull @.str.102, ptr noundef %0) #16
  %chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps, i64 2192
  store i32 %call86, ptr %chroma_qp_index_offset, align 8
  %call87 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef %0) #16
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %pps, i64 2200
  store i32 %call87, ptr %deblocking_filter_control_present_flag, align 8
  %call88 = tail call i32 @u_1(ptr noundef nonnull @.str.104, ptr noundef %0) #16
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %pps, i64 2204
  store i32 %call88, ptr %constrained_intra_pred_flag, align 4
  %call89 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef %0) #16
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %pps, i64 2208
  store i32 %call89, ptr %redundant_pic_cnt_present_flag, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16
  %9 = load ptr, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %frame_bitoffset, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %0, i64 12
  %11 = load i32, ptr %bitstream_length, align 4
  %call90 = tail call i32 @more_rbsp_data(ptr noundef %9, i32 noundef %10, i32 noundef %11) #16
  %tobool.not = icmp eq i32 %call90, 0
  br i1 %tobool.not, label %if.else138, label %if.then91

if.then91:                                        ; preds = %if.end79
  %call92 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef nonnull %0) #16
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %pps, i64 16
  store i32 %call92, ptr %transform_8x8_mode_flag, align 8
  %call93 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef nonnull %0) #16
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %pps, i64 20
  store i32 %call93, ptr %pic_scaling_matrix_present_flag, align 4
  %tobool95.not = icmp eq i32 %call93, 0
  br i1 %tobool95.not, label %if.end136, label %if.then96

if.then96:                                        ; preds = %if.then91
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24
  %12 = load i32, ptr %seq_parameter_set_id, align 8
  %idxprom98 = zext i32 %12 to i64
  %chroma_format_idc100 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom98, i32 9
  %13 = load i32, ptr %chroma_format_idc100, align 4
  %cmp101.not = icmp eq i32 %13, 3
  %cond = select i1 %cmp101.not, i32 6, i32 2
  %14 = load i32, ptr %transform_8x8_mode_flag, align 8
  %mul = mul nsw i32 %cond, %14
  %add104 = add nsw i32 %mul, 6
  %cmp106251.not = icmp eq i32 %add104, 0
  br i1 %cmp106251.not, label %if.end136, label %for.body108.lr.ph

for.body108.lr.ph:                                ; preds = %if.then96
  %pic_scaling_list_present_flag = getelementptr inbounds i8, ptr %pps, i64 24
  %ScalingList8x8 = getelementptr inbounds i8, ptr %pps, i64 456
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %pps, i64 2016
  %ScalingList4x4 = getelementptr inbounds i8, ptr %pps, i64 72
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %pps, i64 1992
  %wide.trip.count = zext i32 %add104 to i64
  br label %for.body108

for.body108:                                      ; preds = %for.body108.lr.ph, %for.inc133
  %indvars.iv257 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next258, %for.inc133 ]
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef %0) #16
  %arrayidx111 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag, i64 0, i64 %indvars.iv257
  store i32 %call109, ptr %arrayidx111, align 4
  %tobool115.not = icmp eq i32 %call109, 0
  br i1 %tobool115.not, label %for.inc133, label %if.then116

if.then116:                                       ; preds = %for.body108
  %cmp117 = icmp ult i64 %indvars.iv257, 6
  br i1 %cmp117, label %if.then119, label %if.else124

if.then119:                                       ; preds = %if.then116
  %arrayidx121 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv257
  %arrayidx123 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv257
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %if.end.thread.us.i, %if.then119
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %if.end.thread.us.i ], [ 0, %if.then119 ]
  %nextScale.041.us.i = phi i32 [ %nextScale.136.us.i, %if.end.thread.us.i ], [ 8, %if.then119 ]
  %lastScale.040.us.i = phi i32 [ %18, %if.end.thread.us.i ], [ 8, %if.then119 ]
  %arrayidx.us.i = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %indvars.iv44.i
  %cond.in.us.i = load i8, ptr %arrayidx.us.i, align 1
  %cmp5.not.us.i = icmp eq i32 %nextScale.041.us.i, 0
  br i1 %cmp5.not.us.i, label %if.end.thread.us.i, label %if.end.us.i

if.end.us.i:                                      ; preds = %for.body.us.i
  %call.us.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16
  %add.us.i = add nsw i32 %call.us.i, %lastScale.040.us.i
  %add.fr.us.i = freeze i32 %add.us.i
  %add7.us.i = add i32 %add.fr.us.i, 256
  %rem.us.i = srem i32 %add7.us.i, 256
  %15 = trunc nuw nsw i64 %indvars.iv44.i to i32
  %16 = or i32 %rem.us.i, %15
  %17 = icmp eq i32 %16, 0
  %land.ext.us.i = zext i1 %17 to i32
  store i32 %land.ext.us.i, ptr %arrayidx123, align 4
  %cmp12.us.i = icmp eq i32 %rem.us.i, 0
  %spec.select.us.i = select i1 %cmp12.us.i, i32 %lastScale.040.us.i, i32 %rem.us.i
  br label %if.end.thread.us.i

if.end.thread.us.i:                               ; preds = %if.end.us.i, %for.body.us.i
  %nextScale.136.us.i = phi i32 [ 0, %for.body.us.i ], [ %rem.us.i, %if.end.us.i ]
  %18 = phi i32 [ %lastScale.040.us.i, %for.body.us.i ], [ %spec.select.us.i, %if.end.us.i ]
  %idxprom18.us.i = zext i8 %cond.in.us.i to i64
  %arrayidx19.us.i = getelementptr inbounds i32, ptr %arrayidx121, i64 %idxprom18.us.i
  store i32 %18, ptr %arrayidx19.us.i, align 4
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, 16
  br i1 %exitcond48.not.i, label %for.inc133, label %for.body.us.i

if.else124:                                       ; preds = %if.then116
  %19 = add nsw i64 %indvars.iv257, -6
  %arrayidx126 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %19
  %arrayidx130 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.thread.i, %if.else124
  %indvars.iv.i = phi i64 [ 0, %if.else124 ], [ %indvars.iv.next.i, %if.end.thread.i ]
  %nextScale.041.i = phi i32 [ 8, %if.else124 ], [ %nextScale.136.i, %if.end.thread.i ]
  %lastScale.040.i = phi i32 [ 8, %if.else124 ], [ %23, %if.end.thread.i ]
  %arrayidx3.i = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %indvars.iv.i
  %cond.in.i = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i32 %nextScale.041.i, 0
  br i1 %cmp5.not.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %0) #16
  %add.i = add nsw i32 %call.i, %lastScale.040.i
  %add.fr.i = freeze i32 %add.i
  %add7.i = add i32 %add.fr.i, 256
  %rem.i = srem i32 %add7.i, 256
  %20 = trunc nuw nsw i64 %indvars.iv.i to i32
  %21 = or i32 %rem.i, %20
  %22 = icmp eq i32 %21, 0
  %land.ext.i = zext i1 %22 to i32
  store i32 %land.ext.i, ptr %arrayidx130, align 4
  %cmp12.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %lastScale.040.i, i32 %rem.i
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i, %for.body.i
  %nextScale.136.i = phi i32 [ 0, %for.body.i ], [ %rem.i, %if.end.i ]
  %23 = phi i32 [ %lastScale.040.i, %for.body.i ], [ %spec.select.i, %if.end.i ]
  %idxprom18.i = zext i8 %cond.in.i to i64
  %arrayidx19.i = getelementptr inbounds i32, ptr %arrayidx126, i64 %idxprom18.i
  store i32 %23, ptr %arrayidx19.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %for.inc133, label %for.body.i

for.inc133:                                       ; preds = %if.end.thread.i, %if.end.thread.us.i, %for.body108
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count
  br i1 %exitcond.not, label %if.end136, label %for.body108

if.end136:                                        ; preds = %for.inc133, %if.then96, %if.then91
  %call137 = tail call i32 @se_v(ptr noundef nonnull @.str.109, ptr noundef %0) #16
  br label %if.end141

if.else138:                                       ; preds = %if.end79
  %24 = load i32, ptr %chroma_qp_index_offset, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.else138, %if.end136
  %.sink = phi i32 [ %24, %if.else138 ], [ %call137, %if.end136 ]
  %second_chroma_qp_index_offset140 = getelementptr inbounds i8, ptr %pps, i64 2196
  store i32 %.sink, ptr %second_chroma_qp_index_offset140, align 4
  store i32 1, ptr %pps, align 8
  %25 = load ptr, ptr @p_Dec, align 8
  %UsedBits142 = getelementptr inbounds i8, ptr %25, i64 24
  %26 = load i32, ptr %UsedBits142, align 8
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

declare i32 @more_rbsp_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @PPSConsistencyCheck(ptr nocapture noundef readnone %pps) local_unnamed_addr #5 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SPSConsistencyCheck(ptr nocapture noundef readnone %sps) local_unnamed_addr #5 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.188)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SubsetSPSConsistencyCheck(ptr nocapture noundef readnone %subset_sps) local_unnamed_addr #5 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.189)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @MakePPSavailable(ptr nocapture noundef %p_Vid, i32 noundef %id, ptr nocapture noundef %pps) local_unnamed_addr #6 {
entry:
  %PicParSet = getelementptr inbounds i8, ptr %p_Vid, i64 132120
  %idxprom = sext i32 %id to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %slice_group_id = getelementptr inbounds i8, ptr %arrayidx, i64 2160
  %1 = load ptr, ptr %slice_group_id, align 8
  %cmp4.not = icmp eq ptr %1, null
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @free(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %arrayidx, ptr noundef nonnull align 8 dereferenceable(2216) %pps, i64 2216, i1 false)
  %slice_group_id12 = getelementptr inbounds i8, ptr %pps, i64 2160
  %2 = load ptr, ptr %slice_group_id12, align 8
  %slice_group_id16 = getelementptr inbounds i8, ptr %arrayidx, i64 2160
  store ptr %2, ptr %slice_group_id16, align 8
  store ptr null, ptr %slice_group_id12, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @CleanUpPPS(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %PicParSet = getelementptr inbounds i8, ptr %p_Vid, i64 132120
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 8
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %slice_group_id = getelementptr inbounds i8, ptr %arrayidx, i64 2160
  %1 = load ptr, ptr %slice_group_id, align 8
  %cmp5.not = icmp eq ptr %1, null
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @free(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  store i32 0, ptr %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MakeSPSavailable(ptr nocapture noundef writeonly %p_Vid, i32 noundef %id, ptr nocapture noundef readonly %sps) local_unnamed_addr #9 {
entry:
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24
  %idxprom = sext i32 %id to i64
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %arrayidx, ptr noundef nonnull align 4 dereferenceable(4128) %sps, i64 4128, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16
  %call1 = tail call ptr @AllocSPS() #16
  %0 = load ptr, ptr %call, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24
  %2 = load ptr, ptr %buf, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %len = getelementptr inbounds i8, ptr %nalu, i64 4
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false)
  %4 = load ptr, ptr %call, align 8
  %streamBuffer3 = getelementptr inbounds i8, ptr %4, i64 16
  %5 = load ptr, ptr %streamBuffer3, align 8
  %6 = load i32, ptr %len, align 4
  %sub5 = add i32 %6, -1
  %call6 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub5) #16
  %7 = load ptr, ptr %call, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12
  store i32 %call6, ptr %bitstream_length, align 4
  %8 = load ptr, ptr %call, align 8
  %code_len = getelementptr inbounds i8, ptr %8, i64 4
  store i32 %call6, ptr %code_len, align 4
  %9 = load ptr, ptr %call, align 8
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24
  store i32 0, ptr %ei_flag, align 8
  %10 = load ptr, ptr %call, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %11 = load ptr, ptr %call, align 8
  store i32 0, ptr %11, align 8
  %call12 = tail call i32 @InterpretSPS(ptr noundef %p_Vid, ptr noundef nonnull %call, ptr noundef %call1)
  tail call void @get_max_dec_frame_buf_size(ptr noundef %call1)
  %12 = load i32, ptr %call1, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end38, label %if.then

if.then:                                          ; preds = %entry
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %13 = load ptr, ptr %active_sps, align 8
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end29, label %if.then14

if.then14:                                        ; preds = %if.then
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %call1, i64 32
  %14 = load i32, ptr %seq_parameter_set_id, align 4
  %seq_parameter_set_id16 = getelementptr inbounds i8, ptr %13, i64 32
  %15 = load i32, ptr %seq_parameter_set_id16, align 4
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then14
  %call20 = tail call i32 @sps_is_equal(ptr noundef nonnull %call1, ptr noundef nonnull %13) #16
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.then18
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %16 = load ptr, ptr %dec_picture, align 8
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.end, label %if.then24

if.then24:                                        ; preds = %if.then22
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then22
  store ptr null, ptr %active_sps, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then14, %if.end, %if.then18, %if.then
  %seq_parameter_set_id30 = getelementptr inbounds i8, ptr %call1, i64 32
  %17 = load i32, ptr %seq_parameter_set_id30, align 4
  %SeqParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 24
  %idxprom.i = sext i32 %17 to i64
  %arrayidx.i = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet.i, i64 0, i64 %idxprom.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %arrayidx.i, ptr noundef nonnull readonly align 4 dereferenceable(4128) %call1, i64 4128, i1 false)
  %profile_idc = getelementptr inbounds i8, ptr %call1, i64 4
  %18 = load i32, ptr %profile_idc, align 4
  %profile_idc31 = getelementptr inbounds i8, ptr %p_Vid, i64 849084
  store i32 %18, ptr %profile_idc31, align 4
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %call1, i64 4120
  %19 = load i32, ptr %separate_colour_plane_flag, align 4
  %separate_colour_plane_flag32 = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  store i32 %19, ptr %separate_colour_plane_flag32, align 8
  %tobool34.not = icmp eq i32 %19, 0
  br i1 %tobool34.not, label %if.else, label %if.end38.sink.split

if.else:                                          ; preds = %if.end29
  %chroma_format_idc = getelementptr inbounds i8, ptr %call1, i64 36
  %20 = load i32, ptr %chroma_format_idc, align 4
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.end29, %if.else
  %.sink = phi i32 [ %20, %if.else ], [ 0, %if.end29 ]
  %ChromaArrayType = getelementptr inbounds i8, ptr %p_Vid, i64 848920
  store i32 %.sink, ptr %ChromaArrayType, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %entry
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16
  tail call void @FreeSPS(ptr noundef nonnull %call1) #16
  ret void
}

declare ptr @AllocPartition(i32 noundef) local_unnamed_addr #1

declare ptr @AllocSPS() local_unnamed_addr #1

declare i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @get_max_dec_frame_buf_size(ptr nocapture noundef %sps) local_unnamed_addr #0 {
entry:
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128
  %0 = load i32, ptr %pic_width_in_mbs_minus1, align 4
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132
  %1 = load i32, ptr %pic_height_in_map_units_minus1, align 4
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136
  %2 = load i32, ptr %frame_mbs_only_flag, align 4
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28
  %3 = load i32, ptr %level_idc, align 4
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
  ]

sw.bb5:                                           ; preds = %entry
  %profile_idc = getelementptr inbounds i8, ptr %sps, i64 4
  %4 = load i32, ptr %profile_idc, align 4
  %cmp = icmp ugt i32 %4, 99
  %cmp7 = icmp eq i32 %4, 44
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb5
  %constrained_set3_flag = getelementptr inbounds i8, ptr %sps, i64 20
  %5 = load i32, ptr %constrained_set3_flag, align 4
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %sw.epilog, label %if.else

if.else:                                          ; preds = %land.lhs.true, %sw.bb5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.183, i32 noundef 500) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true, %entry, %entry, %if.else, %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9
  %size.0 = phi i32 [ 0, %sw.default ], [ 70778880, %sw.bb21 ], [ 42393600, %sw.bb20 ], [ 13369344, %sw.bb19 ], [ 12582912, %sw.bb18 ], [ 12582912, %sw.bb17 ], [ 7864320, %sw.bb16 ], [ 6912000, %sw.bb15 ], [ 3110400, %sw.bb14 ], [ 3110400, %sw.bb13 ], [ 1824768, %sw.bb12 ], [ 912384, %sw.bb11 ], [ 912384, %sw.bb10 ], [ 912384, %sw.bb9 ], [ 345600, %if.else ], [ 152064, %entry ], [ 152064, %entry ], [ 152064, %land.lhs.true ]
  %add = add i32 %0, 1
  %add1 = add i32 %1, 1
  %mul = mul i32 %add1, %add
  %tobool.not = icmp eq i32 %2, 0
  %6 = zext i1 %tobool.not to i32
  %mul2 = shl i32 %mul, %6
  %mul3 = mul i32 %mul2, 384
  %div = sdiv i32 %size.0, %mul3
  %cond.i = tail call range(i32 -70778880, 70778881) i32 @llvm.smin.i32(i32 %div, i32 16)
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 4124
  store i32 %cond.i, ptr %max_dec_frame_buffering, align 4
  ret void
}

declare i32 @sps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @exit_picture(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @FreePartition(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @FreeSPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSubsetSPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16
  %0 = load ptr, ptr %call, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24
  %2 = load ptr, ptr %buf, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %len = getelementptr inbounds i8, ptr %nalu, i64 4
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false)
  %4 = load ptr, ptr %call, align 8
  %streamBuffer2 = getelementptr inbounds i8, ptr %4, i64 16
  %5 = load ptr, ptr %streamBuffer2, align 8
  %6 = load i32, ptr %len, align 4
  %sub4 = add i32 %6, -1
  %call5 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub4) #16
  %7 = load ptr, ptr %call, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12
  store i32 %call5, ptr %bitstream_length, align 4
  %8 = load ptr, ptr %call, align 8
  %code_len = getelementptr inbounds i8, ptr %8, i64 4
  store i32 %call5, ptr %code_len, align 4
  %9 = load ptr, ptr %call, align 8
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24
  store i32 0, ptr %ei_flag, align 8
  %10 = load ptr, ptr %call, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %11 = load ptr, ptr %call, align 8
  store i32 0, ptr %11, align 8
  %12 = load ptr, ptr %call, align 8
  %call.i = tail call ptr @AllocSPS() #16
  %call1.i = tail call i32 @InterpretSPS(ptr noundef %p_Vid, ptr noundef nonnull readonly %call, ptr noundef %call.i)
  %seq_parameter_set_id.i = getelementptr inbounds i8, ptr %call.i, i64 32
  %13 = load i32, ptr %seq_parameter_set_id.i, align 4
  %SubsetSeqParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 699424
  %idx.ext.i = zext i32 %13 to i64
  %add.ptr.i = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet.i, i64 %idx.ext.i
  %Valid.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4268
  %14 = load i32, ptr %Valid.i, align 4
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %num_views_minus1.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4132
  %15 = load i32, ptr %num_views_minus1.i, align 4
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  tail call void @reset_subset_sps(ptr noundef nonnull %add.ptr.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %add.ptr.i, ptr noundef nonnull align 4 dereferenceable(4128) %call.i, i64 4128, i1 false)
  store i32 0, ptr %Valid.i, align 4
  %profile_idc.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4
  %16 = load i32, ptr %profile_idc.i, align 4
  switch i32 %16, label %if.end23.i [
    i32 118, label %if.then11.i
    i32 128, label %if.then11.i
  ]

if.then11.i:                                      ; preds = %if.end.i, %if.end.i
  %call12.i = tail call i32 @u_1(ptr noundef nonnull @.str.184, ptr noundef %12) #16
  %bit_equal_to_one.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4128
  store i32 %call12.i, ptr %bit_equal_to_one.i, align 8
  %cmp14.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp14.not.i, label %if.end17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then11.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  br label %InterpretSubsetSPS.exit

if.end17.i:                                       ; preds = %if.then11.i
  tail call void @seq_parameter_set_mvc_extension(ptr noundef nonnull %add.ptr.i, ptr noundef %12)
  %call18.i = tail call i32 @u_1(ptr noundef nonnull @.str.186, ptr noundef %12) #16
  %mvc_vui_parameters_present_flag.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4264
  store i32 %call18.i, ptr %mvc_vui_parameters_present_flag.i, align 8
  %tobool20.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  %MVCVUIParams.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4272
  tail call void @mvc_vui_parameters_extension(ptr noundef nonnull %MVCVUIParams.i, ptr noundef %12)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end17.i, %if.end.i
  %call24.i = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef %12) #16
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end30.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end23.i
  %streamBuffer.i = getelementptr inbounds i8, ptr %12, i64 16
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %12, i64 8
  %bitstream_length.i = getelementptr inbounds i8, ptr %12, i64 12
  %17 = load ptr, ptr %streamBuffer.i, align 8
  %18 = load i32, ptr %frame_bitoffset.i, align 8
  %19 = load i32, ptr %bitstream_length.i, align 4
  %call2769.i = tail call i32 @more_rbsp_data(ptr noundef %17, i32 noundef %18, i32 noundef %19) #16
  %tobool28.not70.i = icmp eq i32 %call2769.i, 0
  br i1 %tobool28.not70.i, label %if.end30.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %call29.i = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef nonnull %12) #16
  %20 = load ptr, ptr %streamBuffer.i, align 8
  %21 = load i32, ptr %frame_bitoffset.i, align 8
  %22 = load i32, ptr %bitstream_length.i, align 4
  %call27.i = tail call i32 @more_rbsp_data(ptr noundef %20, i32 noundef %21, i32 noundef %22) #16
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %while.body.i

if.end30.i:                                       ; preds = %while.body.i, %while.cond.preheader.i, %if.end23.i
  %23 = load i32, ptr %add.ptr.i, align 8
  %tobool33.not.i = icmp eq i32 %23, 0
  br i1 %tobool33.not.i, label %if.end36.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  store i32 1, ptr %Valid.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end30.i
  tail call void @FreeSPS(ptr noundef %call.i) #16
  br label %InterpretSubsetSPS.exit

InterpretSubsetSPS.exit:                          ; preds = %if.then15.i, %if.end36.i
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet.i, i64 %idx.ext
  tail call void @get_max_dec_frame_buf_size(ptr noundef nonnull %add.ptr)
  %Valid = getelementptr inbounds i8, ptr %add.ptr, i64 4268
  %24 = load i32, ptr %Valid, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %InterpretSubsetSPS.exit
  %profile_idc = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %25 = load i32, ptr %profile_idc, align 4
  %profile_idc13 = getelementptr inbounds i8, ptr %p_Vid, i64 849084
  store i32 %25, ptr %profile_idc13, align 4
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %add.ptr, i64 4120
  %26 = load i32, ptr %separate_colour_plane_flag, align 8
  %separate_colour_plane_flag15 = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  store i32 %26, ptr %separate_colour_plane_flag15, align 8
  %tobool17.not = icmp eq i32 %26, 0
  br i1 %tobool17.not, label %if.else, label %if.end21.sink.split

if.else:                                          ; preds = %if.then
  %chroma_format_idc = getelementptr inbounds i8, ptr %add.ptr, i64 36
  %27 = load i32, ptr %chroma_format_idc, align 4
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then, %if.else
  %.sink = phi i32 [ %27, %if.else ], [ 0, %if.then ]
  %ChromaArrayType = getelementptr inbounds i8, ptr %p_Vid, i64 848920
  store i32 %.sink, ptr %ChromaArrayType, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %InterpretSubsetSPS.exit
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessPPS(ptr noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @AllocPartition(i32 noundef 1) #16
  %call1 = tail call ptr @AllocPPS() #16
  %0 = load ptr, ptr %call, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24
  %2 = load ptr, ptr %buf, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %len = getelementptr inbounds i8, ptr %nalu, i64 4
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %arrayidx, i64 %conv, i1 false)
  %4 = load ptr, ptr %call, align 8
  %streamBuffer3 = getelementptr inbounds i8, ptr %4, i64 16
  %5 = load ptr, ptr %streamBuffer3, align 8
  %6 = load i32, ptr %len, align 4
  %sub5 = add i32 %6, -1
  %call6 = tail call i32 @RBSPtoSODB(ptr noundef %5, i32 noundef %sub5) #16
  %7 = load ptr, ptr %call, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %7, i64 12
  store i32 %call6, ptr %bitstream_length, align 4
  %8 = load ptr, ptr %call, align 8
  %code_len = getelementptr inbounds i8, ptr %8, i64 4
  store i32 %call6, ptr %code_len, align 4
  %9 = load ptr, ptr %call, align 8
  %ei_flag = getelementptr inbounds i8, ptr %9, i64 24
  store i32 0, ptr %ei_flag, align 8
  %10 = load ptr, ptr %call, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %11 = load ptr, ptr %call, align 8
  store i32 0, ptr %11, align 8
  %call12 = tail call i32 @InterpretPPS(ptr noundef %p_Vid, ptr noundef nonnull %call, ptr noundef %call1)
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8
  %12 = load ptr, ptr %active_pps, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %call1, i64 4
  %13 = load i32, ptr %pic_parameter_set_id, align 4
  %pic_parameter_set_id14 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = load i32, ptr %pic_parameter_set_id14, align 4
  %cmp = icmp eq i32 %13, %14
  br i1 %cmp, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.then
  %call18 = tail call i32 @pps_is_equal(ptr noundef nonnull %call1, ptr noundef nonnull %12) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.then16
  %pNextPPS = getelementptr inbounds i8, ptr %p_Vid, i64 856872
  %15 = load ptr, ptr %pNextPPS, align 8
  %16 = load ptr, ptr %active_pps, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %15, ptr noundef nonnull align 8 dereferenceable(2216) %16, i64 2216, i1 false)
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %17 = load ptr, ptr %dec_picture, align 8
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.end, label %if.then23

if.then23:                                        ; preds = %if.then20
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then20
  store ptr null, ptr %active_pps, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %if.end, %if.then16, %entry
  %pic_parameter_set_id29 = getelementptr inbounds i8, ptr %call1, i64 4
  %18 = load i32, ptr %pic_parameter_set_id29, align 4
  %PicParSet.i = getelementptr inbounds i8, ptr %p_Vid, i64 132120
  %idxprom.i = sext i32 %18 to i64
  %arrayidx.i = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet.i, i64 0, i64 %idxprom.i
  %19 = load i32, ptr %arrayidx.i, align 8
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %MakePPSavailable.exit

land.lhs.true.i:                                  ; preds = %if.end28
  %slice_group_id.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2160
  %20 = load ptr, ptr %slice_group_id.i, align 8
  %cmp4.not.i = icmp eq ptr %20, null
  br i1 %cmp4.not.i, label %MakePPSavailable.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @free(ptr noundef nonnull %20) #16
  br label %MakePPSavailable.exit

MakePPSavailable.exit:                            ; preds = %if.end28, %land.lhs.true.i, %if.then.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %arrayidx.i, ptr noundef nonnull align 8 dereferenceable(2216) %call1, i64 2216, i1 false)
  %slice_group_id12.i = getelementptr inbounds i8, ptr %call1, i64 2160
  %21 = load ptr, ptr %slice_group_id12.i, align 8
  %slice_group_id16.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2160
  store ptr %21, ptr %slice_group_id16.i, align 8
  store ptr null, ptr %slice_group_id12.i, align 8
  tail call void @FreePartition(ptr noundef nonnull %call, i32 noundef 1) #16
  tail call void @FreePPS(ptr noundef nonnull %call1) #16
  ret void
}

declare ptr @AllocPPS() local_unnamed_addr #1

declare i32 @pps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @FreePPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_format_info(ptr nocapture noundef readonly %sps, ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %source, ptr nocapture noundef %output) local_unnamed_addr #10 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps, i64 3148
  %1 = load i32, ptr %frame_cropping_flag, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36
  %2 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubWidthC, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps, i64 3152
  %4 = load i32, ptr %frame_cropping_rect_left_offset, align 4
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %sps, i64 3156
  %5 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubHeightC, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx8, align 4
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136
  %7 = load i32, ptr %frame_mbs_only_flag, align 4
  %sub.neg = add i32 %7, -2
  %mul9.neg = mul i32 %sub.neg, %6
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %sps, i64 3160
  %8 = load i32, ptr %frame_cropping_rect_top_offset, align 4
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %sps, i64 3164
  %9 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %mul5324 = add i32 %5, %4
  %10 = mul i32 %mul5324, %3
  %mul17325 = add i32 %9, %8
  %.neg = mul i32 %mul9.neg, %mul17325
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %11 = phi i32 [ %10, %if.then ], [ 0, %entry ]
  %.neg326 = phi i32 [ %.neg, %if.then ], [ 0, %entry ]
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %12 = load i32, ptr %width, align 4
  %sub19 = sub i32 %12, %11
  %width20 = getelementptr inbounds i8, ptr %source, i64 16
  store i32 %sub19, ptr %width20, align 8
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %13 = load i32, ptr %height, align 8
  %sub23 = add i32 %13, %.neg326
  %height24 = getelementptr inbounds i8, ptr %source, i64 28
  store i32 %sub23, ptr %height24, align 4
  %14 = load i32, ptr %frame_cropping_flag, align 4
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end
  %frame_cropping_rect_left_offset29 = getelementptr inbounds i8, ptr %sps, i64 3152
  %15 = load i32, ptr %frame_cropping_rect_left_offset29, align 4
  %frame_cropping_rect_right_offset30 = getelementptr inbounds i8, ptr %sps, i64 3156
  %16 = load i32, ptr %frame_cropping_rect_right_offset30, align 4
  %frame_mbs_only_flag31 = getelementptr inbounds i8, ptr %sps, i64 3136
  %17 = load i32, ptr %frame_mbs_only_flag31, align 4
  %sub32.neg = add i32 %17, -2
  %sub32 = sub nsw i32 2, %17
  %frame_cropping_rect_top_offset33 = getelementptr inbounds i8, ptr %sps, i64 3160
  %18 = load i32, ptr %frame_cropping_rect_top_offset33, align 4
  %mul34.neg = mul i32 %sub32.neg, %18
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds i8, ptr %sps, i64 3164
  %19 = load i32, ptr %frame_cropping_rect_bottom_offset37, align 4
  %mul38 = mul i32 %19, %sub32
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then28
  %crop_left.1 = phi i32 [ %15, %if.then28 ], [ 0, %if.end ]
  %crop_right.1 = phi i32 [ %16, %if.then28 ], [ 0, %if.end ]
  %crop_top.1.neg348 = phi i32 [ %mul34.neg, %if.then28 ], [ 0, %if.end ]
  %crop_bottom.1 = phi i32 [ %mul38, %if.then28 ], [ 0, %if.end ]
  %chroma_format_idc41 = getelementptr inbounds i8, ptr %sps, i64 36
  %20 = load i32, ptr %chroma_format_idc41, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.else61

land.lhs.true:                                    ; preds = %if.end40
  %write_uv = getelementptr inbounds i8, ptr %0, i64 780
  %21 = load i32, ptr %write_uv, align 4
  %tobool42.not = icmp eq i32 %21, 0
  br i1 %tobool42.not, label %if.else61, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %shr = ashr i32 %sub19, 1
  %arrayidx47 = getelementptr inbounds i8, ptr %source, i64 20
  store i32 %shr, ptr %arrayidx47, align 4
  %arrayidx51 = getelementptr inbounds i8, ptr %source, i64 24
  store i32 %shr, ptr %arrayidx51, align 8
  %shr54 = ashr i32 %sub23, 1
  br label %if.end78

if.else61:                                        ; preds = %land.lhs.true, %if.end40
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %22 = load i32, ptr %width_cr, align 4
  %23 = add i32 %crop_right.1, %crop_left.1
  %sub63 = sub i32 %22, %23
  %arrayidx65 = getelementptr inbounds i8, ptr %source, i64 20
  store i32 %sub63, ptr %arrayidx65, align 4
  %arrayidx69 = getelementptr inbounds i8, ptr %source, i64 24
  store i32 %sub63, ptr %arrayidx69, align 8
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %24 = load i32, ptr %height_cr, align 8
  %.neg347 = sub i32 %crop_top.1.neg348, %crop_bottom.1
  %sub71 = add i32 %.neg347, %24
  br label %if.end78

if.end78:                                         ; preds = %if.else61, %if.then43
  %sub71.sink349 = phi i32 [ %sub71, %if.else61 ], [ %shr54, %if.then43 ]
  %arrayidx73 = getelementptr inbounds i8, ptr %source, i64 32
  store i32 %sub71.sink349, ptr %arrayidx73, align 4
  %arrayidx77 = getelementptr inbounds i8, ptr %source, i64 36
  store i32 %sub71.sink349, ptr %arrayidx77, align 4
  %25 = load i32, ptr %width, align 4
  %width80 = getelementptr inbounds i8, ptr %output, i64 16
  store i32 %25, ptr %width80, align 8
  %width_cr82 = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %26 = load i32, ptr %width_cr82, align 4
  %arrayidx84 = getelementptr inbounds i8, ptr %source, i64 20
  store i32 %26, ptr %arrayidx84, align 4
  %arrayidx87 = getelementptr inbounds i8, ptr %source, i64 24
  store i32 %26, ptr %arrayidx87, align 8
  %27 = load i32, ptr %height, align 8
  %height89 = getelementptr inbounds i8, ptr %output, i64 28
  store i32 %27, ptr %height89, align 4
  %height_cr91 = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %28 = load i32, ptr %height_cr91, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %output, i64 32
  store i32 %28, ptr %arrayidx93, align 4
  %arrayidx96 = getelementptr inbounds i8, ptr %output, i64 36
  store i32 %28, ptr %arrayidx96, align 4
  %29 = load i32, ptr %width20, align 8
  %30 = load i32, ptr %height24, align 4
  %mul101 = mul nsw i32 %30, %29
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72
  store i32 %mul101, ptr %size_cmp, align 8
  %31 = load i32, ptr %arrayidx84, align 4
  %arrayidx106 = getelementptr inbounds i8, ptr %source, i64 32
  %32 = load i32, ptr %arrayidx106, align 4
  %mul107 = mul nsw i32 %32, %31
  %arrayidx109 = getelementptr inbounds i8, ptr %source, i64 76
  store i32 %mul107, ptr %arrayidx109, align 4
  %arrayidx113 = getelementptr inbounds i8, ptr %source, i64 80
  store i32 %mul107, ptr %arrayidx113, align 8
  %reass.add = shl i32 %mul107, 1
  %add120 = add i32 %reass.add, %mul101
  %size = getelementptr inbounds i8, ptr %source, i64 84
  store i32 %add120, ptr %size, align 4
  %mb_width = getelementptr inbounds i8, ptr %source, i64 64
  %33 = insertelement <2 x i32> poison, i32 %29, i64 0
  %34 = insertelement <2 x i32> %33, i32 %30, i64 1
  %35 = sdiv <2 x i32> %34, <i32 16, i32 16>
  store <2 x i32> %35, ptr %mb_width, align 8
  %36 = load i32, ptr %width80, align 8
  %37 = load i32, ptr %height89, align 4
  %mul130 = mul nsw i32 %37, %36
  %size_cmp131 = getelementptr inbounds i8, ptr %output, i64 72
  store i32 %mul130, ptr %size_cmp131, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %output, i64 20
  %38 = load i32, ptr %arrayidx134, align 4
  %39 = load i32, ptr %arrayidx93, align 4
  %mul137 = mul nsw i32 %39, %38
  %arrayidx139 = getelementptr inbounds i8, ptr %output, i64 76
  store i32 %mul137, ptr %arrayidx139, align 4
  %arrayidx143 = getelementptr inbounds i8, ptr %output, i64 80
  store i32 %mul137, ptr %arrayidx143, align 8
  %reass.add327 = shl i32 %mul137, 1
  %add151 = add i32 %reass.add327, %mul130
  %size152 = getelementptr inbounds i8, ptr %output, i64 84
  store i32 %add151, ptr %size152, align 4
  %mb_width156 = getelementptr inbounds i8, ptr %output, i64 64
  %40 = insertelement <2 x i32> poison, i32 %36, i64 0
  %41 = insertelement <2 x i32> %40, i32 %37, i64 1
  %42 = sdiv <2 x i32> %41, <i32 16, i32 16>
  store <2 x i32> %42, ptr %mb_width156, align 8
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040
  %43 = load i16, ptr %bitdepth_luma, align 8
  %conv = sext i16 %43 to i32
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88
  store i32 %conv, ptr %bit_depth, align 8
  %bit_depth162 = getelementptr inbounds i8, ptr %output, i64 88
  store i32 %conv, ptr %bit_depth162, align 8
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042
  %44 = load i16, ptr %bitdepth_chroma, align 2
  %conv164 = sext i16 %44 to i32
  %arrayidx166 = getelementptr inbounds i8, ptr %source, i64 92
  store i32 %conv164, ptr %arrayidx166, align 4
  %arrayidx168 = getelementptr inbounds i8, ptr %output, i64 92
  store i32 %conv164, ptr %arrayidx168, align 4
  %45 = load i16, ptr %bitdepth_chroma, align 2
  %conv170 = sext i16 %45 to i32
  %arrayidx172 = getelementptr inbounds i8, ptr %source, i64 96
  store i32 %conv170, ptr %arrayidx172, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %output, i64 96
  store i32 %conv170, ptr %arrayidx174, align 8
  %46 = load i32, ptr %bit_depth162, align 8
  %47 = load i32, ptr %arrayidx168, align 4
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %46, i32 %47)
  %cmp179 = icmp sgt i32 %cond.i, 8
  %cond = select i1 %cmp179, i32 16, i32 8
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %output, i64 124
  store i32 %cond, ptr %pic_unit_size_on_disk, align 4
  %shr182 = lshr exact i32 %cond, 3
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %output, i64 128
  store i32 %shr182, ptr %pic_unit_size_shift3, align 8
  %frame_rate = getelementptr inbounds i8, ptr %source, i64 8
  %48 = load double, ptr %frame_rate, align 8
  %frame_rate183 = getelementptr inbounds i8, ptr %output, i64 8
  store double %48, ptr %frame_rate183, align 8
  %color_model = getelementptr inbounds i8, ptr %source, i64 4
  %49 = load i32, ptr %color_model, align 4
  %color_model184 = getelementptr inbounds i8, ptr %output, i64 4
  store i32 %49, ptr %color_model184, align 4
  %50 = load i32, ptr %chroma_format_idc41, align 4
  store i32 %50, ptr %source, align 8
  store i32 %50, ptr %output, align 8
  %auto_crop_bottom = getelementptr inbounds i8, ptr %output, i64 44
  store i32 %crop_bottom.1, ptr %auto_crop_bottom, align 4
  %auto_crop_right = getelementptr inbounds i8, ptr %output, i64 40
  store i32 %crop_right.1, ptr %auto_crop_right, align 8
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112
  %51 = load i32, ptr %mb_cr_size_y, align 8
  %mul187 = mul nsw i32 %51, %crop_bottom.1
  %div188 = sdiv i32 %mul187, 16
  %auto_crop_bottom_cr = getelementptr inbounds i8, ptr %output, i64 52
  store i32 %div188, ptr %auto_crop_bottom_cr, align 4
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108
  %52 = load i32, ptr %mb_cr_size_x, align 4
  %mul189 = mul nsw i32 %52, %crop_right.1
  %div190 = sdiv i32 %mul189, 16
  %auto_crop_right_cr = getelementptr inbounds i8, ptr %output, i64 48
  store i32 %div190, ptr %auto_crop_right_cr, align 8
  %auto_crop_bottom192 = getelementptr inbounds i8, ptr %source, i64 44
  store i32 %crop_bottom.1, ptr %auto_crop_bottom192, align 4
  %53 = load i32, ptr %auto_crop_right, align 8
  %auto_crop_right194 = getelementptr inbounds i8, ptr %source, i64 40
  store i32 %53, ptr %auto_crop_right194, align 8
  %54 = load i32, ptr %auto_crop_bottom_cr, align 4
  %auto_crop_bottom_cr196 = getelementptr inbounds i8, ptr %source, i64 52
  store i32 %54, ptr %auto_crop_bottom_cr196, align 4
  %55 = load i32, ptr %auto_crop_right_cr, align 8
  %auto_crop_right_cr198 = getelementptr inbounds i8, ptr %source, i64 48
  store i32 %55, ptr %auto_crop_right_cr198, align 8
  %56 = load i32, ptr %bit_depth, align 8
  %notmask.i = shl nsw i32 -1, %56
  %sub.i = xor i32 %notmask.i, -1
  %max_value.i = getelementptr inbounds i8, ptr %source, i64 100
  store i32 %sub.i, ptr %max_value.i, align 4
  %mul.i = mul nuw nsw i32 %sub.i, %sub.i
  %max_value_sq.i = getelementptr inbounds i8, ptr %source, i64 112
  store i32 %mul.i, ptr %max_value_sq.i, align 8
  %57 = load i32, ptr %arrayidx166, align 4
  %notmask47.i = shl nsw i32 -1, %57
  %sub10.i = xor i32 %notmask47.i, -1
  %arrayidx12.i = getelementptr inbounds i8, ptr %source, i64 104
  store i32 %sub10.i, ptr %arrayidx12.i, align 4
  %mul17.i = mul nuw nsw i32 %sub10.i, %sub10.i
  %arrayidx19.i = getelementptr inbounds i8, ptr %source, i64 116
  store i32 %mul17.i, ptr %arrayidx19.i, align 4
  %58 = load i32, ptr %arrayidx172, align 8
  %notmask48.i = shl nsw i32 -1, %58
  %sub23.i = xor i32 %notmask48.i, -1
  %arrayidx25.i = getelementptr inbounds i8, ptr %source, i64 108
  store i32 %sub23.i, ptr %arrayidx25.i, align 4
  %mul30.i = mul nuw nsw i32 %sub23.i, %sub23.i
  %arrayidx32.i = getelementptr inbounds i8, ptr %source, i64 120
  store i32 %mul30.i, ptr %arrayidx32.i, align 8
  %59 = load i32, ptr %bit_depth162, align 8
  %notmask.i329 = shl nsw i32 -1, %59
  %sub.i330 = xor i32 %notmask.i329, -1
  %max_value.i331 = getelementptr inbounds i8, ptr %output, i64 100
  store i32 %sub.i330, ptr %max_value.i331, align 4
  %mul.i332 = mul nuw nsw i32 %sub.i330, %sub.i330
  %max_value_sq.i333 = getelementptr inbounds i8, ptr %output, i64 112
  store i32 %mul.i332, ptr %max_value_sq.i333, align 8
  %60 = load i32, ptr %arrayidx168, align 4
  %notmask47.i335 = shl nsw i32 -1, %60
  %sub10.i336 = xor i32 %notmask47.i335, -1
  %arrayidx12.i337 = getelementptr inbounds i8, ptr %output, i64 104
  store i32 %sub10.i336, ptr %arrayidx12.i337, align 4
  %mul17.i338 = mul nuw nsw i32 %sub10.i336, %sub10.i336
  %arrayidx19.i339 = getelementptr inbounds i8, ptr %output, i64 116
  store i32 %mul17.i338, ptr %arrayidx19.i339, align 4
  %61 = load i32, ptr %arrayidx174, align 8
  %notmask48.i341 = shl nsw i32 -1, %61
  %sub23.i342 = xor i32 %notmask48.i341, -1
  %arrayidx25.i343 = getelementptr inbounds i8, ptr %output, i64 108
  store i32 %sub23.i342, ptr %arrayidx25.i343, align 4
  %mul30.i344 = mul nuw nsw i32 %sub23.i342, %sub23.i342
  %arrayidx32.i345 = getelementptr inbounds i8, ptr %output, i64 120
  store i32 %mul30.i344, ptr %arrayidx32.i345, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @activate_sps(ptr noundef %p_Vid, ptr noundef %sps) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %1 = load ptr, ptr %active_sps, align 8
  %cmp.not = icmp eq ptr %1, %sps
  br i1 %cmp.not, label %if.end157, label %if.then

if.then:                                          ; preds = %entry
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %2 = load ptr, ptr %dec_picture, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store ptr %sps, ptr %active_sps, align 8
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042
  store i16 0, ptr %bitdepth_chroma, align 2
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  store i32 0, ptr %width_cr, align 4
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  store i32 0, ptr %height_cr, align 8
  %level_idc = getelementptr inbounds i8, ptr %sps, i64 28
  %3 = load i32, ptr %level_idc, align 4
  %cmp6 = icmp ult i32 %3, 11
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %max_vmv_r = getelementptr inbounds i8, ptr %p_Vid, i64 849216
  store i32 256, ptr %max_vmv_r, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end
  %cmp10 = icmp ult i32 %3, 21
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %max_vmv_r12 = getelementptr inbounds i8, ptr %p_Vid, i64 849216
  store i32 512, ptr %max_vmv_r12, align 8
  br label %if.end23

if.else13:                                        ; preds = %if.else
  %cmp16 = icmp ult i32 %3, 31
  %max_vmv_r18 = getelementptr inbounds i8, ptr %p_Vid, i64 849216
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else13
  store i32 1024, ptr %max_vmv_r18, align 8
  br label %if.end23

if.else19:                                        ; preds = %if.else13
  store i32 2048, ptr %max_vmv_r18, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.else19, %if.then17, %if.then7
  %bit_depth_luma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2060
  %4 = load i32, ptr %bit_depth_luma_minus8, align 4
  %5 = trunc i32 %4 to i16
  %conv = add i16 %5, 8
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040
  store i16 %conv, ptr %bitdepth_luma, align 8
  %6 = load i32, ptr %bit_depth_luma_minus8, align 4
  %shl = shl nuw i32 1, %6
  %bitdepth_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849044
  store i32 %shl, ptr %bitdepth_scale, align 4
  %chroma_format_idc = getelementptr inbounds i8, ptr %sps, i64 36
  %7 = load i32, ptr %chroma_format_idc, align 4
  %cmp25.not = icmp eq i32 %7, 0
  br i1 %cmp25.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end23
  %bit_depth_chroma_minus8 = getelementptr inbounds i8, ptr %sps, i64 2064
  %8 = load i32, ptr %bit_depth_chroma_minus8, align 4
  %9 = trunc i32 %8 to i16
  %conv29 = add i16 %9, 8
  store i16 %conv29, ptr %bitdepth_chroma, align 2
  %10 = load i32, ptr %bit_depth_chroma_minus8, align 4
  %shl32 = shl nuw i32 1, %10
  %arrayidx34 = getelementptr inbounds i8, ptr %p_Vid, i64 849048
  store i32 %shl32, ptr %arrayidx34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end23
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps, i64 2068
  %11 = load i32, ptr %log2_max_frame_num_minus4, align 4
  %add36 = add i32 %11, 4
  %shl37 = shl nuw i32 1, %add36
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  store i32 %shl37, ptr %MaxFrameNum, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %sps, i64 3128
  %12 = load i32, ptr %pic_width_in_mbs_minus1, align 4
  %add38 = add i32 %12, 1
  %PicWidthInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  store i32 %add38, ptr %PicWidthInMbs, align 4
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %sps, i64 3132
  %13 = load i32, ptr %pic_height_in_map_units_minus1, align 4
  %add39 = add i32 %13, 1
  %PicHeightInMapUnits = getelementptr inbounds i8, ptr %p_Vid, i64 849000
  store i32 %add39, ptr %PicHeightInMapUnits, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %sps, i64 3136
  %14 = load i32, ptr %frame_mbs_only_flag, align 4
  %sub = sub nsw i32 2, %14
  %mul = mul i32 %sub, %add39
  %FrameHeightInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  store i32 %mul, ptr %FrameHeightInMbs, align 4
  %mul43 = mul i32 %mul, %add38
  %FrameSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  store i32 %mul43, ptr %FrameSizeInMbs, align 8
  %15 = load i32, ptr %chroma_format_idc, align 4
  %yuv_format = getelementptr inbounds i8, ptr %p_Vid, i64 849088
  store i32 %15, ptr %yuv_format, align 8
  %mul46 = shl i32 %add38, 4
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  store i32 %mul46, ptr %width, align 4
  %mul48 = shl i32 %mul, 4
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  store i32 %mul48, ptr %height, align 8
  %16 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %16, label %if.end80 [
    i32 1, label %if.then52
    i32 2, label %if.then62
    i32 3, label %if.then72
  ]

if.then52:                                        ; preds = %if.end35
  %shr = ashr exact i32 %mul46, 1
  store i32 %shr, ptr %width_cr, align 4
  %shr56 = ashr exact i32 %mul48, 1
  store i32 %shr56, ptr %height_cr, align 8
  br label %if.end80

if.then62:                                        ; preds = %if.end35
  %shr64 = ashr exact i32 %mul46, 1
  store i32 %shr64, ptr %width_cr, align 4
  store i32 %mul48, ptr %height_cr, align 8
  %iChromaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  store i32 16, ptr %iChromaPadY, align 4
  br label %if.end80

if.then72:                                        ; preds = %if.end35
  store i32 %mul46, ptr %width_cr, align 4
  store i32 %mul48, ptr %height_cr, align 8
  %iLumaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856840
  %iChromaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %17 = load <2 x i32>, ptr %iLumaPadX, align 8
  store <2 x i32> %17, ptr %iChromaPadX, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end35, %if.then62, %if.then72, %if.then52
  %last_pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 848672
  %18 = load i32, ptr %last_pic_width_in_mbs_minus1, align 8
  %19 = load i32, ptr %pic_width_in_mbs_minus1, align 4
  %cmp83.not = icmp eq i32 %18, %19
  br i1 %cmp83.not, label %lor.lhs.false, label %if.then104

lor.lhs.false:                                    ; preds = %if.end80
  %last_pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 848676
  %20 = load i32, ptr %last_pic_height_in_map_units_minus1, align 4
  %21 = load i32, ptr %pic_height_in_map_units_minus1, align 4
  %cmp87.not = icmp eq i32 %20, %21
  br i1 %cmp87.not, label %lor.lhs.false89, label %if.then104

lor.lhs.false89:                                  ; preds = %lor.lhs.false
  %last_max_dec_frame_buffering = getelementptr inbounds i8, ptr %p_Vid, i64 848680
  %22 = load i32, ptr %last_max_dec_frame_buffering, align 8
  %call = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid) #16
  %cmp90.not = icmp eq i32 %22, %call
  br i1 %cmp90.not, label %lor.lhs.false92, label %if.then104

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %last_profile_idc = getelementptr inbounds i8, ptr %p_Vid, i64 848684
  %23 = load i32, ptr %last_profile_idc, align 4
  %24 = load ptr, ptr %active_sps, align 8
  %profile_idc = getelementptr inbounds i8, ptr %24, i64 4
  %25 = load i32, ptr %profile_idc, align 4
  %cmp94.not = icmp ne i32 %23, %25
  %cmp98 = icmp ult i32 %25, 118
  %or.cond = and i1 %cmp94.not, %cmp98
  %cmp102 = icmp slt i32 %23, 118
  %or.cond274 = and i1 %cmp102, %or.cond
  br i1 %or.cond274, label %if.then104, label %if.else121

if.then104:                                       ; preds = %lor.lhs.false92, %lor.lhs.false89, %lor.lhs.false, %if.end80
  tail call void @init_frext(ptr noundef nonnull %p_Vid) #16
  %call105 = tail call i32 @init_global_buffers(ptr noundef nonnull %p_Vid) #16
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849024
  %26 = load i32, ptr %no_output_of_prior_pics_flag, align 8
  %tobool106.not = icmp eq i32 %26, 0
  br i1 %tobool106.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.then104
  %p_Dpb = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %27 = load ptr, ptr %p_Dpb, align 8
  tail call void @flush_dpb(ptr noundef %27, i32 noundef -1) #16
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then104
  %p_Dpb109 = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %28 = load ptr, ptr %p_Dpb109, align 8
  tail call void @init_dpb(ptr noundef nonnull %p_Vid, ptr noundef %28) #16
  %29 = load ptr, ptr %active_sps, align 8
  %pic_width_in_mbs_minus1111 = getelementptr inbounds i8, ptr %29, i64 3128
  %30 = load i32, ptr %pic_width_in_mbs_minus1111, align 4
  store i32 %30, ptr %last_pic_width_in_mbs_minus1, align 8
  %pic_height_in_map_units_minus1114 = getelementptr inbounds i8, ptr %29, i64 3132
  %31 = load i32, ptr %pic_height_in_map_units_minus1114, align 4
  %last_pic_height_in_map_units_minus1115 = getelementptr inbounds i8, ptr %p_Vid, i64 848676
  store i32 %31, ptr %last_pic_height_in_map_units_minus1115, align 4
  %call116 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid) #16
  %last_max_dec_frame_buffering117 = getelementptr inbounds i8, ptr %p_Vid, i64 848680
  store i32 %call116, ptr %last_max_dec_frame_buffering117, align 8
  %32 = load ptr, ptr %active_sps, align 8
  %profile_idc119 = getelementptr inbounds i8, ptr %32, i64 4
  %33 = load i32, ptr %profile_idc119, align 4
  %last_profile_idc120 = getelementptr inbounds i8, ptr %p_Vid, i64 848684
  store i32 %33, ptr %last_profile_idc120, align 4
  br label %if.end145

if.else121:                                       ; preds = %lor.lhs.false92
  %cmp125.not = icmp eq i32 %23, %25
  br i1 %cmp125.not, label %if.end145, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.else121
  %cmp129 = icmp sgt i32 %23, 117
  %cmp134 = icmp ugt i32 %25, 117
  %or.cond275 = or i1 %cmp129, %cmp134
  br i1 %or.cond275, label %land.lhs.true136, label %if.end145

land.lhs.true136:                                 ; preds = %land.lhs.true127
  %p_Dpb137 = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %34 = load ptr, ptr %p_Dpb137, align 8
  %init_done = getelementptr inbounds i8, ptr %34, i64 4160
  %35 = load i32, ptr %init_done, align 8
  %tobool138.not = icmp eq i32 %35, 0
  br i1 %tobool138.not, label %if.end145, label %if.then139

if.then139:                                       ; preds = %land.lhs.true136
  tail call void @re_init_dpb(ptr noundef nonnull %p_Vid, ptr noundef nonnull %34) #16
  %36 = load ptr, ptr %active_sps, align 8
  %profile_idc142 = getelementptr inbounds i8, ptr %36, i64 4
  %37 = load i32, ptr %profile_idc142, align 4
  store i32 %37, ptr %last_profile_idc, align 4
  br label %if.end145

if.end145:                                        ; preds = %land.lhs.true127, %if.else121, %land.lhs.true136, %if.then139, %if.end108
  %38 = phi ptr [ %24, %land.lhs.true127 ], [ %24, %if.else121 ], [ %24, %land.lhs.true136 ], [ %36, %if.then139 ], [ %32, %if.end108 ]
  %num_ref_frames = getelementptr inbounds i8, ptr %38, i64 3120
  %39 = load i32, ptr %num_ref_frames, align 4
  %p_Dpb147 = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %40 = load ptr, ptr %p_Dpb147, align 8
  %num_ref_frames148 = getelementptr inbounds i8, ptr %40, i64 4164
  store i32 %39, ptr %num_ref_frames148, align 4
  %41 = load i32, ptr %width, align 4
  %42 = load i32, ptr %height, align 8
  tail call void @ercInit(ptr noundef nonnull %p_Vid, i32 noundef %41, i32 noundef %42, i32 noundef 1) #16
  %43 = load ptr, ptr %dec_picture, align 8
  %tobool152.not = icmp eq ptr %43, null
  br i1 %tobool152.not, label %if.end157, label %if.then153

if.then153:                                       ; preds = %if.end145
  %erc_errorVar = getelementptr inbounds i8, ptr %p_Vid, i64 856504
  %44 = load ptr, ptr %erc_errorVar, align 8
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %45 = load i32, ptr %PicSizeInMbs, align 4
  %size_x = getelementptr inbounds i8, ptr %43, i64 64
  %46 = load i32, ptr %size_x, align 8
  tail call void @ercReset(ptr noundef %44, i32 noundef %45, i32 noundef %45, i32 noundef %46) #16
  %erc_mvperMB = getelementptr inbounds i8, ptr %p_Vid, i64 856512
  store i32 0, ptr %erc_mvperMB, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.end145, %if.then153, %entry
  %source = getelementptr inbounds i8, ptr %0, i64 792
  %output = getelementptr inbounds i8, ptr %0, i64 928
  tail call void @reset_format_info(ptr noundef %sps, ptr noundef nonnull %p_Vid, ptr noundef nonnull %source, ptr noundef nonnull %output)
  ret void
}

declare i32 @GetMaxDecFrameBuffering(ptr noundef) local_unnamed_addr #1

declare void @init_frext(ptr noundef) local_unnamed_addr #1

declare i32 @init_global_buffers(ptr noundef) local_unnamed_addr #1

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @re_init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ercInit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @activate_pps(ptr noundef %p_Vid, ptr noundef %pps) local_unnamed_addr #0 {
entry:
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8
  %0 = load ptr, ptr %active_pps, align 8
  %cmp.not = icmp eq ptr %0, %pps
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %dec_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %1 = load ptr, ptr %dec_picture, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture) #16
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store ptr %pps, ptr %active_pps, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UseParameterSet(ptr nocapture noundef %currSlice) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228
  %1 = load i32, ptr %pic_parameter_set_id, align 4
  %PicParSet = getelementptr inbounds i8, ptr %0, i64 132120
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], ptr %PicParSet, i64 0, i64 %idxprom
  %SeqParSet = getelementptr inbounds i8, ptr %0, i64 24
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %2 = load i32, ptr %seq_parameter_set_id, align 8
  %idxprom2 = zext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom2
  %3 = load i32, ptr %arrayidx, align 8
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %4 = load i32, ptr %svc_extension_flag, align 8
  %cmp4 = icmp eq i32 %4, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %arrayidx3, align 4
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %if.end25, label %if.then8

if.then8:                                         ; preds = %if.then5
  %6 = load i32, ptr %seq_parameter_set_id, align 8
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef %1, i32 noundef %6)
  br label %if.end25

if.else:                                          ; preds = %if.end
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %0, i64 699424
  %7 = load i32, ptr %seq_parameter_set_id, align 8
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %SubsetSeqParSet, i64 %idx.ext
  %active_subset_sps = getelementptr inbounds i8, ptr %0, i64 699416
  store ptr %add.ptr, ptr %active_subset_sps, align 8
  %Valid19 = getelementptr inbounds [32 x %struct.subset_seq_parameter_set_rbsp_t], ptr %SubsetSeqParSet, i64 0, i64 %idx.ext, i32 20
  %8 = load i32, ptr %Valid19, align 4
  %cmp20.not = icmp eq i32 %8, 1
  br i1 %cmp20.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.else
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, i32 noundef %1, i32 noundef %7)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21, %if.then5, %if.then8
  %sps.0 = phi ptr [ %arrayidx3, %if.then8 ], [ %arrayidx3, %if.then5 ], [ %add.ptr, %if.then21 ], [ %add.ptr, %if.else ]
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %sps.0, i64 2072
  %9 = load i32, ptr %pic_order_cnt_type, align 4
  %cmp28 = icmp ugt i32 %9, 2
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  %call31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %9)
  tail call void @error(ptr noundef nonnull @.str.117, i32 noundef -1000) #16
  %.pr = load i32, ptr %pic_order_cnt_type, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end25, %if.then29
  %10 = phi i32 [ %9, %if.end25 ], [ %.pr, %if.then29 ]
  %cmp34 = icmp eq i32 %10, 1
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end32
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %sps.0, i64 2092
  %11 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %cmp36 = icmp ugt i32 %11, 255
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then35
  tail call void @error(ptr noundef nonnull @.str.118, i32 noundef -1011) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then37, %if.end32
  tail call void @activate_sps(ptr noundef nonnull %0, ptr noundef nonnull %sps.0)
  %active_pps.i = getelementptr inbounds i8, ptr %0, i64 8
  %12 = load ptr, ptr %active_pps.i, align 8
  %cmp.not.i = icmp eq ptr %12, %arrayidx
  br i1 %cmp.not.i, label %activate_pps.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end39
  %dec_picture.i = getelementptr inbounds i8, ptr %0, i64 856456
  %13 = load ptr, ptr %dec_picture.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  tail call void @exit_picture(ptr noundef nonnull %0, ptr noundef nonnull %dec_picture.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i
  store ptr %arrayidx, ptr %active_pps.i, align 8
  br label %activate_pps.exit

activate_pps.exit:                                ; preds = %if.end39, %if.end.i
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %arrayidx, i64 12
  %14 = load i32, ptr %entropy_coding_mode_flag, align 4
  %cmp40 = icmp eq i32 %14, 0
  %nal_startcode_follows = getelementptr inbounds i8, ptr %currSlice, i64 13432
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %uvlc_startcode_follows.cabac_startcode_follows = select i1 %cmp40, ptr @uvlc_startcode_follows, ptr @cabac_startcode_follows
  %readSyntaxElement_UVLC.readSyntaxElement_CABAC = select i1 %cmp40, ptr @readSyntaxElement_UVLC, ptr @readSyntaxElement_CABAC
  store ptr %uvlc_startcode_follows.cabac_startcode_follows, ptr %nal_startcode_follows, align 8
  %15 = load ptr, ptr %partArr, align 8
  %readSyntaxElement53 = getelementptr inbounds i8, ptr %15, i64 40
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53, align 8
  %16 = load ptr, ptr %partArr, align 8
  %readSyntaxElement53.1 = getelementptr inbounds i8, ptr %16, i64 88
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53.1, align 8
  %17 = load ptr, ptr %partArr, align 8
  %readSyntaxElement53.2 = getelementptr inbounds i8, ptr %17, i64 136
  store ptr %readSyntaxElement_UVLC.readSyntaxElement_CABAC, ptr %readSyntaxElement53.2, align 8
  ret void
}

declare i32 @uvlc_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_UVLC(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cabac_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_CABAC(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @seq_parameter_set_mvc_extension(ptr nocapture noundef %subset_sps, ptr noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.119, ptr noundef %s) #16
  %num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4132
  store i32 %call, ptr %num_views_minus1, align 4
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %for.end228

if.then:                                          ; preds = %entry
  %add = add nuw nsw i32 %call, 1
  %conv = zext nneg i32 %add to i64
  %call2 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17
  %view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4136
  store ptr %call2, ptr %view_id, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str.120) #16
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %call7 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17
  %num_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4144
  store ptr %call7, ptr %num_anchor_refs_l0, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.121) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %call13 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17
  %num_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4160
  store ptr %call13, ptr %num_anchor_refs_l1, align 8
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.122) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11
  %call19 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17
  %anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  store ptr %call19, ptr %anchor_ref_l0, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  tail call void @no_mem_exit(ptr noundef nonnull @.str.123) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17
  %call25 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17
  %anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  store ptr %call25, ptr %anchor_ref_l1, align 8
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  tail call void @no_mem_exit(ptr noundef nonnull @.str.124) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end23
  %call31 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17
  %num_non_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4176
  store ptr %call31, ptr %num_non_anchor_refs_l0, align 8
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  tail call void @no_mem_exit(ptr noundef nonnull @.str.125) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29
  %call37 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #17
  %num_non_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4192
  store ptr %call37, ptr %num_non_anchor_refs_l1, align 8
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.126) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35
  %call43 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17
  %non_anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  store ptr %call43, ptr %non_anchor_ref_l0, align 8
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.127) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end41
  %call49 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #17
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  store ptr %call49, ptr %non_anchor_ref_l1, align 8
  %cmp50 = icmp eq ptr %call49, null
  br i1 %cmp50, label %if.then52, label %for.body.lr.ph

if.then52:                                        ; preds = %if.end47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.128) #16
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end47, %if.then52
  %view_id58 = getelementptr inbounds i8, ptr %subset_sps, i64 4136
  %0 = add nuw i32 %call, 1
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.cond59.preheader:                             ; preds = %for.body
  %cmp60.not609 = icmp eq i32 %call, 0
  br i1 %cmp60.not609, label %for.end228, label %for.body62.lr.ph

for.body62.lr.ph:                                 ; preds = %for.cond59.preheader
  %num_anchor_refs_l064 = getelementptr inbounds i8, ptr %subset_sps, i64 4144
  %anchor_ref_l078 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  %num_anchor_refs_l1103 = getelementptr inbounds i8, ptr %subset_sps, i64 4160
  %anchor_ref_l1117 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  %1 = add nuw i32 %call, 1
  %wide.trip.count638 = zext i32 %1 to i64
  br label %for.body62

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call57 = tail call i32 @ue_v(ptr noundef nonnull @.str.129, ptr noundef %s) #16
  %2 = load ptr, ptr %view_id58, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %indvars.iv
  store i32 %call57, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond59.preheader, label %for.body

for.cond144.preheader:                            ; preds = %for.inc141
  br i1 %cmp60.not609, label %for.end228, label %for.body147.lr.ph

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %num_non_anchor_refs_l0149 = getelementptr inbounds i8, ptr %subset_sps, i64 4176
  %non_anchor_ref_l0163 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  %num_non_anchor_refs_l1188 = getelementptr inbounds i8, ptr %subset_sps, i64 4192
  %non_anchor_ref_l1202 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  %3 = add nuw i32 %call, 1
  %wide.trip.count649 = zext i32 %3 to i64
  br label %for.body147

for.body62:                                       ; preds = %for.body62.lr.ph, %for.inc141
  %indvars.iv635 = phi i64 [ 1, %for.body62.lr.ph ], [ %indvars.iv.next636, %for.inc141 ]
  %call63 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %s) #16
  %4 = load ptr, ptr %num_anchor_refs_l064, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv635
  store i32 %call63, ptr %arrayidx66, align 4
  %5 = load ptr, ptr %num_anchor_refs_l064, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv635
  %6 = load i32, ptr %arrayidx69, align 4
  %cmp70 = icmp sgt i32 %6, 0
  br i1 %cmp70, label %if.then72, label %if.end101

if.then72:                                        ; preds = %for.body62
  %conv76 = zext nneg i32 %6 to i64
  %call77 = tail call noalias ptr @calloc(i64 noundef %conv76, i64 noundef 4) #17
  %7 = load ptr, ptr %anchor_ref_l078, align 8
  %arrayidx80 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv635
  store ptr %call77, ptr %arrayidx80, align 8
  %cmp81 = icmp eq ptr %call77, null
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then72
  tail call void @no_mem_exit(ptr noundef nonnull @.str.131) #16
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.then72
  %8 = load ptr, ptr %num_anchor_refs_l064, align 8
  %arrayidx88603 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv635
  %9 = load i32, ptr %arrayidx88603, align 4
  %cmp89604 = icmp sgt i32 %9, 0
  br i1 %cmp89604, label %for.body91, label %if.end101

for.body91:                                       ; preds = %if.end84, %for.body91
  %indvars.iv629 = phi i64 [ %indvars.iv.next630, %for.body91 ], [ 0, %if.end84 ]
  %call92 = tail call i32 @ue_v(ptr noundef nonnull @.str.132, ptr noundef %s) #16
  %10 = load ptr, ptr %anchor_ref_l078, align 8
  %arrayidx95 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv635
  %11 = load ptr, ptr %arrayidx95, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %11, i64 %indvars.iv629
  store i32 %call92, ptr %arrayidx97, align 4
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 1
  %12 = load ptr, ptr %num_anchor_refs_l064, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv635
  %13 = load i32, ptr %arrayidx88, align 4
  %14 = sext i32 %13 to i64
  %cmp89 = icmp slt i64 %indvars.iv.next630, %14
  br i1 %cmp89, label %for.body91, label %if.end101

if.end101:                                        ; preds = %for.body91, %if.end84, %for.body62
  %call102 = tail call i32 @ue_v(ptr noundef nonnull @.str.133, ptr noundef %s) #16
  %15 = load ptr, ptr %num_anchor_refs_l1103, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %15, i64 %indvars.iv635
  store i32 %call102, ptr %arrayidx105, align 4
  %16 = load ptr, ptr %num_anchor_refs_l1103, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %16, i64 %indvars.iv635
  %17 = load i32, ptr %arrayidx108, align 4
  %cmp109 = icmp sgt i32 %17, 0
  br i1 %cmp109, label %if.then111, label %for.inc141

if.then111:                                       ; preds = %if.end101
  %conv115 = zext nneg i32 %17 to i64
  %call116 = tail call noalias ptr @calloc(i64 noundef %conv115, i64 noundef 4) #17
  %18 = load ptr, ptr %anchor_ref_l1117, align 8
  %arrayidx119 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv635
  store ptr %call116, ptr %arrayidx119, align 8
  %cmp120 = icmp eq ptr %call116, null
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.then111
  tail call void @no_mem_exit(ptr noundef nonnull @.str.134) #16
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.then111
  %19 = load ptr, ptr %num_anchor_refs_l1103, align 8
  %arrayidx127606 = getelementptr inbounds i32, ptr %19, i64 %indvars.iv635
  %20 = load i32, ptr %arrayidx127606, align 4
  %cmp128607 = icmp sgt i32 %20, 0
  br i1 %cmp128607, label %for.body130, label %for.inc141

for.body130:                                      ; preds = %if.end123, %for.body130
  %indvars.iv632 = phi i64 [ %indvars.iv.next633, %for.body130 ], [ 0, %if.end123 ]
  %call131 = tail call i32 @ue_v(ptr noundef nonnull @.str.135, ptr noundef %s) #16
  %21 = load ptr, ptr %anchor_ref_l1117, align 8
  %arrayidx134 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv635
  %22 = load ptr, ptr %arrayidx134, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %22, i64 %indvars.iv632
  store i32 %call131, ptr %arrayidx136, align 4
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 1
  %23 = load ptr, ptr %num_anchor_refs_l1103, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %23, i64 %indvars.iv635
  %24 = load i32, ptr %arrayidx127, align 4
  %25 = sext i32 %24 to i64
  %cmp128 = icmp slt i64 %indvars.iv.next633, %25
  br i1 %cmp128, label %for.body130, label %for.inc141

for.inc141:                                       ; preds = %for.body130, %if.end123, %if.end101
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count638
  br i1 %exitcond639.not, label %for.cond144.preheader, label %for.body62

for.body147:                                      ; preds = %for.body147.lr.ph, %for.inc226
  %indvars.iv646 = phi i64 [ 1, %for.body147.lr.ph ], [ %indvars.iv.next647, %for.inc226 ]
  %call148 = tail call i32 @ue_v(ptr noundef nonnull @.str.136, ptr noundef %s) #16
  %26 = load ptr, ptr %num_non_anchor_refs_l0149, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %26, i64 %indvars.iv646
  store i32 %call148, ptr %arrayidx151, align 4
  %27 = load ptr, ptr %num_non_anchor_refs_l0149, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %27, i64 %indvars.iv646
  %28 = load i32, ptr %arrayidx154, align 4
  %cmp155 = icmp sgt i32 %28, 0
  br i1 %cmp155, label %if.then157, label %if.end186

if.then157:                                       ; preds = %for.body147
  %conv161 = zext nneg i32 %28 to i64
  %call162 = tail call noalias ptr @calloc(i64 noundef %conv161, i64 noundef 4) #17
  %29 = load ptr, ptr %non_anchor_ref_l0163, align 8
  %arrayidx165 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv646
  store ptr %call162, ptr %arrayidx165, align 8
  %cmp166 = icmp eq ptr %call162, null
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then157
  tail call void @no_mem_exit(ptr noundef nonnull @.str.137) #16
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.then157
  %30 = load ptr, ptr %num_non_anchor_refs_l0149, align 8
  %arrayidx173611 = getelementptr inbounds i32, ptr %30, i64 %indvars.iv646
  %31 = load i32, ptr %arrayidx173611, align 4
  %cmp174612 = icmp sgt i32 %31, 0
  br i1 %cmp174612, label %for.body176, label %if.end186

for.body176:                                      ; preds = %if.end169, %for.body176
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %for.body176 ], [ 0, %if.end169 ]
  %call177 = tail call i32 @ue_v(ptr noundef nonnull @.str.138, ptr noundef %s) #16
  %32 = load ptr, ptr %non_anchor_ref_l0163, align 8
  %arrayidx180 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv646
  %33 = load ptr, ptr %arrayidx180, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %33, i64 %indvars.iv640
  store i32 %call177, ptr %arrayidx182, align 4
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1
  %34 = load ptr, ptr %num_non_anchor_refs_l0149, align 8
  %arrayidx173 = getelementptr inbounds i32, ptr %34, i64 %indvars.iv646
  %35 = load i32, ptr %arrayidx173, align 4
  %36 = sext i32 %35 to i64
  %cmp174 = icmp slt i64 %indvars.iv.next641, %36
  br i1 %cmp174, label %for.body176, label %if.end186

if.end186:                                        ; preds = %for.body176, %if.end169, %for.body147
  %call187 = tail call i32 @ue_v(ptr noundef nonnull @.str.139, ptr noundef %s) #16
  %37 = load ptr, ptr %num_non_anchor_refs_l1188, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %37, i64 %indvars.iv646
  store i32 %call187, ptr %arrayidx190, align 4
  %38 = load ptr, ptr %num_non_anchor_refs_l1188, align 8
  %arrayidx193 = getelementptr inbounds i32, ptr %38, i64 %indvars.iv646
  %39 = load i32, ptr %arrayidx193, align 4
  %cmp194 = icmp sgt i32 %39, 0
  br i1 %cmp194, label %if.then196, label %for.inc226

if.then196:                                       ; preds = %if.end186
  %conv200 = zext nneg i32 %39 to i64
  %call201 = tail call noalias ptr @calloc(i64 noundef %conv200, i64 noundef 4) #17
  %40 = load ptr, ptr %non_anchor_ref_l1202, align 8
  %arrayidx204 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv646
  store ptr %call201, ptr %arrayidx204, align 8
  %cmp205 = icmp eq ptr %call201, null
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.then196
  tail call void @no_mem_exit(ptr noundef nonnull @.str.140) #16
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.then196
  %41 = load ptr, ptr %num_non_anchor_refs_l1188, align 8
  %arrayidx212614 = getelementptr inbounds i32, ptr %41, i64 %indvars.iv646
  %42 = load i32, ptr %arrayidx212614, align 4
  %cmp213615 = icmp sgt i32 %42, 0
  br i1 %cmp213615, label %for.body215, label %for.inc226

for.body215:                                      ; preds = %if.end208, %for.body215
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %for.body215 ], [ 0, %if.end208 ]
  %call216 = tail call i32 @ue_v(ptr noundef nonnull @.str.141, ptr noundef %s) #16
  %43 = load ptr, ptr %non_anchor_ref_l1202, align 8
  %arrayidx219 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv646
  %44 = load ptr, ptr %arrayidx219, align 8
  %arrayidx221 = getelementptr inbounds i32, ptr %44, i64 %indvars.iv643
  store i32 %call216, ptr %arrayidx221, align 4
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1
  %45 = load ptr, ptr %num_non_anchor_refs_l1188, align 8
  %arrayidx212 = getelementptr inbounds i32, ptr %45, i64 %indvars.iv646
  %46 = load i32, ptr %arrayidx212, align 4
  %47 = sext i32 %46 to i64
  %cmp213 = icmp slt i64 %indvars.iv.next644, %47
  br i1 %cmp213, label %for.body215, label %for.inc226

for.inc226:                                       ; preds = %for.body215, %if.end208, %if.end186
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count649
  br i1 %exitcond650.not, label %for.end228, label %for.body147

for.end228:                                       ; preds = %for.inc226, %entry, %for.cond59.preheader, %for.cond144.preheader
  %call229 = tail call i32 @ue_v(ptr noundef nonnull @.str.142, ptr noundef %s) #16
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4208
  store i32 %call229, ptr %num_level_values_signalled_minus1, align 8
  %cmp231 = icmp sgt i32 %call229, -1
  br i1 %cmp231, label %if.then233, label %for.end421

if.then233:                                       ; preds = %for.end228
  %add235 = add nuw nsw i32 %call229, 1
  %conv236 = zext nneg i32 %add235 to i64
  %call237 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 4) #17
  %level_idc = getelementptr inbounds i8, ptr %subset_sps, i64 4216
  store ptr %call237, ptr %level_idc, align 8
  %cmp238 = icmp eq ptr %call237, null
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then233
  tail call void @no_mem_exit(ptr noundef nonnull @.str.143) #16
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.then233
  %call243 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 4) #17
  %num_applicable_ops_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  store ptr %call243, ptr %num_applicable_ops_minus1, align 8
  %cmp244 = icmp eq ptr %call243, null
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end241
  tail call void @no_mem_exit(ptr noundef nonnull @.str.144) #16
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end241
  %call249 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17
  %applicable_op_temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  store ptr %call249, ptr %applicable_op_temporal_id, align 8
  %cmp250 = icmp eq ptr %call249, null
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.end247
  tail call void @no_mem_exit(ptr noundef nonnull @.str.145) #16
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %if.end247
  %call255 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17
  %applicable_op_num_target_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  store ptr %call255, ptr %applicable_op_num_target_views_minus1, align 8
  %cmp256 = icmp eq ptr %call255, null
  br i1 %cmp256, label %if.then258, label %if.end259

if.then258:                                       ; preds = %if.end253
  tail call void @no_mem_exit(ptr noundef nonnull @.str.146) #16
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.end253
  %call261 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17
  %applicable_op_target_view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  store ptr %call261, ptr %applicable_op_target_view_id, align 8
  %cmp262 = icmp eq ptr %call261, null
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.end259
  tail call void @no_mem_exit(ptr noundef nonnull @.str.147) #16
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %if.end259
  %call267 = tail call noalias ptr @calloc(i64 noundef %conv236, i64 noundef 8) #17
  %applicable_op_num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  store ptr %call267, ptr %applicable_op_num_views_minus1, align 8
  %cmp268 = icmp eq ptr %call267, null
  br i1 %cmp268, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.end265
  tail call void @no_mem_exit(ptr noundef nonnull @.str.148) #16
  br label %if.end272

if.end272:                                        ; preds = %if.end265, %if.then270
  %.pr = load i32, ptr %num_level_values_signalled_minus1, align 8
  %cmp275.not626 = icmp slt i32 %.pr, 0
  br i1 %cmp275.not626, label %for.end421, label %for.body277.lr.ph

for.body277.lr.ph:                                ; preds = %if.end272
  %level_idc279 = getelementptr inbounds i8, ptr %subset_sps, i64 4216
  %num_applicable_ops_minus1283 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  %applicable_op_temporal_id298 = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  %applicable_op_num_target_views_minus1311 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  %applicable_op_target_view_id324 = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  %applicable_op_num_views_minus1337 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  br label %for.body277

for.body277:                                      ; preds = %for.body277.lr.ph, %for.inc419
  %indvars.iv657 = phi i64 [ 0, %for.body277.lr.ph ], [ %indvars.iv.next658, %for.inc419 ]
  %call278 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.149, ptr noundef %s) #16
  %48 = load ptr, ptr %level_idc279, align 8
  %arrayidx281 = getelementptr inbounds i32, ptr %48, i64 %indvars.iv657
  store i32 %call278, ptr %arrayidx281, align 4
  %call282 = tail call i32 @ue_v(ptr noundef nonnull @.str.150, ptr noundef %s) #16
  %49 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx285 = getelementptr inbounds i32, ptr %49, i64 %indvars.iv657
  store i32 %call282, ptr %arrayidx285, align 4
  %50 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx288 = getelementptr inbounds i32, ptr %50, i64 %indvars.iv657
  %51 = load i32, ptr %arrayidx288, align 4
  %cmp289 = icmp sgt i32 %51, -1
  br i1 %cmp289, label %if.then291, label %for.inc419

if.then291:                                       ; preds = %for.body277
  %add295 = add nuw nsw i32 %51, 1
  %conv296 = zext nneg i32 %add295 to i64
  %call297 = tail call noalias ptr @calloc(i64 noundef %conv296, i64 noundef 4) #17
  %52 = load ptr, ptr %applicable_op_temporal_id298, align 8
  %arrayidx300 = getelementptr inbounds ptr, ptr %52, i64 %indvars.iv657
  store ptr %call297, ptr %arrayidx300, align 8
  %cmp301 = icmp eq ptr %call297, null
  br i1 %cmp301, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.then291
  tail call void @no_mem_exit(ptr noundef nonnull @.str.151) #16
  br label %if.end304

if.end304:                                        ; preds = %if.then303, %if.then291
  %53 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx307 = getelementptr inbounds i32, ptr %53, i64 %indvars.iv657
  %54 = load i32, ptr %arrayidx307, align 4
  %add308 = add nsw i32 %54, 1
  %conv309 = sext i32 %add308 to i64
  %call310 = tail call noalias ptr @calloc(i64 noundef %conv309, i64 noundef 4) #17
  %55 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8
  %arrayidx313 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv657
  store ptr %call310, ptr %arrayidx313, align 8
  %cmp314 = icmp eq ptr %call310, null
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %if.end304
  tail call void @no_mem_exit(ptr noundef nonnull @.str.152) #16
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %if.end304
  %56 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx320 = getelementptr inbounds i32, ptr %56, i64 %indvars.iv657
  %57 = load i32, ptr %arrayidx320, align 4
  %add321 = add nsw i32 %57, 1
  %conv322 = sext i32 %add321 to i64
  %call323 = tail call noalias ptr @calloc(i64 noundef %conv322, i64 noundef 8) #17
  %58 = load ptr, ptr %applicable_op_target_view_id324, align 8
  %arrayidx326 = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv657
  store ptr %call323, ptr %arrayidx326, align 8
  %cmp327 = icmp eq ptr %call323, null
  br i1 %cmp327, label %if.then329, label %if.end330

if.then329:                                       ; preds = %if.end317
  tail call void @no_mem_exit(ptr noundef nonnull @.str.153) #16
  br label %if.end330

if.end330:                                        ; preds = %if.then329, %if.end317
  %59 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx333 = getelementptr inbounds i32, ptr %59, i64 %indvars.iv657
  %60 = load i32, ptr %arrayidx333, align 4
  %add334 = add nsw i32 %60, 1
  %conv335 = sext i32 %add334 to i64
  %call336 = tail call noalias ptr @calloc(i64 noundef %conv335, i64 noundef 4) #17
  %61 = load ptr, ptr %applicable_op_num_views_minus1337, align 8
  %arrayidx339 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv657
  store ptr %call336, ptr %arrayidx339, align 8
  %cmp340 = icmp eq ptr %call336, null
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %if.end330
  tail call void @no_mem_exit(ptr noundef nonnull @.str.154) #16
  br label %if.end343

if.end343:                                        ; preds = %if.then342, %if.end330
  %62 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx347623 = getelementptr inbounds i32, ptr %62, i64 %indvars.iv657
  %63 = load i32, ptr %arrayidx347623, align 4
  %cmp348.not624 = icmp slt i32 %63, 0
  br i1 %cmp348.not624, label %for.inc419, label %for.body350

for.body350:                                      ; preds = %if.end343, %if.end408
  %indvars.iv654 = phi i64 [ %indvars.iv.next655, %if.end408 ], [ 0, %if.end343 ]
  %call351 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.155, ptr noundef %s) #16
  %64 = load ptr, ptr %applicable_op_temporal_id298, align 8
  %arrayidx354 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv657
  %65 = load ptr, ptr %arrayidx354, align 8
  %arrayidx356 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv654
  store i32 %call351, ptr %arrayidx356, align 4
  %call357 = tail call i32 @ue_v(ptr noundef nonnull @.str.156, ptr noundef %s) #16
  %66 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8
  %arrayidx360 = getelementptr inbounds ptr, ptr %66, i64 %indvars.iv657
  %67 = load ptr, ptr %arrayidx360, align 8
  %arrayidx362 = getelementptr inbounds i32, ptr %67, i64 %indvars.iv654
  store i32 %call357, ptr %arrayidx362, align 4
  %68 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8
  %arrayidx365 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv657
  %69 = load ptr, ptr %arrayidx365, align 8
  %arrayidx367 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv654
  %70 = load i32, ptr %arrayidx367, align 4
  %cmp368 = icmp sgt i32 %70, -1
  br i1 %cmp368, label %if.then370, label %if.end408

if.then370:                                       ; preds = %for.body350
  %add376 = add nuw nsw i32 %70, 1
  %conv377 = zext nneg i32 %add376 to i64
  %call378 = tail call noalias ptr @calloc(i64 noundef %conv377, i64 noundef 4) #17
  %71 = load ptr, ptr %applicable_op_target_view_id324, align 8
  %arrayidx381 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv657
  %72 = load ptr, ptr %arrayidx381, align 8
  %arrayidx383 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv654
  store ptr %call378, ptr %arrayidx383, align 8
  %cmp384 = icmp eq ptr %call378, null
  br i1 %cmp384, label %if.then386, label %if.end387

if.then386:                                       ; preds = %if.then370
  tail call void @no_mem_exit(ptr noundef nonnull @.str.157) #16
  br label %if.end387

if.end387:                                        ; preds = %if.then386, %if.then370
  %73 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8
  %arrayidx391619 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv657
  %74 = load ptr, ptr %arrayidx391619, align 8
  %arrayidx393620 = getelementptr inbounds i32, ptr %74, i64 %indvars.iv654
  %75 = load i32, ptr %arrayidx393620, align 4
  %cmp394.not621 = icmp slt i32 %75, 0
  br i1 %cmp394.not621, label %if.end408, label %for.body396

for.body396:                                      ; preds = %if.end387, %for.body396
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %for.body396 ], [ 0, %if.end387 ]
  %call397 = tail call i32 @ue_v(ptr noundef nonnull @.str.158, ptr noundef %s) #16
  %76 = load ptr, ptr %applicable_op_target_view_id324, align 8
  %arrayidx400 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv657
  %77 = load ptr, ptr %arrayidx400, align 8
  %arrayidx402 = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv654
  %78 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404 = getelementptr inbounds i32, ptr %78, i64 %indvars.iv651
  store i32 %call397, ptr %arrayidx404, align 4
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1
  %79 = load ptr, ptr %applicable_op_num_target_views_minus1311, align 8
  %arrayidx391 = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv657
  %80 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393 = getelementptr inbounds i32, ptr %80, i64 %indvars.iv654
  %81 = load i32, ptr %arrayidx393, align 4
  %82 = sext i32 %81 to i64
  %cmp394.not.not = icmp slt i64 %indvars.iv651, %82
  br i1 %cmp394.not.not, label %for.body396, label %if.end408

if.end408:                                        ; preds = %for.body396, %if.end387, %for.body350
  %call409 = tail call i32 @ue_v(ptr noundef nonnull @.str.159, ptr noundef %s) #16
  %83 = load ptr, ptr %applicable_op_num_views_minus1337, align 8
  %arrayidx412 = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv657
  %84 = load ptr, ptr %arrayidx412, align 8
  %arrayidx414 = getelementptr inbounds i32, ptr %84, i64 %indvars.iv654
  store i32 %call409, ptr %arrayidx414, align 4
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1
  %85 = load ptr, ptr %num_applicable_ops_minus1283, align 8
  %arrayidx347 = getelementptr inbounds i32, ptr %85, i64 %indvars.iv657
  %86 = load i32, ptr %arrayidx347, align 4
  %87 = sext i32 %86 to i64
  %cmp348.not.not = icmp slt i64 %indvars.iv654, %87
  br i1 %cmp348.not.not, label %for.body350, label %for.inc419

for.inc419:                                       ; preds = %if.end408, %if.end343, %for.body277
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1
  %88 = load i32, ptr %num_level_values_signalled_minus1, align 8
  %89 = sext i32 %88 to i64
  %cmp275.not.not = icmp slt i64 %indvars.iv657, %89
  br i1 %cmp275.not.not, label %for.body277, label %for.end421

for.end421:                                       ; preds = %for.inc419, %for.end228, %if.end272
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @MemAlloc1D(ptr nocapture noundef writeonly %ppBuf, i32 noundef %iEleSize, i32 noundef %iNum) local_unnamed_addr #11 {
entry:
  %mul = mul nsw i32 %iNum, %iEleSize
  %cmp = icmp slt i32 %mul, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %iNum to i64
  %conv1 = sext i32 %iEleSize to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef %conv1) #17
  store ptr %call, ptr %ppBuf, align 8
  %cmp2 = icmp eq ptr %call, null
  %conv3 = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @hrd_parameters(ptr nocapture noundef %pMVCVUI, ptr noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.160, ptr noundef %s) #16
  %conv = trunc i32 %call to i8
  %cpb_cnt_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 96
  store i8 %conv, ptr %cpb_cnt_minus1, align 8
  %call1 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.161, ptr noundef %s) #16
  %conv2 = trunc i32 %call1 to i8
  %bit_rate_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 97
  store i8 %conv2, ptr %bit_rate_scale, align 1
  %call3 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.162, ptr noundef %s) #16
  %conv4 = trunc i32 %call3 to i8
  %cpb_size_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 98
  store i8 %conv4, ptr %cpb_size_scale, align 2
  %0 = load i8, ptr %cpb_cnt_minus1, align 8
  %cmp.not48 = icmp slt i8 %0, 0
  br i1 %cmp.not48, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %bit_rate_value_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 100
  %cpb_size_value_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 228
  %cbr_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 356
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call8 = tail call i32 @ue_v(ptr noundef nonnull @.str.163, ptr noundef %s) #16
  %arrayidx = getelementptr inbounds [32 x i32], ptr %bit_rate_value_minus1, i64 0, i64 %indvars.iv
  store i32 %call8, ptr %arrayidx, align 4
  %call9 = tail call i32 @ue_v(ptr noundef nonnull @.str.164, ptr noundef %s) #16
  %arrayidx11 = getelementptr inbounds [32 x i32], ptr %cpb_size_value_minus1, i64 0, i64 %indvars.iv
  store i32 %call9, ptr %arrayidx11, align 4
  %call12 = tail call i32 @u_1(ptr noundef nonnull @.str.165, ptr noundef %s) #16
  %conv13 = trunc i32 %call12 to i8
  %arrayidx15 = getelementptr inbounds [32 x i8], ptr %cbr_flag, i64 0, i64 %indvars.iv
  store i8 %conv13, ptr %arrayidx15, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i8, ptr %cpb_cnt_minus1, align 8
  %2 = sext i8 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call16 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.166, ptr noundef %s) #16
  %conv17 = trunc i32 %call16 to i8
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 388
  store i8 %conv17, ptr %initial_cpb_removal_delay_length_minus1, align 4
  %call18 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.167, ptr noundef %s) #16
  %conv19 = trunc i32 %call18 to i8
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 389
  store i8 %conv19, ptr %cpb_removal_delay_length_minus1, align 1
  %call20 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.168, ptr noundef %s) #16
  %conv21 = trunc i32 %call20 to i8
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 390
  store i8 %conv21, ptr %dpb_output_delay_length_minus1, align 2
  %call22 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.169, ptr noundef %s) #16
  %conv23 = trunc i32 %call22 to i8
  %time_offset_length = getelementptr inbounds i8, ptr %pMVCVUI, i64 391
  store i8 %conv23, ptr %time_offset_length, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mvc_vui_parameters_extension(ptr nocapture noundef %pMVCVUI, ptr noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str.170, ptr noundef %s) #16
  store i32 %call, ptr %pMVCVUI, align 8
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %MemAlloc1D.exit, label %if.end123

MemAlloc1D.exit:                                  ; preds = %entry
  %add = add nuw nsw i32 %call, 1
  %temporal_id = getelementptr inbounds i8, ptr %pMVCVUI, i64 8
  %conv.i = zext nneg i32 %add to i64
  %call.i = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i, ptr %temporal_id, align 8
  %num_target_output_views_minus1 = getelementptr inbounds i8, ptr %pMVCVUI, i64 16
  %call.i209 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17
  store ptr %call.i209, ptr %num_target_output_views_minus1, align 8
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 8) #17
  %view_id = getelementptr inbounds i8, ptr %pMVCVUI, i64 24
  store ptr %call4, ptr %view_id, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %for.body.preheader

if.then7:                                         ; preds = %MemAlloc1D.exit
  tail call void @no_mem_exit(ptr noundef nonnull @.str.171) #16
  br label %for.body.preheader

for.body.preheader:                               ; preds = %MemAlloc1D.exit, %if.then7
  %timing_info_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 32
  %call.i218 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i218, ptr %timing_info_present_flag, align 8
  %num_units_in_tick = getelementptr inbounds i8, ptr %pMVCVUI, i64 40
  %call.i227 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17
  store ptr %call.i227, ptr %num_units_in_tick, align 8
  %time_scale = getelementptr inbounds i8, ptr %pMVCVUI, i64 48
  %call.i236 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 4) #17
  store ptr %call.i236, ptr %time_scale, align 8
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 56
  %call.i245 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i245, ptr %fixed_frame_rate_flag, align 8
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 64
  %call.i254 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i254, ptr %nal_hrd_parameters_present_flag, align 8
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 72
  %call.i263 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i263, ptr %vcl_hrd_parameters_present_flag, align 8
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 80
  %call.i272 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i272, ptr %low_delay_hrd_flag, align 8
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %pMVCVUI, i64 88
  %call.i281 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #17
  store ptr %call.i281, ptr %pic_struct_present_flag, align 8
  %0 = add nuw i32 %call, 1
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end114
  %indvars.iv301 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next302, %if.end114 ]
  %call18 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.172, ptr noundef %s) #16
  %conv19 = trunc i32 %call18 to i8
  %1 = load ptr, ptr %temporal_id, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %indvars.iv301
  store i8 %conv19, ptr %arrayidx, align 1
  %call21 = tail call i32 @ue_v(ptr noundef nonnull @.str.173, ptr noundef %s) #16
  %2 = load ptr, ptr %num_target_output_views_minus1, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv301
  store i32 %call21, ptr %arrayidx24, align 4
  %3 = load ptr, ptr %num_target_output_views_minus1, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv301
  %4 = load i32, ptr %arrayidx27, align 4
  %cmp28 = icmp sgt i32 %4, -1
  br i1 %cmp28, label %if.end39, label %for.end

if.end39:                                         ; preds = %for.body
  %5 = load ptr, ptr %view_id, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv301
  %add37 = add nuw nsw i32 %4, 1
  %conv.i289 = zext nneg i32 %add37 to i64
  %call.i290 = tail call noalias ptr @calloc(i64 noundef %conv.i289, i64 noundef 4) #17
  store ptr %call.i290, ptr %arrayidx33, align 8
  %.pre = load ptr, ptr %num_target_output_views_minus1, align 8
  %arrayidx43295.phi.trans.insert = getelementptr inbounds i32, ptr %.pre, i64 %indvars.iv301
  %.pre304 = load i32, ptr %arrayidx43295.phi.trans.insert, align 4
  %cmp44.not296 = icmp slt i32 %.pre304, 0
  br i1 %cmp44.not296, label %for.end, label %for.body46

for.body46:                                       ; preds = %if.end39, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %if.end39 ]
  %call47 = tail call i32 @ue_v(ptr noundef nonnull @.str.174, ptr noundef %s) #16
  %6 = load ptr, ptr %view_id, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv301
  %7 = load ptr, ptr %arrayidx50, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv
  store i32 %call47, ptr %arrayidx52, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load ptr, ptr %num_target_output_views_minus1, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv301
  %9 = load i32, ptr %arrayidx43, align 4
  %10 = sext i32 %9 to i64
  %cmp44.not.not = icmp slt i64 %indvars.iv, %10
  br i1 %cmp44.not.not, label %for.body46, label %for.end

for.end:                                          ; preds = %for.body46, %for.body, %if.end39
  %call53 = tail call i32 @u_1(ptr noundef nonnull @.str.175, ptr noundef %s) #16
  %conv54 = trunc i32 %call53 to i8
  %11 = load ptr, ptr %timing_info_present_flag, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv301
  store i8 %conv54, ptr %arrayidx57, align 1
  %12 = load ptr, ptr %timing_info_present_flag, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv301
  %13 = load i8, ptr %arrayidx60, align 1
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end75, label %if.then61

if.then61:                                        ; preds = %for.end
  %call62 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.176, ptr noundef %s) #16
  %14 = load ptr, ptr %num_units_in_tick, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv301
  store i32 %call62, ptr %arrayidx65, align 4
  %call66 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.177, ptr noundef %s) #16
  %15 = load ptr, ptr %time_scale, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %15, i64 %indvars.iv301
  store i32 %call66, ptr %arrayidx69, align 4
  %call70 = tail call i32 @u_1(ptr noundef nonnull @.str.178, ptr noundef %s) #16
  %conv71 = trunc i32 %call70 to i8
  %16 = load ptr, ptr %fixed_frame_rate_flag, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %16, i64 %indvars.iv301
  store i8 %conv71, ptr %arrayidx74, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then61, %for.end
  %call76 = tail call i32 @u_1(ptr noundef nonnull @.str.179, ptr noundef %s) #16
  %conv77 = trunc i32 %call76 to i8
  %17 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %17, i64 %indvars.iv301
  store i8 %conv77, ptr %arrayidx80, align 1
  %18 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %18, i64 %indvars.iv301
  %19 = load i8, ptr %arrayidx83, align 1
  %tobool84.not = icmp eq i8 %19, 0
  br i1 %tobool84.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end75
  tail call void @hrd_parameters(ptr noundef nonnull %pMVCVUI, ptr noundef %s)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end75
  %call87 = tail call i32 @u_1(ptr noundef nonnull @.str.180, ptr noundef %s) #16
  %conv88 = trunc i32 %call87 to i8
  %20 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %20, i64 %indvars.iv301
  store i8 %conv88, ptr %arrayidx91, align 1
  %21 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %21, i64 %indvars.iv301
  %22 = load i8, ptr %arrayidx94, align 1
  %tobool95.not = icmp eq i8 %22, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end86
  tail call void @hrd_parameters(ptr noundef nonnull %pMVCVUI, ptr noundef %s)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end86
  %23 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %23, i64 %indvars.iv301
  %24 = load i8, ptr %arrayidx100, align 1
  %tobool102.not = icmp eq i8 %24, 0
  br i1 %tobool102.not, label %lor.lhs.false, label %if.then108

lor.lhs.false:                                    ; preds = %if.end97
  %25 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %25, i64 %indvars.iv301
  %26 = load i8, ptr %arrayidx105, align 1
  %tobool107.not = icmp eq i8 %26, 0
  br i1 %tobool107.not, label %if.end114, label %if.then108

if.then108:                                       ; preds = %lor.lhs.false, %if.end97
  %call109 = tail call i32 @u_1(ptr noundef nonnull @.str.181, ptr noundef %s) #16
  %conv110 = trunc i32 %call109 to i8
  %27 = load ptr, ptr %low_delay_hrd_flag, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %27, i64 %indvars.iv301
  store i8 %conv110, ptr %arrayidx113, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %lor.lhs.false
  %call115 = tail call i32 @u_1(ptr noundef nonnull @.str.182, ptr noundef %s) #16
  %conv116 = trunc i32 %call115 to i8
  %28 = load ptr, ptr %pic_struct_present_flag, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %28, i64 %indvars.iv301
  store i8 %conv116, ptr %arrayidx119, align 1
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count
  br i1 %exitcond.not, label %if.end123, label %for.body

if.end123:                                        ; preds = %if.end114, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @init_subset_sps_list(ptr nocapture noundef writeonly %subset_sps_list, i32 noundef %iSize) local_unnamed_addr #12 {
entry:
  %conv = sext i32 %iSize to i64
  %mul = mul nsw i64 %conv, 4664
  tail call void @llvm.memset.p0.i64(ptr align 8 %subset_sps_list, i8 0, i64 %mul, i1 false)
  %cmp18 = icmp sgt i32 %iSize, 0
  br i1 %cmp18, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %iSize to i64
  %min.iters.check = icmp ult i32 %iSize, 4
  br i1 %min.iters.check, label %for.body.preheader21, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = or disjoint i64 %index, 1
  %1 = or disjoint i64 %index, 2
  %2 = or disjoint i64 %index, 3
  %3 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %index
  %4 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %0
  %5 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %1
  %6 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %2
  %7 = getelementptr inbounds i8, ptr %3, i64 32
  %8 = getelementptr inbounds i8, ptr %4, i64 32
  %9 = getelementptr inbounds i8, ptr %5, i64 32
  %10 = getelementptr inbounds i8, ptr %6, i64 32
  store i32 -1, ptr %7, align 8
  store i32 -1, ptr %8, align 8
  store i32 -1, ptr %9, align 8
  store i32 -1, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %3, i64 4132
  %12 = getelementptr inbounds i8, ptr %4, i64 4132
  %13 = getelementptr inbounds i8, ptr %5, i64 4132
  %14 = getelementptr inbounds i8, ptr %6, i64 4132
  store i32 -1, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  store i32 -1, ptr %13, align 4
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %3, i64 4208
  %16 = getelementptr inbounds i8, ptr %4, i64 4208
  %17 = getelementptr inbounds i8, ptr %5, i64 4208
  %18 = getelementptr inbounds i8, ptr %6, i64 4208
  store i32 -1, ptr %15, align 8
  store i32 -1, ptr %16, align 8
  store i32 -1, ptr %17, align 8
  store i32 -1, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %3, i64 4272
  %20 = getelementptr inbounds i8, ptr %4, i64 4272
  %21 = getelementptr inbounds i8, ptr %5, i64 4272
  %22 = getelementptr inbounds i8, ptr %6, i64 4272
  store i32 -1, ptr %19, align 8
  store i32 -1, ptr %20, align 8
  store i32 -1, ptr %21, align 8
  store i32 -1, ptr %22, align 8
  %index.next = add nuw i64 %index, 4
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader21

for.body.preheader21:                             ; preds = %middle.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader21, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader21 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader21 ]
  %arrayidx.prol = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv.prol
  %seq_parameter_set_id.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 32
  store i32 -1, ptr %seq_parameter_set_id.prol, align 8
  %num_views_minus1.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4132
  store i32 -1, ptr %num_views_minus1.prol, align 4
  %num_level_values_signalled_minus1.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4208
  store i32 -1, ptr %num_level_values_signalled_minus1.prol, align 8
  %MVCVUIParams.prol = getelementptr inbounds i8, ptr %arrayidx.prol, i64 4272
  store i32 -1, ptr %MVCVUIParams.prol, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !8

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader21
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader21 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %24 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %25 = icmp ugt i64 %24, -4
  br i1 %25, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %arrayidx, i64 32
  store i32 -1, ptr %seq_parameter_set_id, align 8
  %num_views_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 4132
  store i32 -1, ptr %num_views_minus1, align 4
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 4208
  store i32 -1, ptr %num_level_values_signalled_minus1, align 8
  %MVCVUIParams = getelementptr inbounds i8, ptr %arrayidx, i64 4272
  store i32 -1, ptr %MVCVUIParams, align 8
  %26 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv
  %seq_parameter_set_id.1 = getelementptr i8, ptr %26, i64 4696
  store i32 -1, ptr %seq_parameter_set_id.1, align 8
  %num_views_minus1.1 = getelementptr i8, ptr %26, i64 8796
  store i32 -1, ptr %num_views_minus1.1, align 4
  %num_level_values_signalled_minus1.1 = getelementptr i8, ptr %26, i64 8872
  store i32 -1, ptr %num_level_values_signalled_minus1.1, align 8
  %MVCVUIParams.1 = getelementptr i8, ptr %26, i64 8936
  store i32 -1, ptr %MVCVUIParams.1, align 8
  %27 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv
  %seq_parameter_set_id.2 = getelementptr i8, ptr %27, i64 9360
  store i32 -1, ptr %seq_parameter_set_id.2, align 8
  %num_views_minus1.2 = getelementptr i8, ptr %27, i64 13460
  store i32 -1, ptr %num_views_minus1.2, align 4
  %num_level_values_signalled_minus1.2 = getelementptr i8, ptr %27, i64 13536
  store i32 -1, ptr %num_level_values_signalled_minus1.2, align 8
  %MVCVUIParams.2 = getelementptr i8, ptr %27, i64 13600
  store i32 -1, ptr %MVCVUIParams.2, align 8
  %28 = getelementptr %struct.subset_seq_parameter_set_rbsp_t, ptr %subset_sps_list, i64 %indvars.iv
  %seq_parameter_set_id.3 = getelementptr i8, ptr %28, i64 14024
  store i32 -1, ptr %seq_parameter_set_id.3, align 8
  %num_views_minus1.3 = getelementptr i8, ptr %28, i64 18124
  store i32 -1, ptr %num_views_minus1.3, align 4
  %num_level_values_signalled_minus1.3 = getelementptr i8, ptr %28, i64 18200
  store i32 -1, ptr %num_level_values_signalled_minus1.3, align 8
  %MVCVUIParams.3 = getelementptr i8, ptr %28, i64 18264
  store i32 -1, ptr %MVCVUIParams.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @reset_subset_sps(ptr noundef %subset_sps) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %subset_sps, null
  br i1 %tobool.not, label %if.end302, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4132
  %0 = load i32, ptr %num_views_minus1, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %land.lhs.true219

if.then:                                          ; preds = %land.lhs.true
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %subset_sps, i64 32
  store i32 -1, ptr %seq_parameter_set_id, align 8
  %view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4136
  %1 = load ptr, ptr %view_id, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.lr.ph, label %if.end

if.end:                                           ; preds = %if.then
  tail call void @free(ptr noundef nonnull %1) #16
  store ptr null, ptr %view_id, align 8
  %.pre = load i32, ptr %num_views_minus1, align 4
  %cmp6.not503 = icmp slt i32 %.pre, 0
  br i1 %cmp6.not503, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then, %if.end
  %anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  %anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = load ptr, ptr %anchor_ref_l0, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %for.body
  tail call void @free(ptr noundef nonnull %3) #16
  %4 = load ptr, ptr %anchor_ref_l0, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  store ptr null, ptr %arrayidx14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %for.body
  %5 = load ptr, ptr %anchor_ref_l1, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx17, align 8
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %if.end15
  tail call void @free(ptr noundef nonnull %6) #16
  %7 = load ptr, ptr %anchor_ref_l1, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv
  store ptr null, ptr %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.then19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %num_views_minus1, align 4
  %9 = sext i32 %8 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %9
  br i1 %cmp6.not.not, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %anchor_ref_l027 = getelementptr inbounds i8, ptr %subset_sps, i64 4152
  %10 = load ptr, ptr %anchor_ref_l027, align 8
  %tobool28.not = icmp eq ptr %10, null
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %for.end
  tail call void @free(ptr noundef nonnull %10) #16
  store ptr null, ptr %anchor_ref_l027, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.end
  %anchor_ref_l133 = getelementptr inbounds i8, ptr %subset_sps, i64 4168
  %11 = load ptr, ptr %anchor_ref_l133, align 8
  %tobool34.not = icmp eq ptr %11, null
  br i1 %tobool34.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end32
  tail call void @free(ptr noundef nonnull %11) #16
  store ptr null, ptr %anchor_ref_l133, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32
  %num_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4144
  %12 = load ptr, ptr %num_anchor_refs_l0, align 8
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end38
  tail call void @free(ptr noundef nonnull %12) #16
  store ptr null, ptr %num_anchor_refs_l0, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38
  %num_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4160
  %13 = load ptr, ptr %num_anchor_refs_l1, align 8
  %tobool44.not = icmp eq ptr %13, null
  br i1 %tobool44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end43
  tail call void @free(ptr noundef nonnull %13) #16
  store ptr null, ptr %num_anchor_refs_l1, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43
  %14 = load i32, ptr %num_views_minus1, align 4
  %cmp51.not505 = icmp slt i32 %14, 0
  br i1 %cmp51.not505, label %for.end77, label %for.body52.lr.ph

for.body52.lr.ph:                                 ; preds = %if.end48
  %non_anchor_ref_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  br label %for.body52

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc75
  %indvars.iv515 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next516, %for.inc75 ]
  %15 = load ptr, ptr %non_anchor_ref_l0, align 8
  %arrayidx54 = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv515
  %16 = load ptr, ptr %arrayidx54, align 8
  %tobool55.not = icmp eq ptr %16, null
  br i1 %tobool55.not, label %if.end63, label %if.then56

if.then56:                                        ; preds = %for.body52
  tail call void @free(ptr noundef nonnull %16) #16
  %17 = load ptr, ptr %non_anchor_ref_l0, align 8
  %arrayidx62 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv515
  store ptr null, ptr %arrayidx62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %for.body52
  %18 = load ptr, ptr %non_anchor_ref_l1, align 8
  %arrayidx65 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv515
  %19 = load ptr, ptr %arrayidx65, align 8
  %tobool66.not = icmp eq ptr %19, null
  br i1 %tobool66.not, label %for.inc75, label %if.then67

if.then67:                                        ; preds = %if.end63
  tail call void @free(ptr noundef nonnull %19) #16
  %20 = load ptr, ptr %non_anchor_ref_l1, align 8
  %arrayidx73 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv515
  store ptr null, ptr %arrayidx73, align 8
  br label %for.inc75

for.inc75:                                        ; preds = %if.end63, %if.then67
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1
  %21 = load i32, ptr %num_views_minus1, align 4
  %22 = sext i32 %21 to i64
  %cmp51.not.not = icmp slt i64 %indvars.iv515, %22
  br i1 %cmp51.not.not, label %for.body52, label %for.end77

for.end77:                                        ; preds = %for.inc75, %if.end48
  %non_anchor_ref_l078 = getelementptr inbounds i8, ptr %subset_sps, i64 4184
  %23 = load ptr, ptr %non_anchor_ref_l078, align 8
  %tobool79.not = icmp eq ptr %23, null
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %for.end77
  tail call void @free(ptr noundef nonnull %23) #16
  store ptr null, ptr %non_anchor_ref_l078, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %for.end77
  %non_anchor_ref_l184 = getelementptr inbounds i8, ptr %subset_sps, i64 4200
  %24 = load ptr, ptr %non_anchor_ref_l184, align 8
  %tobool85.not = icmp eq ptr %24, null
  br i1 %tobool85.not, label %if.end89, label %if.then86

if.then86:                                        ; preds = %if.end83
  tail call void @free(ptr noundef nonnull %24) #16
  store ptr null, ptr %non_anchor_ref_l184, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83
  %num_non_anchor_refs_l0 = getelementptr inbounds i8, ptr %subset_sps, i64 4176
  %25 = load ptr, ptr %num_non_anchor_refs_l0, align 8
  %tobool90.not = icmp eq ptr %25, null
  br i1 %tobool90.not, label %if.end94, label %if.then91

if.then91:                                        ; preds = %if.end89
  tail call void @free(ptr noundef nonnull %25) #16
  store ptr null, ptr %num_non_anchor_refs_l0, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end89
  %num_non_anchor_refs_l1 = getelementptr inbounds i8, ptr %subset_sps, i64 4192
  %26 = load ptr, ptr %num_non_anchor_refs_l1, align 8
  %tobool95.not = icmp eq ptr %26, null
  br i1 %tobool95.not, label %if.end99, label %if.then96

if.then96:                                        ; preds = %if.end94
  tail call void @free(ptr noundef nonnull %26) #16
  store ptr null, ptr %num_non_anchor_refs_l1, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end94
  %num_level_values_signalled_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4208
  %27 = load i32, ptr %num_level_values_signalled_minus1, align 8
  %cmp100 = icmp sgt i32 %27, -1
  br i1 %cmp100, label %if.then101, label %if.end215

if.then101:                                       ; preds = %if.end99
  %level_idc = getelementptr inbounds i8, ptr %subset_sps, i64 4216
  %28 = load ptr, ptr %level_idc, align 8
  %tobool102.not = icmp eq ptr %28, null
  br i1 %tobool102.not, label %for.cond111.preheader.lr.ph, label %if.end106

if.end106:                                        ; preds = %if.then101
  tail call void @free(ptr noundef nonnull %28) #16
  store ptr null, ptr %level_idc, align 8
  %.pre527 = load i32, ptr %num_level_values_signalled_minus1, align 8
  %cmp109.not510 = icmp slt i32 %.pre527, 0
  br i1 %cmp109.not510, label %for.end183, label %for.cond111.preheader.lr.ph

for.cond111.preheader.lr.ph:                      ; preds = %if.then101, %if.end106
  %num_applicable_ops_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  %applicable_op_target_view_id = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  %applicable_op_temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  %applicable_op_num_target_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  %applicable_op_num_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  br label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %for.cond111.preheader.lr.ph, %for.inc181
  %indvars.iv521 = phi i64 [ 0, %for.cond111.preheader.lr.ph ], [ %indvars.iv.next522, %for.inc181 ]
  %29 = load ptr, ptr %num_applicable_ops_minus1, align 8
  %arrayidx113507 = getelementptr inbounds i32, ptr %29, i64 %indvars.iv521
  %30 = load i32, ptr %arrayidx113507, align 4
  %cmp114.not508 = icmp slt i32 %30, 0
  br i1 %cmp114.not508, label %for.end135, label %for.body115

for.body115:                                      ; preds = %for.cond111.preheader, %for.inc133
  %31 = phi ptr [ %37, %for.inc133 ], [ %29, %for.cond111.preheader ]
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %for.inc133 ], [ 0, %for.cond111.preheader ]
  %32 = load ptr, ptr %applicable_op_target_view_id, align 8
  %arrayidx117 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv521
  %33 = load ptr, ptr %arrayidx117, align 8
  %arrayidx119 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv518
  %34 = load ptr, ptr %arrayidx119, align 8
  %tobool120.not = icmp eq ptr %34, null
  br i1 %tobool120.not, label %for.inc133, label %if.then121

if.then121:                                       ; preds = %for.body115
  tail call void @free(ptr noundef nonnull %34) #16
  %35 = load ptr, ptr %applicable_op_target_view_id, align 8
  %arrayidx129 = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv521
  %36 = load ptr, ptr %arrayidx129, align 8
  %arrayidx131 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv518
  store ptr null, ptr %arrayidx131, align 8
  %.pre528 = load ptr, ptr %num_applicable_ops_minus1, align 8
  br label %for.inc133

for.inc133:                                       ; preds = %for.body115, %if.then121
  %37 = phi ptr [ %31, %for.body115 ], [ %.pre528, %if.then121 ]
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  %arrayidx113 = getelementptr inbounds i32, ptr %37, i64 %indvars.iv521
  %38 = load i32, ptr %arrayidx113, align 4
  %39 = sext i32 %38 to i64
  %cmp114.not.not = icmp slt i64 %indvars.iv518, %39
  br i1 %cmp114.not.not, label %for.body115, label %for.end135

for.end135:                                       ; preds = %for.inc133, %for.cond111.preheader
  %40 = load ptr, ptr %applicable_op_target_view_id, align 8
  %arrayidx138 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv521
  %41 = load ptr, ptr %arrayidx138, align 8
  %tobool139.not = icmp eq ptr %41, null
  br i1 %tobool139.not, label %if.end147, label %if.then140

if.then140:                                       ; preds = %for.end135
  tail call void @free(ptr noundef nonnull %41) #16
  %42 = load ptr, ptr %applicable_op_target_view_id, align 8
  %arrayidx146 = getelementptr inbounds ptr, ptr %42, i64 %indvars.iv521
  store ptr null, ptr %arrayidx146, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then140, %for.end135
  %43 = load ptr, ptr %applicable_op_temporal_id, align 8
  %arrayidx149 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv521
  %44 = load ptr, ptr %arrayidx149, align 8
  %tobool150.not = icmp eq ptr %44, null
  br i1 %tobool150.not, label %if.end158, label %if.then151

if.then151:                                       ; preds = %if.end147
  tail call void @free(ptr noundef nonnull %44) #16
  %45 = load ptr, ptr %applicable_op_temporal_id, align 8
  %arrayidx157 = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv521
  store ptr null, ptr %arrayidx157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end147
  %46 = load ptr, ptr %applicable_op_num_target_views_minus1, align 8
  %arrayidx160 = getelementptr inbounds ptr, ptr %46, i64 %indvars.iv521
  %47 = load ptr, ptr %arrayidx160, align 8
  %tobool161.not = icmp eq ptr %47, null
  br i1 %tobool161.not, label %if.end169, label %if.then162

if.then162:                                       ; preds = %if.end158
  tail call void @free(ptr noundef nonnull %47) #16
  %48 = load ptr, ptr %applicable_op_num_target_views_minus1, align 8
  %arrayidx168 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv521
  store ptr null, ptr %arrayidx168, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %if.end158
  %49 = load ptr, ptr %applicable_op_num_views_minus1, align 8
  %arrayidx171 = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv521
  %50 = load ptr, ptr %arrayidx171, align 8
  %tobool172.not = icmp eq ptr %50, null
  br i1 %tobool172.not, label %for.inc181, label %if.then173

if.then173:                                       ; preds = %if.end169
  tail call void @free(ptr noundef nonnull %50) #16
  %51 = load ptr, ptr %applicable_op_num_views_minus1, align 8
  %arrayidx179 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv521
  store ptr null, ptr %arrayidx179, align 8
  br label %for.inc181

for.inc181:                                       ; preds = %if.end169, %if.then173
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1
  %52 = load i32, ptr %num_level_values_signalled_minus1, align 8
  %53 = sext i32 %52 to i64
  %cmp109.not.not = icmp slt i64 %indvars.iv521, %53
  br i1 %cmp109.not.not, label %for.cond111.preheader, label %for.end183

for.end183:                                       ; preds = %for.inc181, %if.end106
  %applicable_op_target_view_id184 = getelementptr inbounds i8, ptr %subset_sps, i64 4248
  %54 = load ptr, ptr %applicable_op_target_view_id184, align 8
  %tobool185.not = icmp eq ptr %54, null
  br i1 %tobool185.not, label %if.end189, label %if.then186

if.then186:                                       ; preds = %for.end183
  tail call void @free(ptr noundef nonnull %54) #16
  store ptr null, ptr %applicable_op_target_view_id184, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %for.end183
  %applicable_op_temporal_id190 = getelementptr inbounds i8, ptr %subset_sps, i64 4232
  %55 = load ptr, ptr %applicable_op_temporal_id190, align 8
  %tobool191.not = icmp eq ptr %55, null
  br i1 %tobool191.not, label %if.end195, label %if.then192

if.then192:                                       ; preds = %if.end189
  tail call void @free(ptr noundef nonnull %55) #16
  store ptr null, ptr %applicable_op_temporal_id190, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end189
  %applicable_op_num_target_views_minus1196 = getelementptr inbounds i8, ptr %subset_sps, i64 4240
  %56 = load ptr, ptr %applicable_op_num_target_views_minus1196, align 8
  %tobool197.not = icmp eq ptr %56, null
  br i1 %tobool197.not, label %if.end201, label %if.then198

if.then198:                                       ; preds = %if.end195
  tail call void @free(ptr noundef nonnull %56) #16
  store ptr null, ptr %applicable_op_num_target_views_minus1196, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end195
  %applicable_op_num_views_minus1202 = getelementptr inbounds i8, ptr %subset_sps, i64 4256
  %57 = load ptr, ptr %applicable_op_num_views_minus1202, align 8
  %tobool203.not = icmp eq ptr %57, null
  br i1 %tobool203.not, label %if.end207, label %if.then204

if.then204:                                       ; preds = %if.end201
  tail call void @free(ptr noundef nonnull %57) #16
  store ptr null, ptr %applicable_op_num_views_minus1202, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %if.end201
  %num_applicable_ops_minus1208 = getelementptr inbounds i8, ptr %subset_sps, i64 4224
  %58 = load ptr, ptr %num_applicable_ops_minus1208, align 8
  %tobool209.not = icmp eq ptr %58, null
  br i1 %tobool209.not, label %if.end213, label %if.then210

if.then210:                                       ; preds = %if.end207
  tail call void @free(ptr noundef nonnull %58) #16
  store ptr null, ptr %num_applicable_ops_minus1208, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.end207
  store i32 -1, ptr %num_level_values_signalled_minus1, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.end213, %if.end99
  store i32 -1, ptr %num_views_minus1, align 4
  br label %land.lhs.true219

land.lhs.true219:                                 ; preds = %land.lhs.true, %if.end215
  %mvc_vui_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4264
  %59 = load i32, ptr %mvc_vui_parameters_present_flag, align 8
  %tobool220.not = icmp eq i32 %59, 0
  br i1 %tobool220.not, label %if.end302, label %if.then221

if.then221:                                       ; preds = %land.lhs.true219
  %MVCVUIParams = getelementptr inbounds i8, ptr %subset_sps, i64 4272
  %60 = load i32, ptr %MVCVUIParams, align 8
  %cmp222 = icmp sgt i32 %60, -1
  br i1 %cmp222, label %if.then223, label %if.end300

if.then223:                                       ; preds = %if.then221
  %temporal_id = getelementptr inbounds i8, ptr %subset_sps, i64 4280
  %61 = load ptr, ptr %temporal_id, align 8
  %tobool224.not = icmp eq ptr %61, null
  br i1 %tobool224.not, label %if.end228, label %if.then225

if.then225:                                       ; preds = %if.then223
  tail call void @free(ptr noundef nonnull %61) #16
  store ptr null, ptr %temporal_id, align 8
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.then223
  %num_target_output_views_minus1 = getelementptr inbounds i8, ptr %subset_sps, i64 4288
  %62 = load ptr, ptr %num_target_output_views_minus1, align 8
  %tobool229.not = icmp eq ptr %62, null
  br i1 %tobool229.not, label %if.end233, label %if.then230

if.then230:                                       ; preds = %if.end228
  tail call void @free(ptr noundef nonnull %62) #16
  store ptr null, ptr %num_target_output_views_minus1, align 8
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %if.end228
  %63 = load i32, ptr %MVCVUIParams, align 8
  %cmp236.not512 = icmp slt i32 %63, 0
  br i1 %cmp236.not512, label %for.end252, label %for.body237.lr.ph

for.body237.lr.ph:                                ; preds = %if.end233
  %view_id238 = getelementptr inbounds i8, ptr %subset_sps, i64 4296
  br label %for.body237

for.body237:                                      ; preds = %for.body237.lr.ph, %for.inc250
  %64 = phi i32 [ %63, %for.body237.lr.ph ], [ %68, %for.inc250 ]
  %indvars.iv524 = phi i64 [ 0, %for.body237.lr.ph ], [ %indvars.iv.next525, %for.inc250 ]
  %65 = load ptr, ptr %view_id238, align 8
  %arrayidx240 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv524
  %66 = load ptr, ptr %arrayidx240, align 8
  %tobool241.not = icmp eq ptr %66, null
  br i1 %tobool241.not, label %for.inc250, label %if.then242

if.then242:                                       ; preds = %for.body237
  tail call void @free(ptr noundef nonnull %66) #16
  %67 = load ptr, ptr %view_id238, align 8
  %arrayidx248 = getelementptr inbounds ptr, ptr %67, i64 %indvars.iv524
  store ptr null, ptr %arrayidx248, align 8
  %.pre529 = load i32, ptr %MVCVUIParams, align 8
  br label %for.inc250

for.inc250:                                       ; preds = %for.body237, %if.then242
  %68 = phi i32 [ %64, %for.body237 ], [ %.pre529, %if.then242 ]
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1
  %69 = sext i32 %68 to i64
  %cmp236.not.not = icmp slt i64 %indvars.iv524, %69
  br i1 %cmp236.not.not, label %for.body237, label %for.end252

for.end252:                                       ; preds = %for.inc250, %if.end233
  %view_id253 = getelementptr inbounds i8, ptr %subset_sps, i64 4296
  %70 = load ptr, ptr %view_id253, align 8
  %tobool254.not = icmp eq ptr %70, null
  br i1 %tobool254.not, label %if.end258, label %if.then255

if.then255:                                       ; preds = %for.end252
  tail call void @free(ptr noundef nonnull %70) #16
  store ptr null, ptr %view_id253, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.then255, %for.end252
  %timing_info_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4304
  %71 = load ptr, ptr %timing_info_present_flag, align 8
  %tobool259.not = icmp eq ptr %71, null
  br i1 %tobool259.not, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.end258
  tail call void @free(ptr noundef nonnull %71) #16
  store ptr null, ptr %timing_info_present_flag, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end258
  %num_units_in_tick = getelementptr inbounds i8, ptr %subset_sps, i64 4312
  %72 = load ptr, ptr %num_units_in_tick, align 8
  %tobool264.not = icmp eq ptr %72, null
  br i1 %tobool264.not, label %if.end268, label %if.then265

if.then265:                                       ; preds = %if.end263
  tail call void @free(ptr noundef nonnull %72) #16
  store ptr null, ptr %num_units_in_tick, align 8
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %if.end263
  %time_scale = getelementptr inbounds i8, ptr %subset_sps, i64 4320
  %73 = load ptr, ptr %time_scale, align 8
  %tobool269.not = icmp eq ptr %73, null
  br i1 %tobool269.not, label %if.end273, label %if.then270

if.then270:                                       ; preds = %if.end268
  tail call void @free(ptr noundef nonnull %73) #16
  store ptr null, ptr %time_scale, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %if.end268
  %fixed_frame_rate_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4328
  %74 = load ptr, ptr %fixed_frame_rate_flag, align 8
  %tobool274.not = icmp eq ptr %74, null
  br i1 %tobool274.not, label %if.end278, label %if.then275

if.then275:                                       ; preds = %if.end273
  tail call void @free(ptr noundef nonnull %74) #16
  store ptr null, ptr %fixed_frame_rate_flag, align 8
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %if.end273
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4336
  %75 = load ptr, ptr %nal_hrd_parameters_present_flag, align 8
  %tobool279.not = icmp eq ptr %75, null
  br i1 %tobool279.not, label %if.end283, label %if.then280

if.then280:                                       ; preds = %if.end278
  tail call void @free(ptr noundef nonnull %75) #16
  store ptr null, ptr %nal_hrd_parameters_present_flag, align 8
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %if.end278
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4344
  %76 = load ptr, ptr %vcl_hrd_parameters_present_flag, align 8
  %tobool284.not = icmp eq ptr %76, null
  br i1 %tobool284.not, label %if.end288, label %if.then285

if.then285:                                       ; preds = %if.end283
  tail call void @free(ptr noundef nonnull %76) #16
  store ptr null, ptr %vcl_hrd_parameters_present_flag, align 8
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end283
  %low_delay_hrd_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4352
  %77 = load ptr, ptr %low_delay_hrd_flag, align 8
  %tobool289.not = icmp eq ptr %77, null
  br i1 %tobool289.not, label %if.end293, label %if.then290

if.then290:                                       ; preds = %if.end288
  tail call void @free(ptr noundef nonnull %77) #16
  store ptr null, ptr %low_delay_hrd_flag, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then290, %if.end288
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %subset_sps, i64 4360
  %78 = load ptr, ptr %pic_struct_present_flag, align 8
  %tobool294.not = icmp eq ptr %78, null
  br i1 %tobool294.not, label %if.end298, label %if.then295

if.then295:                                       ; preds = %if.end293
  tail call void @free(ptr noundef nonnull %78) #16
  store ptr null, ptr %pic_struct_present_flag, align 8
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end293
  store i32 -1, ptr %MVCVUIParams, align 8
  br label %if.end300

if.end300:                                        ; preds = %if.end298, %if.then221
  store i32 0, ptr %mvc_vui_parameters_present_flag, align 8
  br label %if.end302

if.end302:                                        ; preds = %entry, %if.end300, %land.lhs.true219
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetBaseViewId(ptr noundef %p_Vid, ptr nocapture noundef writeonly %subset_sps) local_unnamed_addr #10 {
entry:
  store ptr null, ptr %subset_sps, align 8
  %num_views_minus1 = getelementptr inbounds i8, ptr %p_Vid, i64 703556
  %0 = load i32, ptr %num_views_minus1, align 4
  %cmp1 = icmp sgt i32 %0, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 699424
  %1 = load i32, ptr %SubsetSeqParSet, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.end:                                           ; preds = %land.lhs.true, %entry
  %num_views_minus1.1 = getelementptr inbounds i8, ptr %p_Vid, i64 708220
  %2 = load i32, ptr %num_views_minus1.1, align 4
  %cmp1.1 = icmp sgt i32 %2, -1
  br i1 %cmp1.1, label %land.lhs.true.1, label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, ptr %p_Vid, i64 704088
  %3 = load i32, ptr %incdec.ptr, align 8
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.then3

if.end.1:                                         ; preds = %land.lhs.true.1, %if.end
  %num_views_minus1.2 = getelementptr inbounds i8, ptr %p_Vid, i64 712884
  %4 = load i32, ptr %num_views_minus1.2, align 4
  %cmp1.2 = icmp sgt i32 %4, -1
  br i1 %cmp1.2, label %land.lhs.true.2, label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %p_Vid, i64 708752
  %5 = load i32, ptr %incdec.ptr.1, align 8
  %tobool.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.then3

if.end.2:                                         ; preds = %land.lhs.true.2, %if.end.1
  %num_views_minus1.3 = getelementptr inbounds i8, ptr %p_Vid, i64 717548
  %6 = load i32, ptr %num_views_minus1.3, align 4
  %cmp1.3 = icmp sgt i32 %6, -1
  br i1 %cmp1.3, label %land.lhs.true.3, label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %p_Vid, i64 713416
  %7 = load i32, ptr %incdec.ptr.2, align 8
  %tobool.not.3 = icmp eq i32 %7, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.then3

if.end.3:                                         ; preds = %land.lhs.true.3, %if.end.2
  %num_views_minus1.4 = getelementptr inbounds i8, ptr %p_Vid, i64 722212
  %8 = load i32, ptr %num_views_minus1.4, align 4
  %cmp1.4 = icmp sgt i32 %8, -1
  br i1 %cmp1.4, label %land.lhs.true.4, label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %p_Vid, i64 718080
  %9 = load i32, ptr %incdec.ptr.3, align 8
  %tobool.not.4 = icmp eq i32 %9, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.then3

if.end.4:                                         ; preds = %land.lhs.true.4, %if.end.3
  %num_views_minus1.5 = getelementptr inbounds i8, ptr %p_Vid, i64 726876
  %10 = load i32, ptr %num_views_minus1.5, align 4
  %cmp1.5 = icmp sgt i32 %10, -1
  br i1 %cmp1.5, label %land.lhs.true.5, label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %p_Vid, i64 722744
  %11 = load i32, ptr %incdec.ptr.4, align 8
  %tobool.not.5 = icmp eq i32 %11, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.then3

if.end.5:                                         ; preds = %land.lhs.true.5, %if.end.4
  %num_views_minus1.6 = getelementptr inbounds i8, ptr %p_Vid, i64 731540
  %12 = load i32, ptr %num_views_minus1.6, align 4
  %cmp1.6 = icmp sgt i32 %12, -1
  br i1 %cmp1.6, label %land.lhs.true.6, label %if.end.6

land.lhs.true.6:                                  ; preds = %if.end.5
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %p_Vid, i64 727408
  %13 = load i32, ptr %incdec.ptr.5, align 8
  %tobool.not.6 = icmp eq i32 %13, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.then3

if.end.6:                                         ; preds = %land.lhs.true.6, %if.end.5
  %num_views_minus1.7 = getelementptr inbounds i8, ptr %p_Vid, i64 736204
  %14 = load i32, ptr %num_views_minus1.7, align 4
  %cmp1.7 = icmp sgt i32 %14, -1
  br i1 %cmp1.7, label %land.lhs.true.7, label %if.end.7

land.lhs.true.7:                                  ; preds = %if.end.6
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %p_Vid, i64 732072
  %15 = load i32, ptr %incdec.ptr.6, align 8
  %tobool.not.7 = icmp eq i32 %15, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.then3

if.end.7:                                         ; preds = %land.lhs.true.7, %if.end.6
  %num_views_minus1.8 = getelementptr inbounds i8, ptr %p_Vid, i64 740868
  %16 = load i32, ptr %num_views_minus1.8, align 4
  %cmp1.8 = icmp sgt i32 %16, -1
  br i1 %cmp1.8, label %land.lhs.true.8, label %if.end.8

land.lhs.true.8:                                  ; preds = %if.end.7
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %p_Vid, i64 736736
  %17 = load i32, ptr %incdec.ptr.7, align 8
  %tobool.not.8 = icmp eq i32 %17, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.then3

if.end.8:                                         ; preds = %land.lhs.true.8, %if.end.7
  %num_views_minus1.9 = getelementptr inbounds i8, ptr %p_Vid, i64 745532
  %18 = load i32, ptr %num_views_minus1.9, align 4
  %cmp1.9 = icmp sgt i32 %18, -1
  br i1 %cmp1.9, label %land.lhs.true.9, label %if.end.9

land.lhs.true.9:                                  ; preds = %if.end.8
  %incdec.ptr.8 = getelementptr inbounds i8, ptr %p_Vid, i64 741400
  %19 = load i32, ptr %incdec.ptr.8, align 8
  %tobool.not.9 = icmp eq i32 %19, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.then3

if.end.9:                                         ; preds = %land.lhs.true.9, %if.end.8
  %num_views_minus1.10 = getelementptr inbounds i8, ptr %p_Vid, i64 750196
  %20 = load i32, ptr %num_views_minus1.10, align 4
  %cmp1.10 = icmp sgt i32 %20, -1
  br i1 %cmp1.10, label %land.lhs.true.10, label %if.end.10

land.lhs.true.10:                                 ; preds = %if.end.9
  %incdec.ptr.9 = getelementptr inbounds i8, ptr %p_Vid, i64 746064
  %21 = load i32, ptr %incdec.ptr.9, align 8
  %tobool.not.10 = icmp eq i32 %21, 0
  br i1 %tobool.not.10, label %if.end.10, label %if.then3

if.end.10:                                        ; preds = %land.lhs.true.10, %if.end.9
  %num_views_minus1.11 = getelementptr inbounds i8, ptr %p_Vid, i64 754860
  %22 = load i32, ptr %num_views_minus1.11, align 4
  %cmp1.11 = icmp sgt i32 %22, -1
  br i1 %cmp1.11, label %land.lhs.true.11, label %if.end.11

land.lhs.true.11:                                 ; preds = %if.end.10
  %incdec.ptr.10 = getelementptr inbounds i8, ptr %p_Vid, i64 750728
  %23 = load i32, ptr %incdec.ptr.10, align 8
  %tobool.not.11 = icmp eq i32 %23, 0
  br i1 %tobool.not.11, label %if.end.11, label %if.then3

if.end.11:                                        ; preds = %land.lhs.true.11, %if.end.10
  %num_views_minus1.12 = getelementptr inbounds i8, ptr %p_Vid, i64 759524
  %24 = load i32, ptr %num_views_minus1.12, align 4
  %cmp1.12 = icmp sgt i32 %24, -1
  br i1 %cmp1.12, label %land.lhs.true.12, label %if.end.12

land.lhs.true.12:                                 ; preds = %if.end.11
  %incdec.ptr.11 = getelementptr inbounds i8, ptr %p_Vid, i64 755392
  %25 = load i32, ptr %incdec.ptr.11, align 8
  %tobool.not.12 = icmp eq i32 %25, 0
  br i1 %tobool.not.12, label %if.end.12, label %if.then3

if.end.12:                                        ; preds = %land.lhs.true.12, %if.end.11
  %num_views_minus1.13 = getelementptr inbounds i8, ptr %p_Vid, i64 764188
  %26 = load i32, ptr %num_views_minus1.13, align 4
  %cmp1.13 = icmp sgt i32 %26, -1
  br i1 %cmp1.13, label %land.lhs.true.13, label %if.end.13

land.lhs.true.13:                                 ; preds = %if.end.12
  %incdec.ptr.12 = getelementptr inbounds i8, ptr %p_Vid, i64 760056
  %27 = load i32, ptr %incdec.ptr.12, align 8
  %tobool.not.13 = icmp eq i32 %27, 0
  br i1 %tobool.not.13, label %if.end.13, label %if.then3

if.end.13:                                        ; preds = %land.lhs.true.13, %if.end.12
  %num_views_minus1.14 = getelementptr inbounds i8, ptr %p_Vid, i64 768852
  %28 = load i32, ptr %num_views_minus1.14, align 4
  %cmp1.14 = icmp sgt i32 %28, -1
  br i1 %cmp1.14, label %land.lhs.true.14, label %if.end.14

land.lhs.true.14:                                 ; preds = %if.end.13
  %incdec.ptr.13 = getelementptr inbounds i8, ptr %p_Vid, i64 764720
  %29 = load i32, ptr %incdec.ptr.13, align 8
  %tobool.not.14 = icmp eq i32 %29, 0
  br i1 %tobool.not.14, label %if.end.14, label %if.then3

if.end.14:                                        ; preds = %land.lhs.true.14, %if.end.13
  %num_views_minus1.15 = getelementptr inbounds i8, ptr %p_Vid, i64 773516
  %30 = load i32, ptr %num_views_minus1.15, align 4
  %cmp1.15 = icmp sgt i32 %30, -1
  br i1 %cmp1.15, label %land.lhs.true.15, label %if.end.15

land.lhs.true.15:                                 ; preds = %if.end.14
  %incdec.ptr.14 = getelementptr inbounds i8, ptr %p_Vid, i64 769384
  %31 = load i32, ptr %incdec.ptr.14, align 8
  %tobool.not.15 = icmp eq i32 %31, 0
  br i1 %tobool.not.15, label %if.end.15, label %if.then3

if.end.15:                                        ; preds = %land.lhs.true.15, %if.end.14
  %num_views_minus1.16 = getelementptr inbounds i8, ptr %p_Vid, i64 778180
  %32 = load i32, ptr %num_views_minus1.16, align 4
  %cmp1.16 = icmp sgt i32 %32, -1
  br i1 %cmp1.16, label %land.lhs.true.16, label %if.end.16

land.lhs.true.16:                                 ; preds = %if.end.15
  %incdec.ptr.15 = getelementptr inbounds i8, ptr %p_Vid, i64 774048
  %33 = load i32, ptr %incdec.ptr.15, align 8
  %tobool.not.16 = icmp eq i32 %33, 0
  br i1 %tobool.not.16, label %if.end.16, label %if.then3

if.end.16:                                        ; preds = %land.lhs.true.16, %if.end.15
  %num_views_minus1.17 = getelementptr inbounds i8, ptr %p_Vid, i64 782844
  %34 = load i32, ptr %num_views_minus1.17, align 4
  %cmp1.17 = icmp sgt i32 %34, -1
  br i1 %cmp1.17, label %land.lhs.true.17, label %if.end.17

land.lhs.true.17:                                 ; preds = %if.end.16
  %incdec.ptr.16 = getelementptr inbounds i8, ptr %p_Vid, i64 778712
  %35 = load i32, ptr %incdec.ptr.16, align 8
  %tobool.not.17 = icmp eq i32 %35, 0
  br i1 %tobool.not.17, label %if.end.17, label %if.then3

if.end.17:                                        ; preds = %land.lhs.true.17, %if.end.16
  %num_views_minus1.18 = getelementptr inbounds i8, ptr %p_Vid, i64 787508
  %36 = load i32, ptr %num_views_minus1.18, align 4
  %cmp1.18 = icmp sgt i32 %36, -1
  br i1 %cmp1.18, label %land.lhs.true.18, label %if.end.18

land.lhs.true.18:                                 ; preds = %if.end.17
  %incdec.ptr.17 = getelementptr inbounds i8, ptr %p_Vid, i64 783376
  %37 = load i32, ptr %incdec.ptr.17, align 8
  %tobool.not.18 = icmp eq i32 %37, 0
  br i1 %tobool.not.18, label %if.end.18, label %if.then3

if.end.18:                                        ; preds = %land.lhs.true.18, %if.end.17
  %num_views_minus1.19 = getelementptr inbounds i8, ptr %p_Vid, i64 792172
  %38 = load i32, ptr %num_views_minus1.19, align 4
  %cmp1.19 = icmp sgt i32 %38, -1
  br i1 %cmp1.19, label %land.lhs.true.19, label %if.end.19

land.lhs.true.19:                                 ; preds = %if.end.18
  %incdec.ptr.18 = getelementptr inbounds i8, ptr %p_Vid, i64 788040
  %39 = load i32, ptr %incdec.ptr.18, align 8
  %tobool.not.19 = icmp eq i32 %39, 0
  br i1 %tobool.not.19, label %if.end.19, label %if.then3

if.end.19:                                        ; preds = %land.lhs.true.19, %if.end.18
  %num_views_minus1.20 = getelementptr inbounds i8, ptr %p_Vid, i64 796836
  %40 = load i32, ptr %num_views_minus1.20, align 4
  %cmp1.20 = icmp sgt i32 %40, -1
  br i1 %cmp1.20, label %land.lhs.true.20, label %if.end.20

land.lhs.true.20:                                 ; preds = %if.end.19
  %incdec.ptr.19 = getelementptr inbounds i8, ptr %p_Vid, i64 792704
  %41 = load i32, ptr %incdec.ptr.19, align 8
  %tobool.not.20 = icmp eq i32 %41, 0
  br i1 %tobool.not.20, label %if.end.20, label %if.then3

if.end.20:                                        ; preds = %land.lhs.true.20, %if.end.19
  %num_views_minus1.21 = getelementptr inbounds i8, ptr %p_Vid, i64 801500
  %42 = load i32, ptr %num_views_minus1.21, align 4
  %cmp1.21 = icmp sgt i32 %42, -1
  br i1 %cmp1.21, label %land.lhs.true.21, label %if.end.21

land.lhs.true.21:                                 ; preds = %if.end.20
  %incdec.ptr.20 = getelementptr inbounds i8, ptr %p_Vid, i64 797368
  %43 = load i32, ptr %incdec.ptr.20, align 8
  %tobool.not.21 = icmp eq i32 %43, 0
  br i1 %tobool.not.21, label %if.end.21, label %if.then3

if.end.21:                                        ; preds = %land.lhs.true.21, %if.end.20
  %num_views_minus1.22 = getelementptr inbounds i8, ptr %p_Vid, i64 806164
  %44 = load i32, ptr %num_views_minus1.22, align 4
  %cmp1.22 = icmp sgt i32 %44, -1
  br i1 %cmp1.22, label %land.lhs.true.22, label %if.end.22

land.lhs.true.22:                                 ; preds = %if.end.21
  %incdec.ptr.21 = getelementptr inbounds i8, ptr %p_Vid, i64 802032
  %45 = load i32, ptr %incdec.ptr.21, align 8
  %tobool.not.22 = icmp eq i32 %45, 0
  br i1 %tobool.not.22, label %if.end.22, label %if.then3

if.end.22:                                        ; preds = %land.lhs.true.22, %if.end.21
  %num_views_minus1.23 = getelementptr inbounds i8, ptr %p_Vid, i64 810828
  %46 = load i32, ptr %num_views_minus1.23, align 4
  %cmp1.23 = icmp sgt i32 %46, -1
  br i1 %cmp1.23, label %land.lhs.true.23, label %if.end.23

land.lhs.true.23:                                 ; preds = %if.end.22
  %incdec.ptr.22 = getelementptr inbounds i8, ptr %p_Vid, i64 806696
  %47 = load i32, ptr %incdec.ptr.22, align 8
  %tobool.not.23 = icmp eq i32 %47, 0
  br i1 %tobool.not.23, label %if.end.23, label %if.then3

if.end.23:                                        ; preds = %land.lhs.true.23, %if.end.22
  %num_views_minus1.24 = getelementptr inbounds i8, ptr %p_Vid, i64 815492
  %48 = load i32, ptr %num_views_minus1.24, align 4
  %cmp1.24 = icmp sgt i32 %48, -1
  br i1 %cmp1.24, label %land.lhs.true.24, label %if.end.24

land.lhs.true.24:                                 ; preds = %if.end.23
  %incdec.ptr.23 = getelementptr inbounds i8, ptr %p_Vid, i64 811360
  %49 = load i32, ptr %incdec.ptr.23, align 8
  %tobool.not.24 = icmp eq i32 %49, 0
  br i1 %tobool.not.24, label %if.end.24, label %if.then3

if.end.24:                                        ; preds = %land.lhs.true.24, %if.end.23
  %num_views_minus1.25 = getelementptr inbounds i8, ptr %p_Vid, i64 820156
  %50 = load i32, ptr %num_views_minus1.25, align 4
  %cmp1.25 = icmp sgt i32 %50, -1
  br i1 %cmp1.25, label %land.lhs.true.25, label %if.end.25

land.lhs.true.25:                                 ; preds = %if.end.24
  %incdec.ptr.24 = getelementptr inbounds i8, ptr %p_Vid, i64 816024
  %51 = load i32, ptr %incdec.ptr.24, align 8
  %tobool.not.25 = icmp eq i32 %51, 0
  br i1 %tobool.not.25, label %if.end.25, label %if.then3

if.end.25:                                        ; preds = %land.lhs.true.25, %if.end.24
  %num_views_minus1.26 = getelementptr inbounds i8, ptr %p_Vid, i64 824820
  %52 = load i32, ptr %num_views_minus1.26, align 4
  %cmp1.26 = icmp sgt i32 %52, -1
  br i1 %cmp1.26, label %land.lhs.true.26, label %if.end.26

land.lhs.true.26:                                 ; preds = %if.end.25
  %incdec.ptr.25 = getelementptr inbounds i8, ptr %p_Vid, i64 820688
  %53 = load i32, ptr %incdec.ptr.25, align 8
  %tobool.not.26 = icmp eq i32 %53, 0
  br i1 %tobool.not.26, label %if.end.26, label %if.then3

if.end.26:                                        ; preds = %land.lhs.true.26, %if.end.25
  %num_views_minus1.27 = getelementptr inbounds i8, ptr %p_Vid, i64 829484
  %54 = load i32, ptr %num_views_minus1.27, align 4
  %cmp1.27 = icmp sgt i32 %54, -1
  br i1 %cmp1.27, label %land.lhs.true.27, label %if.end.27

land.lhs.true.27:                                 ; preds = %if.end.26
  %incdec.ptr.26 = getelementptr inbounds i8, ptr %p_Vid, i64 825352
  %55 = load i32, ptr %incdec.ptr.26, align 8
  %tobool.not.27 = icmp eq i32 %55, 0
  br i1 %tobool.not.27, label %if.end.27, label %if.then3

if.end.27:                                        ; preds = %land.lhs.true.27, %if.end.26
  %num_views_minus1.28 = getelementptr inbounds i8, ptr %p_Vid, i64 834148
  %56 = load i32, ptr %num_views_minus1.28, align 4
  %cmp1.28 = icmp sgt i32 %56, -1
  br i1 %cmp1.28, label %land.lhs.true.28, label %if.end.28

land.lhs.true.28:                                 ; preds = %if.end.27
  %incdec.ptr.27 = getelementptr inbounds i8, ptr %p_Vid, i64 830016
  %57 = load i32, ptr %incdec.ptr.27, align 8
  %tobool.not.28 = icmp eq i32 %57, 0
  br i1 %tobool.not.28, label %if.end.28, label %if.then3

if.end.28:                                        ; preds = %land.lhs.true.28, %if.end.27
  %num_views_minus1.29 = getelementptr inbounds i8, ptr %p_Vid, i64 838812
  %58 = load i32, ptr %num_views_minus1.29, align 4
  %cmp1.29 = icmp sgt i32 %58, -1
  br i1 %cmp1.29, label %land.lhs.true.29, label %if.end.29

land.lhs.true.29:                                 ; preds = %if.end.28
  %incdec.ptr.28 = getelementptr inbounds i8, ptr %p_Vid, i64 834680
  %59 = load i32, ptr %incdec.ptr.28, align 8
  %tobool.not.29 = icmp eq i32 %59, 0
  br i1 %tobool.not.29, label %if.end.29, label %if.then3

if.end.29:                                        ; preds = %land.lhs.true.29, %if.end.28
  %num_views_minus1.30 = getelementptr inbounds i8, ptr %p_Vid, i64 843476
  %60 = load i32, ptr %num_views_minus1.30, align 4
  %cmp1.30 = icmp sgt i32 %60, -1
  br i1 %cmp1.30, label %land.lhs.true.30, label %if.end.30

land.lhs.true.30:                                 ; preds = %if.end.29
  %incdec.ptr.29 = getelementptr inbounds i8, ptr %p_Vid, i64 839344
  %61 = load i32, ptr %incdec.ptr.29, align 8
  %tobool.not.30 = icmp eq i32 %61, 0
  br i1 %tobool.not.30, label %if.end.30, label %if.then3

if.end.30:                                        ; preds = %land.lhs.true.30, %if.end.29
  %num_views_minus1.31 = getelementptr inbounds i8, ptr %p_Vid, i64 848140
  %62 = load i32, ptr %num_views_minus1.31, align 4
  %cmp1.31 = icmp sgt i32 %62, -1
  br i1 %cmp1.31, label %land.lhs.true.31, label %if.end4

land.lhs.true.31:                                 ; preds = %if.end.30
  %incdec.ptr.30 = getelementptr inbounds i8, ptr %p_Vid, i64 844008
  %63 = load i32, ptr %incdec.ptr.30, align 8
  %tobool.not.31 = icmp eq i32 %63, 0
  br i1 %tobool.not.31, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true.31, %land.lhs.true.30, %land.lhs.true.29, %land.lhs.true.28, %land.lhs.true.27, %land.lhs.true.26, %land.lhs.true.25, %land.lhs.true.24, %land.lhs.true.23, %land.lhs.true.22, %land.lhs.true.21, %land.lhs.true.20, %land.lhs.true.19, %land.lhs.true.18, %land.lhs.true.17, %land.lhs.true.16, %land.lhs.true.15, %land.lhs.true.14, %land.lhs.true.13, %land.lhs.true.12, %land.lhs.true.11, %land.lhs.true.10, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true.7, %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %curr_subset_sps.016.lcssa = phi ptr [ %SubsetSeqParSet, %land.lhs.true ], [ %incdec.ptr, %land.lhs.true.1 ], [ %incdec.ptr.1, %land.lhs.true.2 ], [ %incdec.ptr.2, %land.lhs.true.3 ], [ %incdec.ptr.3, %land.lhs.true.4 ], [ %incdec.ptr.4, %land.lhs.true.5 ], [ %incdec.ptr.5, %land.lhs.true.6 ], [ %incdec.ptr.6, %land.lhs.true.7 ], [ %incdec.ptr.7, %land.lhs.true.8 ], [ %incdec.ptr.8, %land.lhs.true.9 ], [ %incdec.ptr.9, %land.lhs.true.10 ], [ %incdec.ptr.10, %land.lhs.true.11 ], [ %incdec.ptr.11, %land.lhs.true.12 ], [ %incdec.ptr.12, %land.lhs.true.13 ], [ %incdec.ptr.13, %land.lhs.true.14 ], [ %incdec.ptr.14, %land.lhs.true.15 ], [ %incdec.ptr.15, %land.lhs.true.16 ], [ %incdec.ptr.16, %land.lhs.true.17 ], [ %incdec.ptr.17, %land.lhs.true.18 ], [ %incdec.ptr.18, %land.lhs.true.19 ], [ %incdec.ptr.19, %land.lhs.true.20 ], [ %incdec.ptr.20, %land.lhs.true.21 ], [ %incdec.ptr.21, %land.lhs.true.22 ], [ %incdec.ptr.22, %land.lhs.true.23 ], [ %incdec.ptr.23, %land.lhs.true.24 ], [ %incdec.ptr.24, %land.lhs.true.25 ], [ %incdec.ptr.25, %land.lhs.true.26 ], [ %incdec.ptr.26, %land.lhs.true.27 ], [ %incdec.ptr.27, %land.lhs.true.28 ], [ %incdec.ptr.28, %land.lhs.true.29 ], [ %incdec.ptr.29, %land.lhs.true.30 ], [ %incdec.ptr.30, %land.lhs.true.31 ]
  %view_id = getelementptr inbounds i8, ptr %curr_subset_sps.016.lcssa, i64 4136
  %64 = load ptr, ptr %view_id, align 8
  %65 = load i32, ptr %64, align 4
  store ptr %curr_subset_sps.016.lcssa, ptr %subset_sps, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end.30, %land.lhs.true.31, %if.then3
  %iBaseViewId.013 = phi i32 [ %65, %if.then3 ], [ 0, %land.lhs.true.31 ], [ 0, %if.end.30 ]
  ret i32 %iBaseViewId.013
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6}
