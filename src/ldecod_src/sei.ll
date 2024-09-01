; ModuleID = 'ldecod_src/sei.c'
source_filename = "ldecod_src/sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.tone_mapping_struct_tmp = type { i32, i8, i32, i8, i8, i32, i32, i32, i32, i32, [4096 x i32], i32, [4096 x i32], [4096 x i32] }

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SEI: target_frame_num\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SEI: num_spare_pics_minus1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SEI: delta_spare_frame_num\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SEI: ref_area_indicator\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SEI: ref_mb_indicator\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SEI: zero_run_length\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Wrong ref_area_indicator %d!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_layer_num\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SEI: sub_seq_id\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SEI: first_ref_pic_flag\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"SEI: leading_non_ref_pic_flag\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"SEI: last_pic_flag\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SEI: sub_seq_frame_num_flag\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_frame_num\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"SEI: num_sub_layers_minus1\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"SEI: accurate_statistics_flag\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SEI: average_bit_rate\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SEI: average_frame_rate\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SEI: duration_flag\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SEI: average_rate_flag\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"SEI: num_referenced_subseqs\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_layer_num\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"SEI: ref_sub_seq_id\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_direction\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SEI: scene_id\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"SEI: scene_transition_type\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"SEI: pan_scan_rect_id\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_cancel_flag\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"SEI: pan_scan_cnt_minus1\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_left_offset\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"SEI: pan_scan_rect_right_offset\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"SEI: pan_scan_rect_top_offset\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"SEI: pan_scan_rect_bottom_offset\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"SEI: pan_scan_rect_repetition_period\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"SEI: original_idr_flag\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"SEI: original_frame_num\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"SEI: original_field_pic_flag\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"SEI: original_bottom_field_flag\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"SEI: full_frame_freeze_repetition_period\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"SEI: snapshot_id\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"SEI: progressive_refinement_id\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"SEI: num_refinement_steps_minus1\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"SEI: num_slice_groups_minus1\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"SEI: slice_group_id\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"SEI: pan_scan_rect_flag\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"SEI: film_grain_characteristics_cancel_flag\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"SEI: model_id\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"SEI: separate_colour_description_present_flag\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"SEI: film_grain_bit_depth_luma_minus8\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"SEI: film_grain_bit_depth_chroma_minus8\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"SEI: film_grain_full_range_flag\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"SEI: film_grain_colour_primaries\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"SEI: film_grain_transfer_characteristics\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"SEI: film_grain_matrix_coefficients\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"SEI: blending_mode_id\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"SEI: log2_scale_factor\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"SEI: comp_model_present_flag\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"SEI: num_intensity_intervals_minus1\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"SEI: num_model_values_minus1\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_lower_bound\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_upper_bound\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"SEI: comp_model_value\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"SEI: film_grain_characteristics_repetition_period\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"SEI: deblocking_display_preference_cancel_flag\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"SEI: display_prior_to_deblocking_preferred_flag\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"SEI: dec_frame_buffering_constraint_flag\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"SEI: deblocking_display_preference_repetition_period\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"SEI: field_views_flags\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"SEI: top_field_is_left_view_flag\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"SEI: current_frame_is_left_view_flag\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"SEI: next_frame_is_second_view_flag\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"SEI: left_view_self_contained_flag\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"SEI: right_view_self_contained_flag\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"SEI: seq_parameter_set_id\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"SEI: initial_cpb_removal_delay\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"SEI: initial_cpb_removal_delay_offset\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [53 x i8] c"Warning: no active SPS, timing SEI cannot be parsed\0A\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"SEI: cpb_removal_delay\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"SEI: dpb_output_delay\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"SEI: pic_struct\00", align 1
@.str.84 = private unnamed_addr constant [61 x i8] c"reserved picture_structure used (can't determine NumClockTs)\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"SEI: clock_time_stamp_flag\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"SEI: ct_type\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"SEI: nuit_field_based_flag\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"SEI: counting_type\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"SEI: full_timestamp_flag\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"SEI: discontinuity_flag\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"SEI: cnt_dropped_flag\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"SEI: nframes\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"SEI: seconds_value\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"SEI: minutes_value\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"SEI: hours_value\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"SEI: seconds_flag\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"SEI: minutes_flag\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"SEI: hours_flag\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"SEI: time_offset\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"SEI: frame_packing_arrangement_id\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"SEI: frame_packing_arrangement_cancel_flag\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"SEI: frame_packing_arrangement_type\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"SEI: quincunx_sampling_flag\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"SEI: content_interpretation_type\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"SEI: spatial_flipping_flag\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"SEI: frame0_flipped_flag\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"SEI: field_views_flag\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"SEI: current_frame_is_frame0_flag\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"SEI: frame0_self_contained_flag\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"SEI: frame1_self_contained_flag\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_x\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_y\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_x\00", align 1
@.str.114 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_y\00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"SEI: frame_packing_arrangement_reserved_byte\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"SEI: frame_packing_arrangement_repetition_period\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"SEI: frame_packing_arrangement_extension_flag\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"SEI: tone_map_id\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"SEI: tone_map_cancel_flag\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"SEI: tone_map_repetition_period\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"SEI: coded_data_bit_depth\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"SEI: sei_bit_depth\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"SEI: min_value\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"SEI: sigmoid_midpoint\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"SEI: sigmoid_width\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"SEI: start_of_coded_interval\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"SEI: num_pivots\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"SEI: coded_pivot_value\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"SEI: sei_pivot_value\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_y\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_x\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"SEI: filter_hint_type\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"SEI: filter_hint\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"SEI: additional_extension_flag\00", align 1
@switch.table.interpret_picture_timing_info = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 3], align 4

; Function Attrs: nounwind uwtable
define dso_local void @InterpretSEIMessage(ptr noundef %msg, i32 noundef %size, ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #0 {
entry:
  %recovery_point.i = getelementptr inbounds i8, ptr %p_Vid, i64 849260
  %recovery_frame_cnt5.i = getelementptr inbounds i8, ptr %p_Vid, i64 849268
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %entry
  %offset.0 = phi i32 [ 1, %entry ], [ %add96, %sw.epilog ]
  %0 = sext i32 %offset.0 to i64
  %1 = add i32 %offset.0, 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.body
  %indvars.iv281 = phi i32 [ %indvars.iv.next282, %while.cond ], [ %1, %do.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ %0, %do.body ]
  %payload_type.0 = phi i32 [ %add, %while.cond ], [ 0, %do.body ]
  %tmp_byte.0.in = getelementptr inbounds i8, ptr %msg, i64 %indvars.iv
  %tmp_byte.0 = load i8, ptr %tmp_byte.0.in, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i8 %tmp_byte.0, -1
  %add = add nuw nsw i32 %payload_type.0, 255
  %indvars.iv.next282 = add i32 %indvars.iv281, 1
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %2 = trunc nsw i64 %indvars.iv to i32
  %conv = zext i8 %tmp_byte.0 to i32
  %add6 = add nuw nsw i32 %payload_type.0, %conv
  %inc7 = add nsw i32 %2, 2
  %sext = shl i64 %indvars.iv.next, 32
  %idxprom8.pn271 = ashr exact i64 %sext, 32
  %tmp_byte.1.in272 = getelementptr inbounds i8, ptr %msg, i64 %idxprom8.pn271
  %tmp_byte.1273 = load i8, ptr %tmp_byte.1.in272, align 1
  %cmp12274 = icmp eq i8 %tmp_byte.1273, -1
  br i1 %cmp12274, label %while.body14.preheader, label %while.end19

while.body14.preheader:                           ; preds = %while.end
  %3 = sext i32 %indvars.iv281 to i64
  br label %while.body14

while.body14:                                     ; preds = %while.body14.preheader, %while.body14
  %indvars.iv283 = phi i64 [ %3, %while.body14.preheader ], [ %indvars.iv.next284, %while.body14 ]
  %payload_size.0275 = phi i32 [ 0, %while.body14.preheader ], [ %add15, %while.body14 ]
  %add15 = add nuw nsw i32 %payload_size.0275, 255
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1
  %tmp_byte.1.in = getelementptr inbounds i8, ptr %msg, i64 %indvars.iv283
  %tmp_byte.1 = load i8, ptr %tmp_byte.1.in, align 1
  %cmp12 = icmp eq i8 %tmp_byte.1, -1
  br i1 %cmp12, label %while.body14, label %while.end19.loopexit

while.end19.loopexit:                             ; preds = %while.body14
  %4 = trunc nsw i64 %indvars.iv.next284 to i32
  br label %while.end19

while.end19:                                      ; preds = %while.end19.loopexit, %while.end
  %payload_size.0.lcssa = phi i32 [ 0, %while.end ], [ %add15, %while.end19.loopexit ]
  %offset.2.lcssa = phi i32 [ %inc7, %while.end ], [ %4, %while.end19.loopexit ]
  %tmp_byte.1.lcssa = phi i8 [ %tmp_byte.1273, %while.end ], [ %tmp_byte.1, %while.end19.loopexit ]
  %conv11 = zext i8 %tmp_byte.1.lcssa to i32
  %add21 = add nuw nsw i32 %payload_size.0.lcssa, %conv11
  switch i32 %add6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb25
    i32 3, label %sw.bb28
    i32 45, label %sw.bb91
    i32 22, label %sw.bb88
    i32 6, label %sw.bb37
    i32 7, label %sw.bb40
    i32 8, label %sw.bb43
    i32 9, label %sw.bb46
    i32 10, label %sw.bb49
    i32 11, label %sw.bb52
    i32 12, label %sw.bb55
    i32 13, label %sw.bb58
    i32 23, label %sw.bb85
    i32 15, label %sw.bb64
    i32 16, label %sw.bb67
    i32 17, label %sw.bb70
    i32 18, label %sw.bb73
    i32 19, label %while.end19.sw.bb76_crit_edge
    i32 20, label %sw.bb79
    i32 21, label %sw.bb82
  ]

while.end19.sw.bb76_crit_edge:                    ; preds = %while.end19
  %.pre = sext i32 %offset.2.lcssa to i64
  br label %sw.bb76

sw.bb:                                            ; preds = %while.end19
  %idx.ext = sext i32 %offset.2.lcssa to i64
  %add.ptr = getelementptr inbounds i8, ptr %msg, i64 %idx.ext
  tail call void @interpret_buffering_period_info(ptr noundef %add.ptr, i32 noundef %add21, ptr noundef %p_Vid)
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.end19
  %idx.ext23 = sext i32 %offset.2.lcssa to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext23
  tail call void @interpret_picture_timing_info(ptr noundef %add.ptr24, i32 noundef %add21, ptr noundef %p_Vid)
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.end19
  %idx.ext26 = sext i32 %offset.2.lcssa to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext26
  tail call void @interpret_pan_scan_rect_info(ptr noundef %add.ptr27, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb28:                                          ; preds = %while.end19
  %idx.ext29 = sext i32 %offset.2.lcssa to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext29
  %cmp5.i.not = icmp eq i32 %add21, 0
  br i1 %cmp5.i.not, label %sw.epilog, label %while.body.i

while.body.i:                                     ; preds = %sw.bb28, %while.body.i
  %payload_cnt.06.i = phi i32 [ %spec.select.i, %while.body.i ], [ 0, %sw.bb28 ]
  %idxprom.i = zext nneg i32 %payload_cnt.06.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr30, i64 %idxprom.i
  %5 = load i8, ptr %arrayidx.i, align 1
  %cmp1.i = icmp eq i8 %5, -1
  %inc.i = zext i1 %cmp1.i to i32
  %spec.select.i = add nuw nsw i32 %payload_cnt.06.i, %inc.i
  %cmp.i = icmp ult i32 %spec.select.i, %add21
  br i1 %cmp.i, label %while.body.i, label %sw.epilog

sw.bb37:                                          ; preds = %while.end19
  %idx.ext38 = sext i32 %offset.2.lcssa to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext38
  %call.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i = getelementptr inbounds i8, ptr %call.i, i64 12
  store i32 %add21, ptr %bitstream_length.i, align 4
  %streamBuffer.i = getelementptr inbounds i8, ptr %call.i, i64 16
  store ptr %add.ptr39, ptr %streamBuffer.i, align 8
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %call.i, i64 8
  store i32 0, ptr %frame_bitoffset.i, align 8
  %6 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i = getelementptr inbounds i8, ptr %6, i64 24
  store i32 0, ptr %UsedBits.i, align 8
  %call1.i = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %call.i) #17
  %call2.i = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call.i) #17
  %call3.i = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %call.i) #17
  %call4.i = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %call.i) #17
  store i32 1, ptr %recovery_point.i, align 4
  store i32 %call1.i, ptr %recovery_frame_cnt5.i, align 4
  tail call void @free(ptr noundef %call.i) #17
  br label %sw.epilog

sw.bb40:                                          ; preds = %while.end19
  %idx.ext41 = sext i32 %offset.2.lcssa to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext41
  tail call void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %add.ptr42, i32 noundef %add21, ptr noundef %p_Vid, ptr noundef %pSlice)
  br label %sw.epilog

sw.bb43:                                          ; preds = %while.end19
  %idx.ext44 = sext i32 %offset.2.lcssa to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext44
  tail call void @interpret_spare_pic(ptr noundef %add.ptr45, i32 noundef %add21, ptr noundef %p_Vid)
  br label %sw.epilog

sw.bb46:                                          ; preds = %while.end19
  %idx.ext47 = sext i32 %offset.2.lcssa to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext47
  %call.i221 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i222 = getelementptr inbounds i8, ptr %call.i221, i64 12
  store i32 %add21, ptr %bitstream_length.i222, align 4
  %streamBuffer.i223 = getelementptr inbounds i8, ptr %call.i221, i64 16
  store ptr %add.ptr48, ptr %streamBuffer.i223, align 8
  %frame_bitoffset.i224 = getelementptr inbounds i8, ptr %call.i221, i64 8
  store i32 0, ptr %frame_bitoffset.i224, align 8
  %7 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i225 = getelementptr inbounds i8, ptr %7, i64 24
  store i32 0, ptr %UsedBits.i225, align 8
  %call1.i226 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %call.i221) #17
  %call2.i227 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %call.i221) #17
  %cmp.i228 = icmp sgt i32 %call2.i227, 3
  br i1 %cmp.i228, label %if.then.i, label %interpret_scene_information.exit

if.then.i:                                        ; preds = %sw.bb46
  %call3.i229 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i221) #17
  br label %interpret_scene_information.exit

interpret_scene_information.exit:                 ; preds = %sw.bb46, %if.then.i
  tail call void @free(ptr noundef nonnull %call.i221) #17
  br label %sw.epilog

