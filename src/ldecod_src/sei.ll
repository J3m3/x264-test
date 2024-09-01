; ModuleID = 'ldecod_src/sei.c'
source_filename = "ldecod_src/sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.tone_mapping_struct_tmp = type { i32, i8, i32, i8, i8, i32, i32, i32, i32, i32, [4096 x i32], i32, [4096 x i32], [4096 x i32] }

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SEI: target_frame_num\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"SEI: num_spare_pics_minus1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [27 x i8] c"SEI: delta_spare_frame_num\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [24 x i8] c"SEI: ref_area_indicator\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [22 x i8] c"SEI: ref_mb_indicator\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [21 x i8] c"SEI: zero_run_length\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [30 x i8] c"Wrong ref_area_indicator %d!\0A\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_layer_num\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [16 x i8] c"SEI: sub_seq_id\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [24 x i8] c"SEI: first_ref_pic_flag\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [30 x i8] c"SEI: leading_non_ref_pic_flag\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [19 x i8] c"SEI: last_pic_flag\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [28 x i8] c"SEI: sub_seq_frame_num_flag\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_frame_num\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [27 x i8] c"SEI: num_sub_layers_minus1\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [30 x i8] c"SEI: accurate_statistics_flag\00", align 1, !dbg !59
@.str.16 = private unnamed_addr constant [22 x i8] c"SEI: average_bit_rate\00", align 1, !dbg !61
@.str.17 = private unnamed_addr constant [24 x i8] c"SEI: average_frame_rate\00", align 1, !dbg !63
@.str.18 = private unnamed_addr constant [19 x i8] c"SEI: duration_flag\00", align 1, !dbg !65
@.str.19 = private unnamed_addr constant [23 x i8] c"SEI: average_rate_flag\00", align 1, !dbg !67
@.str.20 = private unnamed_addr constant [28 x i8] c"SEI: num_referenced_subseqs\00", align 1, !dbg !69
@.str.21 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_layer_num\00", align 1, !dbg !71
@.str.22 = private unnamed_addr constant [20 x i8] c"SEI: ref_sub_seq_id\00", align 1, !dbg !73
@.str.23 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_direction\00", align 1, !dbg !78
@.str.24 = private unnamed_addr constant [14 x i8] c"SEI: scene_id\00", align 1, !dbg !80
@.str.25 = private unnamed_addr constant [27 x i8] c"SEI: scene_transition_type\00", align 1, !dbg !85
@.str.26 = private unnamed_addr constant [22 x i8] c"SEI: pan_scan_rect_id\00", align 1, !dbg !87
@.str.27 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_cancel_flag\00", align 1, !dbg !89
@.str.28 = private unnamed_addr constant [25 x i8] c"SEI: pan_scan_cnt_minus1\00", align 1, !dbg !94
@.str.29 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_left_offset\00", align 1, !dbg !99
@.str.30 = private unnamed_addr constant [32 x i8] c"SEI: pan_scan_rect_right_offset\00", align 1, !dbg !101
@.str.31 = private unnamed_addr constant [30 x i8] c"SEI: pan_scan_rect_top_offset\00", align 1, !dbg !106
@.str.32 = private unnamed_addr constant [33 x i8] c"SEI: pan_scan_rect_bottom_offset\00", align 1, !dbg !108
@.str.33 = private unnamed_addr constant [37 x i8] c"SEI: pan_scan_rect_repetition_period\00", align 1, !dbg !113
@.str.34 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1, !dbg !118
@.str.35 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1, !dbg !120
@.str.36 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1, !dbg !122
@.str.37 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1, !dbg !124
@.str.38 = private unnamed_addr constant [23 x i8] c"SEI: original_idr_flag\00", align 1, !dbg !126
@.str.39 = private unnamed_addr constant [24 x i8] c"SEI: original_frame_num\00", align 1, !dbg !128
@.str.40 = private unnamed_addr constant [29 x i8] c"SEI: original_field_pic_flag\00", align 1, !dbg !130
@.str.41 = private unnamed_addr constant [32 x i8] c"SEI: original_bottom_field_flag\00", align 1, !dbg !135
@.str.42 = private unnamed_addr constant [41 x i8] c"SEI: full_frame_freeze_repetition_period\00", align 1, !dbg !137
@.str.43 = private unnamed_addr constant [17 x i8] c"SEI: snapshot_id\00", align 1, !dbg !142
@.str.44 = private unnamed_addr constant [31 x i8] c"SEI: progressive_refinement_id\00", align 1, !dbg !147
@.str.45 = private unnamed_addr constant [33 x i8] c"SEI: num_refinement_steps_minus1\00", align 1, !dbg !149
@.str.46 = private unnamed_addr constant [29 x i8] c"SEI: num_slice_groups_minus1\00", align 1, !dbg !151
@.str.47 = private unnamed_addr constant [20 x i8] c"SEI: slice_group_id\00", align 1, !dbg !153
@.str.48 = private unnamed_addr constant [24 x i8] c"SEI: pan_scan_rect_flag\00", align 1, !dbg !155
@.str.49 = private unnamed_addr constant [44 x i8] c"SEI: film_grain_characteristics_cancel_flag\00", align 1, !dbg !157
@.str.50 = private unnamed_addr constant [14 x i8] c"SEI: model_id\00", align 1, !dbg !162
@.str.51 = private unnamed_addr constant [46 x i8] c"SEI: separate_colour_description_present_flag\00", align 1, !dbg !164
@.str.52 = private unnamed_addr constant [38 x i8] c"SEI: film_grain_bit_depth_luma_minus8\00", align 1, !dbg !169
@.str.53 = private unnamed_addr constant [40 x i8] c"SEI: film_grain_bit_depth_chroma_minus8\00", align 1, !dbg !174
@.str.54 = private unnamed_addr constant [32 x i8] c"SEI: film_grain_full_range_flag\00", align 1, !dbg !179
@.str.55 = private unnamed_addr constant [33 x i8] c"SEI: film_grain_colour_primaries\00", align 1, !dbg !181
@.str.56 = private unnamed_addr constant [41 x i8] c"SEI: film_grain_transfer_characteristics\00", align 1, !dbg !183
@.str.57 = private unnamed_addr constant [36 x i8] c"SEI: film_grain_matrix_coefficients\00", align 1, !dbg !185
@.str.58 = private unnamed_addr constant [22 x i8] c"SEI: blending_mode_id\00", align 1, !dbg !190
@.str.59 = private unnamed_addr constant [23 x i8] c"SEI: log2_scale_factor\00", align 1, !dbg !192
@.str.60 = private unnamed_addr constant [29 x i8] c"SEI: comp_model_present_flag\00", align 1, !dbg !194
@.str.61 = private unnamed_addr constant [36 x i8] c"SEI: num_intensity_intervals_minus1\00", align 1, !dbg !196
@.str.62 = private unnamed_addr constant [29 x i8] c"SEI: num_model_values_minus1\00", align 1, !dbg !198
@.str.63 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_lower_bound\00", align 1, !dbg !200
@.str.64 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_upper_bound\00", align 1, !dbg !202
@.str.65 = private unnamed_addr constant [22 x i8] c"SEI: comp_model_value\00", align 1, !dbg !204
@.str.66 = private unnamed_addr constant [50 x i8] c"SEI: film_grain_characteristics_repetition_period\00", align 1, !dbg !206
@.str.67 = private unnamed_addr constant [47 x i8] c"SEI: deblocking_display_preference_cancel_flag\00", align 1, !dbg !211
@.str.68 = private unnamed_addr constant [48 x i8] c"SEI: display_prior_to_deblocking_preferred_flag\00", align 1, !dbg !216
@.str.69 = private unnamed_addr constant [41 x i8] c"SEI: dec_frame_buffering_constraint_flag\00", align 1, !dbg !221
@.str.70 = private unnamed_addr constant [53 x i8] c"SEI: deblocking_display_preference_repetition_period\00", align 1, !dbg !223
@.str.71 = private unnamed_addr constant [23 x i8] c"SEI: field_views_flags\00", align 1, !dbg !228
@.str.72 = private unnamed_addr constant [33 x i8] c"SEI: top_field_is_left_view_flag\00", align 1, !dbg !230
@.str.73 = private unnamed_addr constant [37 x i8] c"SEI: current_frame_is_left_view_flag\00", align 1, !dbg !232
@.str.74 = private unnamed_addr constant [36 x i8] c"SEI: next_frame_is_second_view_flag\00", align 1, !dbg !234
@.str.75 = private unnamed_addr constant [35 x i8] c"SEI: left_view_self_contained_flag\00", align 1, !dbg !236
@.str.76 = private unnamed_addr constant [36 x i8] c"SEI: right_view_self_contained_flag\00", align 1, !dbg !241
@.str.77 = private unnamed_addr constant [26 x i8] c"SEI: seq_parameter_set_id\00", align 1, !dbg !243
@.str.78 = private unnamed_addr constant [31 x i8] c"SEI: initial_cpb_removal_delay\00", align 1, !dbg !248
@.str.79 = private unnamed_addr constant [38 x i8] c"SEI: initial_cpb_removal_delay_offset\00", align 1, !dbg !250
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [53 x i8] c"Warning: no active SPS, timing SEI cannot be parsed\0A\00", align 1, !dbg !252
@.str.81 = private unnamed_addr constant [23 x i8] c"SEI: cpb_removal_delay\00", align 1, !dbg !254
@.str.82 = private unnamed_addr constant [22 x i8] c"SEI: dpb_output_delay\00", align 1, !dbg !256
@.str.83 = private unnamed_addr constant [16 x i8] c"SEI: pic_struct\00", align 1, !dbg !258
@.str.84 = private unnamed_addr constant [61 x i8] c"reserved picture_structure used (can't determine NumClockTs)\00", align 1, !dbg !260
@.str.85 = private unnamed_addr constant [27 x i8] c"SEI: clock_time_stamp_flag\00", align 1, !dbg !265
@.str.86 = private unnamed_addr constant [13 x i8] c"SEI: ct_type\00", align 1, !dbg !267
@.str.87 = private unnamed_addr constant [27 x i8] c"SEI: nuit_field_based_flag\00", align 1, !dbg !272
@.str.88 = private unnamed_addr constant [19 x i8] c"SEI: counting_type\00", align 1, !dbg !274
@.str.89 = private unnamed_addr constant [25 x i8] c"SEI: full_timestamp_flag\00", align 1, !dbg !276
@.str.90 = private unnamed_addr constant [24 x i8] c"SEI: discontinuity_flag\00", align 1, !dbg !278
@.str.91 = private unnamed_addr constant [22 x i8] c"SEI: cnt_dropped_flag\00", align 1, !dbg !280
@.str.92 = private unnamed_addr constant [13 x i8] c"SEI: nframes\00", align 1, !dbg !282
@.str.93 = private unnamed_addr constant [19 x i8] c"SEI: seconds_value\00", align 1, !dbg !284
@.str.94 = private unnamed_addr constant [19 x i8] c"SEI: minutes_value\00", align 1, !dbg !286
@.str.95 = private unnamed_addr constant [17 x i8] c"SEI: hours_value\00", align 1, !dbg !288
@.str.96 = private unnamed_addr constant [18 x i8] c"SEI: seconds_flag\00", align 1, !dbg !290
@.str.97 = private unnamed_addr constant [18 x i8] c"SEI: minutes_flag\00", align 1, !dbg !295
@.str.98 = private unnamed_addr constant [16 x i8] c"SEI: hours_flag\00", align 1, !dbg !297
@.str.99 = private unnamed_addr constant [17 x i8] c"SEI: time_offset\00", align 1, !dbg !299
@.str.100 = private unnamed_addr constant [34 x i8] c"SEI: frame_packing_arrangement_id\00", align 1, !dbg !301
@.str.101 = private unnamed_addr constant [43 x i8] c"SEI: frame_packing_arrangement_cancel_flag\00", align 1, !dbg !306
@.str.102 = private unnamed_addr constant [36 x i8] c"SEI: frame_packing_arrangement_type\00", align 1, !dbg !311
@.str.103 = private unnamed_addr constant [28 x i8] c"SEI: quincunx_sampling_flag\00", align 1, !dbg !313
@.str.104 = private unnamed_addr constant [33 x i8] c"SEI: content_interpretation_type\00", align 1, !dbg !315
@.str.105 = private unnamed_addr constant [27 x i8] c"SEI: spatial_flipping_flag\00", align 1, !dbg !317
@.str.106 = private unnamed_addr constant [25 x i8] c"SEI: frame0_flipped_flag\00", align 1, !dbg !319
@.str.107 = private unnamed_addr constant [22 x i8] c"SEI: field_views_flag\00", align 1, !dbg !321
@.str.108 = private unnamed_addr constant [34 x i8] c"SEI: current_frame_is_frame0_flag\00", align 1, !dbg !323
@.str.109 = private unnamed_addr constant [32 x i8] c"SEI: frame0_self_contained_flag\00", align 1, !dbg !325
@.str.110 = private unnamed_addr constant [32 x i8] c"SEI: frame1_self_contained_flag\00", align 1, !dbg !327
@.str.111 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_x\00", align 1, !dbg !329
@.str.112 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_y\00", align 1, !dbg !331
@.str.113 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_x\00", align 1, !dbg !333
@.str.114 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_y\00", align 1, !dbg !335
@.str.115 = private unnamed_addr constant [45 x i8] c"SEI: frame_packing_arrangement_reserved_byte\00", align 1, !dbg !337
@.str.116 = private unnamed_addr constant [49 x i8] c"SEI: frame_packing_arrangement_repetition_period\00", align 1, !dbg !342
@.str.117 = private unnamed_addr constant [46 x i8] c"SEI: frame_packing_arrangement_extension_flag\00", align 1, !dbg !347
@.str.118 = private unnamed_addr constant [17 x i8] c"SEI: tone_map_id\00", align 1, !dbg !349
@.str.119 = private unnamed_addr constant [26 x i8] c"SEI: tone_map_cancel_flag\00", align 1, !dbg !351
@.str.120 = private unnamed_addr constant [32 x i8] c"SEI: tone_map_repetition_period\00", align 1, !dbg !353
@.str.121 = private unnamed_addr constant [26 x i8] c"SEI: coded_data_bit_depth\00", align 1, !dbg !355
@.str.122 = private unnamed_addr constant [19 x i8] c"SEI: sei_bit_depth\00", align 1, !dbg !357
@.str.123 = private unnamed_addr constant [15 x i8] c"SEI: min_value\00", align 1, !dbg !359
@.str.124 = private unnamed_addr constant [22 x i8] c"SEI: sigmoid_midpoint\00", align 1, !dbg !364
@.str.125 = private unnamed_addr constant [19 x i8] c"SEI: sigmoid_width\00", align 1, !dbg !366
@.str.126 = private unnamed_addr constant [29 x i8] c"SEI: start_of_coded_interval\00", align 1, !dbg !368
@.str.127 = private unnamed_addr constant [16 x i8] c"SEI: num_pivots\00", align 1, !dbg !370
@.str.128 = private unnamed_addr constant [23 x i8] c"SEI: coded_pivot_value\00", align 1, !dbg !372
@.str.129 = private unnamed_addr constant [21 x i8] c"SEI: sei_pivot_value\00", align 1, !dbg !374
@.str.130 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_y\00", align 1, !dbg !376
@.str.131 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_x\00", align 1, !dbg !378
@.str.132 = private unnamed_addr constant [22 x i8] c"SEI: filter_hint_type\00", align 1, !dbg !380
@.str.133 = private unnamed_addr constant [17 x i8] c"SEI: filter_hint\00", align 1, !dbg !382
@.str.134 = private unnamed_addr constant [31 x i8] c"SEI: additional_extension_flag\00", align 1, !dbg !384
@switch.table.interpret_picture_timing_info = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 3], align 4

; Function Attrs: nounwind uwtable
define dso_local void @InterpretSEIMessage(ptr noundef %msg, i32 noundef %size, ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #0 !dbg !520 {
entry:
    #dbg_value(ptr %msg, !1722, !DIExpression(), !1730)
    #dbg_value(i32 %size, !1723, !DIExpression(), !1730)
    #dbg_value(ptr %p_Vid, !1724, !DIExpression(), !1730)
    #dbg_value(ptr %pSlice, !1725, !DIExpression(), !1730)
    #dbg_value(i32 0, !1726, !DIExpression(), !1730)
    #dbg_value(i32 0, !1727, !DIExpression(), !1730)
    #dbg_value(i32 1, !1728, !DIExpression(), !1730)
  %recovery_point.i = getelementptr inbounds i8, ptr %p_Vid, i64 849260
  %recovery_frame_cnt5.i = getelementptr inbounds i8, ptr %p_Vid, i64 849268
  br label %do.body, !dbg !1731

do.body:                                          ; preds = %sw.epilog, %entry
  %offset.0 = phi i32 [ 1, %entry ], [ %add96, %sw.epilog ], !dbg !1730
    #dbg_value(i32 %offset.0, !1728, !DIExpression(), !1730)
    #dbg_value(i32 0, !1726, !DIExpression(), !1730)
    #dbg_value(i32 %offset.0, !1728, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1730)
    #dbg_value(i8 poison, !1729, !DIExpression(), !1730)
  %0 = sext i32 %offset.0 to i64, !dbg !1732
  %1 = add i32 %offset.0, 2, !dbg !1732
  br label %while.cond, !dbg !1732

while.cond:                                       ; preds = %while.cond, %do.body
  %indvars.iv281 = phi i32 [ %indvars.iv.next282, %while.cond ], [ %1, %do.body ], !dbg !1734
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ %0, %do.body ], !dbg !1734
  %payload_type.0 = phi i32 [ %add, %while.cond ], [ 0, %do.body ], !dbg !1734
  %tmp_byte.0.in = getelementptr inbounds i8, ptr %msg, i64 %indvars.iv, !dbg !1734
  %tmp_byte.0 = load i8, ptr %tmp_byte.0.in, align 1, !dbg !1734
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1734
    #dbg_value(i8 %tmp_byte.0, !1729, !DIExpression(), !1730)
    #dbg_value(i64 %indvars.iv.next, !1728, !DIExpression(), !1730)
    #dbg_value(i32 %payload_type.0, !1726, !DIExpression(), !1730)
  %cmp = icmp eq i8 %tmp_byte.0, -1, !dbg !1735
  %add = add nuw nsw i32 %payload_type.0, 255, !dbg !1736
    #dbg_value(i32 %add, !1726, !DIExpression(), !1730)
    #dbg_value(i64 %indvars.iv.next, !1728, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1730)
    #dbg_value(i8 poison, !1729, !DIExpression(), !1730)
  %indvars.iv.next282 = add i32 %indvars.iv281, 1, !dbg !1732
  br i1 %cmp, label %while.cond, label %while.end, !dbg !1732, !llvm.loop !1738

while.end:                                        ; preds = %while.cond
  %2 = trunc nsw i64 %indvars.iv to i32, !dbg !1740
  %conv = zext i8 %tmp_byte.0 to i32, !dbg !1740
  %add6 = add nuw nsw i32 %payload_type.0, %conv, !dbg !1741
    #dbg_value(i32 %add6, !1726, !DIExpression(), !1730)
    #dbg_value(i32 0, !1727, !DIExpression(), !1730)
  %inc7 = add nsw i32 %2, 2, !dbg !1742
    #dbg_value(i32 %inc7, !1728, !DIExpression(), !1730)
    #dbg_value(i8 poison, !1729, !DIExpression(), !1730)
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1734
  %idxprom8.pn271 = ashr exact i64 %sext, 32, !dbg !1734
  %tmp_byte.1.in272 = getelementptr inbounds i8, ptr %msg, i64 %idxprom8.pn271, !dbg !1734
  %tmp_byte.1273 = load i8, ptr %tmp_byte.1.in272, align 1, !dbg !1734
  %cmp12274 = icmp eq i8 %tmp_byte.1273, -1, !dbg !1743
  br i1 %cmp12274, label %while.body14.preheader, label %while.end19, !dbg !1744

while.body14.preheader:                           ; preds = %while.end
  %3 = sext i32 %indvars.iv281 to i64, !dbg !1744
  br label %while.body14, !dbg !1744

while.body14:                                     ; preds = %while.body14.preheader, %while.body14
  %indvars.iv283 = phi i64 [ %3, %while.body14.preheader ], [ %indvars.iv.next284, %while.body14 ]
  %payload_size.0275 = phi i32 [ 0, %while.body14.preheader ], [ %add15, %while.body14 ]
    #dbg_value(i64 %indvars.iv283, !1728, !DIExpression(), !1730)
    #dbg_value(i32 %payload_size.0275, !1727, !DIExpression(), !1730)
  %add15 = add nuw nsw i32 %payload_size.0275, 255, !dbg !1745
    #dbg_value(i32 %add15, !1727, !DIExpression(), !1730)
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1, !dbg !1747
    #dbg_value(i64 %indvars.iv.next284, !1728, !DIExpression(), !1730)
    #dbg_value(i8 poison, !1729, !DIExpression(), !1730)
  %tmp_byte.1.in = getelementptr inbounds i8, ptr %msg, i64 %indvars.iv283, !dbg !1734
  %tmp_byte.1 = load i8, ptr %tmp_byte.1.in, align 1, !dbg !1734
    #dbg_value(i8 %tmp_byte.1, !1729, !DIExpression(), !1730)
  %cmp12 = icmp eq i8 %tmp_byte.1, -1, !dbg !1743
  br i1 %cmp12, label %while.body14, label %while.end19.loopexit, !dbg !1744, !llvm.loop !1748

while.end19.loopexit:                             ; preds = %while.body14
  %4 = trunc nsw i64 %indvars.iv.next284 to i32, !dbg !1750
  br label %while.end19, !dbg !1750

while.end19:                                      ; preds = %while.end19.loopexit, %while.end
  %payload_size.0.lcssa = phi i32 [ 0, %while.end ], [ %add15, %while.end19.loopexit ], !dbg !1734
  %offset.2.lcssa = phi i32 [ %inc7, %while.end ], [ %4, %while.end19.loopexit ], !dbg !1734
  %tmp_byte.1.lcssa = phi i8 [ %tmp_byte.1273, %while.end ], [ %tmp_byte.1, %while.end19.loopexit ], !dbg !1734
  %conv11 = zext i8 %tmp_byte.1.lcssa to i32, !dbg !1750
  %add21 = add nuw nsw i32 %payload_size.0.lcssa, %conv11, !dbg !1751
    #dbg_value(i32 %add21, !1727, !DIExpression(), !1730)
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
  ], !dbg !1752

while.end19.sw.bb76_crit_edge:                    ; preds = %while.end19
  %.pre = sext i32 %offset.2.lcssa to i64, !dbg !1753
  br label %sw.bb76, !dbg !1752

sw.bb:                                            ; preds = %while.end19
  %idx.ext = sext i32 %offset.2.lcssa to i64, !dbg !1755
  %add.ptr = getelementptr inbounds i8, ptr %msg, i64 %idx.ext, !dbg !1755
  tail call void @interpret_buffering_period_info(ptr noundef %add.ptr, i32 noundef %add21, ptr noundef %p_Vid), !dbg !1756
  br label %sw.epilog, !dbg !1757

sw.bb22:                                          ; preds = %while.end19
  %idx.ext23 = sext i32 %offset.2.lcssa to i64, !dbg !1758
  %add.ptr24 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext23, !dbg !1758
  tail call void @interpret_picture_timing_info(ptr noundef %add.ptr24, i32 noundef %add21, ptr noundef %p_Vid), !dbg !1759
  br label %sw.epilog, !dbg !1760

sw.bb25:                                          ; preds = %while.end19
  %idx.ext26 = sext i32 %offset.2.lcssa to i64, !dbg !1761
  %add.ptr27 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext26, !dbg !1761
  tail call void @interpret_pan_scan_rect_info(ptr noundef %add.ptr27, i32 noundef %add21, ptr poison), !dbg !1762
  br label %sw.epilog, !dbg !1763

sw.bb28:                                          ; preds = %while.end19
  %idx.ext29 = sext i32 %offset.2.lcssa to i64, !dbg !1764
  %add.ptr30 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext29, !dbg !1764
    #dbg_value(ptr %add.ptr30, !1765, !DIExpression(), !1773)
    #dbg_value(i32 %add21, !1770, !DIExpression(), !1773)
    #dbg_value(ptr %p_Vid, !1771, !DIExpression(), !1773)
    #dbg_value(i32 0, !1772, !DIExpression(), !1773)
  %cmp5.i.not = icmp eq i32 %add21, 0, !dbg !1775
  br i1 %cmp5.i.not, label %sw.epilog, label %while.body.i, !dbg !1776

while.body.i:                                     ; preds = %sw.bb28, %while.body.i
  %payload_cnt.06.i = phi i32 [ %spec.select.i, %while.body.i ], [ 0, %sw.bb28 ]
    #dbg_value(i32 %payload_cnt.06.i, !1772, !DIExpression(), !1773)
  %idxprom.i = zext nneg i32 %payload_cnt.06.i to i64, !dbg !1777
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr30, i64 %idxprom.i, !dbg !1777
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !1777
  %cmp1.i = icmp eq i8 %5, -1, !dbg !1780
  %inc.i = zext i1 %cmp1.i to i32, !dbg !1781
  %spec.select.i = add nuw nsw i32 %payload_cnt.06.i, %inc.i, !dbg !1781
    #dbg_value(i32 %spec.select.i, !1772, !DIExpression(), !1773)
  %cmp.i = icmp ult i32 %spec.select.i, %add21, !dbg !1775
  br i1 %cmp.i, label %while.body.i, label %sw.epilog, !dbg !1776, !llvm.loop !1782

sw.bb37:                                          ; preds = %while.end19
  %idx.ext38 = sext i32 %offset.2.lcssa to i64, !dbg !1784
  %add.ptr39 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext38, !dbg !1784
    #dbg_value(ptr %add.ptr39, !1785, !DIExpression(), !1795)
    #dbg_value(i32 %add21, !1788, !DIExpression(), !1795)
    #dbg_value(ptr %p_Vid, !1789, !DIExpression(), !1795)
  %call.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1797
    #dbg_value(ptr %call.i, !1794, !DIExpression(), !1795)
  %bitstream_length.i = getelementptr inbounds i8, ptr %call.i, i64 12, !dbg !1798
  store i32 %add21, ptr %bitstream_length.i, align 4, !dbg !1799
  %streamBuffer.i = getelementptr inbounds i8, ptr %call.i, i64 16, !dbg !1800
  store ptr %add.ptr39, ptr %streamBuffer.i, align 8, !dbg !1801
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !1802
  store i32 0, ptr %frame_bitoffset.i, align 8, !dbg !1803
  %6 = load ptr, ptr @p_Dec, align 8, !dbg !1804
  %UsedBits.i = getelementptr inbounds i8, ptr %6, i64 24, !dbg !1805
  store i32 0, ptr %UsedBits.i, align 8, !dbg !1806
  %call1.i = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %call.i) #17, !dbg !1807
    #dbg_value(i32 %call1.i, !1790, !DIExpression(), !1795)
  %call2.i = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call.i) #17, !dbg !1808
    #dbg_value(i32 %call2.i, !1791, !DIExpression(), !1795)
  %call3.i = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %call.i) #17, !dbg !1809
    #dbg_value(i32 %call3.i, !1792, !DIExpression(), !1795)
  %call4.i = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %call.i) #17, !dbg !1810
    #dbg_value(i32 %call4.i, !1793, !DIExpression(), !1795)
  store i32 1, ptr %recovery_point.i, align 4, !dbg !1811
  store i32 %call1.i, ptr %recovery_frame_cnt5.i, align 4, !dbg !1812
  tail call void @free(ptr noundef %call.i) #17, !dbg !1813
  br label %sw.epilog, !dbg !1814

sw.bb40:                                          ; preds = %while.end19
  %idx.ext41 = sext i32 %offset.2.lcssa to i64, !dbg !1815
  %add.ptr42 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext41, !dbg !1815
  tail call void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %add.ptr42, i32 noundef %add21, ptr noundef %p_Vid, ptr noundef %pSlice), !dbg !1816
  br label %sw.epilog, !dbg !1817

sw.bb43:                                          ; preds = %while.end19
  %idx.ext44 = sext i32 %offset.2.lcssa to i64, !dbg !1818
  %add.ptr45 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext44, !dbg !1818
  tail call void @interpret_spare_pic(ptr noundef %add.ptr45, i32 noundef %add21, ptr noundef %p_Vid), !dbg !1819
  br label %sw.epilog, !dbg !1820

sw.bb46:                                          ; preds = %while.end19
  %idx.ext47 = sext i32 %offset.2.lcssa to i64, !dbg !1821
  %add.ptr48 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext47, !dbg !1821
    #dbg_value(ptr %add.ptr48, !1822, !DIExpression(), !1831)
    #dbg_value(i32 %add21, !1825, !DIExpression(), !1831)
    #dbg_value(ptr %p_Vid, !1826, !DIExpression(), !1831)
  %call.i221 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1833
    #dbg_value(ptr %call.i221, !1827, !DIExpression(), !1831)
  %bitstream_length.i222 = getelementptr inbounds i8, ptr %call.i221, i64 12, !dbg !1834
  store i32 %add21, ptr %bitstream_length.i222, align 4, !dbg !1835
  %streamBuffer.i223 = getelementptr inbounds i8, ptr %call.i221, i64 16, !dbg !1836
  store ptr %add.ptr48, ptr %streamBuffer.i223, align 8, !dbg !1837
  %frame_bitoffset.i224 = getelementptr inbounds i8, ptr %call.i221, i64 8, !dbg !1838
  store i32 0, ptr %frame_bitoffset.i224, align 8, !dbg !1839
  %7 = load ptr, ptr @p_Dec, align 8, !dbg !1840
  %UsedBits.i225 = getelementptr inbounds i8, ptr %7, i64 24, !dbg !1841
  store i32 0, ptr %UsedBits.i225, align 8, !dbg !1842
  %call1.i226 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %call.i221) #17, !dbg !1843
    #dbg_value(i32 %call1.i226, !1828, !DIExpression(), !1831)
  %call2.i227 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %call.i221) #17, !dbg !1844
    #dbg_value(i32 %call2.i227, !1829, !DIExpression(), !1831)
  %cmp.i228 = icmp sgt i32 %call2.i227, 3, !dbg !1845
  br i1 %cmp.i228, label %if.then.i, label %interpret_scene_information.exit, !dbg !1847

if.then.i:                                        ; preds = %sw.bb46
  %call3.i229 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i221) #17, !dbg !1848
    #dbg_value(i32 %call3.i229, !1830, !DIExpression(), !1831)
  br label %interpret_scene_information.exit, !dbg !1850

interpret_scene_information.exit:                 ; preds = %sw.bb46, %if.then.i
  tail call void @free(ptr noundef nonnull %call.i221) #17, !dbg !1851
  br label %sw.epilog, !dbg !1852

sw.bb49:                                          ; preds = %while.end19
  %idx.ext50 = sext i32 %offset.2.lcssa to i64, !dbg !1853
  %add.ptr51 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext50, !dbg !1853
  tail call void @interpret_subsequence_info(ptr noundef %add.ptr51, i32 noundef %add21, ptr poison), !dbg !1854
  br label %sw.epilog, !dbg !1855

sw.bb52:                                          ; preds = %while.end19
  %idx.ext53 = sext i32 %offset.2.lcssa to i64, !dbg !1856
  %add.ptr54 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext53, !dbg !1856
    #dbg_value(ptr %add.ptr54, !1857, !DIExpression(), !1868)
    #dbg_value(i32 %add21, !1860, !DIExpression(), !1868)
    #dbg_value(ptr %p_Vid, !1861, !DIExpression(), !1868)
  %call.i230 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1870
    #dbg_value(ptr %call.i230, !1862, !DIExpression(), !1868)
  %bitstream_length.i231 = getelementptr inbounds i8, ptr %call.i230, i64 12, !dbg !1871
  store i32 %add21, ptr %bitstream_length.i231, align 4, !dbg !1872
  %streamBuffer.i232 = getelementptr inbounds i8, ptr %call.i230, i64 16, !dbg !1873
  store ptr %add.ptr54, ptr %streamBuffer.i232, align 8, !dbg !1874
  %frame_bitoffset.i233 = getelementptr inbounds i8, ptr %call.i230, i64 8, !dbg !1875
  store i32 0, ptr %frame_bitoffset.i233, align 8, !dbg !1876
  %8 = load ptr, ptr @p_Dec, align 8, !dbg !1877
  %UsedBits.i234 = getelementptr inbounds i8, ptr %8, i64 24, !dbg !1878
  store i32 0, ptr %UsedBits.i234, align 8, !dbg !1879
  %call1.i235 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %call.i230) #17, !dbg !1880
    #dbg_value(i32 %call1.i235, !1863, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1868)
    #dbg_value(i32 0, !1867, !DIExpression(), !1868)
  %cmp.not18.i = icmp slt i32 %call1.i235, 0, !dbg !1881
  br i1 %cmp.not18.i, label %interpret_subsequence_layer_characteristics_info.exit, label %for.body.i, !dbg !1884

for.body.i:                                       ; preds = %sw.bb52, %for.body.i
  %i.019.i = phi i32 [ %inc.i237, %for.body.i ], [ 0, %sw.bb52 ]
    #dbg_value(i32 %i.019.i, !1867, !DIExpression(), !1868)
  %call4.i236 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %call.i230) #17, !dbg !1885
    #dbg_value(i32 %call4.i236, !1864, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1868)
  %call6.i = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %call.i230) #17, !dbg !1887
    #dbg_value(i32 %call6.i, !1865, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1868)
  %call8.i = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %call.i230) #17, !dbg !1888
    #dbg_value(i32 %call8.i, !1866, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1868)
  %inc.i237 = add nuw i32 %i.019.i, 1, !dbg !1889
    #dbg_value(i32 %inc.i237, !1867, !DIExpression(), !1868)
  %exitcond.not.i = icmp eq i32 %i.019.i, %call1.i235, !dbg !1881
  br i1 %exitcond.not.i, label %interpret_subsequence_layer_characteristics_info.exit, label %for.body.i, !dbg !1884, !llvm.loop !1890

interpret_subsequence_layer_characteristics_info.exit: ; preds = %for.body.i, %sw.bb52
  tail call void @free(ptr noundef %call.i230) #17, !dbg !1892
  br label %sw.epilog, !dbg !1893

sw.bb55:                                          ; preds = %while.end19
  %idx.ext56 = sext i32 %offset.2.lcssa to i64, !dbg !1894
  %add.ptr57 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext56, !dbg !1894
  tail call void @interpret_subsequence_characteristics_info(ptr noundef %add.ptr57, i32 noundef %add21, ptr poison), !dbg !1895
  br label %sw.epilog, !dbg !1896

sw.bb58:                                          ; preds = %while.end19
  %idx.ext59 = sext i32 %offset.2.lcssa to i64, !dbg !1897
  %add.ptr60 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext59, !dbg !1897
    #dbg_value(ptr %add.ptr60, !1898, !DIExpression(), !1905)
    #dbg_value(i32 %add21, !1901, !DIExpression(), !1905)
    #dbg_value(ptr %p_Vid, !1902, !DIExpression(), !1905)
  %call.i238 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1907
    #dbg_value(ptr %call.i238, !1904, !DIExpression(), !1905)
  %bitstream_length.i239 = getelementptr inbounds i8, ptr %call.i238, i64 12, !dbg !1908
  store i32 %add21, ptr %bitstream_length.i239, align 4, !dbg !1909
  %streamBuffer.i240 = getelementptr inbounds i8, ptr %call.i238, i64 16, !dbg !1910
  store ptr %add.ptr60, ptr %streamBuffer.i240, align 8, !dbg !1911
  %frame_bitoffset.i241 = getelementptr inbounds i8, ptr %call.i238, i64 8, !dbg !1912
  store i32 0, ptr %frame_bitoffset.i241, align 8, !dbg !1913
  %call1.i242 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %call.i238) #17, !dbg !1914
    #dbg_value(i32 %call1.i242, !1903, !DIExpression(), !1905)
  tail call void @free(ptr noundef %call.i238) #17, !dbg !1915
  br label %sw.epilog, !dbg !1916

sw.bb64:                                          ; preds = %while.end19
  %idx.ext65 = sext i32 %offset.2.lcssa to i64, !dbg !1917
  %add.ptr66 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext65, !dbg !1917
    #dbg_value(ptr %add.ptr66, !1918, !DIExpression(), !1925)
    #dbg_value(i32 %add21, !1921, !DIExpression(), !1925)
    #dbg_value(ptr %p_Vid, !1922, !DIExpression(), !1925)
  %call.i243 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1927
    #dbg_value(ptr %call.i243, !1924, !DIExpression(), !1925)
  %bitstream_length.i244 = getelementptr inbounds i8, ptr %call.i243, i64 12, !dbg !1928
  store i32 %add21, ptr %bitstream_length.i244, align 4, !dbg !1929
  %streamBuffer.i245 = getelementptr inbounds i8, ptr %call.i243, i64 16, !dbg !1930
  store ptr %add.ptr66, ptr %streamBuffer.i245, align 8, !dbg !1931
  %frame_bitoffset.i246 = getelementptr inbounds i8, ptr %call.i243, i64 8, !dbg !1932
  store i32 0, ptr %frame_bitoffset.i246, align 8, !dbg !1933
  %9 = load ptr, ptr @p_Dec, align 8, !dbg !1934
  %UsedBits.i247 = getelementptr inbounds i8, ptr %9, i64 24, !dbg !1935
  store i32 0, ptr %UsedBits.i247, align 8, !dbg !1936
  %call1.i248 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %call.i243) #17, !dbg !1937
    #dbg_value(i32 %call1.i248, !1923, !DIExpression(), !1925)
  tail call void @free(ptr noundef %call.i243) #17, !dbg !1938
  br label %sw.epilog, !dbg !1939

sw.bb67:                                          ; preds = %while.end19
  %idx.ext68 = sext i32 %offset.2.lcssa to i64, !dbg !1940
  %add.ptr69 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext68, !dbg !1940
    #dbg_value(ptr %add.ptr69, !1941, !DIExpression(), !1949)
    #dbg_value(i32 %add21, !1944, !DIExpression(), !1949)
    #dbg_value(ptr %p_Vid, !1945, !DIExpression(), !1949)
  %call.i249 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1951
    #dbg_value(ptr %call.i249, !1948, !DIExpression(), !1949)
  %bitstream_length.i250 = getelementptr inbounds i8, ptr %call.i249, i64 12, !dbg !1952
  store i32 %add21, ptr %bitstream_length.i250, align 4, !dbg !1953
  %streamBuffer.i251 = getelementptr inbounds i8, ptr %call.i249, i64 16, !dbg !1954
  store ptr %add.ptr69, ptr %streamBuffer.i251, align 8, !dbg !1955
  %frame_bitoffset.i252 = getelementptr inbounds i8, ptr %call.i249, i64 8, !dbg !1956
  store i32 0, ptr %frame_bitoffset.i252, align 8, !dbg !1957
  %10 = load ptr, ptr @p_Dec, align 8, !dbg !1958
  %UsedBits.i253 = getelementptr inbounds i8, ptr %10, i64 24, !dbg !1959
  store i32 0, ptr %UsedBits.i253, align 8, !dbg !1960
  %call1.i254 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call.i249) #17, !dbg !1961
    #dbg_value(i32 %call1.i254, !1946, !DIExpression(), !1949)
  %call2.i255 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %call.i249) #17, !dbg !1962
    #dbg_value(i32 %call2.i255, !1947, !DIExpression(), !1949)
  tail call void @free(ptr noundef %call.i249) #17, !dbg !1963
  br label %sw.epilog, !dbg !1964

sw.bb70:                                          ; preds = %while.end19
  %idx.ext71 = sext i32 %offset.2.lcssa to i64, !dbg !1965
  %add.ptr72 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext71, !dbg !1965
    #dbg_value(ptr %add.ptr72, !1966, !DIExpression(), !1973)
    #dbg_value(i32 %add21, !1969, !DIExpression(), !1973)
    #dbg_value(ptr %p_Vid, !1970, !DIExpression(), !1973)
  %call.i256 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !1975
    #dbg_value(ptr %call.i256, !1972, !DIExpression(), !1973)
  %bitstream_length.i257 = getelementptr inbounds i8, ptr %call.i256, i64 12, !dbg !1976
  store i32 %add21, ptr %bitstream_length.i257, align 4, !dbg !1977
  %streamBuffer.i258 = getelementptr inbounds i8, ptr %call.i256, i64 16, !dbg !1978
  store ptr %add.ptr72, ptr %streamBuffer.i258, align 8, !dbg !1979
  %frame_bitoffset.i259 = getelementptr inbounds i8, ptr %call.i256, i64 8, !dbg !1980
  store i32 0, ptr %frame_bitoffset.i259, align 8, !dbg !1981
  %11 = load ptr, ptr @p_Dec, align 8, !dbg !1982
  %UsedBits.i260 = getelementptr inbounds i8, ptr %11, i64 24, !dbg !1983
  store i32 0, ptr %UsedBits.i260, align 8, !dbg !1984
  %call1.i261 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call.i256) #17, !dbg !1985
    #dbg_value(i32 %call1.i261, !1971, !DIExpression(), !1973)
  tail call void @free(ptr noundef %call.i256) #17, !dbg !1986
  br label %sw.epilog, !dbg !1987

sw.bb73:                                          ; preds = %while.end19
  %idx.ext74 = sext i32 %offset.2.lcssa to i64, !dbg !1988
  %add.ptr75 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext74, !dbg !1988
  tail call void @interpret_motion_constrained_slice_group_set_info(ptr noundef %add.ptr75, i32 noundef %add21, ptr poison), !dbg !1989
  br label %sw.bb76, !dbg !1989

sw.bb76:                                          ; preds = %while.end19.sw.bb76_crit_edge, %sw.bb73
  %idx.ext77.pre-phi = phi i64 [ %.pre, %while.end19.sw.bb76_crit_edge ], [ %idx.ext74, %sw.bb73 ], !dbg !1753
  %add.ptr78 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext77.pre-phi, !dbg !1753
  tail call void @interpret_film_grain_characteristics_info(ptr noundef %add.ptr78, i32 noundef %add21, ptr poison), !dbg !1990
  br label %sw.epilog, !dbg !1991

sw.bb79:                                          ; preds = %while.end19
  %idx.ext80 = sext i32 %offset.2.lcssa to i64, !dbg !1992
  %add.ptr81 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext80, !dbg !1992
    #dbg_value(ptr %add.ptr81, !1993, !DIExpression(), !2003)
    #dbg_value(i32 %add21, !1996, !DIExpression(), !2003)
    #dbg_value(ptr %p_Vid, !1997, !DIExpression(), !2003)
  %call.i262 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2005
    #dbg_value(ptr %call.i262, !2002, !DIExpression(), !2003)
  %bitstream_length.i263 = getelementptr inbounds i8, ptr %call.i262, i64 12, !dbg !2006
  store i32 %add21, ptr %bitstream_length.i263, align 4, !dbg !2007
  %streamBuffer.i264 = getelementptr inbounds i8, ptr %call.i262, i64 16, !dbg !2008
  store ptr %add.ptr81, ptr %streamBuffer.i264, align 8, !dbg !2009
  %frame_bitoffset.i265 = getelementptr inbounds i8, ptr %call.i262, i64 8, !dbg !2010
  store i32 0, ptr %frame_bitoffset.i265, align 8, !dbg !2011
  %call1.i266 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %call.i262) #17, !dbg !2012
    #dbg_value(i32 %call1.i266, !1998, !DIExpression(), !2003)
  %tobool.not.i = icmp eq i32 %call1.i266, 0, !dbg !2013
  br i1 %tobool.not.i, label %if.then.i267, label %interpret_deblocking_filter_display_preference_info.exit, !dbg !2015

if.then.i267:                                     ; preds = %sw.bb79
  %call2.i268 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef nonnull %call.i262) #17, !dbg !2016
    #dbg_value(i32 %call2.i268, !1999, !DIExpression(), !2003)
  %call3.i269 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef nonnull %call.i262) #17, !dbg !2018
    #dbg_value(i32 %call3.i269, !2000, !DIExpression(), !2003)
  %call4.i270 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef nonnull %call.i262) #17, !dbg !2019
    #dbg_value(i32 %call4.i270, !2001, !DIExpression(), !2003)
  br label %interpret_deblocking_filter_display_preference_info.exit, !dbg !2020

interpret_deblocking_filter_display_preference_info.exit: ; preds = %sw.bb79, %if.then.i267
  tail call void @free(ptr noundef nonnull %call.i262) #17, !dbg !2021
  br label %sw.epilog, !dbg !2022

sw.bb82:                                          ; preds = %while.end19
  %idx.ext83 = sext i32 %offset.2.lcssa to i64, !dbg !2023
  %add.ptr84 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext83, !dbg !2023
  tail call void @interpret_stereo_video_info_info(ptr noundef %add.ptr84, i32 noundef %add21, ptr poison), !dbg !2024
  br label %sw.epilog, !dbg !2025

sw.bb85:                                          ; preds = %while.end19
  %idx.ext86 = sext i32 %offset.2.lcssa to i64, !dbg !2026
  %add.ptr87 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext86, !dbg !2026
  tail call void @interpret_tone_mapping(ptr noundef %add.ptr87, i32 noundef %add21, ptr noundef %p_Vid), !dbg !2027
  br label %sw.epilog, !dbg !2028

sw.bb88:                                          ; preds = %while.end19
  %idx.ext89 = sext i32 %offset.2.lcssa to i64, !dbg !2029
  %add.ptr90 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext89, !dbg !2029
  tail call void @interpret_post_filter_hints_info(ptr noundef %add.ptr90, i32 noundef %add21, ptr poison), !dbg !2030
  br label %sw.epilog, !dbg !2031

sw.bb91:                                          ; preds = %while.end19
  %idx.ext92 = sext i32 %offset.2.lcssa to i64, !dbg !2032
  %add.ptr93 = getelementptr inbounds i8, ptr %msg, i64 %idx.ext92, !dbg !2032
  tail call void @interpret_frame_packing_arrangement_info(ptr noundef %add.ptr93, i32 noundef %add21, ptr poison), !dbg !2033
  br label %sw.epilog, !dbg !2034

sw.epilog:                                        ; preds = %while.body.i, %while.end19, %sw.bb28, %sw.bb91, %sw.bb88, %sw.bb85, %sw.bb82, %interpret_deblocking_filter_display_preference_info.exit, %sw.bb76, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb58, %sw.bb55, %interpret_subsequence_layer_characteristics_info.exit, %sw.bb49, %interpret_scene_information.exit, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb25, %sw.bb22, %sw.bb
  %add96 = add nsw i32 %add21, %offset.2.lcssa, !dbg !2035
    #dbg_value(i32 %add96, !1728, !DIExpression(), !1730)
  %idxprom97 = sext i32 %add96 to i64, !dbg !2036
  %arrayidx98 = getelementptr inbounds i8, ptr %msg, i64 %idxprom97, !dbg !2036
  %12 = load i8, ptr %arrayidx98, align 1, !dbg !2036
  %cmp100.not = icmp eq i8 %12, -128, !dbg !2037
  br i1 %cmp100.not, label %do.end, label %do.body, !dbg !2038, !llvm.loop !2039

do.end:                                           ; preds = %sw.epilog
  ret void, !dbg !2041
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @interpret_buffering_period_info(ptr noundef %payload, i32 noundef %size, ptr noundef %p_Vid) local_unnamed_addr #0 !dbg !2042 {
entry:
    #dbg_value(ptr %payload, !2044, !DIExpression(), !2053)
    #dbg_value(i32 %size, !2045, !DIExpression(), !2053)
    #dbg_value(ptr %p_Vid, !2046, !DIExpression(), !2053)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2054
    #dbg_value(ptr %call, !2051, !DIExpression(), !2053)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2055
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2056
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2057
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2058
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2059
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2060
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2061
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2062
  store i32 0, ptr %UsedBits, align 8, !dbg !2063
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.77, ptr noundef %call) #17, !dbg !2064
    #dbg_value(i32 %call1, !2047, !DIExpression(), !2053)
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24, !dbg !2065
  %idxprom = sext i32 %call1 to i64, !dbg !2066
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], ptr %SeqParSet, i64 0, i64 %idxprom, !dbg !2066
    #dbg_value(ptr %arrayidx, !2052, !DIExpression(), !2053)
  tail call void @activate_sps(ptr noundef %p_Vid, ptr noundef nonnull %arrayidx) #17, !dbg !2067
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3168, !dbg !2068
  %1 = load i32, ptr %vui_parameters_present_flag, align 4, !dbg !2068
  %tobool.not = icmp eq i32 %1, 0, !dbg !2070
  br i1 %tobool.not, label %if.end37, label %if.then, !dbg !2071

if.then:                                          ; preds = %entry
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3248, !dbg !2072
  %2 = load i32, ptr %nal_hrd_parameters_present_flag, align 4, !dbg !2072
  %tobool2.not = icmp eq i32 %2, 0, !dbg !2075
  br i1 %tobool2.not, label %if.end, label %for.cond.preheader, !dbg !2076

for.cond.preheader:                               ; preds = %if.then
  %nal_hrd_parameters = getelementptr inbounds i8, ptr %arrayidx, i64 3252
    #dbg_value(i32 0, !2050, !DIExpression(), !2053)
  %3 = load i32, ptr %nal_hrd_parameters, align 4, !dbg !2077
  %cmp60.not = icmp eq i32 %3, -1, !dbg !2081
  br i1 %cmp60.not, label %if.end, label %for.body.lr.ph, !dbg !2082

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %arrayidx, i64 3648
  br label %for.body, !dbg !2082

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %k.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
    #dbg_value(i32 %k.061, !2050, !DIExpression(), !2053)
  %4 = load i32, ptr %initial_cpb_removal_delay_length_minus1, align 4, !dbg !2083
  %add7 = add i32 %4, 1, !dbg !2085
  %call8 = tail call i32 @u_v(i32 noundef %add7, ptr noundef nonnull @.str.78, ptr noundef %call) #17, !dbg !2086
    #dbg_value(i32 %call8, !2048, !DIExpression(), !2053)
  %5 = load i32, ptr %initial_cpb_removal_delay_length_minus1, align 4, !dbg !2087
  %add12 = add i32 %5, 1, !dbg !2088
  %call13 = tail call i32 @u_v(i32 noundef %add12, ptr noundef nonnull @.str.79, ptr noundef %call) #17, !dbg !2089
    #dbg_value(i32 %call13, !2049, !DIExpression(), !2053)
  %inc = add nuw i32 %k.061, 1, !dbg !2090
    #dbg_value(i32 %inc, !2050, !DIExpression(), !2053)
  %6 = load i32, ptr %nal_hrd_parameters, align 4, !dbg !2077
  %add = add i32 %6, 1, !dbg !2091
  %cmp = icmp ult i32 %inc, %add, !dbg !2081
  br i1 %cmp, label %for.body, label %if.end, !dbg !2082, !llvm.loop !2092

if.end:                                           ; preds = %for.body, %for.cond.preheader, %if.then
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %arrayidx, i64 3664, !dbg !2094
  %7 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4, !dbg !2094
  %tobool15.not = icmp eq i32 %7, 0, !dbg !2096
  br i1 %tobool15.not, label %if.end37, label %for.cond17.preheader, !dbg !2097

for.cond17.preheader:                             ; preds = %if.end
  %vcl_hrd_parameters = getelementptr inbounds i8, ptr %arrayidx, i64 3668
    #dbg_value(i32 0, !2050, !DIExpression(), !2053)
  %8 = load i32, ptr %vcl_hrd_parameters, align 4, !dbg !2098
  %cmp2163.not = icmp eq i32 %8, -1, !dbg !2102
  br i1 %cmp2163.not, label %if.end37, label %for.body22.lr.ph, !dbg !2103

for.body22.lr.ph:                                 ; preds = %for.cond17.preheader
  %initial_cpb_removal_delay_length_minus125 = getelementptr inbounds i8, ptr %arrayidx, i64 4064
  br label %for.body22, !dbg !2103

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %k.164 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc34, %for.body22 ]
    #dbg_value(i32 %k.164, !2050, !DIExpression(), !2053)
  %9 = load i32, ptr %initial_cpb_removal_delay_length_minus125, align 4, !dbg !2104
  %add26 = add i32 %9, 1, !dbg !2106
  %call27 = tail call i32 @u_v(i32 noundef %add26, ptr noundef nonnull @.str.78, ptr noundef %call) #17, !dbg !2107
    #dbg_value(i32 %call27, !2048, !DIExpression(), !2053)
  %10 = load i32, ptr %initial_cpb_removal_delay_length_minus125, align 4, !dbg !2108
  %add31 = add i32 %10, 1, !dbg !2109
  %call32 = tail call i32 @u_v(i32 noundef %add31, ptr noundef nonnull @.str.79, ptr noundef %call) #17, !dbg !2110
    #dbg_value(i32 %call32, !2049, !DIExpression(), !2053)
  %inc34 = add nuw i32 %k.164, 1, !dbg !2111
    #dbg_value(i32 %inc34, !2050, !DIExpression(), !2053)
  %11 = load i32, ptr %vcl_hrd_parameters, align 4, !dbg !2098
  %add20 = add i32 %11, 1, !dbg !2112
  %cmp21 = icmp ult i32 %inc34, %add20, !dbg !2102
  br i1 %cmp21, label %for.body22, label %if.end37, !dbg !2103, !llvm.loop !2113

if.end37:                                         ; preds = %for.body22, %for.cond17.preheader, %if.end, %entry
  tail call void @free(ptr noundef %call) #17, !dbg !2115
  ret void, !dbg !2116
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_picture_timing_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 !dbg !2117 {
entry:
    #dbg_value(ptr %payload, !2119, !DIExpression(), !2157)
    #dbg_value(i32 %size, !2120, !DIExpression(), !2157)
    #dbg_value(ptr %p_Vid, !2121, !DIExpression(), !2157)
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2158
  %0 = load ptr, ptr %active_sps1, align 8, !dbg !2158
    #dbg_value(ptr %0, !2122, !DIExpression(), !2157)
    #dbg_value(i32 0, !2142, !DIExpression(), !2157)
    #dbg_value(i32 24, !2144, !DIExpression(), !2157)
    #dbg_value(i32 24, !2145, !DIExpression(), !2157)
  %cmp = icmp eq ptr %0, null, !dbg !2159
  br i1 %cmp, label %if.then, label %if.end, !dbg !2161

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !2162
  %2 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %1) #18, !dbg !2164
  br label %cleanup, !dbg !2165

if.end:                                           ; preds = %entry
  %call2 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2166
    #dbg_value(ptr %call2, !2147, !DIExpression(), !2157)
  %bitstream_length = getelementptr inbounds i8, ptr %call2, i64 12, !dbg !2167
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2168
  %streamBuffer = getelementptr inbounds i8, ptr %call2, i64 16, !dbg !2169
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2170
  %frame_bitoffset = getelementptr inbounds i8, ptr %call2, i64 8, !dbg !2171
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2172
  %3 = load ptr, ptr @p_Dec, align 8, !dbg !2173
  %UsedBits = getelementptr inbounds i8, ptr %3, i64 24, !dbg !2174
  store i32 0, ptr %UsedBits, align 8, !dbg !2175
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3168, !dbg !2176
  %4 = load i32, ptr %vui_parameters_present_flag, align 4, !dbg !2176
  %tobool.not = icmp eq i32 %4, 0, !dbg !2177
  br i1 %tobool.not, label %if.end112, label %land.rhs, !dbg !2178

land.rhs:                                         ; preds = %if.end
  %nal_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3248, !dbg !2179
  %5 = load i32, ptr %nal_hrd_parameters_present_flag, align 4, !dbg !2179
  %cmp3.not = icmp eq i32 %5, 0, !dbg !2180
  br i1 %cmp3.not, label %lor.rhs, label %if.end32, !dbg !2181

lor.rhs:                                          ; preds = %land.rhs
  %vcl_hrd_parameters_present_flag = getelementptr inbounds i8, ptr %0, i64 3664, !dbg !2182
  %6 = load i32, ptr %vcl_hrd_parameters_present_flag, align 4, !dbg !2182
  %cmp5.not = icmp eq i32 %6, 0, !dbg !2183
    #dbg_value(i1 %cmp5.not, !2146, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2157)
  br i1 %cmp5.not, label %if.else47, label %lor.lhs.false, !dbg !2184

if.end32:                                         ; preds = %land.rhs
  %cpb_removal_delay_length_minus1 = getelementptr inbounds i8, ptr %0, i64 3652, !dbg !2185
    #dbg_value(i32 poison, !2144, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2157)
  %dpb_output_delay_length_minus1 = getelementptr inbounds i8, ptr %0, i64 3656, !dbg !2192
    #dbg_value(i32 poison, !2145, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2157)
  br label %if.end43, !dbg !2193

lor.lhs.false:                                    ; preds = %lor.rhs
    #dbg_value(i32 poison, !2144, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2157)
    #dbg_value(i32 poison, !2145, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2157)
  %dpb_output_delay_length_minus128 = getelementptr inbounds i8, ptr %0, i64 4072, !dbg !2195
  %cpb_removal_delay_length_minus124 = getelementptr inbounds i8, ptr %0, i64 4068, !dbg !2198
  br label %if.end43, !dbg !2199

if.end43:                                         ; preds = %if.end32, %lor.lhs.false
  %dpb_output_len.0186.in.in = phi ptr [ %dpb_output_delay_length_minus128, %lor.lhs.false ], [ %dpb_output_delay_length_minus1, %if.end32 ]
  %cpb_removal_len.0184.in.in = phi ptr [ %cpb_removal_delay_length_minus124, %lor.lhs.false ], [ %cpb_removal_delay_length_minus1, %if.end32 ]
  %cpb_removal_len.0184.in = load i32, ptr %cpb_removal_len.0184.in.in, align 4, !dbg !2200
  %cpb_removal_len.0184 = add i32 %cpb_removal_len.0184.in, 1, !dbg !2200
  %dpb_output_len.0186.in = load i32, ptr %dpb_output_len.0186.in.in, align 4, !dbg !2200
  %dpb_output_len.0186 = add i32 %dpb_output_len.0186.in, 1, !dbg !2200
  %call40 = tail call i32 @u_v(i32 noundef %cpb_removal_len.0184, ptr noundef nonnull @.str.81, ptr noundef nonnull %call2) #17, !dbg !2201
    #dbg_value(i32 %call40, !2123, !DIExpression(), !2157)
  %call41 = tail call i32 @u_v(i32 noundef %dpb_output_len.0186, ptr noundef nonnull @.str.82, ptr noundef nonnull %call2) #17, !dbg !2203
    #dbg_value(i32 %call41, !2124, !DIExpression(), !2157)
  %.pr.pre = load i32, ptr %vui_parameters_present_flag, align 4, !dbg !2204
  %7 = icmp eq i32 %.pr.pre, 0, !dbg !2206
  br i1 %7, label %if.end112, label %if.else47, !dbg !2207

if.else47:                                        ; preds = %lor.rhs, %if.end43
  %pic_struct_present_flag = getelementptr inbounds i8, ptr %0, i64 4084, !dbg !2208
  %8 = load i32, ptr %pic_struct_present_flag, align 4, !dbg !2208
    #dbg_value(i32 %8, !2125, !DIExpression(), !2157)
  %9 = icmp eq i32 %8, 0, !dbg !2210
    #dbg_value(i1 %9, !2125, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2157)
  br i1 %9, label %if.end112, label %if.then51, !dbg !2211

if.then51:                                        ; preds = %if.else47
  %call52 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull %call2) #17, !dbg !2212
    #dbg_value(i32 %call52, !2126, !DIExpression(), !2157)
  %10 = icmp ult i32 %call52, 9, !dbg !2213
  br i1 %10, label %switch.lookup, label %sw.epilog, !dbg !2213

sw.epilog:                                        ; preds = %if.then51
  tail call void @error(ptr noundef nonnull @.str.84, i32 noundef 500) #17, !dbg !2214
    #dbg_value(i32 0, !2142, !DIExpression(), !2157)
    #dbg_value(i32 0, !2143, !DIExpression(), !2157)
  br label %if.end112, !dbg !2216

switch.lookup:                                    ; preds = %if.then51
  %11 = zext nneg i32 %call52 to i64, !dbg !2213
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.interpret_picture_timing_info, i64 0, i64 %11, !dbg !2213
  %switch.load = load i32, ptr %switch.gep, align 4, !dbg !2213
    #dbg_value(i32 %switch.load, !2142, !DIExpression(), !2157)
    #dbg_value(i32 0, !2143, !DIExpression(), !2157)
  %vcl_hrd_parameters_present_flag89 = getelementptr inbounds i8, ptr %0, i64 3664
  %time_offset_length94 = getelementptr inbounds i8, ptr %0, i64 4076
  %time_offset_length102 = getelementptr inbounds i8, ptr %0, i64 3660
  br label %for.body, !dbg !2216

for.body:                                         ; preds = %switch.lookup, %for.inc
  %i.0193 = phi i32 [ 0, %switch.lookup ], [ %inc, %for.inc ]
    #dbg_value(i32 %i.0193, !2143, !DIExpression(), !2157)
  %call56 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %call2) #17, !dbg !2217
    #dbg_value(i32 %call56, !2127, !DIExpression(), !2157)
  %tobool57.not = icmp eq i32 %call56, 0, !dbg !2218
  br i1 %tobool57.not, label %for.inc, label %if.then58, !dbg !2219

if.then58:                                        ; preds = %for.body
  %call59 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.86, ptr noundef %call2) #17, !dbg !2220
    #dbg_value(i32 %call59, !2128, !DIExpression(), !2157)
  %call60 = tail call i32 @u_1(ptr noundef nonnull @.str.87, ptr noundef %call2) #17, !dbg !2221
    #dbg_value(i32 %call60, !2129, !DIExpression(), !2157)
  %call61 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.88, ptr noundef %call2) #17, !dbg !2222
    #dbg_value(i32 %call61, !2130, !DIExpression(), !2157)
  %call62 = tail call i32 @u_1(ptr noundef nonnull @.str.89, ptr noundef %call2) #17, !dbg !2223
    #dbg_value(i32 %call62, !2131, !DIExpression(), !2157)
  %call63 = tail call i32 @u_1(ptr noundef nonnull @.str.90, ptr noundef %call2) #17, !dbg !2224
    #dbg_value(i32 %call63, !2132, !DIExpression(), !2157)
  %call64 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %call2) #17, !dbg !2225
    #dbg_value(i32 %call64, !2133, !DIExpression(), !2157)
  %call65 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.92, ptr noundef %call2) #17, !dbg !2226
    #dbg_value(i32 %call65, !2134, !DIExpression(), !2157)
  %tobool66.not = icmp eq i32 %call62, 0, !dbg !2227
  br i1 %tobool66.not, label %if.else71, label %if.then67, !dbg !2229

if.then67:                                        ; preds = %if.then58
  %call68 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %call2) #17, !dbg !2230
    #dbg_value(i32 %call68, !2135, !DIExpression(), !2157)
  %call69 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %call2) #17, !dbg !2232
    #dbg_value(i32 %call69, !2136, !DIExpression(), !2157)
    #dbg_value(i32 %call83, !2137, !DIExpression(), !2157)
  br label %if.end87.sink.split, !dbg !2233

if.else71:                                        ; preds = %if.then58
  %call72 = tail call i32 @u_1(ptr noundef nonnull @.str.96, ptr noundef %call2) #17, !dbg !2234
    #dbg_value(i32 %call72, !2138, !DIExpression(), !2157)
  %tobool73.not = icmp eq i32 %call72, 0, !dbg !2236
  br i1 %tobool73.not, label %if.end87, label %if.then74, !dbg !2238

if.then74:                                        ; preds = %if.else71
  %call75 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %call2) #17, !dbg !2239
    #dbg_value(i32 %call75, !2135, !DIExpression(), !2157)
  %call76 = tail call i32 @u_1(ptr noundef nonnull @.str.97, ptr noundef %call2) #17, !dbg !2241
    #dbg_value(i32 %call76, !2139, !DIExpression(), !2157)
  %tobool77.not = icmp eq i32 %call76, 0, !dbg !2242
  br i1 %tobool77.not, label %if.end87, label %if.then78, !dbg !2244

if.then78:                                        ; preds = %if.then74
  %call79 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %call2) #17, !dbg !2245
    #dbg_value(i32 %call79, !2136, !DIExpression(), !2157)
  %call80 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %call2) #17, !dbg !2247
    #dbg_value(i32 %call80, !2140, !DIExpression(), !2157)
  %tobool81.not = icmp eq i32 %call80, 0, !dbg !2248
  br i1 %tobool81.not, label %if.end87, label %if.end87.sink.split, !dbg !2250

if.end87.sink.split:                              ; preds = %if.then78, %if.then67
  %call83 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.95, ptr noundef %call2) #17, !dbg !2251
  br label %if.end87, !dbg !2252

if.end87:                                         ; preds = %if.end87.sink.split, %if.else71, %if.then78, %if.then74
  %12 = load i32, ptr %vcl_hrd_parameters_present_flag89, align 4, !dbg !2252
  %tobool90.not = icmp eq i32 %12, 0, !dbg !2254
  br i1 %tobool90.not, label %if.else95, label %if.end105, !dbg !2255

if.else95:                                        ; preds = %if.end87
  %13 = load i32, ptr %nal_hrd_parameters_present_flag, align 4, !dbg !2256
  %tobool98.not = icmp eq i32 %13, 0, !dbg !2258
  br i1 %tobool98.not, label %if.then107, label %if.end105, !dbg !2259

if.end105:                                        ; preds = %if.else95, %if.end87
  %time_offset_length.0.in = phi ptr [ %time_offset_length94, %if.end87 ], [ %time_offset_length102, %if.else95 ]
  %time_offset_length.0 = load i32, ptr %time_offset_length.0.in, align 4, !dbg !2260
    #dbg_value(i32 %time_offset_length.0, !2148, !DIExpression(), !2261)
  %tobool106.not = icmp eq i32 %time_offset_length.0, 0, !dbg !2262
  br i1 %tobool106.not, label %for.inc, label %if.then107, !dbg !2264

if.then107:                                       ; preds = %if.else95, %if.end105
  %time_offset_length.0191 = phi i32 [ %time_offset_length.0, %if.end105 ], [ 24, %if.else95 ]
  %call108 = tail call i32 @i_v(i32 noundef %time_offset_length.0191, ptr noundef nonnull @.str.99, ptr noundef %call2) #17, !dbg !2265
    #dbg_value(i32 %call108, !2141, !DIExpression(), !2157)
  br label %for.inc, !dbg !2266

for.inc:                                          ; preds = %if.then107, %if.end105, %for.body
  %inc = add nuw nsw i32 %i.0193, 1, !dbg !2267
    #dbg_value(i32 %inc, !2143, !DIExpression(), !2157)
  %exitcond.not = icmp eq i32 %inc, %switch.load, !dbg !2268
  br i1 %exitcond.not, label %if.end112, label %for.body, !dbg !2216, !llvm.loop !2269

if.end112:                                        ; preds = %for.inc, %sw.epilog, %if.end, %if.end43, %if.else47
  tail call void @free(ptr noundef %call2) #17, !dbg !2271
  br label %cleanup, !dbg !2272

cleanup:                                          ; preds = %if.end112, %if.then
  ret void, !dbg !2272
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_pan_scan_rect_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !2273 {
entry:
    #dbg_value(ptr %payload, !2275, !DIExpression(), !2288)
    #dbg_value(i32 %size, !2276, !DIExpression(), !2288)
    #dbg_value(ptr poison, !2277, !DIExpression(), !2288)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2289
    #dbg_value(ptr %call, !2287, !DIExpression(), !2288)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2290
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2291
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2292
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2293
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2294
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2295
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2296
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2297
  store i32 0, ptr %UsedBits, align 8, !dbg !2298
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %call) #17, !dbg !2299
    #dbg_value(i32 %call1, !2282, !DIExpression(), !2288)
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %call) #17, !dbg !2300
    #dbg_value(i32 %call2, !2278, !DIExpression(), !2288)
  %tobool.not = icmp eq i32 %call2, 0, !dbg !2301
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2303

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ue_v(ptr noundef nonnull @.str.28, ptr noundef nonnull %call) #17, !dbg !2304
    #dbg_value(i32 %call3, !2279, !DIExpression(), !2288)
    #dbg_value(i32 0, !2280, !DIExpression(), !2288)
  %cmp.not21 = icmp slt i32 %call3, 0, !dbg !2306
  br i1 %cmp.not21, label %for.end, label %for.body, !dbg !2309

for.body:                                         ; preds = %if.then, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
    #dbg_value(i32 %i.022, !2280, !DIExpression(), !2288)
  %call4 = tail call i32 @se_v(ptr noundef nonnull @.str.29, ptr noundef %call) #17, !dbg !2310
    #dbg_value(i32 %call4, !2283, !DIExpression(), !2288)
  %call5 = tail call i32 @se_v(ptr noundef nonnull @.str.30, ptr noundef %call) #17, !dbg !2312
    #dbg_value(i32 %call5, !2284, !DIExpression(), !2288)
  %call6 = tail call i32 @se_v(ptr noundef nonnull @.str.31, ptr noundef %call) #17, !dbg !2313
    #dbg_value(i32 %call6, !2285, !DIExpression(), !2288)
  %call7 = tail call i32 @se_v(ptr noundef nonnull @.str.32, ptr noundef %call) #17, !dbg !2314
    #dbg_value(i32 %call7, !2286, !DIExpression(), !2288)
  %inc = add nuw i32 %i.022, 1, !dbg !2315
    #dbg_value(i32 %inc, !2280, !DIExpression(), !2288)
  %exitcond.not = icmp eq i32 %i.022, %call3, !dbg !2306
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2309, !llvm.loop !2316

for.end:                                          ; preds = %for.body, %if.then
  %call8 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %call) #17, !dbg !2318
    #dbg_value(i32 %call8, !2281, !DIExpression(), !2288)
  br label %if.end, !dbg !2319

if.end:                                           ; preds = %for.end, %entry
  tail call void @free(ptr noundef %call) #17, !dbg !2320
  ret void, !dbg !2321
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @interpret_filler_payload_info(ptr nocapture noundef readonly %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #2 !dbg !1766 {
entry:
    #dbg_value(ptr %payload, !1765, !DIExpression(), !2322)
    #dbg_value(i32 %size, !1770, !DIExpression(), !2322)
    #dbg_value(ptr %p_Vid, !1771, !DIExpression(), !2322)
    #dbg_value(i32 0, !1772, !DIExpression(), !2322)
  %cmp5 = icmp sgt i32 %size, 0, !dbg !2323
  br i1 %cmp5, label %while.body, label %while.end, !dbg !2324

while.body:                                       ; preds = %entry, %while.body
  %payload_cnt.06 = phi i32 [ %spec.select, %while.body ], [ 0, %entry ]
    #dbg_value(i32 %payload_cnt.06, !1772, !DIExpression(), !2322)
  %idxprom = zext nneg i32 %payload_cnt.06 to i64, !dbg !2325
  %arrayidx = getelementptr inbounds i8, ptr %payload, i64 %idxprom, !dbg !2325
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2325
  %cmp1 = icmp eq i8 %0, -1, !dbg !2326
  %inc = zext i1 %cmp1 to i32, !dbg !2327
  %spec.select = add nuw nsw i32 %payload_cnt.06, %inc, !dbg !2327
    #dbg_value(i32 %spec.select, !1772, !DIExpression(), !2322)
  %cmp = icmp slt i32 %spec.select, %size, !dbg !2323
  br i1 %cmp, label %while.body, label %while.end, !dbg !2324, !llvm.loop !2328

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !2330
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_registered_itu_t_t35_info(ptr nocapture noundef readonly %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 !dbg !2331 {
entry:
    #dbg_value(ptr %payload, !2333, !DIExpression(), !2340)
    #dbg_value(i32 %size, !2334, !DIExpression(), !2340)
    #dbg_value(ptr %p_Vid, !2335, !DIExpression(), !2340)
    #dbg_value(i32 0, !2336, !DIExpression(), !2340)
    #dbg_value(i8 poison, !2337, !DIExpression(), !2340)
    #dbg_value(i32 1, !2336, !DIExpression(), !2340)
    #dbg_value(i32 poison, !2336, !DIExpression(), !2340)
    #dbg_value(i32 poison, !2336, !DIExpression(), !2340)
    #dbg_value(i8 poison, !2339, !DIExpression(), !2340)
  ret void, !dbg !2341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_unregistered_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 !dbg !2342 {
entry:
    #dbg_value(ptr %payload, !2344, !DIExpression(), !2349)
    #dbg_value(i32 %size, !2345, !DIExpression(), !2349)
    #dbg_value(ptr %p_Vid, !2346, !DIExpression(), !2349)
    #dbg_value(i32 0, !2347, !DIExpression(), !2349)
    #dbg_value(i32 poison, !2347, !DIExpression(), !2349)
    #dbg_value(i32 poison, !2347, !DIExpression(), !2349)
    #dbg_value(i8 poison, !2348, !DIExpression(), !2349)
  ret void, !dbg !2350
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_recovery_point_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 !dbg !1786 {
entry:
    #dbg_value(ptr %payload, !1785, !DIExpression(), !2351)
    #dbg_value(i32 %size, !1788, !DIExpression(), !2351)
    #dbg_value(ptr %p_Vid, !1789, !DIExpression(), !2351)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2352
    #dbg_value(ptr %call, !1794, !DIExpression(), !2351)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2353
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2354
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2355
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2356
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2357
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2358
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2359
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2360
  store i32 0, ptr %UsedBits, align 8, !dbg !2361
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %call) #17, !dbg !2362
    #dbg_value(i32 %call1, !1790, !DIExpression(), !2351)
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call) #17, !dbg !2363
    #dbg_value(i32 %call2, !1791, !DIExpression(), !2351)
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %call) #17, !dbg !2364
    #dbg_value(i32 %call3, !1792, !DIExpression(), !2351)
  %call4 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %call) #17, !dbg !2365
    #dbg_value(i32 %call4, !1793, !DIExpression(), !2351)
  %recovery_point = getelementptr inbounds i8, ptr %p_Vid, i64 849260, !dbg !2366
  store i32 1, ptr %recovery_point, align 4, !dbg !2367
  %recovery_frame_cnt5 = getelementptr inbounds i8, ptr %p_Vid, i64 849268, !dbg !2368
  store i32 %call1, ptr %recovery_frame_cnt5, align 4, !dbg !2369
  tail call void @free(ptr noundef %call) #17, !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %payload, i32 noundef %size, ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #0 !dbg !2372 {
entry:
    #dbg_value(ptr %payload, !2374, !DIExpression(), !2389)
    #dbg_value(i32 %size, !2375, !DIExpression(), !2389)
    #dbg_value(ptr %p_Vid, !2376, !DIExpression(), !2389)
    #dbg_value(ptr %pSlice, !2377, !DIExpression(), !2389)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2390
    #dbg_value(ptr %call, !2388, !DIExpression(), !2389)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2391
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2392
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2393
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2394
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2395
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2396
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2397
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2398
  store i32 0, ptr %UsedBits, align 8, !dbg !2399
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.38, ptr noundef %call) #17, !dbg !2400
    #dbg_value(i32 %call1, !2378, !DIExpression(), !2389)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.39, ptr noundef %call) #17, !dbg !2401
    #dbg_value(i32 %call2, !2379, !DIExpression(), !2389)
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2402
  %1 = load ptr, ptr %active_sps, align 8, !dbg !2402
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %1, i64 3136, !dbg !2404
  %2 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !2404
  %tobool.not = icmp eq i32 %2, 0, !dbg !2405
  br i1 %tobool.not, label %if.then, label %if.end7, !dbg !2406

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef nonnull %call) #17, !dbg !2407
    #dbg_value(i32 %call3, !2380, !DIExpression(), !2389)
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !2409
  br i1 %tobool4.not, label %if.end7, label %if.then5, !dbg !2411

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.41, ptr noundef nonnull %call) #17, !dbg !2412
    #dbg_value(i32 %call6, !2381, !DIExpression(), !2389)
  br label %if.end7, !dbg !2414

if.end7:                                          ; preds = %if.then, %if.then5, %entry
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %pSlice, i64 248, !dbg !2415
  %3 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2415
    #dbg_value(ptr %3, !2383, !DIExpression(), !2389)
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48, !dbg !2416
  %4 = load i32, ptr %idr_flag, align 8, !dbg !2416
    #dbg_value(i32 %4, !2384, !DIExpression(), !2389)
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %pSlice, i64 236, !dbg !2417
  %5 = load i32, ptr %no_output_of_prior_pics_flag, align 4, !dbg !2417
    #dbg_value(i32 %5, !2385, !DIExpression(), !2389)
  %long_term_reference_flag = getelementptr inbounds i8, ptr %pSlice, i64 240, !dbg !2418
    #dbg_value(i32 poison, !2386, !DIExpression(), !2389)
  %6 = load <2 x i32>, ptr %long_term_reference_flag, align 8, !dbg !2418
    #dbg_value(i32 poison, !2387, !DIExpression(), !2389)
  store i32 %call1, ptr %idr_flag, align 8, !dbg !2419
  store ptr null, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2420
  tail call void @dec_ref_pic_marking(ptr noundef nonnull %p_Vid, ptr noundef nonnull %call, ptr noundef %pSlice) #17, !dbg !2421
  %7 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2422
  %tobool11.not48 = icmp eq ptr %7, null, !dbg !2423
  br i1 %tobool11.not48, label %while.end, label %while.body, !dbg !2423

while.body:                                       ; preds = %if.end7, %while.body
  %8 = phi ptr [ %10, %while.body ], [ %7, %if.end7 ]
    #dbg_value(ptr %8, !2382, !DIExpression(), !2389)
  %Next = getelementptr inbounds i8, ptr %8, i64 24, !dbg !2424
  %9 = load ptr, ptr %Next, align 8, !dbg !2424
  store ptr %9, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2426
  tail call void @free(ptr noundef nonnull %8) #17, !dbg !2427
  %10 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2422
  %tobool11.not = icmp eq ptr %10, null, !dbg !2423
  br i1 %tobool11.not, label %while.end, label %while.body, !dbg !2423, !llvm.loop !2428

while.end:                                        ; preds = %while.body, %if.end7
  store ptr %3, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2430
  store i32 %4, ptr %idr_flag, align 8, !dbg !2431
  store i32 %5, ptr %no_output_of_prior_pics_flag, align 4, !dbg !2432
  %no_output_of_prior_pics_flag18 = getelementptr inbounds i8, ptr %p_Vid, i64 849024, !dbg !2433
  store i32 %5, ptr %no_output_of_prior_pics_flag18, align 8, !dbg !2434
  store <2 x i32> %6, ptr %long_term_reference_flag, align 8, !dbg !2435
  tail call void @free(ptr noundef %call) #17, !dbg !2436
  ret void, !dbg !2437
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_spare_pic(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 !dbg !2438 {
entry:
  %map = alloca ptr, align 8, !DIAssignID !2466
    #dbg_assign(i1 undef, !2465, !DIExpression(), !2466, ptr %map, !DIExpression(), !2467)
    #dbg_value(ptr %payload, !2440, !DIExpression(), !2467)
    #dbg_value(i32 %size, !2441, !DIExpression(), !2467)
    #dbg_value(ptr %p_Vid, !2442, !DIExpression(), !2467)
    #dbg_value(i32 0, !2451, !DIExpression(), !2467)
    #dbg_value(i32 0, !2455, !DIExpression(), !2467)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #17, !dbg !2468
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2469
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2470
  store i32 0, ptr %UsedBits, align 8, !dbg !2471
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2472
    #dbg_value(ptr %call, !2446, !DIExpression(), !2467)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2473
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2474
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2475
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2476
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2477
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2478
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %call) #17, !dbg !2479
    #dbg_value(i32 %call1, !2451, !DIExpression(), !2467)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %call) #17, !dbg !2480
  %add = add i32 %call2, 1, !dbg !2481
    #dbg_value(i32 %add, !2452, !DIExpression(), !2467)
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784, !dbg !2482
  %1 = load i32, ptr %height, align 8, !dbg !2482
  %shr = ashr i32 %1, 4, !dbg !2483
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !2484
  %2 = load i32, ptr %width, align 4, !dbg !2484
  %shr3 = ashr i32 %2, 4, !dbg !2485
  %call4 = call i32 @get_mem3D(ptr noundef nonnull %map, i32 noundef %add, i32 noundef %shr, i32 noundef %shr3) #17, !dbg !2486
    #dbg_value(i32 0, !2443, !DIExpression(), !2467)
    #dbg_value(i32 0, !2455, !DIExpression(), !2467)
  %cmp.not366 = icmp slt i32 %call2, 0, !dbg !2487
  br i1 %cmp.not366, label %for.end222, label %for.body.lr.ph, !dbg !2490

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count = zext i32 %add to i64, !dbg !2487
  br label %for.body, !dbg !2490

for.body:                                         ; preds = %for.body.lr.ph, %for.inc220
  %indvars.iv383 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next384, %for.inc220 ]
    #dbg_value(i64 %indvars.iv383, !2443, !DIExpression(), !2467)
    #dbg_value(i32 poison, !2455, !DIExpression(), !2467)
    #dbg_value(i32 poison, !2454, !DIExpression(), !2467)
  %call9 = call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %call) #17, !dbg !2491
    #dbg_value(i32 %call9, !2453, !DIExpression(), !2467)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2467)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !2455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 23, DW_OP_shr, DW_OP_constu, 256, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2467)
  %call15 = call i32 @ue_v(ptr noundef nonnull @.str.3, ptr noundef %call) #17, !dbg !2493
    #dbg_value(i32 %call15, !2456, !DIExpression(), !2467)
  switch i32 %call15, label %sw.default [
    i32 0, label %for.cond16.preheader
    i32 1, label %for.cond34.preheader
    i32 2, label %sw.bb57
  ], !dbg !2494

for.cond34.preheader:                             ; preds = %for.body
    #dbg_value(i32 0, !2445, !DIExpression(), !2467)
  %3 = load i32, ptr %height, align 8, !dbg !2495
  %cmp37358 = icmp sgt i32 %3, 15, !dbg !2499
  br i1 %cmp37358, label %for.cond39.preheader.lr.ph, label %for.inc220, !dbg !2500

for.cond39.preheader.lr.ph:                       ; preds = %for.cond34.preheader
  %.pre386 = load i32, ptr %width, align 4, !dbg !2501
  br label %for.cond39.preheader, !dbg !2500

for.cond16.preheader:                             ; preds = %for.body
    #dbg_value(i32 0, !2445, !DIExpression(), !2467)
  %4 = load i32, ptr %height, align 8, !dbg !2504
  %cmp19364 = icmp sgt i32 %4, 15, !dbg !2507
  br i1 %cmp19364, label %for.cond21.preheader.lr.ph, label %for.inc220, !dbg !2508

for.cond21.preheader.lr.ph:                       ; preds = %for.cond16.preheader
  %.pre388 = load i32, ptr %width, align 4, !dbg !2509
  br label %for.cond21.preheader, !dbg !2508

for.cond21.preheader:                             ; preds = %for.cond21.preheader.lr.ph, %for.inc30
  %5 = phi i32 [ %4, %for.cond21.preheader.lr.ph ], [ %12, %for.inc30 ]
  %6 = phi i32 [ %.pre388, %for.cond21.preheader.lr.ph ], [ %13, %for.inc30 ], !dbg !2509
  %indvars.iv380 = phi i64 [ 0, %for.cond21.preheader.lr.ph ], [ %indvars.iv.next381, %for.inc30 ]
    #dbg_value(i64 %indvars.iv380, !2445, !DIExpression(), !2467)
    #dbg_value(i32 0, !2444, !DIExpression(), !2467)
  %cmp24361 = icmp sgt i32 %6, 15, !dbg !2512
  br i1 %cmp24361, label %for.body25, label %for.inc30, !dbg !2513

for.body25:                                       ; preds = %for.cond21.preheader, %for.body25
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body25 ], [ 0, %for.cond21.preheader ]
    #dbg_value(i64 %indvars.iv377, !2444, !DIExpression(), !2467)
  %7 = load ptr, ptr %map, align 8, !dbg !2514
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv383, !dbg !2514
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2514
  %arrayidx27 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv380, !dbg !2514
  %9 = load ptr, ptr %arrayidx27, align 8, !dbg !2514
  %arrayidx29 = getelementptr inbounds i8, ptr %9, i64 %indvars.iv377, !dbg !2514
  store i8 0, ptr %arrayidx29, align 1, !dbg !2515
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1, !dbg !2516
    #dbg_value(i64 %indvars.iv.next378, !2444, !DIExpression(), !2467)
  %10 = load i32, ptr %width, align 4, !dbg !2509
  %shr23 = ashr i32 %10, 4, !dbg !2517
  %11 = sext i32 %shr23 to i64, !dbg !2512
  %cmp24 = icmp slt i64 %indvars.iv.next378, %11, !dbg !2512
  br i1 %cmp24, label %for.body25, label %for.inc30.loopexit, !dbg !2513, !llvm.loop !2518

for.inc30.loopexit:                               ; preds = %for.body25
  %.pre389 = load i32, ptr %height, align 8, !dbg !2504
  br label %for.inc30, !dbg !2520

for.inc30:                                        ; preds = %for.inc30.loopexit, %for.cond21.preheader
  %12 = phi i32 [ %.pre389, %for.inc30.loopexit ], [ %5, %for.cond21.preheader ], !dbg !2504
  %13 = phi i32 [ %10, %for.inc30.loopexit ], [ %6, %for.cond21.preheader ]
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1, !dbg !2520
    #dbg_value(i64 %indvars.iv.next381, !2445, !DIExpression(), !2467)
  %shr18 = ashr i32 %12, 4, !dbg !2521
  %14 = sext i32 %shr18 to i64, !dbg !2507
  %cmp19 = icmp slt i64 %indvars.iv.next381, %14, !dbg !2507
  br i1 %cmp19, label %for.cond21.preheader, label %for.inc220, !dbg !2508, !llvm.loop !2522

for.cond39.preheader:                             ; preds = %for.cond39.preheader.lr.ph, %for.inc54
  %15 = phi i32 [ %3, %for.cond39.preheader.lr.ph ], [ %22, %for.inc54 ]
  %16 = phi i32 [ %.pre386, %for.cond39.preheader.lr.ph ], [ %23, %for.inc54 ], !dbg !2501
  %indvars.iv374 = phi i64 [ 0, %for.cond39.preheader.lr.ph ], [ %indvars.iv.next375, %for.inc54 ]
    #dbg_value(i64 %indvars.iv374, !2445, !DIExpression(), !2467)
    #dbg_value(i32 0, !2444, !DIExpression(), !2467)
  %cmp42355 = icmp sgt i32 %16, 15, !dbg !2524
  br i1 %cmp42355, label %for.body43, label %for.inc54, !dbg !2525

for.body43:                                       ; preds = %for.cond39.preheader, %for.body43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body43 ], [ 0, %for.cond39.preheader ]
    #dbg_value(i64 %indvars.iv, !2444, !DIExpression(), !2467)
  %call44 = call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %call) #17, !dbg !2526
  %conv = trunc i32 %call44 to i8, !dbg !2528
  %17 = load ptr, ptr %map, align 8, !dbg !2529
  %arrayidx46 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv383, !dbg !2529
  %18 = load ptr, ptr %arrayidx46, align 8, !dbg !2529
  %arrayidx48 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv374, !dbg !2529
  %19 = load ptr, ptr %arrayidx48, align 8, !dbg !2529
  %arrayidx50 = getelementptr inbounds i8, ptr %19, i64 %indvars.iv, !dbg !2529
  store i8 %conv, ptr %arrayidx50, align 1, !dbg !2530
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2531
    #dbg_value(i64 %indvars.iv.next, !2444, !DIExpression(), !2467)
  %20 = load i32, ptr %width, align 4, !dbg !2501
  %shr41 = ashr i32 %20, 4, !dbg !2532
  %21 = sext i32 %shr41 to i64, !dbg !2524
  %cmp42 = icmp slt i64 %indvars.iv.next, %21, !dbg !2524
  br i1 %cmp42, label %for.body43, label %for.inc54.loopexit, !dbg !2525, !llvm.loop !2533

for.inc54.loopexit:                               ; preds = %for.body43
  %.pre387 = load i32, ptr %height, align 8, !dbg !2495
  br label %for.inc54, !dbg !2535

for.inc54:                                        ; preds = %for.inc54.loopexit, %for.cond39.preheader
  %22 = phi i32 [ %.pre387, %for.inc54.loopexit ], [ %15, %for.cond39.preheader ], !dbg !2495
  %23 = phi i32 [ %20, %for.inc54.loopexit ], [ %16, %for.cond39.preheader ]
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1, !dbg !2535
    #dbg_value(i64 %indvars.iv.next375, !2445, !DIExpression(), !2467)
  %shr36 = ashr i32 %22, 4, !dbg !2536
  %24 = sext i32 %shr36 to i64, !dbg !2499
  %cmp37 = icmp slt i64 %indvars.iv.next375, %24, !dbg !2499
  br i1 %cmp37, label %for.cond39.preheader, label %for.inc220, !dbg !2500, !llvm.loop !2537

sw.bb57:                                          ; preds = %for.body
    #dbg_value(i32 0, !2447, !DIExpression(), !2467)
    #dbg_value(i32 1, !2448, !DIExpression(), !2467)
    #dbg_value(i32 0, !2449, !DIExpression(), !2467)
    #dbg_value(i32 -1, !2450, !DIExpression(), !2467)
    #dbg_value(i32 poison, !2444, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 poison, !2445, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 poison, !2460, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 poison, !2459, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 poison, !2462, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 poison, !2461, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 0, !2463, !DIExpression(), !2467)
    #dbg_value(i32 1, !2464, !DIExpression(), !2467)
    #dbg_value(i32 0, !2457, !DIExpression(), !2467)
    #dbg_value(i32 poison, !2444, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 -1, !2450, !DIExpression(), !2467)
  %25 = load i32, ptr %height, align 8, !dbg !2539
  %cmp68343 = icmp sgt i32 %25, 15, !dbg !2542
  br i1 %cmp68343, label %for.cond71.preheader.lr.ph, label %for.inc220, !dbg !2543

for.cond71.preheader.lr.ph:                       ; preds = %sw.bb57
    #dbg_value(i32 %25, !2461, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %25, !2462, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %25, !2445, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %shr62 = lshr i32 %25, 4, !dbg !2544
    #dbg_value(i32 %shr62, !2445, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %shr62, !2462, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %shr62, !2461, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %sub63 = add nsw i32 %shr62, -1, !dbg !2545
    #dbg_value(i32 %sub63, !2461, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %sub63, !2462, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %sub63, !2445, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %div64390396 = lshr i32 %sub63, 1, !dbg !2546
    #dbg_value(i32 %div64390396, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %div64390396, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %div64390396, !2461, !DIExpression(), !2467)
  %26 = load i32, ptr %width, align 4, !dbg !2547
    #dbg_value(i32 %26, !2444, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %26, !2459, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %26, !2460, !DIExpression(DW_OP_constu, 4, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %shr59 = ashr i32 %26, 4, !dbg !2548
    #dbg_value(i32 %shr59, !2460, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %shr59, !2459, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %shr59, !2444, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %sub60 = add nsw i32 %shr59, -1, !dbg !2549
    #dbg_value(i32 %sub60, !2444, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %sub60, !2459, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
    #dbg_value(i32 %sub60, !2460, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !2467)
  %div = sdiv i32 %sub60, 2, !dbg !2550
    #dbg_value(i32 %div, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %div, !2459, !DIExpression(), !2467)
    #dbg_value(i32 %div, !2444, !DIExpression(), !2467)
  br label %for.cond71.preheader, !dbg !2543

for.cond71.preheader:                             ; preds = %for.cond71.preheader.lr.ph, %for.inc216
  %27 = phi i32 [ %25, %for.cond71.preheader.lr.ph ], [ %35, %for.inc216 ]
  %28 = phi i32 [ %26, %for.cond71.preheader.lr.ph ], [ %36, %for.inc216 ], !dbg !2551
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
    #dbg_value(i32 %directy.0353, !2464, !DIExpression(), !2467)
    #dbg_value(i32 %directx.0352, !2463, !DIExpression(), !2467)
    #dbg_value(i32 %bottom.0351, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %top.0350, !2461, !DIExpression(), !2467)
    #dbg_value(i32 %right.0349, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %left.0348, !2459, !DIExpression(), !2467)
    #dbg_value(i32 %m.0347, !2457, !DIExpression(), !2467)
    #dbg_value(i32 %x.2346, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %y.2345, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %no_bit0.0344, !2450, !DIExpression(), !2467)
    #dbg_value(i32 %directy.0353, !2464, !DIExpression(), !2467)
    #dbg_value(i32 %directx.0352, !2463, !DIExpression(), !2467)
    #dbg_value(i32 %bottom.0351, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %top.0350, !2461, !DIExpression(), !2467)
    #dbg_value(i32 %right.0349, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %left.0348, !2459, !DIExpression(), !2467)
    #dbg_value(i32 0, !2458, !DIExpression(), !2467)
    #dbg_value(i32 %x.2346, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %y.2345, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %no_bit0.0344, !2450, !DIExpression(), !2467)
  %cmp74323 = icmp sgt i32 %28, 15, !dbg !2554
  br i1 %cmp74323, label %for.body76, label %for.inc216, !dbg !2555

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
    #dbg_value(i32 %directy.1333, !2464, !DIExpression(), !2467)
    #dbg_value(i32 %directx.1332, !2463, !DIExpression(), !2467)
    #dbg_value(i32 %bottom.1331, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %top.1330, !2461, !DIExpression(), !2467)
    #dbg_value(i32 %right.1329, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %left.1328, !2459, !DIExpression(), !2467)
    #dbg_value(i32 %n.0327, !2458, !DIExpression(), !2467)
    #dbg_value(i32 %x.3326, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %y.3325, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %no_bit0.1324, !2450, !DIExpression(), !2467)
  %cmp77 = icmp slt i32 %no_bit0.1324, 0, !dbg !2556
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !2559

if.then79:                                        ; preds = %for.body76
  %call80 = call i32 @ue_v(ptr noundef nonnull @.str.5, ptr noundef %call) #17, !dbg !2560
    #dbg_value(i32 %call80, !2450, !DIExpression(), !2467)
  br label %if.end81, !dbg !2562

if.end81:                                         ; preds = %if.then79, %for.body76
  %no_bit0.2 = phi i32 [ %call80, %if.then79 ], [ %no_bit0.1324, %for.body76 ], !dbg !2563
    #dbg_value(i32 %no_bit0.2, !2450, !DIExpression(), !2467)
  %cmp82 = icmp slt i32 %no_bit0.2, 1, !dbg !2564
  %29 = load ptr, ptr %map, align 8, !dbg !2566
  %arrayidx87 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv383, !dbg !2566
  %30 = load ptr, ptr %arrayidx87, align 8, !dbg !2566
  %idxprom88 = sext i32 %y.3325 to i64, !dbg !2566
  %arrayidx89 = getelementptr inbounds ptr, ptr %30, i64 %idxprom88, !dbg !2566
  %31 = load ptr, ptr %arrayidx89, align 8, !dbg !2566
  %idxprom90 = sext i32 %x.3326 to i64, !dbg !2566
  %arrayidx91 = getelementptr inbounds i8, ptr %31, i64 %idxprom90, !dbg !2566
  %. = zext i1 %cmp82 to i8
  store i8 %., ptr %arrayidx91, align 1, !dbg !2566
  %dec = add nsw i32 %no_bit0.2, -1, !dbg !2567
    #dbg_value(i32 %dec, !2450, !DIExpression(), !2467)
  %cmp101 = icmp eq i32 %directx.1332, -1, !dbg !2568
  %cmp103 = icmp eq i32 %directy.1333, 0
  %or.cond = select i1 %cmp101, i1 %cmp103, i1 false, !dbg !2570
  br i1 %or.cond, label %if.then105, label %if.else125, !dbg !2570

if.then105:                                       ; preds = %if.end81
  %cmp106 = icmp sgt i32 %x.3326, %left.1328, !dbg !2571
  br i1 %cmp106, label %if.then108, label %if.else110, !dbg !2574

if.then108:                                       ; preds = %if.then105
  %dec109 = add nsw i32 %x.3326, -1, !dbg !2575
    #dbg_value(i32 %dec109, !2444, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2576

if.else110:                                       ; preds = %if.then105
  %cmp111 = icmp eq i32 %x.3326, 0, !dbg !2577
  br i1 %cmp111, label %if.then113, label %if.else116, !dbg !2579

if.then113:                                       ; preds = %if.else110
  %add114 = add nsw i32 %bottom.1331, 1, !dbg !2580
    #dbg_value(i32 %add114, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %add114, !2462, !DIExpression(), !2467)
    #dbg_value(i32 1, !2463, !DIExpression(), !2467)
    #dbg_value(i32 0, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2582

if.else116:                                       ; preds = %if.else110
  %cmp117 = icmp eq i32 %x.3326, %left.1328, !dbg !2583
  br i1 %cmp117, label %if.then119, label %for.inc213, !dbg !2585

if.then119:                                       ; preds = %if.else116
  %dec120 = add nsw i32 %left.1328, -1, !dbg !2586
    #dbg_value(i32 %dec120, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %dec120, !2459, !DIExpression(), !2467)
    #dbg_value(i32 0, !2463, !DIExpression(), !2467)
    #dbg_value(i32 1, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2588

if.else125:                                       ; preds = %if.end81
  %cmp126 = icmp eq i32 %directx.1332, 1, !dbg !2589
  %or.cond223 = select i1 %cmp126, i1 %cmp103, i1 false, !dbg !2591
  br i1 %or.cond223, label %if.then131, label %if.else154, !dbg !2591

if.then131:                                       ; preds = %if.else125
  %cmp132 = icmp slt i32 %x.3326, %right.1329, !dbg !2592
  br i1 %cmp132, label %if.then134, label %if.else136, !dbg !2595

if.then134:                                       ; preds = %if.then131
  %inc135 = add nsw i32 %x.3326, 1, !dbg !2596
    #dbg_value(i32 %inc135, !2444, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2597

if.else136:                                       ; preds = %if.then131
  %32 = load i32, ptr %width, align 4, !dbg !2598
  %shr138 = ashr i32 %32, 4, !dbg !2600
  %sub139 = add nsw i32 %shr138, -1, !dbg !2601
  %cmp140 = icmp eq i32 %x.3326, %sub139, !dbg !2602
  br i1 %cmp140, label %if.then142, label %if.else145, !dbg !2603

if.then142:                                       ; preds = %if.else136
  %sub143 = add nsw i32 %top.1330, -1, !dbg !2604
    #dbg_value(i32 %sub143, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %sub143, !2461, !DIExpression(), !2467)
    #dbg_value(i32 -1, !2463, !DIExpression(), !2467)
    #dbg_value(i32 0, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2606

if.else145:                                       ; preds = %if.else136
  %cmp146 = icmp eq i32 %x.3326, %right.1329, !dbg !2607
  br i1 %cmp146, label %if.then148, label %for.inc213, !dbg !2609

if.then148:                                       ; preds = %if.else145
  %inc149 = add nsw i32 %right.1329, 1, !dbg !2610
    #dbg_value(i32 %inc149, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %inc149, !2460, !DIExpression(), !2467)
    #dbg_value(i32 0, !2463, !DIExpression(), !2467)
    #dbg_value(i32 -1, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2612

if.else154:                                       ; preds = %if.else125
  %cmp155 = icmp eq i32 %directx.1332, 0, !dbg !2613
  %cmp158 = icmp eq i32 %directy.1333, -1
  %or.cond224 = select i1 %cmp155, i1 %cmp158, i1 false, !dbg !2615
  br i1 %or.cond224, label %if.then160, label %if.else180, !dbg !2615

if.then160:                                       ; preds = %if.else154
  %cmp161 = icmp sgt i32 %y.3325, %top.1330, !dbg !2616
  br i1 %cmp161, label %if.then163, label %if.else165, !dbg !2619

if.then163:                                       ; preds = %if.then160
  %dec164 = add nsw i32 %y.3325, -1, !dbg !2620
    #dbg_value(i32 %dec164, !2445, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2621

if.else165:                                       ; preds = %if.then160
  %cmp166 = icmp eq i32 %y.3325, 0, !dbg !2622
  br i1 %cmp166, label %if.then168, label %if.else171, !dbg !2624

if.then168:                                       ; preds = %if.else165
  %sub169 = add nsw i32 %left.1328, -1, !dbg !2625
    #dbg_value(i32 %sub169, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %sub169, !2459, !DIExpression(), !2467)
    #dbg_value(i32 0, !2463, !DIExpression(), !2467)
    #dbg_value(i32 1, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2627

if.else171:                                       ; preds = %if.else165
  %cmp172 = icmp eq i32 %y.3325, %top.1330, !dbg !2628
  br i1 %cmp172, label %if.then174, label %for.inc213, !dbg !2630

if.then174:                                       ; preds = %if.else171
  %dec175 = add nsw i32 %top.1330, -1, !dbg !2631
    #dbg_value(i32 %dec175, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %dec175, !2461, !DIExpression(), !2467)
    #dbg_value(i32 -1, !2463, !DIExpression(), !2467)
    #dbg_value(i32 0, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2633

if.else180:                                       ; preds = %if.else154
  %cmp184 = icmp eq i32 %directy.1333, 1
  %or.cond225 = select i1 %cmp155, i1 %cmp184, i1 false, !dbg !2634
  br i1 %or.cond225, label %if.then186, label %for.inc213, !dbg !2634

if.then186:                                       ; preds = %if.else180
  %cmp187 = icmp slt i32 %y.3325, %bottom.1331, !dbg !2636
  br i1 %cmp187, label %if.then189, label %if.else191, !dbg !2639

if.then189:                                       ; preds = %if.then186
  %inc190 = add nsw i32 %y.3325, 1, !dbg !2640
    #dbg_value(i32 %inc190, !2445, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2641

if.else191:                                       ; preds = %if.then186
  %33 = load i32, ptr %height, align 8, !dbg !2642
  %shr193 = ashr i32 %33, 4, !dbg !2644
  %sub194 = add nsw i32 %shr193, -1, !dbg !2645
  %cmp195 = icmp eq i32 %y.3325, %sub194, !dbg !2646
  br i1 %cmp195, label %if.then197, label %if.else200, !dbg !2647

if.then197:                                       ; preds = %if.else191
  %add198 = add nsw i32 %right.1329, 1, !dbg !2648
    #dbg_value(i32 %add198, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %add198, !2460, !DIExpression(), !2467)
    #dbg_value(i32 0, !2463, !DIExpression(), !2467)
    #dbg_value(i32 -1, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2650

if.else200:                                       ; preds = %if.else191
  %cmp201 = icmp eq i32 %y.3325, %bottom.1331, !dbg !2651
  br i1 %cmp201, label %if.then203, label %for.inc213, !dbg !2653

if.then203:                                       ; preds = %if.else200
  %inc204 = add nsw i32 %bottom.1331, 1, !dbg !2654
    #dbg_value(i32 %inc204, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %inc204, !2462, !DIExpression(), !2467)
    #dbg_value(i32 1, !2463, !DIExpression(), !2467)
    #dbg_value(i32 0, !2464, !DIExpression(), !2467)
  br label %for.inc213, !dbg !2656

for.inc213:                                       ; preds = %if.then113, %if.then119, %if.else116, %if.then108, %if.then168, %if.then174, %if.else171, %if.then163, %if.then189, %if.else200, %if.then203, %if.then197, %if.else180, %if.then134, %if.else145, %if.then148, %if.then142
  %y.4 = phi i32 [ %y.3325, %if.then108 ], [ %add114, %if.then113 ], [ %y.3325, %if.then119 ], [ %y.3325, %if.else116 ], [ %y.3325, %if.then134 ], [ %sub143, %if.then142 ], [ %y.3325, %if.then148 ], [ %y.3325, %if.else145 ], [ %dec164, %if.then163 ], [ 0, %if.then168 ], [ %dec175, %if.then174 ], [ %y.3325, %if.else171 ], [ %inc190, %if.then189 ], [ %y.3325, %if.then197 ], [ %inc204, %if.then203 ], [ %y.3325, %if.else200 ], [ %y.3325, %if.else180 ], !dbg !2563
  %x.4 = phi i32 [ %dec109, %if.then108 ], [ 0, %if.then113 ], [ %dec120, %if.then119 ], [ %x.3326, %if.else116 ], [ %inc135, %if.then134 ], [ %x.3326, %if.then142 ], [ %inc149, %if.then148 ], [ %x.3326, %if.else145 ], [ %x.3326, %if.then163 ], [ %sub169, %if.then168 ], [ %x.3326, %if.then174 ], [ %x.3326, %if.else171 ], [ %x.3326, %if.then189 ], [ %add198, %if.then197 ], [ %x.3326, %if.then203 ], [ %x.3326, %if.else200 ], [ %x.3326, %if.else180 ], !dbg !2563
  %left.2 = phi i32 [ %left.1328, %if.then108 ], [ %left.1328, %if.then113 ], [ %dec120, %if.then119 ], [ %left.1328, %if.else116 ], [ %left.1328, %if.then134 ], [ %left.1328, %if.then142 ], [ %left.1328, %if.then148 ], [ %left.1328, %if.else145 ], [ %left.1328, %if.then163 ], [ %sub169, %if.then168 ], [ %left.1328, %if.then174 ], [ %left.1328, %if.else171 ], [ %left.1328, %if.then189 ], [ %left.1328, %if.then197 ], [ %left.1328, %if.then203 ], [ %left.1328, %if.else200 ], [ %left.1328, %if.else180 ], !dbg !2563
  %right.2 = phi i32 [ %right.1329, %if.then108 ], [ %right.1329, %if.then113 ], [ %right.1329, %if.then119 ], [ %right.1329, %if.else116 ], [ %right.1329, %if.then134 ], [ %right.1329, %if.then142 ], [ %inc149, %if.then148 ], [ %right.1329, %if.else145 ], [ %right.1329, %if.then163 ], [ %right.1329, %if.then168 ], [ %right.1329, %if.then174 ], [ %right.1329, %if.else171 ], [ %right.1329, %if.then189 ], [ %add198, %if.then197 ], [ %right.1329, %if.then203 ], [ %right.1329, %if.else200 ], [ %right.1329, %if.else180 ], !dbg !2563
  %top.2 = phi i32 [ %top.1330, %if.then108 ], [ %top.1330, %if.then113 ], [ %top.1330, %if.then119 ], [ %top.1330, %if.else116 ], [ %top.1330, %if.then134 ], [ %sub143, %if.then142 ], [ %top.1330, %if.then148 ], [ %top.1330, %if.else145 ], [ %top.1330, %if.then163 ], [ %top.1330, %if.then168 ], [ %dec175, %if.then174 ], [ %top.1330, %if.else171 ], [ %top.1330, %if.then189 ], [ %top.1330, %if.then197 ], [ %top.1330, %if.then203 ], [ %top.1330, %if.else200 ], [ %top.1330, %if.else180 ], !dbg !2563
  %bottom.2 = phi i32 [ %bottom.1331, %if.then108 ], [ %add114, %if.then113 ], [ %bottom.1331, %if.then119 ], [ %bottom.1331, %if.else116 ], [ %bottom.1331, %if.then134 ], [ %bottom.1331, %if.then142 ], [ %bottom.1331, %if.then148 ], [ %bottom.1331, %if.else145 ], [ %bottom.1331, %if.then163 ], [ %bottom.1331, %if.then168 ], [ %bottom.1331, %if.then174 ], [ %bottom.1331, %if.else171 ], [ %bottom.1331, %if.then189 ], [ %bottom.1331, %if.then197 ], [ %inc204, %if.then203 ], [ %bottom.1331, %if.else200 ], [ %bottom.1331, %if.else180 ], !dbg !2563
  %directx.2 = phi i32 [ -1, %if.then108 ], [ 1, %if.then113 ], [ 0, %if.then119 ], [ -1, %if.else116 ], [ 1, %if.then134 ], [ -1, %if.then142 ], [ 0, %if.then148 ], [ 1, %if.else145 ], [ 0, %if.then163 ], [ 0, %if.then168 ], [ -1, %if.then174 ], [ 0, %if.else171 ], [ 0, %if.then189 ], [ 0, %if.then197 ], [ 1, %if.then203 ], [ 0, %if.else200 ], [ %directx.1332, %if.else180 ], !dbg !2563
  %directy.2 = phi i32 [ 0, %if.then108 ], [ 0, %if.then113 ], [ 1, %if.then119 ], [ 0, %if.else116 ], [ 0, %if.then134 ], [ 0, %if.then142 ], [ -1, %if.then148 ], [ 0, %if.else145 ], [ -1, %if.then163 ], [ 1, %if.then168 ], [ 0, %if.then174 ], [ -1, %if.else171 ], [ 1, %if.then189 ], [ -1, %if.then197 ], [ 0, %if.then203 ], [ 1, %if.else200 ], [ %directy.1333, %if.else180 ], !dbg !2563
    #dbg_value(i32 %directy.2, !2464, !DIExpression(), !2467)
    #dbg_value(i32 %directx.2, !2463, !DIExpression(), !2467)
    #dbg_value(i32 %bottom.2, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %top.2, !2461, !DIExpression(), !2467)
    #dbg_value(i32 %right.2, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %left.2, !2459, !DIExpression(), !2467)
    #dbg_value(i32 %x.4, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %y.4, !2445, !DIExpression(), !2467)
  %inc214 = add nuw nsw i32 %n.0327, 1, !dbg !2657
    #dbg_value(i32 %inc214, !2458, !DIExpression(), !2467)
    #dbg_value(i32 %dec, !2450, !DIExpression(), !2467)
  %34 = load i32, ptr %width, align 4, !dbg !2551
  %shr73 = ashr i32 %34, 4, !dbg !2658
  %cmp74 = icmp slt i32 %inc214, %shr73, !dbg !2554
  br i1 %cmp74, label %for.body76, label %for.inc216.loopexit, !dbg !2555, !llvm.loop !2659

for.inc216.loopexit:                              ; preds = %for.inc213
  %.pre = load i32, ptr %height, align 8, !dbg !2539
  br label %for.inc216, !dbg !2661

for.inc216:                                       ; preds = %for.inc216.loopexit, %for.cond71.preheader
  %35 = phi i32 [ %27, %for.cond71.preheader ], [ %.pre, %for.inc216.loopexit ], !dbg !2539
  %36 = phi i32 [ %28, %for.cond71.preheader ], [ %34, %for.inc216.loopexit ]
  %no_bit0.1.lcssa = phi i32 [ %no_bit0.0344, %for.cond71.preheader ], [ %dec, %for.inc216.loopexit ], !dbg !2563
  %y.3.lcssa = phi i32 [ %y.2345, %for.cond71.preheader ], [ %y.4, %for.inc216.loopexit ], !dbg !2662
  %x.3.lcssa = phi i32 [ %x.2346, %for.cond71.preheader ], [ %x.4, %for.inc216.loopexit ], !dbg !2563
  %left.1.lcssa = phi i32 [ %left.0348, %for.cond71.preheader ], [ %left.2, %for.inc216.loopexit ], !dbg !2663
  %right.1.lcssa = phi i32 [ %right.0349, %for.cond71.preheader ], [ %right.2, %for.inc216.loopexit ], !dbg !2664
  %top.1.lcssa = phi i32 [ %top.0350, %for.cond71.preheader ], [ %top.2, %for.inc216.loopexit ], !dbg !2665
  %bottom.1.lcssa = phi i32 [ %bottom.0351, %for.cond71.preheader ], [ %bottom.2, %for.inc216.loopexit ], !dbg !2666
  %directx.1.lcssa = phi i32 [ %directx.0352, %for.cond71.preheader ], [ %directx.2, %for.inc216.loopexit ], !dbg !2667
  %directy.1.lcssa = phi i32 [ %directy.0353, %for.cond71.preheader ], [ %directy.2, %for.inc216.loopexit ], !dbg !2668
  %inc217 = add nuw nsw i32 %m.0347, 1, !dbg !2661
    #dbg_value(i32 %directy.1.lcssa, !2464, !DIExpression(), !2467)
    #dbg_value(i32 %directx.1.lcssa, !2463, !DIExpression(), !2467)
    #dbg_value(i32 %bottom.1.lcssa, !2462, !DIExpression(), !2467)
    #dbg_value(i32 %top.1.lcssa, !2461, !DIExpression(), !2467)
    #dbg_value(i32 %right.1.lcssa, !2460, !DIExpression(), !2467)
    #dbg_value(i32 %left.1.lcssa, !2459, !DIExpression(), !2467)
    #dbg_value(i32 %inc217, !2457, !DIExpression(), !2467)
    #dbg_value(i32 %x.3.lcssa, !2444, !DIExpression(), !2467)
    #dbg_value(i32 %y.3.lcssa, !2445, !DIExpression(), !2467)
    #dbg_value(i32 %no_bit0.1.lcssa, !2450, !DIExpression(), !2467)
  %shr67 = ashr i32 %35, 4, !dbg !2669
  %cmp68 = icmp slt i32 %inc217, %shr67, !dbg !2542
  br i1 %cmp68, label %for.cond71.preheader, label %for.inc220, !dbg !2543, !llvm.loop !2670

sw.default:                                       ; preds = %for.body
  %call219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %call15), !dbg !2672
  call void @exit(i32 noundef 0) #19, !dbg !2673
  unreachable, !dbg !2673

for.inc220:                                       ; preds = %for.inc216, %for.inc54, %for.inc30, %sw.bb57, %for.cond34.preheader, %for.cond16.preheader
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1, !dbg !2674
    #dbg_value(i64 %indvars.iv.next384, !2443, !DIExpression(), !2467)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !2455, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 23, DW_OP_shr, DW_OP_constu, 256, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2467)
  %exitcond.not = icmp eq i64 %indvars.iv.next384, %wide.trip.count, !dbg !2487
  br i1 %exitcond.not, label %for.end222, label %for.body, !dbg !2490, !llvm.loop !2675

for.end222:                                       ; preds = %for.inc220, %entry
  %37 = load ptr, ptr %map, align 8, !dbg !2677
  call void @free_mem3D(ptr noundef %37) #17, !dbg !2678
  call void @free(ptr noundef %call) #17, !dbg !2679
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #17, !dbg !2680
  ret void, !dbg !2680
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_scene_information(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1823 {
entry:
    #dbg_value(ptr %payload, !1822, !DIExpression(), !2681)
    #dbg_value(i32 %size, !1825, !DIExpression(), !2681)
    #dbg_value(ptr %p_Vid, !1826, !DIExpression(), !2681)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2682
    #dbg_value(ptr %call, !1827, !DIExpression(), !2681)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2683
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2684
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2685
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2686
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2687
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2688
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2689
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2690
  store i32 0, ptr %UsedBits, align 8, !dbg !2691
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %call) #17, !dbg !2692
    #dbg_value(i32 %call1, !1828, !DIExpression(), !2681)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %call) #17, !dbg !2693
    #dbg_value(i32 %call2, !1829, !DIExpression(), !2681)
  %cmp = icmp sgt i32 %call2, 3, !dbg !2694
  br i1 %cmp, label %if.then, label %if.end, !dbg !2695

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef nonnull %call) #17, !dbg !2696
    #dbg_value(i32 %call3, !1830, !DIExpression(), !2681)
  br label %if.end, !dbg !2697

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17, !dbg !2698
  ret void, !dbg !2699
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !2700 {
entry:
    #dbg_value(ptr %payload, !2702, !DIExpression(), !2713)
    #dbg_value(i32 %size, !2703, !DIExpression(), !2713)
    #dbg_value(ptr poison, !2704, !DIExpression(), !2713)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2714
    #dbg_value(ptr %call, !2705, !DIExpression(), !2713)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2715
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2716
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2717
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2718
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2719
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2720
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2721
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2722
  store i32 0, ptr %UsedBits, align 8, !dbg !2723
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %call) #17, !dbg !2724
    #dbg_value(i32 %call1, !2706, !DIExpression(), !2713)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %call) #17, !dbg !2725
    #dbg_value(i32 %call2, !2707, !DIExpression(), !2713)
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.9, ptr noundef %call) #17, !dbg !2726
    #dbg_value(i32 %call3, !2708, !DIExpression(), !2713)
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef %call) #17, !dbg !2727
    #dbg_value(i32 %call4, !2709, !DIExpression(), !2713)
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.11, ptr noundef %call) #17, !dbg !2728
    #dbg_value(i32 %call5, !2710, !DIExpression(), !2713)
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %call) #17, !dbg !2729
    #dbg_value(i32 %call6, !2711, !DIExpression(), !2713)
  %tobool.not = icmp eq i32 %call6, 0, !dbg !2730
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2732

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef nonnull %call) #17, !dbg !2733
    #dbg_value(i32 %call7, !2712, !DIExpression(), !2713)
  br label %if.end, !dbg !2735

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17, !dbg !2736
  ret void, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_layer_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1858 {
entry:
    #dbg_value(ptr %payload, !1857, !DIExpression(), !2738)
    #dbg_value(i32 %size, !1860, !DIExpression(), !2738)
    #dbg_value(ptr %p_Vid, !1861, !DIExpression(), !2738)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2739
    #dbg_value(ptr %call, !1862, !DIExpression(), !2738)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2740
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2741
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2742
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2743
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2744
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2745
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2746
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2747
  store i32 0, ptr %UsedBits, align 8, !dbg !2748
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %call) #17, !dbg !2749
    #dbg_value(i32 %call1, !1863, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2738)
    #dbg_value(i32 0, !1867, !DIExpression(), !2738)
  %cmp.not18 = icmp slt i32 %call1, 0, !dbg !2750
  br i1 %cmp.not18, label %for.end, label %for.body, !dbg !2751

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
    #dbg_value(i32 %i.019, !1867, !DIExpression(), !2738)
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %call) #17, !dbg !2752
    #dbg_value(i32 %call4, !1864, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2738)
  %call6 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %call) #17, !dbg !2753
    #dbg_value(i32 %call6, !1865, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2738)
  %call8 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %call) #17, !dbg !2754
    #dbg_value(i32 %call8, !1866, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2738)
  %inc = add nuw i32 %i.019, 1, !dbg !2755
    #dbg_value(i32 %inc, !1867, !DIExpression(), !2738)
  %exitcond.not = icmp eq i32 %i.019, %call1, !dbg !2750
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2751, !llvm.loop !2756

for.end:                                          ; preds = %for.body, %entry
  tail call void @free(ptr noundef %call) #17, !dbg !2758
  ret void, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !2760 {
entry:
    #dbg_value(ptr %payload, !2762, !DIExpression(), !2780)
    #dbg_value(i32 %size, !2763, !DIExpression(), !2780)
    #dbg_value(ptr poison, !2764, !DIExpression(), !2780)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2781
    #dbg_value(ptr %call, !2765, !DIExpression(), !2780)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2782
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2783
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2784
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2785
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2786
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2787
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2788
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2789
  store i32 0, ptr %UsedBits, align 8, !dbg !2790
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %call) #17, !dbg !2791
    #dbg_value(i32 %call1, !2767, !DIExpression(), !2780)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %call) #17, !dbg !2792
    #dbg_value(i32 %call2, !2768, !DIExpression(), !2780)
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %call) #17, !dbg !2793
    #dbg_value(i32 %call3, !2769, !DIExpression(), !2780)
  %tobool.not = icmp eq i32 %call3, 0, !dbg !2794
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2796

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #17, !dbg !2797
    #dbg_value(i32 %call4, !2772, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2780)
  br label %if.end, !dbg !2799

if.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.19, ptr noundef nonnull %call) #17, !dbg !2800
    #dbg_value(i32 %call5, !2770, !DIExpression(), !2780)
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !2801
  br i1 %tobool6.not, label %if.end13, label %if.then7, !dbg !2803

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef nonnull %call) #17, !dbg !2804
    #dbg_value(i32 %call8, !2771, !DIExpression(), !2780)
  %call9 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #17, !dbg !2806
    #dbg_value(i32 %call9, !2774, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2780)
  %call11 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull %call) #17, !dbg !2807
    #dbg_value(i32 %call11, !2775, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2780)
  br label %if.end13, !dbg !2808

if.end13:                                         ; preds = %if.then7, %if.end
  %call14 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef nonnull %call) #17, !dbg !2809
    #dbg_value(i32 %call14, !2776, !DIExpression(), !2780)
    #dbg_value(i32 0, !2766, !DIExpression(), !2780)
  %cmp35 = icmp sgt i32 %call14, 0, !dbg !2810
  br i1 %cmp35, label %for.body, label %for.end, !dbg !2813

for.body:                                         ; preds = %if.end13, %for.body
  %i.036 = phi i32 [ %inc, %for.body ], [ 0, %if.end13 ]
    #dbg_value(i32 %i.036, !2766, !DIExpression(), !2780)
  %call16 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %call) #17, !dbg !2814
    #dbg_value(i32 %call16, !2777, !DIExpression(), !2780)
  %call17 = tail call i32 @ue_v(ptr noundef nonnull @.str.22, ptr noundef %call) #17, !dbg !2816
    #dbg_value(i32 %call17, !2778, !DIExpression(), !2780)
  %call18 = tail call i32 @u_1(ptr noundef nonnull @.str.23, ptr noundef %call) #17, !dbg !2817
    #dbg_value(i32 %call18, !2779, !DIExpression(), !2780)
  %inc = add nuw nsw i32 %i.036, 1, !dbg !2818
    #dbg_value(i32 %inc, !2766, !DIExpression(), !2780)
  %exitcond.not = icmp eq i32 %inc, %call14, !dbg !2810
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2813, !llvm.loop !2819

for.end:                                          ; preds = %for.body, %if.end13
  tail call void @free(ptr noundef %call) #17, !dbg !2821
  ret void, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_freeze_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1899 {
entry:
    #dbg_value(ptr %payload, !1898, !DIExpression(), !2823)
    #dbg_value(i32 %size, !1901, !DIExpression(), !2823)
    #dbg_value(ptr %p_Vid, !1902, !DIExpression(), !2823)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2824
    #dbg_value(ptr %call, !1904, !DIExpression(), !2823)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2825
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2826
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2827
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2828
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2829
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2830
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %call) #17, !dbg !2831
    #dbg_value(i32 %call1, !1903, !DIExpression(), !2823)
  tail call void @free(ptr noundef %call) #17, !dbg !2832
  ret void, !dbg !2833
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_full_frame_freeze_release_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 !dbg !2834 {
entry:
    #dbg_value(ptr %payload, !2836, !DIExpression(), !2839)
    #dbg_value(i32 %size, !2837, !DIExpression(), !2839)
    #dbg_value(ptr %p_Vid, !2838, !DIExpression(), !2839)
  ret void, !dbg !2840
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_snapshot_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1919 {
entry:
    #dbg_value(ptr %payload, !1918, !DIExpression(), !2841)
    #dbg_value(i32 %size, !1921, !DIExpression(), !2841)
    #dbg_value(ptr %p_Vid, !1922, !DIExpression(), !2841)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2842
    #dbg_value(ptr %call, !1924, !DIExpression(), !2841)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2843
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2844
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2845
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2846
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2847
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2848
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2849
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2850
  store i32 0, ptr %UsedBits, align 8, !dbg !2851
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %call) #17, !dbg !2852
    #dbg_value(i32 %call1, !1923, !DIExpression(), !2841)
  tail call void @free(ptr noundef %call) #17, !dbg !2853
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_start_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1942 {
entry:
    #dbg_value(ptr %payload, !1941, !DIExpression(), !2855)
    #dbg_value(i32 %size, !1944, !DIExpression(), !2855)
    #dbg_value(ptr %p_Vid, !1945, !DIExpression(), !2855)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2856
    #dbg_value(ptr %call, !1948, !DIExpression(), !2855)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2857
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2858
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2859
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2860
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2861
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2862
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2863
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2864
  store i32 0, ptr %UsedBits, align 8, !dbg !2865
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call) #17, !dbg !2866
    #dbg_value(i32 %call1, !1946, !DIExpression(), !2855)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %call) #17, !dbg !2867
    #dbg_value(i32 %call2, !1947, !DIExpression(), !2855)
  tail call void @free(ptr noundef %call) #17, !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_end_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1967 {
entry:
    #dbg_value(ptr %payload, !1966, !DIExpression(), !2870)
    #dbg_value(i32 %size, !1969, !DIExpression(), !2870)
    #dbg_value(ptr %p_Vid, !1970, !DIExpression(), !2870)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2871
    #dbg_value(ptr %call, !1972, !DIExpression(), !2870)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2872
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2873
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2874
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2875
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2876
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2877
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2878
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2879
  store i32 0, ptr %UsedBits, align 8, !dbg !2880
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %call) #17, !dbg !2881
    #dbg_value(i32 %call1, !1971, !DIExpression(), !2870)
  tail call void @free(ptr noundef %call) #17, !dbg !2882
  ret void, !dbg !2883
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_motion_constrained_slice_group_set_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !2884 {
entry:
    #dbg_value(ptr %payload, !2886, !DIExpression(), !2897)
    #dbg_value(i32 %size, !2887, !DIExpression(), !2897)
    #dbg_value(ptr poison, !2888, !DIExpression(), !2897)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2898
    #dbg_value(ptr %call, !2896, !DIExpression(), !2897)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2899
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2900
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2901
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2902
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2903
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2904
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2905
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !2906
  store i32 0, ptr %UsedBits, align 8, !dbg !2907
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.46, ptr noundef %call) #17, !dbg !2908
    #dbg_value(i32 %call1, !2889, !DIExpression(), !2897)
  %add = add i32 %call1, 1, !dbg !2909
  %call2 = tail call i32 @CeilLog2(i32 noundef %add) #17, !dbg !2910
    #dbg_value(i32 %call2, !2895, !DIExpression(), !2897)
    #dbg_value(i32 0, !2894, !DIExpression(), !2897)
  %cmp.not17 = icmp slt i32 %call1, 0, !dbg !2911
  br i1 %cmp.not17, label %for.end, label %for.body, !dbg !2914

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
    #dbg_value(i32 %i.018, !2894, !DIExpression(), !2897)
  %call3 = tail call i32 @u_v(i32 noundef %call2, ptr noundef nonnull @.str.47, ptr noundef %call) #17, !dbg !2915
    #dbg_value(i32 %call3, !2890, !DIExpression(), !2897)
  %inc = add nuw i32 %i.018, 1, !dbg !2917
    #dbg_value(i32 %inc, !2894, !DIExpression(), !2897)
  %exitcond.not = icmp eq i32 %i.018, %call1, !dbg !2911
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2914, !llvm.loop !2918

for.end:                                          ; preds = %for.body, %entry
  %call4 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %call) #17, !dbg !2920
    #dbg_value(i32 %call4, !2891, !DIExpression(), !2897)
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %call) #17, !dbg !2921
    #dbg_value(i32 %call5, !2892, !DIExpression(), !2897)
  %tobool.not = icmp eq i32 %call5, 0, !dbg !2922
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2924

if.then:                                          ; preds = %for.end
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %call) #17, !dbg !2925
    #dbg_value(i32 %call6, !2893, !DIExpression(), !2897)
  br label %if.end, !dbg !2927

if.end:                                           ; preds = %if.then, %for.end
  tail call void @free(ptr noundef %call) #17, !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_film_grain_characteristics_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !2930 {
entry:
    #dbg_value(ptr %payload, !2932, !DIExpression(), !2957)
    #dbg_value(i32 %size, !2933, !DIExpression(), !2957)
    #dbg_value(ptr poison, !2934, !DIExpression(), !2957)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !2958
    #dbg_value(ptr %call, !2956, !DIExpression(), !2957)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !2959
  store i32 %size, ptr %bitstream_length, align 4, !dbg !2960
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !2961
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !2962
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2963
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !2964
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %call) #17, !dbg !2965
    #dbg_value(i32 %call1, !2935, !DIExpression(), !2957)
  %tobool.not = icmp eq i32 %call1, 0, !dbg !2966
  br i1 %tobool.not, label %if.then, label %if.end44, !dbg !2968

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %call) #17, !dbg !2969
    #dbg_value(i32 %call2, !2936, !DIExpression(), !2957)
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.51, ptr noundef nonnull %call) #17, !dbg !2971
    #dbg_value(i32 %call3, !2937, !DIExpression(), !2957)
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !2972
  br i1 %tobool4.not, label %if.end, label %if.then5, !dbg !2974

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.52, ptr noundef nonnull %call) #17, !dbg !2975
    #dbg_value(i32 %call6, !2938, !DIExpression(), !2957)
  %call7 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.53, ptr noundef nonnull %call) #17, !dbg !2977
    #dbg_value(i32 %call7, !2939, !DIExpression(), !2957)
  %call8 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull %call) #17, !dbg !2978
    #dbg_value(i32 %call8, !2940, !DIExpression(), !2957)
  %call9 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.55, ptr noundef nonnull %call) #17, !dbg !2979
    #dbg_value(i32 %call9, !2941, !DIExpression(), !2957)
  %call10 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.56, ptr noundef nonnull %call) #17, !dbg !2980
    #dbg_value(i32 %call10, !2942, !DIExpression(), !2957)
  %call11 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.57, ptr noundef nonnull %call) #17, !dbg !2981
    #dbg_value(i32 %call11, !2943, !DIExpression(), !2957)
  br label %if.end, !dbg !2982

if.end:                                           ; preds = %if.then5, %if.then
  %call12 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef nonnull %call) #17, !dbg !2983
    #dbg_value(i32 %call12, !2944, !DIExpression(), !2957)
  %call13 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull %call) #17, !dbg !2984
    #dbg_value(i32 %call13, !2945, !DIExpression(), !2957)
    #dbg_value(i32 0, !2953, !DIExpression(), !2957)
    #dbg_value(i64 0, !2953, !DIExpression(), !2957)
  %call14 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17, !dbg !2985
    #dbg_value(i32 %call14, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2957)
    #dbg_value(i64 1, !2953, !DIExpression(), !2957)
  %call14.1 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17, !dbg !2985
    #dbg_value(i32 %call14.1, !2946, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2957)
    #dbg_value(i64 2, !2953, !DIExpression(), !2957)
  %call14.2 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef nonnull %call) #17, !dbg !2985
    #dbg_value(i32 %call14.2, !2946, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2957)
    #dbg_value(i64 3, !2953, !DIExpression(), !2957)
    #dbg_value(i64 0, !2953, !DIExpression(), !2957)
  %tobool20.not = icmp eq i32 %call14, 0, !dbg !2989
  br i1 %tobool20.not, label %for.inc40, label %if.then21, !dbg !2993

if.then21:                                        ; preds = %if.end
  %call22 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef nonnull %call) #17, !dbg !2994
    #dbg_value(i32 %call22, !2947, !DIExpression(), !2957)
  %call23 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef nonnull %call) #17, !dbg !2996
    #dbg_value(i32 %call23, !2948, !DIExpression(), !2957)
    #dbg_value(i32 0, !2954, !DIExpression(), !2957)
  %call23.fr = freeze i32 %call23
  %cmp25.not76 = icmp slt i32 %call22, 0, !dbg !2997
  br i1 %cmp25.not76, label %for.inc40, label %for.body26.lr.ph, !dbg !3000

for.body26.lr.ph:                                 ; preds = %if.then21
  %cmp30.not74 = icmp slt i32 %call23.fr, 0
  br i1 %cmp30.not74, label %for.body26.us, label %for.body26

for.body26.us:                                    ; preds = %for.body26.lr.ph, %for.body26.us
  %i.077.us = phi i32 [ %inc37.us, %for.body26.us ], [ 0, %for.body26.lr.ph ]
    #dbg_value(i32 %i.077.us, !2954, !DIExpression(), !2957)
  %call27.us = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27.us, !2949, !DIExpression(), !2957)
  %call28.us = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28.us, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  %inc37.us = add nuw i32 %i.077.us, 1, !dbg !3004
    #dbg_value(i32 %inc37.us, !2954, !DIExpression(), !2957)
  %exitcond82.not = icmp eq i32 %i.077.us, %call22, !dbg !2997
  br i1 %exitcond82.not, label %for.inc40, label %for.body26.us, !dbg !3000, !llvm.loop !3005

for.body26:                                       ; preds = %for.body26.lr.ph, %for.cond29.for.inc36_crit_edge
  %i.077 = phi i32 [ %inc37, %for.cond29.for.inc36_crit_edge ], [ 0, %for.body26.lr.ph ]
    #dbg_value(i32 %i.077, !2954, !DIExpression(), !2957)
  %call27 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27, !2949, !DIExpression(), !2957)
  %call28 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  br label %for.body31, !dbg !3007

for.body31:                                       ; preds = %for.body26, %for.body31
  %j.075 = phi i32 [ 0, %for.body26 ], [ %inc34, %for.body31 ]
    #dbg_value(i32 %j.075, !2955, !DIExpression(), !2957)
  %call32 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17, !dbg !3009
    #dbg_value(i32 %call32, !2951, !DIExpression(), !2957)
  %inc34 = add nuw i32 %j.075, 1, !dbg !3012
    #dbg_value(i32 %inc34, !2955, !DIExpression(), !2957)
  %exitcond.not = icmp eq i32 %j.075, %call23.fr, !dbg !3013
  br i1 %exitcond.not, label %for.cond29.for.inc36_crit_edge, label %for.body31, !dbg !3007, !llvm.loop !3014

for.cond29.for.inc36_crit_edge:                   ; preds = %for.body31
  %inc37 = add nuw i32 %i.077, 1, !dbg !3004
    #dbg_value(i32 %inc37, !2954, !DIExpression(), !2957)
  %exitcond81.not = icmp eq i32 %i.077, %call22, !dbg !2997
  br i1 %exitcond81.not, label %for.inc40, label %for.body26, !dbg !3000, !llvm.loop !3005

for.inc40:                                        ; preds = %for.cond29.for.inc36_crit_edge, %for.body26.us, %if.then21, %if.end
    #dbg_value(i64 1, !2953, !DIExpression(), !2957)
  %tobool20.not.1 = icmp eq i32 %call14.1, 0, !dbg !2989
  br i1 %tobool20.not.1, label %for.inc40.1, label %if.then21.1, !dbg !2993

if.then21.1:                                      ; preds = %for.inc40
  %call22.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %call) #17, !dbg !2994
    #dbg_value(i32 %call22.1, !2947, !DIExpression(), !2957)
  %call23.1 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %call) #17, !dbg !2996
    #dbg_value(i32 %call23.1, !2948, !DIExpression(), !2957)
    #dbg_value(i32 0, !2954, !DIExpression(), !2957)
  %call23.fr.1 = freeze i32 %call23.1
  %cmp25.not76.1 = icmp slt i32 %call22.1, 0, !dbg !2997
  br i1 %cmp25.not76.1, label %for.inc40.1, label %for.body26.lr.ph.1, !dbg !3000

for.body26.lr.ph.1:                               ; preds = %if.then21.1
  %cmp30.not74.1 = icmp slt i32 %call23.fr.1, 0
  br i1 %cmp30.not74.1, label %for.body26.us.1, label %for.body26.1

for.body26.1:                                     ; preds = %for.body26.lr.ph.1, %for.cond29.for.inc36_crit_edge.1
  %i.077.1 = phi i32 [ %inc37.1, %for.cond29.for.inc36_crit_edge.1 ], [ 0, %for.body26.lr.ph.1 ]
    #dbg_value(i32 %i.077.1, !2954, !DIExpression(), !2957)
  %call27.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27.1, !2949, !DIExpression(), !2957)
  %call28.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28.1, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  br label %for.body31.1, !dbg !3007

for.body31.1:                                     ; preds = %for.body31.1, %for.body26.1
  %j.075.1 = phi i32 [ 0, %for.body26.1 ], [ %inc34.1, %for.body31.1 ]
    #dbg_value(i32 %j.075.1, !2955, !DIExpression(), !2957)
  %call32.1 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17, !dbg !3009
    #dbg_value(i32 %call32.1, !2951, !DIExpression(), !2957)
  %inc34.1 = add nuw i32 %j.075.1, 1, !dbg !3012
    #dbg_value(i32 %inc34.1, !2955, !DIExpression(), !2957)
  %exitcond.1.not = icmp eq i32 %j.075.1, %call23.fr.1, !dbg !3013
  br i1 %exitcond.1.not, label %for.cond29.for.inc36_crit_edge.1, label %for.body31.1, !dbg !3007, !llvm.loop !3014

for.cond29.for.inc36_crit_edge.1:                 ; preds = %for.body31.1
  %inc37.1 = add nuw i32 %i.077.1, 1, !dbg !3004
    #dbg_value(i32 %inc37.1, !2954, !DIExpression(), !2957)
  %exitcond81.1.not = icmp eq i32 %i.077.1, %call22.1, !dbg !2997
  br i1 %exitcond81.1.not, label %for.inc40.1, label %for.body26.1, !dbg !3000, !llvm.loop !3005

for.body26.us.1:                                  ; preds = %for.body26.lr.ph.1, %for.body26.us.1
  %i.077.us.1 = phi i32 [ %inc37.us.1, %for.body26.us.1 ], [ 0, %for.body26.lr.ph.1 ]
    #dbg_value(i32 %i.077.us.1, !2954, !DIExpression(), !2957)
  %call27.us.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27.us.1, !2949, !DIExpression(), !2957)
  %call28.us.1 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28.us.1, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  %inc37.us.1 = add nuw i32 %i.077.us.1, 1, !dbg !3004
    #dbg_value(i32 %inc37.us.1, !2954, !DIExpression(), !2957)
  %exitcond82.1.not = icmp eq i32 %i.077.us.1, %call22.1, !dbg !2997
  br i1 %exitcond82.1.not, label %for.inc40.1, label %for.body26.us.1, !dbg !3000, !llvm.loop !3005

for.inc40.1:                                      ; preds = %for.cond29.for.inc36_crit_edge.1, %for.body26.us.1, %if.then21.1, %for.inc40
    #dbg_value(i64 2, !2953, !DIExpression(), !2957)
  %tobool20.not.2 = icmp eq i32 %call14.2, 0, !dbg !2989
  br i1 %tobool20.not.2, label %for.inc40.2, label %if.then21.2, !dbg !2993

if.then21.2:                                      ; preds = %for.inc40.1
  %call22.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %call) #17, !dbg !2994
    #dbg_value(i32 %call22.2, !2947, !DIExpression(), !2957)
  %call23.2 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %call) #17, !dbg !2996
    #dbg_value(i32 %call23.2, !2948, !DIExpression(), !2957)
    #dbg_value(i32 0, !2954, !DIExpression(), !2957)
  %call23.fr.2 = freeze i32 %call23.2
  %cmp25.not76.2 = icmp slt i32 %call22.2, 0, !dbg !2997
  br i1 %cmp25.not76.2, label %for.inc40.2, label %for.body26.lr.ph.2, !dbg !3000

for.body26.lr.ph.2:                               ; preds = %if.then21.2
  %cmp30.not74.2 = icmp slt i32 %call23.fr.2, 0
  br i1 %cmp30.not74.2, label %for.body26.us.2, label %for.body26.2

for.body26.2:                                     ; preds = %for.body26.lr.ph.2, %for.cond29.for.inc36_crit_edge.2
  %i.077.2 = phi i32 [ %inc37.2, %for.cond29.for.inc36_crit_edge.2 ], [ 0, %for.body26.lr.ph.2 ]
    #dbg_value(i32 %i.077.2, !2954, !DIExpression(), !2957)
  %call27.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27.2, !2949, !DIExpression(), !2957)
  %call28.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28.2, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  br label %for.body31.2, !dbg !3007

for.body31.2:                                     ; preds = %for.body31.2, %for.body26.2
  %j.075.2 = phi i32 [ 0, %for.body26.2 ], [ %inc34.2, %for.body31.2 ]
    #dbg_value(i32 %j.075.2, !2955, !DIExpression(), !2957)
  %call32.2 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %call) #17, !dbg !3009
    #dbg_value(i32 %call32.2, !2951, !DIExpression(), !2957)
  %inc34.2 = add nuw i32 %j.075.2, 1, !dbg !3012
    #dbg_value(i32 %inc34.2, !2955, !DIExpression(), !2957)
  %exitcond.2.not = icmp eq i32 %j.075.2, %call23.fr.2, !dbg !3013
  br i1 %exitcond.2.not, label %for.cond29.for.inc36_crit_edge.2, label %for.body31.2, !dbg !3007, !llvm.loop !3014

for.cond29.for.inc36_crit_edge.2:                 ; preds = %for.body31.2
  %inc37.2 = add nuw i32 %i.077.2, 1, !dbg !3004
    #dbg_value(i32 %inc37.2, !2954, !DIExpression(), !2957)
  %exitcond81.2.not = icmp eq i32 %i.077.2, %call22.2, !dbg !2997
  br i1 %exitcond81.2.not, label %for.inc40.2, label %for.body26.2, !dbg !3000, !llvm.loop !3005

for.body26.us.2:                                  ; preds = %for.body26.lr.ph.2, %for.body26.us.2
  %i.077.us.2 = phi i32 [ %inc37.us.2, %for.body26.us.2 ], [ 0, %for.body26.lr.ph.2 ]
    #dbg_value(i32 %i.077.us.2, !2954, !DIExpression(), !2957)
  %call27.us.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %call) #17, !dbg !3001
    #dbg_value(i32 %call27.us.2, !2949, !DIExpression(), !2957)
  %call28.us.2 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %call) #17, !dbg !3003
    #dbg_value(i32 %call28.us.2, !2950, !DIExpression(), !2957)
    #dbg_value(i32 0, !2955, !DIExpression(), !2957)
  %inc37.us.2 = add nuw i32 %i.077.us.2, 1, !dbg !3004
    #dbg_value(i32 %inc37.us.2, !2954, !DIExpression(), !2957)
  %exitcond82.2.not = icmp eq i32 %i.077.us.2, %call22.2, !dbg !2997
  br i1 %exitcond82.2.not, label %for.inc40.2, label %for.body26.us.2, !dbg !3000, !llvm.loop !3005

for.inc40.2:                                      ; preds = %for.cond29.for.inc36_crit_edge.2, %for.body26.us.2, %if.then21.2, %for.inc40.1
    #dbg_value(i64 3, !2953, !DIExpression(), !2957)
  %call43 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %call) #17, !dbg !3016
    #dbg_value(i32 %call43, !2952, !DIExpression(), !2957)
  br label %if.end44, !dbg !3017

if.end44:                                         ; preds = %for.inc40.2, %entry
  tail call void @free(ptr noundef %call) #17, !dbg !3018
  ret void, !dbg !3019
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_deblocking_filter_display_preference_info(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #0 !dbg !1994 {
entry:
    #dbg_value(ptr %payload, !1993, !DIExpression(), !3020)
    #dbg_value(i32 %size, !1996, !DIExpression(), !3020)
    #dbg_value(ptr %p_Vid, !1997, !DIExpression(), !3020)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !3021
    #dbg_value(ptr %call, !2002, !DIExpression(), !3020)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !3022
  store i32 %size, ptr %bitstream_length, align 4, !dbg !3023
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !3024
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !3025
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !3026
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3027
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %call) #17, !dbg !3028
    #dbg_value(i32 %call1, !1998, !DIExpression(), !3020)
  %tobool.not = icmp eq i32 %call1, 0, !dbg !3029
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3030

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef nonnull %call) #17, !dbg !3031
    #dbg_value(i32 %call2, !1999, !DIExpression(), !3020)
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef nonnull %call) #17, !dbg !3032
    #dbg_value(i32 %call3, !2000, !DIExpression(), !3020)
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef nonnull %call) #17, !dbg !3033
    #dbg_value(i32 %call4, !2001, !DIExpression(), !3020)
  br label %if.end, !dbg !3034

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %call) #17, !dbg !3035
  ret void, !dbg !3036
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_stereo_video_info_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !3037 {
entry:
    #dbg_value(ptr %payload, !3039, !DIExpression(), !3049)
    #dbg_value(i32 %size, !3040, !DIExpression(), !3049)
    #dbg_value(ptr poison, !3041, !DIExpression(), !3049)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !3050
    #dbg_value(ptr %call, !3048, !DIExpression(), !3049)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !3051
  store i32 %size, ptr %bitstream_length, align 4, !dbg !3052
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !3053
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !3054
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !3055
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3056
  %call1 = tail call i32 @u_1(ptr noundef nonnull @.str.71, ptr noundef %call) #17, !dbg !3057
    #dbg_value(i32 %call1, !3042, !DIExpression(), !3049)
  %tobool.not = icmp eq i32 %call1, 0, !dbg !3058
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !3060

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef nonnull %call) #17, !dbg !3061
    #dbg_value(i32 %call3, !3044, !DIExpression(), !3049)
    #dbg_value(i32 %call4, !3045, !DIExpression(), !3049)
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.str.74.sink = phi ptr [ @.str.74, %if.else ], [ @.str.72, %entry ]
  %call4 = tail call i32 @u_1(ptr noundef nonnull %.str.74.sink, ptr noundef nonnull %call) #17, !dbg !3063
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.75, ptr noundef nonnull %call) #17, !dbg !3064
    #dbg_value(i32 %call5, !3046, !DIExpression(), !3049)
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef nonnull %call) #17, !dbg !3065
    #dbg_value(i32 %call6, !3047, !DIExpression(), !3049)
  tail call void @free(ptr noundef nonnull %call) #17, !dbg !3066
  ret void, !dbg !3067
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_tone_mapping(ptr noundef %payload, i32 noundef %size, ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 !dbg !3068 {
entry:
  %seiToneMappingTmp = alloca %struct.tone_mapping_struct_tmp, align 4, !DIAssignID !3110
    #dbg_assign(i1 undef, !3073, !DIExpression(), !3110, ptr %seiToneMappingTmp, !DIExpression(), !3111)
    #dbg_value(ptr %payload, !3070, !DIExpression(), !3111)
    #dbg_value(i32 %size, !3071, !DIExpression(), !3111)
    #dbg_value(ptr %p_Vid, !3072, !DIExpression(), !3111)
  call void @llvm.lifetime.start.p0(i64 49192, ptr nonnull %seiToneMappingTmp) #17, !dbg !3112
    #dbg_value(i32 0, !3093, !DIExpression(), !3111)
  %0 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 4, !dbg !3113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(49192) %0, i8 0, i64 49188, i1 false), !dbg !3113, !DIAssignID !3114
    #dbg_assign(i8 0, !3073, !DIExpression(), !3114, ptr %seiToneMappingTmp, !DIExpression(), !3111)
    #dbg_assign(i8 0, !3073, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3115, ptr undef, !DIExpression(), !3111)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !3116
    #dbg_value(ptr %call, !3092, !DIExpression(), !3111)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !3117
  store i32 %size, ptr %bitstream_length, align 4, !dbg !3118
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !3119
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !3120
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !3121
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3122
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.118, ptr noundef %call) #17, !dbg !3123
  store i32 %call1, ptr %seiToneMappingTmp, align 4, !dbg !3124, !DIAssignID !3125
    #dbg_assign(i32 %call1, !3073, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3125, ptr %seiToneMappingTmp, !DIExpression(), !3111)
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.119, ptr noundef %call) #17, !dbg !3126
  %conv = trunc i32 %call2 to i8, !dbg !3127
  %tone_map_cancel_flag = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 4, !dbg !3128
  store i8 %conv, ptr %tone_map_cancel_flag, align 4, !dbg !3129, !DIAssignID !3130
    #dbg_assign(i8 %conv, !3073, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3130, ptr %tone_map_cancel_flag, !DIExpression(), !3111)
  %tobool.not = icmp eq i8 %conv, 0, !dbg !3131
  %.sink.sroa.gep = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32, !dbg !3132
  %.sink447.sroa.gep = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 28, !dbg !3132
  br i1 %tobool.not, label %if.then, label %if.end275, !dbg !3132

if.then:                                          ; preds = %entry
  %.sink447.sroa.gep465 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 20, !dbg !3132
  %.sink.sroa.gep464 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 24, !dbg !3132
  %call4 = tail call i32 @ue_v(ptr noundef nonnull @.str.120, ptr noundef nonnull %call) #17, !dbg !3133
  %tone_map_repetition_period = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 8, !dbg !3134
  store i32 %call4, ptr %tone_map_repetition_period, align 4, !dbg !3135, !DIAssignID !3136
    #dbg_assign(i32 %call4, !3073, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !3136, ptr %tone_map_repetition_period, !DIExpression(), !3111)
  %call5 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.121, ptr noundef nonnull %call) #17, !dbg !3137
  %conv6 = trunc i32 %call5 to i8, !dbg !3138
  %coded_data_bit_depth = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 12, !dbg !3139
  store i8 %conv6, ptr %coded_data_bit_depth, align 4, !dbg !3140, !DIAssignID !3141
    #dbg_assign(i8 %conv6, !3073, !DIExpression(DW_OP_LLVM_fragment, 96, 8), !3141, ptr %coded_data_bit_depth, !DIExpression(), !3111)
  %call7 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef nonnull %call) #17, !dbg !3142
  %conv8 = trunc i32 %call7 to i8, !dbg !3143
  %sei_bit_depth = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 13, !dbg !3144
  store i8 %conv8, ptr %sei_bit_depth, align 1, !dbg !3145, !DIAssignID !3146
    #dbg_assign(i8 %conv8, !3073, !DIExpression(DW_OP_LLVM_fragment, 104, 8), !3146, ptr %sei_bit_depth, !DIExpression(), !3111)
  %call9 = tail call i32 @ue_v(ptr noundef nonnull @.str.50, ptr noundef nonnull %call) #17, !dbg !3147
  %model_id = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16, !dbg !3148
  store i32 %call9, ptr %model_id, align 4, !dbg !3149, !DIAssignID !3150
    #dbg_assign(i32 %call9, !3073, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !3150, ptr %model_id, !DIExpression(), !3111)
  %conv11 = and i32 %call5, 255, !dbg !3151
  %shl = shl nuw i32 1, %conv11, !dbg !3152
    #dbg_value(i32 %shl, !3094, !DIExpression(), !3111)
  %conv13 = and i32 %call7, 255, !dbg !3153
  %shl14 = shl nuw i32 1, %conv13, !dbg !3154
    #dbg_value(i32 %shl14, !3095, !DIExpression(), !3111)
  switch i32 %call9, label %if.end85 [
    i32 0, label %if.end85.sink.split
    i32 1, label %if.then23
    i32 2, label %for.cond.preheader
    i32 3, label %if.then41
  ], !dbg !3155

for.cond.preheader:                               ; preds = %if.then
    #dbg_value(i32 0, !3093, !DIExpression(), !3111)
  %cmp31363.not = icmp eq i32 %conv13, 31, !dbg !3156
  br i1 %cmp31363.not, label %if.end85, label %for.body.lr.ph, !dbg !3163

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add nuw nsw i32 %conv11, 7
  %shr = and i32 %add, 504
  %start_of_coded_interval = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 36
  %smax = tail call i32 @llvm.smax.i32(i32 %shl14, i32 1), !dbg !3163
  %wide.trip.count395 = zext nneg i32 %smax to i64, !dbg !3156
  br label %for.body, !dbg !3163

if.then23:                                        ; preds = %if.then
    #dbg_assign(i32 %call24, !3073, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !3164, ptr %.sink447.sroa.phi, !DIExpression(), !3111)
    #dbg_assign(i32 %call25, !3073, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !3165, ptr %.sink.sroa.phi, !DIExpression(), !3111)
  br label %if.end85.sink.split, !dbg !3166

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv392 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next393, %for.body ]
    #dbg_value(i64 %indvars.iv392, !3093, !DIExpression(), !3111)
  %call36 = tail call i32 @u_v(i32 noundef %shr, ptr noundef nonnull @.str.126, ptr noundef %call) #17, !dbg !3168
  %arrayidx = getelementptr inbounds [4096 x i32], ptr %start_of_coded_interval, i64 0, i64 %indvars.iv392, !dbg !3170
  store i32 %call36, ptr %arrayidx, align 4, !dbg !3171
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1, !dbg !3172
    #dbg_value(i64 %indvars.iv.next393, !3093, !DIExpression(), !3111)
  %exitcond396.not = icmp eq i64 %indvars.iv.next393, %wide.trip.count395, !dbg !3156
  br i1 %exitcond396.not, label %if.end85, label %for.body, !dbg !3163, !llvm.loop !3173

if.then41:                                        ; preds = %if.then
  %call42 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.127, ptr noundef nonnull %call) #17, !dbg !3175
  %num_pivots = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16420, !dbg !3178
  store i32 %call42, ptr %num_pivots, align 4, !dbg !3179, !DIAssignID !3180
    #dbg_assign(i32 %call42, !3073, !DIExpression(DW_OP_LLVM_fragment, 131360, 32), !3180, ptr %num_pivots, !DIExpression(), !3111)
  %coded_pivot_value = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16424, !dbg !3181
  store i32 0, ptr %coded_pivot_value, align 4, !dbg !3182, !DIAssignID !3183
    #dbg_assign(i32 0, !3073, !DIExpression(DW_OP_LLVM_fragment, 131392, 32), !3183, ptr %coded_pivot_value, !DIExpression(), !3111)
  %sei_pivot_value = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32808, !dbg !3184
  store i32 0, ptr %sei_pivot_value, align 4, !dbg !3185, !DIAssignID !3186
    #dbg_assign(i32 0, !3073, !DIExpression(DW_OP_LLVM_fragment, 262464, 32), !3186, ptr %sei_pivot_value, !DIExpression(), !3111)
  %sub = add nsw i32 %shl, -1, !dbg !3187
  %add47 = add nsw i32 %call42, 1, !dbg !3188
  %idxprom48 = sext i32 %add47 to i64, !dbg !3189
  %arrayidx49 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value, i64 0, i64 %idxprom48, !dbg !3189
  store i32 %sub, ptr %arrayidx49, align 4, !dbg !3190
  %sub50 = add nsw i32 %shl14, -1, !dbg !3191
  %1 = load i32, ptr %num_pivots, align 4, !dbg !3192
  %add53 = add nsw i32 %1, 1, !dbg !3193
  %idxprom54 = sext i32 %add53 to i64, !dbg !3194
  %arrayidx55 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value, i64 0, i64 %idxprom54, !dbg !3194
  store i32 %sub50, ptr %arrayidx55, align 4, !dbg !3195
    #dbg_value(i32 1, !3093, !DIExpression(), !3111)
  %2 = load i32, ptr %num_pivots, align 4
  %cmp59.not361 = icmp slt i32 %2, 1, !dbg !3196
  br i1 %cmp59.not361, label %if.end85, label %for.body61.lr.ph, !dbg !3199

for.body61.lr.ph:                                 ; preds = %if.then41
  %3 = load i8, ptr %coded_data_bit_depth, align 4
  %conv63 = zext i8 %3 to i32
  %add64 = add nuw nsw i32 %conv63, 7
  %shr65 = and i32 %add64, 504
  %4 = load i8, ptr %sei_bit_depth, align 1
  %conv72 = zext i8 %4 to i32
  %add73 = add nuw nsw i32 %conv72, 7
  %shr74 = and i32 %add73, 504
  %5 = add nuw i32 %2, 1, !dbg !3199
  %wide.trip.count = zext i32 %5 to i64, !dbg !3196
  br label %for.body61, !dbg !3199

for.body61:                                       ; preds = %for.body61.lr.ph, %for.body61
  %indvars.iv = phi i64 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next, %for.body61 ]
    #dbg_value(i64 %indvars.iv, !3093, !DIExpression(), !3111)
  %call67 = tail call i32 @u_v(i32 noundef %shr65, ptr noundef nonnull @.str.128, ptr noundef %call) #17, !dbg !3200
  %arrayidx70 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value, i64 0, i64 %indvars.iv, !dbg !3202
  store i32 %call67, ptr %arrayidx70, align 4, !dbg !3203
  %call76 = tail call i32 @u_v(i32 noundef %shr74, ptr noundef nonnull @.str.129, ptr noundef %call) #17, !dbg !3204
  %arrayidx79 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value, i64 0, i64 %indvars.iv, !dbg !3205
  store i32 %call76, ptr %arrayidx79, align 4, !dbg !3206
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3207
    #dbg_value(i64 %indvars.iv.next, !3093, !DIExpression(), !3111)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3196
  br i1 %exitcond.not, label %if.end85, label %for.body61, !dbg !3199, !llvm.loop !3208

if.end85.sink.split:                              ; preds = %if.then, %if.then23
  %.str.124.sink = phi ptr [ @.str.124, %if.then23 ], [ @.str.123, %if.then ]
  %.sink447.sroa.phi = phi ptr [ %.sink447.sroa.gep, %if.then23 ], [ %.sink447.sroa.gep465, %if.then ]
  %.str.125.sink = phi ptr [ @.str.125, %if.then23 ], [ @.str.123, %if.then ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %if.then23 ], [ %.sink.sroa.gep464, %if.then ]
  %call24 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull %.str.124.sink, ptr noundef nonnull %call) #17, !dbg !3210
  store i32 %call24, ptr %.sink447.sroa.phi, align 4, !dbg !3210, !DIAssignID !3164
  %call25 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull %.str.125.sink, ptr noundef nonnull %call) #17, !dbg !3210
  store i32 %call25, ptr %.sink.sroa.phi, align 4, !dbg !3210, !DIAssignID !3165
  br label %if.end85, !dbg !3211

if.end85:                                         ; preds = %for.body61, %for.body, %if.end85.sink.split, %if.then41, %for.cond.preheader, %if.then
    #dbg_value(i32 poison, !3093, !DIExpression(), !3111)
  %6 = load i32, ptr %seiToneMappingTmp, align 4, !dbg !3211
  %cmp87 = icmp eq i32 %6, 0, !dbg !3212
  br i1 %cmp87, label %if.then89, label %if.end275, !dbg !3213

if.then89:                                        ; preds = %if.end85
  %seiToneMapping = getelementptr inbounds i8, ptr %p_Vid, i64 856728, !dbg !3214
  %7 = load ptr, ptr %seiToneMapping, align 8, !dbg !3214
  store i32 1, ptr %7, align 8, !dbg !3215
  %8 = load i32, ptr %tone_map_repetition_period, align 4, !dbg !3216
  %9 = load ptr, ptr %seiToneMapping, align 8, !dbg !3217
  %tone_map_repetition_period92 = getelementptr inbounds i8, ptr %9, i64 4, !dbg !3218
  store i32 %8, ptr %tone_map_repetition_period92, align 4, !dbg !3219
  %10 = load i8, ptr %coded_data_bit_depth, align 4, !dbg !3220
  %11 = load ptr, ptr %seiToneMapping, align 8, !dbg !3221
  %coded_data_bit_depth95 = getelementptr inbounds i8, ptr %11, i64 8, !dbg !3222
  store i8 %10, ptr %coded_data_bit_depth95, align 8, !dbg !3223
  %12 = load i8, ptr %sei_bit_depth, align 1, !dbg !3224
  %13 = load ptr, ptr %seiToneMapping, align 8, !dbg !3225
  %sei_bit_depth98 = getelementptr inbounds i8, ptr %13, i64 9, !dbg !3226
  store i8 %12, ptr %sei_bit_depth98, align 1, !dbg !3227
  %14 = load i32, ptr %model_id, align 4, !dbg !3228
  %15 = load ptr, ptr %seiToneMapping, align 8, !dbg !3229
  %model_id101 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !3230
  store i32 %14, ptr %model_id101, align 4, !dbg !3231
  %16 = load ptr, ptr %seiToneMapping, align 8, !dbg !3232
  %count = getelementptr inbounds i8, ptr %16, i64 16, !dbg !3233
  store i32 0, ptr %count, align 8, !dbg !3234
  switch i32 %14, label %if.end275 [
    i32 0, label %for.cond104.preheader
    i32 1, label %for.cond151.preheader
    i32 2, label %sw.bb176
    i32 3, label %for.cond216.preheader
  ], !dbg !3235

for.cond216.preheader:                            ; preds = %if.then89
  %num_pivots217 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16420
  %17 = load i32, ptr %num_pivots217, align 4
    #dbg_value(i32 0, !3096, !DIExpression(), !3236)
  %cmp219.not368 = icmp slt i32 %17, 0, !dbg !3237
  br i1 %cmp219.not368, label %if.end275, label %for.body221.lr.ph, !dbg !3238

for.body221.lr.ph:                                ; preds = %for.cond216.preheader
  %sei_pivot_value222 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32808
  %coded_pivot_value231 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 16424
  %18 = add nuw i32 %17, 1, !dbg !3238
  %wide.trip.count405 = zext i32 %18 to i64, !dbg !3237
  %.pre = load i32, ptr %sei_pivot_value222, align 4, !dbg !3239
  %.pre441 = load i32, ptr %coded_pivot_value231, align 4, !dbg !3240
  br label %for.body221, !dbg !3238

for.cond151.preheader:                            ; preds = %if.then89
    #dbg_value(i32 0, !3093, !DIExpression(), !3111)
  %cmp152377.not = icmp eq i32 %conv11, 31, !dbg !3241
  br i1 %cmp152377.not, label %if.end275, label %for.body154.lr.ph, !dbg !3242

for.body154.lr.ph:                                ; preds = %for.cond151.preheader
  %sigmoid_midpoint155 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 28
  %19 = load i32, ptr %sigmoid_midpoint155, align 4
  %sigmoid_width159 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 32
  %20 = load i32, ptr %sigmoid_width159, align 4
  %conv160 = sitofp i32 %20 to double
  %sub164 = add nsw i32 %shl14, -1
  %conv165 = sitofp i32 %sub164 to double
  %smax421 = tail call i32 @llvm.smax.i32(i32 %shl, i32 1), !dbg !3242
  %wide.trip.count422 = zext nneg i32 %smax421 to i64, !dbg !3241
  br label %for.body154, !dbg !3242

for.cond104.preheader:                            ; preds = %if.then89
  %min_value105 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 20
  %21 = load i32, ptr %min_value105, align 4
    #dbg_value(i32 0, !3093, !DIExpression(), !3111)
  %cmp106.not379 = icmp slt i32 %21, 0, !dbg !3243
  %.pre443 = add i32 %21, 1, !dbg !3246
  br i1 %cmp106.not379, label %for.cond117.preheader, label %for.body108.preheader, !dbg !3247

for.body108.preheader:                            ; preds = %for.cond104.preheader
  %wide.trip.count427 = zext i32 %.pre443 to i64, !dbg !3243
  %xtraiter456 = and i64 %wide.trip.count427, 3, !dbg !3247
  %22 = icmp ult i32 %.pre443, 4, !dbg !3247
  br i1 %22, label %for.cond117.preheader.loopexit.unr-lcssa, label %for.body108.preheader.new, !dbg !3247

for.body108.preheader.new:                        ; preds = %for.body108.preheader
  %unroll_iter = and i64 %wide.trip.count427, 4294967292, !dbg !3247
  br label %for.body108, !dbg !3247

for.cond117.preheader.loopexit.unr-lcssa:         ; preds = %for.body108, %for.body108.preheader
  %indvars.iv424.unr = phi i64 [ 0, %for.body108.preheader ], [ %indvars.iv.next425.3, %for.body108 ]
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0, !dbg !3247
  br i1 %lcmp.mod457.not, label %for.cond117.preheader, label %for.body108.epil, !dbg !3247

for.body108.epil:                                 ; preds = %for.cond117.preheader.loopexit.unr-lcssa, %for.body108.epil
  %indvars.iv424.epil = phi i64 [ %indvars.iv.next425.epil, %for.body108.epil ], [ %indvars.iv424.unr, %for.cond117.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body108.epil ], [ 0, %for.cond117.preheader.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv424.epil, !3093, !DIExpression(), !3111)
  %23 = load ptr, ptr %seiToneMapping, align 8, !dbg !3248
  %lut.epil = getelementptr inbounds i8, ptr %23, i64 20, !dbg !3249
  %arrayidx111.epil = getelementptr inbounds [4096 x i16], ptr %lut.epil, i64 0, i64 %indvars.iv424.epil, !dbg !3250
  store i16 0, ptr %arrayidx111.epil, align 2, !dbg !3251
  %indvars.iv.next425.epil = add nuw nsw i64 %indvars.iv424.epil, 1, !dbg !3252
    #dbg_value(i64 %indvars.iv.next425.epil, !3093, !DIExpression(), !3111)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !3247
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter456, !dbg !3247
  br i1 %epil.iter.cmp.not, label %for.cond117.preheader, label %for.body108.epil, !dbg !3247, !llvm.loop !3253

for.cond117.preheader:                            ; preds = %for.cond117.preheader.loopexit.unr-lcssa, %for.body108.epil, %for.cond104.preheader
  %max_value118 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 24
  %24 = load i32, ptr %max_value118, align 4
  %cmp119383 = icmp slt i32 %.pre443, %24, !dbg !3255
  br i1 %cmp119383, label %for.body121.lr.ph, label %for.cond137.preheader, !dbg !3258

for.body121.lr.ph:                                ; preds = %for.cond117.preheader
  %sub124 = add nsw i32 %shl14, -1
  %sub127 = sub nsw i32 %24, %21
  %25 = sext i32 %.pre443 to i64, !dbg !3258
  %26 = add i32 %24, -2, !dbg !3258
  %27 = sub i32 %21, %24, !dbg !3258
  %28 = and i32 %27, 1, !dbg !3258
  %lcmp.mod459.not.not = icmp eq i32 %28, 0, !dbg !3258
  br i1 %lcmp.mod459.not.not, label %for.body121.prol, label %for.body121.prol.loopexit, !dbg !3258

for.body121.prol:                                 ; preds = %for.body121.lr.ph
  %div.prol = sdiv i32 %sub124, %sub127, !dbg !3259
  %conv128.prol = trunc i32 %div.prol to i16, !dbg !3260
  %29 = load ptr, ptr %seiToneMapping, align 8, !dbg !3261
  %lut130.prol = getelementptr inbounds i8, ptr %29, i64 20, !dbg !3262
  %arrayidx132.prol = getelementptr inbounds [4096 x i16], ptr %lut130.prol, i64 0, i64 %25, !dbg !3263
  store i16 %conv128.prol, ptr %arrayidx132.prol, align 2, !dbg !3264
    #dbg_value(i64 %25, !3093, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3111)
  %indvars.iv.next430.prol = add nsw i64 %25, 1, !dbg !3265
    #dbg_value(i64 %indvars.iv.next430.prol, !3093, !DIExpression(), !3111)
  br label %for.body121.prol.loopexit, !dbg !3258

for.body121.prol.loopexit:                        ; preds = %for.body121.prol, %for.body121.lr.ph
  %indvars.iv429.unr = phi i64 [ %25, %for.body121.lr.ph ], [ %indvars.iv.next430.prol, %for.body121.prol ]
  %30 = icmp eq i32 %26, %21, !dbg !3258
  br i1 %30, label %for.cond137.preheader, label %for.body121, !dbg !3258

for.body108:                                      ; preds = %for.body108, %for.body108.preheader.new
  %indvars.iv424 = phi i64 [ 0, %for.body108.preheader.new ], [ %indvars.iv.next425.3, %for.body108 ]
  %niter = phi i64 [ 0, %for.body108.preheader.new ], [ %niter.next.3, %for.body108 ]
    #dbg_value(i64 %indvars.iv424, !3093, !DIExpression(), !3111)
  %31 = load ptr, ptr %seiToneMapping, align 8, !dbg !3248
  %lut = getelementptr inbounds i8, ptr %31, i64 20, !dbg !3249
  %arrayidx111 = getelementptr inbounds [4096 x i16], ptr %lut, i64 0, i64 %indvars.iv424, !dbg !3250
  store i16 0, ptr %arrayidx111, align 2, !dbg !3251
  %indvars.iv.next425 = or disjoint i64 %indvars.iv424, 1, !dbg !3252
    #dbg_value(i64 %indvars.iv.next425, !3093, !DIExpression(), !3111)
  %32 = load ptr, ptr %seiToneMapping, align 8, !dbg !3248
  %lut.1 = getelementptr inbounds i8, ptr %32, i64 20, !dbg !3249
  %arrayidx111.1 = getelementptr inbounds [4096 x i16], ptr %lut.1, i64 0, i64 %indvars.iv.next425, !dbg !3250
  store i16 0, ptr %arrayidx111.1, align 2, !dbg !3251
  %indvars.iv.next425.1 = or disjoint i64 %indvars.iv424, 2, !dbg !3252
    #dbg_value(i64 %indvars.iv.next425.1, !3093, !DIExpression(), !3111)
  %33 = load ptr, ptr %seiToneMapping, align 8, !dbg !3248
  %lut.2 = getelementptr inbounds i8, ptr %33, i64 20, !dbg !3249
  %arrayidx111.2 = getelementptr inbounds [4096 x i16], ptr %lut.2, i64 0, i64 %indvars.iv.next425.1, !dbg !3250
  store i16 0, ptr %arrayidx111.2, align 2, !dbg !3251
  %indvars.iv.next425.2 = or disjoint i64 %indvars.iv424, 3, !dbg !3252
    #dbg_value(i64 %indvars.iv.next425.2, !3093, !DIExpression(), !3111)
  %34 = load ptr, ptr %seiToneMapping, align 8, !dbg !3248
  %lut.3 = getelementptr inbounds i8, ptr %34, i64 20, !dbg !3249
  %arrayidx111.3 = getelementptr inbounds [4096 x i16], ptr %lut.3, i64 0, i64 %indvars.iv.next425.2, !dbg !3250
  store i16 0, ptr %arrayidx111.3, align 2, !dbg !3251
  %indvars.iv.next425.3 = add nuw nsw i64 %indvars.iv424, 4, !dbg !3252
    #dbg_value(i64 %indvars.iv.next425.3, !3093, !DIExpression(), !3111)
  %niter.next.3 = add i64 %niter, 4, !dbg !3247
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !3247
  br i1 %niter.ncmp.3, label %for.cond117.preheader.loopexit.unr-lcssa, label %for.body108, !dbg !3247, !llvm.loop !3266

for.cond137.preheader:                            ; preds = %for.body121.prol.loopexit, %for.body121, %for.cond117.preheader
    #dbg_value(i32 %24, !3093, !DIExpression(), !3111)
  %cmp138386 = icmp slt i32 %24, %shl, !dbg !3268
  br i1 %cmp138386, label %for.body140.lr.ph, label %if.end275, !dbg !3271

for.body140.lr.ph:                                ; preds = %for.cond137.preheader
  %35 = trunc i32 %shl14 to i16
  %conv142 = add i16 %35, -1
  %36 = sext i32 %24 to i64, !dbg !3271
  %wide.trip.count439 = sext i32 %shl to i64, !dbg !3268
  %37 = sub nsw i64 %wide.trip.count439, %36, !dbg !3271
  %xtraiter461 = and i64 %37, 3, !dbg !3271
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0, !dbg !3271
  br i1 %lcmp.mod462.not, label %for.body140.prol.loopexit, label %for.body140.prol, !dbg !3271

for.body140.prol:                                 ; preds = %for.body140.lr.ph, %for.body140.prol
  %indvars.iv436.prol = phi i64 [ %indvars.iv.next437.prol, %for.body140.prol ], [ %36, %for.body140.lr.ph ]
  %prol.iter463 = phi i64 [ %prol.iter463.next, %for.body140.prol ], [ 0, %for.body140.lr.ph ]
    #dbg_value(i64 %indvars.iv436.prol, !3093, !DIExpression(), !3111)
  %38 = load ptr, ptr %seiToneMapping, align 8, !dbg !3272
  %lut144.prol = getelementptr inbounds i8, ptr %38, i64 20, !dbg !3273
  %arrayidx146.prol = getelementptr inbounds [4096 x i16], ptr %lut144.prol, i64 0, i64 %indvars.iv436.prol, !dbg !3274
  store i16 %conv142, ptr %arrayidx146.prol, align 2, !dbg !3275
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.prol, 1, !dbg !3276
    #dbg_value(i64 %indvars.iv.next437.prol, !3093, !DIExpression(), !3111)
  %prol.iter463.next = add i64 %prol.iter463, 1, !dbg !3271
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461, !dbg !3271
  br i1 %prol.iter463.cmp.not, label %for.body140.prol.loopexit, label %for.body140.prol, !dbg !3271, !llvm.loop !3277

for.body140.prol.loopexit:                        ; preds = %for.body140.prol, %for.body140.lr.ph
  %indvars.iv436.unr = phi i64 [ %36, %for.body140.lr.ph ], [ %indvars.iv.next437.prol, %for.body140.prol ]
  %39 = sub nsw i64 %36, %wide.trip.count439, !dbg !3271
  %40 = icmp ugt i64 %39, -4, !dbg !3271
  br i1 %40, label %if.end275, label %for.body140, !dbg !3271

for.body121:                                      ; preds = %for.body121.prol.loopexit, %for.body121
  %indvars.iv429 = phi i64 [ %indvars.iv.next430.1, %for.body121 ], [ %indvars.iv429.unr, %for.body121.prol.loopexit ]
  %41 = trunc i64 %indvars.iv429 to i32, !dbg !3259
  %42 = sub i32 %41, %21, !dbg !3259
  %43 = mul i32 %42, %sub124, !dbg !3259
  %div = sdiv i32 %43, %sub127, !dbg !3259
  %conv128 = trunc i32 %div to i16, !dbg !3260
  %44 = load ptr, ptr %seiToneMapping, align 8, !dbg !3261
  %lut130 = getelementptr inbounds i8, ptr %44, i64 20, !dbg !3262
  %arrayidx132 = getelementptr inbounds [4096 x i16], ptr %lut130, i64 0, i64 %indvars.iv429, !dbg !3263
  store i16 %conv128, ptr %arrayidx132, align 2, !dbg !3264
    #dbg_value(i64 %indvars.iv429, !3093, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3111)
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1, !dbg !3265
    #dbg_value(i64 %indvars.iv.next430, !3093, !DIExpression(), !3111)
  %45 = trunc i64 %indvars.iv.next430 to i32, !dbg !3259
  %46 = sub i32 %45, %21, !dbg !3259
  %47 = mul i32 %46, %sub124, !dbg !3259
  %div.1 = sdiv i32 %47, %sub127, !dbg !3259
  %conv128.1 = trunc i32 %div.1 to i16, !dbg !3260
  %48 = load ptr, ptr %seiToneMapping, align 8, !dbg !3261
  %lut130.1 = getelementptr inbounds i8, ptr %48, i64 20, !dbg !3262
  %arrayidx132.1 = getelementptr inbounds [4096 x i16], ptr %lut130.1, i64 0, i64 %indvars.iv.next430, !dbg !3263
  store i16 %conv128.1, ptr %arrayidx132.1, align 2, !dbg !3264
    #dbg_value(i64 %indvars.iv.next430, !3093, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3111)
  %indvars.iv.next430.1 = add nsw i64 %indvars.iv429, 2, !dbg !3265
    #dbg_value(i64 %indvars.iv.next430.1, !3093, !DIExpression(), !3111)
  %lftr.wideiv434.1 = trunc i64 %indvars.iv.next430.1 to i32, !dbg !3255
  %exitcond435.not.1 = icmp eq i32 %24, %lftr.wideiv434.1, !dbg !3255
  br i1 %exitcond435.not.1, label %for.cond137.preheader, label %for.body121, !dbg !3258, !llvm.loop !3278

for.body140:                                      ; preds = %for.body140.prol.loopexit, %for.body140
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.3, %for.body140 ], [ %indvars.iv436.unr, %for.body140.prol.loopexit ]
    #dbg_value(i64 %indvars.iv436, !3093, !DIExpression(), !3111)
  %49 = load ptr, ptr %seiToneMapping, align 8, !dbg !3272
  %lut144 = getelementptr inbounds i8, ptr %49, i64 20, !dbg !3273
  %arrayidx146 = getelementptr inbounds [4096 x i16], ptr %lut144, i64 0, i64 %indvars.iv436, !dbg !3274
  store i16 %conv142, ptr %arrayidx146, align 2, !dbg !3275
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1, !dbg !3276
    #dbg_value(i64 %indvars.iv.next437, !3093, !DIExpression(), !3111)
  %50 = load ptr, ptr %seiToneMapping, align 8, !dbg !3272
  %lut144.1 = getelementptr inbounds i8, ptr %50, i64 20, !dbg !3273
  %arrayidx146.1 = getelementptr inbounds [4096 x i16], ptr %lut144.1, i64 0, i64 %indvars.iv.next437, !dbg !3274
  store i16 %conv142, ptr %arrayidx146.1, align 2, !dbg !3275
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2, !dbg !3276
    #dbg_value(i64 %indvars.iv.next437.1, !3093, !DIExpression(), !3111)
  %51 = load ptr, ptr %seiToneMapping, align 8, !dbg !3272
  %lut144.2 = getelementptr inbounds i8, ptr %51, i64 20, !dbg !3273
  %arrayidx146.2 = getelementptr inbounds [4096 x i16], ptr %lut144.2, i64 0, i64 %indvars.iv.next437.1, !dbg !3274
  store i16 %conv142, ptr %arrayidx146.2, align 2, !dbg !3275
  %indvars.iv.next437.2 = add nsw i64 %indvars.iv436, 3, !dbg !3276
    #dbg_value(i64 %indvars.iv.next437.2, !3093, !DIExpression(), !3111)
  %52 = load ptr, ptr %seiToneMapping, align 8, !dbg !3272
  %lut144.3 = getelementptr inbounds i8, ptr %52, i64 20, !dbg !3273
  %arrayidx146.3 = getelementptr inbounds [4096 x i16], ptr %lut144.3, i64 0, i64 %indvars.iv.next437.2, !dbg !3274
  store i16 %conv142, ptr %arrayidx146.3, align 2, !dbg !3275
  %indvars.iv.next437.3 = add nsw i64 %indvars.iv436, 4, !dbg !3276
    #dbg_value(i64 %indvars.iv.next437.3, !3093, !DIExpression(), !3111)
  %exitcond440.not.3 = icmp eq i64 %indvars.iv.next437.3, %wide.trip.count439, !dbg !3268
  br i1 %exitcond440.not.3, label %if.end275, label %for.body140, !dbg !3271, !llvm.loop !3280

for.body154:                                      ; preds = %for.body154.lr.ph, %for.body154
  %indvars.iv417 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next418, %for.body154 ]
    #dbg_value(i64 %indvars.iv417, !3093, !DIExpression(), !3111)
  %53 = trunc i64 %indvars.iv417 to i32, !dbg !3282
  %54 = sub i32 %53, %19, !dbg !3282
  %conv157 = sitofp i32 %54 to double, !dbg !3282
  %mul158 = fmul double %conv157, -6.000000e+00, !dbg !3283
  %div161 = fdiv double %mul158, %conv160, !dbg !3284
  %call162 = tail call double @exp(double noundef %div161) #17, !dbg !3285
  %add163 = fadd double %call162, 1.000000e+00, !dbg !3286
    #dbg_value(double %add163, !3101, !DIExpression(), !3287)
  %div166 = fdiv double %conv165, %add163, !dbg !3288
  %add167 = fadd double %div166, 5.000000e-01, !dbg !3289
  %conv168 = fptoui double %add167 to i16, !dbg !3290
  %55 = load ptr, ptr %seiToneMapping, align 8, !dbg !3291
  %lut170 = getelementptr inbounds i8, ptr %55, i64 20, !dbg !3292
  %arrayidx172 = getelementptr inbounds [4096 x i16], ptr %lut170, i64 0, i64 %indvars.iv417, !dbg !3293
  store i16 %conv168, ptr %arrayidx172, align 2, !dbg !3294
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1, !dbg !3295
    #dbg_value(i64 %indvars.iv.next418, !3093, !DIExpression(), !3111)
  %exitcond423.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count422, !dbg !3241
  br i1 %exitcond423.not, label %if.end275, label %for.body154, !dbg !3242, !llvm.loop !3296

sw.bb176:                                         ; preds = %if.then89
  %sub177 = add i32 %shl14, -1, !dbg !3298
  %cmp178 = icmp sgt i32 %shl14, 1, !dbg !3300
  br i1 %cmp178, label %for.body185.lr.ph, label %if.end275, !dbg !3301

for.body185.lr.ph:                                ; preds = %sw.bb176
    #dbg_value(i32 poison, !3093, !DIExpression(), !3111)
    #dbg_value(i32 0, !3096, !DIExpression(), !3236)
  %start_of_coded_interval186 = getelementptr inbounds i8, ptr %seiToneMappingTmp, i64 36
  %wide.trip.count415 = zext nneg i32 %sub177 to i64, !dbg !3302
  %.pre442 = load i32, ptr %start_of_coded_interval186, align 4, !dbg !3306
  br label %for.body185, !dbg !3309

for.cond181.loopexit:                             ; preds = %for.body196.prol.loopexit, %for.body196, %for.body185
  %i.8.lcssa = phi i32 [ %56, %for.body185 ], [ %57, %for.body196 ], [ %57, %for.body196.prol.loopexit ], !dbg !3310
    #dbg_value(i32 %i.8.lcssa, !3093, !DIExpression(), !3111)
    #dbg_value(i64 %indvars.iv.next413, !3096, !DIExpression(), !3236)
  %exitcond416.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count415, !dbg !3302
  br i1 %exitcond416.not, label %for.end207, label %for.body185, !dbg !3309, !llvm.loop !3311

for.body185:                                      ; preds = %for.body185.lr.ph, %for.cond181.loopexit
  %56 = phi i32 [ %.pre442, %for.body185.lr.ph ], [ %57, %for.cond181.loopexit ], !dbg !3306
  %indvars.iv412 = phi i64 [ 0, %for.body185.lr.ph ], [ %indvars.iv.next413, %for.cond181.loopexit ]
    #dbg_value(i64 %indvars.iv412, !3096, !DIExpression(), !3236)
    #dbg_value(i32 %56, !3093, !DIExpression(), !3111)
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1
  %arrayidx193 = getelementptr inbounds [4096 x i32], ptr %start_of_coded_interval186, i64 0, i64 %indvars.iv.next413
  %57 = load i32, ptr %arrayidx193, align 4
  %cmp194370 = icmp slt i32 %56, %57, !dbg !3313
  br i1 %cmp194370, label %for.body196.lr.ph, label %for.cond181.loopexit, !dbg !3315

for.body196.lr.ph:                                ; preds = %for.body185
  %conv197 = trunc i64 %indvars.iv412 to i16
  %58 = sext i32 %56 to i64, !dbg !3315
  %wide.trip.count410 = sext i32 %57 to i64, !dbg !3313
  %59 = sub nsw i64 %wide.trip.count410, %58, !dbg !3315
  %xtraiter454 = and i64 %59, 3, !dbg !3315
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0, !dbg !3315
  br i1 %lcmp.mod455.not, label %for.body196.prol.loopexit, label %for.body196.prol, !dbg !3315

for.body196.prol:                                 ; preds = %for.body196.lr.ph, %for.body196.prol
  %indvars.iv407.prol = phi i64 [ %indvars.iv.next408.prol, %for.body196.prol ], [ %58, %for.body196.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body196.prol ], [ 0, %for.body196.lr.ph ]
    #dbg_value(i64 %indvars.iv407.prol, !3093, !DIExpression(), !3111)
  %60 = load ptr, ptr %seiToneMapping, align 8, !dbg !3316
  %lut199.prol = getelementptr inbounds i8, ptr %60, i64 20, !dbg !3318
  %arrayidx201.prol = getelementptr inbounds [4096 x i16], ptr %lut199.prol, i64 0, i64 %indvars.iv407.prol, !dbg !3319
  store i16 %conv197, ptr %arrayidx201.prol, align 2, !dbg !3320
  %indvars.iv.next408.prol = add nsw i64 %indvars.iv407.prol, 1, !dbg !3321
    #dbg_value(i64 %indvars.iv.next408.prol, !3093, !DIExpression(), !3111)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3315
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter454, !dbg !3315
  br i1 %prol.iter.cmp.not, label %for.body196.prol.loopexit, label %for.body196.prol, !dbg !3315, !llvm.loop !3322

for.body196.prol.loopexit:                        ; preds = %for.body196.prol, %for.body196.lr.ph
  %indvars.iv407.unr = phi i64 [ %58, %for.body196.lr.ph ], [ %indvars.iv.next408.prol, %for.body196.prol ]
  %61 = sub nsw i64 %58, %wide.trip.count410, !dbg !3315
  %62 = icmp ugt i64 %61, -4, !dbg !3315
  br i1 %62, label %for.cond181.loopexit, label %for.body196, !dbg !3315

for.body196:                                      ; preds = %for.body196.prol.loopexit, %for.body196
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.3, %for.body196 ], [ %indvars.iv407.unr, %for.body196.prol.loopexit ]
    #dbg_value(i64 %indvars.iv407, !3093, !DIExpression(), !3111)
  %63 = load ptr, ptr %seiToneMapping, align 8, !dbg !3316
  %lut199 = getelementptr inbounds i8, ptr %63, i64 20, !dbg !3318
  %arrayidx201 = getelementptr inbounds [4096 x i16], ptr %lut199, i64 0, i64 %indvars.iv407, !dbg !3319
  store i16 %conv197, ptr %arrayidx201, align 2, !dbg !3320
  %indvars.iv.next408 = add nsw i64 %indvars.iv407, 1, !dbg !3321
    #dbg_value(i64 %indvars.iv.next408, !3093, !DIExpression(), !3111)
  %64 = load ptr, ptr %seiToneMapping, align 8, !dbg !3316
  %lut199.1 = getelementptr inbounds i8, ptr %64, i64 20, !dbg !3318
  %arrayidx201.1 = getelementptr inbounds [4096 x i16], ptr %lut199.1, i64 0, i64 %indvars.iv.next408, !dbg !3319
  store i16 %conv197, ptr %arrayidx201.1, align 2, !dbg !3320
  %indvars.iv.next408.1 = add nsw i64 %indvars.iv407, 2, !dbg !3321
    #dbg_value(i64 %indvars.iv.next408.1, !3093, !DIExpression(), !3111)
  %65 = load ptr, ptr %seiToneMapping, align 8, !dbg !3316
  %lut199.2 = getelementptr inbounds i8, ptr %65, i64 20, !dbg !3318
  %arrayidx201.2 = getelementptr inbounds [4096 x i16], ptr %lut199.2, i64 0, i64 %indvars.iv.next408.1, !dbg !3319
  store i16 %conv197, ptr %arrayidx201.2, align 2, !dbg !3320
  %indvars.iv.next408.2 = add nsw i64 %indvars.iv407, 3, !dbg !3321
    #dbg_value(i64 %indvars.iv.next408.2, !3093, !DIExpression(), !3111)
  %66 = load ptr, ptr %seiToneMapping, align 8, !dbg !3316
  %lut199.3 = getelementptr inbounds i8, ptr %66, i64 20, !dbg !3318
  %arrayidx201.3 = getelementptr inbounds [4096 x i16], ptr %lut199.3, i64 0, i64 %indvars.iv.next408.2, !dbg !3319
  store i16 %conv197, ptr %arrayidx201.3, align 2, !dbg !3320
  %indvars.iv.next408.3 = add nsw i64 %indvars.iv407, 4, !dbg !3321
    #dbg_value(i64 %indvars.iv.next408.3, !3093, !DIExpression(), !3111)
  %exitcond411.not.3 = icmp eq i64 %indvars.iv.next408.3, %wide.trip.count410, !dbg !3313
  br i1 %exitcond411.not.3, label %for.cond181.loopexit, label %for.body196, !dbg !3315, !llvm.loop !3323

for.end207:                                       ; preds = %for.cond181.loopexit
  %conv209 = trunc i32 %sub177 to i16, !dbg !3325
  %67 = load ptr, ptr %seiToneMapping, align 8, !dbg !3326
  %lut211 = getelementptr inbounds i8, ptr %67, i64 20, !dbg !3327
  %idxprom212 = sext i32 %i.8.lcssa to i64, !dbg !3328
  %arrayidx213 = getelementptr inbounds [4096 x i16], ptr %lut211, i64 0, i64 %idxprom212, !dbg !3328
  store i16 %conv209, ptr %arrayidx213, align 2, !dbg !3329
  br label %if.end275, !dbg !3330

for.cond216.loopexit:                             ; preds = %for.body251.prol.loopexit, %for.body251, %for.body221
    #dbg_value(i64 %indvars.iv.next403, !3096, !DIExpression(), !3236)
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405, !dbg !3237
  br i1 %exitcond406.not, label %if.end275, label %for.body221, !dbg !3238, !llvm.loop !3331

for.body221:                                      ; preds = %for.body221.lr.ph, %for.cond216.loopexit
  %68 = phi i32 [ %.pre441, %for.body221.lr.ph ], [ %71, %for.cond216.loopexit ], !dbg !3240
  %69 = phi i32 [ %.pre, %for.body221.lr.ph ], [ %70, %for.cond216.loopexit ], !dbg !3239
  %indvars.iv402 = phi i64 [ 0, %for.body221.lr.ph ], [ %indvars.iv.next403, %for.cond216.loopexit ]
    #dbg_value(i64 %indvars.iv402, !3096, !DIExpression(), !3236)
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1, !dbg !3333
  %arrayidx225 = getelementptr inbounds [4096 x i32], ptr %sei_pivot_value222, i64 0, i64 %indvars.iv.next403, !dbg !3334
  %70 = load i32, ptr %arrayidx225, align 4, !dbg !3334
  %sub229 = sub nsw i32 %70, %69, !dbg !3335
  %conv230 = sitofp i32 %sub229 to double, !dbg !3336
  %arrayidx234 = getelementptr inbounds [4096 x i32], ptr %coded_pivot_value231, i64 0, i64 %indvars.iv.next403, !dbg !3337
  %71 = load i32, ptr %arrayidx234, align 4, !dbg !3337
  %sub238 = sub nsw i32 %71, %68, !dbg !3338
  %conv239 = sitofp i32 %sub238 to double, !dbg !3339
  %div240 = fdiv double %conv230, %conv239, !dbg !3340
    #dbg_value(double %div240, !3106, !DIExpression(), !3341)
    #dbg_value(i32 %68, !3093, !DIExpression(), !3111)
  %cmp249.not366 = icmp sgt i32 %68, %71, !dbg !3342
  br i1 %cmp249.not366, label %for.cond216.loopexit, label %for.body251.preheader, !dbg !3345

for.body251.preheader:                            ; preds = %for.body221
  %72 = sext i32 %68 to i64, !dbg !3345
  %73 = add i32 %71, 1, !dbg !3345
  %74 = sub i32 %73, %68, !dbg !3345
  %xtraiter = and i32 %74, 1, !dbg !3345
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !3345
  br i1 %lcmp.mod.not, label %for.body251.prol.loopexit, label %for.body251.prol, !dbg !3345

for.body251.prol:                                 ; preds = %for.body251.preheader
    #dbg_value(i64 %72, !3093, !DIExpression(), !3111)
  %mul260.prol = fmul double %div240, 0.000000e+00, !dbg !3346
  %conv261.prol = fptosi double %mul260.prol to i32, !dbg !3348
  %add262.prol = add nsw i32 %69, %conv261.prol, !dbg !3349
  %conv263.prol = trunc i32 %add262.prol to i16, !dbg !3350
  %75 = load ptr, ptr %seiToneMapping, align 8, !dbg !3351
  %lut265.prol = getelementptr inbounds i8, ptr %75, i64 20, !dbg !3352
  %arrayidx267.prol = getelementptr inbounds [4096 x i16], ptr %lut265.prol, i64 0, i64 %72, !dbg !3353
  store i16 %conv263.prol, ptr %arrayidx267.prol, align 2, !dbg !3354
  %indvars.iv.next398.prol = add nsw i64 %72, 1, !dbg !3355
    #dbg_value(i64 %indvars.iv.next398.prol, !3093, !DIExpression(), !3111)
  br label %for.body251.prol.loopexit, !dbg !3345

for.body251.prol.loopexit:                        ; preds = %for.body251.prol, %for.body251.preheader
  %indvars.iv397.unr = phi i64 [ %72, %for.body251.preheader ], [ %indvars.iv.next398.prol, %for.body251.prol ]
  %76 = icmp eq i32 %71, %68, !dbg !3345
  br i1 %76, label %for.cond216.loopexit, label %for.body251, !dbg !3345

for.body251:                                      ; preds = %for.body251.prol.loopexit, %for.body251
  %indvars.iv397 = phi i64 [ %indvars.iv.next398.1, %for.body251 ], [ %indvars.iv397.unr, %for.body251.prol.loopexit ]
    #dbg_value(i64 %indvars.iv397, !3093, !DIExpression(), !3111)
  %77 = trunc i64 %indvars.iv397 to i32, !dbg !3356
  %78 = sub i32 %77, %68, !dbg !3356
  %conv259 = sitofp i32 %78 to double, !dbg !3356
  %mul260 = fmul double %div240, %conv259, !dbg !3346
  %conv261 = fptosi double %mul260 to i32, !dbg !3348
  %add262 = add nsw i32 %69, %conv261, !dbg !3349
  %conv263 = trunc i32 %add262 to i16, !dbg !3350
  %79 = load ptr, ptr %seiToneMapping, align 8, !dbg !3351
  %lut265 = getelementptr inbounds i8, ptr %79, i64 20, !dbg !3352
  %arrayidx267 = getelementptr inbounds [4096 x i16], ptr %lut265, i64 0, i64 %indvars.iv397, !dbg !3353
  store i16 %conv263, ptr %arrayidx267, align 2, !dbg !3354
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1, !dbg !3355
    #dbg_value(i64 %indvars.iv.next398, !3093, !DIExpression(), !3111)
  %80 = trunc i64 %indvars.iv.next398 to i32, !dbg !3356
  %81 = sub i32 %80, %68, !dbg !3356
  %conv259.1 = sitofp i32 %81 to double, !dbg !3356
  %mul260.1 = fmul double %div240, %conv259.1, !dbg !3346
  %conv261.1 = fptosi double %mul260.1 to i32, !dbg !3348
  %add262.1 = add nsw i32 %69, %conv261.1, !dbg !3349
  %conv263.1 = trunc i32 %add262.1 to i16, !dbg !3350
  %82 = load ptr, ptr %seiToneMapping, align 8, !dbg !3351
  %lut265.1 = getelementptr inbounds i8, ptr %82, i64 20, !dbg !3352
  %arrayidx267.1 = getelementptr inbounds [4096 x i16], ptr %lut265.1, i64 0, i64 %indvars.iv.next398, !dbg !3353
  store i16 %conv263.1, ptr %arrayidx267.1, align 2, !dbg !3354
  %indvars.iv.next398.1 = add nsw i64 %indvars.iv397, 2, !dbg !3355
    #dbg_value(i64 %indvars.iv.next398.1, !3093, !DIExpression(), !3111)
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next398.1 to i32, !dbg !3342
  %exitcond401.not.1 = icmp eq i32 %73, %lftr.wideiv.1, !dbg !3342
  br i1 %exitcond401.not.1, label %for.cond216.loopexit, label %for.body251, !dbg !3345, !llvm.loop !3357

if.end275:                                        ; preds = %for.cond216.loopexit, %for.body154, %for.body140.prol.loopexit, %for.body140, %for.cond216.preheader, %for.cond151.preheader, %for.cond137.preheader, %for.end207, %sw.bb176, %if.then89, %if.end85, %entry
  tail call void @free(ptr noundef %call) #17, !dbg !3359
  call void @llvm.lifetime.end.p0(i64 49192, ptr nonnull %seiToneMappingTmp) #17, !dbg !3360
  ret void, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_post_filter_hints_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !3361 {
entry:
  %filter_hint = alloca ptr, align 8, !DIAssignID !3375
    #dbg_assign(i1 undef, !3374, !DIExpression(), !3375, ptr %filter_hint, !DIExpression(), !3376)
    #dbg_value(ptr %payload, !3363, !DIExpression(), !3376)
    #dbg_value(i32 %size, !3364, !DIExpression(), !3376)
    #dbg_value(ptr poison, !3365, !DIExpression(), !3376)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter_hint) #17, !dbg !3377
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !3378
    #dbg_value(ptr %call, !3366, !DIExpression(), !3376)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !3379
  store i32 %size, ptr %bitstream_length, align 4, !dbg !3380
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !3381
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !3382
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !3383
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3384
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !3385
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !3386
  store i32 0, ptr %UsedBits, align 8, !dbg !3387
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %call) #17, !dbg !3388
    #dbg_value(i32 %call1, !3367, !DIExpression(), !3376)
  %call2 = tail call i32 @ue_v(ptr noundef nonnull @.str.131, ptr noundef %call) #17, !dbg !3389
    #dbg_value(i32 %call2, !3368, !DIExpression(), !3376)
  %call3 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.132, ptr noundef %call) #17, !dbg !3390
    #dbg_value(i32 %call3, !3369, !DIExpression(), !3376)
  %call4 = call i32 @get_mem3Dint(ptr noundef nonnull %filter_hint, i32 noundef 3, i32 noundef %call1, i32 noundef %call2) #17, !dbg !3391
    #dbg_value(i32 0, !3370, !DIExpression(), !3376)
  %cmp641.not = icmp eq i32 %call1, 0
    #dbg_value(i32 0, !3370, !DIExpression(), !3376)
  %cmp939.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp641.not, i1 true, i1 %cmp939.not
  br i1 %or.cond, label %for.end21, label %for.cond5.preheader.us.us.preheader

for.cond5.preheader.us.us.preheader:              ; preds = %entry
    #dbg_value(i64 0, !3370, !DIExpression(), !3376)
    #dbg_value(i32 0, !3372, !DIExpression(), !3376)
  %wide.trip.count56 = zext i32 %call1 to i64, !dbg !3392
  %wide.trip.count = zext i32 %call2 to i64
  br label %for.cond8.preheader.us.us.us, !dbg !3397

for.cond8.preheader.us.us.us:                     ; preds = %for.cond8.for.inc16_crit_edge.us.us.us, %for.cond5.preheader.us.us.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond8.for.inc16_crit_edge.us.us.us ], [ 0, %for.cond5.preheader.us.us.preheader ]
    #dbg_value(i64 %indvars.iv53, !3372, !DIExpression(), !3376)
    #dbg_value(i32 0, !3371, !DIExpression(), !3376)
  br label %for.body10.us.us.us, !dbg !3398

for.body10.us.us.us:                              ; preds = %for.body10.us.us.us, %for.cond8.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10.us.us.us ], [ 0, %for.cond8.preheader.us.us.us ]
    #dbg_value(i64 %indvars.iv, !3371, !DIExpression(), !3376)
  %call11.us.us.us = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17, !dbg !3400
  %1 = load ptr, ptr %filter_hint, align 8, !dbg !3402
  %2 = load ptr, ptr %1, align 8, !dbg !3402
  %arrayidx13.us.us.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv53, !dbg !3402
  %3 = load ptr, ptr %arrayidx13.us.us.us, align 8, !dbg !3402
  %arrayidx15.us.us.us = getelementptr inbounds i32, ptr %3, i64 %indvars.iv, !dbg !3402
  store i32 %call11.us.us.us, ptr %arrayidx15.us.us.us, align 4, !dbg !3403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3404
    #dbg_value(i64 %indvars.iv.next, !3371, !DIExpression(), !3376)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3405
  br i1 %exitcond.not, label %for.cond8.for.inc16_crit_edge.us.us.us, label %for.body10.us.us.us, !dbg !3398, !llvm.loop !3406

for.cond8.for.inc16_crit_edge.us.us.us:           ; preds = %for.body10.us.us.us
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !3408
    #dbg_value(i64 %indvars.iv.next54, !3372, !DIExpression(), !3376)
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56, !dbg !3392
  br i1 %exitcond57.not, label %for.cond8.preheader.us.us.us.1, label %for.cond8.preheader.us.us.us, !dbg !3397, !llvm.loop !3409

for.cond8.preheader.us.us.us.1:                   ; preds = %for.cond8.for.inc16_crit_edge.us.us.us, %for.cond8.for.inc16_crit_edge.us.us.us.1
  %indvars.iv53.1 = phi i64 [ %indvars.iv.next54.1, %for.cond8.for.inc16_crit_edge.us.us.us.1 ], [ 0, %for.cond8.for.inc16_crit_edge.us.us.us ]
    #dbg_value(i64 %indvars.iv53.1, !3372, !DIExpression(), !3376)
    #dbg_value(i32 0, !3371, !DIExpression(), !3376)
  br label %for.body10.us.us.us.1, !dbg !3398

for.body10.us.us.us.1:                            ; preds = %for.body10.us.us.us.1, %for.cond8.preheader.us.us.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %for.body10.us.us.us.1 ], [ 0, %for.cond8.preheader.us.us.us.1 ]
    #dbg_value(i64 %indvars.iv.1, !3371, !DIExpression(), !3376)
  %call11.us.us.us.1 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17, !dbg !3400
  %4 = load ptr, ptr %filter_hint, align 8, !dbg !3402
  %arrayidx.us.us.us.1 = getelementptr inbounds i8, ptr %4, i64 8, !dbg !3402
  %5 = load ptr, ptr %arrayidx.us.us.us.1, align 8, !dbg !3402
  %arrayidx13.us.us.us.1 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv53.1, !dbg !3402
  %6 = load ptr, ptr %arrayidx13.us.us.us.1, align 8, !dbg !3402
  %arrayidx15.us.us.us.1 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv.1, !dbg !3402
  store i32 %call11.us.us.us.1, ptr %arrayidx15.us.us.us.1, align 4, !dbg !3403
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !3404
    #dbg_value(i64 %indvars.iv.next.1, !3371, !DIExpression(), !3376)
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count, !dbg !3405
  br i1 %exitcond.1.not, label %for.cond8.for.inc16_crit_edge.us.us.us.1, label %for.body10.us.us.us.1, !dbg !3398, !llvm.loop !3406

for.cond8.for.inc16_crit_edge.us.us.us.1:         ; preds = %for.body10.us.us.us.1
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53.1, 1, !dbg !3408
    #dbg_value(i64 %indvars.iv.next54.1, !3372, !DIExpression(), !3376)
  %exitcond57.1.not = icmp eq i64 %indvars.iv.next54.1, %wide.trip.count56, !dbg !3392
  br i1 %exitcond57.1.not, label %for.cond8.preheader.us.us.us.2, label %for.cond8.preheader.us.us.us.1, !dbg !3397, !llvm.loop !3409

for.cond8.preheader.us.us.us.2:                   ; preds = %for.cond8.for.inc16_crit_edge.us.us.us.1, %for.cond8.for.inc16_crit_edge.us.us.us.2
  %indvars.iv53.2 = phi i64 [ %indvars.iv.next54.2, %for.cond8.for.inc16_crit_edge.us.us.us.2 ], [ 0, %for.cond8.for.inc16_crit_edge.us.us.us.1 ]
    #dbg_value(i64 %indvars.iv53.2, !3372, !DIExpression(), !3376)
    #dbg_value(i32 0, !3371, !DIExpression(), !3376)
  br label %for.body10.us.us.us.2, !dbg !3398

for.body10.us.us.us.2:                            ; preds = %for.body10.us.us.us.2, %for.cond8.preheader.us.us.us.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %for.body10.us.us.us.2 ], [ 0, %for.cond8.preheader.us.us.us.2 ]
    #dbg_value(i64 %indvars.iv.2, !3371, !DIExpression(), !3376)
  %call11.us.us.us.2 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %call) #17, !dbg !3400
  %7 = load ptr, ptr %filter_hint, align 8, !dbg !3402
  %arrayidx.us.us.us.2 = getelementptr inbounds i8, ptr %7, i64 16, !dbg !3402
  %8 = load ptr, ptr %arrayidx.us.us.us.2, align 8, !dbg !3402
  %arrayidx13.us.us.us.2 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv53.2, !dbg !3402
  %9 = load ptr, ptr %arrayidx13.us.us.us.2, align 8, !dbg !3402
  %arrayidx15.us.us.us.2 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv.2, !dbg !3402
  store i32 %call11.us.us.us.2, ptr %arrayidx15.us.us.us.2, align 4, !dbg !3403
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1, !dbg !3404
    #dbg_value(i64 %indvars.iv.next.2, !3371, !DIExpression(), !3376)
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count, !dbg !3405
  br i1 %exitcond.2.not, label %for.cond8.for.inc16_crit_edge.us.us.us.2, label %for.body10.us.us.us.2, !dbg !3398, !llvm.loop !3406

for.cond8.for.inc16_crit_edge.us.us.us.2:         ; preds = %for.body10.us.us.us.2
  %indvars.iv.next54.2 = add nuw nsw i64 %indvars.iv53.2, 1, !dbg !3408
    #dbg_value(i64 %indvars.iv.next54.2, !3372, !DIExpression(), !3376)
  %exitcond57.2.not = icmp eq i64 %indvars.iv.next54.2, %wide.trip.count56, !dbg !3392
  br i1 %exitcond57.2.not, label %for.end21, label %for.cond8.preheader.us.us.us.2, !dbg !3397, !llvm.loop !3409

for.end21:                                        ; preds = %for.cond8.for.inc16_crit_edge.us.us.us.2, %entry
  %call22 = call i32 @u_1(ptr noundef nonnull @.str.134, ptr noundef %call) #17, !dbg !3411
    #dbg_value(i32 %call22, !3373, !DIExpression(), !3376)
  %10 = load ptr, ptr %filter_hint, align 8, !dbg !3412
  call void @free_mem3Dint(ptr noundef %10) #17, !dbg !3413
  call void @free(ptr noundef %call) #17, !dbg !3414
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter_hint) #17, !dbg !3415
  ret void, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_frame_packing_arrangement_info(ptr noundef %payload, i32 noundef %size, ptr nocapture readnone %p_Vid) local_unnamed_addr #0 !dbg !3416 {
entry:
    #dbg_value(ptr %payload, !3418, !DIExpression(), !3444)
    #dbg_value(i32 %size, !3419, !DIExpression(), !3444)
    #dbg_value(ptr poison, !3420, !DIExpression(), !3444)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16, !dbg !3445
    #dbg_value(ptr %call, !3443, !DIExpression(), !3444)
  %bitstream_length = getelementptr inbounds i8, ptr %call, i64 12, !dbg !3446
  store i32 %size, ptr %bitstream_length, align 4, !dbg !3447
  %streamBuffer = getelementptr inbounds i8, ptr %call, i64 16, !dbg !3448
  store ptr %payload, ptr %streamBuffer, align 8, !dbg !3449
  %frame_bitoffset = getelementptr inbounds i8, ptr %call, i64 8, !dbg !3450
  store i32 0, ptr %frame_bitoffset, align 8, !dbg !3451
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !3452
  %UsedBits = getelementptr inbounds i8, ptr %0, i64 24, !dbg !3453
  store i32 0, ptr %UsedBits, align 8, !dbg !3454
  %call1 = tail call i32 @ue_v(ptr noundef nonnull @.str.100, ptr noundef %call) #17, !dbg !3455
    #dbg_value(i32 %call1, !3421, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3444)
  %call2 = tail call i32 @u_1(ptr noundef nonnull @.str.101, ptr noundef %call) #17, !dbg !3456
    #dbg_value(i32 %call2, !3421, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3444)
  %cmp = icmp eq i32 %call2, 0, !dbg !3457
  br i1 %cmp, label %if.then, label %if.end33, !dbg !3459

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @u_v(i32 noundef 7, ptr noundef nonnull @.str.102, ptr noundef nonnull %call) #17, !dbg !3460
    #dbg_value(i32 %call4, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !3444)
  %call5 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef nonnull %call) #17, !dbg !3462
    #dbg_value(i32 %call5, !3421, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !3444)
  %call6 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.104, ptr noundef nonnull %call) #17, !dbg !3463
    #dbg_value(i32 %call6, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 8), !3444)
  %call8 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef nonnull %call) #17, !dbg !3464
    #dbg_value(i32 %call8, !3421, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !3444)
  %call9 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef nonnull %call) #17, !dbg !3465
    #dbg_value(i32 %call9, !3421, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3444)
  %call10 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef nonnull %call) #17, !dbg !3466
    #dbg_value(i32 %call10, !3421, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !3444)
  %call11 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef nonnull %call) #17, !dbg !3467
    #dbg_value(i32 %call11, !3421, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !3444)
  %call12 = tail call i32 @u_1(ptr noundef nonnull @.str.109, ptr noundef nonnull %call) #17, !dbg !3468
    #dbg_value(i32 %call12, !3421, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !3444)
  %call13 = tail call i32 @u_1(ptr noundef nonnull @.str.110, ptr noundef nonnull %call) #17, !dbg !3469
    #dbg_value(i32 %call13, !3421, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !3444)
  %cmp15 = icmp eq i32 %call5, 0, !dbg !3470
  %conv18 = and i32 %call4, 255
  %cmp19 = icmp ne i32 %conv18, 5
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false, !dbg !3472
  br i1 %or.cond, label %if.then21, label %if.end, !dbg !3472

if.then21:                                        ; preds = %if.then
  %call22 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull %call) #17, !dbg !3473
    #dbg_value(i32 %call22, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 8), !3444)
  %call24 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef nonnull %call) #17, !dbg !3475
    #dbg_value(i32 %call24, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 360, 8), !3444)
  %call26 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.113, ptr noundef nonnull %call) #17, !dbg !3476
    #dbg_value(i32 %call26, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 368, 8), !3444)
  %call28 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef nonnull %call) #17, !dbg !3477
    #dbg_value(i32 %call28, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 376, 8), !3444)
  br label %if.end, !dbg !3478

if.end:                                           ; preds = %if.then21, %if.then
  %call30 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef nonnull %call) #17, !dbg !3479
    #dbg_value(i32 %call30, !3421, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 8), !3444)
  %call32 = tail call i32 @ue_v(ptr noundef nonnull @.str.116, ptr noundef nonnull %call) #17, !dbg !3480
    #dbg_value(i32 %call32, !3421, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !3444)
  br label %if.end33, !dbg !3481

if.end33:                                         ; preds = %if.end, %entry
  %call34 = tail call i32 @u_1(ptr noundef nonnull @.str.117, ptr noundef nonnull %call) #17, !dbg !3482
    #dbg_value(i32 %call34, !3421, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !3444)
  tail call void @free(ptr noundef nonnull %call) #17, !dbg !3483
  ret void, !dbg !3484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_reserved_info(ptr nocapture noundef readnone %payload, i32 noundef %size, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 !dbg !3485 {
entry:
    #dbg_value(ptr %payload, !3487, !DIExpression(), !3492)
    #dbg_value(i32 %size, !3488, !DIExpression(), !3492)
    #dbg_value(ptr %p_Vid, !3489, !DIExpression(), !3492)
    #dbg_value(i32 0, !3490, !DIExpression(), !3492)
    #dbg_value(i32 poison, !3490, !DIExpression(), !3492)
    #dbg_value(i8 poison, !3491, !DIExpression(), !3492)
  ret void, !dbg !3493
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3494 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare !dbg !3500 i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !3505 i32 @get_mem3D(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !3509 i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3510 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !3517 void @exit(i32 noundef) local_unnamed_addr #7

declare !dbg !3520 void @free_mem3D(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3523 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare !dbg !3526 i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !3529 i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !3530 void @dec_ref_pic_marking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !3534 i32 @CeilLog2(i32 noundef) local_unnamed_addr #5

declare !dbg !3537 void @activate_sps(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !3541 void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !3544 i32 @i_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3545 double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @tone_map(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %lut, i32 noundef %size_x, i32 noundef %size_y) local_unnamed_addr #11 !dbg !3549 {
entry:
    #dbg_value(ptr %imgX, !3553, !DIExpression(), !3559)
    #dbg_value(ptr %lut, !3554, !DIExpression(), !3559)
    #dbg_value(i32 %size_x, !3555, !DIExpression(), !3559)
    #dbg_value(i32 %size_y, !3556, !DIExpression(), !3559)
    #dbg_value(i32 0, !3557, !DIExpression(), !3559)
  %cmp24 = icmp sgt i32 %size_y, 0, !dbg !3560
  %cmp222 = icmp sgt i32 %size_x, 0
  %or.cond = and i1 %cmp24, %cmp222, !dbg !3563
  br i1 %or.cond, label %for.cond1.preheader.us.preheader, label %for.end14, !dbg !3563

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count31 = zext nneg i32 %size_y to i64, !dbg !3560
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %0 = icmp ult i32 %size_x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us, !dbg !3563

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc12_crit_edge.us
  %indvars.iv28 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next29, %for.cond1.for.inc12_crit_edge.us ]
    #dbg_value(i64 %indvars.iv28, !3557, !DIExpression(), !3559)
    #dbg_value(i32 0, !3558, !DIExpression(), !3559)
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv28
  br i1 %0, label %for.cond1.for.inc12_crit_edge.us.unr-lcssa, label %for.body3.us, !dbg !3564

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
    #dbg_value(i64 %indvars.iv, !3558, !DIExpression(), !3559)
  %1 = load ptr, ptr %arrayidx.us, align 8, !dbg !3567
  %arrayidx5.us = getelementptr inbounds i16, ptr %1, i64 %indvars.iv, !dbg !3567
  %2 = load i16, ptr %arrayidx5.us, align 2, !dbg !3567
  %idxprom6.us = zext i16 %2 to i64, !dbg !3570
  %arrayidx7.us = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us, !dbg !3570
  %3 = load i16, ptr %arrayidx7.us, align 2, !dbg !3570
  store i16 %3, ptr %arrayidx5.us, align 2, !dbg !3571
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !3572
    #dbg_value(i64 %indvars.iv.next, !3558, !DIExpression(), !3559)
  %4 = load ptr, ptr %arrayidx.us, align 8, !dbg !3567
  %arrayidx5.us.1 = getelementptr inbounds i16, ptr %4, i64 %indvars.iv.next, !dbg !3567
  %5 = load i16, ptr %arrayidx5.us.1, align 2, !dbg !3567
  %idxprom6.us.1 = zext i16 %5 to i64, !dbg !3570
  %arrayidx7.us.1 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.1, !dbg !3570
  %6 = load i16, ptr %arrayidx7.us.1, align 2, !dbg !3570
  store i16 %6, ptr %arrayidx5.us.1, align 2, !dbg !3571
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2, !dbg !3572
    #dbg_value(i64 %indvars.iv.next.1, !3558, !DIExpression(), !3559)
  %7 = load ptr, ptr %arrayidx.us, align 8, !dbg !3567
  %arrayidx5.us.2 = getelementptr inbounds i16, ptr %7, i64 %indvars.iv.next.1, !dbg !3567
  %8 = load i16, ptr %arrayidx5.us.2, align 2, !dbg !3567
  %idxprom6.us.2 = zext i16 %8 to i64, !dbg !3570
  %arrayidx7.us.2 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.2, !dbg !3570
  %9 = load i16, ptr %arrayidx7.us.2, align 2, !dbg !3570
  store i16 %9, ptr %arrayidx5.us.2, align 2, !dbg !3571
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3, !dbg !3572
    #dbg_value(i64 %indvars.iv.next.2, !3558, !DIExpression(), !3559)
  %10 = load ptr, ptr %arrayidx.us, align 8, !dbg !3567
  %arrayidx5.us.3 = getelementptr inbounds i16, ptr %10, i64 %indvars.iv.next.2, !dbg !3567
  %11 = load i16, ptr %arrayidx5.us.3, align 2, !dbg !3567
  %idxprom6.us.3 = zext i16 %11 to i64, !dbg !3570
  %arrayidx7.us.3 = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.3, !dbg !3570
  %12 = load i16, ptr %arrayidx7.us.3, align 2, !dbg !3570
  store i16 %12, ptr %arrayidx5.us.3, align 2, !dbg !3571
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !3572
    #dbg_value(i64 %indvars.iv.next.3, !3558, !DIExpression(), !3559)
  %niter.next.3 = add i64 %niter, 4, !dbg !3564
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !3564
  br i1 %niter.ncmp.3, label %for.cond1.for.inc12_crit_edge.us.unr-lcssa, label %for.body3.us, !dbg !3564, !llvm.loop !3573

for.cond1.for.inc12_crit_edge.us.unr-lcssa:       ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next.3, %for.body3.us ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc12_crit_edge.us, label %for.body3.us.epil, !dbg !3564

for.body3.us.epil:                                ; preds = %for.cond1.for.inc12_crit_edge.us.unr-lcssa, %for.body3.us.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body3.us.epil ], [ %indvars.iv.unr, %for.cond1.for.inc12_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.epil ], [ 0, %for.cond1.for.inc12_crit_edge.us.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.epil, !3558, !DIExpression(), !3559)
  %13 = load ptr, ptr %arrayidx.us, align 8, !dbg !3567
  %arrayidx5.us.epil = getelementptr inbounds i16, ptr %13, i64 %indvars.iv.epil, !dbg !3567
  %14 = load i16, ptr %arrayidx5.us.epil, align 2, !dbg !3567
  %idxprom6.us.epil = zext i16 %14 to i64, !dbg !3570
  %arrayidx7.us.epil = getelementptr inbounds i16, ptr %lut, i64 %idxprom6.us.epil, !dbg !3570
  %15 = load i16, ptr %arrayidx7.us.epil, align 2, !dbg !3570
  store i16 %15, ptr %arrayidx5.us.epil, align 2, !dbg !3571
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !3572
    #dbg_value(i64 %indvars.iv.next.epil, !3558, !DIExpression(), !3559)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !3564
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !3564
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc12_crit_edge.us, label %for.body3.us.epil, !dbg !3564, !llvm.loop !3575

for.cond1.for.inc12_crit_edge.us:                 ; preds = %for.body3.us.epil, %for.cond1.for.inc12_crit_edge.us.unr-lcssa
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !3576
    #dbg_value(i64 %indvars.iv.next29, !3557, !DIExpression(), !3559)
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31, !dbg !3560
  br i1 %exitcond32.not, label %for.end14, label %for.cond1.preheader.us, !dbg !3563, !llvm.loop !3577

for.end14:                                        ; preds = %for.cond1.for.inc12_crit_edge.us, %entry
  ret void, !dbg !3579
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tone_mapping_sei(ptr nocapture noundef writeonly %seiToneMapping) local_unnamed_addr #12 !dbg !3580 {
entry:
    #dbg_value(ptr %seiToneMapping, !3586, !DIExpression(), !3587)
  store i32 0, ptr %seiToneMapping, align 8, !dbg !3588
  %count = getelementptr inbounds i8, ptr %seiToneMapping, i64 16, !dbg !3589
  store i32 0, ptr %count, align 8, !dbg !3590
  ret void, !dbg !3591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tone_mapping_sei(ptr nocapture noundef %seiToneMapping) local_unnamed_addr #13 !dbg !3592 {
entry:
    #dbg_value(ptr %seiToneMapping, !3594, !DIExpression(), !3595)
  %tone_map_repetition_period = getelementptr inbounds i8, ptr %seiToneMapping, i64 4, !dbg !3596
  %0 = load i32, ptr %tone_map_repetition_period, align 4, !dbg !3596
  switch i32 %0, label %if.then3 [
    i32 0, label %if.then
    i32 1, label %if.end12
  ], !dbg !3598

if.then:                                          ; preds = %entry
  store i32 0, ptr %seiToneMapping, align 8, !dbg !3599
  %count = getelementptr inbounds i8, ptr %seiToneMapping, i64 16, !dbg !3601
  br label %if.end12.sink.split, !dbg !3602

if.then3:                                         ; preds = %entry
  %count4 = getelementptr inbounds i8, ptr %seiToneMapping, i64 16, !dbg !3603
  %1 = load i32, ptr %count4, align 8, !dbg !3606
  %inc = add i32 %1, 1, !dbg !3606
  store i32 %inc, ptr %count4, align 8, !dbg !3606
  %cmp7.not = icmp ult i32 %inc, %0, !dbg !3607
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !3609

if.then8:                                         ; preds = %if.then3
  store i32 0, ptr %seiToneMapping, align 8, !dbg !3610
  br label %if.end12.sink.split, !dbg !3612

if.end12.sink.split:                              ; preds = %if.then, %if.then8
  %count4.sink = phi ptr [ %count4, %if.then8 ], [ %count, %if.then ]
  store i32 0, ptr %count4.sink, align 8, !dbg !3613
  br label %if.end12, !dbg !3614

if.end12:                                         ; preds = %if.end12.sink.split, %entry, %if.then3
  ret void, !dbg !3614
}

declare !dbg !3615 i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !3618 void @free_mem3Dint(ptr noundef) local_unnamed_addr #5

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

!llvm.dbg.cu = !{!386}
!llvm.module.flags = !{!512, !513, !514, !515, !516, !517, !518}
!llvm.ident = !{!519}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/sei.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "3ebf25fb8965de01ed5b4a7218682632")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 24)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !3, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 21)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 30)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 23)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 16)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 466, type: !16, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !28, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 19)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 28)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !33, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !9, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !28, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !3, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !16, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 574, type: !47, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !33, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !52, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !9, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 619, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 620, type: !9, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 14)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 662, type: !9, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 853, type: !3, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 31)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 25)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 861, type: !91, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 862, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 32)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 863, type: !28, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 864, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 33)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 874, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 37)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 912, type: !16, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 913, type: !3, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 914, type: !3, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 915, type: !28, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 967, type: !33, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 968, type: !16, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 972, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 29)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 975, type: !103, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1092, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 41)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1159, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 17)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1197, type: !91, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1198, type: !110, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1279, type: !132, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1289, type: !75, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1296, type: !16, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1350, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 44)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1357, type: !82, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1358, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 46)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1365, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 38)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1366, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 40)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1367, type: !103, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1368, type: !110, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1369, type: !139, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1370, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 36)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1380, type: !3, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1381, type: !33, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1388, type: !132, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1396, type: !187, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1397, type: !132, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1404, type: !187, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1405, type: !187, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1412, type: !3, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1419, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 50)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1456, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 47)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1462, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 48)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1463, type: !139, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1464, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 53)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1505, type: !33, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1511, type: !110, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1518, type: !115, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1519, type: !187, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1526, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 35)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1527, type: !187, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1603, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 26)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1622, type: !91, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1623, type: !171, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1687, type: !225, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1727, type: !33, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1728, type: !3, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1747, type: !38, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1769, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 61)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1773, type: !9, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1779, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 13)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1780, type: !9, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1781, type: !47, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1782, type: !96, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1783, type: !16, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1784, type: !3, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1785, type: !269, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1797, type: !47, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1798, type: !47, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1799, type: !144, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1808, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 18)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1815, type: !292, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1823, type: !38, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1847, type: !144, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1892, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 34)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1893, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 43)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1900, type: !187, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1901, type: !52, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1902, type: !110, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1903, type: !9, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1904, type: !96, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1905, type: !3, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1906, type: !303, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1907, type: !103, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1908, type: !103, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1922, type: !52, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1923, type: !52, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1924, type: !52, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1925, type: !52, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1933, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 45)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1934, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 49)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1940, type: !166, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1999, type: !144, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2000, type: !245, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2013, type: !103, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2014, type: !245, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2015, type: !47, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2030, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 15)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2038, type: !3, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2039, type: !47, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2048, type: !132, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2056, type: !38, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2067, type: !33, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2068, type: !23, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2208, type: !16, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2209, type: !16, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2210, type: !3, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2217, type: !144, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2219, type: !91, isLocal: true, isDefinition: true)
!386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !387, retainedTypes: !502, globals: !511, splitDebugInlining: false, nameTableKind: None)
!387 = !{!388, !397, !403, !412, !419, !427, !446, !452}
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !389, line: 22, baseType: !390, size: 32, elements: !391)
!389 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!390 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!391 = !{!392, !393, !394, !395, !396}
!392 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!393 = !DIEnumerator(name: "YUV400", value: 0)
!394 = !DIEnumerator(name: "YUV420", value: 1)
!395 = !DIEnumerator(name: "YUV422", value: 2)
!396 = !DIEnumerator(name: "YUV444", value: 3)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !389, line: 15, baseType: !390, size: 32, elements: !398)
!398 = !{!399, !400, !401, !402}
!399 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!400 = !DIEnumerator(name: "CM_YUV", value: 0)
!401 = !DIEnumerator(name: "CM_RGB", value: 1)
!402 = !DIEnumerator(name: "CM_XYZ", value: 2)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !404, line: 25, baseType: !390, size: 32, elements: !405)
!404 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!405 = !{!406, !407, !408, !409, !410, !411}
!406 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!407 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!408 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!409 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!410 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!411 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 135, baseType: !414, size: 32, elements: !415)
!413 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!414 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!415 = !{!416, !417, !418}
!416 = !DIEnumerator(name: "FRAME", value: 0)
!417 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!418 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 22, baseType: !414, size: 32, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DIEnumerator(name: "PLANE_Y", value: 0)
!422 = !DIEnumerator(name: "PLANE_U", value: 1)
!423 = !DIEnumerator(name: "PLANE_V", value: 2)
!424 = !DIEnumerator(name: "PLANE_G", value: 0)
!425 = !DIEnumerator(name: "PLANE_B", value: 1)
!426 = !DIEnumerator(name: "PLANE_R", value: 2)
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !428, line: 24, baseType: !414, size: 32, elements: !429)
!428 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!430 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!431 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!432 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!433 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!434 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!435 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!436 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!437 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!438 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!439 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!440 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!441 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!442 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!443 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!444 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!445 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !428, line: 46, baseType: !414, size: 32, elements: !447)
!447 = !{!448, !449, !450, !451}
!448 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!449 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!450 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!451 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !453, line: 14, baseType: !414, size: 32, elements: !454)
!453 = !DIFile(filename: "ldecod_src/inc/sei.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b096a43ea4af7b5f3dc386e3863042de")
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!455 = !DIEnumerator(name: "SEI_BUFFERING_PERIOD", value: 0)
!456 = !DIEnumerator(name: "SEI_PIC_TIMING", value: 1)
!457 = !DIEnumerator(name: "SEI_PAN_SCAN_RECT", value: 2)
!458 = !DIEnumerator(name: "SEI_FILLER_PAYLOAD", value: 3)
!459 = !DIEnumerator(name: "SEI_USER_DATA_REGISTERED_ITU_T_T35", value: 4)
!460 = !DIEnumerator(name: "SEI_USER_DATA_UNREGISTERED", value: 5)
!461 = !DIEnumerator(name: "SEI_RECOVERY_POINT", value: 6)
!462 = !DIEnumerator(name: "SEI_DEC_REF_PIC_MARKING_REPETITION", value: 7)
!463 = !DIEnumerator(name: "SEI_SPARE_PIC", value: 8)
!464 = !DIEnumerator(name: "SEI_SCENE_INFO", value: 9)
!465 = !DIEnumerator(name: "SEI_SUB_SEQ_INFO", value: 10)
!466 = !DIEnumerator(name: "SEI_SUB_SEQ_LAYER_CHARACTERISTICS", value: 11)
!467 = !DIEnumerator(name: "SEI_SUB_SEQ_CHARACTERISTICS", value: 12)
!468 = !DIEnumerator(name: "SEI_FULL_FRAME_FREEZE", value: 13)
!469 = !DIEnumerator(name: "SEI_FULL_FRAME_FREEZE_RELEASE", value: 14)
!470 = !DIEnumerator(name: "SEI_FULL_FRAME_SNAPSHOT", value: 15)
!471 = !DIEnumerator(name: "SEI_PROGRESSIVE_REFINEMENT_SEGMENT_START", value: 16)
!472 = !DIEnumerator(name: "SEI_PROGRESSIVE_REFINEMENT_SEGMENT_END", value: 17)
!473 = !DIEnumerator(name: "SEI_MOTION_CONSTRAINED_SLICE_GROUP_SET", value: 18)
!474 = !DIEnumerator(name: "SEI_FILM_GRAIN_CHARACTERISTICS", value: 19)
!475 = !DIEnumerator(name: "SEI_DEBLOCKING_FILTER_DISPLAY_PREFERENCE", value: 20)
!476 = !DIEnumerator(name: "SEI_STEREO_VIDEO_INFO", value: 21)
!477 = !DIEnumerator(name: "SEI_POST_FILTER_HINTS", value: 22)
!478 = !DIEnumerator(name: "SEI_TONE_MAPPING", value: 23)
!479 = !DIEnumerator(name: "SEI_SCALABILITY_INFO", value: 24)
!480 = !DIEnumerator(name: "SEI_SUB_PIC_SCALABLE_LAYER", value: 25)
!481 = !DIEnumerator(name: "SEI_NON_REQUIRED_LAYER_REP", value: 26)
!482 = !DIEnumerator(name: "SEI_PRIORITY_LAYER_INFO", value: 27)
!483 = !DIEnumerator(name: "SEI_LAYERS_NOT_PRESENT", value: 28)
!484 = !DIEnumerator(name: "SEI_LAYER_DEPENDENCY_CHANGE", value: 29)
!485 = !DIEnumerator(name: "SEI_SCALABLE_NESTING", value: 30)
!486 = !DIEnumerator(name: "SEI_BASE_LAYER_TEMPORAL_HRD", value: 31)
!487 = !DIEnumerator(name: "SEI_QUALITY_LAYER_INTEGRITY_CHECK", value: 32)
!488 = !DIEnumerator(name: "SEI_REDUNDANT_PIC_PROPERTY", value: 33)
!489 = !DIEnumerator(name: "SEI_TL0_DEP_REP_INDEX", value: 34)
!490 = !DIEnumerator(name: "SEI_TL_SWITCHING_POINT", value: 35)
!491 = !DIEnumerator(name: "SEI_PARALLEL_DECODING_INFO", value: 36)
!492 = !DIEnumerator(name: "SEI_MVC_SCALABLE_NESTING", value: 37)
!493 = !DIEnumerator(name: "SEI_VIEW_SCALABILITY_INFO", value: 38)
!494 = !DIEnumerator(name: "SEI_MULTIVIEW_SCENE_INFO", value: 39)
!495 = !DIEnumerator(name: "SEI_MULTIVIEW_ACQUISITION_INFO", value: 40)
!496 = !DIEnumerator(name: "SEI_NON_REQUIRED_VIEW_COMPONENT", value: 41)
!497 = !DIEnumerator(name: "SEI_VIEW_DEPENDENCY_CHANGE", value: 42)
!498 = !DIEnumerator(name: "SEI_OPERATION_POINTS_NOT_PRESENT", value: 43)
!499 = !DIEnumerator(name: "SEI_BASE_VIEW_TEMPORAL_HRD", value: 44)
!500 = !DIEnumerator(name: "SEI_FRAME_PACKING_ARRANGEMENT", value: 45)
!501 = !DIEnumerator(name: "SEI_MAX_ELEMENTS", value: 46)
!502 = !{!503, !506, !390, !414, !505, !507, !510}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !504, line: 21, baseType: !505)
!504 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!505 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !504, line: 41, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !504, line: 23, baseType: !509)
!509 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!510 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!511 = !{!0, !7, !12, !14, !19, !21, !26, !31, !36, !41, !43, !45, !50, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !78, !80, !85, !87, !89, !94, !99, !101, !106, !108, !113, !118, !120, !122, !124, !126, !128, !130, !135, !137, !142, !147, !149, !151, !153, !155, !157, !162, !164, !169, !174, !179, !181, !183, !185, !190, !192, !194, !196, !198, !200, !202, !204, !206, !211, !216, !221, !223, !228, !230, !232, !234, !236, !241, !243, !248, !250, !252, !254, !256, !258, !260, !265, !267, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !295, !297, !299, !301, !306, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !342, !347, !349, !351, !353, !355, !357, !359, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384}
!512 = !{i32 7, !"Dwarf Version", i32 5}
!513 = !{i32 2, !"Debug Info Version", i32 3}
!514 = !{i32 1, !"wchar_size", i32 4}
!515 = !{i32 8, !"PIC Level", i32 2}
!516 = !{i32 7, !"PIE Level", i32 2}
!517 = !{i32 7, !"uwtable", i32 2}
!518 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!519 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!520 = distinct !DISubprogram(name: "InterpretSEIMessage", scope: !2, file: !2, line: 66, type: !521, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1721)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523, !390, !524, !876}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !526, line: 836, baseType: !527)
!526 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !526, line: 566, size: 6855040, elements: !528)
!528 = !{!529, !613, !665, !766, !768, !770, !828, !830, !831, !832, !833, !834, !837, !857, !869, !870, !871, !872, !873, !874, !1438, !1439, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1449, !1452, !1453, !1455, !1456, !1457, !1458, !1459, !1461, !1462, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1586, !1587, !1589, !1590, !1593, !1596, !1597, !1598, !1600, !1603, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1615, !1618, !1619, !1620, !1621, !1637, !1642, !1646, !1650, !1654, !1655, !1659, !1660, !1664, !1665, !1669, !1690, !1691, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !527, file: !526, line: 568, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !526, line: 850, size: 32128, elements: !532)
!532 = !{!533, !537, !538, !539, !540, !541, !542, !543, !544, !545, !574, !575, !576, !577, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !531, file: !526, line: 852, baseType: !534, size: 2040)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 255)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !531, file: !526, line: 853, baseType: !534, size: 2040, offset: 2040)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !531, file: !526, line: 854, baseType: !534, size: 2040, offset: 4080)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !531, file: !526, line: 856, baseType: !390, size: 32, offset: 6144)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !531, file: !526, line: 857, baseType: !390, size: 32, offset: 6176)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !531, file: !526, line: 858, baseType: !390, size: 32, offset: 6208)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !531, file: !526, line: 859, baseType: !390, size: 32, offset: 6240)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !531, file: !526, line: 860, baseType: !390, size: 32, offset: 6272)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !531, file: !526, line: 861, baseType: !390, size: 32, offset: 6304)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !531, file: !526, line: 864, baseType: !546, size: 1088, offset: 6336)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !389, line: 52, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !389, line: 30, size: 1088, elements: !548)
!548 = !{!549, !551, !553, !554, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !547, file: !389, line: 32, baseType: !550, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !389, line: 28, baseType: !388)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !547, file: !389, line: 33, baseType: !552, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !389, line: 20, baseType: !397)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !547, file: !389, line: 34, baseType: !510, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !547, file: !389, line: 35, baseType: !555, size: 96, offset: 128)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 96, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 3)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !547, file: !389, line: 36, baseType: !555, size: 96, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !547, file: !389, line: 37, baseType: !390, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !547, file: !389, line: 38, baseType: !390, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !547, file: !389, line: 39, baseType: !390, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !547, file: !389, line: 40, baseType: !390, size: 32, offset: 416)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !547, file: !389, line: 41, baseType: !390, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !547, file: !389, line: 42, baseType: !390, size: 32, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !547, file: !389, line: 43, baseType: !390, size: 32, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !547, file: !389, line: 44, baseType: !390, size: 32, offset: 544)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !547, file: !389, line: 45, baseType: !555, size: 96, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !547, file: !389, line: 46, baseType: !390, size: 32, offset: 672)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !547, file: !389, line: 47, baseType: !555, size: 96, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !547, file: !389, line: 48, baseType: !555, size: 96, offset: 800)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !547, file: !389, line: 49, baseType: !555, size: 96, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !547, file: !389, line: 50, baseType: !390, size: 32, offset: 992)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !547, file: !389, line: 51, baseType: !390, size: 32, offset: 1024)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !531, file: !526, line: 865, baseType: !546, size: 1088, offset: 7424)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !531, file: !526, line: 867, baseType: !390, size: 32, offset: 8512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !531, file: !526, line: 868, baseType: !390, size: 32, offset: 8544)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !531, file: !526, line: 869, baseType: !578, size: 7744, offset: 8576)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !404, line: 60, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !404, line: 34, size: 7744, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !579, file: !404, line: 37, baseType: !534, size: 2040)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !579, file: !404, line: 38, baseType: !534, size: 2040, offset: 2040)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !579, file: !404, line: 39, baseType: !534, size: 2040, offset: 4080)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !579, file: !404, line: 40, baseType: !390, size: 32, offset: 6144)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !579, file: !404, line: 41, baseType: !586, size: 32, offset: 6176)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !404, line: 32, baseType: !403)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !579, file: !404, line: 42, baseType: !546, size: 1088, offset: 6208)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !579, file: !404, line: 43, baseType: !390, size: 32, offset: 7296)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !579, file: !404, line: 44, baseType: !390, size: 32, offset: 7328)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !579, file: !404, line: 45, baseType: !390, size: 32, offset: 7360)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !579, file: !404, line: 46, baseType: !390, size: 32, offset: 7392)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !579, file: !404, line: 47, baseType: !390, size: 32, offset: 7424)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !579, file: !404, line: 48, baseType: !390, size: 32, offset: 7456)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !579, file: !404, line: 49, baseType: !390, size: 32, offset: 7488)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !579, file: !404, line: 50, baseType: !390, size: 32, offset: 7520)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !579, file: !404, line: 51, baseType: !390, size: 32, offset: 7552)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !579, file: !404, line: 52, baseType: !390, size: 32, offset: 7584)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !579, file: !404, line: 53, baseType: !390, size: 32, offset: 7616)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !579, file: !404, line: 56, baseType: !600, size: 64, offset: 7680)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !531, file: !526, line: 870, baseType: !578, size: 7744, offset: 16320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !531, file: !526, line: 871, baseType: !578, size: 7744, offset: 24064)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !531, file: !526, line: 873, baseType: !390, size: 32, offset: 31808)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !531, file: !526, line: 884, baseType: !390, size: 32, offset: 31840)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !531, file: !526, line: 885, baseType: !390, size: 32, offset: 31872)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !531, file: !526, line: 886, baseType: !390, size: 32, offset: 31904)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !531, file: !526, line: 890, baseType: !390, size: 32, offset: 31936)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !531, file: !526, line: 893, baseType: !390, size: 32, offset: 31968)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !531, file: !526, line: 894, baseType: !390, size: 32, offset: 32000)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !531, file: !526, line: 895, baseType: !390, size: 32, offset: 32032)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !531, file: !526, line: 897, baseType: !390, size: 32, offset: 32064)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !531, file: !526, line: 899, baseType: !390, size: 32, offset: 32096)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !527, file: !526, line: 569, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !616, line: 138, baseType: !617)
!616 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 94, size: 17728, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !629, !633, !637, !640, !641, !642, !643, !644, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !617, file: !616, line: 96, baseType: !390, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !617, file: !616, line: 97, baseType: !414, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !617, file: !616, line: 98, baseType: !414, size: 32, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !617, file: !616, line: 99, baseType: !390, size: 32, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !617, file: !616, line: 100, baseType: !390, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !617, file: !616, line: 102, baseType: !390, size: 32, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !617, file: !616, line: 103, baseType: !626, size: 384, offset: 192)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 12)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !617, file: !616, line: 104, baseType: !630, size: 3072, offset: 576)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 3072, elements: !631)
!631 = !{!632, !40}
!632 = !DISubrange(count: 6)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !617, file: !616, line: 105, baseType: !634, size: 12288, offset: 3648)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 12288, elements: !635)
!635 = !{!632, !636}
!636 = !DISubrange(count: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !617, file: !616, line: 106, baseType: !638, size: 192, offset: 15936)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !639)
!639 = !{!632}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !617, file: !616, line: 107, baseType: !638, size: 192, offset: 16128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !617, file: !616, line: 110, baseType: !390, size: 32, offset: 16320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !617, file: !616, line: 111, baseType: !414, size: 32, offset: 16352)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !617, file: !616, line: 112, baseType: !414, size: 32, offset: 16384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !617, file: !616, line: 114, baseType: !645, size: 256, offset: 16416)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 256, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 8)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !617, file: !616, line: 116, baseType: !645, size: 256, offset: 16672)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !617, file: !616, line: 117, baseType: !645, size: 256, offset: 16928)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !617, file: !616, line: 119, baseType: !390, size: 32, offset: 17184)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !617, file: !616, line: 120, baseType: !414, size: 32, offset: 17216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !617, file: !616, line: 122, baseType: !414, size: 32, offset: 17248)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !617, file: !616, line: 123, baseType: !523, size: 64, offset: 17280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !617, file: !616, line: 125, baseType: !390, size: 32, offset: 17344)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !617, file: !616, line: 126, baseType: !390, size: 32, offset: 17376)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !617, file: !616, line: 127, baseType: !390, size: 32, offset: 17408)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !617, file: !616, line: 128, baseType: !414, size: 32, offset: 17440)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !617, file: !616, line: 129, baseType: !390, size: 32, offset: 17472)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !617, file: !616, line: 130, baseType: !390, size: 32, offset: 17504)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !617, file: !616, line: 131, baseType: !390, size: 32, offset: 17536)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !617, file: !616, line: 133, baseType: !390, size: 32, offset: 17568)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !617, file: !616, line: 135, baseType: !390, size: 32, offset: 17600)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !617, file: !616, line: 136, baseType: !390, size: 32, offset: 17632)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !617, file: !616, line: 137, baseType: !390, size: 32, offset: 17664)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !527, file: !526, line: 570, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !616, line: 197, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 142, size: 33024, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !764, !765}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !668, file: !616, line: 144, baseType: !390, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !668, file: !616, line: 146, baseType: !414, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !668, file: !616, line: 147, baseType: !390, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !668, file: !616, line: 148, baseType: !390, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !668, file: !616, line: 149, baseType: !390, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !668, file: !616, line: 150, baseType: !390, size: 32, offset: 160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !668, file: !616, line: 152, baseType: !390, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !668, file: !616, line: 154, baseType: !414, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !668, file: !616, line: 155, baseType: !414, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !668, file: !616, line: 156, baseType: !414, size: 32, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !668, file: !616, line: 158, baseType: !390, size: 32, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !668, file: !616, line: 159, baseType: !626, size: 384, offset: 352)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !668, file: !616, line: 160, baseType: !630, size: 3072, offset: 736)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !668, file: !616, line: 161, baseType: !634, size: 12288, offset: 3808)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !668, file: !616, line: 162, baseType: !638, size: 192, offset: 16096)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !668, file: !616, line: 163, baseType: !638, size: 192, offset: 16288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !668, file: !616, line: 165, baseType: !414, size: 32, offset: 16480)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !668, file: !616, line: 166, baseType: !414, size: 32, offset: 16512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !668, file: !616, line: 167, baseType: !414, size: 32, offset: 16544)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !668, file: !616, line: 168, baseType: !414, size: 32, offset: 16576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !668, file: !616, line: 170, baseType: !414, size: 32, offset: 16608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !668, file: !616, line: 172, baseType: !390, size: 32, offset: 16640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !668, file: !616, line: 173, baseType: !390, size: 32, offset: 16672)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !668, file: !616, line: 174, baseType: !390, size: 32, offset: 16704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !668, file: !616, line: 175, baseType: !414, size: 32, offset: 16736)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !668, file: !616, line: 177, baseType: !696, size: 8192, offset: 16768)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 8192, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !668, file: !616, line: 178, baseType: !414, size: 32, offset: 24960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !668, file: !616, line: 179, baseType: !390, size: 32, offset: 24992)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !668, file: !616, line: 180, baseType: !414, size: 32, offset: 25024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !668, file: !616, line: 181, baseType: !414, size: 32, offset: 25056)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !668, file: !616, line: 182, baseType: !390, size: 32, offset: 25088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !668, file: !616, line: 184, baseType: !390, size: 32, offset: 25120)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !668, file: !616, line: 185, baseType: !390, size: 32, offset: 25152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !668, file: !616, line: 186, baseType: !390, size: 32, offset: 25184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !668, file: !616, line: 187, baseType: !414, size: 32, offset: 25216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !668, file: !616, line: 188, baseType: !414, size: 32, offset: 25248)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !668, file: !616, line: 189, baseType: !414, size: 32, offset: 25280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !668, file: !616, line: 190, baseType: !414, size: 32, offset: 25312)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !668, file: !616, line: 191, baseType: !390, size: 32, offset: 25344)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !668, file: !616, line: 192, baseType: !713, size: 7584, offset: 25376)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !616, line: 90, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 53, size: 7584, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !714, file: !616, line: 55, baseType: !390, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !714, file: !616, line: 56, baseType: !414, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !714, file: !616, line: 57, baseType: !509, size: 16, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !714, file: !616, line: 58, baseType: !509, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !714, file: !616, line: 59, baseType: !390, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !714, file: !616, line: 60, baseType: !390, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !714, file: !616, line: 61, baseType: !390, size: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !714, file: !616, line: 62, baseType: !414, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !714, file: !616, line: 63, baseType: !390, size: 32, offset: 224)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !714, file: !616, line: 64, baseType: !390, size: 32, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !714, file: !616, line: 65, baseType: !414, size: 32, offset: 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !714, file: !616, line: 66, baseType: !414, size: 32, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !714, file: !616, line: 67, baseType: !414, size: 32, offset: 352)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !714, file: !616, line: 68, baseType: !390, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !714, file: !616, line: 69, baseType: !414, size: 32, offset: 416)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !714, file: !616, line: 70, baseType: !414, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !714, file: !616, line: 71, baseType: !390, size: 32, offset: 480)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !714, file: !616, line: 72, baseType: !414, size: 32, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !714, file: !616, line: 73, baseType: !414, size: 32, offset: 544)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !714, file: !616, line: 74, baseType: !390, size: 32, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !714, file: !616, line: 75, baseType: !390, size: 32, offset: 608)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !714, file: !616, line: 76, baseType: !738, size: 3296, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !616, line: 50, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 38, size: 3296, elements: !740)
!740 = !{!741, !742, !743, !744, !746, !747, !748, !749, !750, !751}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !739, file: !616, line: 40, baseType: !414, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !739, file: !616, line: 41, baseType: !414, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !739, file: !616, line: 42, baseType: !414, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !739, file: !616, line: 43, baseType: !745, size: 1024, offset: 96)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !739, file: !616, line: 44, baseType: !745, size: 1024, offset: 1120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !739, file: !616, line: 45, baseType: !745, size: 1024, offset: 2144)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !739, file: !616, line: 46, baseType: !414, size: 32, offset: 3168)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !739, file: !616, line: 47, baseType: !414, size: 32, offset: 3200)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !739, file: !616, line: 48, baseType: !414, size: 32, offset: 3232)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !739, file: !616, line: 49, baseType: !414, size: 32, offset: 3264)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !714, file: !616, line: 77, baseType: !390, size: 32, offset: 3936)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !714, file: !616, line: 78, baseType: !738, size: 3296, offset: 3968)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !714, file: !616, line: 80, baseType: !390, size: 32, offset: 7264)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !714, file: !616, line: 81, baseType: !390, size: 32, offset: 7296)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !714, file: !616, line: 82, baseType: !390, size: 32, offset: 7328)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !714, file: !616, line: 83, baseType: !390, size: 32, offset: 7360)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !714, file: !616, line: 84, baseType: !414, size: 32, offset: 7392)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !714, file: !616, line: 85, baseType: !414, size: 32, offset: 7424)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !714, file: !616, line: 86, baseType: !414, size: 32, offset: 7456)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !714, file: !616, line: 87, baseType: !414, size: 32, offset: 7488)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !714, file: !616, line: 88, baseType: !414, size: 32, offset: 7520)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !714, file: !616, line: 89, baseType: !414, size: 32, offset: 7552)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !668, file: !616, line: 193, baseType: !414, size: 32, offset: 32960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !668, file: !616, line: 195, baseType: !390, size: 32, offset: 32992)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !527, file: !526, line: 571, baseType: !767, size: 1056768, offset: 192)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 1056768, elements: !104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !527, file: !526, line: 572, baseType: !769, size: 4538368, offset: 1056960)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 4538368, elements: !697)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !527, file: !526, line: 575, baseType: !771, size: 64, offset: 5595328)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !616, line: 256, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 228, size: 37312, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !795, !796, !797, !798}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !773, file: !616, line: 230, baseType: !667, size: 33024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !773, file: !616, line: 232, baseType: !414, size: 32, offset: 33024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !773, file: !616, line: 233, baseType: !390, size: 32, offset: 33056)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !773, file: !616, line: 234, baseType: !600, size: 64, offset: 33088)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !773, file: !616, line: 235, baseType: !600, size: 64, offset: 33152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !773, file: !616, line: 236, baseType: !781, size: 64, offset: 33216)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !773, file: !616, line: 237, baseType: !600, size: 64, offset: 33280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !773, file: !616, line: 238, baseType: !781, size: 64, offset: 33344)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !773, file: !616, line: 240, baseType: !600, size: 64, offset: 33408)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !773, file: !616, line: 241, baseType: !781, size: 64, offset: 33472)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !773, file: !616, line: 242, baseType: !600, size: 64, offset: 33536)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !773, file: !616, line: 243, baseType: !781, size: 64, offset: 33600)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !773, file: !616, line: 245, baseType: !390, size: 32, offset: 33664)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !773, file: !616, line: 246, baseType: !600, size: 64, offset: 33728)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !773, file: !616, line: 247, baseType: !600, size: 64, offset: 33792)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !773, file: !616, line: 248, baseType: !781, size: 64, offset: 33856)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !773, file: !616, line: 249, baseType: !781, size: 64, offset: 33920)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !773, file: !616, line: 250, baseType: !794, size: 64, offset: 33984)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !773, file: !616, line: 251, baseType: !781, size: 64, offset: 34048)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !773, file: !616, line: 253, baseType: !414, size: 32, offset: 34112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !773, file: !616, line: 254, baseType: !390, size: 32, offset: 34144)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !773, file: !616, line: 255, baseType: !799, size: 3136, offset: 34176)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !616, line: 226, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !616, line: 200, size: 3136, elements: !801)
!801 = !{!802, !803, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !821, !822, !824, !825, !826, !827}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !800, file: !616, line: 202, baseType: !390, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !800, file: !616, line: 203, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !800, file: !616, line: 204, baseType: !600, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !800, file: !616, line: 205, baseType: !781, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !800, file: !616, line: 206, baseType: !804, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !800, file: !616, line: 207, baseType: !600, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !800, file: !616, line: 208, baseType: !600, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !800, file: !616, line: 209, baseType: !804, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !800, file: !616, line: 210, baseType: !804, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !800, file: !616, line: 211, baseType: !804, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !800, file: !616, line: 212, baseType: !804, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !800, file: !616, line: 213, baseType: !804, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !800, file: !616, line: 216, baseType: !805, size: 8, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !800, file: !616, line: 217, baseType: !805, size: 8, offset: 776)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !800, file: !616, line: 218, baseType: !805, size: 8, offset: 784)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !800, file: !616, line: 219, baseType: !820, size: 1024, offset: 800)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !104)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !800, file: !616, line: 220, baseType: !820, size: 1024, offset: 1824)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !800, file: !616, line: 221, baseType: !823, size: 256, offset: 2848)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 256, elements: !104)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !800, file: !616, line: 222, baseType: !805, size: 8, offset: 3104)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !800, file: !616, line: 223, baseType: !805, size: 8, offset: 3112)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !800, file: !616, line: 224, baseType: !805, size: 8, offset: 3120)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !800, file: !616, line: 225, baseType: !805, size: 8, offset: 3128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !527, file: !526, line: 577, baseType: !829, size: 1193984, offset: 5595392)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 1193984, elements: !104)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !527, file: !526, line: 578, baseType: !390, size: 32, offset: 6789376)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !527, file: !526, line: 579, baseType: !390, size: 32, offset: 6789408)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !527, file: !526, line: 580, baseType: !390, size: 32, offset: 6789440)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !527, file: !526, line: 581, baseType: !390, size: 32, offset: 6789472)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !527, file: !526, line: 584, baseType: !835, size: 64, offset: 6789504)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !526, line: 584, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !527, file: !526, line: 586, baseType: !838, size: 64, offset: 6789568)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !526, line: 902, size: 416, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !850, !851, !852, !853, !854, !855, !856}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !839, file: !526, line: 904, baseType: !414, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !839, file: !526, line: 905, baseType: !414, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !839, file: !526, line: 906, baseType: !390, size: 32, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !839, file: !526, line: 907, baseType: !414, size: 32, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !839, file: !526, line: 908, baseType: !390, size: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !839, file: !526, line: 909, baseType: !847, size: 64, offset: 160)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 64, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 2)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !839, file: !526, line: 910, baseType: !503, size: 8, offset: 224)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !839, file: !526, line: 911, baseType: !503, size: 8, offset: 232)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !839, file: !526, line: 912, baseType: !390, size: 32, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !839, file: !526, line: 913, baseType: !390, size: 32, offset: 288)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !839, file: !526, line: 915, baseType: !390, size: 32, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !839, file: !526, line: 916, baseType: !390, size: 32, offset: 352)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !839, file: !526, line: 917, baseType: !390, size: 32, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !527, file: !526, line: 587, baseType: !858, size: 64, offset: 6789632)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !526, line: 839, size: 512, elements: !860)
!860 = !{!861, !862, !865, !866, !867, !868}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !859, file: !526, line: 841, baseType: !390, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !859, file: !526, line: 842, baseType: !863, size: 96, offset: 32)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 96, elements: !556)
!864 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !859, file: !526, line: 843, baseType: !863, size: 96, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !859, file: !526, line: 844, baseType: !863, size: 96, offset: 224)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !859, file: !526, line: 845, baseType: !863, size: 96, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !859, file: !526, line: 846, baseType: !863, size: 96, offset: 416)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !527, file: !526, line: 588, baseType: !390, size: 32, offset: 6789696)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !527, file: !526, line: 591, baseType: !414, size: 32, offset: 6789728)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !527, file: !526, line: 592, baseType: !390, size: 32, offset: 6789760)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !527, file: !526, line: 593, baseType: !390, size: 32, offset: 6789792)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !527, file: !526, line: 594, baseType: !390, size: 32, offset: 6789824)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !527, file: !526, line: 595, baseType: !875, size: 64, offset: 6789888)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !526, line: 542, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !526, line: 341, size: 109184, elements: !879)
!879 = !{!880, !882, !883, !884, !885, !886, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1106, !1108, !1271, !1300, !1325, !1328, !1329, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1363, !1364, !1365, !1366, !1367, !1368, !1371, !1372, !1375, !1376, !1378, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1391, !1392, !1393, !1394, !1395, !1398, !1399, !1400, !1402, !1406, !1410, !1414, !1418, !1419, !1420, !1421, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1435, !1436}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !878, file: !526, line: 343, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !878, file: !526, line: 344, baseType: !530, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !878, file: !526, line: 345, baseType: !614, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !878, file: !526, line: 346, baseType: !666, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !878, file: !526, line: 347, baseType: !390, size: 32, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !878, file: !526, line: 350, baseType: !887, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !889, line: 186, size: 33408, elements: !890)
!889 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!890 = !{!891, !892, !895, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1052, !1053, !1054}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !888, file: !889, line: 188, baseType: !524, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !888, file: !889, line: 189, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !526, line: 900, baseType: !531)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !888, file: !889, line: 190, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !889, line: 182, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !889, line: 152, size: 768, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !1035, !1036, !1037, !1038, !1039}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !899, file: !889, line: 154, baseType: !390, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !899, file: !889, line: 155, baseType: !390, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !899, file: !889, line: 156, baseType: !390, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !899, file: !889, line: 157, baseType: !390, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !899, file: !889, line: 159, baseType: !390, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !899, file: !889, line: 161, baseType: !414, size: 32, offset: 160)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !899, file: !889, line: 162, baseType: !414, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !899, file: !889, line: 164, baseType: !390, size: 32, offset: 224)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !899, file: !889, line: 165, baseType: !390, size: 32, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !899, file: !889, line: 166, baseType: !390, size: 32, offset: 288)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !899, file: !889, line: 167, baseType: !390, size: 32, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !899, file: !889, line: 170, baseType: !390, size: 32, offset: 352)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !899, file: !889, line: 172, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !889, line: 138, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !889, line: 46, size: 3328, elements: !917)
!917 = !{!918, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !955, !957, !958, !975, !977, !981, !983, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !916, file: !889, line: 48, baseType: !919, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !413, line: 140, baseType: !412)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !916, file: !889, line: 50, baseType: !390, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !916, file: !889, line: 51, baseType: !390, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !916, file: !889, line: 52, baseType: !390, size: 32, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !916, file: !889, line: 53, baseType: !390, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !916, file: !889, line: 54, baseType: !414, size: 32, offset: 160)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !916, file: !889, line: 55, baseType: !414, size: 32, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !916, file: !889, line: 57, baseType: !390, size: 32, offset: 224)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !916, file: !889, line: 58, baseType: !390, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !916, file: !889, line: 59, baseType: !390, size: 32, offset: 288)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !916, file: !889, line: 61, baseType: !503, size: 8, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !916, file: !889, line: 62, baseType: !390, size: 32, offset: 352)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !916, file: !889, line: 63, baseType: !390, size: 32, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !916, file: !889, line: 64, baseType: !390, size: 32, offset: 416)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !916, file: !889, line: 65, baseType: !390, size: 32, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !916, file: !889, line: 67, baseType: !935, size: 16, offset: 480)
!935 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !916, file: !889, line: 69, baseType: !390, size: 32, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !916, file: !889, line: 69, baseType: !390, size: 32, offset: 544)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !916, file: !889, line: 69, baseType: !390, size: 32, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !916, file: !889, line: 69, baseType: !390, size: 32, offset: 608)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !916, file: !889, line: 70, baseType: !390, size: 32, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !916, file: !889, line: 70, baseType: !390, size: 32, offset: 672)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !916, file: !889, line: 70, baseType: !390, size: 32, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !916, file: !889, line: 70, baseType: !390, size: 32, offset: 736)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !916, file: !889, line: 71, baseType: !390, size: 32, offset: 768)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !916, file: !889, line: 72, baseType: !390, size: 32, offset: 800)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !916, file: !889, line: 73, baseType: !414, size: 32, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !916, file: !889, line: 74, baseType: !414, size: 32, offset: 864)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !916, file: !889, line: 75, baseType: !390, size: 32, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !916, file: !889, line: 75, baseType: !390, size: 32, offset: 928)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !916, file: !889, line: 76, baseType: !390, size: 32, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !916, file: !889, line: 76, baseType: !390, size: 32, offset: 992)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !916, file: !889, line: 79, baseType: !953, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !916, file: !889, line: 80, baseType: !956, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !916, file: !889, line: 81, baseType: !956, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !916, file: !889, line: 84, baseType: !959, size: 64, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !889, line: 36, size: 256, elements: !962)
!962 = !{!963, !966, !973}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !961, file: !889, line: 38, baseType: !964, size: 128)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 128, elements: !848)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !961, file: !889, line: 39, baseType: !967, size: 64, offset: 128)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 64, elements: !848)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !526, line: 104, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 100, size: 32, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !969, file: !526, line: 102, baseType: !935, size: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !969, file: !526, line: 103, baseType: !935, size: 16, offset: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !961, file: !889, line: 40, baseType: !974, size: 16, offset: 192)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 16, elements: !848)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !916, file: !889, line: 85, baseType: !976, size: 192, offset: 1280)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 192, elements: !556)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !916, file: !889, line: 87, baseType: !978, size: 64, offset: 1472)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !889, line: 29, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !978, file: !889, line: 31, baseType: !523, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !916, file: !889, line: 88, baseType: !982, size: 192, offset: 1536)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 192, elements: !556)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !916, file: !889, line: 90, baseType: !984, size: 64, offset: 1728)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !916, file: !889, line: 92, baseType: !965, size: 64, offset: 1792)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !916, file: !889, line: 93, baseType: !965, size: 64, offset: 1856)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !916, file: !889, line: 94, baseType: !965, size: 64, offset: 1920)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !916, file: !889, line: 96, baseType: !390, size: 32, offset: 1984)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !916, file: !889, line: 97, baseType: !390, size: 32, offset: 2016)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !916, file: !889, line: 98, baseType: !390, size: 32, offset: 2048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !916, file: !889, line: 99, baseType: !390, size: 32, offset: 2080)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !916, file: !889, line: 100, baseType: !390, size: 32, offset: 2112)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !916, file: !889, line: 102, baseType: !390, size: 32, offset: 2144)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !916, file: !889, line: 103, baseType: !390, size: 32, offset: 2176)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !916, file: !889, line: 104, baseType: !390, size: 32, offset: 2208)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !916, file: !889, line: 105, baseType: !390, size: 32, offset: 2240)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !916, file: !889, line: 106, baseType: !390, size: 32, offset: 2272)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !916, file: !889, line: 107, baseType: !390, size: 32, offset: 2304)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !916, file: !889, line: 108, baseType: !390, size: 32, offset: 2336)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !916, file: !889, line: 109, baseType: !390, size: 32, offset: 2368)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !916, file: !889, line: 110, baseType: !847, size: 64, offset: 2400)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !916, file: !889, line: 111, baseType: !390, size: 32, offset: 2464)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !916, file: !889, line: 112, baseType: !1005, size: 64, offset: 2496)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !526, line: 194, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !526, line: 186, size: 256, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !1007, file: !526, line: 188, baseType: !390, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !1007, file: !526, line: 189, baseType: !390, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !1007, file: !526, line: 190, baseType: !390, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !1007, file: !526, line: 191, baseType: !390, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !1007, file: !526, line: 192, baseType: !390, size: 32, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !1007, file: !526, line: 193, baseType: !1015, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !916, file: !889, line: 115, baseType: !390, size: 32, offset: 2560)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !916, file: !889, line: 118, baseType: !390, size: 32, offset: 2592)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !916, file: !889, line: 119, baseType: !390, size: 32, offset: 2624)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !916, file: !889, line: 120, baseType: !390, size: 32, offset: 2656)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !916, file: !889, line: 121, baseType: !954, size: 64, offset: 2688)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !916, file: !889, line: 124, baseType: !390, size: 32, offset: 2752)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !916, file: !889, line: 125, baseType: !390, size: 32, offset: 2784)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !916, file: !889, line: 126, baseType: !390, size: 32, offset: 2816)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !916, file: !889, line: 128, baseType: !390, size: 32, offset: 2848)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !916, file: !889, line: 129, baseType: !390, size: 32, offset: 2880)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !916, file: !889, line: 130, baseType: !390, size: 32, offset: 2912)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !916, file: !889, line: 131, baseType: !390, size: 32, offset: 2944)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !916, file: !889, line: 132, baseType: !953, size: 64, offset: 3008)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !916, file: !889, line: 133, baseType: !390, size: 32, offset: 3072)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !916, file: !889, line: 134, baseType: !390, size: 32, offset: 3104)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !916, file: !889, line: 136, baseType: !974, size: 16, offset: 3136)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !916, file: !889, line: 137, baseType: !1033, size: 128, offset: 3200)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 128, elements: !848)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !899, file: !889, line: 173, baseType: !914, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !899, file: !889, line: 174, baseType: !914, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !899, file: !889, line: 177, baseType: !390, size: 32, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !899, file: !889, line: 178, baseType: !847, size: 64, offset: 608)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !899, file: !889, line: 179, baseType: !847, size: 64, offset: 672)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !888, file: !889, line: 191, baseType: !896, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !888, file: !889, line: 192, baseType: !896, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !888, file: !889, line: 193, baseType: !414, size: 32, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !888, file: !889, line: 194, baseType: !414, size: 32, offset: 352)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !888, file: !889, line: 195, baseType: !414, size: 32, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !888, file: !889, line: 196, baseType: !414, size: 32, offset: 416)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !888, file: !889, line: 197, baseType: !390, size: 32, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !888, file: !889, line: 199, baseType: !390, size: 32, offset: 480)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !888, file: !889, line: 200, baseType: !1049, size: 32768, offset: 512)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 32768, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !888, file: !889, line: 205, baseType: !390, size: 32, offset: 33280)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !888, file: !889, line: 206, baseType: !390, size: 32, offset: 33312)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !888, file: !889, line: 208, baseType: !897, size: 64, offset: 33344)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !878, file: !526, line: 353, baseType: !390, size: 32, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !878, file: !526, line: 354, baseType: !390, size: 32, offset: 416)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !878, file: !526, line: 355, baseType: !390, size: 32, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !878, file: !526, line: 356, baseType: !390, size: 32, offset: 480)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !878, file: !526, line: 357, baseType: !390, size: 32, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !878, file: !526, line: 359, baseType: !390, size: 32, offset: 544)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !878, file: !526, line: 360, baseType: !390, size: 32, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !878, file: !526, line: 361, baseType: !390, size: 32, offset: 608)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !878, file: !526, line: 365, baseType: !414, size: 32, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !878, file: !526, line: 366, baseType: !390, size: 32, offset: 672)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !878, file: !526, line: 368, baseType: !847, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !878, file: !526, line: 372, baseType: !390, size: 32, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !878, file: !526, line: 378, baseType: !414, size: 32, offset: 800)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !878, file: !526, line: 379, baseType: !390, size: 32, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !878, file: !526, line: 387, baseType: !414, size: 32, offset: 864)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !878, file: !526, line: 388, baseType: !414, size: 32, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !878, file: !526, line: 389, baseType: !935, size: 16, offset: 928)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !878, file: !526, line: 396, baseType: !390, size: 32, offset: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !878, file: !526, line: 397, baseType: !390, size: 32, offset: 992)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !878, file: !526, line: 400, baseType: !390, size: 32, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !878, file: !526, line: 401, baseType: !390, size: 32, offset: 1056)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !878, file: !526, line: 402, baseType: !847, size: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !878, file: !526, line: 406, baseType: !390, size: 32, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !878, file: !526, line: 407, baseType: !390, size: 32, offset: 1184)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !878, file: !526, line: 408, baseType: !390, size: 32, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !878, file: !526, line: 409, baseType: !390, size: 32, offset: 1248)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !878, file: !526, line: 410, baseType: !390, size: 32, offset: 1280)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !878, file: !526, line: 411, baseType: !390, size: 32, offset: 1312)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !878, file: !526, line: 412, baseType: !390, size: 32, offset: 1344)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !878, file: !526, line: 413, baseType: !414, size: 32, offset: 1376)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !878, file: !526, line: 414, baseType: !414, size: 32, offset: 1408)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !878, file: !526, line: 415, baseType: !503, size: 8, offset: 1440)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !878, file: !526, line: 416, baseType: !919, size: 32, offset: 1472)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !878, file: !526, line: 417, baseType: !390, size: 32, offset: 1504)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !878, file: !526, line: 418, baseType: !390, size: 32, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !878, file: !526, line: 419, baseType: !390, size: 32, offset: 1568)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !878, file: !526, line: 420, baseType: !390, size: 32, offset: 1600)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !878, file: !526, line: 421, baseType: !390, size: 32, offset: 1632)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !878, file: !526, line: 422, baseType: !390, size: 32, offset: 1664)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !878, file: !526, line: 423, baseType: !390, size: 32, offset: 1696)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !878, file: !526, line: 426, baseType: !390, size: 32, offset: 1728)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !878, file: !526, line: 427, baseType: !390, size: 32, offset: 1760)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !878, file: !526, line: 428, baseType: !390, size: 32, offset: 1792)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !878, file: !526, line: 429, baseType: !390, size: 32, offset: 1824)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !878, file: !526, line: 430, baseType: !390, size: 32, offset: 1856)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !878, file: !526, line: 431, baseType: !390, size: 32, offset: 1888)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !878, file: !526, line: 432, baseType: !390, size: 32, offset: 1920)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !878, file: !526, line: 433, baseType: !390, size: 32, offset: 1952)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !878, file: !526, line: 434, baseType: !1005, size: 64, offset: 1984)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !878, file: !526, line: 436, baseType: !1105, size: 48, offset: 2048)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 48, elements: !639)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !878, file: !526, line: 437, baseType: !1107, size: 384, offset: 2112)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 384, elements: !639)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !878, file: !526, line: 440, baseType: !1109, size: 64, offset: 2496)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !526, line: 324, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !526, line: 314, size: 384, elements: !1112)
!1112 = !{!1113, !1124, !1133}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !1111, file: !526, line: 317, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !526, line: 47, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !526, line: 300, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !1116, file: !526, line: 303, baseType: !390, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !1116, file: !526, line: 304, baseType: !390, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !1116, file: !526, line: 306, baseType: !390, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !1116, file: !526, line: 307, baseType: !390, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !1116, file: !526, line: 309, baseType: !523, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1116, file: !526, line: 310, baseType: !390, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !1111, file: !526, line: 318, baseType: !1125, size: 256, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !526, line: 95, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 88, size: 256, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !1126, file: !526, line: 90, baseType: !414, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !1126, file: !526, line: 91, baseType: !414, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !1126, file: !526, line: 92, baseType: !390, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !1126, file: !526, line: 93, baseType: !523, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !1126, file: !526, line: 94, baseType: !600, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !1111, file: !526, line: 320, baseType: !1134, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!390, !1137, !1269, !1267}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !526, line: 273, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !526, line: 197, size: 3840, elements: !1140)
!1140 = !{!1141, !1143, !1144, !1145, !1146, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1175, !1176, !1177, !1178, !1179, !1183, !1184, !1193, !1194, !1195, !1196, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1222, !1223, !1238, !1244, !1268}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !1139, file: !526, line: 199, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !1139, file: !526, line: 200, baseType: !881, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !1139, file: !526, line: 201, baseType: !530, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !1139, file: !526, line: 202, baseType: !390, size: 32, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1139, file: !526, line: 203, baseType: !1147, size: 32, offset: 224)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !526, line: 112, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 108, size: 32, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1148, file: !526, line: 110, baseType: !935, size: 16)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1148, file: !526, line: 111, baseType: !935, size: 16, offset: 16)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !1139, file: !526, line: 204, baseType: !390, size: 32, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !1139, file: !526, line: 205, baseType: !390, size: 32, offset: 288)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !1139, file: !526, line: 206, baseType: !390, size: 32, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !1139, file: !526, line: 207, baseType: !390, size: 32, offset: 352)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !1139, file: !526, line: 208, baseType: !390, size: 32, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !1139, file: !526, line: 209, baseType: !390, size: 32, offset: 416)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !1139, file: !526, line: 210, baseType: !390, size: 32, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !1139, file: !526, line: 212, baseType: !390, size: 32, offset: 480)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !1139, file: !526, line: 213, baseType: !390, size: 32, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1139, file: !526, line: 215, baseType: !390, size: 32, offset: 544)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !1139, file: !526, line: 216, baseType: !847, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !1139, file: !526, line: 217, baseType: !555, size: 96, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !1139, file: !526, line: 218, baseType: !390, size: 32, offset: 736)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !1139, file: !526, line: 219, baseType: !390, size: 32, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !1139, file: !526, line: 220, baseType: !390, size: 32, offset: 800)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !1139, file: !526, line: 221, baseType: !390, size: 32, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !1139, file: !526, line: 223, baseType: !935, size: 16, offset: 864)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1139, file: !526, line: 224, baseType: !805, size: 8, offset: 880)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !1139, file: !526, line: 225, baseType: !805, size: 8, offset: 888)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !1139, file: !526, line: 226, baseType: !935, size: 16, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !1139, file: !526, line: 227, baseType: !935, size: 16, offset: 912)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !1139, file: !526, line: 229, baseType: !1174, size: 64, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !1139, file: !526, line: 230, baseType: !1174, size: 64, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !1139, file: !526, line: 232, baseType: !1174, size: 64, offset: 1088)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !1139, file: !526, line: 233, baseType: !1174, size: 64, offset: 1152)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1139, file: !526, line: 236, baseType: !935, size: 16, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1139, file: !526, line: 237, baseType: !1180, size: 1024, offset: 1232)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 1024, elements: !1181)
!1181 = !{!849, !1182, !1182, !849}
!1182 = !DISubrange(count: 4)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1139, file: !526, line: 239, baseType: !390, size: 32, offset: 2272)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !1139, file: !526, line: 240, baseType: !1185, size: 192, offset: 2304)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 192, elements: !556)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !1187, line: 103, baseType: !1188)
!1187 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1189, line: 27, baseType: !1190)
!1189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1191, line: 44, baseType: !1192)
!1191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1192 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !1139, file: !526, line: 241, baseType: !1185, size: 192, offset: 2496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !1139, file: !526, line: 242, baseType: !1185, size: 192, offset: 2688)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !1139, file: !526, line: 244, baseType: !390, size: 32, offset: 2880)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !1139, file: !526, line: 245, baseType: !1197, size: 32, offset: 2912)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 32, elements: !1198)
!1198 = !{!1182}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !1139, file: !526, line: 246, baseType: !1197, size: 32, offset: 2944)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !1139, file: !526, line: 247, baseType: !805, size: 8, offset: 2976)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !1139, file: !526, line: 248, baseType: !805, size: 8, offset: 2984)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !1139, file: !526, line: 249, baseType: !805, size: 8, offset: 2992)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !1139, file: !526, line: 250, baseType: !935, size: 16, offset: 3008)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !1139, file: !526, line: 251, baseType: !935, size: 16, offset: 3024)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !1139, file: !526, line: 252, baseType: !935, size: 16, offset: 3040)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !1139, file: !526, line: 254, baseType: !390, size: 32, offset: 3072)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !1139, file: !526, line: 256, baseType: !390, size: 32, offset: 3104)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !1139, file: !526, line: 256, baseType: !390, size: 32, offset: 3136)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !1139, file: !526, line: 256, baseType: !390, size: 32, offset: 3168)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !1139, file: !526, line: 256, baseType: !390, size: 32, offset: 3200)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !1139, file: !526, line: 257, baseType: !390, size: 32, offset: 3232)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !1139, file: !526, line: 257, baseType: !390, size: 32, offset: 3264)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !1139, file: !526, line: 257, baseType: !390, size: 32, offset: 3296)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !1139, file: !526, line: 257, baseType: !390, size: 32, offset: 3328)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !1139, file: !526, line: 259, baseType: !390, size: 32, offset: 3360)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !1139, file: !526, line: 260, baseType: !390, size: 32, offset: 3392)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !1139, file: !526, line: 262, baseType: !1218, size: 64, offset: 3456)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1174, !1221, !390, !390}
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !413, line: 32, baseType: !419)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !1139, file: !526, line: 263, baseType: !1218, size: 64, offset: 3520)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !1139, file: !526, line: 265, baseType: !1224, size: 64, offset: 3584)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1174, !1227, !1237, !935, !959, !390, !390, !390, !390, !390}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !526, line: 85, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !526, line: 77, size: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !1229, file: !526, line: 79, baseType: !390, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !1229, file: !526, line: 80, baseType: !390, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1229, file: !526, line: 81, baseType: !935, size: 16, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1229, file: !526, line: 82, baseType: !935, size: 16, offset: 80)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !1229, file: !526, line: 83, baseType: !935, size: 16, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !1229, file: !526, line: 84, baseType: !935, size: 16, offset: 112)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !1139, file: !526, line: 268, baseType: !1239, size: 64, offset: 3648)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!390, !1174, !1242, !390}
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !526, line: 97, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !1139, file: !526, line: 269, baseType: !1245, size: 64, offset: 3712)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!805, !1174, !1248, !1267, !805, !390}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !526, line: 276, size: 384, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1263}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1249, file: !526, line: 278, baseType: !390, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !1249, file: !526, line: 279, baseType: !390, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !1249, file: !526, line: 280, baseType: !390, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1249, file: !526, line: 281, baseType: !390, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !1249, file: !526, line: 282, baseType: !390, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !1249, file: !526, line: 283, baseType: !414, size: 32, offset: 160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1249, file: !526, line: 284, baseType: !390, size: 32, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1249, file: !526, line: 285, baseType: !390, size: 32, offset: 224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1249, file: !526, line: 293, baseType: !1260, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !390, !390, !600, !600}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !1249, file: !526, line: 295, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1137, !1248, !1242}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !1139, file: !526, line: 272, baseType: !503, size: 8, offset: 3776)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !526, line: 296, baseType: !1249)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !878, file: !526, line: 441, baseType: !1272, size: 64, offset: 2560)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !526, line: 153, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 145, size: 2912, elements: !1275)
!1275 = !{!1276, !1286, !1290, !1294, !1297, !1299}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !1274, file: !526, line: 147, baseType: !1277, size: 1056)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 1056, elements: !1284)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !526, line: 122, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 117, size: 32, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1279, file: !526, line: 119, baseType: !508, size: 16)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1279, file: !526, line: 120, baseType: !505, size: 8, offset: 16)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1279, file: !526, line: 121, baseType: !505, size: 8, offset: 24)
!1284 = !{!557, !1285}
!1285 = !DISubrange(count: 11)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !1274, file: !526, line: 148, baseType: !1287, size: 576, offset: 1056)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 576, elements: !1288)
!1288 = !{!849, !1289}
!1289 = !DISubrange(count: 9)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !1274, file: !526, line: 149, baseType: !1291, size: 640, offset: 1632)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 640, elements: !1292)
!1292 = !{!849, !1293}
!1293 = !DISubrange(count: 10)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !1274, file: !526, line: 150, baseType: !1295, size: 384, offset: 2272)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 384, elements: !1296)
!1296 = !{!849, !632}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !1274, file: !526, line: 151, baseType: !1298, size: 128, offset: 2656)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 128, elements: !1198)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !1274, file: !526, line: 152, baseType: !1298, size: 128, offset: 2784)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !878, file: !526, line: 442, baseType: !1301, size: 64, offset: 2624)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !526, line: 175, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 164, size: 52768, elements: !1304)
!1304 = !{!1305, !1307, !1309, !1310, !1313, !1316, !1319, !1320, !1324}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1303, file: !526, line: 166, baseType: !1306, size: 96)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 96, elements: !556)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1303, file: !526, line: 167, baseType: !1308, size: 64, offset: 96)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 64, elements: !848)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1303, file: !526, line: 168, baseType: !1298, size: 128, offset: 160)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1303, file: !526, line: 169, baseType: !1311, size: 384, offset: 288)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 384, elements: !1312)
!1312 = !{!557, !1182}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1303, file: !526, line: 170, baseType: !1314, size: 2816, offset: 672)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 2816, elements: !1315)
!1315 = !{!6, !1182}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1303, file: !526, line: 171, baseType: !1317, size: 21120, offset: 3488)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 21120, elements: !1318)
!1318 = !{!849, !6, !363}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1303, file: !526, line: 172, baseType: !1317, size: 21120, offset: 24608)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1303, file: !526, line: 173, baseType: !1321, size: 3520, offset: 45728)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 3520, elements: !1322)
!1322 = !{!6, !1323}
!1323 = !DISubrange(count: 5)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1303, file: !526, line: 174, baseType: !1321, size: 3520, offset: 49248)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !878, file: !526, line: 444, baseType: !1326, size: 6144, offset: 2688)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 6144, elements: !1327)
!1327 = !{!632, !105}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !878, file: !526, line: 446, baseType: !847, size: 64, offset: 8832)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !878, file: !526, line: 447, baseType: !1330, size: 128, offset: 8896)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 128, elements: !848)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !878, file: !526, line: 448, baseType: !1330, size: 128, offset: 9024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !878, file: !526, line: 449, baseType: !1330, size: 128, offset: 9152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !878, file: !526, line: 452, baseType: !1330, size: 128, offset: 9280)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !878, file: !526, line: 454, baseType: !390, size: 32, offset: 9408)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !878, file: !526, line: 455, baseType: !390, size: 32, offset: 9440)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !878, file: !526, line: 456, baseType: !390, size: 32, offset: 9472)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !878, file: !526, line: 458, baseType: !1338, size: 256, offset: 9504)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !526, line: 337, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !526, line: 327, size: 256, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1339, file: !526, line: 329, baseType: !414, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1339, file: !526, line: 330, baseType: !414, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1339, file: !526, line: 331, baseType: !414, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1339, file: !526, line: 332, baseType: !414, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1339, file: !526, line: 333, baseType: !414, size: 32, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1339, file: !526, line: 334, baseType: !414, size: 32, offset: 160)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1339, file: !526, line: 335, baseType: !414, size: 32, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1339, file: !526, line: 336, baseType: !414, size: 32, offset: 224)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !878, file: !526, line: 461, baseType: !935, size: 16, offset: 9760)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !878, file: !526, line: 462, baseType: !935, size: 16, offset: 9776)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !878, file: !526, line: 463, baseType: !935, size: 16, offset: 9792)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !878, file: !526, line: 465, baseType: !390, size: 32, offset: 9824)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !878, file: !526, line: 467, baseType: !390, size: 32, offset: 9856)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !878, file: !526, line: 468, baseType: !390, size: 32, offset: 9888)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !878, file: !526, line: 470, baseType: !390, size: 32, offset: 9920)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !878, file: !526, line: 471, baseType: !956, size: 64, offset: 9984)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !878, file: !526, line: 472, baseType: !956, size: 64, offset: 10048)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !878, file: !526, line: 473, baseType: !794, size: 64, offset: 10112)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !878, file: !526, line: 474, baseType: !794, size: 64, offset: 10176)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !878, file: !526, line: 475, baseType: !794, size: 64, offset: 10240)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !878, file: !526, line: 477, baseType: !1362, size: 512, offset: 10304)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !39)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !878, file: !526, line: 479, baseType: !953, size: 64, offset: 10816)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !878, file: !526, line: 480, baseType: !953, size: 64, offset: 10880)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !878, file: !526, line: 481, baseType: !781, size: 64, offset: 10944)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !878, file: !526, line: 482, baseType: !953, size: 64, offset: 11008)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !878, file: !526, line: 483, baseType: !953, size: 64, offset: 11072)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !878, file: !526, line: 486, baseType: !1369, size: 9216, offset: 11136)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 9216, elements: !1370)
!1370 = !{!557, !632, !1182, !1182}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !878, file: !526, line: 487, baseType: !1369, size: 9216, offset: 20352)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !878, file: !526, line: 488, baseType: !1373, size: 36864, offset: 29568)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 36864, elements: !1374)
!1374 = !{!557, !632, !647, !647}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !878, file: !526, line: 489, baseType: !1373, size: 36864, offset: 66432)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !878, file: !526, line: 491, baseType: !1377, size: 768, offset: 103296)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 768, elements: !627)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !878, file: !526, line: 494, baseType: !1379, size: 2048, offset: 104064)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !1380)
!1380 = !{!636}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !878, file: !526, line: 495, baseType: !390, size: 32, offset: 106112)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !878, file: !526, line: 496, baseType: !390, size: 32, offset: 106144)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !878, file: !526, line: 500, baseType: !509, size: 16, offset: 106176)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !878, file: !526, line: 501, baseType: !509, size: 16, offset: 106192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !878, file: !526, line: 503, baseType: !509, size: 16, offset: 106208)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !878, file: !526, line: 504, baseType: !509, size: 16, offset: 106224)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !878, file: !526, line: 505, baseType: !794, size: 64, offset: 106240)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !878, file: !526, line: 506, baseType: !794, size: 64, offset: 106304)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !878, file: !526, line: 507, baseType: !1390, size: 64, offset: 106368)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !878, file: !526, line: 508, baseType: !935, size: 16, offset: 106432)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !878, file: !526, line: 509, baseType: !935, size: 16, offset: 106448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !878, file: !526, line: 512, baseType: !390, size: 32, offset: 106464)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !878, file: !526, line: 513, baseType: !390, size: 32, offset: 106496)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !878, file: !526, line: 514, baseType: !1396, size: 64, offset: 106560)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !878, file: !526, line: 515, baseType: !1396, size: 64, offset: 106624)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !878, file: !526, line: 520, baseType: !390, size: 32, offset: 106688)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !878, file: !526, line: 521, baseType: !1401, size: 544, offset: 106720)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 544, elements: !145)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !878, file: !526, line: 523, baseType: !1403, size: 64, offset: 107264)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1137}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !878, file: !526, line: 524, baseType: !1407, size: 64, offset: 107328)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!390, !1137, !1221, !953, !965}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !878, file: !526, line: 525, baseType: !1411, size: 64, offset: 107392)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!390, !881, !530}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !878, file: !526, line: 526, baseType: !1415, size: 64, offset: 107456)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!390, !1142, !390}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !878, file: !526, line: 527, baseType: !1403, size: 64, offset: 107520)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !878, file: !526, line: 528, baseType: !1403, size: 64, offset: 107584)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !878, file: !526, line: 529, baseType: !1403, size: 64, offset: 107648)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !878, file: !526, line: 530, baseType: !1422, size: 64, offset: 107712)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1142}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !878, file: !526, line: 531, baseType: !1403, size: 64, offset: 107776)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !878, file: !526, line: 532, baseType: !1260, size: 64, offset: 107840)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !878, file: !526, line: 533, baseType: !1260, size: 64, offset: 107904)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !878, file: !526, line: 534, baseType: !1403, size: 64, offset: 107968)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !878, file: !526, line: 535, baseType: !390, size: 32, offset: 108032)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !878, file: !526, line: 536, baseType: !1137, size: 64, offset: 108096)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !878, file: !526, line: 537, baseType: !965, size: 64, offset: 108160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !878, file: !526, line: 538, baseType: !781, size: 64, offset: 108224)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !878, file: !526, line: 539, baseType: !1434, size: 64, offset: 108288)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !878, file: !526, line: 540, baseType: !804, size: 64, offset: 108352)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !878, file: !526, line: 541, baseType: !1437, size: 768, offset: 108416)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 768, elements: !631)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !527, file: !526, line: 596, baseType: !804, size: 64, offset: 6789952)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !527, file: !526, line: 597, baseType: !1440, size: 192, offset: 6790016)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 192, elements: !556)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !526, line: 601, baseType: !390, size: 32, offset: 6790208)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !527, file: !526, line: 602, baseType: !390, size: 32, offset: 6790240)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !527, file: !526, line: 603, baseType: !390, size: 32, offset: 6790272)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !527, file: !526, line: 604, baseType: !390, size: 32, offset: 6790304)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !527, file: !526, line: 605, baseType: !390, size: 32, offset: 6790336)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !527, file: !526, line: 607, baseType: !1434, size: 64, offset: 6790400)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !527, file: !526, line: 608, baseType: !1448, size: 192, offset: 6790464)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 192, elements: !556)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !527, file: !526, line: 609, baseType: !1450, size: 64, offset: 6790656)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !527, file: !526, line: 610, baseType: !781, size: 64, offset: 6790720)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !527, file: !526, line: 611, baseType: !1454, size: 192, offset: 6790784)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 192, elements: !556)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !527, file: !526, line: 613, baseType: !390, size: 32, offset: 6790976)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !527, file: !526, line: 614, baseType: !390, size: 32, offset: 6791008)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !527, file: !526, line: 617, baseType: !876, size: 64, offset: 6791040)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !527, file: !526, line: 618, baseType: !1137, size: 64, offset: 6791104)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !527, file: !526, line: 619, baseType: !1460, size: 192, offset: 6791168)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 192, elements: !556)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !527, file: !526, line: 621, baseType: !390, size: 32, offset: 6791360)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !527, file: !526, line: 626, baseType: !1463, size: 64, offset: 6791424)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !526, line: 626, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !527, file: !526, line: 627, baseType: !1463, size: 64, offset: 6791488)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !527, file: !526, line: 629, baseType: !414, size: 32, offset: 6791552)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !527, file: !526, line: 630, baseType: !390, size: 32, offset: 6791584)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !527, file: !526, line: 634, baseType: !390, size: 32, offset: 6791616)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !527, file: !526, line: 635, baseType: !414, size: 32, offset: 6791648)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !527, file: !526, line: 638, baseType: !390, size: 32, offset: 6791680)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !527, file: !526, line: 638, baseType: !390, size: 32, offset: 6791712)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !527, file: !526, line: 638, baseType: !390, size: 32, offset: 6791744)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !527, file: !526, line: 639, baseType: !414, size: 32, offset: 6791776)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !527, file: !526, line: 639, baseType: !414, size: 32, offset: 6791808)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !527, file: !526, line: 640, baseType: !390, size: 32, offset: 6791840)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !527, file: !526, line: 641, baseType: !390, size: 32, offset: 6791872)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !527, file: !526, line: 642, baseType: !390, size: 32, offset: 6791904)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !527, file: !526, line: 645, baseType: !390, size: 32, offset: 6791936)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !527, file: !526, line: 647, baseType: !414, size: 32, offset: 6791968)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !527, file: !526, line: 648, baseType: !414, size: 32, offset: 6792000)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !527, file: !526, line: 649, baseType: !414, size: 32, offset: 6792032)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !527, file: !526, line: 650, baseType: !414, size: 32, offset: 6792064)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !527, file: !526, line: 651, baseType: !414, size: 32, offset: 6792096)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !527, file: !526, line: 652, baseType: !414, size: 32, offset: 6792128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !527, file: !526, line: 653, baseType: !414, size: 32, offset: 6792160)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !527, file: !526, line: 655, baseType: !390, size: 32, offset: 6792192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !527, file: !526, line: 657, baseType: !390, size: 32, offset: 6792224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !527, file: !526, line: 658, baseType: !390, size: 32, offset: 6792256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !527, file: !526, line: 661, baseType: !390, size: 32, offset: 6792288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !527, file: !526, line: 662, baseType: !935, size: 16, offset: 6792320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !527, file: !526, line: 663, baseType: !935, size: 16, offset: 6792336)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !527, file: !526, line: 664, baseType: !847, size: 64, offset: 6792352)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !527, file: !526, line: 665, baseType: !390, size: 32, offset: 6792416)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !527, file: !526, line: 666, baseType: !390, size: 32, offset: 6792448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !527, file: !526, line: 667, baseType: !1496, size: 96, offset: 6792480)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 96, elements: !556)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !527, file: !526, line: 668, baseType: !555, size: 96, offset: 6792576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !527, file: !526, line: 670, baseType: !390, size: 32, offset: 6792672)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !527, file: !526, line: 671, baseType: !390, size: 32, offset: 6792704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !527, file: !526, line: 672, baseType: !390, size: 32, offset: 6792736)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !527, file: !526, line: 673, baseType: !390, size: 32, offset: 6792768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !527, file: !526, line: 674, baseType: !390, size: 32, offset: 6792800)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !527, file: !526, line: 675, baseType: !390, size: 32, offset: 6792832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !527, file: !526, line: 676, baseType: !390, size: 32, offset: 6792864)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !527, file: !526, line: 677, baseType: !390, size: 32, offset: 6792896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !527, file: !526, line: 678, baseType: !390, size: 32, offset: 6792928)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !527, file: !526, line: 679, baseType: !390, size: 32, offset: 6792960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !527, file: !526, line: 680, baseType: !1509, size: 192, offset: 6792992)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !1510)
!1510 = !{!557, !849}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !527, file: !526, line: 681, baseType: !1509, size: 192, offset: 6793184)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !527, file: !526, line: 682, baseType: !1509, size: 192, offset: 6793376)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !527, file: !526, line: 683, baseType: !390, size: 32, offset: 6793568)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !527, file: !526, line: 684, baseType: !390, size: 32, offset: 6793600)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !527, file: !526, line: 685, baseType: !390, size: 32, offset: 6793632)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !527, file: !526, line: 686, baseType: !390, size: 32, offset: 6793664)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !527, file: !526, line: 687, baseType: !390, size: 32, offset: 6793696)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !527, file: !526, line: 689, baseType: !390, size: 32, offset: 6793728)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !527, file: !526, line: 692, baseType: !390, size: 32, offset: 6793760)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !527, file: !526, line: 693, baseType: !390, size: 32, offset: 6793792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !527, file: !526, line: 700, baseType: !390, size: 32, offset: 6793824)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !527, file: !526, line: 701, baseType: !390, size: 32, offset: 6793856)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !527, file: !526, line: 702, baseType: !390, size: 32, offset: 6793888)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !527, file: !526, line: 703, baseType: !390, size: 32, offset: 6793920)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !527, file: !526, line: 704, baseType: !390, size: 32, offset: 6793952)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !527, file: !526, line: 705, baseType: !414, size: 32, offset: 6793984)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !527, file: !526, line: 706, baseType: !390, size: 32, offset: 6794016)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !527, file: !526, line: 707, baseType: !390, size: 32, offset: 6794048)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !527, file: !526, line: 710, baseType: !390, size: 32, offset: 6794080)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !527, file: !526, line: 711, baseType: !390, size: 32, offset: 6794112)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !527, file: !526, line: 712, baseType: !390, size: 32, offset: 6794144)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !527, file: !526, line: 713, baseType: !390, size: 32, offset: 6794176)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !527, file: !526, line: 714, baseType: !390, size: 32, offset: 6794208)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !527, file: !526, line: 716, baseType: !390, size: 32, offset: 6794240)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !527, file: !526, line: 717, baseType: !390, size: 32, offset: 6794272)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !527, file: !526, line: 719, baseType: !523, size: 64, offset: 6794304)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !527, file: !526, line: 720, baseType: !523, size: 64, offset: 6794368)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !527, file: !526, line: 722, baseType: !1539, size: 2560, offset: 6794432)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1540, line: 38, baseType: !1541)
!1540 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1540, line: 20, size: 2560, elements: !1542)
!1542 = !{!1543, !1544, !1546, !1547, !1548, !1552, !1553, !1554, !1555, !1556}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1541, file: !1540, line: 22, baseType: !546, size: 1088)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1541, file: !1540, line: 24, baseType: !1545, size: 192, offset: 1088)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 192, elements: !556)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1541, file: !1540, line: 25, baseType: !1545, size: 192, offset: 1280)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1541, file: !1540, line: 26, baseType: !1545, size: 192, offset: 1472)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1541, file: !1540, line: 31, baseType: !1549, size: 192, offset: 1664)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1550, size: 192, elements: !556)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1541, file: !1540, line: 32, baseType: !1549, size: 192, offset: 1856)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1541, file: !1540, line: 33, baseType: !1549, size: 192, offset: 2048)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1541, file: !1540, line: 35, baseType: !555, size: 96, offset: 2240)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1541, file: !1540, line: 36, baseType: !555, size: 96, offset: 2336)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1541, file: !1540, line: 37, baseType: !555, size: 96, offset: 2432)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !527, file: !526, line: 723, baseType: !1539, size: 2560, offset: 6796992)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !527, file: !526, line: 724, baseType: !1539, size: 2560, offset: 6799552)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !527, file: !526, line: 725, baseType: !1539, size: 2560, offset: 6802112)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !527, file: !526, line: 728, baseType: !1539, size: 2560, offset: 6804672)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !527, file: !526, line: 729, baseType: !1539, size: 2560, offset: 6807232)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !527, file: !526, line: 730, baseType: !1539, size: 2560, offset: 6809792)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !527, file: !526, line: 731, baseType: !1539, size: 2560, offset: 6812352)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !527, file: !526, line: 735, baseType: !414, size: 32, offset: 6814912)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !527, file: !526, line: 737, baseType: !390, size: 32, offset: 6814944)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !527, file: !526, line: 738, baseType: !390, size: 32, offset: 6814976)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !527, file: !526, line: 741, baseType: !1186, size: 64, offset: 6815040)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !527, file: !526, line: 744, baseType: !390, size: 32, offset: 6815104)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !527, file: !526, line: 746, baseType: !1049, size: 32768, offset: 6815136)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !527, file: !526, line: 748, baseType: !390, size: 32, offset: 6847904)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !527, file: !526, line: 751, baseType: !390, size: 32, offset: 6847936)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !527, file: !526, line: 752, baseType: !390, size: 32, offset: 6847968)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !527, file: !526, line: 755, baseType: !390, size: 32, offset: 6848000)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !527, file: !526, line: 756, baseType: !390, size: 32, offset: 6848032)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !527, file: !526, line: 758, baseType: !390, size: 32, offset: 6848064)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !527, file: !526, line: 759, baseType: !390, size: 32, offset: 6848096)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !527, file: !526, line: 762, baseType: !953, size: 64, offset: 6848128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !527, file: !526, line: 763, baseType: !956, size: 64, offset: 6848192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !527, file: !526, line: 765, baseType: !600, size: 64, offset: 6848256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !527, file: !526, line: 766, baseType: !600, size: 64, offset: 6848320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !527, file: !526, line: 768, baseType: !1397, size: 64, offset: 6848384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !527, file: !526, line: 769, baseType: !1583, size: 3200, offset: 6848448)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 3200, elements: !1584)
!1584 = !{!1585}
!1585 = !DISubrange(count: 100)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !527, file: !526, line: 771, baseType: !965, size: 64, offset: 6851648)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !527, file: !526, line: 772, baseType: !1588, size: 192, offset: 6851712)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 192, elements: !556)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !527, file: !526, line: 773, baseType: !965, size: 64, offset: 6851904)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !527, file: !526, line: 776, baseType: !1591, size: 64, offset: 6851968)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !526, line: 776, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !527, file: !526, line: 777, baseType: !1594, size: 64, offset: 6852032)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !526, line: 777, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !527, file: !526, line: 779, baseType: !390, size: 32, offset: 6852096)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !527, file: !526, line: 780, baseType: !881, size: 64, offset: 6852160)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !527, file: !526, line: 781, baseType: !1599, size: 640, offset: 6852224)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 640, elements: !76)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !527, file: !526, line: 783, baseType: !1601, size: 64, offset: 6852864)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !526, line: 783, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !527, file: !526, line: 784, baseType: !1604, size: 64, offset: 6852928)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !526, line: 784, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !527, file: !526, line: 786, baseType: !1397, size: 64, offset: 6852992)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !527, file: !526, line: 788, baseType: !965, size: 64, offset: 6853056)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !527, file: !526, line: 789, baseType: !390, size: 32, offset: 6853120)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !527, file: !526, line: 790, baseType: !390, size: 32, offset: 6853152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !527, file: !526, line: 792, baseType: !390, size: 32, offset: 6853184)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !527, file: !526, line: 794, baseType: !887, size: 64, offset: 6853248)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !527, file: !526, line: 795, baseType: !887, size: 64, offset: 6853312)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !527, file: !526, line: 796, baseType: !1614, size: 128, offset: 6853376)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 128, elements: !848)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !527, file: !526, line: 800, baseType: !1616, size: 72, offset: 6853504)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1617)
!1617 = !{!1289}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !527, file: !526, line: 802, baseType: !600, size: 64, offset: 6853632)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !527, file: !526, line: 803, baseType: !600, size: 64, offset: 6853696)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !527, file: !526, line: 804, baseType: !390, size: 32, offset: 6853760)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !527, file: !526, line: 807, baseType: !1622, size: 64, offset: 6853824)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !453, line: 72, size: 65856, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1635, !1636}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !1623, file: !453, line: 74, baseType: !390, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_repetition_period", scope: !1623, file: !453, line: 75, baseType: !414, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "coded_data_bit_depth", scope: !1623, file: !453, line: 76, baseType: !505, size: 8, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sei_bit_depth", scope: !1623, file: !453, line: 77, baseType: !505, size: 8, offset: 72)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "model_id", scope: !1623, file: !453, line: 78, baseType: !414, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1623, file: !453, line: 79, baseType: !414, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lut", scope: !1623, file: !453, line: 81, baseType: !1632, size: 65536, offset: 160)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 65536, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 4096)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1623, file: !453, line: 83, baseType: !1114, size: 64, offset: 65728)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "payloadSize", scope: !1623, file: !453, line: 84, baseType: !390, size: 32, offset: 65792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !527, file: !526, line: 810, baseType: !1638, size: 64, offset: 6853888)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !953, !1641, !390, !390, !390, !390, !390, !390}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !527, file: !526, line: 811, baseType: !1643, size: 64, offset: 6853952)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1137, !390, !390, !600, !1227}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !527, file: !526, line: 812, baseType: !1647, size: 64, offset: 6854016)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !390, !985, !985}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !527, file: !526, line: 813, baseType: !1651, size: 64, offset: 6854080)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !523, !1137, !390, !390, !965}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !527, file: !526, line: 814, baseType: !1651, size: 64, offset: 6854144)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !527, file: !526, line: 815, baseType: !1656, size: 64, offset: 6854208)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1221, !953, !523, !1137, !390, !965}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !527, file: !526, line: 816, baseType: !1656, size: 64, offset: 6854272)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !527, file: !526, line: 817, baseType: !1661, size: 64, offset: 6854336)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !953, !523, !1137, !390, !390, !965}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !527, file: !526, line: 818, baseType: !1661, size: 64, offset: 6854400)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !527, file: !526, line: 819, baseType: !1666, size: 64, offset: 6854464)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !953, !1641, !390, !390, !390, !390, !390, !390, !390, !390}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !527, file: !526, line: 821, baseType: !1670, size: 64, offset: 6854528)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !526, line: 561, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !526, line: 544, size: 640, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1672, file: !526, line: 546, baseType: !390, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1672, file: !526, line: 547, baseType: !390, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1672, file: !526, line: 548, baseType: !390, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1672, file: !526, line: 549, baseType: !390, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1672, file: !526, line: 550, baseType: !390, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1672, file: !526, line: 551, baseType: !390, size: 32, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1672, file: !526, line: 552, baseType: !523, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1672, file: !526, line: 553, baseType: !523, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1672, file: !526, line: 554, baseType: !523, size: 64, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1672, file: !526, line: 555, baseType: !390, size: 32, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1672, file: !526, line: 556, baseType: !390, size: 32, offset: 416)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1672, file: !526, line: 557, baseType: !390, size: 32, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1672, file: !526, line: 558, baseType: !390, size: 32, offset: 480)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1672, file: !526, line: 559, baseType: !390, size: 32, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1672, file: !526, line: 560, baseType: !1689, size: 64, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !527, file: !526, line: 822, baseType: !390, size: 32, offset: 6854592)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !527, file: !526, line: 823, baseType: !1692, size: 64, offset: 6854656)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !428, line: 54, size: 576, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1701, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !1693, file: !428, line: 56, baseType: !390, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1693, file: !428, line: 57, baseType: !414, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1693, file: !428, line: 58, baseType: !414, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !1693, file: !428, line: 59, baseType: !390, size: 32, offset: 96)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !1693, file: !428, line: 60, baseType: !1700, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !428, line: 43, baseType: !427)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !1693, file: !428, line: 61, baseType: !1702, size: 32, offset: 160)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !428, line: 51, baseType: !446)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1693, file: !428, line: 62, baseType: !523, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !1693, file: !428, line: 63, baseType: !508, size: 16, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !1693, file: !428, line: 65, baseType: !390, size: 32, offset: 288)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1693, file: !428, line: 66, baseType: !390, size: 32, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1693, file: !428, line: 67, baseType: !390, size: 32, offset: 352)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1693, file: !428, line: 68, baseType: !390, size: 32, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1693, file: !428, line: 69, baseType: !390, size: 32, offset: 416)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1693, file: !428, line: 70, baseType: !390, size: 32, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1693, file: !428, line: 71, baseType: !390, size: 32, offset: 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1693, file: !428, line: 72, baseType: !390, size: 32, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !527, file: !526, line: 824, baseType: !390, size: 32, offset: 6854720)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !527, file: !526, line: 825, baseType: !390, size: 32, offset: 6854752)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !527, file: !526, line: 826, baseType: !390, size: 32, offset: 6854784)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !527, file: !526, line: 827, baseType: !390, size: 32, offset: 6854816)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !527, file: !526, line: 829, baseType: !390, size: 32, offset: 6854848)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !527, file: !526, line: 830, baseType: !390, size: 32, offset: 6854880)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !527, file: !526, line: 831, baseType: !390, size: 32, offset: 6854912)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !527, file: !526, line: 835, baseType: !614, size: 64, offset: 6854976)
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1722 = !DILocalVariable(name: "msg", arg: 1, scope: !520, file: !2, line: 66, type: !523)
!1723 = !DILocalVariable(name: "size", arg: 2, scope: !520, file: !2, line: 66, type: !390)
!1724 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !520, file: !2, line: 66, type: !524)
!1725 = !DILocalVariable(name: "pSlice", arg: 4, scope: !520, file: !2, line: 66, type: !876)
!1726 = !DILocalVariable(name: "payload_type", scope: !520, file: !2, line: 68, type: !390)
!1727 = !DILocalVariable(name: "payload_size", scope: !520, file: !2, line: 69, type: !390)
!1728 = !DILocalVariable(name: "offset", scope: !520, file: !2, line: 70, type: !390)
!1729 = !DILocalVariable(name: "tmp_byte", scope: !520, file: !2, line: 71, type: !503)
!1730 = !DILocation(line: 0, scope: !520)
!1731 = !DILocation(line: 73, column: 3, scope: !520)
!1732 = !DILocation(line: 78, column: 5, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !520, file: !2, line: 74, column: 3)
!1734 = !DILocation(line: 0, scope: !1733)
!1735 = !DILocation(line: 78, column: 21, scope: !1733)
!1736 = !DILocation(line: 80, column: 20, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 79, column: 5)
!1738 = distinct !{!1738, !1732, !1739}
!1739 = !DILocation(line: 82, column: 5, scope: !1733)
!1740 = !DILocation(line: 78, column: 12, scope: !1733)
!1741 = !DILocation(line: 83, column: 18, scope: !1733)
!1742 = !DILocation(line: 86, column: 26, scope: !1733)
!1743 = !DILocation(line: 87, column: 21, scope: !1733)
!1744 = !DILocation(line: 87, column: 5, scope: !1733)
!1745 = !DILocation(line: 89, column: 20, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 88, column: 5)
!1747 = !DILocation(line: 90, column: 28, scope: !1746)
!1748 = distinct !{!1748, !1744, !1749}
!1749 = !DILocation(line: 91, column: 5, scope: !1733)
!1750 = !DILocation(line: 87, column: 12, scope: !1733)
!1751 = !DILocation(line: 92, column: 18, scope: !1733)
!1752 = !DILocation(line: 94, column: 5, scope: !1733)
!1753 = !DILocation(line: 153, column: 54, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 95, column: 5)
!1755 = !DILocation(line: 97, column: 43, scope: !1754)
!1756 = !DILocation(line: 97, column: 7, scope: !1754)
!1757 = !DILocation(line: 98, column: 7, scope: !1754)
!1758 = !DILocation(line: 100, column: 41, scope: !1754)
!1759 = !DILocation(line: 100, column: 7, scope: !1754)
!1760 = !DILocation(line: 101, column: 7, scope: !1754)
!1761 = !DILocation(line: 103, column: 40, scope: !1754)
!1762 = !DILocation(line: 103, column: 7, scope: !1754)
!1763 = !DILocation(line: 104, column: 7, scope: !1754)
!1764 = !DILocation(line: 106, column: 41, scope: !1754)
!1765 = !DILocalVariable(name: "payload", arg: 1, scope: !1766, file: !2, line: 697, type: !523)
!1766 = distinct !DISubprogram(name: "interpret_filler_payload_info", scope: !2, file: !2, line: 697, type: !1767, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !523, !390, !524}
!1769 = !{!1765, !1770, !1771, !1772}
!1770 = !DILocalVariable(name: "size", arg: 2, scope: !1766, file: !2, line: 697, type: !390)
!1771 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1766, file: !2, line: 697, type: !524)
!1772 = !DILocalVariable(name: "payload_cnt", scope: !1766, file: !2, line: 699, type: !390)
!1773 = !DILocation(line: 0, scope: !1766, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 106, column: 7, scope: !1754)
!1775 = !DILocation(line: 701, column: 21, scope: !1766, inlinedAt: !1774)
!1776 = !DILocation(line: 701, column: 3, scope: !1766, inlinedAt: !1774)
!1777 = !DILocation(line: 703, column: 9, scope: !1778, inlinedAt: !1774)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 703, column: 9)
!1779 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 702, column: 3)
!1780 = !DILocation(line: 703, column: 30, scope: !1778, inlinedAt: !1774)
!1781 = !DILocation(line: 703, column: 9, scope: !1779, inlinedAt: !1774)
!1782 = distinct !{!1782, !1776, !1783}
!1783 = !DILocation(line: 707, column: 3, scope: !1766, inlinedAt: !1774)
!1784 = !DILocation(line: 115, column: 41, scope: !1754)
!1785 = !DILocalVariable(name: "payload", arg: 1, scope: !1786, file: !2, line: 897, type: !523)
!1786 = distinct !DISubprogram(name: "interpret_recovery_point_info", scope: !2, file: !2, line: 897, type: !1767, scopeLine: 898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1787)
!1787 = !{!1785, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1788 = !DILocalVariable(name: "size", arg: 2, scope: !1786, file: !2, line: 897, type: !390)
!1789 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1786, file: !2, line: 897, type: !524)
!1790 = !DILocalVariable(name: "recovery_frame_cnt", scope: !1786, file: !2, line: 899, type: !390)
!1791 = !DILocalVariable(name: "exact_match_flag", scope: !1786, file: !2, line: 899, type: !390)
!1792 = !DILocalVariable(name: "broken_link_flag", scope: !1786, file: !2, line: 899, type: !390)
!1793 = !DILocalVariable(name: "changing_slice_group_idc", scope: !1786, file: !2, line: 899, type: !390)
!1794 = !DILocalVariable(name: "buf", scope: !1786, file: !2, line: 902, type: !1114)
!1795 = !DILocation(line: 0, scope: !1786, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 115, column: 7, scope: !1754)
!1797 = !DILocation(line: 905, column: 9, scope: !1786, inlinedAt: !1796)
!1798 = !DILocation(line: 906, column: 8, scope: !1786, inlinedAt: !1796)
!1799 = !DILocation(line: 906, column: 25, scope: !1786, inlinedAt: !1796)
!1800 = !DILocation(line: 907, column: 8, scope: !1786, inlinedAt: !1796)
!1801 = !DILocation(line: 907, column: 21, scope: !1786, inlinedAt: !1796)
!1802 = !DILocation(line: 908, column: 8, scope: !1786, inlinedAt: !1796)
!1803 = !DILocation(line: 908, column: 24, scope: !1786, inlinedAt: !1796)
!1804 = !DILocation(line: 910, column: 3, scope: !1786, inlinedAt: !1796)
!1805 = !DILocation(line: 910, column: 10, scope: !1786, inlinedAt: !1796)
!1806 = !DILocation(line: 910, column: 19, scope: !1786, inlinedAt: !1796)
!1807 = !DILocation(line: 912, column: 30, scope: !1786, inlinedAt: !1796)
!1808 = !DILocation(line: 913, column: 30, scope: !1786, inlinedAt: !1796)
!1809 = !DILocation(line: 914, column: 30, scope: !1786, inlinedAt: !1796)
!1810 = !DILocation(line: 915, column: 30, scope: !1786, inlinedAt: !1796)
!1811 = !DILocation(line: 917, column: 25, scope: !1786, inlinedAt: !1796)
!1812 = !DILocation(line: 918, column: 29, scope: !1786, inlinedAt: !1796)
!1813 = !DILocation(line: 927, column: 3, scope: !1786, inlinedAt: !1796)
!1814 = !DILocation(line: 116, column: 7, scope: !1754)
!1815 = !DILocation(line: 118, column: 57, scope: !1754)
!1816 = !DILocation(line: 118, column: 7, scope: !1754)
!1817 = !DILocation(line: 119, column: 7, scope: !1754)
!1818 = !DILocation(line: 121, column: 31, scope: !1754)
!1819 = !DILocation(line: 121, column: 7, scope: !1754)
!1820 = !DILocation(line: 122, column: 7, scope: !1754)
!1821 = !DILocation(line: 124, column: 39, scope: !1754)
!1822 = !DILocalVariable(name: "payload", arg: 1, scope: !1823, file: !2, line: 649, type: !523)
!1823 = distinct !DISubprogram(name: "interpret_scene_information", scope: !2, file: !2, line: 649, type: !1767, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1824)
!1824 = !{!1822, !1825, !1826, !1827, !1828, !1829, !1830}
!1825 = !DILocalVariable(name: "size", arg: 2, scope: !1823, file: !2, line: 649, type: !390)
!1826 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1823, file: !2, line: 649, type: !524)
!1827 = !DILocalVariable(name: "buf", scope: !1823, file: !2, line: 651, type: !1114)
!1828 = !DILocalVariable(name: "scene_id", scope: !1823, file: !2, line: 652, type: !390)
!1829 = !DILocalVariable(name: "scene_transition_type", scope: !1823, file: !2, line: 652, type: !390)
!1830 = !DILocalVariable(name: "second_scene_id", scope: !1823, file: !2, line: 652, type: !390)
!1831 = !DILocation(line: 0, scope: !1823, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 124, column: 7, scope: !1754)
!1833 = !DILocation(line: 654, column: 9, scope: !1823, inlinedAt: !1832)
!1834 = !DILocation(line: 655, column: 8, scope: !1823, inlinedAt: !1832)
!1835 = !DILocation(line: 655, column: 25, scope: !1823, inlinedAt: !1832)
!1836 = !DILocation(line: 656, column: 8, scope: !1823, inlinedAt: !1832)
!1837 = !DILocation(line: 656, column: 21, scope: !1823, inlinedAt: !1832)
!1838 = !DILocation(line: 657, column: 8, scope: !1823, inlinedAt: !1832)
!1839 = !DILocation(line: 657, column: 24, scope: !1823, inlinedAt: !1832)
!1840 = !DILocation(line: 659, column: 3, scope: !1823, inlinedAt: !1832)
!1841 = !DILocation(line: 659, column: 10, scope: !1823, inlinedAt: !1832)
!1842 = !DILocation(line: 659, column: 19, scope: !1823, inlinedAt: !1832)
!1843 = !DILocation(line: 661, column: 27, scope: !1823, inlinedAt: !1832)
!1844 = !DILocation(line: 662, column: 27, scope: !1823, inlinedAt: !1832)
!1845 = !DILocation(line: 663, column: 30, scope: !1846, inlinedAt: !1832)
!1846 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 663, column: 8)
!1847 = !DILocation(line: 663, column: 8, scope: !1823, inlinedAt: !1832)
!1848 = !DILocation(line: 665, column: 27, scope: !1849, inlinedAt: !1832)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 664, column: 3)
!1850 = !DILocation(line: 666, column: 3, scope: !1849, inlinedAt: !1832)
!1851 = !DILocation(line: 677, column: 3, scope: !1823, inlinedAt: !1832)
!1852 = !DILocation(line: 125, column: 7, scope: !1754)
!1853 = !DILocation(line: 127, column: 38, scope: !1754)
!1854 = !DILocation(line: 127, column: 7, scope: !1754)
!1855 = !DILocation(line: 128, column: 7, scope: !1754)
!1856 = !DILocation(line: 130, column: 60, scope: !1754)
!1857 = !DILocalVariable(name: "payload", arg: 1, scope: !1858, file: !2, line: 508, type: !523)
!1858 = distinct !DISubprogram(name: "interpret_subsequence_layer_characteristics_info", scope: !2, file: !2, line: 508, type: !1767, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1859)
!1859 = !{!1857, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1860 = !DILocalVariable(name: "size", arg: 2, scope: !1858, file: !2, line: 508, type: !390)
!1861 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1858, file: !2, line: 508, type: !524)
!1862 = !DILocalVariable(name: "buf", scope: !1858, file: !2, line: 510, type: !1114)
!1863 = !DILocalVariable(name: "num_sub_layers", scope: !1858, file: !2, line: 511, type: !1192)
!1864 = !DILocalVariable(name: "accurate_statistics_flag", scope: !1858, file: !2, line: 511, type: !1192)
!1865 = !DILocalVariable(name: "average_bit_rate", scope: !1858, file: !2, line: 511, type: !1192)
!1866 = !DILocalVariable(name: "average_frame_rate", scope: !1858, file: !2, line: 511, type: !1192)
!1867 = !DILocalVariable(name: "i", scope: !1858, file: !2, line: 512, type: !390)
!1868 = !DILocation(line: 0, scope: !1858, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 130, column: 7, scope: !1754)
!1870 = !DILocation(line: 514, column: 9, scope: !1858, inlinedAt: !1869)
!1871 = !DILocation(line: 515, column: 8, scope: !1858, inlinedAt: !1869)
!1872 = !DILocation(line: 515, column: 25, scope: !1858, inlinedAt: !1869)
!1873 = !DILocation(line: 516, column: 8, scope: !1858, inlinedAt: !1869)
!1874 = !DILocation(line: 516, column: 21, scope: !1858, inlinedAt: !1869)
!1875 = !DILocation(line: 517, column: 8, scope: !1858, inlinedAt: !1869)
!1876 = !DILocation(line: 517, column: 24, scope: !1858, inlinedAt: !1869)
!1877 = !DILocation(line: 519, column: 3, scope: !1858, inlinedAt: !1869)
!1878 = !DILocation(line: 519, column: 10, scope: !1858, inlinedAt: !1869)
!1879 = !DILocation(line: 519, column: 19, scope: !1858, inlinedAt: !1869)
!1880 = !DILocation(line: 521, column: 24, scope: !1858, inlinedAt: !1869)
!1881 = !DILocation(line: 528, column: 14, scope: !1882, inlinedAt: !1869)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 528, column: 3)
!1883 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 528, column: 3)
!1884 = !DILocation(line: 528, column: 3, scope: !1883, inlinedAt: !1869)
!1885 = !DILocation(line: 530, column: 32, scope: !1886, inlinedAt: !1869)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 529, column: 3)
!1887 = !DILocation(line: 531, column: 32, scope: !1886, inlinedAt: !1869)
!1888 = !DILocation(line: 532, column: 32, scope: !1886, inlinedAt: !1869)
!1889 = !DILocation(line: 528, column: 32, scope: !1882, inlinedAt: !1869)
!1890 = distinct !{!1890, !1884, !1891}
!1891 = !DILocation(line: 539, column: 3, scope: !1883, inlinedAt: !1869)
!1892 = !DILocation(line: 540, column: 3, scope: !1858, inlinedAt: !1869)
!1893 = !DILocation(line: 131, column: 7, scope: !1754)
!1894 = !DILocation(line: 133, column: 54, scope: !1754)
!1895 = !DILocation(line: 133, column: 7, scope: !1754)
!1896 = !DILocation(line: 134, column: 7, scope: !1754)
!1897 = !DILocation(line: 136, column: 44, scope: !1754)
!1898 = !DILocalVariable(name: "payload", arg: 1, scope: !1899, file: !2, line: 1082, type: !523)
!1899 = distinct !DISubprogram(name: "interpret_full_frame_freeze_info", scope: !2, file: !2, line: 1082, type: !1767, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1900)
!1900 = !{!1898, !1901, !1902, !1903, !1904}
!1901 = !DILocalVariable(name: "size", arg: 2, scope: !1899, file: !2, line: 1082, type: !390)
!1902 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1899, file: !2, line: 1082, type: !524)
!1903 = !DILocalVariable(name: "full_frame_freeze_repetition_period", scope: !1899, file: !2, line: 1084, type: !390)
!1904 = !DILocalVariable(name: "buf", scope: !1899, file: !2, line: 1085, type: !1114)
!1905 = !DILocation(line: 0, scope: !1899, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 136, column: 7, scope: !1754)
!1907 = !DILocation(line: 1087, column: 9, scope: !1899, inlinedAt: !1906)
!1908 = !DILocation(line: 1088, column: 8, scope: !1899, inlinedAt: !1906)
!1909 = !DILocation(line: 1088, column: 25, scope: !1899, inlinedAt: !1906)
!1910 = !DILocation(line: 1089, column: 8, scope: !1899, inlinedAt: !1906)
!1911 = !DILocation(line: 1089, column: 21, scope: !1899, inlinedAt: !1906)
!1912 = !DILocation(line: 1090, column: 8, scope: !1899, inlinedAt: !1906)
!1913 = !DILocation(line: 1090, column: 24, scope: !1899, inlinedAt: !1906)
!1914 = !DILocation(line: 1092, column: 42, scope: !1899, inlinedAt: !1906)
!1915 = !DILocation(line: 1098, column: 3, scope: !1899, inlinedAt: !1906)
!1916 = !DILocation(line: 137, column: 7, scope: !1754)
!1917 = !DILocation(line: 142, column: 46, scope: !1754)
!1918 = !DILocalVariable(name: "payload", arg: 1, scope: !1919, file: !2, line: 1146, type: !523)
!1919 = distinct !DISubprogram(name: "interpret_full_frame_snapshot_info", scope: !2, file: !2, line: 1146, type: !1767, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1920)
!1920 = !{!1918, !1921, !1922, !1923, !1924}
!1921 = !DILocalVariable(name: "size", arg: 2, scope: !1919, file: !2, line: 1146, type: !390)
!1922 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1919, file: !2, line: 1146, type: !524)
!1923 = !DILocalVariable(name: "snapshot_id", scope: !1919, file: !2, line: 1148, type: !390)
!1924 = !DILocalVariable(name: "buf", scope: !1919, file: !2, line: 1150, type: !1114)
!1925 = !DILocation(line: 0, scope: !1919, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 142, column: 7, scope: !1754)
!1927 = !DILocation(line: 1152, column: 9, scope: !1919, inlinedAt: !1926)
!1928 = !DILocation(line: 1153, column: 8, scope: !1919, inlinedAt: !1926)
!1929 = !DILocation(line: 1153, column: 25, scope: !1919, inlinedAt: !1926)
!1930 = !DILocation(line: 1154, column: 8, scope: !1919, inlinedAt: !1926)
!1931 = !DILocation(line: 1154, column: 21, scope: !1919, inlinedAt: !1926)
!1932 = !DILocation(line: 1155, column: 8, scope: !1919, inlinedAt: !1926)
!1933 = !DILocation(line: 1155, column: 24, scope: !1919, inlinedAt: !1926)
!1934 = !DILocation(line: 1157, column: 3, scope: !1919, inlinedAt: !1926)
!1935 = !DILocation(line: 1157, column: 10, scope: !1919, inlinedAt: !1926)
!1936 = !DILocation(line: 1157, column: 19, scope: !1919, inlinedAt: !1926)
!1937 = !DILocation(line: 1159, column: 17, scope: !1919, inlinedAt: !1926)
!1938 = !DILocation(line: 1165, column: 3, scope: !1919, inlinedAt: !1926)
!1939 = !DILocation(line: 143, column: 7, scope: !1754)
!1940 = !DILocation(line: 145, column: 55, scope: !1754)
!1941 = !DILocalVariable(name: "payload", arg: 1, scope: !1942, file: !2, line: 1184, type: !523)
!1942 = distinct !DISubprogram(name: "interpret_progressive_refinement_start_info", scope: !2, file: !2, line: 1184, type: !1767, scopeLine: 1185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1943)
!1943 = !{!1941, !1944, !1945, !1946, !1947, !1948}
!1944 = !DILocalVariable(name: "size", arg: 2, scope: !1942, file: !2, line: 1184, type: !390)
!1945 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1942, file: !2, line: 1184, type: !524)
!1946 = !DILocalVariable(name: "progressive_refinement_id", scope: !1942, file: !2, line: 1186, type: !390)
!1947 = !DILocalVariable(name: "num_refinement_steps_minus1", scope: !1942, file: !2, line: 1186, type: !390)
!1948 = !DILocalVariable(name: "buf", scope: !1942, file: !2, line: 1188, type: !1114)
!1949 = !DILocation(line: 0, scope: !1942, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 145, column: 7, scope: !1754)
!1951 = !DILocation(line: 1190, column: 9, scope: !1942, inlinedAt: !1950)
!1952 = !DILocation(line: 1191, column: 8, scope: !1942, inlinedAt: !1950)
!1953 = !DILocation(line: 1191, column: 25, scope: !1942, inlinedAt: !1950)
!1954 = !DILocation(line: 1192, column: 8, scope: !1942, inlinedAt: !1950)
!1955 = !DILocation(line: 1192, column: 21, scope: !1942, inlinedAt: !1950)
!1956 = !DILocation(line: 1193, column: 8, scope: !1942, inlinedAt: !1950)
!1957 = !DILocation(line: 1193, column: 24, scope: !1942, inlinedAt: !1950)
!1958 = !DILocation(line: 1195, column: 3, scope: !1942, inlinedAt: !1950)
!1959 = !DILocation(line: 1195, column: 10, scope: !1942, inlinedAt: !1950)
!1960 = !DILocation(line: 1195, column: 19, scope: !1942, inlinedAt: !1950)
!1961 = !DILocation(line: 1197, column: 33, scope: !1942, inlinedAt: !1950)
!1962 = !DILocation(line: 1198, column: 33, scope: !1942, inlinedAt: !1950)
!1963 = !DILocation(line: 1205, column: 3, scope: !1942, inlinedAt: !1950)
!1964 = !DILocation(line: 146, column: 7, scope: !1754)
!1965 = !DILocation(line: 148, column: 53, scope: !1754)
!1966 = !DILocalVariable(name: "payload", arg: 1, scope: !1967, file: !2, line: 1225, type: !523)
!1967 = distinct !DISubprogram(name: "interpret_progressive_refinement_end_info", scope: !2, file: !2, line: 1225, type: !1767, scopeLine: 1226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1968)
!1968 = !{!1966, !1969, !1970, !1971, !1972}
!1969 = !DILocalVariable(name: "size", arg: 2, scope: !1967, file: !2, line: 1225, type: !390)
!1970 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1967, file: !2, line: 1225, type: !524)
!1971 = !DILocalVariable(name: "progressive_refinement_id", scope: !1967, file: !2, line: 1227, type: !390)
!1972 = !DILocalVariable(name: "buf", scope: !1967, file: !2, line: 1229, type: !1114)
!1973 = !DILocation(line: 0, scope: !1967, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 148, column: 7, scope: !1754)
!1975 = !DILocation(line: 1231, column: 9, scope: !1967, inlinedAt: !1974)
!1976 = !DILocation(line: 1232, column: 8, scope: !1967, inlinedAt: !1974)
!1977 = !DILocation(line: 1232, column: 25, scope: !1967, inlinedAt: !1974)
!1978 = !DILocation(line: 1233, column: 8, scope: !1967, inlinedAt: !1974)
!1979 = !DILocation(line: 1233, column: 21, scope: !1967, inlinedAt: !1974)
!1980 = !DILocation(line: 1234, column: 8, scope: !1967, inlinedAt: !1974)
!1981 = !DILocation(line: 1234, column: 24, scope: !1967, inlinedAt: !1974)
!1982 = !DILocation(line: 1236, column: 3, scope: !1967, inlinedAt: !1974)
!1983 = !DILocation(line: 1236, column: 10, scope: !1967, inlinedAt: !1974)
!1984 = !DILocation(line: 1236, column: 19, scope: !1967, inlinedAt: !1974)
!1985 = !DILocation(line: 1238, column: 33, scope: !1967, inlinedAt: !1974)
!1986 = !DILocation(line: 1244, column: 3, scope: !1967, inlinedAt: !1974)
!1987 = !DILocation(line: 149, column: 7, scope: !1754)
!1988 = !DILocation(line: 151, column: 61, scope: !1754)
!1989 = !DILocation(line: 151, column: 7, scope: !1754)
!1990 = !DILocation(line: 153, column: 7, scope: !1754)
!1991 = !DILocation(line: 154, column: 7, scope: !1754)
!1992 = !DILocation(line: 156, column: 64, scope: !1754)
!1993 = !DILocalVariable(name: "payload", arg: 1, scope: !1994, file: !2, line: 1444, type: !523)
!1994 = distinct !DISubprogram(name: "interpret_deblocking_filter_display_preference_info", scope: !2, file: !2, line: 1444, type: !1767, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1995)
!1995 = !{!1993, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1996 = !DILocalVariable(name: "size", arg: 2, scope: !1994, file: !2, line: 1444, type: !390)
!1997 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !1994, file: !2, line: 1444, type: !524)
!1998 = !DILocalVariable(name: "deblocking_display_preference_cancel_flag", scope: !1994, file: !2, line: 1446, type: !390)
!1999 = !DILocalVariable(name: "display_prior_to_deblocking_preferred_flag", scope: !1994, file: !2, line: 1447, type: !390)
!2000 = !DILocalVariable(name: "dec_frame_buffering_constraint_flag", scope: !1994, file: !2, line: 1447, type: !390)
!2001 = !DILocalVariable(name: "deblocking_display_preference_repetition_period", scope: !1994, file: !2, line: 1447, type: !390)
!2002 = !DILocalVariable(name: "buf", scope: !1994, file: !2, line: 1449, type: !1114)
!2003 = !DILocation(line: 0, scope: !1994, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 156, column: 7, scope: !1754)
!2005 = !DILocation(line: 1451, column: 9, scope: !1994, inlinedAt: !2004)
!2006 = !DILocation(line: 1452, column: 8, scope: !1994, inlinedAt: !2004)
!2007 = !DILocation(line: 1452, column: 25, scope: !1994, inlinedAt: !2004)
!2008 = !DILocation(line: 1453, column: 8, scope: !1994, inlinedAt: !2004)
!2009 = !DILocation(line: 1453, column: 21, scope: !1994, inlinedAt: !2004)
!2010 = !DILocation(line: 1454, column: 8, scope: !1994, inlinedAt: !2004)
!2011 = !DILocation(line: 1454, column: 24, scope: !1994, inlinedAt: !2004)
!2012 = !DILocation(line: 1456, column: 59, scope: !1994, inlinedAt: !2004)
!2013 = !DILocation(line: 1460, column: 7, scope: !2014, inlinedAt: !2004)
!2014 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 1460, column: 6)
!2015 = !DILocation(line: 1460, column: 6, scope: !1994, inlinedAt: !2004)
!2016 = !DILocation(line: 1462, column: 61, scope: !2017, inlinedAt: !2004)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 1461, column: 3)
!2018 = !DILocation(line: 1463, column: 61, scope: !2017, inlinedAt: !2004)
!2019 = !DILocation(line: 1464, column: 61, scope: !2017, inlinedAt: !2004)
!2020 = !DILocation(line: 1470, column: 3, scope: !2017, inlinedAt: !2004)
!2021 = !DILocation(line: 1472, column: 3, scope: !1994, inlinedAt: !2004)
!2022 = !DILocation(line: 157, column: 7, scope: !1754)
!2023 = !DILocation(line: 159, column: 45, scope: !1754)
!2024 = !DILocation(line: 159, column: 7, scope: !1754)
!2025 = !DILocation(line: 160, column: 7, scope: !1754)
!2026 = !DILocation(line: 162, column: 34, scope: !1754)
!2027 = !DILocation(line: 162, column: 7, scope: !1754)
!2028 = !DILocation(line: 163, column: 7, scope: !1754)
!2029 = !DILocation(line: 165, column: 45, scope: !1754)
!2030 = !DILocation(line: 165, column: 7, scope: !1754)
!2031 = !DILocation(line: 166, column: 7, scope: !1754)
!2032 = !DILocation(line: 168, column: 52, scope: !1754)
!2033 = !DILocation(line: 168, column: 7, scope: !1754)
!2034 = !DILocation(line: 169, column: 7, scope: !1754)
!2035 = !DILocation(line: 174, column: 12, scope: !1733)
!2036 = !DILocation(line: 176, column: 12, scope: !520)
!2037 = !DILocation(line: 176, column: 24, scope: !520)
!2038 = !DILocation(line: 176, column: 3, scope: !1733)
!2039 = distinct !{!2039, !1731, !2040}
!2040 = !DILocation(line: 176, column: 32, scope: !520)
!2041 = !DILocation(line: 180, column: 1, scope: !520)
!2042 = distinct !DISubprogram(name: "interpret_buffering_period_info", scope: !2, file: !2, line: 1588, type: !1767, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2044 = !DILocalVariable(name: "payload", arg: 1, scope: !2042, file: !2, line: 1588, type: !523)
!2045 = !DILocalVariable(name: "size", arg: 2, scope: !2042, file: !2, line: 1588, type: !390)
!2046 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2042, file: !2, line: 1588, type: !524)
!2047 = !DILocalVariable(name: "seq_parameter_set_id", scope: !2042, file: !2, line: 1590, type: !390)
!2048 = !DILocalVariable(name: "initial_cpb_removal_delay", scope: !2042, file: !2, line: 1590, type: !390)
!2049 = !DILocalVariable(name: "initial_cpb_removal_delay_offset", scope: !2042, file: !2, line: 1590, type: !390)
!2050 = !DILocalVariable(name: "k", scope: !2042, file: !2, line: 1591, type: !414)
!2051 = !DILocalVariable(name: "buf", scope: !2042, file: !2, line: 1593, type: !1114)
!2052 = !DILocalVariable(name: "sps", scope: !2042, file: !2, line: 1594, type: !666)
!2053 = !DILocation(line: 0, scope: !2042)
!2054 = !DILocation(line: 1596, column: 9, scope: !2042)
!2055 = !DILocation(line: 1597, column: 8, scope: !2042)
!2056 = !DILocation(line: 1597, column: 25, scope: !2042)
!2057 = !DILocation(line: 1598, column: 8, scope: !2042)
!2058 = !DILocation(line: 1598, column: 21, scope: !2042)
!2059 = !DILocation(line: 1599, column: 8, scope: !2042)
!2060 = !DILocation(line: 1599, column: 24, scope: !2042)
!2061 = !DILocation(line: 1601, column: 3, scope: !2042)
!2062 = !DILocation(line: 1601, column: 10, scope: !2042)
!2063 = !DILocation(line: 1601, column: 19, scope: !2042)
!2064 = !DILocation(line: 1603, column: 28, scope: !2042)
!2065 = !DILocation(line: 1605, column: 17, scope: !2042)
!2066 = !DILocation(line: 1605, column: 10, scope: !2042)
!2067 = !DILocation(line: 1607, column: 3, scope: !2042)
!2068 = !DILocation(line: 1615, column: 12, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 1615, column: 7)
!2070 = !DILocation(line: 1615, column: 7, scope: !2069)
!2071 = !DILocation(line: 1615, column: 7, scope: !2042)
!2072 = !DILocation(line: 1618, column: 33, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1618, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 1616, column: 3)
!2075 = !DILocation(line: 1618, column: 9, scope: !2073)
!2076 = !DILocation(line: 1618, column: 9, scope: !2074)
!2077 = !DILocation(line: 1620, column: 62, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 1620, column: 7)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 1620, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 1619, column: 5)
!2081 = !DILocation(line: 1620, column: 18, scope: !2078)
!2082 = !DILocation(line: 1620, column: 7, scope: !2079)
!2083 = !DILocation(line: 1622, column: 91, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 1621, column: 7)
!2085 = !DILocation(line: 1622, column: 130, scope: !2084)
!2086 = !DILocation(line: 1622, column: 44, scope: !2084)
!2087 = !DILocation(line: 1623, column: 91, scope: !2084)
!2088 = !DILocation(line: 1623, column: 130, scope: !2084)
!2089 = !DILocation(line: 1623, column: 44, scope: !2084)
!2090 = !DILocation(line: 1620, column: 81, scope: !2078)
!2091 = !DILocation(line: 1620, column: 76, scope: !2078)
!2092 = distinct !{!2092, !2082, !2093}
!2093 = !DILocation(line: 1629, column: 7, scope: !2079)
!2094 = !DILocation(line: 1632, column: 33, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1632, column: 9)
!2096 = !DILocation(line: 1632, column: 9, scope: !2095)
!2097 = !DILocation(line: 1632, column: 9, scope: !2074)
!2098 = !DILocation(line: 1634, column: 62, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 1634, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 1634, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 1633, column: 5)
!2102 = !DILocation(line: 1634, column: 18, scope: !2099)
!2103 = !DILocation(line: 1634, column: 7, scope: !2100)
!2104 = !DILocation(line: 1636, column: 91, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 1635, column: 7)
!2106 = !DILocation(line: 1636, column: 130, scope: !2105)
!2107 = !DILocation(line: 1636, column: 44, scope: !2105)
!2108 = !DILocation(line: 1637, column: 91, scope: !2105)
!2109 = !DILocation(line: 1637, column: 130, scope: !2105)
!2110 = !DILocation(line: 1637, column: 44, scope: !2105)
!2111 = !DILocation(line: 1634, column: 81, scope: !2099)
!2112 = !DILocation(line: 1634, column: 76, scope: !2099)
!2113 = distinct !{!2113, !2103, !2114}
!2114 = !DILocation(line: 1643, column: 7, scope: !2100)
!2115 = !DILocation(line: 1647, column: 3, scope: !2042)
!2116 = !DILocation(line: 1651, column: 1, scope: !2042)
!2117 = distinct !DISubprogram(name: "interpret_picture_timing_info", scope: !2, file: !2, line: 1667, type: !1767, scopeLine: 1668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2119 = !DILocalVariable(name: "payload", arg: 1, scope: !2117, file: !2, line: 1667, type: !523)
!2120 = !DILocalVariable(name: "size", arg: 2, scope: !2117, file: !2, line: 1667, type: !390)
!2121 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2117, file: !2, line: 1667, type: !524)
!2122 = !DILocalVariable(name: "active_sps", scope: !2117, file: !2, line: 1669, type: !666)
!2123 = !DILocalVariable(name: "cpb_removal_delay", scope: !2117, file: !2, line: 1671, type: !390)
!2124 = !DILocalVariable(name: "dpb_output_delay", scope: !2117, file: !2, line: 1671, type: !390)
!2125 = !DILocalVariable(name: "picture_structure_present_flag", scope: !2117, file: !2, line: 1671, type: !390)
!2126 = !DILocalVariable(name: "picture_structure", scope: !2117, file: !2, line: 1671, type: !390)
!2127 = !DILocalVariable(name: "clock_time_stamp_flag", scope: !2117, file: !2, line: 1672, type: !390)
!2128 = !DILocalVariable(name: "ct_type", scope: !2117, file: !2, line: 1673, type: !390)
!2129 = !DILocalVariable(name: "nuit_field_based_flag", scope: !2117, file: !2, line: 1673, type: !390)
!2130 = !DILocalVariable(name: "counting_type", scope: !2117, file: !2, line: 1673, type: !390)
!2131 = !DILocalVariable(name: "full_timestamp_flag", scope: !2117, file: !2, line: 1673, type: !390)
!2132 = !DILocalVariable(name: "discontinuity_flag", scope: !2117, file: !2, line: 1673, type: !390)
!2133 = !DILocalVariable(name: "cnt_dropped_flag", scope: !2117, file: !2, line: 1673, type: !390)
!2134 = !DILocalVariable(name: "nframes", scope: !2117, file: !2, line: 1673, type: !390)
!2135 = !DILocalVariable(name: "seconds_value", scope: !2117, file: !2, line: 1674, type: !390)
!2136 = !DILocalVariable(name: "minutes_value", scope: !2117, file: !2, line: 1674, type: !390)
!2137 = !DILocalVariable(name: "hours_value", scope: !2117, file: !2, line: 1674, type: !390)
!2138 = !DILocalVariable(name: "seconds_flag", scope: !2117, file: !2, line: 1674, type: !390)
!2139 = !DILocalVariable(name: "minutes_flag", scope: !2117, file: !2, line: 1674, type: !390)
!2140 = !DILocalVariable(name: "hours_flag", scope: !2117, file: !2, line: 1674, type: !390)
!2141 = !DILocalVariable(name: "time_offset", scope: !2117, file: !2, line: 1674, type: !390)
!2142 = !DILocalVariable(name: "NumClockTs", scope: !2117, file: !2, line: 1675, type: !390)
!2143 = !DILocalVariable(name: "i", scope: !2117, file: !2, line: 1676, type: !390)
!2144 = !DILocalVariable(name: "cpb_removal_len", scope: !2117, file: !2, line: 1678, type: !390)
!2145 = !DILocalVariable(name: "dpb_output_len", scope: !2117, file: !2, line: 1679, type: !390)
!2146 = !DILocalVariable(name: "CpbDpbDelaysPresentFlag", scope: !2117, file: !2, line: 1681, type: !390)
!2147 = !DILocalVariable(name: "buf", scope: !2117, file: !2, line: 1683, type: !1114)
!2148 = !DILocalVariable(name: "time_offset_length", scope: !2149, file: !2, line: 1839, type: !390)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 1838, column: 9)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 1778, column: 7)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 1777, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 1772, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 1771, column: 5)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 1771, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 1746, column: 3)
!2156 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 1745, column: 7)
!2157 = !DILocation(line: 0, scope: !2117)
!2158 = !DILocation(line: 1669, column: 49, scope: !2117)
!2159 = !DILocation(line: 1685, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 1685, column: 7)
!2161 = !DILocation(line: 1685, column: 7, scope: !2117)
!2162 = !DILocation(line: 1687, column: 14, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 1686, column: 3)
!2164 = !DILocation(line: 1687, column: 5, scope: !2163)
!2165 = !DILocation(line: 1688, column: 5, scope: !2163)
!2166 = !DILocation(line: 1691, column: 9, scope: !2117)
!2167 = !DILocation(line: 1692, column: 8, scope: !2117)
!2168 = !DILocation(line: 1692, column: 25, scope: !2117)
!2169 = !DILocation(line: 1693, column: 8, scope: !2117)
!2170 = !DILocation(line: 1693, column: 21, scope: !2117)
!2171 = !DILocation(line: 1694, column: 8, scope: !2117)
!2172 = !DILocation(line: 1694, column: 24, scope: !2117)
!2173 = !DILocation(line: 1696, column: 3, scope: !2117)
!2174 = !DILocation(line: 1696, column: 10, scope: !2117)
!2175 = !DILocation(line: 1696, column: 19, scope: !2117)
!2176 = !DILocation(line: 1704, column: 53, scope: !2117)
!2177 = !DILocation(line: 1704, column: 41, scope: !2117)
!2178 = !DILocation(line: 1705, column: 31, scope: !2117)
!2179 = !DILocation(line: 1705, column: 70, scope: !2117)
!2180 = !DILocation(line: 1705, column: 102, scope: !2117)
!2181 = !DILocation(line: 1706, column: 36, scope: !2117)
!2182 = !DILocation(line: 1706, column: 70, scope: !2117)
!2183 = !DILocation(line: 1706, column: 102, scope: !2117)
!2184 = !DILocation(line: 1708, column: 7, scope: !2117)
!2185 = !DILocation(line: 1714, column: 77, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 1713, column: 7)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 1712, column: 11)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 1711, column: 5)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 1710, column: 9)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 1709, column: 3)
!2191 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 1708, column: 7)
!2192 = !DILocation(line: 1715, column: 77, scope: !2186)
!2193 = !DILocation(line: 1724, column: 73, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 1724, column: 9)
!2195 = !DILocation(line: 1720, column: 77, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 1718, column: 7)
!2197 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 1717, column: 16)
!2198 = !DILocation(line: 1719, column: 77, scope: !2196)
!2199 = !DILocation(line: 1724, column: 9, scope: !2190)
!2200 = !DILocation(line: 0, scope: !2187)
!2201 = !DILocation(line: 1727, column: 27, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 1726, column: 5)
!2203 = !DILocation(line: 1728, column: 27, scope: !2202)
!2204 = !DILocation(line: 1736, column: 20, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 1736, column: 7)
!2206 = !DILocation(line: 1736, column: 8, scope: !2205)
!2207 = !DILocation(line: 1736, column: 7, scope: !2117)
!2208 = !DILocation(line: 1742, column: 71, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 1741, column: 3)
!2210 = !DILocation(line: 1745, column: 7, scope: !2156)
!2211 = !DILocation(line: 1745, column: 7, scope: !2117)
!2212 = !DILocation(line: 1747, column: 25, scope: !2155)
!2213 = !DILocation(line: 1751, column: 5, scope: !2155)
!2214 = !DILocation(line: 1769, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 1752, column: 5)
!2216 = !DILocation(line: 1771, column: 5, scope: !2154)
!2217 = !DILocation(line: 1773, column: 31, scope: !2152)
!2218 = !DILocation(line: 1777, column: 11, scope: !2151)
!2219 = !DILocation(line: 1777, column: 11, scope: !2152)
!2220 = !DILocation(line: 1779, column: 33, scope: !2150)
!2221 = !DILocation(line: 1780, column: 33, scope: !2150)
!2222 = !DILocation(line: 1781, column: 33, scope: !2150)
!2223 = !DILocation(line: 1782, column: 33, scope: !2150)
!2224 = !DILocation(line: 1783, column: 33, scope: !2150)
!2225 = !DILocation(line: 1784, column: 33, scope: !2150)
!2226 = !DILocation(line: 1785, column: 33, scope: !2150)
!2227 = !DILocation(line: 1795, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 1795, column: 13)
!2229 = !DILocation(line: 1795, column: 13, scope: !2150)
!2230 = !DILocation(line: 1797, column: 35, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 1796, column: 9)
!2232 = !DILocation(line: 1798, column: 35, scope: !2231)
!2233 = !DILocation(line: 1805, column: 9, scope: !2231)
!2234 = !DILocation(line: 1808, column: 35, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 1807, column: 9)
!2236 = !DILocation(line: 1812, column: 15, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 1812, column: 15)
!2238 = !DILocation(line: 1812, column: 15, scope: !2235)
!2239 = !DILocation(line: 1814, column: 37, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1813, column: 11)
!2241 = !DILocation(line: 1815, column: 37, scope: !2240)
!2242 = !DILocation(line: 1820, column: 16, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 1820, column: 16)
!2244 = !DILocation(line: 1820, column: 16, scope: !2240)
!2245 = !DILocation(line: 1822, column: 39, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 1821, column: 13)
!2247 = !DILocation(line: 1823, column: 39, scope: !2246)
!2248 = !DILocation(line: 1828, column: 18, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 1828, column: 18)
!2250 = !DILocation(line: 1828, column: 18, scope: !2246)
!2251 = !DILocation(line: 0, scope: !2228)
!2252 = !DILocation(line: 1840, column: 46, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 1840, column: 15)
!2254 = !DILocation(line: 1840, column: 15, scope: !2253)
!2255 = !DILocation(line: 1840, column: 15, scope: !2149)
!2256 = !DILocation(line: 1842, column: 51, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 1842, column: 20)
!2258 = !DILocation(line: 1842, column: 20, scope: !2257)
!2259 = !DILocation(line: 1842, column: 20, scope: !2253)
!2260 = !DILocation(line: 0, scope: !2253)
!2261 = !DILocation(line: 0, scope: !2149)
!2262 = !DILocation(line: 1846, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 1846, column: 15)
!2264 = !DILocation(line: 1846, column: 15, scope: !2149)
!2265 = !DILocation(line: 1847, column: 27, scope: !2263)
!2266 = !DILocation(line: 1847, column: 13, scope: !2263)
!2267 = !DILocation(line: 1771, column: 30, scope: !2153)
!2268 = !DILocation(line: 1771, column: 16, scope: !2153)
!2269 = distinct !{!2269, !2216, !2270}
!2270 = !DILocation(line: 1855, column: 5, scope: !2154)
!2271 = !DILocation(line: 1858, column: 3, scope: !2117)
!2272 = !DILocation(line: 1862, column: 1, scope: !2117)
!2273 = distinct !DISubprogram(name: "interpret_pan_scan_rect_info", scope: !2, file: !2, line: 836, type: !1767, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2275 = !DILocalVariable(name: "payload", arg: 1, scope: !2273, file: !2, line: 836, type: !523)
!2276 = !DILocalVariable(name: "size", arg: 2, scope: !2273, file: !2, line: 836, type: !390)
!2277 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2273, file: !2, line: 836, type: !524)
!2278 = !DILocalVariable(name: "pan_scan_rect_cancel_flag", scope: !2273, file: !2, line: 838, type: !390)
!2279 = !DILocalVariable(name: "pan_scan_cnt_minus1", scope: !2273, file: !2, line: 839, type: !390)
!2280 = !DILocalVariable(name: "i", scope: !2273, file: !2, line: 839, type: !390)
!2281 = !DILocalVariable(name: "pan_scan_rect_repetition_period", scope: !2273, file: !2, line: 840, type: !390)
!2282 = !DILocalVariable(name: "pan_scan_rect_id", scope: !2273, file: !2, line: 841, type: !390)
!2283 = !DILocalVariable(name: "pan_scan_rect_left_offset", scope: !2273, file: !2, line: 841, type: !390)
!2284 = !DILocalVariable(name: "pan_scan_rect_right_offset", scope: !2273, file: !2, line: 841, type: !390)
!2285 = !DILocalVariable(name: "pan_scan_rect_top_offset", scope: !2273, file: !2, line: 842, type: !390)
!2286 = !DILocalVariable(name: "pan_scan_rect_bottom_offset", scope: !2273, file: !2, line: 842, type: !390)
!2287 = !DILocalVariable(name: "buf", scope: !2273, file: !2, line: 844, type: !1114)
!2288 = !DILocation(line: 0, scope: !2273)
!2289 = !DILocation(line: 846, column: 9, scope: !2273)
!2290 = !DILocation(line: 847, column: 8, scope: !2273)
!2291 = !DILocation(line: 847, column: 25, scope: !2273)
!2292 = !DILocation(line: 848, column: 8, scope: !2273)
!2293 = !DILocation(line: 848, column: 21, scope: !2273)
!2294 = !DILocation(line: 849, column: 8, scope: !2273)
!2295 = !DILocation(line: 849, column: 24, scope: !2273)
!2296 = !DILocation(line: 851, column: 3, scope: !2273)
!2297 = !DILocation(line: 851, column: 10, scope: !2273)
!2298 = !DILocation(line: 851, column: 19, scope: !2273)
!2299 = !DILocation(line: 853, column: 22, scope: !2273)
!2300 = !DILocation(line: 855, column: 31, scope: !2273)
!2301 = !DILocation(line: 856, column: 8, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 856, column: 7)
!2303 = !DILocation(line: 856, column: 7, scope: !2273)
!2304 = !DILocation(line: 858, column: 27, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 857, column: 3)
!2306 = !DILocation(line: 859, column: 19, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !2, line: 859, column: 5)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 859, column: 5)
!2309 = !DILocation(line: 859, column: 5, scope: !2308)
!2310 = !DILocation(line: 861, column: 37, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 860, column: 5)
!2312 = !DILocation(line: 862, column: 37, scope: !2311)
!2313 = !DILocation(line: 863, column: 37, scope: !2311)
!2314 = !DILocation(line: 864, column: 37, scope: !2311)
!2315 = !DILocation(line: 859, column: 44, scope: !2307)
!2316 = distinct !{!2316, !2309, !2317}
!2317 = !DILocation(line: 873, column: 5, scope: !2308)
!2318 = !DILocation(line: 874, column: 39, scope: !2305)
!2319 = !DILocation(line: 875, column: 3, scope: !2305)
!2320 = !DILocation(line: 877, column: 3, scope: !2273)
!2321 = !DILocation(line: 881, column: 1, scope: !2273)
!2322 = !DILocation(line: 0, scope: !1766)
!2323 = !DILocation(line: 701, column: 21, scope: !1766)
!2324 = !DILocation(line: 701, column: 3, scope: !1766)
!2325 = !DILocation(line: 703, column: 9, scope: !1778)
!2326 = !DILocation(line: 703, column: 30, scope: !1778)
!2327 = !DILocation(line: 703, column: 9, scope: !1779)
!2328 = distinct !{!2328, !2324, !2329}
!2329 = !DILocation(line: 707, column: 3, scope: !1766)
!2330 = !DILocation(line: 725, column: 1, scope: !1766)
!2331 = distinct !DISubprogram(name: "interpret_user_data_registered_itu_t_t35_info", scope: !2, file: !2, line: 790, type: !1767, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2333 = !DILocalVariable(name: "payload", arg: 1, scope: !2331, file: !2, line: 790, type: !523)
!2334 = !DILocalVariable(name: "size", arg: 2, scope: !2331, file: !2, line: 790, type: !390)
!2335 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2331, file: !2, line: 790, type: !524)
!2336 = !DILocalVariable(name: "offset", scope: !2331, file: !2, line: 792, type: !390)
!2337 = !DILocalVariable(name: "itu_t_t35_country_code", scope: !2331, file: !2, line: 793, type: !503)
!2338 = !DILocalVariable(name: "itu_t_t35_country_code_extension_byte", scope: !2331, file: !2, line: 793, type: !503)
!2339 = !DILocalVariable(name: "payload_byte", scope: !2331, file: !2, line: 793, type: !503)
!2340 = !DILocation(line: 0, scope: !2331)
!2341 = !DILocation(line: 820, column: 1, scope: !2331)
!2342 = distinct !DISubprogram(name: "interpret_user_data_unregistered_info", scope: !2, file: !2, line: 741, type: !1767, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348}
!2344 = !DILocalVariable(name: "payload", arg: 1, scope: !2342, file: !2, line: 741, type: !523)
!2345 = !DILocalVariable(name: "size", arg: 2, scope: !2342, file: !2, line: 741, type: !390)
!2346 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2342, file: !2, line: 741, type: !524)
!2347 = !DILocalVariable(name: "offset", scope: !2342, file: !2, line: 743, type: !390)
!2348 = !DILocalVariable(name: "payload_byte", scope: !2342, file: !2, line: 744, type: !503)
!2349 = !DILocation(line: 0, scope: !2342)
!2350 = !DILocation(line: 774, column: 1, scope: !2342)
!2351 = !DILocation(line: 0, scope: !1786)
!2352 = !DILocation(line: 905, column: 9, scope: !1786)
!2353 = !DILocation(line: 906, column: 8, scope: !1786)
!2354 = !DILocation(line: 906, column: 25, scope: !1786)
!2355 = !DILocation(line: 907, column: 8, scope: !1786)
!2356 = !DILocation(line: 907, column: 21, scope: !1786)
!2357 = !DILocation(line: 908, column: 8, scope: !1786)
!2358 = !DILocation(line: 908, column: 24, scope: !1786)
!2359 = !DILocation(line: 910, column: 3, scope: !1786)
!2360 = !DILocation(line: 910, column: 10, scope: !1786)
!2361 = !DILocation(line: 910, column: 19, scope: !1786)
!2362 = !DILocation(line: 912, column: 30, scope: !1786)
!2363 = !DILocation(line: 913, column: 30, scope: !1786)
!2364 = !DILocation(line: 914, column: 30, scope: !1786)
!2365 = !DILocation(line: 915, column: 30, scope: !1786)
!2366 = !DILocation(line: 917, column: 10, scope: !1786)
!2367 = !DILocation(line: 917, column: 25, scope: !1786)
!2368 = !DILocation(line: 918, column: 10, scope: !1786)
!2369 = !DILocation(line: 918, column: 29, scope: !1786)
!2370 = !DILocation(line: 927, column: 3, scope: !1786)
!2371 = !DILocation(line: 931, column: 1, scope: !1786)
!2372 = distinct !DISubprogram(name: "interpret_dec_ref_pic_marking_repetition_info", scope: !2, file: !2, line: 947, type: !521, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388}
!2374 = !DILocalVariable(name: "payload", arg: 1, scope: !2372, file: !2, line: 947, type: !523)
!2375 = !DILocalVariable(name: "size", arg: 2, scope: !2372, file: !2, line: 947, type: !390)
!2376 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2372, file: !2, line: 947, type: !524)
!2377 = !DILocalVariable(name: "pSlice", arg: 4, scope: !2372, file: !2, line: 947, type: !876)
!2378 = !DILocalVariable(name: "original_idr_flag", scope: !2372, file: !2, line: 949, type: !390)
!2379 = !DILocalVariable(name: "original_frame_num", scope: !2372, file: !2, line: 949, type: !390)
!2380 = !DILocalVariable(name: "original_field_pic_flag", scope: !2372, file: !2, line: 950, type: !390)
!2381 = !DILocalVariable(name: "original_bottom_field_flag", scope: !2372, file: !2, line: 950, type: !390)
!2382 = !DILocalVariable(name: "tmp_drpm", scope: !2372, file: !2, line: 952, type: !1005)
!2383 = !DILocalVariable(name: "old_drpm", scope: !2372, file: !2, line: 954, type: !1005)
!2384 = !DILocalVariable(name: "old_idr_flag", scope: !2372, file: !2, line: 955, type: !390)
!2385 = !DILocalVariable(name: "old_no_output_of_prior_pics_flag", scope: !2372, file: !2, line: 955, type: !390)
!2386 = !DILocalVariable(name: "old_long_term_reference_flag", scope: !2372, file: !2, line: 955, type: !390)
!2387 = !DILocalVariable(name: "old_adaptive_ref_pic_buffering_flag", scope: !2372, file: !2, line: 955, type: !390)
!2388 = !DILocalVariable(name: "buf", scope: !2372, file: !2, line: 958, type: !1114)
!2389 = !DILocation(line: 0, scope: !2372)
!2390 = !DILocation(line: 960, column: 9, scope: !2372)
!2391 = !DILocation(line: 961, column: 8, scope: !2372)
!2392 = !DILocation(line: 961, column: 25, scope: !2372)
!2393 = !DILocation(line: 962, column: 8, scope: !2372)
!2394 = !DILocation(line: 962, column: 21, scope: !2372)
!2395 = !DILocation(line: 963, column: 8, scope: !2372)
!2396 = !DILocation(line: 963, column: 24, scope: !2372)
!2397 = !DILocation(line: 965, column: 3, scope: !2372)
!2398 = !DILocation(line: 965, column: 10, scope: !2372)
!2399 = !DILocation(line: 965, column: 19, scope: !2372)
!2400 = !DILocation(line: 967, column: 27, scope: !2372)
!2401 = !DILocation(line: 968, column: 27, scope: !2372)
!2402 = !DILocation(line: 970, column: 16, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 970, column: 8)
!2404 = !DILocation(line: 970, column: 28, scope: !2403)
!2405 = !DILocation(line: 970, column: 9, scope: !2403)
!2406 = !DILocation(line: 970, column: 8, scope: !2372)
!2407 = !DILocation(line: 972, column: 31, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !2, line: 971, column: 3)
!2409 = !DILocation(line: 973, column: 10, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 973, column: 10)
!2411 = !DILocation(line: 973, column: 10, scope: !2408)
!2412 = !DILocation(line: 975, column: 36, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 974, column: 5)
!2414 = !DILocation(line: 976, column: 5, scope: !2413)
!2415 = !DILocation(line: 994, column: 22, scope: !2372)
!2416 = !DILocation(line: 995, column: 26, scope: !2372)
!2417 = !DILocation(line: 997, column: 46, scope: !2372)
!2418 = !DILocation(line: 998, column: 42, scope: !2372)
!2419 = !DILocation(line: 1003, column: 20, scope: !2372)
!2420 = !DILocation(line: 1004, column: 38, scope: !2372)
!2421 = !DILocation(line: 1006, column: 3, scope: !2372)
!2422 = !DILocation(line: 1047, column: 18, scope: !2372)
!2423 = !DILocation(line: 1047, column: 3, scope: !2372)
!2424 = !DILocation(line: 1051, column: 50, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 1048, column: 3)
!2426 = !DILocation(line: 1051, column: 39, scope: !2425)
!2427 = !DILocation(line: 1052, column: 5, scope: !2425)
!2428 = distinct !{!2428, !2423, !2429}
!2429 = !DILocation(line: 1053, column: 3, scope: !2372)
!2430 = !DILocation(line: 1056, column: 38, scope: !2372)
!2431 = !DILocation(line: 1057, column: 20, scope: !2372)
!2432 = !DILocation(line: 1058, column: 40, scope: !2372)
!2433 = !DILocation(line: 1059, column: 10, scope: !2372)
!2434 = !DILocation(line: 1059, column: 39, scope: !2372)
!2435 = !DILocation(line: 1060, column: 36, scope: !2372)
!2436 = !DILocation(line: 1063, column: 3, scope: !2372)
!2437 = !DILocation(line: 1067, column: 1, scope: !2372)
!2438 = distinct !DISubprogram(name: "interpret_spare_pic", scope: !2, file: !2, line: 196, type: !1767, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2440 = !DILocalVariable(name: "payload", arg: 1, scope: !2438, file: !2, line: 196, type: !523)
!2441 = !DILocalVariable(name: "size", arg: 2, scope: !2438, file: !2, line: 196, type: !390)
!2442 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2438, file: !2, line: 196, type: !524)
!2443 = !DILocalVariable(name: "i", scope: !2438, file: !2, line: 198, type: !390)
!2444 = !DILocalVariable(name: "x", scope: !2438, file: !2, line: 198, type: !390)
!2445 = !DILocalVariable(name: "y", scope: !2438, file: !2, line: 198, type: !390)
!2446 = !DILocalVariable(name: "buf", scope: !2438, file: !2, line: 199, type: !1114)
!2447 = !DILocalVariable(name: "bit0", scope: !2438, file: !2, line: 200, type: !390)
!2448 = !DILocalVariable(name: "bit1", scope: !2438, file: !2, line: 200, type: !390)
!2449 = !DILocalVariable(name: "bitc", scope: !2438, file: !2, line: 200, type: !390)
!2450 = !DILocalVariable(name: "no_bit0", scope: !2438, file: !2, line: 200, type: !390)
!2451 = !DILocalVariable(name: "target_frame_num", scope: !2438, file: !2, line: 201, type: !390)
!2452 = !DILocalVariable(name: "num_spare_pics", scope: !2438, file: !2, line: 202, type: !390)
!2453 = !DILocalVariable(name: "delta_spare_frame_num", scope: !2438, file: !2, line: 203, type: !390)
!2454 = !DILocalVariable(name: "CandidateSpareFrameNum", scope: !2438, file: !2, line: 203, type: !390)
!2455 = !DILocalVariable(name: "SpareFrameNum", scope: !2438, file: !2, line: 203, type: !390)
!2456 = !DILocalVariable(name: "ref_area_indicator", scope: !2438, file: !2, line: 204, type: !390)
!2457 = !DILocalVariable(name: "m", scope: !2438, file: !2, line: 206, type: !390)
!2458 = !DILocalVariable(name: "n", scope: !2438, file: !2, line: 206, type: !390)
!2459 = !DILocalVariable(name: "left", scope: !2438, file: !2, line: 206, type: !390)
!2460 = !DILocalVariable(name: "right", scope: !2438, file: !2, line: 206, type: !390)
!2461 = !DILocalVariable(name: "top", scope: !2438, file: !2, line: 206, type: !390)
!2462 = !DILocalVariable(name: "bottom", scope: !2438, file: !2, line: 206, type: !390)
!2463 = !DILocalVariable(name: "directx", scope: !2438, file: !2, line: 206, type: !390)
!2464 = !DILocalVariable(name: "directy", scope: !2438, file: !2, line: 206, type: !390)
!2465 = !DILocalVariable(name: "map", scope: !2438, file: !2, line: 207, type: !1451)
!2466 = distinct !DIAssignID()
!2467 = !DILocation(line: 0, scope: !2438)
!2468 = !DILocation(line: 207, column: 3, scope: !2438)
!2469 = !DILocation(line: 221, column: 3, scope: !2438)
!2470 = !DILocation(line: 221, column: 10, scope: !2438)
!2471 = !DILocation(line: 221, column: 19, scope: !2438)
!2472 = !DILocation(line: 226, column: 9, scope: !2438)
!2473 = !DILocation(line: 227, column: 8, scope: !2438)
!2474 = !DILocation(line: 227, column: 25, scope: !2438)
!2475 = !DILocation(line: 228, column: 8, scope: !2438)
!2476 = !DILocation(line: 228, column: 21, scope: !2438)
!2477 = !DILocation(line: 229, column: 8, scope: !2438)
!2478 = !DILocation(line: 229, column: 24, scope: !2438)
!2479 = !DILocation(line: 231, column: 22, scope: !2438)
!2480 = !DILocation(line: 237, column: 24, scope: !2438)
!2481 = !DILocation(line: 237, column: 22, scope: !2438)
!2482 = !DILocation(line: 243, column: 42, scope: !2438)
!2483 = !DILocation(line: 243, column: 49, scope: !2438)
!2484 = !DILocation(line: 243, column: 62, scope: !2438)
!2485 = !DILocation(line: 243, column: 68, scope: !2438)
!2486 = !DILocation(line: 243, column: 3, scope: !2438)
!2487 = !DILocation(line: 245, column: 14, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 245, column: 3)
!2489 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 245, column: 3)
!2490 = !DILocation(line: 245, column: 3, scope: !2489)
!2491 = !DILocation(line: 255, column: 29, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 246, column: 3)
!2493 = !DILocation(line: 261, column: 26, scope: !2492)
!2494 = !DILocation(line: 263, column: 5, scope: !2492)
!2495 = !DILocation(line: 271, column: 26, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 271, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 271, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !2, line: 264, column: 5)
!2499 = !DILocation(line: 271, column: 18, scope: !2496)
!2500 = !DILocation(line: 271, column: 7, scope: !2497)
!2501 = !DILocation(line: 272, column: 28, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 272, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !2, line: 272, column: 9)
!2504 = !DILocation(line: 266, column: 26, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 266, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 266, column: 7)
!2507 = !DILocation(line: 266, column: 18, scope: !2505)
!2508 = !DILocation(line: 266, column: 7, scope: !2506)
!2509 = !DILocation(line: 267, column: 28, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2, line: 267, column: 9)
!2511 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 267, column: 9)
!2512 = !DILocation(line: 267, column: 20, scope: !2510)
!2513 = !DILocation(line: 267, column: 9, scope: !2511)
!2514 = !DILocation(line: 268, column: 11, scope: !2510)
!2515 = !DILocation(line: 268, column: 24, scope: !2510)
!2516 = !DILocation(line: 267, column: 41, scope: !2510)
!2517 = !DILocation(line: 267, column: 34, scope: !2510)
!2518 = distinct !{!2518, !2513, !2519}
!2519 = !DILocation(line: 268, column: 26, scope: !2511)
!2520 = !DILocation(line: 266, column: 40, scope: !2505)
!2521 = !DILocation(line: 266, column: 33, scope: !2505)
!2522 = distinct !{!2522, !2508, !2523}
!2523 = !DILocation(line: 268, column: 26, scope: !2506)
!2524 = !DILocation(line: 272, column: 20, scope: !2502)
!2525 = !DILocation(line: 272, column: 9, scope: !2503)
!2526 = !DILocation(line: 274, column: 33, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 273, column: 9)
!2528 = !DILocation(line: 274, column: 26, scope: !2527)
!2529 = !DILocation(line: 274, column: 11, scope: !2527)
!2530 = !DILocation(line: 274, column: 24, scope: !2527)
!2531 = !DILocation(line: 272, column: 41, scope: !2502)
!2532 = !DILocation(line: 272, column: 34, scope: !2502)
!2533 = distinct !{!2533, !2525, !2534}
!2534 = !DILocation(line: 275, column: 9, scope: !2503)
!2535 = !DILocation(line: 271, column: 40, scope: !2496)
!2536 = !DILocation(line: 271, column: 33, scope: !2496)
!2537 = distinct !{!2537, !2500, !2538}
!2538 = !DILocation(line: 275, column: 9, scope: !2497)
!2539 = !DILocation(line: 291, column: 26, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 291, column: 7)
!2541 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 291, column: 7)
!2542 = !DILocation(line: 291, column: 18, scope: !2540)
!2543 = !DILocation(line: 291, column: 7, scope: !2541)
!2544 = !DILocation(line: 285, column: 28, scope: !2498)
!2545 = !DILocation(line: 285, column: 34, scope: !2498)
!2546 = !DILocation(line: 285, column: 40, scope: !2498)
!2547 = !DILocation(line: 284, column: 21, scope: !2498)
!2548 = !DILocation(line: 284, column: 27, scope: !2498)
!2549 = !DILocation(line: 284, column: 33, scope: !2498)
!2550 = !DILocation(line: 284, column: 39, scope: !2498)
!2551 = !DILocation(line: 292, column: 28, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !2, line: 292, column: 9)
!2553 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 292, column: 9)
!2554 = !DILocation(line: 292, column: 20, scope: !2552)
!2555 = !DILocation(line: 292, column: 9, scope: !2553)
!2556 = !DILocation(line: 295, column: 22, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 295, column: 15)
!2558 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 293, column: 9)
!2559 = !DILocation(line: 295, column: 15, scope: !2558)
!2560 = !DILocation(line: 297, column: 23, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 296, column: 11)
!2562 = !DILocation(line: 298, column: 11, scope: !2561)
!2563 = !DILocation(line: 0, scope: !2498)
!2564 = !DILocation(line: 299, column: 22, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 299, column: 15)
!2566 = !DILocation(line: 0, scope: !2565)
!2567 = !DILocation(line: 303, column: 18, scope: !2558)
!2568 = !DILocation(line: 306, column: 24, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 306, column: 16)
!2570 = !DILocation(line: 306, column: 30, scope: !2569)
!2571 = !DILocation(line: 308, column: 19, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 308, column: 17)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 307, column: 11)
!2574 = !DILocation(line: 308, column: 17, scope: !2573)
!2575 = !DILocation(line: 308, column: 28, scope: !2572)
!2576 = !DILocation(line: 308, column: 27, scope: !2572)
!2577 = !DILocation(line: 309, column: 24, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 309, column: 22)
!2579 = !DILocation(line: 309, column: 22, scope: !2572)
!2580 = !DILocation(line: 311, column: 26, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 310, column: 13)
!2582 = !DILocation(line: 315, column: 13, scope: !2581)
!2583 = !DILocation(line: 316, column: 24, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 316, column: 22)
!2585 = !DILocation(line: 316, column: 22, scope: !2578)
!2586 = !DILocation(line: 318, column: 16, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 317, column: 13)
!2588 = !DILocation(line: 322, column: 13, scope: !2587)
!2589 = !DILocation(line: 324, column: 29, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 324, column: 21)
!2591 = !DILocation(line: 324, column: 34, scope: !2590)
!2592 = !DILocation(line: 326, column: 19, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !2, line: 326, column: 17)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 325, column: 11)
!2595 = !DILocation(line: 326, column: 17, scope: !2594)
!2596 = !DILocation(line: 326, column: 29, scope: !2593)
!2597 = !DILocation(line: 326, column: 28, scope: !2593)
!2598 = !DILocation(line: 327, column: 35, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2593, file: !2, line: 327, column: 22)
!2600 = !DILocation(line: 327, column: 41, scope: !2599)
!2601 = !DILocation(line: 327, column: 47, scope: !2599)
!2602 = !DILocation(line: 327, column: 24, scope: !2599)
!2603 = !DILocation(line: 327, column: 22, scope: !2593)
!2604 = !DILocation(line: 329, column: 23, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 328, column: 13)
!2606 = !DILocation(line: 333, column: 13, scope: !2605)
!2607 = !DILocation(line: 334, column: 24, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 334, column: 22)
!2609 = !DILocation(line: 334, column: 22, scope: !2599)
!2610 = !DILocation(line: 336, column: 16, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 335, column: 13)
!2612 = !DILocation(line: 340, column: 13, scope: !2611)
!2613 = !DILocation(line: 342, column: 29, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 342, column: 21)
!2615 = !DILocation(line: 342, column: 34, scope: !2614)
!2616 = !DILocation(line: 344, column: 20, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 344, column: 18)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !2, line: 343, column: 11)
!2619 = !DILocation(line: 344, column: 18, scope: !2618)
!2620 = !DILocation(line: 344, column: 28, scope: !2617)
!2621 = !DILocation(line: 344, column: 27, scope: !2617)
!2622 = !DILocation(line: 345, column: 24, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 345, column: 22)
!2624 = !DILocation(line: 345, column: 22, scope: !2617)
!2625 = !DILocation(line: 347, column: 24, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 346, column: 13)
!2627 = !DILocation(line: 351, column: 13, scope: !2626)
!2628 = !DILocation(line: 352, column: 24, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 352, column: 22)
!2630 = !DILocation(line: 352, column: 22, scope: !2623)
!2631 = !DILocation(line: 354, column: 16, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 353, column: 13)
!2633 = !DILocation(line: 358, column: 13, scope: !2632)
!2634 = !DILocation(line: 360, column: 34, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2614, file: !2, line: 360, column: 21)
!2636 = !DILocation(line: 362, column: 19, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 362, column: 17)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 361, column: 11)
!2639 = !DILocation(line: 362, column: 17, scope: !2638)
!2640 = !DILocation(line: 362, column: 30, scope: !2637)
!2641 = !DILocation(line: 362, column: 29, scope: !2637)
!2642 = !DILocation(line: 363, column: 35, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2637, file: !2, line: 363, column: 22)
!2644 = !DILocation(line: 363, column: 42, scope: !2643)
!2645 = !DILocation(line: 363, column: 48, scope: !2643)
!2646 = !DILocation(line: 363, column: 24, scope: !2643)
!2647 = !DILocation(line: 363, column: 22, scope: !2637)
!2648 = !DILocation(line: 365, column: 24, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 364, column: 13)
!2650 = !DILocation(line: 369, column: 13, scope: !2649)
!2651 = !DILocation(line: 370, column: 24, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 370, column: 22)
!2653 = !DILocation(line: 370, column: 22, scope: !2643)
!2654 = !DILocation(line: 372, column: 16, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 371, column: 13)
!2656 = !DILocation(line: 376, column: 13, scope: !2655)
!2657 = !DILocation(line: 292, column: 41, scope: !2552)
!2658 = !DILocation(line: 292, column: 34, scope: !2552)
!2659 = distinct !{!2659, !2555, !2660}
!2660 = !DILocation(line: 380, column: 9, scope: !2553)
!2661 = !DILocation(line: 291, column: 40, scope: !2540)
!2662 = !DILocation(line: 285, column: 9, scope: !2498)
!2663 = !DILocation(line: 286, column: 12, scope: !2498)
!2664 = !DILocation(line: 286, column: 20, scope: !2498)
!2665 = !DILocation(line: 287, column: 11, scope: !2498)
!2666 = !DILocation(line: 287, column: 20, scope: !2498)
!2667 = !DILocation(line: 288, column: 15, scope: !2498)
!2668 = !DILocation(line: 289, column: 15, scope: !2498)
!2669 = !DILocation(line: 291, column: 33, scope: !2540)
!2670 = distinct !{!2670, !2543, !2671}
!2671 = !DILocation(line: 380, column: 9, scope: !2541)
!2672 = !DILocation(line: 383, column: 7, scope: !2498)
!2673 = !DILocation(line: 384, column: 7, scope: !2498)
!2674 = !DILocation(line: 245, column: 32, scope: !2488)
!2675 = distinct !{!2675, !2490, !2676}
!2676 = !DILocation(line: 388, column: 3, scope: !2489)
!2677 = !DILocation(line: 432, column: 15, scope: !2438)
!2678 = !DILocation(line: 432, column: 3, scope: !2438)
!2679 = !DILocation(line: 434, column: 3, scope: !2438)
!2680 = !DILocation(line: 435, column: 1, scope: !2438)
!2681 = !DILocation(line: 0, scope: !1823)
!2682 = !DILocation(line: 654, column: 9, scope: !1823)
!2683 = !DILocation(line: 655, column: 8, scope: !1823)
!2684 = !DILocation(line: 655, column: 25, scope: !1823)
!2685 = !DILocation(line: 656, column: 8, scope: !1823)
!2686 = !DILocation(line: 656, column: 21, scope: !1823)
!2687 = !DILocation(line: 657, column: 8, scope: !1823)
!2688 = !DILocation(line: 657, column: 24, scope: !1823)
!2689 = !DILocation(line: 659, column: 3, scope: !1823)
!2690 = !DILocation(line: 659, column: 10, scope: !1823)
!2691 = !DILocation(line: 659, column: 19, scope: !1823)
!2692 = !DILocation(line: 661, column: 27, scope: !1823)
!2693 = !DILocation(line: 662, column: 27, scope: !1823)
!2694 = !DILocation(line: 663, column: 30, scope: !1846)
!2695 = !DILocation(line: 663, column: 8, scope: !1823)
!2696 = !DILocation(line: 665, column: 27, scope: !1849)
!2697 = !DILocation(line: 666, column: 3, scope: !1849)
!2698 = !DILocation(line: 677, column: 3, scope: !1823)
!2699 = !DILocation(line: 681, column: 1, scope: !1823)
!2700 = distinct !DISubprogram(name: "interpret_subsequence_info", scope: !2, file: !2, line: 451, type: !1767, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2702 = !DILocalVariable(name: "payload", arg: 1, scope: !2700, file: !2, line: 451, type: !523)
!2703 = !DILocalVariable(name: "size", arg: 2, scope: !2700, file: !2, line: 451, type: !390)
!2704 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2700, file: !2, line: 451, type: !524)
!2705 = !DILocalVariable(name: "buf", scope: !2700, file: !2, line: 453, type: !1114)
!2706 = !DILocalVariable(name: "sub_seq_layer_num", scope: !2700, file: !2, line: 454, type: !390)
!2707 = !DILocalVariable(name: "sub_seq_id", scope: !2700, file: !2, line: 454, type: !390)
!2708 = !DILocalVariable(name: "first_ref_pic_flag", scope: !2700, file: !2, line: 454, type: !390)
!2709 = !DILocalVariable(name: "leading_non_ref_pic_flag", scope: !2700, file: !2, line: 454, type: !390)
!2710 = !DILocalVariable(name: "last_pic_flag", scope: !2700, file: !2, line: 454, type: !390)
!2711 = !DILocalVariable(name: "sub_seq_frame_num_flag", scope: !2700, file: !2, line: 455, type: !390)
!2712 = !DILocalVariable(name: "sub_seq_frame_num", scope: !2700, file: !2, line: 455, type: !390)
!2713 = !DILocation(line: 0, scope: !2700)
!2714 = !DILocation(line: 457, column: 9, scope: !2700)
!2715 = !DILocation(line: 458, column: 8, scope: !2700)
!2716 = !DILocation(line: 458, column: 25, scope: !2700)
!2717 = !DILocation(line: 459, column: 8, scope: !2700)
!2718 = !DILocation(line: 459, column: 21, scope: !2700)
!2719 = !DILocation(line: 460, column: 8, scope: !2700)
!2720 = !DILocation(line: 460, column: 24, scope: !2700)
!2721 = !DILocation(line: 462, column: 3, scope: !2700)
!2722 = !DILocation(line: 462, column: 10, scope: !2700)
!2723 = !DILocation(line: 462, column: 19, scope: !2700)
!2724 = !DILocation(line: 464, column: 30, scope: !2700)
!2725 = !DILocation(line: 465, column: 30, scope: !2700)
!2726 = !DILocation(line: 466, column: 30, scope: !2700)
!2727 = !DILocation(line: 467, column: 30, scope: !2700)
!2728 = !DILocation(line: 468, column: 30, scope: !2700)
!2729 = !DILocation(line: 469, column: 30, scope: !2700)
!2730 = !DILocation(line: 470, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 470, column: 7)
!2732 = !DILocation(line: 470, column: 7, scope: !2700)
!2733 = !DILocation(line: 472, column: 32, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 471, column: 3)
!2735 = !DILocation(line: 473, column: 3, scope: !2734)
!2736 = !DILocation(line: 489, column: 3, scope: !2700)
!2737 = !DILocation(line: 493, column: 1, scope: !2700)
!2738 = !DILocation(line: 0, scope: !1858)
!2739 = !DILocation(line: 514, column: 9, scope: !1858)
!2740 = !DILocation(line: 515, column: 8, scope: !1858)
!2741 = !DILocation(line: 515, column: 25, scope: !1858)
!2742 = !DILocation(line: 516, column: 8, scope: !1858)
!2743 = !DILocation(line: 516, column: 21, scope: !1858)
!2744 = !DILocation(line: 517, column: 8, scope: !1858)
!2745 = !DILocation(line: 517, column: 24, scope: !1858)
!2746 = !DILocation(line: 519, column: 3, scope: !1858)
!2747 = !DILocation(line: 519, column: 10, scope: !1858)
!2748 = !DILocation(line: 519, column: 19, scope: !1858)
!2749 = !DILocation(line: 521, column: 24, scope: !1858)
!2750 = !DILocation(line: 528, column: 14, scope: !1882)
!2751 = !DILocation(line: 528, column: 3, scope: !1883)
!2752 = !DILocation(line: 530, column: 32, scope: !1886)
!2753 = !DILocation(line: 531, column: 32, scope: !1886)
!2754 = !DILocation(line: 532, column: 32, scope: !1886)
!2755 = !DILocation(line: 528, column: 32, scope: !1882)
!2756 = distinct !{!2756, !2751, !2757}
!2757 = !DILocation(line: 539, column: 3, scope: !1883)
!2758 = !DILocation(line: 540, column: 3, scope: !1858)
!2759 = !DILocation(line: 541, column: 1, scope: !1858)
!2760 = distinct !DISubprogram(name: "interpret_subsequence_characteristics_info", scope: !2, file: !2, line: 557, type: !1767, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2774, !2775, !2776, !2777, !2778, !2779}
!2762 = !DILocalVariable(name: "payload", arg: 1, scope: !2760, file: !2, line: 557, type: !523)
!2763 = !DILocalVariable(name: "size", arg: 2, scope: !2760, file: !2, line: 557, type: !390)
!2764 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2760, file: !2, line: 557, type: !524)
!2765 = !DILocalVariable(name: "buf", scope: !2760, file: !2, line: 559, type: !1114)
!2766 = !DILocalVariable(name: "i", scope: !2760, file: !2, line: 560, type: !390)
!2767 = !DILocalVariable(name: "sub_seq_layer_num", scope: !2760, file: !2, line: 561, type: !390)
!2768 = !DILocalVariable(name: "sub_seq_id", scope: !2760, file: !2, line: 561, type: !390)
!2769 = !DILocalVariable(name: "duration_flag", scope: !2760, file: !2, line: 561, type: !390)
!2770 = !DILocalVariable(name: "average_rate_flag", scope: !2760, file: !2, line: 561, type: !390)
!2771 = !DILocalVariable(name: "accurate_statistics_flag", scope: !2760, file: !2, line: 561, type: !390)
!2772 = !DILocalVariable(name: "sub_seq_duration", scope: !2760, file: !2, line: 562, type: !2773)
!2773 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!2774 = !DILocalVariable(name: "average_bit_rate", scope: !2760, file: !2, line: 562, type: !2773)
!2775 = !DILocalVariable(name: "average_frame_rate", scope: !2760, file: !2, line: 562, type: !2773)
!2776 = !DILocalVariable(name: "num_referenced_subseqs", scope: !2760, file: !2, line: 563, type: !390)
!2777 = !DILocalVariable(name: "ref_sub_seq_layer_num", scope: !2760, file: !2, line: 563, type: !390)
!2778 = !DILocalVariable(name: "ref_sub_seq_id", scope: !2760, file: !2, line: 563, type: !390)
!2779 = !DILocalVariable(name: "ref_sub_seq_direction", scope: !2760, file: !2, line: 563, type: !390)
!2780 = !DILocation(line: 0, scope: !2760)
!2781 = !DILocation(line: 565, column: 9, scope: !2760)
!2782 = !DILocation(line: 566, column: 8, scope: !2760)
!2783 = !DILocation(line: 566, column: 25, scope: !2760)
!2784 = !DILocation(line: 567, column: 8, scope: !2760)
!2785 = !DILocation(line: 567, column: 21, scope: !2760)
!2786 = !DILocation(line: 568, column: 8, scope: !2760)
!2787 = !DILocation(line: 568, column: 24, scope: !2760)
!2788 = !DILocation(line: 570, column: 3, scope: !2760)
!2789 = !DILocation(line: 570, column: 10, scope: !2760)
!2790 = !DILocation(line: 570, column: 19, scope: !2760)
!2791 = !DILocation(line: 572, column: 23, scope: !2760)
!2792 = !DILocation(line: 573, column: 23, scope: !2760)
!2793 = !DILocation(line: 574, column: 23, scope: !2760)
!2794 = !DILocation(line: 583, column: 8, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 583, column: 8)
!2796 = !DILocation(line: 583, column: 8, scope: !2760)
!2797 = !DILocation(line: 585, column: 24, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 584, column: 3)
!2799 = !DILocation(line: 589, column: 3, scope: !2798)
!2800 = !DILocation(line: 591, column: 23, scope: !2760)
!2801 = !DILocation(line: 597, column: 8, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 597, column: 8)
!2803 = !DILocation(line: 597, column: 8, scope: !2760)
!2804 = !DILocation(line: 599, column: 32, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 598, column: 3)
!2806 = !DILocation(line: 600, column: 32, scope: !2805)
!2807 = !DILocation(line: 601, column: 32, scope: !2805)
!2808 = !DILocation(line: 608, column: 3, scope: !2805)
!2809 = !DILocation(line: 610, column: 29, scope: !2760)
!2810 = !DILocation(line: 616, column: 14, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 616, column: 3)
!2812 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 616, column: 3)
!2813 = !DILocation(line: 616, column: 3, scope: !2812)
!2814 = !DILocation(line: 618, column: 30, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 617, column: 3)
!2816 = !DILocation(line: 619, column: 30, scope: !2815)
!2817 = !DILocation(line: 620, column: 30, scope: !2815)
!2818 = !DILocation(line: 616, column: 40, scope: !2811)
!2819 = distinct !{!2819, !2813, !2820}
!2820 = !DILocation(line: 627, column: 3, scope: !2812)
!2821 = !DILocation(line: 629, column: 3, scope: !2760)
!2822 = !DILocation(line: 633, column: 1, scope: !2760)
!2823 = !DILocation(line: 0, scope: !1899)
!2824 = !DILocation(line: 1087, column: 9, scope: !1899)
!2825 = !DILocation(line: 1088, column: 8, scope: !1899)
!2826 = !DILocation(line: 1088, column: 25, scope: !1899)
!2827 = !DILocation(line: 1089, column: 8, scope: !1899)
!2828 = !DILocation(line: 1089, column: 21, scope: !1899)
!2829 = !DILocation(line: 1090, column: 8, scope: !1899)
!2830 = !DILocation(line: 1090, column: 24, scope: !1899)
!2831 = !DILocation(line: 1092, column: 42, scope: !1899)
!2832 = !DILocation(line: 1098, column: 3, scope: !1899)
!2833 = !DILocation(line: 1102, column: 1, scope: !1899)
!2834 = distinct !DISubprogram(name: "interpret_full_frame_freeze_release_info", scope: !2, file: !2, line: 1118, type: !1767, scopeLine: 1119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2835)
!2835 = !{!2836, !2837, !2838}
!2836 = !DILocalVariable(name: "payload", arg: 1, scope: !2834, file: !2, line: 1118, type: !523)
!2837 = !DILocalVariable(name: "size", arg: 2, scope: !2834, file: !2, line: 1118, type: !390)
!2838 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2834, file: !2, line: 1118, type: !524)
!2839 = !DILocation(line: 0, scope: !2834)
!2840 = !DILocation(line: 1131, column: 1, scope: !2834)
!2841 = !DILocation(line: 0, scope: !1919)
!2842 = !DILocation(line: 1152, column: 9, scope: !1919)
!2843 = !DILocation(line: 1153, column: 8, scope: !1919)
!2844 = !DILocation(line: 1153, column: 25, scope: !1919)
!2845 = !DILocation(line: 1154, column: 8, scope: !1919)
!2846 = !DILocation(line: 1154, column: 21, scope: !1919)
!2847 = !DILocation(line: 1155, column: 8, scope: !1919)
!2848 = !DILocation(line: 1155, column: 24, scope: !1919)
!2849 = !DILocation(line: 1157, column: 3, scope: !1919)
!2850 = !DILocation(line: 1157, column: 10, scope: !1919)
!2851 = !DILocation(line: 1157, column: 19, scope: !1919)
!2852 = !DILocation(line: 1159, column: 17, scope: !1919)
!2853 = !DILocation(line: 1165, column: 3, scope: !1919)
!2854 = !DILocation(line: 1169, column: 1, scope: !1919)
!2855 = !DILocation(line: 0, scope: !1942)
!2856 = !DILocation(line: 1190, column: 9, scope: !1942)
!2857 = !DILocation(line: 1191, column: 8, scope: !1942)
!2858 = !DILocation(line: 1191, column: 25, scope: !1942)
!2859 = !DILocation(line: 1192, column: 8, scope: !1942)
!2860 = !DILocation(line: 1192, column: 21, scope: !1942)
!2861 = !DILocation(line: 1193, column: 8, scope: !1942)
!2862 = !DILocation(line: 1193, column: 24, scope: !1942)
!2863 = !DILocation(line: 1195, column: 3, scope: !1942)
!2864 = !DILocation(line: 1195, column: 10, scope: !1942)
!2865 = !DILocation(line: 1195, column: 19, scope: !1942)
!2866 = !DILocation(line: 1197, column: 33, scope: !1942)
!2867 = !DILocation(line: 1198, column: 33, scope: !1942)
!2868 = !DILocation(line: 1205, column: 3, scope: !1942)
!2869 = !DILocation(line: 1209, column: 1, scope: !1942)
!2870 = !DILocation(line: 0, scope: !1967)
!2871 = !DILocation(line: 1231, column: 9, scope: !1967)
!2872 = !DILocation(line: 1232, column: 8, scope: !1967)
!2873 = !DILocation(line: 1232, column: 25, scope: !1967)
!2874 = !DILocation(line: 1233, column: 8, scope: !1967)
!2875 = !DILocation(line: 1233, column: 21, scope: !1967)
!2876 = !DILocation(line: 1234, column: 8, scope: !1967)
!2877 = !DILocation(line: 1234, column: 24, scope: !1967)
!2878 = !DILocation(line: 1236, column: 3, scope: !1967)
!2879 = !DILocation(line: 1236, column: 10, scope: !1967)
!2880 = !DILocation(line: 1236, column: 19, scope: !1967)
!2881 = !DILocation(line: 1238, column: 33, scope: !1967)
!2882 = !DILocation(line: 1244, column: 3, scope: !1967)
!2883 = !DILocation(line: 1248, column: 1, scope: !1967)
!2884 = distinct !DISubprogram(name: "interpret_motion_constrained_slice_group_set_info", scope: !2, file: !2, line: 1264, type: !1767, scopeLine: 1265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2886 = !DILocalVariable(name: "payload", arg: 1, scope: !2884, file: !2, line: 1264, type: !523)
!2887 = !DILocalVariable(name: "size", arg: 2, scope: !2884, file: !2, line: 1264, type: !390)
!2888 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2884, file: !2, line: 1264, type: !524)
!2889 = !DILocalVariable(name: "num_slice_groups_minus1", scope: !2884, file: !2, line: 1266, type: !390)
!2890 = !DILocalVariable(name: "slice_group_id", scope: !2884, file: !2, line: 1266, type: !390)
!2891 = !DILocalVariable(name: "exact_match_flag", scope: !2884, file: !2, line: 1266, type: !390)
!2892 = !DILocalVariable(name: "pan_scan_rect_flag", scope: !2884, file: !2, line: 1266, type: !390)
!2893 = !DILocalVariable(name: "pan_scan_rect_id", scope: !2884, file: !2, line: 1266, type: !390)
!2894 = !DILocalVariable(name: "i", scope: !2884, file: !2, line: 1267, type: !390)
!2895 = !DILocalVariable(name: "sliceGroupSize", scope: !2884, file: !2, line: 1268, type: !390)
!2896 = !DILocalVariable(name: "buf", scope: !2884, file: !2, line: 1270, type: !1114)
!2897 = !DILocation(line: 0, scope: !2884)
!2898 = !DILocation(line: 1272, column: 9, scope: !2884)
!2899 = !DILocation(line: 1273, column: 8, scope: !2884)
!2900 = !DILocation(line: 1273, column: 25, scope: !2884)
!2901 = !DILocation(line: 1274, column: 8, scope: !2884)
!2902 = !DILocation(line: 1274, column: 21, scope: !2884)
!2903 = !DILocation(line: 1275, column: 8, scope: !2884)
!2904 = !DILocation(line: 1275, column: 24, scope: !2884)
!2905 = !DILocation(line: 1277, column: 3, scope: !2884)
!2906 = !DILocation(line: 1277, column: 10, scope: !2884)
!2907 = !DILocation(line: 1277, column: 19, scope: !2884)
!2908 = !DILocation(line: 1279, column: 31, scope: !2884)
!2909 = !DILocation(line: 1280, column: 54, scope: !2884)
!2910 = !DILocation(line: 1280, column: 20, scope: !2884)
!2911 = !DILocation(line: 1286, column: 14, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1286, column: 3)
!2913 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 1286, column: 3)
!2914 = !DILocation(line: 1286, column: 3, scope: !2913)
!2915 = !DILocation(line: 1289, column: 24, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 1287, column: 3)
!2917 = !DILocation(line: 1286, column: 41, scope: !2912)
!2918 = distinct !{!2918, !2914, !2919}
!2919 = !DILocation(line: 1293, column: 3, scope: !2913)
!2920 = !DILocation(line: 1295, column: 24, scope: !2884)
!2921 = !DILocation(line: 1296, column: 24, scope: !2884)
!2922 = !DILocation(line: 1303, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 1303, column: 7)
!2924 = !DILocation(line: 1303, column: 7, scope: !2884)
!2925 = !DILocation(line: 1305, column: 24, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !2, line: 1304, column: 3)
!2927 = !DILocation(line: 1309, column: 3, scope: !2926)
!2928 = !DILocation(line: 1311, column: 3, scope: !2884)
!2929 = !DILocation(line: 1315, column: 1, scope: !2884)
!2930 = distinct !DISubprogram(name: "interpret_film_grain_characteristics_info", scope: !2, file: !2, line: 1330, type: !1767, scopeLine: 1331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2932 = !DILocalVariable(name: "payload", arg: 1, scope: !2930, file: !2, line: 1330, type: !523)
!2933 = !DILocalVariable(name: "size", arg: 2, scope: !2930, file: !2, line: 1330, type: !390)
!2934 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2930, file: !2, line: 1330, type: !524)
!2935 = !DILocalVariable(name: "film_grain_characteristics_cancel_flag", scope: !2930, file: !2, line: 1332, type: !390)
!2936 = !DILocalVariable(name: "model_id", scope: !2930, file: !2, line: 1333, type: !390)
!2937 = !DILocalVariable(name: "separate_colour_description_present_flag", scope: !2930, file: !2, line: 1333, type: !390)
!2938 = !DILocalVariable(name: "film_grain_bit_depth_luma_minus8", scope: !2930, file: !2, line: 1334, type: !390)
!2939 = !DILocalVariable(name: "film_grain_bit_depth_chroma_minus8", scope: !2930, file: !2, line: 1334, type: !390)
!2940 = !DILocalVariable(name: "film_grain_full_range_flag", scope: !2930, file: !2, line: 1334, type: !390)
!2941 = !DILocalVariable(name: "film_grain_colour_primaries", scope: !2930, file: !2, line: 1334, type: !390)
!2942 = !DILocalVariable(name: "film_grain_transfer_characteristics", scope: !2930, file: !2, line: 1334, type: !390)
!2943 = !DILocalVariable(name: "film_grain_matrix_coefficients", scope: !2930, file: !2, line: 1334, type: !390)
!2944 = !DILocalVariable(name: "blending_mode_id", scope: !2930, file: !2, line: 1335, type: !390)
!2945 = !DILocalVariable(name: "log2_scale_factor", scope: !2930, file: !2, line: 1335, type: !390)
!2946 = !DILocalVariable(name: "comp_model_present_flag", scope: !2930, file: !2, line: 1335, type: !555)
!2947 = !DILocalVariable(name: "num_intensity_intervals_minus1", scope: !2930, file: !2, line: 1336, type: !390)
!2948 = !DILocalVariable(name: "num_model_values_minus1", scope: !2930, file: !2, line: 1336, type: !390)
!2949 = !DILocalVariable(name: "intensity_interval_lower_bound", scope: !2930, file: !2, line: 1337, type: !390)
!2950 = !DILocalVariable(name: "intensity_interval_upper_bound", scope: !2930, file: !2, line: 1337, type: !390)
!2951 = !DILocalVariable(name: "comp_model_value", scope: !2930, file: !2, line: 1338, type: !390)
!2952 = !DILocalVariable(name: "film_grain_characteristics_repetition_period", scope: !2930, file: !2, line: 1339, type: !390)
!2953 = !DILocalVariable(name: "c", scope: !2930, file: !2, line: 1341, type: !390)
!2954 = !DILocalVariable(name: "i", scope: !2930, file: !2, line: 1341, type: !390)
!2955 = !DILocalVariable(name: "j", scope: !2930, file: !2, line: 1341, type: !390)
!2956 = !DILocalVariable(name: "buf", scope: !2930, file: !2, line: 1343, type: !1114)
!2957 = !DILocation(line: 0, scope: !2930)
!2958 = !DILocation(line: 1345, column: 9, scope: !2930)
!2959 = !DILocation(line: 1346, column: 8, scope: !2930)
!2960 = !DILocation(line: 1346, column: 25, scope: !2930)
!2961 = !DILocation(line: 1347, column: 8, scope: !2930)
!2962 = !DILocation(line: 1347, column: 21, scope: !2930)
!2963 = !DILocation(line: 1348, column: 8, scope: !2930)
!2964 = !DILocation(line: 1348, column: 24, scope: !2930)
!2965 = !DILocation(line: 1350, column: 44, scope: !2930)
!2966 = !DILocation(line: 1354, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2930, file: !2, line: 1354, column: 6)
!2968 = !DILocation(line: 1354, column: 6, scope: !2930)
!2969 = !DILocation(line: 1357, column: 51, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1355, column: 3)
!2971 = !DILocation(line: 1358, column: 51, scope: !2970)
!2972 = !DILocation(line: 1363, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 1363, column: 9)
!2974 = !DILocation(line: 1363, column: 9, scope: !2970)
!2975 = !DILocation(line: 1365, column: 51, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 1364, column: 5)
!2977 = !DILocation(line: 1366, column: 51, scope: !2976)
!2978 = !DILocation(line: 1367, column: 51, scope: !2976)
!2979 = !DILocation(line: 1368, column: 51, scope: !2976)
!2980 = !DILocation(line: 1369, column: 51, scope: !2976)
!2981 = !DILocation(line: 1370, column: 51, scope: !2976)
!2982 = !DILocation(line: 1379, column: 5, scope: !2976)
!2983 = !DILocation(line: 1380, column: 51, scope: !2970)
!2984 = !DILocation(line: 1381, column: 51, scope: !2970)
!2985 = !DILocation(line: 1388, column: 51, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1387, column: 5)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 1386, column: 5)
!2988 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 1386, column: 5)
!2989 = !DILocation(line: 1394, column: 11, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !2, line: 1394, column: 11)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1393, column: 5)
!2992 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 1393, column: 5)
!2993 = !DILocation(line: 1394, column: 11, scope: !2991)
!2994 = !DILocation(line: 1396, column: 51, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 1395, column: 7)
!2996 = !DILocation(line: 1397, column: 51, scope: !2995)
!2997 = !DILocation(line: 1402, column: 23, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !2, line: 1402, column: 9)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 1402, column: 9)
!3000 = !DILocation(line: 1402, column: 9, scope: !2999)
!3001 = !DILocation(line: 1404, column: 51, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 1403, column: 9)
!3003 = !DILocation(line: 1405, column: 51, scope: !3002)
!3004 = !DILocation(line: 1402, column: 60, scope: !2998)
!3005 = distinct !{!3005, !3000, !3006}
!3006 = !DILocation(line: 1417, column: 9, scope: !2999)
!3007 = !DILocation(line: 1410, column: 11, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3002, file: !2, line: 1410, column: 11)
!3009 = !DILocation(line: 1412, column: 51, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !2, line: 1411, column: 11)
!3011 = distinct !DILexicalBlock(scope: !3008, file: !2, line: 1410, column: 11)
!3012 = !DILocation(line: 1410, column: 54, scope: !3011)
!3013 = !DILocation(line: 1410, column: 25, scope: !3011)
!3014 = distinct !{!3014, !3007, !3015}
!3015 = !DILocation(line: 1416, column: 11, scope: !3008)
!3016 = !DILocation(line: 1419, column: 52, scope: !2970)
!3017 = !DILocation(line: 1423, column: 3, scope: !2970)
!3018 = !DILocation(line: 1425, column: 3, scope: !2930)
!3019 = !DILocation(line: 1429, column: 1, scope: !2930)
!3020 = !DILocation(line: 0, scope: !1994)
!3021 = !DILocation(line: 1451, column: 9, scope: !1994)
!3022 = !DILocation(line: 1452, column: 8, scope: !1994)
!3023 = !DILocation(line: 1452, column: 25, scope: !1994)
!3024 = !DILocation(line: 1453, column: 8, scope: !1994)
!3025 = !DILocation(line: 1453, column: 21, scope: !1994)
!3026 = !DILocation(line: 1454, column: 8, scope: !1994)
!3027 = !DILocation(line: 1454, column: 24, scope: !1994)
!3028 = !DILocation(line: 1456, column: 59, scope: !1994)
!3029 = !DILocation(line: 1460, column: 7, scope: !2014)
!3030 = !DILocation(line: 1460, column: 6, scope: !1994)
!3031 = !DILocation(line: 1462, column: 61, scope: !2017)
!3032 = !DILocation(line: 1463, column: 61, scope: !2017)
!3033 = !DILocation(line: 1464, column: 61, scope: !2017)
!3034 = !DILocation(line: 1470, column: 3, scope: !2017)
!3035 = !DILocation(line: 1472, column: 3, scope: !1994)
!3036 = !DILocation(line: 1476, column: 1, scope: !1994)
!3037 = distinct !DISubprogram(name: "interpret_stereo_video_info_info", scope: !2, file: !2, line: 1491, type: !1767, scopeLine: 1492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3039 = !DILocalVariable(name: "payload", arg: 1, scope: !3037, file: !2, line: 1491, type: !523)
!3040 = !DILocalVariable(name: "size", arg: 2, scope: !3037, file: !2, line: 1491, type: !390)
!3041 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !3037, file: !2, line: 1491, type: !524)
!3042 = !DILocalVariable(name: "field_views_flags", scope: !3037, file: !2, line: 1493, type: !390)
!3043 = !DILocalVariable(name: "top_field_is_left_view_flag", scope: !3037, file: !2, line: 1494, type: !390)
!3044 = !DILocalVariable(name: "current_frame_is_left_view_flag", scope: !3037, file: !2, line: 1494, type: !390)
!3045 = !DILocalVariable(name: "next_frame_is_second_view_flag", scope: !3037, file: !2, line: 1494, type: !390)
!3046 = !DILocalVariable(name: "left_view_self_contained_flag", scope: !3037, file: !2, line: 1495, type: !390)
!3047 = !DILocalVariable(name: "right_view_self_contained_flag", scope: !3037, file: !2, line: 1496, type: !390)
!3048 = !DILocalVariable(name: "buf", scope: !3037, file: !2, line: 1498, type: !1114)
!3049 = !DILocation(line: 0, scope: !3037)
!3050 = !DILocation(line: 1500, column: 9, scope: !3037)
!3051 = !DILocation(line: 1501, column: 8, scope: !3037)
!3052 = !DILocation(line: 1501, column: 25, scope: !3037)
!3053 = !DILocation(line: 1502, column: 8, scope: !3037)
!3054 = !DILocation(line: 1502, column: 21, scope: !3037)
!3055 = !DILocation(line: 1503, column: 8, scope: !3037)
!3056 = !DILocation(line: 1503, column: 24, scope: !3037)
!3057 = !DILocation(line: 1505, column: 23, scope: !3037)
!3058 = !DILocation(line: 1509, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1509, column: 7)
!3060 = !DILocation(line: 1509, column: 7, scope: !3037)
!3061 = !DILocation(line: 1518, column: 43, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 1517, column: 3)
!3063 = !DILocation(line: 0, scope: !3059)
!3064 = !DILocation(line: 1526, column: 43, scope: !3037)
!3065 = !DILocation(line: 1527, column: 43, scope: !3037)
!3066 = !DILocation(line: 1533, column: 3, scope: !3037)
!3067 = !DILocation(line: 1537, column: 1, scope: !3037)
!3068 = distinct !DISubprogram(name: "interpret_tone_mapping", scope: !2, file: !2, line: 1986, type: !1767, scopeLine: 1987, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3092, !3093, !3094, !3095, !3096, !3101, !3106}
!3070 = !DILocalVariable(name: "payload", arg: 1, scope: !3068, file: !2, line: 1986, type: !523)
!3071 = !DILocalVariable(name: "size", arg: 2, scope: !3068, file: !2, line: 1986, type: !390)
!3072 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !3068, file: !2, line: 1986, type: !524)
!3073 = !DILocalVariable(name: "seiToneMappingTmp", scope: !3068, file: !2, line: 1988, type: !3074)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "tone_mapping_struct_tmp", file: !2, line: 1984, baseType: !3075)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 1964, size: 393536, elements: !3076)
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3089, !3090, !3091}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_id", scope: !3075, file: !2, line: 1966, baseType: !414, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_cancel_flag", scope: !3075, file: !2, line: 1967, baseType: !505, size: 8, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_repetition_period", scope: !3075, file: !2, line: 1968, baseType: !414, size: 32, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "coded_data_bit_depth", scope: !3075, file: !2, line: 1969, baseType: !505, size: 8, offset: 96)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sei_bit_depth", scope: !3075, file: !2, line: 1970, baseType: !505, size: 8, offset: 104)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "model_id", scope: !3075, file: !2, line: 1971, baseType: !414, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !3075, file: !2, line: 1973, baseType: !390, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !3075, file: !2, line: 1974, baseType: !390, size: 32, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sigmoid_midpoint", scope: !3075, file: !2, line: 1976, baseType: !390, size: 32, offset: 224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sigmoid_width", scope: !3075, file: !2, line: 1977, baseType: !390, size: 32, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "start_of_coded_interval", scope: !3075, file: !2, line: 1979, baseType: !3088, size: 131072, offset: 288)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 131072, elements: !1633)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "num_pivots", scope: !3075, file: !2, line: 1981, baseType: !390, size: 32, offset: 131360)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "coded_pivot_value", scope: !3075, file: !2, line: 1982, baseType: !3088, size: 131072, offset: 131392)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sei_pivot_value", scope: !3075, file: !2, line: 1983, baseType: !3088, size: 131072, offset: 262464)
!3092 = !DILocalVariable(name: "buf", scope: !3068, file: !2, line: 1989, type: !1114)
!3093 = !DILocalVariable(name: "i", scope: !3068, file: !2, line: 1990, type: !390)
!3094 = !DILocalVariable(name: "max_coded_num", scope: !3068, file: !2, line: 1990, type: !390)
!3095 = !DILocalVariable(name: "max_output_num", scope: !3068, file: !2, line: 1990, type: !390)
!3096 = !DILocalVariable(name: "j", scope: !3097, file: !2, line: 2079, type: !390)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !2, line: 2078, column: 5)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 2077, column: 9)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 2012, column: 3)
!3100 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 2011, column: 7)
!3101 = !DILocalVariable(name: "tmp", scope: !3102, file: !2, line: 2104, type: !510)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !2, line: 2103, column: 9)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 2102, column: 9)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2102, column: 9)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !2, line: 2089, column: 7)
!3106 = !DILocalVariable(name: "slope", scope: !3107, file: !2, line: 2124, type: !510)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 2123, column: 9)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !2, line: 2122, column: 9)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2122, column: 9)
!3110 = distinct !DIAssignID()
!3111 = !DILocation(line: 0, scope: !3068)
!3112 = !DILocation(line: 1988, column: 3, scope: !3068)
!3113 = !DILocation(line: 1992, column: 3, scope: !3068)
!3114 = distinct !DIAssignID()
!3115 = distinct !DIAssignID()
!3116 = !DILocation(line: 1994, column: 9, scope: !3068)
!3117 = !DILocation(line: 1995, column: 8, scope: !3068)
!3118 = !DILocation(line: 1995, column: 25, scope: !3068)
!3119 = !DILocation(line: 1996, column: 8, scope: !3068)
!3120 = !DILocation(line: 1996, column: 21, scope: !3068)
!3121 = !DILocation(line: 1997, column: 8, scope: !3068)
!3122 = !DILocation(line: 1997, column: 24, scope: !3068)
!3123 = !DILocation(line: 1999, column: 35, scope: !3068)
!3124 = !DILocation(line: 1999, column: 33, scope: !3068)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 2000, column: 60, scope: !3068)
!3127 = !DILocation(line: 2000, column: 44, scope: !3068)
!3128 = !DILocation(line: 2000, column: 21, scope: !3068)
!3129 = !DILocation(line: 2000, column: 42, scope: !3068)
!3130 = distinct !DIAssignID()
!3131 = !DILocation(line: 2011, column: 8, scope: !3100)
!3132 = !DILocation(line: 2011, column: 7, scope: !3068)
!3133 = !DILocation(line: 2013, column: 53, scope: !3099)
!3134 = !DILocation(line: 2013, column: 23, scope: !3099)
!3135 = !DILocation(line: 2013, column: 51, scope: !3099)
!3136 = distinct !DIAssignID()
!3137 = !DILocation(line: 2014, column: 68, scope: !3099)
!3138 = !DILocation(line: 2014, column: 53, scope: !3099)
!3139 = !DILocation(line: 2014, column: 23, scope: !3099)
!3140 = !DILocation(line: 2014, column: 51, scope: !3099)
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 2015, column: 68, scope: !3099)
!3143 = !DILocation(line: 2015, column: 53, scope: !3099)
!3144 = !DILocation(line: 2015, column: 23, scope: !3099)
!3145 = !DILocation(line: 2015, column: 51, scope: !3099)
!3146 = distinct !DIAssignID()
!3147 = !DILocation(line: 2016, column: 53, scope: !3099)
!3148 = !DILocation(line: 2016, column: 23, scope: !3099)
!3149 = !DILocation(line: 2016, column: 51, scope: !3099)
!3150 = distinct !DIAssignID()
!3151 = !DILocation(line: 2025, column: 25, scope: !3099)
!3152 = !DILocation(line: 2025, column: 23, scope: !3099)
!3153 = !DILocation(line: 2026, column: 25, scope: !3099)
!3154 = !DILocation(line: 2026, column: 23, scope: !3099)
!3155 = !DILocation(line: 2028, column: 9, scope: !3099)
!3156 = !DILocation(line: 2046, column: 18, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !2, line: 2046, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !2, line: 2046, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 2045, column: 5)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 2044, column: 14)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !2, line: 2036, column: 14)
!3162 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 2028, column: 9)
!3163 = !DILocation(line: 2046, column: 7, scope: !3158)
!3164 = distinct !DIAssignID()
!3165 = distinct !DIAssignID()
!3166 = !DILocation(line: 2043, column: 5, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 2037, column: 5)
!3168 = !DILocation(line: 2048, column: 56, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 2047, column: 7)
!3170 = !DILocation(line: 2048, column: 9, scope: !3169)
!3171 = !DILocation(line: 2048, column: 54, scope: !3169)
!3172 = !DILocation(line: 2046, column: 36, scope: !3157)
!3173 = distinct !{!3173, !3163, !3174}
!3174 = !DILocation(line: 2052, column: 7, scope: !3158)
!3175 = !DILocation(line: 2056, column: 38, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !2, line: 2055, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 2054, column: 14)
!3178 = !DILocation(line: 2056, column: 25, scope: !3176)
!3179 = !DILocation(line: 2056, column: 36, scope: !3176)
!3180 = distinct !DIAssignID()
!3181 = !DILocation(line: 2060, column: 25, scope: !3176)
!3182 = !DILocation(line: 2060, column: 46, scope: !3176)
!3183 = distinct !DIAssignID()
!3184 = !DILocation(line: 2061, column: 25, scope: !3176)
!3185 = !DILocation(line: 2061, column: 44, scope: !3176)
!3186 = distinct !DIAssignID()
!3187 = !DILocation(line: 2062, column: 90, scope: !3176)
!3188 = !DILocation(line: 2062, column: 71, scope: !3176)
!3189 = !DILocation(line: 2062, column: 7, scope: !3176)
!3190 = !DILocation(line: 2062, column: 75, scope: !3176)
!3191 = !DILocation(line: 2063, column: 89, scope: !3176)
!3192 = !DILocation(line: 2063, column: 59, scope: !3176)
!3193 = !DILocation(line: 2063, column: 69, scope: !3176)
!3194 = !DILocation(line: 2063, column: 7, scope: !3176)
!3195 = !DILocation(line: 2063, column: 73, scope: !3176)
!3196 = !DILocation(line: 2065, column: 19, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 2065, column: 7)
!3198 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 2065, column: 7)
!3199 = !DILocation(line: 2065, column: 7, scope: !3198)
!3200 = !DILocation(line: 2067, column: 50, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !2, line: 2066, column: 7)
!3202 = !DILocation(line: 2067, column: 9, scope: !3201)
!3203 = !DILocation(line: 2067, column: 48, scope: !3201)
!3204 = !DILocation(line: 2068, column: 48, scope: !3201)
!3205 = !DILocation(line: 2068, column: 9, scope: !3201)
!3206 = !DILocation(line: 2068, column: 46, scope: !3201)
!3207 = !DILocation(line: 2065, column: 54, scope: !3197)
!3208 = distinct !{!3208, !3199, !3209}
!3209 = !DILocation(line: 2072, column: 7, scope: !3198)
!3210 = !DILocation(line: 0, scope: !3162)
!3211 = !DILocation(line: 2077, column: 27, scope: !3098)
!3212 = !DILocation(line: 2077, column: 38, scope: !3098)
!3213 = !DILocation(line: 2077, column: 9, scope: !3099)
!3214 = !DILocation(line: 2080, column: 14, scope: !3097)
!3215 = !DILocation(line: 2080, column: 49, scope: !3097)
!3216 = !DILocation(line: 2081, column: 77, scope: !3097)
!3217 = !DILocation(line: 2081, column: 14, scope: !3097)
!3218 = !DILocation(line: 2081, column: 30, scope: !3097)
!3219 = !DILocation(line: 2081, column: 57, scope: !3097)
!3220 = !DILocation(line: 2082, column: 71, scope: !3097)
!3221 = !DILocation(line: 2082, column: 14, scope: !3097)
!3222 = !DILocation(line: 2082, column: 30, scope: !3097)
!3223 = !DILocation(line: 2082, column: 51, scope: !3097)
!3224 = !DILocation(line: 2083, column: 64, scope: !3097)
!3225 = !DILocation(line: 2083, column: 14, scope: !3097)
!3226 = !DILocation(line: 2083, column: 30, scope: !3097)
!3227 = !DILocation(line: 2083, column: 44, scope: !3097)
!3228 = !DILocation(line: 2084, column: 59, scope: !3097)
!3229 = !DILocation(line: 2084, column: 14, scope: !3097)
!3230 = !DILocation(line: 2084, column: 30, scope: !3097)
!3231 = !DILocation(line: 2084, column: 39, scope: !3097)
!3232 = !DILocation(line: 2085, column: 14, scope: !3097)
!3233 = !DILocation(line: 2085, column: 30, scope: !3097)
!3234 = !DILocation(line: 2085, column: 36, scope: !3097)
!3235 = !DILocation(line: 2088, column: 7, scope: !3097)
!3236 = !DILocation(line: 0, scope: !3097)
!3237 = !DILocation(line: 2122, column: 20, scope: !3108)
!3238 = !DILocation(line: 2122, column: 9, scope: !3109)
!3239 = !DILocation(line: 2124, column: 76, scope: !3107)
!3240 = !DILocation(line: 2124, column: 156, scope: !3107)
!3241 = !DILocation(line: 2102, column: 21, scope: !3103)
!3242 = !DILocation(line: 2102, column: 9, scope: !3104)
!3243 = !DILocation(line: 2091, column: 20, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !2, line: 2091, column: 9)
!3245 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2091, column: 9)
!3246 = !DILocation(line: 0, scope: !3105)
!3247 = !DILocation(line: 2091, column: 9, scope: !3245)
!3248 = !DILocation(line: 2092, column: 18, scope: !3244)
!3249 = !DILocation(line: 2092, column: 34, scope: !3244)
!3250 = !DILocation(line: 2092, column: 11, scope: !3244)
!3251 = !DILocation(line: 2092, column: 41, scope: !3244)
!3252 = !DILocation(line: 2091, column: 52, scope: !3244)
!3253 = distinct !{!3253, !3254}
!3254 = !{!"llvm.loop.unroll.disable"}
!3255 = !DILocation(line: 2094, column: 49, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 2094, column: 9)
!3257 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2094, column: 9)
!3258 = !DILocation(line: 2094, column: 9, scope: !3257)
!3259 = !DILocation(line: 2095, column: 105, scope: !3256)
!3260 = !DILocation(line: 2095, column: 43, scope: !3256)
!3261 = !DILocation(line: 2095, column: 18, scope: !3256)
!3262 = !DILocation(line: 2095, column: 34, scope: !3256)
!3263 = !DILocation(line: 2095, column: 11, scope: !3256)
!3264 = !DILocation(line: 2095, column: 41, scope: !3256)
!3265 = !DILocation(line: 2094, scope: !3257)
!3266 = distinct !{!3266, !3247, !3267}
!3267 = !DILocation(line: 2092, column: 43, scope: !3245)
!3268 = !DILocation(line: 2097, column: 46, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !2, line: 2097, column: 9)
!3270 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2097, column: 9)
!3271 = !DILocation(line: 2097, column: 9, scope: !3270)
!3272 = !DILocation(line: 2098, column: 18, scope: !3269)
!3273 = !DILocation(line: 2098, column: 34, scope: !3269)
!3274 = !DILocation(line: 2098, column: 11, scope: !3269)
!3275 = !DILocation(line: 2098, column: 41, scope: !3269)
!3276 = !DILocation(line: 2097, column: 63, scope: !3269)
!3277 = distinct !{!3277, !3254}
!3278 = distinct !{!3278, !3258, !3279}
!3279 = !DILocation(line: 2095, column: 164, scope: !3257)
!3280 = distinct !{!3280, !3271, !3281}
!3281 = !DILocation(line: 2098, column: 71, scope: !3270)
!3282 = !DILocation(line: 2104, column: 38, scope: !3102)
!3283 = !DILocation(line: 2104, column: 37, scope: !3102)
!3284 = !DILocation(line: 2104, column: 84, scope: !3102)
!3285 = !DILocation(line: 2104, column: 30, scope: !3102)
!3286 = !DILocation(line: 2104, column: 28, scope: !3102)
!3287 = !DILocation(line: 0, scope: !3102)
!3288 = !DILocation(line: 2105, column: 79, scope: !3102)
!3289 = !DILocation(line: 2105, column: 85, scope: !3102)
!3290 = !DILocation(line: 2105, column: 43, scope: !3102)
!3291 = !DILocation(line: 2105, column: 18, scope: !3102)
!3292 = !DILocation(line: 2105, column: 34, scope: !3102)
!3293 = !DILocation(line: 2105, column: 11, scope: !3102)
!3294 = !DILocation(line: 2105, column: 41, scope: !3102)
!3295 = !DILocation(line: 2102, column: 39, scope: !3103)
!3296 = distinct !{!3296, !3242, !3297}
!3297 = !DILocation(line: 2106, column: 9, scope: !3104)
!3298 = !DILocation(line: 2109, column: 31, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 2109, column: 13)
!3300 = !DILocation(line: 2109, column: 15, scope: !3299)
!3301 = !DILocation(line: 2109, column: 13, scope: !3105)
!3302 = !DILocation(line: 2111, column: 22, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 2111, column: 11)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !2, line: 2111, column: 11)
!3305 = distinct !DILexicalBlock(scope: !3299, file: !2, line: 2110, column: 9)
!3306 = !DILocation(line: 2113, column: 20, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !2, line: 2113, column: 13)
!3308 = distinct !DILexicalBlock(scope: !3303, file: !2, line: 2112, column: 11)
!3309 = !DILocation(line: 2111, column: 11, scope: !3304)
!3310 = !DILocation(line: 2113, scope: !3307)
!3311 = distinct !{!3311, !3309, !3312}
!3312 = !DILocation(line: 2117, column: 11, scope: !3304)
!3313 = !DILocation(line: 2113, column: 67, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3307, file: !2, line: 2113, column: 13)
!3315 = !DILocation(line: 2113, column: 13, scope: !3307)
!3316 = !DILocation(line: 2115, column: 22, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !2, line: 2114, column: 13)
!3318 = !DILocation(line: 2115, column: 38, scope: !3317)
!3319 = !DILocation(line: 2115, column: 15, scope: !3317)
!3320 = !DILocation(line: 2115, column: 45, scope: !3317)
!3321 = !DILocation(line: 2113, column: 117, scope: !3314)
!3322 = distinct !{!3322, !3254}
!3323 = distinct !{!3323, !3315, !3324}
!3324 = !DILocation(line: 2116, column: 13, scope: !3307)
!3325 = !DILocation(line: 2118, column: 43, scope: !3305)
!3326 = !DILocation(line: 2118, column: 18, scope: !3305)
!3327 = !DILocation(line: 2118, column: 34, scope: !3305)
!3328 = !DILocation(line: 2118, column: 11, scope: !3305)
!3329 = !DILocation(line: 2118, column: 41, scope: !3305)
!3330 = !DILocation(line: 2119, column: 9, scope: !3305)
!3331 = distinct !{!3331, !3238, !3332}
!3332 = !DILocation(line: 2129, column: 9, scope: !3109)
!3333 = !DILocation(line: 2124, column: 70, scope: !3107)
!3334 = !DILocation(line: 2124, column: 35, scope: !3107)
!3335 = !DILocation(line: 2124, column: 74, scope: !3107)
!3336 = !DILocation(line: 2124, column: 26, scope: !3107)
!3337 = !DILocation(line: 2124, column: 115, scope: !3107)
!3338 = !DILocation(line: 2124, column: 155, scope: !3107)
!3339 = !DILocation(line: 2124, column: 114, scope: !3107)
!3340 = !DILocation(line: 2124, column: 113, scope: !3107)
!3341 = !DILocation(line: 0, scope: !3107)
!3342 = !DILocation(line: 2125, column: 60, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !2, line: 2125, column: 11)
!3344 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 2125, column: 11)
!3345 = !DILocation(line: 2125, column: 11, scope: !3344)
!3346 = !DILocation(line: 2127, column: 147, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 2126, column: 11)
!3348 = !DILocation(line: 2127, column: 94, scope: !3347)
!3349 = !DILocation(line: 2127, column: 92, scope: !3347)
!3350 = !DILocation(line: 2127, column: 45, scope: !3347)
!3351 = !DILocation(line: 2127, column: 20, scope: !3347)
!3352 = !DILocation(line: 2127, column: 36, scope: !3347)
!3353 = !DILocation(line: 2127, column: 13, scope: !3347)
!3354 = !DILocation(line: 2127, column: 43, scope: !3347)
!3355 = !DILocation(line: 2125, column: 106, scope: !3343)
!3356 = !DILocation(line: 2127, column: 102, scope: !3347)
!3357 = distinct !{!3357, !3345, !3358}
!3358 = !DILocation(line: 2128, column: 11, scope: !3344)
!3359 = !DILocation(line: 2138, column: 3, scope: !3068)
!3360 = !DILocation(line: 2139, column: 1, scope: !3068)
!3361 = distinct !DISubprogram(name: "interpret_post_filter_hints_info", scope: !2, file: !2, line: 2195, type: !1767, scopeLine: 2196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3363 = !DILocalVariable(name: "payload", arg: 1, scope: !3361, file: !2, line: 2195, type: !523)
!3364 = !DILocalVariable(name: "size", arg: 2, scope: !3361, file: !2, line: 2195, type: !390)
!3365 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !3361, file: !2, line: 2195, type: !524)
!3366 = !DILocalVariable(name: "buf", scope: !3361, file: !2, line: 2197, type: !1114)
!3367 = !DILocalVariable(name: "filter_hint_size_y", scope: !3361, file: !2, line: 2198, type: !414)
!3368 = !DILocalVariable(name: "filter_hint_size_x", scope: !3361, file: !2, line: 2198, type: !414)
!3369 = !DILocalVariable(name: "filter_hint_type", scope: !3361, file: !2, line: 2198, type: !414)
!3370 = !DILocalVariable(name: "color_component", scope: !3361, file: !2, line: 2198, type: !414)
!3371 = !DILocalVariable(name: "cx", scope: !3361, file: !2, line: 2198, type: !414)
!3372 = !DILocalVariable(name: "cy", scope: !3361, file: !2, line: 2198, type: !414)
!3373 = !DILocalVariable(name: "additional_extension_flag", scope: !3361, file: !2, line: 2198, type: !414)
!3374 = !DILocalVariable(name: "filter_hint", scope: !3361, file: !2, line: 2199, type: !794)
!3375 = distinct !DIAssignID()
!3376 = !DILocation(line: 0, scope: !3361)
!3377 = !DILocation(line: 2199, column: 3, scope: !3361)
!3378 = !DILocation(line: 2201, column: 9, scope: !3361)
!3379 = !DILocation(line: 2202, column: 8, scope: !3361)
!3380 = !DILocation(line: 2202, column: 25, scope: !3361)
!3381 = !DILocation(line: 2203, column: 8, scope: !3361)
!3382 = !DILocation(line: 2203, column: 21, scope: !3361)
!3383 = !DILocation(line: 2204, column: 8, scope: !3361)
!3384 = !DILocation(line: 2204, column: 24, scope: !3361)
!3385 = !DILocation(line: 2206, column: 3, scope: !3361)
!3386 = !DILocation(line: 2206, column: 10, scope: !3361)
!3387 = !DILocation(line: 2206, column: 19, scope: !3361)
!3388 = !DILocation(line: 2208, column: 24, scope: !3361)
!3389 = !DILocation(line: 2209, column: 24, scope: !3361)
!3390 = !DILocation(line: 2210, column: 24, scope: !3361)
!3391 = !DILocation(line: 2212, column: 3, scope: !3361)
!3392 = !DILocation(line: 2215, column: 21, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 2215, column: 5)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !2, line: 2215, column: 5)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 2214, column: 3)
!3396 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 2214, column: 3)
!3397 = !DILocation(line: 2215, column: 5, scope: !3394)
!3398 = !DILocation(line: 2216, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 2216, column: 7)
!3400 = !DILocation(line: 2217, column: 48, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3399, file: !2, line: 2216, column: 7)
!3402 = !DILocation(line: 2217, column: 9, scope: !3401)
!3403 = !DILocation(line: 2217, column: 46, scope: !3401)
!3404 = !DILocation(line: 2216, column: 48, scope: !3401)
!3405 = !DILocation(line: 2216, column: 23, scope: !3401)
!3406 = distinct !{!3406, !3398, !3407}
!3407 = !DILocation(line: 2217, column: 76, scope: !3399)
!3408 = !DILocation(line: 2215, column: 46, scope: !3393)
!3409 = distinct !{!3409, !3397, !3410}
!3410 = !DILocation(line: 2217, column: 76, scope: !3394)
!3411 = !DILocation(line: 2219, column: 31, scope: !3361)
!3412 = !DILocation(line: 2236, column: 18, scope: !3361)
!3413 = !DILocation(line: 2236, column: 3, scope: !3361)
!3414 = !DILocation(line: 2237, column: 3, scope: !3361)
!3415 = !DILocation(line: 2238, column: 1, scope: !3361)
!3416 = distinct !DISubprogram(name: "interpret_frame_packing_arrangement_info", scope: !2, file: !2, line: 1876, type: !1767, scopeLine: 1877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3443}
!3418 = !DILocalVariable(name: "payload", arg: 1, scope: !3416, file: !2, line: 1876, type: !523)
!3419 = !DILocalVariable(name: "size", arg: 2, scope: !3416, file: !2, line: 1876, type: !390)
!3420 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !3416, file: !2, line: 1876, type: !524)
!3421 = !DILocalVariable(name: "seiFramePackingArrangement", scope: !3416, file: !2, line: 1878, type: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_packing_arrangement_information_struct", file: !453, line: 109, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 89, size: 480, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_id", scope: !3423, file: !453, line: 91, baseType: !414, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_cancel_flag", scope: !3423, file: !453, line: 92, baseType: !390, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_type", scope: !3423, file: !453, line: 93, baseType: !505, size: 8, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "quincunx_sampling_flag", scope: !3423, file: !453, line: 94, baseType: !390, size: 32, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "content_interpretation_type", scope: !3423, file: !453, line: 95, baseType: !505, size: 8, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "spatial_flipping_flag", scope: !3423, file: !453, line: 96, baseType: !390, size: 32, offset: 160)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "frame0_flipped_flag", scope: !3423, file: !453, line: 97, baseType: !390, size: 32, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "field_views_flag", scope: !3423, file: !453, line: 98, baseType: !390, size: 32, offset: 224)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "current_frame_is_frame0_flag", scope: !3423, file: !453, line: 99, baseType: !390, size: 32, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "frame0_self_contained_flag", scope: !3423, file: !453, line: 100, baseType: !390, size: 32, offset: 288)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "frame1_self_contained_flag", scope: !3423, file: !453, line: 101, baseType: !390, size: 32, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "frame0_grid_position_x", scope: !3423, file: !453, line: 102, baseType: !505, size: 8, offset: 352)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "frame0_grid_position_y", scope: !3423, file: !453, line: 103, baseType: !505, size: 8, offset: 360)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "frame1_grid_position_x", scope: !3423, file: !453, line: 104, baseType: !505, size: 8, offset: 368)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "frame1_grid_position_y", scope: !3423, file: !453, line: 105, baseType: !505, size: 8, offset: 376)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_reserved_byte", scope: !3423, file: !453, line: 106, baseType: !505, size: 8, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_repetition_period", scope: !3423, file: !453, line: 107, baseType: !414, size: 32, offset: 416)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "frame_packing_arrangement_extension_flag", scope: !3423, file: !453, line: 108, baseType: !390, size: 32, offset: 448)
!3443 = !DILocalVariable(name: "buf", scope: !3416, file: !2, line: 1879, type: !1114)
!3444 = !DILocation(line: 0, scope: !3416)
!3445 = !DILocation(line: 1881, column: 9, scope: !3416)
!3446 = !DILocation(line: 1882, column: 8, scope: !3416)
!3447 = !DILocation(line: 1882, column: 25, scope: !3416)
!3448 = !DILocation(line: 1883, column: 8, scope: !3416)
!3449 = !DILocation(line: 1883, column: 21, scope: !3416)
!3450 = !DILocation(line: 1884, column: 8, scope: !3416)
!3451 = !DILocation(line: 1884, column: 24, scope: !3416)
!3452 = !DILocation(line: 1886, column: 3, scope: !3416)
!3453 = !DILocation(line: 1886, column: 10, scope: !3416)
!3454 = !DILocation(line: 1886, column: 19, scope: !3416)
!3455 = !DILocation(line: 1892, column: 75, scope: !3416)
!3456 = !DILocation(line: 1893, column: 70, scope: !3416)
!3457 = !DILocation(line: 1898, column: 73, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1898, column: 8)
!3459 = !DILocation(line: 1898, column: 8, scope: !3416)
!3460 = !DILocation(line: 1900, column: 80, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 1899, column: 3)
!3462 = !DILocation(line: 1901, column: 65, scope: !3461)
!3463 = !DILocation(line: 1902, column: 80, scope: !3461)
!3464 = !DILocation(line: 1903, column: 65, scope: !3461)
!3465 = !DILocation(line: 1904, column: 65, scope: !3461)
!3466 = !DILocation(line: 1905, column: 65, scope: !3461)
!3467 = !DILocation(line: 1906, column: 65, scope: !3461)
!3468 = !DILocation(line: 1907, column: 65, scope: !3461)
!3469 = !DILocation(line: 1908, column: 65, scope: !3461)
!3470 = !DILocation(line: 1920, column: 60, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 1920, column: 10)
!3472 = !DILocation(line: 1920, column: 69, scope: !3471)
!3473 = !DILocation(line: 1922, column: 74, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !2, line: 1921, column: 5)
!3475 = !DILocation(line: 1923, column: 74, scope: !3474)
!3476 = !DILocation(line: 1924, column: 74, scope: !3474)
!3477 = !DILocation(line: 1925, column: 74, scope: !3474)
!3478 = !DILocation(line: 1932, column: 5, scope: !3474)
!3479 = !DILocation(line: 1933, column: 89, scope: !3461)
!3480 = !DILocation(line: 1934, column: 92, scope: !3461)
!3481 = !DILocation(line: 1939, column: 3, scope: !3461)
!3482 = !DILocation(line: 1940, column: 73, scope: !3416)
!3483 = !DILocation(line: 1945, column: 3, scope: !3416)
!3484 = !DILocation(line: 1949, column: 1, scope: !3416)
!3485 = distinct !DISubprogram(name: "interpret_reserved_info", scope: !2, file: !2, line: 1552, type: !1767, scopeLine: 1553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491}
!3487 = !DILocalVariable(name: "payload", arg: 1, scope: !3485, file: !2, line: 1552, type: !523)
!3488 = !DILocalVariable(name: "size", arg: 2, scope: !3485, file: !2, line: 1552, type: !390)
!3489 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !3485, file: !2, line: 1552, type: !524)
!3490 = !DILocalVariable(name: "offset", scope: !3485, file: !2, line: 1554, type: !390)
!3491 = !DILocalVariable(name: "payload_byte", scope: !3485, file: !2, line: 1555, type: !503)
!3492 = !DILocation(line: 0, scope: !3485)
!3493 = !DILocation(line: 1572, column: 1, scope: !3485)
!3494 = !DISubprogram(name: "malloc", scope: !3495, file: !3495, line: 540, type: !3496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3495 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!506, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !3499, line: 18, baseType: !2773)
!3499 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!3500 = !DISubprogram(name: "ue_v", scope: !3501, file: !3501, line: 71, type: !3502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3501 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!390, !3504, !1114}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!3505 = !DISubprogram(name: "get_mem3D", scope: !3506, file: !3506, line: 48, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3506 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!390, !1450, !390, !390, !390}
!3509 = !DISubprogram(name: "u_1", scope: !3501, file: !3501, line: 72, type: !3502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3510 = !DISubprogram(name: "printf", scope: !3511, file: !3511, line: 356, type: !3512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3511 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!390, !3514, null}
!3514 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3515)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!3517 = !DISubprogram(name: "exit", scope: !3495, file: !3495, line: 624, type: !3518, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !390}
!3520 = !DISubprogram(name: "free_mem3D", scope: !3506, file: !3506, line: 129, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !1451}
!3523 = !DISubprogram(name: "free", scope: !3495, file: !3495, line: 555, type: !3524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !506}
!3526 = !DISubprogram(name: "u_v", scope: !3501, file: !3501, line: 73, type: !3527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!390, !390, !3504, !1114}
!3529 = !DISubprogram(name: "se_v", scope: !3501, file: !3501, line: 70, type: !3502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3530 = !DISubprogram(name: "dec_ref_pic_marking", scope: !3531, file: !3531, line: 16, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3531 = !DIFile(filename: "ldecod_src/inc/header.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "62db40efbf135cd71e05ac159b2c80be")
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !524, !1114, !876}
!3534 = !DISubprogram(name: "CeilLog2", scope: !526, file: !526, line: 955, type: !3535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!414, !414}
!3537 = !DISubprogram(name: "activate_sps", scope: !3538, file: !3538, line: 51, type: !3539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3538 = !DIFile(filename: "ldecod_src/inc/parset.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1b4400c3096806a6f80ce4d1614e45c")
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !524, !666}
!3541 = !DISubprogram(name: "error", scope: !526, file: !526, line: 940, type: !3542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3504, !390}
!3544 = !DISubprogram(name: "i_v", scope: !3501, file: !3501, line: 74, type: !3527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3545 = !DISubprogram(name: "exp", scope: !3546, file: !3546, line: 95, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!510, !510}
!3549 = distinct !DISubprogram(name: "tone_map", scope: !2, file: !2, line: 2143, type: !3550, scopeLine: 2144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !953, !954, !390, !390}
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558}
!3553 = !DILocalVariable(name: "imgX", arg: 1, scope: !3549, file: !2, line: 2143, type: !953)
!3554 = !DILocalVariable(name: "lut", arg: 2, scope: !3549, file: !2, line: 2143, type: !954)
!3555 = !DILocalVariable(name: "size_x", arg: 3, scope: !3549, file: !2, line: 2143, type: !390)
!3556 = !DILocalVariable(name: "size_y", arg: 4, scope: !3549, file: !2, line: 2143, type: !390)
!3557 = !DILocalVariable(name: "i", scope: !3549, file: !2, line: 2145, type: !390)
!3558 = !DILocalVariable(name: "j", scope: !3549, file: !2, line: 2145, type: !390)
!3559 = !DILocation(line: 0, scope: !3549)
!3560 = !DILocation(line: 2147, column: 12, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 2147, column: 3)
!3562 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 2147, column: 3)
!3563 = !DILocation(line: 2147, column: 3, scope: !3562)
!3564 = !DILocation(line: 2149, column: 5, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !2, line: 2149, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3561, file: !2, line: 2148, column: 3)
!3567 = !DILocation(line: 2151, column: 32, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !2, line: 2150, column: 5)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !2, line: 2149, column: 5)
!3570 = !DILocation(line: 2151, column: 28, scope: !3568)
!3571 = !DILocation(line: 2151, column: 18, scope: !3568)
!3572 = !DILocation(line: 2149, column: 23, scope: !3569)
!3573 = distinct !{!3573, !3564, !3574}
!3574 = !DILocation(line: 2152, column: 5, scope: !3565)
!3575 = distinct !{!3575, !3254}
!3576 = !DILocation(line: 2147, column: 21, scope: !3561)
!3577 = distinct !{!3577, !3563, !3578}
!3578 = !DILocation(line: 2153, column: 3, scope: !3562)
!3579 = !DILocation(line: 2154, column: 1, scope: !3549)
!3580 = distinct !DISubprogram(name: "init_tone_mapping_sei", scope: !2, file: !2, line: 2156, type: !3581, scopeLine: 2157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3585)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToneMappingSEI", file: !453, line: 85, baseType: !1623)
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "seiToneMapping", arg: 1, scope: !3580, file: !2, line: 2156, type: !3583)
!3587 = !DILocation(line: 0, scope: !3580)
!3588 = !DILocation(line: 2158, column: 38, scope: !3580)
!3589 = !DILocation(line: 2159, column: 19, scope: !3580)
!3590 = !DILocation(line: 2159, column: 25, scope: !3580)
!3591 = !DILocation(line: 2160, column: 1, scope: !3580)
!3592 = distinct !DISubprogram(name: "update_tone_mapping_sei", scope: !2, file: !2, line: 2162, type: !3581, scopeLine: 2163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3593)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "seiToneMapping", arg: 1, scope: !3592, file: !2, line: 2162, type: !3583)
!3595 = !DILocation(line: 0, scope: !3592)
!3596 = !DILocation(line: 2165, column: 22, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3592, file: !2, line: 2165, column: 6)
!3598 = !DILocation(line: 2165, column: 6, scope: !3592)
!3599 = !DILocation(line: 2167, column: 40, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 2166, column: 3)
!3601 = !DILocation(line: 2168, column: 21, scope: !3600)
!3602 = !DILocation(line: 2169, column: 3, scope: !3600)
!3603 = !DILocation(line: 2172, column: 21, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !2, line: 2171, column: 3)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 2170, column: 12)
!3606 = !DILocation(line: 2172, column: 26, scope: !3604)
!3607 = !DILocation(line: 2173, column: 30, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3604, file: !2, line: 2173, column: 9)
!3609 = !DILocation(line: 2173, column: 9, scope: !3604)
!3610 = !DILocation(line: 2175, column: 42, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !2, line: 2174, column: 5)
!3612 = !DILocation(line: 2177, column: 5, scope: !3611)
!3613 = !DILocation(line: 0, scope: !3597)
!3614 = !DILocation(line: 2179, column: 1, scope: !3592)
!3615 = !DISubprogram(name: "get_mem3Dint", scope: !3506, file: !3506, line: 55, type: !3616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!390, !1390, !390, !390, !390}
!3618 = !DISubprogram(name: "free_mem3Dint", scope: !3506, file: !3506, line: 134, type: !3619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !794}