sw.bb49:                                          ; preds = %while.end19
  %idx.ext50 = sext i32 %offset.2.lcssa to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext50
  tail call void @interpret_subsequence_info(ptr noundef %add.ptr51, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb52:                                          ; preds = %while.end19
  %idx.ext53 = sext i32 %offset.2.lcssa to i64
  %add.ptr54 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext53
  %call.i230 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i231 = getelementptr inbounds i8, ptr %call.i230, i64 12
  store i32 %add21, ptr %bitstream_length.i231, align 4
  %streamBuffer.i232 = getelementptr inbounds i8, ptr %call.i230, i64 16
  store ptr %add.ptr54, ptr %streamBuffer.i232, align 8
  %frame_bitoffset.i233 = getelementptr inbounds i8, ptr %call.i230, i64 8
  store i32 0, ptr %frame_bitoffset.i233, align 8
  %8 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i234 = getelementptr inbounds i8, ptr %8, i64 24
  store i32 0, ptr %UsedBits.i234, align 8
  %call1.i235 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %call.i230) #17
  %cmp.not18.i = icmp slt i32 %call1.i235, 0
  br i1 %cmp.not18.i, label %interpret_subsequence_layer_characteristics_info.exit, label %for.body.i

for.body.i:                                       ; preds = %sw.bb52, %for.body.i
  %i.019.i = phi i32 [ %inc.i237, %for.body.i ], [ 0, %sw.bb52 ]
  %call4.i236 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %call.i230) #17
  %call6.i = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %call.i230) #17
  %call8.i = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %call.i230) #17
  %inc.i237 = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %i.019.i, %call1.i235
  br i1 %exitcond.not.i, label %interpret_subsequence_layer_characteristics_info.exit, label %for.body.i

interpret_subsequence_layer_characteristics_info.exit: ; preds = %for.body.i, %sw.bb52
  tail call void @free(ptr noundef %call.i230) #17
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.end19
  %idx.ext56 = sext i32 %offset.2.lcssa to i64
  %add.ptr57 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext56
  tail call void @interpret_subsequence_characteristics_info(ptr noundef %add.ptr57, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb58:                                          ; preds = %while.end19
  %idx.ext59 = sext i32 %offset.2.lcssa to i64
  %add.ptr60 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext59
  %call.i238 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i239 = getelementptr inbounds i8, ptr %call.i238, i64 12
  store i32 %add21, ptr %bitstream_length.i239, align 4
  %streamBuffer.i240 = getelementptr inbounds i8, ptr %call.i238, i64 16
  store ptr %add.ptr60, ptr %streamBuffer.i240, align 8
  %frame_bitoffset.i241 = getelementptr inbounds i8, ptr %call.i238, i64 8
  store i32 0, ptr %frame_bitoffset.i241, align 8
  %call1.i242 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %call.i238) #17
  tail call void @free(ptr noundef %call.i238) #17
  br label %sw.epilog

sw.bb64:                                          ; preds = %while.end19
  %idx.ext65 = sext i32 %offset.2.lcssa to i64
  %add.ptr66 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext65
  %call.i243 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i244 = getelementptr inbounds i8, ptr %call.i243, i64 12
  store i32 %add21, ptr %bitstream_length.i244, align 4
  %streamBuffer.i245 = getelementptr inbounds i8, ptr %call.i243, i64 16
  store ptr %add.ptr66, ptr %streamBuffer.i245, align 8
  %frame_bitoffset.i246 = getelementptr inbounds i8, ptr %call.i243, i64 8
  store i32 0, ptr %frame_bitoffset.i246, align 8
  %9 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i247 = getelementptr inbounds i8, ptr %9, i64 24
  store i32 0, ptr %UsedBits.i247, align 8
  %call1.i248 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %call.i243) #17
  tail call void @free(ptr noundef %call.i243) #17
  br label %sw.epilog

sw.bb67:                                          ; preds = %while.end19
  %idx.ext68 = sext i32 %offset.2.lcssa to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext68
  %call.i249 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i250 = getelementptr inbounds i8, ptr %call.i249, i64 12
  store i32 %add21, ptr %bitstream_length.i250, align 4
  %streamBuffer.i251 = getelementptr inbounds i8, ptr %call.i249, i64 16
  store ptr %add.ptr69, ptr %streamBuffer.i251, align 8
  %frame_bitoffset.i252 = getelementptr inbounds i8, ptr %call.i249, i64 8
  store i32 0, ptr %frame_bitoffset.i252, align 8
  %10 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i253 = getelementptr inbounds i8, ptr %10, i64 24
  store i32 0, ptr %UsedBits.i253, align 8
  %call1.i254 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call.i249) #17
  %call2.i255 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %call.i249) #17
  tail call void @free(ptr noundef %call.i249) #17
  br label %sw.epilog

sw.bb70:                                          ; preds = %while.end19
  %idx.ext71 = sext i32 %offset.2.lcssa to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext71
  %call.i256 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i257 = getelementptr inbounds i8, ptr %call.i256, i64 12
  store i32 %add21, ptr %bitstream_length.i257, align 4
  %streamBuffer.i258 = getelementptr inbounds i8, ptr %call.i256, i64 16
  store ptr %add.ptr72, ptr %streamBuffer.i258, align 8
  %frame_bitoffset.i259 = getelementptr inbounds i8, ptr %call.i256, i64 8
  store i32 0, ptr %frame_bitoffset.i259, align 8
  %11 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i260 = getelementptr inbounds i8, ptr %11, i64 24
  store i32 0, ptr %UsedBits.i260, align 8
  %call1.i261 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call.i256) #17
  tail call void @free(ptr noundef %call.i256) #17
  br label %sw.epilog

sw.bb73:                                          ; preds = %while.end19
  %idx.ext74 = sext i32 %offset.2.lcssa to i64
  %add.ptr75 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext74
  tail call void @interpret_motion_constrained_slice_group_set_info(ptr noundef %add.ptr75, i32 noundef %add21, ptr poison)
  br label %sw.bb76

sw.bb76:                                          ; preds = %while.end19.sw.bb76_crit_edge, %sw.bb73
  %idx.ext77.pre-phi = phi i64 [ %.pre, %while.end19.sw.bb76_crit_edge ], [ %idx.ext74, %sw.bb73 ]
  %add.ptr78 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext77.pre-phi
  tail call void @interpret_film_grain_characteristics_info(ptr noundef %add.ptr78, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.end19
  %idx.ext80 = sext i32 %offset.2.lcssa to i64
  %add.ptr81 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext80
  %call.i262 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length.i263 = getelementptr inbounds i8, ptr %call.i262, i64 12
  store i32 %add21, ptr %bitstream_length.i263, align 4
  %streamBuffer.i264 = getelementptr inbounds i8, ptr %call.i262, i64 16
  store ptr %add.ptr81, ptr %streamBuffer.i264, align 8
  %frame_bitoffset.i265 = getelementptr inbounds i8, ptr %call.i262, i64 8
  store i32 0, ptr %frame_bitoffset.i265, align 8
  %call1.i266 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %call.i262) #17
  %tobool.not.i = icmp eq i32 %call1.i266, 0
  br i1 %tobool.not.i, label %if.then.i267, label %interpret_deblocking_filter_display_preference_info.exit

if.then.i267:                                     ; preds = %sw.bb79
  %call2.i268 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef nonnull %call.i262) #17
  %call3.i269 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef nonnull %call.i262) #17
  %call4.i270 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef nonnull %call.i262) #17
  br label %interpret_deblocking_filter_display_preference_info.exit

interpret_deblocking_filter_display_preference_info.exit: ; preds = %sw.bb79, %if.then.i267
  tail call void @free(ptr noundef nonnull %call.i262) #17
  br label %sw.epilog

sw.bb82:                                          ; preds = %while.end19
  %idx.ext83 = sext i32 %offset.2.lcssa to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext83
  tail call void @interpret_stereo_video_info_info(ptr noundef %add.ptr84, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb85:                                          ; preds = %while.end19
  %idx.ext86 = sext i32 %offset.2.lcssa to i64
  %add.ptr87 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext86
  tail call void @interpret_tone_mapping(ptr noundef %add.ptr87, i32 noundef %add21, ptr noundef %p_Vid)
  br label %sw.epilog

sw.bb88:                                          ; preds = %while.end19
  %idx.ext89 = sext i32 %offset.2.lcssa to i64
  %add.ptr90 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext89
  tail call void @interpret_post_filter_hints_info(ptr noundef %add.ptr90, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.bb91:                                          ; preds = %while.end19
  %idx.ext92 = sext i32 %offset.2.lcssa to i64
  %add.ptr93 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext92
  tail call void @interpret_frame_packing_arrangement_info(ptr noundef %add.ptr93, i32 noundef %add21, ptr poison)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.i, %while.end19, %sw.bb28, %sw.bb91, %sw.bb88, %sw.bb85, %sw.bb82, %interpret_deblocking_filter_display_preference_info.exit, %sw.bb76, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb58, %sw.bb55, %interpret_subsequence_layer_characteristics_info.exit, %sw.bb49, %interpret_scene_information.exit, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb25, %sw.bb22, %sw.bb
  %add96 = add nsw i32 %add21, %offset.2.lcssa
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %msg, i64 %idxprom97
  %12 = load i8, ptr %arrayidx98, align 1
  %cmp100.not = icmp eq i8 %12, -128
  br i1 %cmp100.not, label %do.end, label %do.body

do.end:                                           ; preds = %sw.epilog
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @interpret_buffering_period_info(ptr noundef %payload, i32 noundef %size, ptr noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.77, ptr noundef %call) #17
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom
  tail call void @activate_sps(ptr noundef %p_Vid, ptr noundef nonnull %arrayidx) #17
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3168
  %1 = load i32, ptr %vui_parameters_present_flag, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end37, label %if.then

if.then:                                          ; preds = %entry
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3248
  %2 = load i32, ptr %nal_hrd_parameters_present_flag, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %nal_hrd_parameters = getelementptr inbounds i8, ptr %arrayidx, i64 3252
  %3 = load i32, ptr %nal_hrd_parameters, align 4
  %cmp60.not = icmp eq i32 %3, -1
  br i1 %cmp60.not, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 3648
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %k.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %4 = load i32, ptr %initial_cpb_removal_delay_length_minus1, align 4
  %add7 = add i32 %4, 1
  %call8 = tail call i32 @u_v(i32 noundef %add7, ptr noundef nonnull @.str.78, ptr noundef %call) #17
  %5 = load i32, ptr %initial_cpb_removal_delay_length_minus1, align 4
  %add12 = add i32 %5, 1
  %call13 = tail call i32 @u_v(i32 noundef %add12, ptr noundef nonnull @.str.79, ptr noundef %call) #17
  %inc = add nuw i32 %k.061, 1
  %6 = load i32, ptr %nal_hrd_parameters, align 4
  %add = add i32 %6, 1
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %for.cond.preheader, %if.then
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3664
  %7 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %if.end37, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.end
  %vcl_hrd_parameters = getelementptr inbounds i8, ptr %arrayidx, i64 3668
  %8 = load i32, ptr %vcl_hrd_parameters, align 4
  %cmp2163.not = icmp eq i32 %8, -1
  br i1 %cmp2163.not, label %if.end37, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.cond17.preheader
  %initial_cpb_removal_delay_length_minus125 = getelementptr inbounds i8, ptr %arrayidx, i64 4064
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %k.164 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc34, %for.body22 ]
  %9 = load i32, ptr %initial_cpb_removal_delay_length_minus125, align 4
  %add26 = add i32 %9, 1
  %call27 = tail call i32 @u_v(i32 noundef %add26, ptr noundef nonnull @.str.78, ptr noundef %call) #17
  %10 = load i32, ptr %initial_cpb_removal_delay_length_minus125, align 4
  %add31 = add i32 %10, 1
  %call32 = tail call i32 @u_v(i32 noundef %add31, ptr noundef nonnull @.str.79, ptr noundef %call) #17
  %inc34 = add nuw i32 %k.164, 1
  %11 = load i32, ptr %vcl_hrd_parameters, align 4
  %add20 = add i32 %11, 1
  %cmp21 = icmp ult i32 %inc34, %add20
  br i1 %cmp21, label %for.body22, label %if.end37

if.end37:                                         ; preds = %for.body22, %for.cond17.preheader, %if.end, %entry
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_picture_timing_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %2 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call2, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call2, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call2, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %3 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %UsedBits, align 8
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3168
  %4 = load i32, ptr %vui_parameters_present_flag, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end112, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3248
  %5 = load i32, ptr %nal_hrd_parameters_present_flag, align 4
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %lor.rhs, label %if.end32

lor.rhs:                                          ; preds = %land.rhs
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3664
  %6 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.else47, label %lor.lhs.false

if.end32:                                         ; preds = %land.rhs
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %0, i64 3652
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %0, i64 3656
  br label %if.end43

lor.lhs.false:                                    ; preds = %lor.rhs
  %dpb_output_delay_length_minus128 = getelementptr inbounds i8, ptr %0, i64 4072
  %cpb_removal_delay_length_minus124 = getelementptr inbounds i8, ptr %0, i64 4068
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %lor.lhs.false
  %dpb_output_len.0186.in.in = phi ptr [ %dpb_output_delay_length_minus128, %lor.lhs.false ], [ %dpb_output_delay_length_minus1, %if.end32 ]
  %cpb_removal_len.0184.in.in = phi ptr [ %cpb_removal_delay_length_minus124, %lor.lhs.false ], [ %cpb_removal_delay_length_minus1, %if.end32 ]
  %cpb_removal_len.0184.in = load i32, ptr %cpb_removal_len.0184.in.in, align 4
  %cpb_removal_len.0184 = add i32 %cpb_removal_len.0184.in, 1
  %dpb_output_len.0186.in = load i32, ptr %dpb_output_len.0186.in.in, align 4
  %dpb_output_len.0186 = add i32 %dpb_output_len.0186.in, 1
  %call40 = tail call i32 @u_v(i32 noundef %cpb_removal_len.0184, ptr noundef nonnull @.str.81, ptr noundef nonnull %call2) #17
  %call41 = tail call i32 @u_v(i32 noundef %dpb_output_len.0186, ptr noundef nonnull @.str.82, ptr noundef nonnull %call2) #17
  %.pr.pre = load i32, ptr %vui_parameters_present_flag, align 4
  %7 = icmp eq i32 %.pr.pre, 0
  br i1 %7, label %if.end112, label %if.else47

if.else47:                                        ; preds = %lor.rhs, %if.end43
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %0, i64 4084
  %8 = load i32, ptr %pic_struct_present_flag, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end112, label %if.then51

if.then51:                                        ; preds = %if.else47
  %call52 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull %call2) #17
  %10 = icmp ult i32 %call52, 9
  br i1 %10, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %if.then51
  tail call void @error(ptr noundef nonnull @.str.84, i32 noundef 500) #17
  br label %if.end112

switch.lookup:                                    ; preds = %if.then51
  %11 = zext nneg i32 %call52 to i64
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.interpret_picture_timing_info, i64 0, i64 %11
  %switch.load = load i32, ptr %switch.gep, align 4
  %vcl_hrd_parameters_present_flag89 = getelementptr inbounds i8, ptr %0, i64 3664
  %time_offset_length94 = getelementptr inbounds i8, ptr %0, i64 4076
  %time_offset_length102 = getelementptr inbounds i8, ptr %0, i64 3660
  br label %for.body

for.body:                                         ; preds = %switch.lookup, %for.inc
  %i.0193 = phi i32 [ 0, %switch.lookup ], [ %inc, %for.inc ]
  %call56 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %call2) #17
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc, label %if.then58

if.then58:                                        ; preds = %for.body
  %call59 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.86, ptr noundef %call2) #17
  %call60 = tail call i32 @u_1(ptr noundef nonnull @.str.87, ptr noundef %call2) #17
  %call61 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.88, ptr noundef %call2) #17
  %call62 = tail call i32 @u_1(ptr noundef nonnull @.str.89, ptr noundef %call2) #17
  %call63 = tail call i32 @u_1(ptr noundef nonnull @.str.90, ptr noundef %call2) #17
  %call64 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %call2) #17
  %call65 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.92, ptr noundef %call2) #17
  %tobool66.not = icmp eq i32 %call62, 0
  br i1 %tobool66.not, label %if.else71, label %if.then67

if.then67:                                        ; preds = %if.then58
  %call68 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %call2) #17
  %call69 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %call2) #17
  br label %if.end87.sink.split

if.else71:                                        ; preds = %if.then58
  %call72 = tail call i32 @u_1(ptr noundef nonnull @.str.96, ptr noundef %call2) #17
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end87, label %if.then74

if.then74:                                        ; preds = %if.else71
  %call75 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %call2) #17
  %call76 = tail call i32 @u_1(ptr noundef nonnull @.str.97, ptr noundef %call2) #17
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end87, label %if.then78

if.then78:                                        ; preds = %if.then74
  %call79 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %call2) #17
  %call80 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %call2) #17
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %if.end87.sink.split

if.end87.sink.split:                              ; preds = %if.then78, %if.then67
  %call83 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.95, ptr noundef %call2) #17
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %if.else71, %if.then78, %if.then74
  %12 = load i32, ptr %vcl_hrd_parameters_present_flag89, align 4
  %tobool90.not = icmp eq i32 %12, 0
  br i1 %tobool90.not, label %if.else95, label %if.end105

if.else95:                                        ; preds = %if.end87
  %13 = load i32, ptr %nal_hrd_parameters_present_flag, align 4
  %tobool98.not = icmp eq i32 %13, 0
  br i1 %tobool98.not, label %if.then107, label %if.end105

if.end105:                                        ; preds = %if.else95, %if.end87
  %time_offset_length.0.in = phi ptr [ %time_offset_length94, %if.end87 ], [ %time_offset_length102, %if.else95 ]
  %time_offset_length.0 = load i32, ptr %time_offset_length.0.in, align 4
  %tobool106.not = icmp eq i32 %time_offset_length.0, 0
  br i1 %tobool106.not, label %for.inc, label %if.then107

if.then107:                                       ; preds = %if.else95, %if.end105
  %time_offset_length.0191 = phi i32 [ %time_offset_length.0, %if.end105 ], [ 24, %if.else95 ]
  %call108 = tail call i32 @i_v(i32 noundef %time_offset_length.0191, ptr noundef nonnull @.str.99, ptr noundef %call2) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then107, %if.end105, %for.body
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %if.end112, label %for.body

if.end112:                                        ; preds = %for.inc, %sw.epilog, %if.end, %if.end43, %if.else47
  tail call void @free(ptr noundef %call2) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_pan_scan_rect_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %call) #17
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ue_v(ptr noundef nonnull @.str.28, ptr noundef nonnull %call) #17
  %cmp.not21 = icmp slt i32 %call3, 0
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %call4 = tail call i32 @se_v(ptr noundef nonnull @.str.29, ptr noundef %call) #17
  %call5 = tail call i32 @se_v(ptr noundef nonnull @.str.30, ptr noundef %call) #17
  %call6 = tail call i32 @se_v(ptr noundef nonnull @.str.31, ptr noundef %call) #17
  %call7 = tail call i32 @se_v(ptr noundef nonnull @.str.32, ptr noundef %call) #17
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %i.022, %call3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then
  %call8 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @interpret_filler_payload_info(ptr nocapture noundef readonly %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #2 {
entry:
  %cmp5 = icmp sgt i32 %size, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %payload_cnt.06 = phi i32 [ %spec.select, %while.body ], [ 0, %entry ]
  %idxprom = zext nneg i32 %payload_cnt.06 to i64
  %arrayidx = getelementptr inbounds i8, ptr %payload, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %0, -1
  %inc = zext i1 %cmp1 to i32
  %spec.select = add nuw nsw i32 %payload_cnt.06, %inc
  %cmp = icmp slt i32 %spec.select, %size
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_registered_itu_t_t35_info(ptr nocapture noundef readonly %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_unregistered_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_recovery_point_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %call) #17
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call) #17
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %call) #17
  %call4 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %call) #17
  %recovery_point = getelementptr inbounds i8, ptr %p_Vid, i64 849260
  store i32 1, ptr %recovery_point, align 4
  %recovery_frame_cnt5 = getelementptr inbounds i8, ptr %p_Vid, i64 849268
  store i32 %call1, ptr %recovery_frame_cnt5, align 4
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %payload, i32 noundef %size, ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.38, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.39, ptr noundef %call) #17
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %1 = load ptr, ptr %active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %1, i64 3136
  %2 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef nonnull %call) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.41, ptr noundef nonnull %call) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %entry
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %pSlice, i64 248
  %3 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48
  %4 = load i32, ptr %idr_flag, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %pSlice, i64 236
  %5 = load i32, ptr %no_output_of_prior_pics_flag, align 4
  %long_term_reference_flag = getelementptr inbounds i8, ptr %pSlice, i64 240
  %6 = load <2 x i32>, ptr %long_term_reference_flag, align 8
  store i32 %call1, ptr %idr_flag, align 8
  store ptr null, ptr %dec_ref_pic_marking_buffer, align 8
  tail call void @dec_ref_pic_marking(ptr noundef nonnull %p_Vid, ptr noundef nonnull %call, ptr noundef %pSlice) #17
  %7 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool11.not48 = icmp eq ptr %7, null
  br i1 %tobool11.not48, label %while.end, label %while.body

while.body:                                       ; preds = %if.end7, %while.body
  %8 = phi ptr [ %10, %while.body ], [ %7, %if.end7 ]
  %Next = getelementptr inbounds i8, ptr %8, i64 24
  %9 = load ptr, ptr %Next, align 8
  store ptr %9, ptr %dec_ref_pic_marking_buffer, align 8
  tail call void @free(ptr noundef nonnull %8) #17
  %10 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end7
  store ptr %3, ptr %dec_ref_pic_marking_buffer, align 8
  store i32 %4, ptr %idr_flag, align 8
  store i32 %5, ptr %no_output_of_prior_pics_flag, align 4
  %no_output_of_prior_pics_flag18 = getelementptr inbounds i8, ptr %p_Vid, i64 849024
  store i32 %5, ptr %no_output_of_prior_pics_flag18, align 8
  store <2 x i32> %6, ptr %long_term_reference_flag, align 8
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_spare_pic(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 {
entry:
  %map = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #17
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %call) #17
  %add = add i32 %call2, 1
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %1 = load i32, ptr %height, align 8
  %shr = ashr i32 %1, 4
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %2 = load i32, ptr %width, align 4
  %shr3 = ashr i32 %2, 4
  %call4 = call i32 @get_mem3D(ptr noundef nonnull %map, i32 noundef %add, i32 noundef %shr, i32 noundef %shr3) #17
  %cmp.not366 = icmp slt i32 %call2, 0
  br i1 %cmp.not366, label %for.end222, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count = zext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc220
  %indvars.iv383 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next384, %for.inc220 ]
  %call9 = call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %call) #17
  %call15 = call i32 @ue_v(ptr noundef nonnull @.str.3, ptr noundef %call) #17
  switch i32 %call15, label %sw.default [
    i32 0, label %for.cond16.preheader
    i32 1, label %for.cond34.preheader
    i32 2, label %sw.bb57
  ]

for.cond34.preheader:                             ; preds = %for.body
  %3 = load i32, ptr %height, align 8
  %cmp37358 = icmp sgt i32 %3, 15
  br i1 %cmp37358, label %for.cond39.preheader.lr.ph, label %for.inc220

for.cond39.preheader.lr.ph:                       ; preds = %for.cond34.preheader
  %.pre386 = load i32, ptr %width, align 4
  br label %for.cond39.preheader

for.cond16.preheader:                             ; preds = %for.body
  %4 = load i32, ptr %height, align 8
  %cmp19364 = icmp sgt i32 %4, 15
  br i1 %cmp19364, label %for.cond21.preheader.lr.ph, label %for.inc220

for.cond21.preheader.lr.ph:                       ; preds = %for.cond16.preheader
  %.pre388 = load i32, ptr %width, align 4
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond21.preheader.lr.ph, %for.inc30
  %5 = phi i32 [ %4, %for.cond21.preheader.lr.ph ], [ %12, %for.inc30 ]
  %6 = phi i32 [ %.pre388, %for.cond21.preheader.lr.ph ], [ %13, %for.inc30 ]
  %indvars.iv380 = phi i64 [ 0, %for.cond21.preheader.lr.ph ], [ %indvars.iv.next381, %for.inc30 ]
  %cmp24361 = icmp sgt i32 %6, 15
  br i1 %cmp24361, label %for.body25, label %for.inc30

for.body25:                                       ; preds = %for.cond21.preheader, %for.body25
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body25 ], [ 0, %for.cond21.preheader ]
  %7 = load ptr, ptr %map, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv383
  %8 = load ptr, ptr %arrayidx, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv380
  %9 = load ptr, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %9, i64 %indvars.iv377
  store i8 0, ptr %arrayidx29, align 1
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %10 = load i32, ptr %width, align 4
  %shr23 = ashr i32 %10, 4
  %11 = sext i32 %shr23 to i64
  %cmp24 = icmp slt i64 %indvars.iv.next378, %11
  br i1 %cmp24, label %for.body25, label %for.inc30.loopexit

for.inc30.loopexit:                               ; preds = %for.body25
  %.pre389 = load i32, ptr %height, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.inc30.loopexit, %for.cond21.preheader
  %12 = phi i32 [ %.pre389, %for.inc30.loopexit ], [ %5, %for.cond21.preheader ]
  %13 = phi i32 [ %10, %for.inc30.loopexit ], [ %6, %for.cond21.preheader ]
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1
  %shr18 = ashr i32 %12, 4
  %14 = sext i32 %shr18 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next381, %14
  br i1 %cmp19, label %for.cond21.preheader, label %for.inc220

for.cond39.preheader:                             ; preds = %for.cond39.preheader.lr.ph, %for.inc54
  %15 = phi i32 [ %3, %for.cond39.preheader.lr.ph ], [ %22, %for.inc54 ]
  %16 = phi i32 [ %.pre386, %for.cond39.preheader.lr.ph ], [ %23, %for.inc54 ]
  %indvars.iv374 = phi i64 [ 0, %for.cond39.preheader.lr.ph ], [ %indvars.iv.next375, %for.inc54 ]
  %cmp42355 = icmp sgt i32 %16, 15
  br i1 %cmp42355, label %for.body43, label %for.inc54

for.body43:                                       ; preds = %for.cond39.preheader, %for.body43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body43 ], [ 0, %for.cond39.preheader ]
  %call44 = call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %call) #17
  %conv = trunc i32 %call44 to i8
  %17 = load ptr, ptr %map, align 8
  %arrayidx46 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv383
  %18 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv374
  %19 = load ptr, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %19, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx50, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = load i32, ptr %width, align 4
  %shr41 = ashr i32 %20, 4
  %21 = sext i32 %shr41 to i64
  %cmp42 = icmp slt i64 %indvars.iv.next, %21
  br i1 %cmp42, label %for.body43, label %for.inc54.loopexit

for.inc54.loopexit:                               ; preds = %for.body43
  %.pre387 = load i32, ptr %height, align 8
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc54.loopexit, %for.cond39.preheader
  %22 = phi i32 [ %.pre387, %for.inc54.loopexit ], [ %15, %for.cond39.preheader ]
  %23 = phi i32 [ %20, %for.inc54.loopexit ], [ %16, %for.cond39.preheader ]
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  %shr36 = ashr i32 %22, 4
  %24 = sext i32 %shr36 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next375, %24
  br i1 %cmp37, label %for.cond39.preheader, label %for.inc220

sw.bb57:                                          ; preds = %for.body
  %25 = load i32, ptr %height, align 8
  %cmp68343 = icmp sgt i32 %25, 15
  br i1 %cmp68343, label %for.cond71.preheader.lr.ph, label %for.inc220

for.cond71.preheader.lr.ph:                       ; preds = %sw.bb57
  %shr62 = lshr i32 %25, 4
  %sub63 = add nsw i32 %shr62, -1
  %div64390396 = lshr i32 %sub63, 1
  %26 = load i32, ptr %width, align 4
  %shr59 = ashr i32 %26, 4
  %sub60 = add nsw i32 %shr59, -1
  %div = sdiv i32 %sub60, 2
  br label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %for.cond71.preheader.lr.ph, %for.inc216
  %27 = phi i32 [ %25, %for.cond71.preheader.lr.ph ], [ %35, %for.inc216 ]
  %28 = phi i32 [ %26, %for.cond71.preheader.lr.ph ], [ %36, %for.inc216 ]
  %directy.0353 = phi i32 [ 1, %for.cond71.preheader.lr.ph ], [ %directy.1.lcssa, %for.inc216 ]
  %directx.0352 = phi i32 [ 0, %for.cond71.preheader.lr.ph ], [ %directx.1.lcssa, %for.inc216 ]
  %bottom.0351 = phi i32 [ %div64390396, %for.cond71.preheader.lr.ph ], [ %bottom.1.lcssa, %for.inc216 ]
  %top.0350 = phi i32 [ %div64390396, %for.cond71.preheader.lr.ph ], [ %top.1.lcssa, %for.inc216 ]
  %right.0349 = phi i32 [ %div, %for.cond71.preheader.lr.ph ], [ %right.1.lcssa, %for.inc216 ]
  %left.0348 = phi i32 [ %div, %for.cond71.preheader.lr.ph ], [ %left.1.lcssa, %for.inc216 ]
  %m.0347 = phi i32 [ 0, %for.cond71.preheader.lr.ph ], [ %inc217, %for.inc216 ]
  %x.2346 = phi i32 [ %div, %for.cond71.preheader.lr.ph ], [ %x.3.lcssa, %for.inc216 ]
  %y.2345 = phi i32 [ %div64390396, %for.cond71.preheader.lr.ph ], [ %y.3.lcssa, %for.inc216 ]
  %no_bit0.0344 = phi i32 [ -1, %for.cond71.preheader.lr.ph ], [ %no_bit0.1.lcssa, %for.inc216 ]
  %cmp74323 = icmp sgt i32 %28, 15
  br i1 %cmp74323, label %for.body76, label %for.inc216

for.body76:                                       ; preds = %for.cond71.preheader, %for.inc213
  %directy.1333 = phi i32 [ %directy.2, %for.inc213 ], [ %directy.0353, %for.cond71.preheader ]
  %directx.1332 = phi i32 [ %directx.2, %for.inc213 ], [ %directx.0352, %for.cond71.preheader ]
  %bottom.1331 = phi i32 [ %bottom.2, %for.inc213 ], [ %bottom.0351, %for.cond71.preheader ]
  %top.1330 = phi i32 [ %top.2, %for.inc213 ], [ %top.0350, %for.cond71.preheader ]
  %right.1329 = phi i32 [ %right.2, %for.inc213 ], [ %right.0349, %for.cond71.preheader ]
  %left.1328 = phi i32 [ %left.2, %for.inc213 ], [ %left.0348, %for.cond71.preheader ]
  %n.0327 = phi i32 [ %inc214, %for.inc213 ], [ 0, %for.cond71.preheader ]
  %x.3326 = phi i32 [ %x.4, %for.inc213 ], [ %x.2346, %for.cond71.preheader ]
  %y.3325 = phi i32 [ %y.4, %for.inc213 ], [ %y.2345, %for.cond71.preheader ]
  %no_bit0.1324 = phi i32 [ %dec, %for.inc213 ], [ %no_bit0.0344, %for.cond71.preheader ]
  %cmp77 = icmp slt i32 %no_bit0.1324, 0
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %for.body76
  %call80 = call i32 @ue_v(ptr noundef nonnull @.str.5, ptr noundef %call) #17
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %for.body76
  %no_bit0.2 = phi i32 [ %call80, %if.then79 ], [ %no_bit0.1324, %for.body76 ]
  %cmp82 = icmp slt i32 %no_bit0.2, 1
  %29 = load ptr, ptr %map, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv383
  %30 = load ptr, ptr %arrayidx87, align 8
  %idxprom88 = sext i32 %y.3325 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %30, i64 %idxprom88
  %31 = load ptr, ptr %arrayidx89, align 8
  %idxprom90 = sext i32 %x.3326 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %31, i64 %idxprom90
  %. = zext i1 %cmp82 to i8
  store i8 %., ptr %arrayidx91, align 1
  %dec = add nsw i32 %no_bit0.2, -1
  %cmp101 = icmp eq i32 %directx.1332, -1
  %cmp103 = icmp eq i32 %directy.1333, 0
  %or.cond = select i1 %cmp101, i1 %cmp103, i1 false
  br i1 %or.cond, label %if.then105, label %if.else125

if.then105:                                       ; preds = %if.end81
  %cmp106 = icmp sgt i32 %x.3326, %left.1328
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.then105
  %dec109 = add nsw i32 %x.3326, -1
  br label %for.inc213

if.else110:                                       ; preds = %if.then105
  %cmp111 = icmp eq i32 %x.3326, 0
  br i1 %cmp111, label %if.then113, label %if.else116

if.then113:                                       ; preds = %if.else110
  %add114 = add nsw i32 %bottom.1331, 1
  br label %for.inc213

if.else116:                                       ; preds = %if.else110
  %cmp117 = icmp eq i32 %x.3326, %left.1328
  br i1 %cmp117, label %if.then119, label %for.inc213

if.then119:                                       ; preds = %if.else116
  %dec120 = add nsw i32 %left.1328, -1
  br label %for.inc213

if.else125:                                       ; preds = %if.end81
  %cmp126 = icmp eq i32 %directx.1332, 1
  %or.cond223 = select i1 %cmp126, i1 %cmp103, i1 false
  br i1 %or.cond223, label %if.then131, label %if.else154

if.then131:                                       ; preds = %if.else125
  %cmp132 = icmp slt i32 %x.3326, %right.1329
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.then131
  %inc135 = add nsw i32 %x.3326, 1
  br label %for.inc213

if.else136:                                       ; preds = %if.then131
  %32 = load i32, ptr %width, align 4
  %shr138 = ashr i32 %32, 4
  %sub139 = add nsw i32 %shr138, -1
  %cmp140 = icmp eq i32 %x.3326, %sub139
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.else136
  %sub143 = add nsw i32 %top.1330, -1
  br label %for.inc213

if.else145:                                       ; preds = %if.else136
  %cmp146 = icmp eq i32 %x.3326, %right.1329
  br i1 %cmp146, label %if.then148, label %for.inc213

if.then148:                                       ; preds = %if.else145
  %inc149 = add nsw i32 %right.1329, 1
  br label %for.inc213

if.else154:                                       ; preds = %if.else125
  %cmp155 = icmp eq i32 %directx.1332, 0
  %cmp158 = icmp eq i32 %directy.1333, -1
  %or.cond224 = select i1 %cmp155, i1 %cmp158, i1 false
  br i1 %or.cond224, label %if.then160, label %if.else180

if.then160:                                       ; preds = %if.else154
  %cmp161 = icmp sgt i32 %y.3325, %top.1330
  br i1 %cmp161, label %if.then163, label %if.else165

if.then163:                                       ; preds = %if.then160
  %dec164 = add nsw i32 %y.3325, -1
  br label %for.inc213

if.else165:                                       ; preds = %if.then160
  %cmp166 = icmp eq i32 %y.3325, 0
  br i1 %cmp166, label %if.then168, label %if.else171

if.then168:                                       ; preds = %if.else165
  %sub169 = add nsw i32 %left.1328, -1
  br label %for.inc213

if.else171:                                       ; preds = %if.else165
  %cmp172 = icmp eq i32 %y.3325, %top.1330
  br i1 %cmp172, label %if.then174, label %for.inc213

if.then174:                                       ; preds = %if.else171
  %dec175 = add nsw i32 %top.1330, -1
  br label %for.inc213

if.else180:                                       ; preds = %if.else154
  %cmp184 = icmp eq i32 %directy.1333, 1
  %or.cond225 = select i1 %cmp155, i1 %cmp184, i1 false
  br i1 %or.cond225, label %if.then186, label %for.inc213

if.then186:                                       ; preds = %if.else180
  %cmp187 = icmp slt i32 %y.3325, %bottom.1331
  br i1 %cmp187, label %if.then189, label %if.else191

if.then189:                                       ; preds = %if.then186
  %inc190 = add nsw i32 %y.3325, 1
  br label %for.inc213

if.else191:                                       ; preds = %if.then186
  %33 = load i32, ptr %height, align 8
  %shr193 = ashr i32 %33, 4
  %sub194 = add nsw i32 %shr193, -1
  %cmp195 = icmp eq i32 %y.3325, %sub194
  br i1 %cmp195, label %if.then197, label %if.else200

if.then197:                                       ; preds = %if.else191
  %add198 = add nsw i32 %right.1329, 1
  br label %for.inc213

if.else200:                                       ; preds = %if.else191
  %cmp201 = icmp eq i32 %y.3325, %bottom.1331
  br i1 %cmp201, label %if.then203, label %for.inc213

if.then203:                                       ; preds = %if.else200
  %inc204 = add nsw i32 %bottom.1331, 1
  br label %for.inc213

for.inc213:                                       ; preds = %if.then113, %if.then119, %if.else116, %if.then108, %if.then168, %if.then174, %if.else171, %if.then163, %if.then189, %if.else200, %if.then203, %if.then197, %if.else180, %if.then134, %if.else145, %if.then148, %if.then142
  %y.4 = phi i32 [ %y.3325, %if.then108 ], [ %add114, %if.then113 ], [ %y.3325, %if.then119 ], [ %y.3325, %if.else116 ], [ %y.3325, %if.then134 ], [ %sub143, %if.then142 ], [ %y.3325, %if.then148 ], [ %y.3325, %if.else145 ], [ %dec164, %if.then163 ], [ 0, %if.then168 ], [ %dec175, %if.then174 ], [ %y.3325, %if.else171 ], [ %inc190, %if.then189 ], [ %y.3325, %if.then197 ], [ %inc204, %if.then203 ], [ %y.3325, %if.else200 ], [ %y.3325, %if.else180 ]
  %x.4 = phi i32 [ %dec109, %if.then108 ], [ 0, %if.then113 ], [ %dec120, %if.then119 ], [ %x.3326, %if.else116 ], [ %inc135, %if.then134 ], [ %x.3326, %if.then142 ], [ %inc149, %if.then148 ], [ %x.3326, %if.else145 ], [ %x.3326, %if.then163 ], [ %sub169, %if.then168 ], [ %x.3326, %if.then174 ], [ %x.3326, %if.else171 ], [ %x.3326, %if.then189 ], [ %add198, %if.then197 ], [ %x.3326, %if.then203 ], [ %x.3326, %if.else200 ], [ %x.3326, %if.else180 ]
  %left.2 = phi i32 [ %left.1328, %if.then108 ], [ %left.1328, %if.then113 ], [ %dec120, %if.then119 ], [ %left.1328, %if.else116 ], [ %left.1328, %if.then134 ], [ %left.1328, %if.then142 ], [ %left.1328, %if.then148 ], [ %left.1328, %if.else145 ], [ %left.1328, %if.then163 ], [ %sub169, %if.then168 ], [ %left.1328, %if.then174 ], [ %left.1328, %if.else171 ], [ %left.1328, %if.then189 ], [ %left.1328, %if.then197 ], [ %left.1328, %if.then203 ], [ %left.1328, %if.else200 ], [ %left.1328, %if.else180 ]
  %right.2 = phi i32 [ %right.1329, %if.then108 ], [ %right.1329, %if.then113 ], [ %right.1329, %if.then119 ], [ %right.1329, %if.else116 ], [ %right.1329, %if.then134 ], [ %right.1329, %if.then142 ], [ %inc149, %if.then148 ], [ %right.1329, %if.else145 ], [ %right.1329, %if.then163 ], [ %right.1329, %if.then168 ], [ %right.1329, %if.then174 ], [ %right.1329, %if.else171 ], [ %right.1329, %if.then189 ], [ %add198, %if.then197 ], [ %right.1329, %if.then203 ], [ %right.1329, %if.else200 ], [ %right.1329, %if.else180 ]
  %top.2 = phi i32 [ %top.1330, %if.then108 ], [ %top.1330, %if.then113 ], [ %top.1330, %if.then119 ], [ %top.1330, %if.else116 ], [ %top.1330, %if.then134 ], [ %sub143, %if.then142 ], [ %top.1330, %if.then148 ], [ %top.1330, %if.else145 ], [ %top.1330, %if.then163 ], [ %top.1330, %if.then168 ], [ %dec175, %if.then174 ], [ %top.1330, %if.else171 ], [ %top.1330, %if.then189 ], [ %top.1330, %if.then197 ], [ %top.1330, %if.then203 ], [ %top.1330, %if.else200 ], [ %top.1330, %if.else180 ]
  %bottom.2 = phi i32 [ %bottom.1331, %if.then108 ], [ %add114, %if.then113 ], [ %bottom.1331, %if.then119 ], [ %bottom.1331, %if.else116 ], [ %bottom.1331, %if.then134 ], [ %bottom.1331, %if.then142 ], [ %bottom.1331, %if.then148 ], [ %bottom.1331, %if.else145 ], [ %bottom.1331, %if.then163 ], [ %bottom.1331, %if.then168 ], [ %bottom.1331, %if.then174 ], [ %bottom.1331, %if.else171 ], [ %bottom.1331, %if.then189 ], [ %bottom.1331, %if.then197 ], [ %inc204, %if.then203 ], [ %bottom.1331, %if.else200 ], [ %bottom.1331, %if.else180 ]
  %directx.2 = phi i32 [ -1, %if.then108 ], [ 1, %if.then113 ], [ 0, %if.then119 ], [ -1, %if.else116 ], [ 1, %if.then134 ], [ -1, %if.then142 ], [ 0, %if.then148 ], [ 1, %if.else145 ], [ 0, %if.then163 ], [ 0, %if.then168 ], [ -1, %if.then174 ], [ 0, %if.else171 ], [ 0, %if.then189 ], [ 0, %if.then197 ], [ 1, %if.then203 ], [ 0, %if.else200 ], [ %directx.1332, %if.else180 ]
  %directy.2 = phi i32 [ 0, %if.then108 ], [ 0, %if.then113 ], [ 1, %if.then119 ], [ 0, %if.else116 ], [ 0, %if.then134 ], [ 0, %if.then142 ], [ -1, %if.then148 ], [ 0, %if.else145 ], [ -1, %if.then163 ], [ 1, %if.then168 ], [ 0, %if.then174 ], [ -1, %if.else171 ], [ 1, %if.then189 ], [ -1, %if.then197 ], [ 0, %if.then203 ], [ 1, %if.else200 ], [ %directy.1333, %if.else180 ]
  %inc214 = add nuw nsw i32 %n.0327, 1
  %34 = load i32, ptr %width, align 4
  %shr73 = ashr i32 %34, 4
  %cmp74 = icmp slt i32 %inc214, %shr73
  br i1 %cmp74, label %for.body76, label %for.inc216.loopexit

for.inc216.loopexit:                              ; preds = %for.inc213
  %.pre = load i32, ptr %height, align 8
  br label %for.inc216

for.inc216:                                       ; preds = %for.inc216.loopexit, %for.cond71.preheader
  %35 = phi i32 [ %27, %for.cond71.preheader ], [ %.pre, %for.inc216.loopexit ]
  %36 = phi i32 [ %28, %for.cond71.preheader ], [ %34, %for.inc216.loopexit ]
  %no_bit0.1.lcssa = phi i32 [ %no_bit0.0344, %for.cond71.preheader ], [ %dec, %for.inc216.loopexit ]
  %y.3.lcssa = phi i32 [ %y.2345, %for.cond71.preheader ], [ %y.4, %for.inc216.loopexit ]
  %x.3.lcssa = phi i32 [ %x.2346, %for.cond71.preheader ], [ %x.4, %for.inc216.loopexit ]
  %left.1.lcssa = phi i32 [ %left.0348, %for.cond71.preheader ], [ %left.2, %for.inc216.loopexit ]
  %right.1.lcssa = phi i32 [ %right.0349, %for.cond71.preheader ], [ %right.2, %for.inc216.loopexit ]
  %top.1.lcssa = phi i32 [ %top.0350, %for.cond71.preheader ], [ %top.2, %for.inc216.loopexit ]
  %bottom.1.lcssa = phi i32 [ %bottom.0351, %for.cond71.preheader ], [ %bottom.2, %for.inc216.loopexit ]
  %directx.1.lcssa = phi i32 [ %directx.0352, %for.cond71.preheader ], [ %directx.2, %for.inc216.loopexit ]
  %directy.1.lcssa = phi i32 [ %directy.0353, %for.cond71.preheader ], [ %directy.2, %for.inc216.loopexit ]
  %inc217 = add nuw nsw i32 %m.0347, 1
  %shr67 = ashr i32 %35, 4
  %cmp68 = icmp slt i32 %inc217, %shr67
  br i1 %cmp68, label %for.cond71.preheader, label %for.inc220

sw.default:                                       ; preds = %for.body
  %call219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %call15)
  call void @exit(i32 noundef 0) #19
  unreachable

for.inc220:                                       ; preds = %for.inc216, %for.inc54, %for.inc30, %sw.bb57, %for.cond34.preheader, %for.cond16.preheader
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next384, %wide.trip.count
  br i1 %exitcond.not, label %for.end222, label %for.body

for.end222:                                       ; preds = %for.inc220, %entry
  %37 = load ptr, ptr %map, align 8
  call void @free_mem3D(ptr noundef %37) #17
  call void @free(ptr noundef %call) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_scene_information(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %call) #17
  %cmp = icmp sgt i32 %call2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %call) #17
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.9, ptr noundef %call) #17
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef %call) #17
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.11, ptr noundef %call) #17
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_layer_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %call) #17
  %cmp.not18 = icmp slt i32 %call1, 0
  br i1 %cmp.not18, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %call) #17
  %call6 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %call) #17
  %call8 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %call) #17
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %i.019, %call1
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %call) #17
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.19, ptr noundef nonnull %call) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef nonnull %call) #17
  %call9 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #17
  %call11 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull %call) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end
  %call14 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef nonnull %call) #17
  %cmp35 = icmp sgt i32 %call14, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %if.end13, %for.body
  %i.036 = phi i32 [ %inc, %for.body ], [ 0, %if.end13 ]
  %call16 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %call) #17
  %call17 = tail call i32 @ue_v(ptr noundef nonnull @.str.22, ptr noundef %call) #17
  %call18 = tail call i32 @u_1(ptr noundef nonnull @.str.23, ptr noundef %call) #17
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %call14
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end13
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_freeze_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %call) #17
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_full_frame_freeze_release_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_snapshot_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %call) #17
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_start_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %call) #17
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_end_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call) #17
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_motion_constrained_slice_group_set_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.46, ptr noundef %call) #17
  %add = add i32 %call1, 1
  %call2 = tail call i32 @CeilLog2(i32 noundef %add) #17
  %cmp.not17 = icmp slt i32 %call1, 0
  br i1 %cmp.not17, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call3 = tail call i32 @u_v(i32 noundef %call2, ptr noundef nonnull @.str.47, ptr noundef %call) #17
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %i.018, %call1
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call) #17
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_film_grain_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %call) #17
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.51, ptr noundef nonnull %call) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.52, ptr noundef nonnull %call) #17
  %call7 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.53, ptr noundef nonnull %call) #17
  %call8 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull %call) #17
  %call9 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.55, ptr noundef nonnull %call) #17
  %call10 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.56, ptr noundef nonnull %call) #17
  %call11 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.57, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %call12 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef nonnull %call) #17
  %call13 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull %call) #17
  %call14 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17
  %call14.1 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17
  %call14.2 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %for.inc40, label %if.then21

if.then21:                                        ; preds = %if.end
  %call22 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef nonnull %call) #17
  %call23 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef nonnull %call) #17
  %call23.fr = freeze i32 %call23
  %cmp25.not76 = icmp slt i32 %call22, 0
  br i1 %cmp25.not76, label %for.inc40, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %if.then21
  %cmp30.not74 = icmp slt i32 %call23.fr, 0
  br i1 %cmp30.not74, label %for.body26.us, label %for.body26

for.body26.us:                                    ; preds = %for.body26.lr.ph, %for.body26.us
  %i.077.us = phi i32 [ %inc37.us, %for.body26.us ], [ 0, %for.body26.lr.ph ]
  %call27.us = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28.us = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  %inc37.us = add nuw i32 %i.077.us, 1
  %exitcond82.not = icmp eq i32 %i.077.us, %call22
  br i1 %exitcond82.not, label %for.inc40, label %for.body26.us

for.body26:                                       ; preds = %for.body26.lr.ph, %for.cond29.for.inc36_crit_edge
  %i.077 = phi i32 [ %inc37, %for.cond29.for.inc36_crit_edge ], [ 0, %for.body26.lr.ph ]
  %call27 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  br label %for.body31

for.body31:                                       ; preds = %for.body26, %for.body31
  %j.075 = phi i32 [ 0, %for.body26 ], [ %inc34, %for.body31 ]
  %call32 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17
  %inc34 = add nuw i32 %j.075, 1
  %exitcond.not = icmp eq i32 %j.075, %call23.fr
  br i1 %exitcond.not, label %for.cond29.for.inc36_crit_edge, label %for.body31

for.cond29.for.inc36_crit_edge:                   ; preds = %for.body31
  %inc37 = add nuw i32 %i.077, 1
  %exitcond81.not = icmp eq i32 %i.077, %call22
  br i1 %exitcond81.not, label %for.inc40, label %for.body26

for.inc40:                                        ; preds = %for.cond29.for.inc36_crit_edge, %for.body26.us, %if.then21, %if.end
  %tobool20.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool20.not.1, label %for.inc40.1, label %if.then21.1

if.then21.1:                                      ; preds = %for.inc40
  %call22.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %call) #17
  %call23.1 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %call) #17
  %call23.fr.1 = freeze i32 %call23.1
  %cmp25.not76.1 = icmp slt i32 %call22.1, 0
  br i1 %cmp25.not76.1, label %for.inc40.1, label %for.body26.lr.ph.1

for.body26.lr.ph.1:                               ; preds = %if.then21.1
  %cmp30.not74.1 = icmp slt i32 %call23.fr.1, 0
  br i1 %cmp30.not74.1, label %for.body26.us.1, label %for.body26.1

for.body26.1:                                     ; preds = %for.body26.lr.ph.1, %for.cond29.for.inc36_crit_edge.1
  %i.077.1 = phi i32 [ %inc37.1, %for.cond29.for.inc36_crit_edge.1 ], [ 0, %for.body26.lr.ph.1 ]
  %call27.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  br label %for.body31.1

for.body31.1:                                     ; preds = %for.body31.1, %for.body26.1
  %j.075.1 = phi i32 [ 0, %for.body26.1 ], [ %inc34.1, %for.body31.1 ]
  %call32.1 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17
  %inc34.1 = add nuw i32 %j.075.1, 1
  %exitcond.1.not = icmp eq i32 %j.075.1, %call23.fr.1
  br i1 %exitcond.1.not, label %for.cond29.for.inc36_crit_edge.1, label %for.body31.1

for.cond29.for.inc36_crit_edge.1:                 ; preds = %for.body31.1
  %inc37.1 = add nuw i32 %i.077.1, 1
  %exitcond81.1.not = icmp eq i32 %i.077.1, %call22.1
  br i1 %exitcond81.1.not, label %for.inc40.1, label %for.body26.1

for.body26.us.1:                                  ; preds = %for.body26.lr.ph.1, %for.body26.us.1
  %i.077.us.1 = phi i32 [ %inc37.us.1, %for.body26.us.1 ], [ 0, %for.body26.lr.ph.1 ]
  %call27.us.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28.us.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  %inc37.us.1 = add nuw i32 %i.077.us.1, 1
  %exitcond82.1.not = icmp eq i32 %i.077.us.1, %call22.1
  br i1 %exitcond82.1.not, label %for.inc40.1, label %for.body26.us.1

for.inc40.1:                                      ; preds = %for.cond29.for.inc36_crit_edge.1, %for.body26.us.1, %if.then21.1, %for.inc40
  %tobool20.not.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool20.not.2, label %for.inc40.2, label %if.then21.2

if.then21.2:                                      ; preds = %for.inc40.1
  %call22.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %call) #17
  %call23.2 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %call) #17
  %call23.fr.2 = freeze i32 %call23.2
  %cmp25.not76.2 = icmp slt i32 %call22.2, 0
  br i1 %cmp25.not76.2, label %for.inc40.2, label %for.body26.lr.ph.2

for.body26.lr.ph.2:                               ; preds = %if.then21.2
  %cmp30.not74.2 = icmp slt i32 %call23.fr.2, 0
  br i1 %cmp30.not74.2, label %for.body26.us.2, label %for.body26.2

for.body26.2:                                     ; preds = %for.body26.lr.ph.2, %for.cond29.for.inc36_crit_edge.2
  %i.077.2 = phi i32 [ %inc37.2, %for.cond29.for.inc36_crit_edge.2 ], [ 0, %for.body26.lr.ph.2 ]
  %call27.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  br label %for.body31.2

for.body31.2:                                     ; preds = %for.body31.2, %for.body26.2
  %j.075.2 = phi i32 [ 0, %for.body26.2 ], [ %inc34.2, %for.body31.2 ]
  %call32.2 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17
  %inc34.2 = add nuw i32 %j.075.2, 1
  %exitcond.2.not = icmp eq i32 %j.075.2, %call23.fr.2
  br i1 %exitcond.2.not, label %for.cond29.for.inc36_crit_edge.2, label %for.body31.2

for.cond29.for.inc36_crit_edge.2:                 ; preds = %for.body31.2
  %inc37.2 = add nuw i32 %i.077.2, 1
  %exitcond81.2.not = icmp eq i32 %i.077.2, %call22.2
  br i1 %exitcond81.2.not, label %for.inc40.2, label %for.body26.2

for.body26.us.2:                                  ; preds = %for.body26.lr.ph.2, %for.body26.us.2
  %i.077.us.2 = phi i32 [ %inc37.us.2, %for.body26.us.2 ], [ 0, %for.body26.lr.ph.2 ]
  %call27.us.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17
  %call28.us.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17
  %inc37.us.2 = add nuw i32 %i.077.us.2, 1
  %exitcond82.2.not = icmp eq i32 %i.077.us.2, %call22.2
  br i1 %exitcond82.2.not, label %for.inc40.2, label %for.body26.us.2

for.inc40.2:                                      ; preds = %for.cond29.for.inc36_crit_edge.2, %for.body26.us.2, %if.then21.2, %for.inc40.1
  %call43 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %call) #17
  br label %if.end44

if.end44:                                         ; preds = %for.inc40.2, %entry
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_deblocking_filter_display_preference_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef nonnull %call) #17
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef nonnull %call) #17
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_stereo_video_info_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.71, ptr noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.str.74.sink = phi ptr [ @.str.74, %if.else ], [ @.str.72, %entry ]
  %call4 = tail call i32 @u_1(ptr noundef nonnull %.str.74.sink, ptr noundef nonnull %call) #17
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.75, ptr noundef nonnull %call) #17
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef nonnull %call) #17
  tail call void @free(ptr noundef nonnull %call) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_tone_mapping(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 {
entry:
  %seiToneMappingTmp = alloca %struct.tone_mapping_struct_tmp, align 4
  call void @llvm.lifetime.start.p0(i64 49192, ptr nonnull %seiToneMappingTmp) #17
  %0 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(49192) %0, i8 0, i64 49188, i1 false)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.118, ptr noundef %call) #17
  store i32 %call1, ptr %seiToneMappingTmp, align 4
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.119, ptr noundef %call) #17
  %conv = trunc i32 %call2 to i8
  %tone_map_cancel_flag = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 4
  store i8 %conv, ptr %tone_map_cancel_flag, align 4
  %tobool.not = icmp eq i8 %conv, 0
  %.sink.sroa.gep = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32
  %.sink447.sroa.gep = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 28
  br i1 %tobool.not, label %if.then, label %if.end275

if.then:                                          ; preds = %entry
  %.sink447.sroa.gep465 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 20
  %.sink.sroa.gep464 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 24
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.120, ptr noundef nonnull %call) #17
  %tone_map_repetition_period = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 8
  store i32 %call4, ptr %tone_map_repetition_period, align 4
  %call5 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.121, ptr noundef nonnull %call) #17
  %conv6 = trunc i32 %call5 to i8
  %coded_data_bit_depth = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 12
  store i8 %conv6, ptr %coded_data_bit_depth, align 4
  %call7 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef nonnull %call) #17
  %conv8 = trunc i32 %call7 to i8
  %sei_bit_depth = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 13
  store i8 %conv8, ptr %sei_bit_depth, align 1
  %call9 = tail call i32 @ue_v(ptr noundef nonnull @.str.50, ptr noundef nonnull %call) #17
  %model_id = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16
  store i32 %call9, ptr %model_id, align 4
  %conv11 = and i32 %call5, 255
  %shl = shl nuw i32 1, %conv11
  %conv13 = and i32 %call7, 255
  %shl14 = shl nuw i32 1, %conv13
  switch i32 %call9, label %if.end85 [
    i32 0, label %if.end85.sink.split
    i32 1, label %if.then23
    i32 2, label %for.cond.preheader
    i32 3, label %if.then41
  ]

for.cond.preheader:                               ; preds = %if.then
  %cmp31363.not = icmp eq i32 %conv13, 31
  br i1 %cmp31363.not, label %if.end85, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add nuw nsw i32 %conv11, 7
  %shr = and i32 %add, 504
  %start_of_coded_interval = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 36
  %smax = tail call i32 @llvm.smax.i32(i32 %shl14, i32 1)
  %wide.trip.count395 = zext nneg i32 %smax to i64
  br label %for.body

if.then23:                                        ; preds = %if.then
  br label %if.end85.sink.split

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv392 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next393, %for.body ]
  %call36 = tail call i32 @u_v(i32 noundef %shr, ptr noundef nonnull @.str.126, ptr noundef %call) #17
  %arrayidx = getelementptr inbounds [4096 x i32], ptr %start_of_coded_interval, i64 0, i64 %indvars.iv392
  store i32 %call36, ptr %arrayidx, align 4
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1
  %exitcond396.not = icmp eq i64 %indvars.iv.next393, %wide.trip.count395
  br i1 %exitcond396.not, label %if.end85, label %for.body

if.then41:                                        ; preds = %if.then
  %call42 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.127, ptr noundef nonnull %call) #17
  %num_pivots = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16420
  store i32 %call42, ptr %num_pivots, align 4
  %coded_pivot_value = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16424
  store i32 0, ptr %coded_pivot_value, align 4
  %sei_pivot_value = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32808
  store i32 0, ptr %sei_pivot_value, align 4
  %sub = add nsw i32 %shl, -1
  %add47 = add nsw i32 %call42, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value, i64 0, i64 %idxprom48
  store i32 %sub, ptr %arrayidx49, align 4
  %sub50 = add nsw i32 %shl14, -1
  %1 = load i32, ptr %num_pivots, align 4
  %add53 = add nsw i32 %1, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value, i64 0, i64 %idxprom54
  store i32 %sub50, ptr %arrayidx55, align 4
  %2 = load i32, ptr %num_pivots, align 4
  %cmp59.not361 = icmp slt i32 %2, 1
  br i1 %cmp59.not361, label %if.end85, label %for.body61.lr.ph

for.body61.lr.ph:                                 ; preds = %if.then41
  %3 = load i8, ptr %coded_data_bit_depth, align 4
  %conv63 = zext i8 %3 to i32
  %add64 = add nuw nsw i32 %conv63, 7
  %shr65 = and i32 %add64, 504
  %4 = load i8, ptr %sei_bit_depth, align 1
  %conv72 = zext i8 %4 to i32
  %add73 = add nuw nsw i32 %conv72, 7
  %shr74 = and i32 %add73, 504
  %5 = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.body61

for.body61:                                       ; preds = %for.body61.lr.ph, %for.body61
  %indvars.iv = phi i64 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next, %for.body61 ]
  %call67 = tail call i32 @u_v(i32 noundef %shr65, ptr noundef nonnull @.str.128, ptr noundef %call) #17
  %arrayidx70 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value, i64 0, i64 %indvars.iv
  store i32 %call67, ptr %arrayidx70, align 4
  %call76 = tail call i32 @u_v(i32 noundef %shr74, ptr noundef nonnull @.str.129, ptr noundef %call) #17
  %arrayidx79 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value, i64 0, i64 %indvars.iv
  store i32 %call76, ptr %arrayidx79, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end85, label %for.body61

if.end85.sink.split:                              ; preds = %if.then, %if.then23
  %.str.124.sink = phi ptr [ @.str.124, %if.then23 ], [ @.str.123, %if.then ]
  %.sink447.sroa.phi = phi ptr [ %.sink447.sroa.gep, %if.then23 ], [ %.sink447.sroa.gep465, %if.then ]
  %.str.125.sink = phi ptr [ @.str.125, %if.then23 ], [ @.str.123, %if.then ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %if.then23 ], [ %.sink.sroa.gep464, %if.then ]
  %call24 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull %.str.124.sink, ptr noundef nonnull %call) #17
  store i32 %call24, ptr %.sink447.sroa.phi, align 4
  %call25 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull %.str.125.sink, ptr noundef nonnull %call) #17
  store i32 %call25, ptr %.sink.sroa.phi, align 4
  br label %if.end85

if.end85:                                         ; preds = %for.body61, %for.body, %if.end85.sink.split, %if.then41, %for.cond.preheader, %if.then
  %6 = load i32, ptr %seiToneMappingTmp, align 4
  %cmp87 = icmp eq i32 %6, 0
  br i1 %cmp87, label %if.then89, label %if.end275

if.then89:                                        ; preds = %if.end85
  %seiToneMapping = getelementptr inbounds i8, ptr %p_Vid, i64 856728
  %7 = load ptr, ptr %seiToneMapping, align 8
  store i32 1, ptr %7, align 8
  %8 = load i32, ptr %tone_map_repetition_period, align 4
  %9 = load ptr, ptr %seiToneMapping, align 8
  %tone_map_repetition_period92 = getelementptr inbounds i8, ptr %9, i64 4
  store i32 %8, ptr %tone_map_repetition_period92, align 4
  %10 = load i8, ptr %coded_data_bit_depth, align 4
  %11 = load ptr, ptr %seiToneMapping, align 8
  %coded_data_bit_depth95 = getelementptr inbounds i8, ptr %11, i64 8
  store i8 %10, ptr %coded_data_bit_depth95, align 8
  %12 = load i8, ptr %sei_bit_depth, align 1
  %13 = load ptr, ptr %seiToneMapping, align 8
  %sei_bit_depth98 = getelementptr inbounds i8, ptr %13, i64 9
  store i8 %12, ptr %sei_bit_depth98, align 1
  %14 = load i32, ptr %model_id, align 4
  %15 = load ptr, ptr %seiToneMapping, align 8
  %model_id101 = getelementptr inbounds i8, ptr %15, i64 12
  store i32 %14, ptr %model_id101, align 4
  %16 = load ptr, ptr %seiToneMapping, align 8
  %count = getelementptr inbounds i8, ptr %16, i64 16
  store i32 0, ptr %count, align 8
  switch i32 %14, label %if.end275 [
    i32 0, label %for.cond104.preheader
    i32 1, label %for.cond151.preheader
    i32 2, label %sw.bb176
    i32 3, label %for.cond216.preheader
  ]

for.cond216.preheader:                            ; preds = %if.then89
  %num_pivots217 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16420
  %17 = load i32, ptr %num_pivots217, align 4
  %cmp219.not368 = icmp slt i32 %17, 0
  br i1 %cmp219.not368, label %if.end275, label %for.body221.lr.ph

for.body221.lr.ph:                                ; preds = %for.cond216.preheader
  %sei_pivot_value222 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32808
  %coded_pivot_value231 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16424
  %18 = add nuw i32 %17, 1
  %wide.trip.count405 = zext i32 %18 to i64
  %.pre = load i32, ptr %sei_pivot_value222, align 4
  %.pre441 = load i32, ptr %coded_pivot_value231, align 4
  br label %for.body221

for.cond151.preheader:                            ; preds = %if.then89
  %cmp152377.not = icmp eq i32 %conv11, 31
  br i1 %cmp152377.not, label %if.end275, label %for.body154.lr.ph

for.body154.lr.ph:                                ; preds = %for.cond151.preheader
  %sigmoid_midpoint155 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 28
  %19 = load i32, ptr %sigmoid_midpoint155, align 4
  %sigmoid_width159 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32
  %20 = load i32, ptr %sigmoid_width159, align 4
  %conv160 = sitofp i32 %20 to double
  %sub164 = add nsw i32 %shl14, -1
  %conv165 = sitofp i32 %sub164 to double
  %smax421 = tail call i32 @llvm.smax.i32(i32 %shl, i32 1)
  %wide.trip.count422 = zext nneg i32 %smax421 to i64
  br label %for.body154

for.cond104.preheader:                            ; preds = %if.then89
  %min_value105 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 20
  %21 = load i32, ptr %min_value105, align 4
  %cmp106.not379 = icmp slt i32 %21, 0
  %.pre443 = add i32 %21, 1
  br i1 %cmp106.not379, label %for.cond117.preheader, label %for.body108.preheader

for.body108.preheader:                            ; preds = %for.cond104.preheader
  %wide.trip.count427 = zext i32 %.pre443 to i64
  %xtraiter456 = and i64 %wide.trip.count427, 3
  %22 = icmp ult i32 %.pre443, 4
  br i1 %22, label %for.cond117.preheader.loopexit.unr-lcssa, label %for.body108.preheader.new

for.body108.preheader.new:                        ; preds = %for.body108.preheader
  %unroll_iter = and i64 %wide.trip.count427, 4294967292
  br label %for.body108

for.cond117.preheader.loopexit.unr-lcssa:         ; preds = %for.body108, %for.body108.preheader
  %indvars.iv424.unr = phi i64 [ 0, %for.body108.preheader ], [ %indvars.iv.next425.3, %for.body108 ]
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %for.cond117.preheader, label %for.body108.epil

for.body108.epil:                                 ; preds = %for.cond117.preheader.loopexit.unr-lcssa, %for.body108.epil
  %indvars.iv424.epil = phi i64 [ %indvars.iv.next425.epil, %for.body108.epil ], [ %indvars.iv424.unr, %for.cond117.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body108.epil ], [ 0, %for.cond117.preheader.loopexit.unr-lcssa ]
  %23 = load ptr, ptr %seiToneMapping, align 8
  %lut.epil = getelementptr inbounds i8, ptr %23, i64 20
  %arrayidx111.epil = getelementptr inbounds [4096 x i16], ptr %lut.epil, i64 0, i64 %indvars.iv424.epil
  store i16 0, ptr %arrayidx111.epil, align 2
  %indvars.iv.next425.epil = add nuw nsw i64 %indvars.iv424.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter456
  br i1 %epil.iter.cmp.not, label %for.cond117.preheader, label %for.body108.epil, !llvm.loop !5

for.cond117.preheader:                            ; preds = %for.cond117.preheader.loopexit.unr-lcssa, %for.body108.epil, %for.cond104.preheader
  %max_value118 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 24
  %24 = load i32, ptr %max_value118, align 4
  %cmp119383 = icmp slt i32 %.pre443, %24
  br i1 %cmp119383, label %for.body121.lr.ph, label %for.cond137.preheader

for.body121.lr.ph:                                ; preds = %for.cond117.preheader
  %sub124 = add nsw i32 %shl14, -1
  %sub127 = sub nsw i32 %24, %21
  %25 = sext i32 %.pre443 to i64
  %26 = add i32 %24, -2
  %27 = sub i32 %21, %24
  %28 = and i32 %27, 1
  %lcmp.mod459.not.not = icmp eq i32 %28, 0
  br i1 %lcmp.mod459.not.not, label %for.body121.prol, label %for.body121.prol.loopexit

for.body121.prol:                                 ; preds = %for.body121.lr.ph
  %div.prol = sdiv i32 %sub124, %sub127
  %conv128.prol = trunc i32 %div.prol to i16
  %29 = load ptr, ptr %seiToneMapping, align 8
  %lut130.prol = getelementptr inbounds i8, ptr %29, i64 20
  %arrayidx132.prol = getelementptr inbounds [4096 x i16], ptr %lut130.prol, i64 0, i64 %25
  store i16 %conv128.prol, ptr %arrayidx132.prol, align 2
  %indvars.iv.next430.prol = add nsw i64 %25, 1
  br label %for.body121.prol.loopexit

for.body121.prol.loopexit:                        ; preds = %for.body121.prol, %for.body121.lr.ph
  %indvars.iv429.unr = phi i64 [ %25, %for.body121.lr.ph ], [ %indvars.iv.next430.prol, %for.body121.prol ]
  %30 = icmp eq i32 %26, %21
  br i1 %30, label %for.cond137.preheader, label %for.body121

for.body108:                                      ; preds = %for.body108, %for.body108.preheader.new
  %indvars.iv424 = phi i64 [ 0, %for.body108.preheader.new ], [ %indvars.iv.next425.3, %for.body108 ]
  %niter = phi i64 [ 0, %for.body108.preheader.new ], [ %niter.next.3, %for.body108 ]
  %31 = load ptr, ptr %seiToneMapping, align 8
  %lut = getelementptr inbounds i8, ptr %31, i64 20
  %arrayidx111 = getelementptr inbounds [4096 x i16], ptr %lut, i64 0, i64 %indvars.iv424
  store i16 0, ptr %arrayidx111, align 2
  %indvars.iv.next425 = or disjoint i64 %indvars.iv424, 1
  %32 = load ptr, ptr %seiToneMapping, align 8
  %lut.1 = getelementptr inbounds i8, ptr %32, i64 20
  %arrayidx111.1 = getelementptr inbounds [4096 x i16], ptr %lut.1, i64 0, i64 %indvars.iv.next425
  store i16 0, ptr %arrayidx111.1, align 2
  %indvars.iv.next425.1 = or disjoint i64 %indvars.iv424, 2
  %33 = load ptr, ptr %seiToneMapping, align 8
  %lut.2 = getelementptr inbounds i8, ptr %33, i64 20
  %arrayidx111.2 = getelementptr inbounds [4096 x i16], ptr %lut.2, i64 0, i64 %indvars.iv.next425.1
  store i16 0, ptr %arrayidx111.2, align 2
  %indvars.iv.next425.2 = or disjoint i64 %indvars.iv424, 3
  %34 = load ptr, ptr %seiToneMapping, align 8
  %lut.3 = getelementptr inbounds i8, ptr %34, i64 20
  %arrayidx111.3 = getelementptr inbounds [4096 x i16], ptr %lut.3, i64 0, i64 %indvars.iv.next425.2
  store i16 0, ptr %arrayidx111.3, align 2
  %indvars.iv.next425.3 = add nuw nsw i64 %indvars.iv424, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond117.preheader.loopexit.unr-lcssa, label %for.body108

for.cond137.preheader:                            ; preds = %for.body121.prol.loopexit, %for.body121, %for.cond117.preheader
  %cmp138386 = icmp slt i32 %24, %shl
  br i1 %cmp138386, label %for.body140.lr.ph, label %if.end275

for.body140.lr.ph:                                ; preds = %for.cond137.preheader
  %35 = trunc i32 %shl14 to i16
  %conv142 = add i16 %35, -1
  %36 = sext i32 %24 to i64
  %wide.trip.count439 = sext i32 %shl to i64
  %37 = sub nsw i64 %wide.trip.count439, %36
  %xtraiter461 = and i64 %37, 3
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %for.body140.prol.loopexit, label %for.body140.prol

for.body140.prol:                                 ; preds = %for.body140.lr.ph, %for.body140.prol
  %indvars.iv436.prol = phi i64 [ %indvars.iv.next437.prol, %for.body140.prol ], [ %36, %for.body140.lr.ph ]
  %prol.iter463 = phi i64 [ %prol.iter463.next, %for.body140.prol ], [ 0, %for.body140.lr.ph ]
  %38 = load ptr, ptr %seiToneMapping, align 8
  %lut144.prol = getelementptr inbounds i8, ptr %38, i64 20
  %arrayidx146.prol = getelementptr inbounds [4096 x i16], ptr %lut144.prol, i64 0, i64 %indvars.iv436.prol
  store i16 %conv142, ptr %arrayidx146.prol, align 2
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.prol, 1
  %prol.iter463.next = add i64 %prol.iter463, 1
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %for.body140.prol.loopexit, label %for.body140.prol, !llvm.loop !7

for.body140.prol.loopexit:                        ; preds = %for.body140.prol, %for.body140.lr.ph
  %indvars.iv436.unr = phi i64 [ %36, %for.body140.lr.ph ], [ %indvars.iv.next437.prol, %for.body140.prol ]
  %39 = sub nsw i64 %36, %wide.trip.count439
  %40 = icmp ugt i64 %39, -4
  br i1 %40, label %if.end275, label %for.body140

for.body121:                                      ; preds = %for.body121.prol.loopexit, %for.body121
  %indvars.iv429 = phi i64 [ %indvars.iv.next430.1, %for.body121 ], [ %indvars.iv429.unr, %for.body121.prol.loopexit ]
  %41 = trunc i64 %indvars.iv429 to i32
  %42 = sub i32 %41, %21
  %43 = mul i32 %42, %sub124
  %div = sdiv i32 %43, %sub127
  %conv128 = trunc i32 %div to i16
  %44 = load ptr, ptr %seiToneMapping, align 8
  %lut130 = getelementptr inbounds i8, ptr %44, i64 20
  %arrayidx132 = getelementptr inbounds [4096 x i16], ptr %lut130, i64 0, i64 %indvars.iv429
  store i16 %conv128, ptr %arrayidx132, align 2
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1
  %45 = trunc i64 %indvars.iv.next430 to i32
  %46 = sub i32 %45, %21
  %47 = mul i32 %46, %sub124
  %div.1 = sdiv i32 %47, %sub127
  %conv128.1 = trunc i32 %div.1 to i16
  %48 = load ptr, ptr %seiToneMapping, align 8
  %lut130.1 = getelementptr inbounds i8, ptr %48, i64 20
  %arrayidx132.1 = getelementptr inbounds [4096 x i16], ptr %lut130.1, i64 0, i64 %indvars.iv.next430
  store i16 %conv128.1, ptr %arrayidx132.1, align 2
  %indvars.iv.next430.1 = add nsw i64 %indvars.iv429, 2
  %lftr.wideiv434.1 = trunc i64 %indvars.iv.next430.1 to i32
  %exitcond435.not.1 = icmp eq i32 %24, %lftr.wideiv434.1
  br i1 %exitcond435.not.1, label %for.cond137.preheader, label %for.body121

for.body140:                                      ; preds = %for.body140.prol.loopexit, %for.body140
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.3, %for.body140 ], [ %indvars.iv436.unr, %for.body140.prol.loopexit ]
  %49 = load ptr, ptr %seiToneMapping, align 8
  %lut144 = getelementptr inbounds i8, ptr %49, i64 20
  %arrayidx146 = getelementptr inbounds [4096 x i16], ptr %lut144, i64 0, i64 %indvars.iv436
  store i16 %conv142, ptr %arrayidx146, align 2
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1
  %50 = load ptr, ptr %seiToneMapping, align 8
  %lut144.1 = getelementptr inbounds i8, ptr %50, i64 20
  %arrayidx146.1 = getelementptr inbounds [4096 x i16], ptr %lut144.1, i64 0, i64 %indvars.iv.next437
  store i16 %conv142, ptr %arrayidx146.1, align 2
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2
  %51 = load ptr, ptr %seiToneMapping, align 8
  %lut144.2 = getelementptr inbounds i8, ptr %51, i64 20
  %arrayidx146.2 = getelementptr inbounds [4096 x i16], ptr %lut144.2, i64 0, i64 %indvars.iv.next437.1
  store i16 %conv142, ptr %arrayidx146.2, align 2
  %indvars.iv.next437.2 = add nsw i64 %indvars.iv436, 3
  %52 = load ptr, ptr %seiToneMapping, align 8
  %lut144.3 = getelementptr inbounds i8, ptr %52, i64 20
  %arrayidx146.3 = getelementptr inbounds [4096 x i16], ptr %lut144.3, i64 0, i64 %indvars.iv.next437.2
  store i16 %conv142, ptr %arrayidx146.3, align 2
  %indvars.iv.next437.3 = add nsw i64 %indvars.iv436, 4
  %exitcond440.not.3 = icmp eq i64 %indvars.iv.next437.3, %wide.trip.count439
  br i1 %exitcond440.not.3, label %if.end275, label %for.body140

for.body154:                                      ; preds = %for.body154.lr.ph, %for.body154
  %indvars.iv417 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next418, %for.body154 ]
  %53 = trunc i64 %indvars.iv417 to i32
  %54 = sub i32 %53, %19
  %conv157 = sitofp i32 %54 to double
  %mul158 = fmul double %conv157, -6.000000e+00
  %div161 = fdiv double %mul158, %conv160
  %call162 = tail call double @exp(double noundef %div161) #17
  %add163 = fadd double %call162, 1.000000e+00
  %div166 = fdiv double %conv165, %add163
  %add167 = fadd double %div166, 5.000000e-01
  %conv168 = fptoui double %add167 to i16
  %55 = load ptr, ptr %seiToneMapping, align 8
  %lut170 = getelementptr inbounds i8, ptr %55, i64 20
  %arrayidx172 = getelementptr inbounds [4096 x i16], ptr %lut170, i64 0, i64 %indvars.iv417
  store i16 %conv168, ptr %arrayidx172, align 2
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1
  %exitcond423.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count422
  br i1 %exitcond423.not, label %if.end275, label %for.body154

sw.bb176:                                         ; preds = %if.then89
  %sub177 = add i32 %shl14, -1
  %cmp178 = icmp sgt i32 %shl14, 1
  br i1 %cmp178, label %for.body185.lr.ph, label %if.end275

for.body185.lr.ph:                                ; preds = %sw.bb176
  %start_of_coded_interval186 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 36
  %wide.trip.count415 = zext nneg i32 %sub177 to i64
  %.pre442 = load i32, ptr %start_of_coded_interval186, align 4
  br label %for.body185

for.cond181.loopexit:                             ; preds = %for.body196.prol.loopexit, %for.body196, %for.body185
  %i.8.lcssa = phi i32 [ %56, %for.body185 ], [ %57, %for.body196 ], [ %57, %for.body196.prol.loopexit ]
  %exitcond416.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count415
  br i1 %exitcond416.not, label %for.end207, label %for.body185

for.body185:                                      ; preds = %for.body185.lr.ph, %for.cond181.loopexit
  %56 = phi i32 [ %.pre442, %for.body185.lr.ph ], [ %57, %for.cond181.loopexit ]
  %indvars.iv412 = phi i64 [ 0, %for.body185.lr.ph ], [ %indvars.iv.next413, %for.cond181.loopexit ]
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1
  %arrayidx193 = getelementptr inbounds [4096 x i32], ptr %start_of_coded_interval186, i64 0, i64 %indvars.iv.next413
  %57 = load i32, ptr %arrayidx193, align 4
  %cmp194370 = icmp slt i32 %56, %57
  br i1 %cmp194370, label %for.body196.lr.ph, label %for.cond181.loopexit

for.body196.lr.ph:                                ; preds = %for.body185
  %conv197 = trunc i64 %indvars.iv412 to i16
  %58 = sext i32 %56 to i64
  %wide.trip.count410 = sext i32 %57 to i64
  %59 = sub nsw i64 %wide.trip.count410, %58
  %xtraiter454 = and i64 %59, 3
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %for.body196.prol.loopexit, label %for.body196.prol

for.body196.prol:                                 ; preds = %for.body196.lr.ph, %for.body196.prol
  %indvars.iv407.prol = phi i64 [ %indvars.iv.next408.prol, %for.body196.prol ], [ %58, %for.body196.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body196.prol ], [ 0, %for.body196.lr.ph ]
  %60 = load ptr, ptr %seiToneMapping, align 8
  %lut199.prol = getelementptr inbounds i8, ptr %60, i64 20
  %arrayidx201.prol = getelementptr inbounds [4096 x i16], ptr %lut199.prol, i64 0, i64 %indvars.iv407.prol
  store i16 %conv197, ptr %arrayidx201.prol, align 2
  %indvars.iv.next408.prol = add nsw i64 %indvars.iv407.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter454
  br i1 %prol.iter.cmp.not, label %for.body196.prol.loopexit, label %for.body196.prol, !llvm.loop !8

for.body196.prol.loopexit:                        ; preds = %for.body196.prol, %for.body196.lr.ph
  %indvars.iv407.unr = phi i64 [ %58, %for.body196.lr.ph ], [ %indvars.iv.next408.prol, %for.body196.prol ]
  %61 = sub nsw i64 %58, %wide.trip.count410
  %62 = icmp ugt i64 %61, -4
  br i1 %62, label %for.cond181.loopexit, label %for.body196

for.body196:                                      ; preds = %for.body196.prol.loopexit, %for.body196
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.3, %for.body196 ], [ %indvars.iv407.unr, %for.body196.prol.loopexit ]
  %63 = load ptr, ptr %seiToneMapping, align 8
  %lut199 = getelementptr inbounds i8, ptr %63, i64 20
  %arrayidx201 = getelementptr inbounds [4096 x i16], ptr %lut199, i64 0, i64 %indvars.iv407
  store i16 %conv197, ptr %arrayidx201, align 2
  %indvars.iv.next408 = add nsw i64 %indvars.iv407, 1
  %64 = load ptr, ptr %seiToneMapping, align 8
  %lut199.1 = getelementptr inbounds i8, ptr %64, i64 20
  %arrayidx201.1 = getelementptr inbounds [4096 x i16], ptr %lut199.1, i64 0, i64 %indvars.iv.next408
  store i16 %conv197, ptr %arrayidx201.1, align 2
  %indvars.iv.next408.1 = add nsw i64 %indvars.iv407, 2
  %65 = load ptr, ptr %seiToneMapping, align 8
  %lut199.2 = getelementptr inbounds i8, ptr %65, i64 20
  %arrayidx201.2 = getelementptr inbounds [4096 x i16], ptr %lut199.2, i64 0, i64 %indvars.iv.next408.1
  store i16 %conv197, ptr %arrayidx201.2, align 2
  %indvars.iv.next408.2 = add nsw i64 %indvars.iv407, 3
  %66 = load ptr, ptr %seiToneMapping, align 8
  %lut199.3 = getelementptr inbounds i8, ptr %66, i64 20
  %arrayidx201.3 = getelementptr inbounds [4096 x i16], ptr %lut199.3, i64 0, i64 %indvars.iv.next408.2
  store i16 %conv197, ptr %arrayidx201.3, align 2
  %indvars.iv.next408.3 = add nsw i64 %indvars.iv407, 4
  %exitcond411.not.3 = icmp eq i64 %indvars.iv.next408.3, %wide.trip.count410
  br i1 %exitcond411.not.3, label %for.cond181.loopexit, label %for.body196

for.end207:                                       ; preds = %for.cond181.loopexit
  %conv209 = trunc i32 %sub177 to i16
  %67 = load ptr, ptr %seiToneMapping, align 8
  %lut211 = getelementptr inbounds i8, ptr %67, i64 20
  %idxprom212 = sext i32 %i.8.lcssa to i64
  %arrayidx213 = getelementptr inbounds [4096 x i16], ptr %lut211, i64 0, i64 %idxprom212
  store i16 %conv209, ptr %arrayidx213, align 2
  br label %if.end275

for.cond216.loopexit:                             ; preds = %for.body251.prol.loopexit, %for.body251, %for.body221
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %if.end275, label %for.body221

for.body221:                                      ; preds = %for.body221.lr.ph, %for.cond216.loopexit
  %68 = phi i32 [ %.pre441, %for.body221.lr.ph ], [ %71, %for.cond216.loopexit ]
  %69 = phi i32 [ %.pre, %for.body221.lr.ph ], [ %70, %for.cond216.loopexit ]
  %indvars.iv402 = phi i64 [ 0, %for.body221.lr.ph ], [ %indvars.iv.next403, %for.cond216.loopexit ]
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1
  %arrayidx225 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value222, i64 0, i64 %indvars.iv.next403
  %70 = load i32, ptr %arrayidx225, align 4
  %sub229 = sub nsw i32 %70, %69
  %conv230 = sitofp i32 %sub229 to double
  %arrayidx234 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value231, i64 0, i64 %indvars.iv.next403
  %71 = load i32, ptr %arrayidx234, align 4
  %sub238 = sub nsw i32 %71, %68
  %conv239 = sitofp i32 %sub238 to double
  %div240 = fdiv double %conv230, %conv239
  %cmp249.not366 = icmp sgt i32 %68, %71
  br i1 %cmp249.not366, label %for.cond216.loopexit, label %for.body251.preheader

for.body251.preheader:                            ; preds = %for.body221
  %72 = sext i32 %68 to i64
  %73 = add i32 %71, 1
  %74 = sub i32 %73, %68
  %xtraiter = and i32 %74, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body251.prol.loopexit, label %for.body251.prol

for.body251.prol:                                 ; preds = %for.body251.preheader
  %mul260.prol = fmul double %div240, 0.000000e+00
  %conv261.prol = fptosi double %mul260.prol to i32
  %add262.prol = add nsw i32 %69, %conv261.prol
  %conv263.prol = trunc i32 %add262.prol to i16
  %75 = load ptr, ptr %seiToneMapping, align 8
  %lut265.prol = getelementptr inbounds i8, ptr %75, i64 20
  %arrayidx267.prol = getelementptr inbounds [4096 x i16], ptr %lut265.prol, i64 0, i64 %72
  store i16 %conv263.prol, ptr %arrayidx267.prol, align 2
  %indvars.iv.next398.prol = add nsw i64 %72, 1
  br label %for.body251.prol.loopexit

for.body251.prol.loopexit:                        ; preds = %for.body251.prol, %for.body251.preheader
  %indvars.iv397.unr = phi i64 [ %72, %for.body251.preheader ], [ %indvars.iv.next398.prol, %for.body251.prol ]
  %76 = icmp eq i32 %71, %68
  br i1 %76, label %for.cond216.loopexit, label %for.body251

for.body251:                                      ; preds = %for.body251.prol.loopexit, %for.body251
  %indvars.iv397 = phi i64 [ %indvars.iv.next398.1, %for.body251 ], [ %indvars.iv397.unr, %for.body251.prol.loopexit ]
  %77 = trunc i64 %indvars.iv397 to i32
  %78 = sub i32 %77, %68
  %conv259 = sitofp i32 %78 to double
  %mul260 = fmul double %div240, %conv259
  %conv261 = fptosi double %mul260 to i32
  %add262 = add nsw i32 %69, %conv261
  %conv263 = trunc i32 %add262 to i16
  %79 = load ptr, ptr %seiToneMapping, align 8
  %lut265 = getelementptr inbounds i8, ptr %79, i64 20
  %arrayidx267 = getelementptr inbounds [4096 x i16], ptr %lut265, i64 0, i64 %indvars.iv397
  store i16 %conv263, ptr %arrayidx267, align 2
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1
  %80 = trunc i64 %indvars.iv.next398 to i32
  %81 = sub i32 %80, %68
  %conv259.1 = sitofp i32 %81 to double
  %mul260.1 = fmul double %div240, %conv259.1
  %conv261.1 = fptosi double %mul260.1 to i32
  %add262.1 = add nsw i32 %69, %conv261.1
  %conv263.1 = trunc i32 %add262.1 to i16
  %82 = load ptr, ptr %seiToneMapping, align 8
  %lut265.1 = getelementptr inbounds i8, ptr %82, i64 20
  %arrayidx267.1 = getelementptr inbounds [4096 x i16], ptr %lut265.1, i64 0, i64 %indvars.iv.next398
  store i16 %conv263.1, ptr %arrayidx267.1, align 2
  %indvars.iv.next398.1 = add nsw i64 %indvars.iv397, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next398.1 to i32
  %exitcond401.not.1 = icmp eq i32 %73, %lftr.wideiv.1
  br i1 %exitcond401.not.1, label %for.cond216.loopexit, label %for.body251

if.end275:                                        ; preds = %for.cond216.loopexit, %for.body154, %for.body140.prol.loopexit, %for.body140, %for.cond216.preheader, %for.cond151.preheader, %for.cond137.preheader, %for.end207, %sw.bb176, %if.then89, %if.end85, %entry
  tail call void @free(ptr noundef %call) #17
  call void @llvm.lifetime.end.p0(i64 49192, ptr nonnull %seiToneMappingTmp) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_post_filter_hints_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %filter_hint = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter_hint) #17
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %call) #17
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.131, ptr noundef %call) #17
  %call3 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.132, ptr noundef %call) #17
  %call4 = call i32 @get_mem3Dint(ptr noundef nonnull %filter_hint, i32 noundef 3, i32 noundef %call1, i32 noundef %call2) #17
  %cmp641.not = icmp eq i32 %call1, 0
  %cmp939.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp641.not, i1 true, i1 %cmp939.not
  br i1 %or.cond, label %for.end21, label %for.cond5.preheader.us.us.preheader

for.cond5.preheader.us.us.preheader:              ; preds = %entry
  %wide.trip.count56 = zext i32 %call1 to i64
  %wide.trip.count = zext i32 %call2 to i64
  br label %for.cond8.preheader.us.us.us

for.cond8.preheader.us.us.us:                     ; preds = %for.cond8.for.inc16_crit_edge.us.us.us, %for.cond5.preheader.us.us.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond8.for.inc16_crit_edge.us.us.us ], [ 0, %for.cond5.preheader.us.us.preheader ]
  br label %for.body10.us.us.us

for.body10.us.us.us:                              ; preds = %for.body10.us.us.us, %for.cond8.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10.us.us.us ], [ 0, %for.cond8.preheader.us.us.us ]
  %call11.us.us.us = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17
  %1 = load ptr, ptr %filter_hint, align 8
  %2 = load ptr, ptr %1, align 8
  %arrayidx13.us.us.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv53
  %3 = load ptr, ptr %arrayidx13.us.us.us, align 8
  %arrayidx15.us.us.us = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  store i32 %call11.us.us.us, ptr %arrayidx15.us.us.us, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond8.for.inc16_crit_edge.us.us.us, label %for.body10.us.us.us

for.cond8.for.inc16_crit_edge.us.us.us:           ; preds = %for.body10.us.us.us
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond8.preheader.us.us.us.1, label %for.cond8.preheader.us.us.us

for.cond8.preheader.us.us.us.1:                   ; preds = %for.cond8.for.inc16_crit_edge.us.us.us, %for.cond8.for.inc16_crit_edge.us.us.us.1
  %indvars.iv53.1 = phi i64 [ %indvars.iv.next54.1, %for.cond8.for.inc16_crit_edge.us.us.us.1 ], [ 0, %for.cond8.for.inc16_crit_edge.us.us.us ]
  br label %for.body10.us.us.us.1

for.body10.us.us.us.1:                            ; preds = %for.body10.us.us.us.1, %for.cond8.preheader.us.us.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %for.body10.us.us.us.1 ], [ 0, %for.cond8.preheader.us.us.us.1 ]
  %call11.us.us.us.1 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17
  %4 = load ptr, ptr %filter_hint, align 8
  %arrayidx.us.us.us.1 = getelementptr inbounds i8, ptr %4, i64 8
  %5 = load ptr, ptr %arrayidx.us.us.us.1, align 8
  %arrayidx13.us.us.us.1 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv53.1
  %6 = load ptr, ptr %arrayidx13.us.us.us.1, align 8
  %arrayidx15.us.us.us.1 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.1
  store i32 %call11.us.us.us.1, ptr %arrayidx15.us.us.us.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %for.cond8.for.inc16_crit_edge.us.us.us.1, label %for.body10.us.us.us.1

for.cond8.for.inc16_crit_edge.us.us.us.1:         ; preds = %for.body10.us.us.us.1
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53.1, 1
  %exitcond57.1.not = icmp eq i64 %indvars.iv.next54.1, %wide.trip.count56
  br i1 %exitcond57.1.not, label %for.cond8.preheader.us.us.us.2, label %for.cond8.preheader.us.us.us.1

for.cond8.preheader.us.us.us.2:                   ; preds = %for.cond8.for.inc16_crit_edge.us.us.us.1, %for.cond8.for.inc16_crit_edge.us.us.us.2
  %indvars.iv53.2 = phi i64 [ %indvars.iv.next54.2, %for.cond8.for.inc16_crit_edge.us.us.us.2 ], [ 0, %for.cond8.for.inc16_crit_edge.us.us.us.1 ]
  br label %for.body10.us.us.us.2

for.body10.us.us.us.2:                            ; preds = %for.body10.us.us.us.2, %for.cond8.preheader.us.us.us.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %for.body10.us.us.us.2 ], [ 0, %for.cond8.preheader.us.us.us.2 ]
  %call11.us.us.us.2 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17
  %7 = load ptr, ptr %filter_hint, align 8
  %arrayidx.us.us.us.2 = getelementptr inbounds i8, ptr %7, i64 16
  %8 = load ptr, ptr %arrayidx.us.us.us.2, align 8
  %arrayidx13.us.us.us.2 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv53.2
  %9 = load ptr, ptr %arrayidx13.us.us.us.2, align 8
  %arrayidx15.us.us.us.2 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv.2
  store i32 %call11.us.us.us.2, ptr %arrayidx15.us.us.us.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %for.cond8.for.inc16_crit_edge.us.us.us.2, label %for.body10.us.us.us.2

for.cond8.for.inc16_crit_edge.us.us.us.2:         ; preds = %for.body10.us.us.us.2
  %indvars.iv.next54.2 = add nuw nsw i64 %indvars.iv53.2, 1
  %exitcond57.2.not = icmp eq i64 %indvars.iv.next54.2, %wide.trip.count56
  br i1 %exitcond57.2.not, label %for.end21, label %for.cond8.preheader.us.us.us.2

for.end21:                                        ; preds = %for.cond8.for.inc16_crit_edge.us.us.us.2, %entry
  %call22 = call i32 @u_1(ptr noundef nonnull @.str.134, ptr noundef %call) #17
  %10 = load ptr, ptr %filter_hint, align 8
  call void @free_mem3Dint(ptr noundef %10) #17
  call void @free(ptr noundef %call) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter_hint) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_frame_packing_arrangement_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %size, ptr %bitstream_length, align 4
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16
  store ptr %payload, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %UsedBits, align 8
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.100, ptr noundef %call) #17
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.101, ptr noundef %call) #17
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @u_v(i32 noundef 7, ptr noundef nonnull @.str.102, ptr noundef nonnull %call) #17
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef nonnull %call) #17
  %call6 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.104, ptr noundef nonnull %call) #17
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef nonnull %call) #17
  %call9 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef nonnull %call) #17
  %call10 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef nonnull %call) #17
  %call11 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef nonnull %call) #17
  %call12 = tail call i32 @u_1(ptr noundef nonnull @.str.109, ptr noundef nonnull %call) #17
  %call13 = tail call i32 @u_1(ptr noundef nonnull @.str.110, ptr noundef nonnull %call) #17
  %cmp15 = icmp eq i32 %call5, 0
  %conv18 = and i32 %call4, 255
  %cmp19 = icmp ne i32 %conv18, 5
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %call22 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull %call) #17
  %call24 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef nonnull %call) #17
  %call26 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.113, ptr noundef nonnull %call) #17
  %call28 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then
  %call30 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef nonnull %call) #17
  %call32 = tail call i32 @ue_v(ptr noundef nonnull @.str.116, ptr noundef nonnull %call) #17
  br label %if.end33

if.end33:                                         ; preds = %if.end, %entry
  %call34 = tail call i32 @u_1(ptr noundef nonnull @.str.117, ptr noundef nonnull %call) #17
  tail call void @free(ptr noundef nonnull %call) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_reserved_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @get_mem3D(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare void @free_mem3D(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dec_ref_pic_marking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @CeilLog2(i32 noundef) local_unnamed_addr #5

declare void @activate_sps(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @i_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @tone_map(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %lut, i32 noundef %size_x, i32 noundef %size_y) local_unnamed_addr #11 {
entry:
  %cmp24 = icmp sgt i32 %size_y, 0
  %cmp222 = icmp sgt i32 %size_x, 0
  %or.cond = and i1 %cmp24, %cmp222
  br i1 %or.cond, label %for.cond1.preheader.us.preheader, label %for.end14

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count31 = zext nneg i32 %size_y to i64
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %0 = icmp ult i32 %size_x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc12_crit_edge.us
  %indvars.iv28 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next29, %for.cond1.for.inc12_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv28
  br i1 %0, label %for.cond1.for.inc12_crit_edge.us.unr-lcssa, label %for.body3.us

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %1 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us = getelementptr inbounds i16, ptr %1, i64 %indvars.iv
  %2 = load i16, ptr %arrayidx5.us, align 2
  %idxprom6.us = zext i16 %2 to i64
  %arrayidx7.us = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us
  %3 = load i16, ptr %arrayidx7.us, align 2
  store i16 %3, ptr %arrayidx5.us, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %4 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.1 = getelementptr inbounds i16, ptr %4, i64 %indvars.iv.next
  %5 = load i16, ptr %arrayidx5.us.1, align 2
  %idxprom6.us.1 = zext i16 %5 to i64
  %arrayidx7.us.1 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.1
  %6 = load i16, ptr %arrayidx7.us.1, align 2
  store i16 %6, ptr %arrayidx5.us.1, align 2
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %7 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.2 = getelementptr inbounds i16, ptr %7, i64 %indvars.iv.next.1
  %8 = load i16, ptr %arrayidx5.us.2, align 2
  %idxprom6.us.2 = zext i16 %8 to i64
  %arrayidx7.us.2 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.2
  %9 = load i16, ptr %arrayidx7.us.2, align 2
  store i16 %9, ptr %arrayidx5.us.2, align 2
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %10 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.3 = getelementptr inbounds i16, ptr %10, i64 %indvars.iv.next.2
  %11 = load i16, ptr %arrayidx5.us.3, align 2
  %idxprom6.us.3 = zext i16 %11 to i64
  %arrayidx7.us.3 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.3
  %12 = load i16, ptr %arrayidx7.us.3, align 2
  store i16 %12, ptr %arrayidx5.us.3, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond1.for.inc12_crit_edge.us.unr-lcssa, label %for.body3.us

for.cond1.for.inc12_crit_edge.us.unr-lcssa:       ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next.3, %for.body3.us ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc12_crit_edge.us, label %for.body3.us.epil

for.body3.us.epil:                                ; preds = %for.cond1.for.inc12_crit_edge.us.unr-lcssa, %for.body3.us.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body3.us.epil ], [ %indvars.iv.unr, %for.cond1.for.inc12_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.epil ], [ 0, %for.cond1.for.inc12_crit_edge.us.unr-lcssa ]
  %13 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.epil = getelementptr inbounds i16, ptr %13, i64 %indvars.iv.epil
  %14 = load i16, ptr %arrayidx5.us.epil, align 2
  %idxprom6.us.epil = zext i16 %14 to i64
  %arrayidx7.us.epil = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.epil
  %15 = load i16, ptr %arrayidx7.us.epil, align 2
  store i16 %15, ptr %arrayidx5.us.epil, align 2
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc12_crit_edge.us, label %for.body3.us.epil, !llvm.loop !9

for.cond1.for.inc12_crit_edge.us:                 ; preds = %for.body3.us.epil, %for.cond1.for.inc12_crit_edge.us.unr-lcssa
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %for.end14, label %for.cond1.preheader.us

for.end14:                                        ; preds = %for.cond1.for.inc12_crit_edge.us, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tone_mapping_sei(ptr nocapture noundef writeonly %seiToneMapping) local_unnamed_addr #12 {
entry:
  store i32 0, ptr %seiToneMapping, align 8
  %count = getelementptr inbounds i8, ptr %seiToneMapping, i64 16
  store i32 0, ptr %count, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tone_mapping_sei(ptr nocapture noundef %seiToneMapping) local_unnamed_addr #13 {
entry:
  %tone_map_repetition_period = getelementptr inbounds i8, ptr %seiToneMapping, i64 4
  %0 = load i32, ptr %tone_map_repetition_period, align 4
  switch i32 %0, label %if.then3 [
    i32 0, label %if.then
    i32 1, label %if.end12
  ]

if.then:                                          ; preds = %entry
  store i32 0, ptr %seiToneMapping, align 8
  %count = getelementptr inbounds i8, ptr %seiToneMapping, i64 16
  br label %if.end12.sink.split

if.then3:                                         ; preds = %entry
  %count4 = getelementptr inbounds i8, ptr %seiToneMapping, i64 16
  %1 = load i32, ptr %count4, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count4, align 8
  %cmp7.not = icmp ult i32 %inc, %0
  br i1 %cmp7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.then3
  store i32 0, ptr %seiToneMapping, align 8
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then, %if.then8
  %count4.sink = phi ptr [ %count4, %if.then8 ], [ %count, %if.then ]
  store i32 0, ptr %count4.sink, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry, %if.then3
  ret void
}

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
