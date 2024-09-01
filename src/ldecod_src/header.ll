; ModuleID = 'ldecod_src/header.c'
source_filename = "ldecod_src/header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SH: colour_plane_id\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"SH: num_ref_idx_override_flag\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"slice_qp_delta makes slice_qp_y out of range\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"slice_qs_delta makes slice_qs_y out of range\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"frame_num not equal to zero in IDR picture\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"toppoc                                %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"bottompoc                             %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"frame_num                             %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"field_pic_flag                        %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"bottom_field_flag                     %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"log2_max_frame_num_minus4             %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"log2_max_pic_order_cnt_lsb_minus4     %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"pic_order_cnt_type                    %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"num_ref_frames_in_pic_order_cnt_cycle %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"delta_pic_order_always_zero_flag      %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"offset_for_non_ref_pic                %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"offset_for_top_to_bottom_field        %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[0]               %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[1]               %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"bottom_field_pic_order_in_frame_present_flag                %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[0]                %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[1]                %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"idr_flag                              %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"MaxFrameNum                           %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l0\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l1\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"SH: ref_pic_list_modification_flag_l0\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l0\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l0\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l1\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l1\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"SH: luma_log2_weight_denom\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"SH: chroma_log2_weight_denom\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l0\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l0\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l0\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l1\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l1\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l1\00", align 1
@str = private unnamed_addr constant [15 x i8] c"\0APOC locals...\00", align 1
@str.85 = private unnamed_addr constant [8 x i8] c"POC SPS\00", align 1
@str.86 = private unnamed_addr constant [20 x i8] c"POC in SLice Header\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @CeilLog2(i32 noundef %uiVal) local_unnamed_addr #0 {
entry:
  %sub = add i32 %uiVal, -1
  %cmp.not3 = icmp eq i32 %sub, 0
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub, i1 true)
  %1 = sub nuw nsw i32 32, %0
  %uiRet.0.lcssa = select i1 %cmp.not3, i32 0, i32 %1
  ret i32 %uiRet.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @CeilLog2_sf(i32 noundef %uiVal) local_unnamed_addr #0 {
entry:
  %sub = add i32 %uiVal, -1
  %cmp.not3 = icmp eq i32 %sub, 0
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub, i1 true)
  %1 = sub nuw nsw i32 32, %0
  %uiRet.0.lcssa = select i1 %cmp.not3, i32 0, i32 %1
  ret i32 %uiRet.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FirstPartOfSliceHeader(ptr nocapture noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %1 = load ptr, ptr %partArr, align 8
  %2 = load ptr, ptr %1, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %2, i64 8
  %3 = load i32, ptr %frame_bitoffset, align 8
  %4 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %3, ptr %UsedBits, align 8
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %2) #10
  %start_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 188
  store i32 %call, ptr %start_mb_nr, align 4
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %2) #10
  %cmp = icmp sgt i32 %call6, 4
  %sub = add nsw i32 %call6, -5
  %spec.select = select i1 %cmp, i32 %sub, i32 %call6
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  store i32 %spec.select, ptr %slice_type, align 4
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  store i32 %spec.select, ptr %type, align 8
  %call7 = tail call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %2) #10
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228
  store i32 %call7, ptr %pic_parameter_set_id, align 4
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280
  %5 = load i32, ptr %separate_colour_plane_flag, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %entry
  %call9 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #10
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.then8
  %call9.sink = phi i32 [ %call9, %if.then8 ], [ 0, %entry ]
  %6 = getelementptr inbounds i8, ptr %currSlice, i64 216
  store i32 %call9.sink, ptr %6, align 8
  %7 = load ptr, ptr @p_Dec, align 8
  %UsedBits12 = getelementptr inbounds i8, ptr %7, i64 24
  %8 = load i32, ptr %UsedBits12, align 8
  ret i32 %8
}

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @RestOfSliceHeader(ptr noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Inp2 = getelementptr inbounds i8, ptr %currSlice, i64 8
  %1 = load ptr, ptr %p_Inp2, align 8
  %active_sps3 = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load ptr, ptr %active_sps3, align 8
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %3 = load ptr, ptr %partArr, align 8
  %4 = load ptr, ptr %3, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %2, i64 2068
  %5 = load i32, ptr %log2_max_frame_num_minus4, align 4
  %add = add i32 %5, 4
  %call = tail call i32 @u_v(i32 noundef %add, ptr noundef nonnull @.str.4, ptr noundef %4) #10
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  store i32 %call, ptr %frame_num, align 4
  %idr_flag = getelementptr inbounds i8, ptr %currSlice, i64 48
  %6 = load i32, ptr %idr_flag, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pre_frame_num = getelementptr inbounds i8, ptr %0, i64 848944
  store i32 %call, ptr %pre_frame_num, align 8
  %last_ref_pic_poc = getelementptr inbounds i8, ptr %0, i64 849228
  store i32 0, ptr %last_ref_pic_poc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %2, i64 3136
  %7 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %structure = getelementptr inbounds i8, ptr %0, i64 848876
  store i32 0, ptr %structure, align 4
  %field_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 176
  store i32 0, ptr %field_pic_flag, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %4) #10
  %field_pic_flag11 = getelementptr inbounds i8, ptr %currSlice, i64 176
  store i32 %call10, ptr %field_pic_flag11, align 8
  %tobool13.not = icmp eq i32 %call10, 0
  %bottom_field_flag22 = getelementptr inbounds i8, ptr %currSlice, i64 180
  br i1 %tobool13.not, label %if.else20, label %if.then14

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %4) #10
  %conv = trunc i32 %call15 to i8
  store i8 %conv, ptr %bottom_field_flag22, align 4
  %conv17 = and i32 %call15, 255
  %tobool18.not = icmp eq i32 %conv17, 0
  %cond = select i1 %tobool18.not, i32 1, i32 2
  %structure19 = getelementptr inbounds i8, ptr %0, i64 848876
  store i32 %cond, ptr %structure19, align 4
  br label %if.end24

if.else20:                                        ; preds = %if.else
  %structure21 = getelementptr inbounds i8, ptr %0, i64 848876
  store i32 0, ptr %structure21, align 4
  store i8 0, ptr %bottom_field_flag22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.else20, %if.then9
  %structure25 = getelementptr inbounds i8, ptr %0, i64 848876
  %8 = load i32, ptr %structure25, align 4
  %structure26 = getelementptr inbounds i8, ptr %currSlice, i64 184
  store i32 %8, ptr %structure26, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %2, i64 3140
  %9 = load i32, ptr %mb_adaptive_frame_field_flag, align 4
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end24
  %field_pic_flag28 = getelementptr inbounds i8, ptr %currSlice, i64 176
  %10 = load i32, ptr %field_pic_flag28, align 8
  %cmp = icmp eq i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end24
  %11 = phi i1 [ false, %if.end24 ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  store i32 %land.ext, ptr %mb_aff_frame_flag, align 8
  %12 = load i32, ptr %idr_flag, align 8
  %tobool46.not = icmp eq i32 %12, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %land.end
  %call48 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #10
  %idr_pic_id = getelementptr inbounds i8, ptr %currSlice, i64 52
  store i32 %call48, ptr %idr_pic_id, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.end
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %2, i64 2072
  %13 = load i32, ptr %pic_order_cnt_type, align 4
  %cmp50 = icmp eq i32 %13, 0
  br i1 %cmp50, label %if.then52, label %if.end64

if.then52:                                        ; preds = %if.end49
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %2, i64 2076
  %14 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4
  %add53 = add i32 %14, 4
  %call54 = tail call i32 @u_v(i32 noundef %add53, ptr noundef nonnull @.str.8, ptr noundef %4) #10
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %currSlice, i64 80
  store i32 %call54, ptr %pic_order_cnt_lsb, align 8
  %active_pps = getelementptr inbounds i8, ptr %0, i64 8
  %15 = load ptr, ptr %active_pps, align 8
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %15, i64 2040
  %16 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag, align 8
  %cmp55 = icmp eq i32 %16, 1
  br i1 %cmp55, label %land.lhs.true, label %if.end64thread-pre-split

land.lhs.true:                                    ; preds = %if.then52
  %field_pic_flag57 = getelementptr inbounds i8, ptr %currSlice, i64 176
  %17 = load i32, ptr %field_pic_flag57, align 8
  %tobool58.not = icmp eq i32 %17, 0
  br i1 %tobool58.not, label %if.then59, label %if.end64thread-pre-split

if.then59:                                        ; preds = %land.lhs.true
  %call60 = tail call i32 @se_v(ptr noundef nonnull @.str.9, ptr noundef %4) #10
  br label %if.end64thread-pre-split

if.end64thread-pre-split:                         ; preds = %if.then52, %land.lhs.true, %if.then59
  %.sink = phi i32 [ %call60, %if.then59 ], [ 0, %land.lhs.true ], [ 0, %if.then52 ]
  %delta_pic_order_cnt_bottom62 = getelementptr inbounds i8, ptr %currSlice, i64 84
  store i32 %.sink, ptr %delta_pic_order_cnt_bottom62, align 4
  %.pr = load i32, ptr %pic_order_cnt_type, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.end49
  %18 = phi i32 [ %.pr, %if.end64thread-pre-split ], [ %13, %if.end49 ]
  %cmp66 = icmp eq i32 %18, 1
  br i1 %cmp66, label %if.then68, label %if.end94

if.then68:                                        ; preds = %if.end64
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %2, i64 2080
  %19 = load i32, ptr %delta_pic_order_always_zero_flag, align 4
  %tobool69.not = icmp eq i32 %19, 0
  br i1 %tobool69.not, label %if.then70, label %if.else88

if.then70:                                        ; preds = %if.then68
  %call71 = tail call i32 @se_v(ptr noundef nonnull @.str.10, ptr noundef %4) #10
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %currSlice, i64 88
  store i32 %call71, ptr %delta_pic_order_cnt, align 8
  %active_pps73 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load ptr, ptr %active_pps73, align 8
  %bottom_field_pic_order_in_frame_present_flag74 = getelementptr inbounds i8, ptr %20, i64 2040
  %21 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag74, align 8
  %cmp75 = icmp eq i32 %21, 1
  br i1 %cmp75, label %land.lhs.true77, label %if.end94.sink.split

land.lhs.true77:                                  ; preds = %if.then70
  %field_pic_flag78 = getelementptr inbounds i8, ptr %currSlice, i64 176
  %22 = load i32, ptr %field_pic_flag78, align 8
  %tobool79.not = icmp eq i32 %22, 0
  br i1 %tobool79.not, label %if.then80, label %if.end94.sink.split

if.then80:                                        ; preds = %land.lhs.true77
  %call81 = tail call i32 @se_v(ptr noundef nonnull @.str.11, ptr noundef %4) #10
  br label %if.end94.sink.split

if.else88:                                        ; preds = %if.then68
  %delta_pic_order_cnt89 = getelementptr inbounds i8, ptr %currSlice, i64 88
  store i32 0, ptr %delta_pic_order_cnt89, align 8
  br label %if.end94.sink.split

if.end94.sink.split:                              ; preds = %if.then70, %land.lhs.true77, %if.then80, %if.else88
  %.sink608 = phi i32 [ 0, %if.else88 ], [ %call81, %if.then80 ], [ 0, %land.lhs.true77 ], [ 0, %if.then70 ]
  %arrayidx92 = getelementptr inbounds i8, ptr %currSlice, i64 92
  store i32 %.sink608, ptr %arrayidx92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.end64
  %active_pps95 = getelementptr inbounds i8, ptr %0, i64 8
  %23 = load ptr, ptr %active_pps95, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %23, i64 2208
  %24 = load i32, ptr %redundant_pic_cnt_present_flag, align 8
  %tobool96.not = icmp eq i32 %24, 0
  br i1 %tobool96.not, label %if.end99, label %if.then97

if.then97:                                        ; preds = %if.end94
  %call98 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef %4) #10
  %redundant_pic_cnt = getelementptr inbounds i8, ptr %currSlice, i64 220
  store i32 %call98, ptr %redundant_pic_cnt, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %25 = load i32, ptr %slice_type, align 4
  %cmp100 = icmp eq i32 %25, 1
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %call103 = tail call i32 @u_1(ptr noundef nonnull @.str.13, ptr noundef %4) #10
  %direct_spatial_mv_pred_flag = getelementptr inbounds i8, ptr %currSlice, i64 132
  store i32 %call103, ptr %direct_spatial_mv_pred_flag, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99
  %26 = load ptr, ptr %active_pps95, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %26, i64 2168
  %27 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8
  %add106 = add nsw i32 %27, 1
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  store i32 %add106, ptr %num_ref_idx_active, align 8
  %28 = load ptr, ptr %active_pps95, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %28, i64 2172
  %29 = load i32, ptr %num_ref_idx_l1_active_minus1, align 4
  %add109 = add nsw i32 %29, 1
  %arrayidx111 = getelementptr inbounds i8, ptr %currSlice, i64 140
  store i32 %add109, ptr %arrayidx111, align 4
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %30 = load i32, ptr %type, align 8
  switch i32 %30, label %if.end139 [
    i32 0, label %if.then121
    i32 3, label %if.then121
    i32 1, label %if.then121
  ]

if.then121:                                       ; preds = %if.end104, %if.end104, %if.end104
  %call122 = tail call i32 @u_1(ptr noundef nonnull @.str.14, ptr noundef %4) #10
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end139, label %if.then124

if.then124:                                       ; preds = %if.then121
  %call125 = tail call i32 @ue_v(ptr noundef nonnull @.str.15, ptr noundef %4) #10
  %add126 = add nsw i32 %call125, 1
  store i32 %add126, ptr %num_ref_idx_active, align 8
  %31 = load i32, ptr %type, align 8
  %cmp130 = icmp eq i32 %31, 1
  br i1 %cmp130, label %if.then132, label %if.end139

if.then132:                                       ; preds = %if.then124
  %call133 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef %4) #10
  %add134 = add nsw i32 %call133, 1
  store i32 %add134, ptr %arrayidx111, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.end104, %if.then121, %if.then132, %if.then124
  %32 = load i32, ptr %slice_type, align 4
  %cmp141.not = icmp eq i32 %32, 1
  br i1 %cmp141.not, label %if.end146, label %if.then143

if.then143:                                       ; preds = %if.end139
  store i32 0, ptr %arrayidx111, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end139
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %33 = load i32, ptr %svc_extension_flag, align 8
  %switch = icmp ult i32 %33, 2
  %34 = load ptr, ptr %currSlice, align 8
  %35 = load ptr, ptr %partArr, align 8
  %36 = load ptr, ptr %35, align 8
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %currSlice) #10
  %type.i = getelementptr inbounds i8, ptr %34, i64 848776
  %37 = load i32, ptr %type.i, align 8
  br i1 %switch, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.end146
  %rem.i = srem i32 %37, 5
  switch i32 %rem.i, label %if.then.i [
    i32 2, label %if.end40.i
    i32 4, label %if.end40.i
  ]

if.then.i:                                        ; preds = %if.then153
  %call.i = tail call i32 @u_1(ptr noundef nonnull @.str.66, ptr noundef %36) #10
  %ref_pic_list_reordering_flag.i = getelementptr inbounds i8, ptr %currSlice, i64 1104
  store i32 %call.i, ptr %ref_pic_list_reordering_flag.i, align 8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.then.i
  %reordering_of_pic_nums_idc.i = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %abs_diff_view_idx_minus1.i = getelementptr inbounds i8, ptr %currSlice, i64 1160
  %long_term_pic_idx.i = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %abs_diff_pic_num_minus1.i = getelementptr inbounds i8, ptr %currSlice, i64 1128
  br label %do.body.i

do.body.i:                                        ; preds = %if.end37.i, %do.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %do.body.preheader.i ], [ %indvars.iv.next.i, %if.end37.i ]
  %call10.i = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %36) #10
  %38 = load ptr, ptr %reordering_of_pic_nums_idc.i, align 8
  %arrayidx13.i = getelementptr inbounds i32, ptr %38, i64 %indvars.iv.i
  store i32 %call10.i, ptr %arrayidx13.i, align 4
  %or.cond.i = icmp ult i32 %call10.i, 2
  br i1 %or.cond.i, label %if.end37.sink.split.i, label %if.else.i

if.else.i:                                        ; preds = %do.body.i
  %cmp21.i = icmp eq i32 %call10.i, 2
  br i1 %cmp21.i, label %if.end37.sink.split.i, label %if.else27.i

if.else27.i:                                      ; preds = %if.else.i
  %39 = and i32 %call10.i, -2
  %or.cond101.i = icmp eq i32 %39, 4
  br i1 %or.cond101.i, label %if.end37.sink.split.i, label %if.end37.i

if.end37.sink.split.i:                            ; preds = %if.else27.i, %if.else.i, %do.body.i
  %.str.61.sink.i = phi ptr [ @.str.60, %do.body.i ], [ @.str.61, %if.else.i ], [ @.str.68, %if.else27.i ]
  %long_term_pic_idx.sink.i = phi ptr [ %abs_diff_pic_num_minus1.i, %do.body.i ], [ %long_term_pic_idx.i, %if.else.i ], [ %abs_diff_view_idx_minus1.i, %if.else27.i ]
  %call23.i = tail call i32 @ue_v(ptr noundef nonnull %.str.61.sink.i, ptr noundef %36) #10
  %40 = load ptr, ptr %long_term_pic_idx.sink.i, align 8
  %arrayidx26.i = getelementptr inbounds i32, ptr %40, i64 %indvars.iv.i
  store i32 %call23.i, ptr %arrayidx26.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %if.else27.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp38.not.i = icmp eq i32 %call10.i, 3
  br i1 %cmp38.not.i, label %if.end40.i, label %do.body.i

if.end40.i:                                       ; preds = %if.end37.i, %if.then.i, %if.then153, %if.then153
  %41 = load i32, ptr %type.i, align 8
  %rem42.i = srem i32 %41, 5
  %cmp43.i = icmp eq i32 %rem42.i, 1
  br i1 %cmp43.i, label %if.then44.i, label %if.end91.i

if.then44.i:                                      ; preds = %if.end40.i
  %call45.i = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %36) #10
  %arrayidx47.i = getelementptr inbounds i8, ptr %currSlice, i64 1108
  store i32 %call45.i, ptr %arrayidx47.i, align 4
  %tobool48.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool48.not.i, label %if.end91.i, label %do.body50.preheader.i

do.body50.preheader.i:                            ; preds = %if.then44.i
  %arrayidx53.i = getelementptr inbounds i8, ptr %currSlice, i64 1120
  %arrayidx80.i = getelementptr inbounds i8, ptr %currSlice, i64 1168
  %arrayidx70.i = getelementptr inbounds i8, ptr %currSlice, i64 1152
  %arrayidx62.i = getelementptr inbounds i8, ptr %currSlice, i64 1136
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.end85.i, %do.body50.preheader.i
  %indvars.iv155.i = phi i64 [ 0, %do.body50.preheader.i ], [ %indvars.iv.next156.i, %if.end85.i ]
  %call51.i = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %36) #10
  %42 = load ptr, ptr %arrayidx53.i, align 8
  %arrayidx55.i = getelementptr inbounds i32, ptr %42, i64 %indvars.iv155.i
  store i32 %call51.i, ptr %arrayidx55.i, align 4
  %or.cond102.i = icmp ult i32 %call51.i, 2
  br i1 %or.cond102.i, label %if.end85.sink.split.i, label %if.else65.i

if.else65.i:                                      ; preds = %do.body50.i
  %cmp66.i = icmp eq i32 %call51.i, 2
  br i1 %cmp66.i, label %if.end85.sink.split.i, label %if.else73.i

if.else73.i:                                      ; preds = %if.else65.i
  %43 = and i32 %call51.i, -2
  %or.cond103.i = icmp eq i32 %43, 4
  br i1 %or.cond103.i, label %if.end85.sink.split.i, label %if.end85.i

if.end85.sink.split.i:                            ; preds = %if.else73.i, %if.else65.i, %do.body50.i
  %.str.65.sink.i = phi ptr [ @.str.64, %do.body50.i ], [ @.str.65, %if.else65.i ], [ @.str.70, %if.else73.i ]
  %arrayidx70.sink.i = phi ptr [ %arrayidx62.i, %do.body50.i ], [ %arrayidx70.i, %if.else65.i ], [ %arrayidx80.i, %if.else73.i ]
  %call68.i = tail call i32 @ue_v(ptr noundef nonnull %.str.65.sink.i, ptr noundef %36) #10
  %44 = load ptr, ptr %arrayidx70.sink.i, align 8
  %arrayidx72.i = getelementptr inbounds i32, ptr %44, i64 %indvars.iv155.i
  store i32 %call68.i, ptr %arrayidx72.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end85.sink.split.i, %if.else73.i
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1
  %cmp88.not.i = icmp eq i32 %call51.i, 3
  br i1 %cmp88.not.i, label %if.end91.i, label %do.body50.i

if.end91.i:                                       ; preds = %if.end85.i, %if.then44.i, %if.end40.i
  %redundant_pic_cnt.i = getelementptr inbounds i8, ptr %currSlice, i64 220
  %45 = load i32, ptr %redundant_pic_cnt.i, align 4
  %tobool92.not.i = icmp eq i32 %45, 0
  br i1 %tobool92.not.i, label %if.end155, label %land.lhs.true93.i

land.lhs.true93.i:                                ; preds = %if.end91.i
  %46 = load i32, ptr %type.i, align 8
  %cmp95.not.i = icmp eq i32 %46, 2
  br i1 %cmp95.not.i, label %if.end155, label %if.end155.sink.split

if.else154:                                       ; preds = %if.end146
  switch i32 %37, label %if.then.i579 [
    i32 2, label %if.end68.i
    i32 4, label %if.end68.i
  ]

if.then.i579:                                     ; preds = %if.else154
  %call.i580 = tail call i32 @u_1(ptr noundef nonnull @.str.58, ptr noundef %36) #10
  %ref_pic_list_reordering_flag.i581 = getelementptr inbounds i8, ptr %currSlice, i64 1104
  store i32 %call.i580, ptr %ref_pic_list_reordering_flag.i581, align 8
  %tobool.not.i582 = icmp eq i32 %call.i580, 0
  br i1 %tobool.not.i582, label %if.end29.i, label %do.body.preheader.i583

do.body.preheader.i583:                           ; preds = %if.then.i579
  %reordering_of_pic_nums_idc.i584 = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %long_term_pic_idx.i585 = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %abs_diff_pic_num_minus1.i586 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  br label %do.body.i587

do.body.i587:                                     ; preds = %if.end26.i, %do.body.preheader.i583
  %indvars.iv.i588 = phi i64 [ 0, %do.body.preheader.i583 ], [ %indvars.iv.next.i591, %if.end26.i ]
  %call9.i = tail call i32 @ue_v(ptr noundef nonnull @.str.59, ptr noundef %36) #10
  %47 = load ptr, ptr %reordering_of_pic_nums_idc.i584, align 8
  %arrayidx12.i = getelementptr inbounds i32, ptr %47, i64 %indvars.iv.i588
  store i32 %call9.i, ptr %arrayidx12.i, align 4
  %or.cond.i589 = icmp ult i32 %call9.i, 2
  br i1 %or.cond.i589, label %if.end26.sink.split.i, label %if.else.i590

if.else.i590:                                     ; preds = %do.body.i587
  %cmp20.i = icmp eq i32 %call9.i, 2
  br i1 %cmp20.i, label %if.end26.sink.split.i, label %if.end26.i

if.end26.sink.split.i:                            ; preds = %if.else.i590, %do.body.i587
  %.str.61.sink.i593 = phi ptr [ @.str.60, %do.body.i587 ], [ @.str.61, %if.else.i590 ]
  %long_term_pic_idx.sink.i594 = phi ptr [ %abs_diff_pic_num_minus1.i586, %do.body.i587 ], [ %long_term_pic_idx.i585, %if.else.i590 ]
  %call22.i = tail call i32 @ue_v(ptr noundef nonnull %.str.61.sink.i593, ptr noundef %36) #10
  %48 = load ptr, ptr %long_term_pic_idx.sink.i594, align 8
  %arrayidx25.i = getelementptr inbounds i32, ptr %48, i64 %indvars.iv.i588
  store i32 %call22.i, ptr %arrayidx25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.else.i590
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i588, 1
  %cmp27.not.i = icmp eq i32 %call9.i, 3
  br i1 %cmp27.not.i, label %if.end29.i, label %do.body.i587

if.end29.i:                                       ; preds = %if.end26.i, %if.then.i579
  %.pr.i = load i32, ptr %type.i, align 8
  %cmp31.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp31.i, label %if.then32.i, label %if.end68.i

if.then32.i:                                      ; preds = %if.end29.i
  %call33.i = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %36) #10
  %arrayidx35.i = getelementptr inbounds i8, ptr %currSlice, i64 1108
  store i32 %call33.i, ptr %arrayidx35.i, align 4
  %tobool36.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool36.not.i, label %if.end68.i, label %do.body38.preheader.i

do.body38.preheader.i:                            ; preds = %if.then32.i
  %arrayidx41.i = getelementptr inbounds i8, ptr %currSlice, i64 1120
  %arrayidx58.i = getelementptr inbounds i8, ptr %currSlice, i64 1152
  %arrayidx50.i = getelementptr inbounds i8, ptr %currSlice, i64 1136
  br label %do.body38.i

do.body38.i:                                      ; preds = %if.end62.i, %do.body38.preheader.i
  %indvars.iv121.i = phi i64 [ 0, %do.body38.preheader.i ], [ %indvars.iv.next122.i, %if.end62.i ]
  %call39.i = tail call i32 @ue_v(ptr noundef nonnull @.str.63, ptr noundef %36) #10
  %49 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr inbounds i32, ptr %49, i64 %indvars.iv121.i
  store i32 %call39.i, ptr %arrayidx43.i, align 4
  %or.cond78.i = icmp ult i32 %call39.i, 2
  br i1 %or.cond78.i, label %if.end62.sink.split.i, label %if.else53.i

if.else53.i:                                      ; preds = %do.body38.i
  %cmp54.i = icmp eq i32 %call39.i, 2
  br i1 %cmp54.i, label %if.end62.sink.split.i, label %if.end62.i

if.end62.sink.split.i:                            ; preds = %if.else53.i, %do.body38.i
  %.str.65.sink.i592 = phi ptr [ @.str.64, %do.body38.i ], [ @.str.65, %if.else53.i ]
  %arrayidx58.sink.i = phi ptr [ %arrayidx50.i, %do.body38.i ], [ %arrayidx58.i, %if.else53.i ]
  %call56.i = tail call i32 @ue_v(ptr noundef nonnull %.str.65.sink.i592, ptr noundef %36) #10
  %50 = load ptr, ptr %arrayidx58.sink.i, align 8
  %arrayidx60.i = getelementptr inbounds i32, ptr %50, i64 %indvars.iv121.i
  store i32 %call56.i, ptr %arrayidx60.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end62.sink.split.i, %if.else53.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  %cmp65.not.i = icmp eq i32 %call39.i, 3
  br i1 %cmp65.not.i, label %if.end68.i, label %do.body38.i

if.end68.i:                                       ; preds = %if.end62.i, %if.then32.i, %if.end29.i, %if.else154, %if.else154
  %redundant_pic_cnt.i576 = getelementptr inbounds i8, ptr %currSlice, i64 220
  %51 = load i32, ptr %redundant_pic_cnt.i576, align 4
  %tobool69.not.i = icmp eq i32 %51, 0
  br i1 %tobool69.not.i, label %if.end155, label %land.lhs.true70.i

land.lhs.true70.i:                                ; preds = %if.end68.i
  %52 = load i32, ptr %type.i, align 8
  %cmp72.not.i = icmp eq i32 %52, 2
  br i1 %cmp72.not.i, label %if.end155, label %if.end155.sink.split

if.end155.sink.split:                             ; preds = %land.lhs.true70.i, %land.lhs.true93.i
  %abs_diff_pic_num_minus174.i = getelementptr inbounds i8, ptr %currSlice, i64 1128
  %53 = load ptr, ptr %abs_diff_pic_num_minus174.i, align 8
  %54 = load i32, ptr %53, align 4
  %add.i577 = add nsw i32 %54, 1
  %redundant_slice_ref_idx.i578 = getelementptr inbounds i8, ptr %currSlice, i64 232
  store i32 %add.i577, ptr %redundant_slice_ref_idx.i578, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.end155.sink.split, %land.lhs.true70.i, %if.end68.i, %land.lhs.true93.i, %if.end91.i
  %55 = load i32, ptr %slice_type, align 4
  switch i32 %55, label %land.end171 [
    i32 0, label %cond.true
    i32 3, label %cond.true
    i32 1, label %land.rhs167
  ]

cond.true:                                        ; preds = %if.end155, %if.end155
  %56 = load ptr, ptr %active_pps95, align 8
  %weighted_pred_flag = getelementptr inbounds i8, ptr %56, i64 2176
  %57 = load i32, ptr %weighted_pred_flag, align 8
  br label %cond.end

land.rhs167:                                      ; preds = %if.end155
  %58 = load ptr, ptr %active_pps95, align 8
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %58, i64 2180
  %59 = load i32, ptr %weighted_bipred_idc, align 4
  %cmp169 = icmp eq i32 %59, 1
  br label %land.end171

land.end171:                                      ; preds = %if.end155, %land.rhs167
  %60 = phi i1 [ %cmp169, %land.rhs167 ], [ false, %if.end155 ]
  %land.ext172 = zext i1 %60 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end171, %cond.true
  %cond173 = phi i32 [ %57, %cond.true ], [ %land.ext172, %land.end171 ]
  %conv174 = trunc i32 %cond173 to i16
  %weighted_pred_flag175 = getelementptr inbounds i8, ptr %currSlice, i64 13272
  store i16 %conv174, ptr %weighted_pred_flag175, align 8
  %cmp177 = icmp eq i32 %55, 1
  br i1 %cmp177, label %land.rhs179, label %land.end184

land.rhs179:                                      ; preds = %cond.end
  %61 = load ptr, ptr %active_pps95, align 8
  %weighted_bipred_idc181 = getelementptr inbounds i8, ptr %61, i64 2180
  %62 = load i32, ptr %weighted_bipred_idc181, align 4
  %cmp182 = icmp ne i32 %62, 0
  br label %land.end184

land.end184:                                      ; preds = %land.rhs179, %cond.end
  %63 = phi i1 [ false, %cond.end ], [ %cmp182, %land.rhs179 ]
  %conv186 = zext i1 %63 to i16
  %weighted_bipred_idc187 = getelementptr inbounds i8, ptr %currSlice, i64 13274
  store i16 %conv186, ptr %weighted_bipred_idc187, align 2
  %64 = load ptr, ptr %active_pps95, align 8
  %weighted_pred_flag189 = getelementptr inbounds i8, ptr %64, i64 2176
  %65 = load i32, ptr %weighted_pred_flag189, align 8
  %tobool190.not = icmp eq i32 %65, 0
  br i1 %tobool190.not, label %lor.lhs.false199, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.end184
  %66 = load i32, ptr %type, align 8
  switch i32 %66, label %lor.lhs.false199 [
    i32 0, label %if.then208
    i32 3, label %if.then208
  ]

lor.lhs.false199:                                 ; preds = %land.lhs.true191, %land.end184
  %weighted_bipred_idc201 = getelementptr inbounds i8, ptr %64, i64 2180
  %67 = load i32, ptr %weighted_bipred_idc201, align 4
  %cmp202 = icmp eq i32 %67, 1
  br i1 %cmp202, label %land.lhs.true204, label %if.end209

land.lhs.true204:                                 ; preds = %lor.lhs.false199
  %68 = load i32, ptr %type, align 8
  %cmp206 = icmp eq i32 %68, 1
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %land.lhs.true191, %land.lhs.true191, %land.lhs.true204
  %69 = load ptr, ptr %currSlice, align 8
  %active_sps2.i = getelementptr inbounds i8, ptr %69, i64 16
  %70 = load ptr, ptr %active_sps2.i, align 8
  %71 = load ptr, ptr %partArr, align 8
  %72 = load ptr, ptr %71, align 8
  %call.i596 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %72) #10
  %conv.i = trunc i32 %call.i596 to i16
  %luma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13276
  store i16 %conv.i, ptr %luma_log2_weight_denom.i, align 4
  %conv7.i = and i32 %call.i596, 65535
  %tobool.not.i597 = icmp eq i32 %conv7.i, 0
  %sub.i = add nsw i32 %conv7.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %73 = trunc i32 %shl.i to i16
  %conv10.i = select i1 %tobool.not.i597, i16 0, i16 %73
  %wp_round_luma.i = getelementptr inbounds i8, ptr %currSlice, i64 13304
  store i16 %conv10.i, ptr %wp_round_luma.i, align 8
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %70, i64 36
  %74 = load i32, ptr %chroma_format_idc.i, align 4
  %cmp.not.i = icmp eq i32 %74, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i598

if.then.i598:                                     ; preds = %if.then208
  %call12.i = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %72) #10
  %conv13.i = trunc i32 %call12.i to i16
  %chroma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13278
  store i16 %conv13.i, ptr %chroma_log2_weight_denom.i, align 2
  %conv15.i = and i32 %call12.i, 65535
  %tobool16.not.i = icmp eq i32 %conv15.i, 0
  %sub20.i = add nsw i32 %conv15.i, -1
  %shl21.i = shl nuw i32 1, %sub20.i
  %75 = trunc i32 %shl21.i to i16
  %cond24.i = select i1 %tobool16.not.i, i16 0, i16 %75
  %wp_round_chroma.i = getelementptr inbounds i8, ptr %currSlice, i64 13306
  store i16 %cond24.i, ptr %wp_round_chroma.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i598, %if.then208
  %wp_weight.i.i = getelementptr inbounds i8, ptr %currSlice, i64 13280
  %cond.in.in.1.i.i = getelementptr inbounds i8, ptr %currSlice, i64 13278
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i, %if.end.i
  %indvars.iv.i.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next.i.i, %for.cond1.preheader.i.i ]
  %cond.in.i.i = load i16, ptr %luma_log2_weight_denom.i, align 2
  %cond.i.i = zext nneg i16 %cond.in.i.i to i32
  %shl.i.i = shl nuw i32 1, %cond.i.i
  %76 = load ptr, ptr %wp_weight.i.i, align 8
  %77 = load ptr, ptr %76, align 8
  %arrayidx6.i.i = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv.i.i
  %78 = load ptr, ptr %arrayidx6.i.i, align 8
  store i32 %shl.i.i, ptr %78, align 4
  %79 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %79, i64 8
  %80 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv.i.i
  %81 = load ptr, ptr %arrayidx13.i.i, align 8
  store i32 %shl.i.i, ptr %81, align 4
  %cond.in.1.i.i = load i16, ptr %cond.in.in.1.i.i, align 2
  %cond.1.i.i = zext nneg i16 %cond.in.1.i.i to i32
  %shl.1.i.i = shl nuw i32 1, %cond.1.i.i
  %82 = load ptr, ptr %wp_weight.i.i, align 8
  %83 = load ptr, ptr %82, align 8
  %arrayidx6.1.i.i = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv.i.i
  %84 = load ptr, ptr %arrayidx6.1.i.i, align 8
  %arrayidx8.1.i.i = getelementptr inbounds i8, ptr %84, i64 4
  store i32 %shl.1.i.i, ptr %arrayidx8.1.i.i, align 4
  %85 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx11.1.i.i = getelementptr inbounds i8, ptr %85, i64 8
  %86 = load ptr, ptr %arrayidx11.1.i.i, align 8
  %arrayidx13.1.i.i = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv.i.i
  %87 = load ptr, ptr %arrayidx13.1.i.i, align 8
  %arrayidx15.1.i.i = getelementptr inbounds i8, ptr %87, i64 4
  store i32 %shl.1.i.i, ptr %arrayidx15.1.i.i, align 4
  %cond.in.2.i.i = load i16, ptr %cond.in.in.1.i.i, align 2
  %cond.2.i.i = zext nneg i16 %cond.in.2.i.i to i32
  %shl.2.i.i = shl nuw i32 1, %cond.2.i.i
  %88 = load ptr, ptr %wp_weight.i.i, align 8
  %89 = load ptr, ptr %88, align 8
  %arrayidx6.2.i.i = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv.i.i
  %90 = load ptr, ptr %arrayidx6.2.i.i, align 8
  %arrayidx8.2.i.i = getelementptr inbounds i8, ptr %90, i64 8
  store i32 %shl.2.i.i, ptr %arrayidx8.2.i.i, align 4
  %91 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx11.2.i.i = getelementptr inbounds i8, ptr %91, i64 8
  %92 = load ptr, ptr %arrayidx11.2.i.i, align 8
  %arrayidx13.2.i.i = getelementptr inbounds ptr, ptr %92, i64 %indvars.iv.i.i
  %93 = load ptr, ptr %arrayidx13.2.i.i, align 8
  %arrayidx15.2.i.i = getelementptr inbounds i8, ptr %93, i64 8
  store i32 %shl.2.i.i, ptr %arrayidx15.2.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond.preheader.i, label %for.cond1.preheader.i.i

for.cond.preheader.i:                             ; preds = %for.cond1.preheader.i.i
  %94 = load i32, ptr %num_ref_idx_active, align 8
  %cmp27356.i = icmp sgt i32 %94, 0
  br i1 %cmp27356.i, label %for.body.lr.ph.i, label %for.end129.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %wp_offset.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %bitdepth_luma.i = getelementptr inbounds i8, ptr %69, i64 849040
  %bitdepth_chroma.i = getelementptr inbounds i8, ptr %69, i64 849042
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc127.i, %for.body.lr.ph.i
  %indvars.iv.i600 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i603, %for.inc127.i ]
  %call29.i = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef %72) #10
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.else.i604, label %if.then31.i

if.then31.i:                                      ; preds = %for.body.i
  %call32.i = tail call i32 @se_v(ptr noundef nonnull @.str.74, ptr noundef %72) #10
  %95 = load ptr, ptr %wp_weight.i.i, align 8
  %96 = load ptr, ptr %95, align 8
  %arrayidx35.i601 = getelementptr inbounds ptr, ptr %96, i64 %indvars.iv.i600
  %97 = load ptr, ptr %arrayidx35.i601, align 8
  store i32 %call32.i, ptr %97, align 4
  %call37.i = tail call i32 @se_v(ptr noundef nonnull @.str.75, ptr noundef %72) #10
  %98 = load ptr, ptr %wp_offset.i, align 8
  %99 = load ptr, ptr %98, align 8
  %arrayidx40.i = getelementptr inbounds ptr, ptr %99, i64 %indvars.iv.i600
  %100 = load ptr, ptr %arrayidx40.i, align 8
  store i32 %call37.i, ptr %100, align 4
  %101 = load ptr, ptr %wp_offset.i, align 8
  %102 = load ptr, ptr %101, align 8
  %arrayidx45.i = getelementptr inbounds ptr, ptr %102, i64 %indvars.iv.i600
  %103 = load ptr, ptr %arrayidx45.i, align 8
  %104 = load i32, ptr %103, align 4
  %105 = load i16, ptr %bitdepth_luma.i, align 8
  %conv47.i = sext i16 %105 to i32
  %sub48.i = add nsw i32 %conv47.i, -8
  %shl49.i = shl i32 %104, %sub48.i
  store i32 %shl49.i, ptr %103, align 4
  br label %if.end68.i602

if.else.i604:                                     ; preds = %for.body.i
  %106 = load i16, ptr %luma_log2_weight_denom.i, align 4
  %conv56.i = zext nneg i16 %106 to i32
  %shl57.i = shl nuw i32 1, %conv56.i
  %107 = load ptr, ptr %wp_weight.i.i, align 8
  %108 = load ptr, ptr %107, align 8
  %arrayidx61.i = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv.i600
  %109 = load ptr, ptr %arrayidx61.i, align 8
  store i32 %shl57.i, ptr %109, align 4
  %110 = load ptr, ptr %wp_offset.i, align 8
  %111 = load ptr, ptr %110, align 8
  %arrayidx66.i = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv.i600
  %112 = load ptr, ptr %arrayidx66.i, align 8
  store i32 0, ptr %112, align 4
  br label %if.end68.i602

if.end68.i602:                                    ; preds = %if.else.i604, %if.then31.i
  %113 = load i32, ptr %chroma_format_idc.i, align 4
  %cmp70.not.i = icmp eq i32 %113, 0
  br i1 %cmp70.not.i, label %for.inc127.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end68.i602
  %call73.i = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef %72) #10
  %tobool78.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool78.not.i, label %for.body77.us.preheader.i, label %for.body77.preheader.i

for.body77.preheader.i:                           ; preds = %if.then72.i
  %call80.i = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %72) #10
  %114 = load ptr, ptr %wp_weight.i.i, align 8
  %115 = load ptr, ptr %114, align 8
  %arrayidx84.i = getelementptr inbounds ptr, ptr %115, i64 %indvars.iv.i600
  %116 = load ptr, ptr %arrayidx84.i, align 8
  %arrayidx86.i = getelementptr inbounds i8, ptr %116, i64 4
  store i32 %call80.i, ptr %arrayidx86.i, align 4
  %call87.i = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %72) #10
  %117 = load ptr, ptr %wp_offset.i, align 8
  %118 = load ptr, ptr %117, align 8
  %arrayidx91.i = getelementptr inbounds ptr, ptr %118, i64 %indvars.iv.i600
  %119 = load ptr, ptr %arrayidx91.i, align 8
  %arrayidx93.i = getelementptr inbounds i8, ptr %119, i64 4
  store i32 %call87.i, ptr %arrayidx93.i, align 4
  %120 = load ptr, ptr %wp_offset.i, align 8
  %121 = load ptr, ptr %120, align 8
  %arrayidx97.i = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv.i600
  %122 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.i = getelementptr inbounds i8, ptr %122, i64 4
  %123 = load i32, ptr %arrayidx99.i, align 4
  %124 = load i16, ptr %bitdepth_chroma.i, align 2
  %conv100.i = sext i16 %124 to i32
  %sub101.i = add nsw i32 %conv100.i, -8
  %shl102.i = shl i32 %123, %sub101.i
  store i32 %shl102.i, ptr %arrayidx99.i, align 4
  %call80.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %72) #10
  %125 = load ptr, ptr %wp_weight.i.i, align 8
  %126 = load ptr, ptr %125, align 8
  %arrayidx84.1.i = getelementptr inbounds ptr, ptr %126, i64 %indvars.iv.i600
  %127 = load ptr, ptr %arrayidx84.1.i, align 8
  %arrayidx86.1.i = getelementptr inbounds i8, ptr %127, i64 8
  store i32 %call80.1.i, ptr %arrayidx86.1.i, align 4
  %call87.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %72) #10
  %128 = load ptr, ptr %wp_offset.i, align 8
  %129 = load ptr, ptr %128, align 8
  %arrayidx91.1.i = getelementptr inbounds ptr, ptr %129, i64 %indvars.iv.i600
  %130 = load ptr, ptr %arrayidx91.1.i, align 8
  %arrayidx93.1.i = getelementptr inbounds i8, ptr %130, i64 8
  store i32 %call87.1.i, ptr %arrayidx93.1.i, align 4
  %131 = load ptr, ptr %wp_offset.i, align 8
  %132 = load ptr, ptr %131, align 8
  %arrayidx97.1.i = getelementptr inbounds ptr, ptr %132, i64 %indvars.iv.i600
  %133 = load ptr, ptr %arrayidx97.1.i, align 8
  %arrayidx99.1.i = getelementptr inbounds i8, ptr %133, i64 8
  %134 = load i32, ptr %arrayidx99.1.i, align 4
  %135 = load i16, ptr %bitdepth_chroma.i, align 2
  %conv100.1.i = sext i16 %135 to i32
  %sub101.1.i = add nsw i32 %conv100.1.i, -8
  %shl102.1.i = shl i32 %134, %sub101.1.i
  store i32 %shl102.1.i, ptr %arrayidx99.1.i, align 4
  br label %for.inc127.i

for.body77.us.preheader.i:                        ; preds = %if.then72.i
  %136 = load i16, ptr %cond.in.in.1.i.i, align 2
  %conv111.us.i = zext nneg i16 %136 to i32
  %shl112.us.i = shl nuw i32 1, %conv111.us.i
  %137 = load ptr, ptr %wp_weight.i.i, align 8
  %138 = load ptr, ptr %137, align 8
  %arrayidx116.us.i = getelementptr inbounds ptr, ptr %138, i64 %indvars.iv.i600
  %139 = load ptr, ptr %arrayidx116.us.i, align 8
  %arrayidx118.us.i = getelementptr inbounds i8, ptr %139, i64 4
  store i32 %shl112.us.i, ptr %arrayidx118.us.i, align 4
  %140 = load ptr, ptr %wp_offset.i, align 8
  %141 = load ptr, ptr %140, align 8
  %arrayidx122.us.i = getelementptr inbounds ptr, ptr %141, i64 %indvars.iv.i600
  %142 = load ptr, ptr %arrayidx122.us.i, align 8
  %arrayidx124.us.i = getelementptr inbounds i8, ptr %142, i64 4
  store i32 0, ptr %arrayidx124.us.i, align 4
  %143 = load i16, ptr %cond.in.in.1.i.i, align 2
  %conv111.us.1.i = zext nneg i16 %143 to i32
  %shl112.us.1.i = shl nuw i32 1, %conv111.us.1.i
  %144 = load ptr, ptr %wp_weight.i.i, align 8
  %145 = load ptr, ptr %144, align 8
  %arrayidx116.us.1.i = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv.i600
  %146 = load ptr, ptr %arrayidx116.us.1.i, align 8
  %arrayidx118.us.1.i = getelementptr inbounds i8, ptr %146, i64 8
  store i32 %shl112.us.1.i, ptr %arrayidx118.us.1.i, align 4
  %147 = load ptr, ptr %wp_offset.i, align 8
  %148 = load ptr, ptr %147, align 8
  %arrayidx122.us.1.i = getelementptr inbounds ptr, ptr %148, i64 %indvars.iv.i600
  %149 = load ptr, ptr %arrayidx122.us.1.i, align 8
  %arrayidx124.us.1.i = getelementptr inbounds i8, ptr %149, i64 8
  store i32 0, ptr %arrayidx124.us.1.i, align 4
  br label %for.inc127.i

for.inc127.i:                                     ; preds = %for.body77.us.preheader.i, %for.body77.preheader.i, %if.end68.i602
  %indvars.iv.next.i603 = add nuw nsw i64 %indvars.iv.i600, 1
  %150 = load i32, ptr %num_ref_idx_active, align 8
  %151 = sext i32 %150 to i64
  %cmp27.i = icmp slt i64 %indvars.iv.next.i603, %151
  br i1 %cmp27.i, label %for.body.i, label %for.end129.i

for.end129.i:                                     ; preds = %for.inc127.i, %for.cond.preheader.i
  %type.i599 = getelementptr inbounds i8, ptr %69, i64 848776
  %152 = load i32, ptr %type.i599, align 8
  %cmp130.i = icmp eq i32 %152, 1
  br i1 %cmp130.i, label %land.lhs.true.i, label %if.end209

land.lhs.true.i:                                  ; preds = %for.end129.i
  %active_pps.i = getelementptr inbounds i8, ptr %69, i64 8
  %153 = load ptr, ptr %active_pps.i, align 8
  %weighted_bipred_idc.i = getelementptr inbounds i8, ptr %153, i64 2180
  %154 = load i32, ptr %weighted_bipred_idc.i, align 4
  %cmp132.i = icmp eq i32 %154, 1
  br i1 %cmp132.i, label %for.cond135.preheader.i, label %if.end209

for.cond135.preheader.i:                          ; preds = %land.lhs.true.i
  %155 = load i32, ptr %arrayidx111, align 4
  %cmp138359.i = icmp sgt i32 %155, 0
  br i1 %cmp138359.i, label %for.body140.lr.ph.i, label %if.end209

for.body140.lr.ph.i:                              ; preds = %for.cond135.preheader.i
  %wp_offset151.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %bitdepth_luma161.i = getelementptr inbounds i8, ptr %69, i64 849040
  %bitdepth_chroma216.i = getelementptr inbounds i8, ptr %69, i64 849042
  br label %for.body140.i

for.body140.i:                                    ; preds = %for.inc247.i, %for.body140.lr.ph.i
  %indvars.iv372.i = phi i64 [ 0, %for.body140.lr.ph.i ], [ %indvars.iv.next373.i, %for.inc247.i ]
  %call141.i = tail call i32 @u_1(ptr noundef nonnull @.str.79, ptr noundef %72) #10
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %if.else170.i, label %if.then143.i

if.then143.i:                                     ; preds = %for.body140.i
  %call144.i = tail call i32 @se_v(ptr noundef nonnull @.str.80, ptr noundef %72) #10
  %156 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx146.i = getelementptr inbounds i8, ptr %156, i64 8
  %157 = load ptr, ptr %arrayidx146.i, align 8
  %arrayidx148.i = getelementptr inbounds ptr, ptr %157, i64 %indvars.iv372.i
  %158 = load ptr, ptr %arrayidx148.i, align 8
  store i32 %call144.i, ptr %158, align 4
  %call150.i = tail call i32 @se_v(ptr noundef nonnull @.str.81, ptr noundef %72) #10
  %159 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx152.i = getelementptr inbounds i8, ptr %159, i64 8
  %160 = load ptr, ptr %arrayidx152.i, align 8
  %arrayidx154.i = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv372.i
  %161 = load ptr, ptr %arrayidx154.i, align 8
  store i32 %call150.i, ptr %161, align 4
  %162 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx157.i = getelementptr inbounds i8, ptr %162, i64 8
  %163 = load ptr, ptr %arrayidx157.i, align 8
  %arrayidx159.i = getelementptr inbounds ptr, ptr %163, i64 %indvars.iv372.i
  %164 = load ptr, ptr %arrayidx159.i, align 8
  %165 = load i32, ptr %164, align 4
  %166 = load i16, ptr %bitdepth_luma161.i, align 8
  %conv162.i = sext i16 %166 to i32
  %sub163.i = add nsw i32 %conv162.i, -8
  %shl164.i = shl i32 %165, %sub163.i
  store i32 %shl164.i, ptr %164, align 4
  br label %if.end184.i

if.else170.i:                                     ; preds = %for.body140.i
  %167 = load i16, ptr %luma_log2_weight_denom.i, align 4
  %conv172.i = zext nneg i16 %167 to i32
  %shl173.i = shl nuw i32 1, %conv172.i
  %168 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx175.i = getelementptr inbounds i8, ptr %168, i64 8
  %169 = load ptr, ptr %arrayidx175.i, align 8
  %arrayidx177.i = getelementptr inbounds ptr, ptr %169, i64 %indvars.iv372.i
  %170 = load ptr, ptr %arrayidx177.i, align 8
  store i32 %shl173.i, ptr %170, align 4
  %171 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx180.i = getelementptr inbounds i8, ptr %171, i64 8
  %172 = load ptr, ptr %arrayidx180.i, align 8
  %arrayidx182.i = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv372.i
  %173 = load ptr, ptr %arrayidx182.i, align 8
  store i32 0, ptr %173, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else170.i, %if.then143.i
  %174 = load i32, ptr %chroma_format_idc.i, align 4
  %cmp186.not.i = icmp eq i32 %174, 0
  br i1 %cmp186.not.i, label %for.inc247.i, label %if.then188.i

if.then188.i:                                     ; preds = %if.end184.i
  %call189.i = tail call i32 @u_1(ptr noundef nonnull @.str.82, ptr noundef %72) #10
  %tobool194.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool194.not.i, label %for.body193.us.preheader.i, label %for.body193.preheader.i

for.body193.preheader.i:                          ; preds = %if.then188.i
  %call196.i = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %72) #10
  %175 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx198.i = getelementptr inbounds i8, ptr %175, i64 8
  %176 = load ptr, ptr %arrayidx198.i, align 8
  %arrayidx200.i = getelementptr inbounds ptr, ptr %176, i64 %indvars.iv372.i
  %177 = load ptr, ptr %arrayidx200.i, align 8
  %arrayidx202.i = getelementptr inbounds i8, ptr %177, i64 4
  store i32 %call196.i, ptr %arrayidx202.i, align 4
  %call203.i = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %72) #10
  %178 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx205.i = getelementptr inbounds i8, ptr %178, i64 8
  %179 = load ptr, ptr %arrayidx205.i, align 8
  %arrayidx207.i = getelementptr inbounds ptr, ptr %179, i64 %indvars.iv372.i
  %180 = load ptr, ptr %arrayidx207.i, align 8
  %arrayidx209.i = getelementptr inbounds i8, ptr %180, i64 4
  store i32 %call203.i, ptr %arrayidx209.i, align 4
  %181 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx211.i = getelementptr inbounds i8, ptr %181, i64 8
  %182 = load ptr, ptr %arrayidx211.i, align 8
  %arrayidx213.i = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv372.i
  %183 = load ptr, ptr %arrayidx213.i, align 8
  %arrayidx215.i = getelementptr inbounds i8, ptr %183, i64 4
  %184 = load i32, ptr %arrayidx215.i, align 4
  %185 = load i16, ptr %bitdepth_chroma216.i, align 2
  %conv217.i = sext i16 %185 to i32
  %sub218.i = add nsw i32 %conv217.i, -8
  %shl219.i = shl i32 %184, %sub218.i
  store i32 %shl219.i, ptr %arrayidx215.i, align 4
  %call196.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %72) #10
  %186 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx198.1.i = getelementptr inbounds i8, ptr %186, i64 8
  %187 = load ptr, ptr %arrayidx198.1.i, align 8
  %arrayidx200.1.i = getelementptr inbounds ptr, ptr %187, i64 %indvars.iv372.i
  %188 = load ptr, ptr %arrayidx200.1.i, align 8
  %arrayidx202.1.i = getelementptr inbounds i8, ptr %188, i64 8
  store i32 %call196.1.i, ptr %arrayidx202.1.i, align 4
  %call203.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %72) #10
  %189 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx205.1.i = getelementptr inbounds i8, ptr %189, i64 8
  %190 = load ptr, ptr %arrayidx205.1.i, align 8
  %arrayidx207.1.i = getelementptr inbounds ptr, ptr %190, i64 %indvars.iv372.i
  %191 = load ptr, ptr %arrayidx207.1.i, align 8
  %arrayidx209.1.i = getelementptr inbounds i8, ptr %191, i64 8
  store i32 %call203.1.i, ptr %arrayidx209.1.i, align 4
  %192 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx211.1.i = getelementptr inbounds i8, ptr %192, i64 8
  %193 = load ptr, ptr %arrayidx211.1.i, align 8
  %arrayidx213.1.i = getelementptr inbounds ptr, ptr %193, i64 %indvars.iv372.i
  %194 = load ptr, ptr %arrayidx213.1.i, align 8
  %arrayidx215.1.i = getelementptr inbounds i8, ptr %194, i64 8
  %195 = load i32, ptr %arrayidx215.1.i, align 4
  %196 = load i16, ptr %bitdepth_chroma216.i, align 2
  %conv217.1.i = sext i16 %196 to i32
  %sub218.1.i = add nsw i32 %conv217.1.i, -8
  %shl219.1.i = shl i32 %195, %sub218.1.i
  store i32 %shl219.1.i, ptr %arrayidx215.1.i, align 4
  br label %for.inc247.i

for.body193.us.preheader.i:                       ; preds = %if.then188.i
  %197 = load i16, ptr %cond.in.in.1.i.i, align 2
  %conv228.us.i = zext nneg i16 %197 to i32
  %shl229.us.i = shl nuw i32 1, %conv228.us.i
  %198 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx231.us.i = getelementptr inbounds i8, ptr %198, i64 8
  %199 = load ptr, ptr %arrayidx231.us.i, align 8
  %arrayidx233.us.i = getelementptr inbounds ptr, ptr %199, i64 %indvars.iv372.i
  %200 = load ptr, ptr %arrayidx233.us.i, align 8
  %arrayidx235.us.i = getelementptr inbounds i8, ptr %200, i64 4
  store i32 %shl229.us.i, ptr %arrayidx235.us.i, align 4
  %201 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx237.us.i = getelementptr inbounds i8, ptr %201, i64 8
  %202 = load ptr, ptr %arrayidx237.us.i, align 8
  %arrayidx239.us.i = getelementptr inbounds ptr, ptr %202, i64 %indvars.iv372.i
  %203 = load ptr, ptr %arrayidx239.us.i, align 8
  %arrayidx241.us.i = getelementptr inbounds i8, ptr %203, i64 4
  store i32 0, ptr %arrayidx241.us.i, align 4
  %204 = load i16, ptr %cond.in.in.1.i.i, align 2
  %conv228.us.1.i = zext nneg i16 %204 to i32
  %shl229.us.1.i = shl nuw i32 1, %conv228.us.1.i
  %205 = load ptr, ptr %wp_weight.i.i, align 8
  %arrayidx231.us.1.i = getelementptr inbounds i8, ptr %205, i64 8
  %206 = load ptr, ptr %arrayidx231.us.1.i, align 8
  %arrayidx233.us.1.i = getelementptr inbounds ptr, ptr %206, i64 %indvars.iv372.i
  %207 = load ptr, ptr %arrayidx233.us.1.i, align 8
  %arrayidx235.us.1.i = getelementptr inbounds i8, ptr %207, i64 8
  store i32 %shl229.us.1.i, ptr %arrayidx235.us.1.i, align 4
  %208 = load ptr, ptr %wp_offset151.i, align 8
  %arrayidx237.us.1.i = getelementptr inbounds i8, ptr %208, i64 8
  %209 = load ptr, ptr %arrayidx237.us.1.i, align 8
  %arrayidx239.us.1.i = getelementptr inbounds ptr, ptr %209, i64 %indvars.iv372.i
  %210 = load ptr, ptr %arrayidx239.us.1.i, align 8
  %arrayidx241.us.1.i = getelementptr inbounds i8, ptr %210, i64 8
  store i32 0, ptr %arrayidx241.us.1.i, align 4
  br label %for.inc247.i

for.inc247.i:                                     ; preds = %for.body193.us.preheader.i, %for.body193.preheader.i, %if.end184.i
  %indvars.iv.next373.i = add nuw nsw i64 %indvars.iv372.i, 1
  %211 = load i32, ptr %arrayidx111, align 4
  %212 = sext i32 %211 to i64
  %cmp138.i = icmp slt i64 %indvars.iv.next373.i, %212
  br i1 %cmp138.i, label %for.body140.i, label %if.end209

if.end209:                                        ; preds = %for.inc247.i, %for.cond135.preheader.i, %land.lhs.true.i, %for.end129.i, %land.lhs.true204, %lor.lhs.false199
  %nal_reference_idc = getelementptr inbounds i8, ptr %currSlice, i64 56
  %213 = load i32, ptr %nal_reference_idc, align 8
  %tobool210.not = icmp eq i32 %213, 0
  br i1 %tobool210.not, label %if.end212, label %if.then211

if.then211:                                       ; preds = %if.end209
  tail call void @dec_ref_pic_marking(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %currSlice)
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %if.end209
  %214 = load ptr, ptr %active_pps95, align 8
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %214, i64 12
  %215 = load i32, ptr %entropy_coding_mode_flag, align 4
  %tobool214.not = icmp eq i32 %215, 0
  br i1 %tobool214.not, label %if.end227, label %land.lhs.true215

land.lhs.true215:                                 ; preds = %if.end212
  %216 = load i32, ptr %type, align 8
  switch i32 %216, label %if.then223 [
    i32 2, label %if.end227
    i32 4, label %if.end227
  ]

if.then223:                                       ; preds = %land.lhs.true215
  %call224 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef %4) #10
  br label %if.end227

if.end227:                                        ; preds = %if.end212, %land.lhs.true215, %land.lhs.true215, %if.then223
  %.sink611 = phi i32 [ %call224, %if.then223 ], [ 0, %land.lhs.true215 ], [ 0, %land.lhs.true215 ], [ 0, %if.end212 ]
  %model_number226 = getelementptr inbounds i8, ptr %currSlice, i64 168
  store i32 %.sink611, ptr %model_number226, align 8
  %call228 = tail call i32 @se_v(ptr noundef nonnull @.str.18, ptr noundef %4) #10
  %slice_qp_delta = getelementptr inbounds i8, ptr %currSlice, i64 152
  store i32 %call228, ptr %slice_qp_delta, align 8
  %217 = load ptr, ptr %active_pps95, align 8
  %pic_init_qp_minus26 = getelementptr inbounds i8, ptr %217, i64 2184
  %218 = load i32, ptr %pic_init_qp_minus26, align 8
  %add230 = add i32 %call228, 26
  %add231 = add i32 %add230, %218
  %qp = getelementptr inbounds i8, ptr %currSlice, i64 148
  store i32 %add231, ptr %qp, align 4
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %0, i64 849052
  %219 = load i32, ptr %bitdepth_luma_qp_scale, align 4
  %sub = sub nsw i32 0, %219
  %cmp233 = icmp slt i32 %add231, %sub
  %cmp237 = icmp sgt i32 %add231, 51
  %or.cond = or i1 %cmp233, %cmp237
  br i1 %or.cond, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end227
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #10
  br label %if.end240

if.end240:                                        ; preds = %if.end227, %if.then239
  %220 = load i32, ptr %type, align 8
  %.off = add i32 %220, -3
  %switch573 = icmp ult i32 %.off, 2
  br i1 %switch573, label %if.then248, label %if.end268

if.then248:                                       ; preds = %if.end240
  %cmp250 = icmp eq i32 %220, 3
  br i1 %cmp250, label %if.then252, label %if.end254

if.then252:                                       ; preds = %if.then248
  %call253 = tail call i32 @u_1(ptr noundef nonnull @.str.20, ptr noundef %4) #10
  %sp_switch = getelementptr inbounds i8, ptr %currSlice, i64 224
  store i32 %call253, ptr %sp_switch, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %if.then248
  %call255 = tail call i32 @se_v(ptr noundef nonnull @.str.21, ptr noundef %4) #10
  %slice_qs_delta = getelementptr inbounds i8, ptr %currSlice, i64 160
  store i32 %call255, ptr %slice_qs_delta, align 8
  %221 = load ptr, ptr %active_pps95, align 8
  %pic_init_qs_minus26 = getelementptr inbounds i8, ptr %221, i64 2188
  %222 = load i32, ptr %pic_init_qs_minus26, align 4
  %add257 = add i32 %call255, 26
  %add258 = add i32 %add257, %222
  %qs = getelementptr inbounds i8, ptr %currSlice, i64 156
  store i32 %add258, ptr %qs, align 4
  %or.cond571 = icmp ugt i32 %add258, 51
  br i1 %or.cond571, label %if.then266, label %if.end268

if.then266:                                       ; preds = %if.end254
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #10
  br label %if.end268

if.end268:                                        ; preds = %if.end240, %if.end254, %if.then266
  %223 = load ptr, ptr %active_sps3, align 8
  %profile_idc = getelementptr inbounds i8, ptr %223, i64 4
  %224 = load i32, ptr %profile_idc, align 4
  %cmp270 = icmp ugt i32 %224, 109
  br i1 %cmp270, label %land.lhs.true272, label %lor.lhs.false275

land.lhs.true272:                                 ; preds = %if.end268
  %constrained_set3_flag = getelementptr inbounds i8, ptr %223, i64 20
  %225 = load i32, ptr %constrained_set3_flag, align 4
  %tobool274.not = icmp eq i32 %225, 0
  br i1 %tobool274.not, label %if.then297, label %land.lhs.true294

lor.lhs.false275:                                 ; preds = %if.end268
  %cmp278 = icmp eq i32 %224, 44
  br i1 %cmp278, label %land.lhs.true294, label %if.then297

land.lhs.true294:                                 ; preds = %land.lhs.true272, %lor.lhs.false275
  %intra_profile_deblocking = getelementptr inbounds i8, ptr %1, i64 788
  %226 = load i32, ptr %intra_profile_deblocking, align 4
  %cmp295 = icmp eq i32 %226, 1
  br i1 %cmp295, label %if.then297, label %if.else322

if.then297:                                       ; preds = %land.lhs.true272, %land.lhs.true294, %lor.lhs.false275
  %227 = load ptr, ptr %active_pps95, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %227, i64 2200
  %228 = load i32, ptr %deblocking_filter_control_present_flag, align 8
  %tobool299.not = icmp eq i32 %228, 0
  br i1 %tobool299.not, label %if.else317, label %if.then300

if.then300:                                       ; preds = %if.then297
  %call301 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %4) #10
  %conv302 = trunc i32 %call301 to i16
  %DFDisableIdc = getelementptr inbounds i8, ptr %currSlice, i64 1220
  store i16 %conv302, ptr %DFDisableIdc, align 4
  %sext.mask570 = and i32 %call301, 65535
  %cmp305.not = icmp eq i32 %sext.mask570, 1
  br i1 %cmp305.not, label %if.else313, label %if.then307

if.then307:                                       ; preds = %if.then300
  %call308 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %4) #10
  %call308.tr = trunc i32 %call308 to i16
  %conv309 = shl i16 %call308.tr, 1
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %currSlice, i64 1222
  store i16 %conv309, ptr %DFAlphaC0Offset, align 2
  %call310 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %4) #10
  %call310.tr = trunc i32 %call310 to i16
  %conv312 = shl i16 %call310.tr, 1
  %DFBetaOffset = getelementptr inbounds i8, ptr %currSlice, i64 1224
  store i16 %conv312, ptr %DFBetaOffset, align 8
  br label %if.end348

if.else313:                                       ; preds = %if.then300
  %DFBetaOffset314 = getelementptr inbounds i8, ptr %currSlice, i64 1224
  store i16 0, ptr %DFBetaOffset314, align 8
  %DFAlphaC0Offset315 = getelementptr inbounds i8, ptr %currSlice, i64 1222
  store i16 0, ptr %DFAlphaC0Offset315, align 2
  br label %if.end348

if.else317:                                       ; preds = %if.then297
  %DFBetaOffset318 = getelementptr inbounds i8, ptr %currSlice, i64 1224
  store i16 0, ptr %DFBetaOffset318, align 8
  %DFAlphaC0Offset319 = getelementptr inbounds i8, ptr %currSlice, i64 1222
  store i16 0, ptr %DFAlphaC0Offset319, align 2
  %DFDisableIdc320 = getelementptr inbounds i8, ptr %currSlice, i64 1220
  store i16 0, ptr %DFDisableIdc320, align 4
  br label %if.end348

if.else322:                                       ; preds = %land.lhs.true294
  %229 = load ptr, ptr %active_pps95, align 8
  %deblocking_filter_control_present_flag324 = getelementptr inbounds i8, ptr %229, i64 2200
  %230 = load i32, ptr %deblocking_filter_control_present_flag324, align 8
  %tobool325.not = icmp eq i32 %230, 0
  br i1 %tobool325.not, label %if.end344, label %if.then326

if.then326:                                       ; preds = %if.else322
  %call327 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %4) #10
  %conv328 = trunc i32 %call327 to i16
  %DFDisableIdc329 = getelementptr inbounds i8, ptr %currSlice, i64 1220
  store i16 %conv328, ptr %DFDisableIdc329, align 4
  %sext.mask = and i32 %call327, 65535
  %cmp332.not = icmp eq i32 %sext.mask, 1
  br i1 %cmp332.not, label %if.end344, label %if.then334

if.then334:                                       ; preds = %if.then326
  %call335 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %4) #10
  %call335.tr = trunc i32 %call335 to i16
  %conv337 = shl i16 %call335.tr, 1
  %DFAlphaC0Offset338 = getelementptr inbounds i8, ptr %currSlice, i64 1222
  store i16 %conv337, ptr %DFAlphaC0Offset338, align 2
  %call339 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %4) #10
  br label %if.end344

if.end344:                                        ; preds = %if.then326, %if.then334, %if.else322
  %DFDisableIdc345 = getelementptr inbounds i8, ptr %currSlice, i64 1220
  store i16 1, ptr %DFDisableIdc345, align 4
  %DFBetaOffset346 = getelementptr inbounds i8, ptr %currSlice, i64 1224
  store i16 0, ptr %DFBetaOffset346, align 8
  %DFAlphaC0Offset347 = getelementptr inbounds i8, ptr %currSlice, i64 1222
  store i16 0, ptr %DFAlphaC0Offset347, align 2
  br label %if.end348

if.end348:                                        ; preds = %if.else317, %if.else313, %if.then307, %if.end344
  %231 = load ptr, ptr %active_pps95, align 8
  %num_slice_groups_minus1 = getelementptr inbounds i8, ptr %231, i64 2044
  %232 = load i32, ptr %num_slice_groups_minus1, align 4
  %cmp350.not = icmp eq i32 %232, 0
  br i1 %cmp350.not, label %if.end382, label %land.lhs.true352

land.lhs.true352:                                 ; preds = %if.end348
  %slice_group_map_type = getelementptr inbounds i8, ptr %231, i64 2048
  %233 = load i32, ptr %slice_group_map_type, align 8
  %234 = add i32 %233, -3
  %or.cond572 = icmp ult i32 %234, 3
  br i1 %or.cond572, label %if.then361, label %if.end382

if.then361:                                       ; preds = %land.lhs.true352
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %2, i64 3132
  %235 = load i32, ptr %pic_height_in_map_units_minus1, align 4
  %add362 = add i32 %235, 1
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %2, i64 3128
  %236 = load i32, ptr %pic_width_in_mbs_minus1, align 4
  %add363 = add i32 %236, 1
  %mul364 = mul i32 %add363, %add362
  %slice_group_change_rate_minus1 = getelementptr inbounds i8, ptr %231, i64 2152
  %237 = load i32, ptr %slice_group_change_rate_minus1, align 8
  %add366 = add i32 %237, 1
  %div = udiv i32 %mul364, %add366
  %rem = urem i32 %mul364, %add366
  %tobool375.not = icmp ne i32 %rem, 0
  %add377 = zext i1 %tobool375.not to i32
  %spec.select = add nsw i32 %div, %add377
  %cmp.not3.i = icmp eq i32 %spec.select, 0
  %238 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select, i1 true)
  %239 = sub nuw nsw i32 32, %238
  %uiRet.0.lcssa.i = select i1 %cmp.not3.i, i32 0, i32 %239
  %call381 = tail call i32 @u_v(i32 noundef %uiRet.0.lcssa.i, ptr noundef nonnull @.str.26, ptr noundef %4) #10
  %slice_group_change_cycle = getelementptr inbounds i8, ptr %currSlice, i64 228
  store i32 %call381, ptr %slice_group_change_cycle, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.then361, %land.lhs.true352, %if.end348
  %FrameHeightInMbs = getelementptr inbounds i8, ptr %0, i64 849004
  %240 = load i32, ptr %FrameHeightInMbs, align 4
  %field_pic_flag383 = getelementptr inbounds i8, ptr %currSlice, i64 176
  %241 = load i32, ptr %field_pic_flag383, align 8
  %add384 = add i32 %241, 1
  %div385 = udiv i32 %240, %add384
  %PicHeightInMbs = getelementptr inbounds i8, ptr %0, i64 849008
  store i32 %div385, ptr %PicHeightInMbs, align 8
  %PicWidthInMbs = getelementptr inbounds i8, ptr %0, i64 848996
  %242 = load i32, ptr %PicWidthInMbs, align 4
  %mul387 = mul i32 %242, %div385
  %PicSizeInMbs = getelementptr inbounds i8, ptr %0, i64 849012
  store i32 %mul387, ptr %PicSizeInMbs, align 4
  %mul390 = mul i32 %242, %240
  %FrameSizeInMbs = getelementptr inbounds i8, ptr %0, i64 849016
  store i32 %mul390, ptr %FrameSizeInMbs, align 8
  %243 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %243, i64 24
  %244 = load i32, ptr %UsedBits, align 8
  ret i32 %244
}

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dec_ref_pic_marking(ptr nocapture noundef writeonly %p_Vid, ptr noundef %currStream, ptr nocapture noundef %pSlice) local_unnamed_addr #1 {
entry:
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %pSlice, i64 248
  %0 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool.not86 = icmp eq ptr %0, null
  br i1 %tobool.not86, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi ptr [ %3, %while.body ], [ %0, %entry ]
  %Next = getelementptr inbounds i8, ptr %1, i64 24
  %2 = load ptr, ptr %Next, align 8
  store ptr %2, ptr %dec_ref_pic_marking_buffer, align 8
  tail call void @free(ptr noundef nonnull %1) #10
  %3 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48
  %4 = load i32, ptr %idr_flag, align 8
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  %call = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %currStream) #10
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %pSlice, i64 236
  store i32 %call, ptr %no_output_of_prior_pics_flag, align 4
  %no_output_of_prior_pics_flag5 = getelementptr inbounds i8, ptr %p_Vid, i64 849024
  store i32 %call, ptr %no_output_of_prior_pics_flag5, align 8
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %currStream) #10
  %long_term_reference_flag = getelementptr inbounds i8, ptr %pSlice, i64 240
  store i32 %call6, ptr %long_term_reference_flag, align 8
  br label %if.end47

if.else:                                          ; preds = %while.end
  %call7 = tail call i32 @u_1(ptr noundef nonnull @.str.29, ptr noundef %currStream) #10
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %pSlice, i64 244
  store i32 %call7, ptr %adaptive_ref_pic_buffering_flag, align 4
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end47, label %do.body

do.body:                                          ; preds = %if.else, %do.cond
  %call11 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #11
  %Next12 = getelementptr inbounds i8, ptr %call11, i64 24
  store ptr null, ptr %Next12, align 8
  %call13 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %currStream) #10
  store i32 %call13, ptr %call11, align 8
  switch i32 %call13, label %if.end30 [
    i32 3, label %if.then15
    i32 1, label %if.then15
    i32 2, label %if.then18
    i32 6, label %if.then24
    i32 4, label %if.then28
  ]

if.then15:                                        ; preds = %do.body, %do.body
  %call16 = tail call i32 @ue_v(ptr noundef nonnull @.str.31, ptr noundef %currStream) #10
  %difference_of_pic_nums_minus1 = getelementptr inbounds i8, ptr %call11, i64 4
  store i32 %call16, ptr %difference_of_pic_nums_minus1, align 4
  switch i32 %call13, label %if.end30 [
    i32 2, label %if.then18
    i32 3, label %if.then24
  ]

if.then18:                                        ; preds = %do.body, %if.then15
  %call19 = tail call i32 @ue_v(ptr noundef nonnull @.str.32, ptr noundef %currStream) #10
  %long_term_pic_num = getelementptr inbounds i8, ptr %call11, i64 8
  store i32 %call19, ptr %long_term_pic_num, align 8
  br label %if.end30

if.then24:                                        ; preds = %if.then15, %do.body
  %call25 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %currStream) #10
  %long_term_frame_idx = getelementptr inbounds i8, ptr %call11, i64 12
  store i32 %call25, ptr %long_term_frame_idx, align 4
  br label %if.end30

if.then28:                                        ; preds = %do.body
  %call29 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %currStream) #10
  %max_long_term_frame_idx_plus1 = getelementptr inbounds i8, ptr %call11, i64 16
  store i32 %call29, ptr %max_long_term_frame_idx_plus1, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then18, %do.body, %if.then15, %if.then28
  %5 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %cmp32 = icmp eq ptr %5, null
  br i1 %cmp32, label %do.cond, label %while.cond37

while.cond37:                                     ; preds = %if.end30, %while.cond37
  %tmp_drpm2.0 = phi ptr [ %6, %while.cond37 ], [ %5, %if.end30 ]
  %Next38 = getelementptr inbounds i8, ptr %tmp_drpm2.0, i64 24
  %6 = load ptr, ptr %Next38, align 8
  %cmp39.not = icmp eq ptr %6, null
  br i1 %cmp39.not, label %while.end42, label %while.cond37

while.end42:                                      ; preds = %while.cond37
  %Next38.le = getelementptr inbounds i8, ptr %tmp_drpm2.0, i64 24
  br label %do.cond

do.cond:                                          ; preds = %if.end30, %while.end42
  %dec_ref_pic_marking_buffer.sink = phi ptr [ %Next38.le, %while.end42 ], [ %dec_ref_pic_marking_buffer, %if.end30 ]
  store ptr %call11, ptr %dec_ref_pic_marking_buffer.sink, align 8
  %cmp45.not = icmp eq i32 %call13, 0
  br i1 %cmp45.not, label %if.end47, label %do.body

if.end47:                                         ; preds = %do.cond, %if.else, %if.then
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @decode_poc(ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #1 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %0, i64 2076
  %1 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4
  %add = add i32 %1, 4
  %shl = shl nuw i32 1, %add
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %0, i64 2072
  %2 = load i32, ptr %pic_order_cnt_type, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb86
    i32 2, label %sw.bb228
  ]

sw.bb:                                            ; preds = %entry
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48
  %3 = load i32, ptr %idr_flag, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %PrevPicOrderCntMsb = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  store i32 0, ptr %PrevPicOrderCntMsb, align 8
  br label %if.end12.thread

if.else:                                          ; preds = %sw.bb
  %last_has_mmco_5 = getelementptr inbounds i8, ptr %p_Vid, i64 849028
  %4 = load i32, ptr %last_has_mmco_5, align 4
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else.if.end12_crit_edge, label %if.then3

if.else.if.end12_crit_edge:                       ; preds = %if.else
  %PrevPicOrderCntLsb13.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  %.pre507 = load i32, ptr %PrevPicOrderCntLsb13.phi.trans.insert, align 4
  br label %if.end12

if.then3:                                         ; preds = %if.else
  %last_pic_bottom_field = getelementptr inbounds i8, ptr %p_Vid, i64 849032
  %5 = load i32, ptr %last_pic_bottom_field, align 8
  %tobool4.not = icmp eq i32 %5, 0
  %PrevPicOrderCntMsb9 = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  store i32 0, ptr %PrevPicOrderCntMsb9, align 8
  br i1 %tobool4.not, label %if.else8, label %if.end12.thread

if.else8:                                         ; preds = %if.then3
  %toppoc = getelementptr inbounds i8, ptr %pSlice, i64 68
  %6 = load i32, ptr %toppoc, align 4
  %PrevPicOrderCntLsb10 = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  store i32 %6, ptr %PrevPicOrderCntLsb10, align 4
  br label %if.end12

if.end12.thread:                                  ; preds = %if.then3, %if.then
  %PrevPicOrderCntLsb7 = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  store i32 0, ptr %PrevPicOrderCntLsb7, align 4
  %pic_order_cnt_lsb508 = getelementptr inbounds i8, ptr %pSlice, i64 80
  %7 = load i32, ptr %pic_order_cnt_lsb508, align 8
  %PrevPicOrderCntLsb13509 = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  br label %if.else20

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.else8
  %8 = phi i32 [ %.pre507, %if.else.if.end12_crit_edge ], [ %6, %if.else8 ]
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %pSlice, i64 80
  %9 = load i32, ptr %pic_order_cnt_lsb, align 8
  %PrevPicOrderCntLsb13 = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  %cmp = icmp ult i32 %9, %8
  br i1 %cmp, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %if.end12
  %sub = sub i32 %8, %9
  %div494 = lshr i32 %shl, 1
  %cmp16.not = icmp ult i32 %sub, %div494
  br i1 %cmp16.not, label %if.else20, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %PrevPicOrderCntMsb18 = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  %10 = load i32, ptr %PrevPicOrderCntMsb18, align 8
  %add19 = add i32 %10, %shl
  br label %if.end38

if.else20:                                        ; preds = %if.end12.thread, %land.lhs.true, %if.end12
  %PrevPicOrderCntLsb13514 = phi ptr [ %PrevPicOrderCntLsb13509, %if.end12.thread ], [ %PrevPicOrderCntLsb13, %land.lhs.true ], [ %PrevPicOrderCntLsb13, %if.end12 ]
  %11 = phi i32 [ %7, %if.end12.thread ], [ %9, %land.lhs.true ], [ %9, %if.end12 ]
  %pic_order_cnt_lsb512 = phi ptr [ %pic_order_cnt_lsb508, %if.end12.thread ], [ %pic_order_cnt_lsb, %land.lhs.true ], [ %pic_order_cnt_lsb, %if.end12 ]
  %12 = phi i32 [ 0, %if.end12.thread ], [ %8, %land.lhs.true ], [ %8, %if.end12 ]
  %cmp23 = icmp ugt i32 %11, %12
  br i1 %cmp23, label %land.lhs.true24, label %if.else34

land.lhs.true24:                                  ; preds = %if.else20
  %sub27 = sub i32 %11, %12
  %div28495 = lshr i32 %shl, 1
  %cmp29 = icmp ugt i32 %sub27, %div28495
  br i1 %cmp29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %land.lhs.true24
  %PrevPicOrderCntMsb31 = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  %13 = load i32, ptr %PrevPicOrderCntMsb31, align 8
  %sub32 = sub i32 %13, %shl
  br label %if.end38

if.else34:                                        ; preds = %land.lhs.true24, %if.else20
  %PrevPicOrderCntMsb35 = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  %14 = load i32, ptr %PrevPicOrderCntMsb35, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.else34, %if.then17
  %sub32.sink = phi i32 [ %sub32, %if.then30 ], [ %14, %if.else34 ], [ %add19, %if.then17 ]
  %PrevPicOrderCntLsb13513 = phi ptr [ %PrevPicOrderCntLsb13514, %if.then30 ], [ %PrevPicOrderCntLsb13514, %if.else34 ], [ %PrevPicOrderCntLsb13, %if.then17 ]
  %15 = phi i32 [ %11, %if.then30 ], [ %11, %if.else34 ], [ %9, %if.then17 ]
  %pic_order_cnt_lsb511 = phi ptr [ %pic_order_cnt_lsb512, %if.then30 ], [ %pic_order_cnt_lsb512, %if.else34 ], [ %pic_order_cnt_lsb, %if.then17 ]
  %PicOrderCntMsb33 = getelementptr inbounds i8, ptr %pSlice, i64 96
  store i32 %sub32.sink, ptr %PicOrderCntMsb33, align 8
  %field_pic_flag = getelementptr inbounds i8, ptr %pSlice, i64 176
  %16 = load i32, ptr %field_pic_flag, align 8
  %cmp39 = icmp eq i32 %16, 0
  br i1 %cmp39, label %if.then40, label %if.else52

if.then40:                                        ; preds = %if.end38
  %add43 = add i32 %sub32.sink, %15
  %toppoc44 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %add43, ptr %toppoc44, align 4
  %delta_pic_order_cnt_bottom = getelementptr inbounds i8, ptr %pSlice, i64 84
  %17 = load i32, ptr %delta_pic_order_cnt_bottom, align 4
  %add46 = add nsw i32 %17, %add43
  %bottompoc = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %add46, ptr %bottompoc, align 8
  %cmp49 = icmp sgt i32 %17, 0
  %add43.add46 = select i1 %cmp49, i32 %add43, i32 %add46
  %ThisPOC = getelementptr inbounds i8, ptr %pSlice, i64 104
  store i32 %add43.add46, ptr %ThisPOC, align 8
  br label %if.end68

if.else52:                                        ; preds = %if.end38
  %bottom_field_flag = getelementptr inbounds i8, ptr %pSlice, i64 180
  %18 = load i8, ptr %bottom_field_flag, align 4
  %cmp53 = icmp eq i8 %18, 0
  %add58 = add i32 %sub32.sink, %15
  %ThisPOC60 = getelementptr inbounds i8, ptr %pSlice, i64 104
  br i1 %cmp53, label %if.then55, label %if.else61

if.then55:                                        ; preds = %if.else52
  %toppoc59 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %add58, ptr %toppoc59, align 4
  store i32 %add58, ptr %ThisPOC60, align 8
  br label %if.end68

if.else61:                                        ; preds = %if.else52
  %bottompoc65 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %add58, ptr %bottompoc65, align 8
  store i32 %add58, ptr %ThisPOC60, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then55, %if.else61, %if.then40
  %19 = phi i32 [ %add58, %if.then55 ], [ %add58, %if.else61 ], [ %add43.add46, %if.then40 ]
  %framepoc70 = getelementptr inbounds i8, ptr %pSlice, i64 76
  store i32 %19, ptr %framepoc70, align 4
  %ThisPOC72 = getelementptr inbounds i8, ptr %p_Vid, i64 848984
  store i32 %19, ptr %ThisPOC72, align 8
  %frame_num = getelementptr inbounds i8, ptr %pSlice, i64 172
  %20 = load i32, ptr %frame_num, align 4
  %PreviousFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  %21 = load i32, ptr %PreviousFrameNum, align 4
  %cmp73.not = icmp eq i32 %20, %21
  br i1 %cmp73.not, label %if.end78, label %if.then75

if.then75:                                        ; preds = %if.end68
  store i32 %20, ptr %PreviousFrameNum, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end68
  %nal_reference_idc = getelementptr inbounds i8, ptr %pSlice, i64 56
  %22 = load i32, ptr %nal_reference_idc, align 8
  %tobool79.not = icmp eq i32 %22, 0
  br i1 %tobool79.not, label %sw.epilog, label %if.then80

if.then80:                                        ; preds = %if.end78
  %23 = load i32, ptr %pic_order_cnt_lsb511, align 8
  store i32 %23, ptr %PrevPicOrderCntLsb13513, align 4
  %PicOrderCntMsb83 = getelementptr inbounds i8, ptr %pSlice, i64 96
  %24 = load i32, ptr %PicOrderCntMsb83, align 8
  %PrevPicOrderCntMsb84 = getelementptr inbounds i8, ptr %p_Vid, i64 848952
  store i32 %24, ptr %PrevPicOrderCntMsb84, align 8
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  %idr_flag87 = getelementptr inbounds i8, ptr %pSlice, i64 48
  %25 = load i32, ptr %idr_flag87, align 8
  %tobool88.not = icmp eq i32 %25, 0
  br i1 %tobool88.not, label %if.else94, label %if.then89

if.then89:                                        ; preds = %sw.bb86
  %FrameNumOffset = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  store i32 0, ptr %FrameNumOffset, align 8
  %frame_num90 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %26 = load i32, ptr %frame_num90, align 4
  %tobool91.not = icmp eq i32 %26, 0
  br i1 %tobool91.not, label %if.end112, label %if.then92

if.then92:                                        ; preds = %if.then89
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10
  br label %if.end112

if.else94:                                        ; preds = %sw.bb86
  %last_has_mmco_595 = getelementptr inbounds i8, ptr %p_Vid, i64 849028
  %27 = load i32, ptr %last_has_mmco_595, align 4
  %tobool96.not = icmp eq i32 %27, 0
  br i1 %tobool96.not, label %if.end99, label %if.end99.thread

if.end99.thread:                                  ; preds = %if.else94
  %PreviousFrameNumOffset = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  store i32 0, ptr %PreviousFrameNumOffset, align 4
  %PreviousFrameNum98 = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  store i32 0, ptr %PreviousFrameNum98, align 4
  br label %if.else108

if.end99:                                         ; preds = %if.else94
  %PreviousFrameNum101.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  %.pre506 = load i32, ptr %PreviousFrameNum101.phi.trans.insert, align 4
  %frame_num100 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %28 = load i32, ptr %frame_num100, align 4
  %cmp102 = icmp ult i32 %28, %.pre506
  br i1 %cmp102, label %if.then104, label %if.else108

if.then104:                                       ; preds = %if.end99
  %PreviousFrameNumOffset105 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  %29 = load i32, ptr %PreviousFrameNumOffset105, align 4
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %30 = load i32, ptr %MaxFrameNum, align 8
  %add106 = add nsw i32 %30, %29
  %FrameNumOffset107 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  store i32 %add106, ptr %FrameNumOffset107, align 8
  br label %if.end112

if.else108:                                       ; preds = %if.end99.thread, %if.end99
  %PreviousFrameNumOffset109 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  %31 = load i32, ptr %PreviousFrameNumOffset109, align 4
  %FrameNumOffset110 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  store i32 %31, ptr %FrameNumOffset110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %if.else108, %if.then89, %if.then92
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %0, i64 2092
  %32 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %tobool113.not = icmp eq i32 %32, 0
  br i1 %tobool113.not, label %if.end120.thread, label %if.end120

if.end120:                                        ; preds = %if.end112
  %FrameNumOffset115 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  %33 = load i32, ptr %FrameNumOffset115, align 8
  %frame_num116 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %34 = load i32, ptr %frame_num116, align 4
  %add117 = add i32 %34, %33
  %35 = getelementptr inbounds i8, ptr %pSlice, i64 100
  store i32 %add117, ptr %35, align 4
  %nal_reference_idc121 = getelementptr inbounds i8, ptr %pSlice, i64 56
  %36 = load i32, ptr %nal_reference_idc121, align 8
  %tobool122.not = icmp ne i32 %36, 0
  %cmp125.not = icmp eq i32 %add117, 0
  %or.cond = select i1 %tobool122.not, i1 true, i1 %cmp125.not
  br i1 %or.cond, label %if.end129, label %if.then127

if.end120.thread:                                 ; preds = %if.end112
  %37 = getelementptr inbounds i8, ptr %pSlice, i64 100
  store i32 0, ptr %37, align 4
  %nal_reference_idc121517 = getelementptr inbounds i8, ptr %pSlice, i64 56
  br label %if.end129

if.then127:                                       ; preds = %if.end120
  %dec = add i32 %add117, -1
  store i32 %dec, ptr %35, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end120.thread, %if.then127, %if.end120
  %nal_reference_idc121519 = phi ptr [ %nal_reference_idc121, %if.then127 ], [ %nal_reference_idc121, %if.end120 ], [ %nal_reference_idc121517, %if.end120.thread ]
  %38 = phi ptr [ %35, %if.then127 ], [ %35, %if.end120 ], [ %37, %if.end120.thread ]
  %ExpectedDeltaPerPicOrderCntCycle = getelementptr inbounds i8, ptr %p_Vid, i64 848980
  store i32 0, ptr %ExpectedDeltaPerPicOrderCntCycle, align 4
  %39 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %tobool131.not = icmp eq i32 %39, 0
  br i1 %tobool131.not, label %if.end138, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end129
  %cmp134496 = icmp sgt i32 %39, 0
  br i1 %cmp134496, label %for.body.lr.ph, label %if.end138

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %0, i64 2096
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %40 = phi i32 [ 0, %for.body.lr.ph ], [ %add137, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv
  %41 = load i32, ptr %arrayidx, align 4
  %add137 = add nsw i32 %40, %41
  store i32 %add137, ptr %ExpectedDeltaPerPicOrderCntCycle, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %42 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %43 = sext i32 %42 to i64
  %cmp134 = icmp slt i64 %indvars.iv.next, %43
  br i1 %cmp134, label %for.body, label %if.end138

if.end138:                                        ; preds = %for.body, %for.cond.preheader, %if.end129
  %44 = phi i32 [ 0, %for.cond.preheader ], [ 0, %if.end129 ], [ %add137, %for.body ]
  %45 = phi i32 [ %39, %for.cond.preheader ], [ 0, %if.end129 ], [ %42, %for.body ]
  %46 = load i32, ptr %38, align 4
  %tobool140.not = icmp eq i32 %46, 0
  br i1 %tobool140.not, label %if.else164, label %if.then141

if.then141:                                       ; preds = %if.end138
  %sub143 = add i32 %46, -1
  %div145 = udiv i32 %sub143, %45
  %PicOrderCntCycleCnt = getelementptr inbounds i8, ptr %p_Vid, i64 848964
  store i32 %div145, ptr %PicOrderCntCycleCnt, align 4
  %47 = load i32, ptr %38, align 4
  %sub147 = add i32 %47, -1
  %48 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %rem = urem i32 %sub147, %48
  %FrameNumInPicOrderCntCycle = getelementptr inbounds i8, ptr %p_Vid, i64 848968
  store i32 %rem, ptr %FrameNumInPicOrderCntCycle, align 8
  %mul = mul nsw i32 %44, %div145
  %ExpectedPicOrderCnt = getelementptr inbounds i8, ptr %p_Vid, i64 848960
  store i32 %mul, ptr %ExpectedPicOrderCnt, align 8
  %cmp153.not498 = icmp slt i32 %rem, 0
  br i1 %cmp153.not498, label %if.end166, label %for.body155.lr.ph

for.body155.lr.ph:                                ; preds = %if.then141
  %offset_for_ref_frame156 = getelementptr inbounds i8, ptr %0, i64 2096
  %49 = zext nneg i32 %rem to i64
  %50 = add nuw nsw i64 %49, 1
  %min.iters.check = icmp ult i32 %rem, 15
  br i1 %min.iters.check, label %for.body155.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body155.lr.ph
  %scevgep = getelementptr i8, ptr %p_Vid, i64 848964
  %51 = shl nuw nsw i64 %49, 2
  %52 = getelementptr i8, ptr %0, i64 %51
  %scevgep527 = getelementptr i8, ptr %52, i64 2100
  %bound0 = icmp ult ptr %ExpectedPicOrderCnt, %scevgep527
  %bound1 = icmp ult ptr %offset_for_ref_frame156, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body155.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %50, 4294967280
  %53 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %53, %vector.ph ], [ %58, %vector.body ]
  %vec.phi528 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %59, %vector.body ]
  %vec.phi529 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %60, %vector.body ]
  %vec.phi530 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %61, %vector.body ]
  %54 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame156, i64 0, i64 %index
  %55 = getelementptr inbounds i8, ptr %54, i64 16
  %56 = getelementptr inbounds i8, ptr %54, i64 32
  %57 = getelementptr inbounds i8, ptr %54, i64 48
  %wide.load = load <4 x i32>, ptr %54, align 4, !alias.scope !5
  %wide.load531 = load <4 x i32>, ptr %55, align 4, !alias.scope !5
  %wide.load532 = load <4 x i32>, ptr %56, align 4, !alias.scope !5
  %wide.load533 = load <4 x i32>, ptr %57, align 4, !alias.scope !5
  %58 = add <4 x i32> %vec.phi, %wide.load
  %59 = add <4 x i32> %vec.phi528, %wide.load531
  %60 = add <4 x i32> %vec.phi529, %wide.load532
  %61 = add <4 x i32> %vec.phi530, %wide.load533
  %index.next = add nuw i64 %index, 16
  %62 = icmp eq i64 %index.next, %n.vec
  br i1 %62, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %59, %58
  %bin.rdx534 = add <4 x i32> %60, %bin.rdx
  %bin.rdx535 = add <4 x i32> %61, %bin.rdx534
  %63 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx535)
  store i32 %63, ptr %ExpectedPicOrderCnt, align 8
  %cmp.n = icmp eq i64 %50, %n.vec
  br i1 %cmp.n, label %if.end166, label %for.body155.preheader

for.body155.preheader:                            ; preds = %middle.block, %vector.memcheck, %for.body155.lr.ph
  %indvars.iv502.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body155.lr.ph ], [ %n.vec, %middle.block ]
  %add160500.ph = phi i32 [ %mul, %vector.memcheck ], [ %mul, %for.body155.lr.ph ], [ %63, %middle.block ]
  br label %for.body155

for.body155:                                      ; preds = %for.body155.preheader, %for.body155
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %for.body155 ], [ %indvars.iv502.ph, %for.body155.preheader ]
  %add160500 = phi i32 [ %add160, %for.body155 ], [ %add160500.ph, %for.body155.preheader ]
  %arrayidx158 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame156, i64 0, i64 %indvars.iv502
  %64 = load i32, ptr %arrayidx158, align 4
  %add160 = add nsw i32 %add160500, %64
  store i32 %add160, ptr %ExpectedPicOrderCnt, align 8
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1
  %cmp153.not.not = icmp ult i64 %indvars.iv502, %49
  br i1 %cmp153.not.not, label %for.body155, label %if.end166, !llvm.loop !11

if.else164:                                       ; preds = %if.end138
  %ExpectedPicOrderCnt165 = getelementptr inbounds i8, ptr %p_Vid, i64 848960
  store i32 0, ptr %ExpectedPicOrderCnt165, align 8
  br label %if.end166

if.end166:                                        ; preds = %for.body155, %middle.block, %if.then141, %if.else164
  %65 = phi i32 [ %mul, %if.then141 ], [ 0, %if.else164 ], [ %63, %middle.block ], [ %add160, %for.body155 ]
  %66 = load i32, ptr %nal_reference_idc121519, align 8
  %tobool168.not = icmp eq i32 %66, 0
  br i1 %tobool168.not, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end166
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %0, i64 2084
  %67 = load i32, ptr %offset_for_non_ref_pic, align 4
  %ExpectedPicOrderCnt170 = getelementptr inbounds i8, ptr %p_Vid, i64 848960
  %add171 = add nsw i32 %65, %67
  store i32 %add171, ptr %ExpectedPicOrderCnt170, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end166
  %68 = phi i32 [ %add171, %if.then169 ], [ %65, %if.end166 ]
  %field_pic_flag173 = getelementptr inbounds i8, ptr %pSlice, i64 176
  %69 = load i32, ptr %field_pic_flag173, align 8
  %cmp174 = icmp eq i32 %69, 0
  br i1 %cmp174, label %if.then176, label %if.else199

if.then176:                                       ; preds = %if.end172
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %pSlice, i64 88
  %70 = load i32, ptr %delta_pic_order_cnt, align 8
  %add179 = add nsw i32 %70, %68
  %toppoc180 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %add179, ptr %toppoc180, align 4
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %0, i64 2088
  %71 = load i32, ptr %offset_for_top_to_bottom_field, align 4
  %add182 = add nsw i32 %71, %add179
  %arrayidx184 = getelementptr inbounds i8, ptr %pSlice, i64 92
  %72 = load i32, ptr %arrayidx184, align 4
  %add185 = add nsw i32 %add182, %72
  %bottompoc186 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %add185, ptr %bottompoc186, align 8
  %.add185 = tail call i32 @llvm.smin.i32(i32 %add179, i32 %add185)
  br label %if.end221

if.else199:                                       ; preds = %if.end172
  %bottom_field_flag200 = getelementptr inbounds i8, ptr %pSlice, i64 180
  %73 = load i8, ptr %bottom_field_flag200, align 4
  %cmp202 = icmp eq i8 %73, 0
  br i1 %cmp202, label %if.then204, label %if.else211

if.then204:                                       ; preds = %if.else199
  %delta_pic_order_cnt206 = getelementptr inbounds i8, ptr %pSlice, i64 88
  %74 = load i32, ptr %delta_pic_order_cnt206, align 8
  %add208 = add nsw i32 %74, %68
  %toppoc209 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %add208, ptr %toppoc209, align 4
  br label %if.end221

if.else211:                                       ; preds = %if.else199
  %offset_for_top_to_bottom_field213 = getelementptr inbounds i8, ptr %0, i64 2088
  %75 = load i32, ptr %offset_for_top_to_bottom_field213, align 4
  %add214 = add nsw i32 %75, %68
  %delta_pic_order_cnt215 = getelementptr inbounds i8, ptr %pSlice, i64 88
  %76 = load i32, ptr %delta_pic_order_cnt215, align 8
  %add217 = add nsw i32 %add214, %76
  %bottompoc218 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %add217, ptr %bottompoc218, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.then204, %if.else211, %if.then176
  %add208.sink = phi i32 [ %add208, %if.then204 ], [ %add217, %if.else211 ], [ %.add185, %if.then176 ]
  %ThisPOC210 = getelementptr inbounds i8, ptr %pSlice, i64 104
  store i32 %add208.sink, ptr %ThisPOC210, align 8
  %framepoc223 = getelementptr inbounds i8, ptr %pSlice, i64 76
  store i32 %add208.sink, ptr %framepoc223, align 4
  %frame_num224 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %77 = load i32, ptr %frame_num224, align 4
  %PreviousFrameNum225 = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  store i32 %77, ptr %PreviousFrameNum225, align 4
  %FrameNumOffset226 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  %78 = load i32, ptr %FrameNumOffset226, align 8
  %PreviousFrameNumOffset227 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  store i32 %78, ptr %PreviousFrameNumOffset227, align 4
  br label %sw.epilog

sw.bb228:                                         ; preds = %entry
  %idr_flag229 = getelementptr inbounds i8, ptr %pSlice, i64 48
  %79 = load i32, ptr %idr_flag229, align 8
  %tobool230.not = icmp eq i32 %79, 0
  br i1 %tobool230.not, label %if.else241, label %if.then231

if.then231:                                       ; preds = %sw.bb228
  %FrameNumOffset232 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  store i32 0, ptr %FrameNumOffset232, align 8
  %bottompoc233 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 0, ptr %bottompoc233, align 8
  %toppoc234 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 0, ptr %toppoc234, align 4
  %framepoc235 = getelementptr inbounds i8, ptr %pSlice, i64 76
  store i32 0, ptr %framepoc235, align 4
  %ThisPOC236 = getelementptr inbounds i8, ptr %pSlice, i64 104
  store i32 0, ptr %ThisPOC236, align 8
  %frame_num237 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %80 = load i32, ptr %frame_num237, align 4
  %tobool238.not = icmp eq i32 %80, 0
  br i1 %tobool238.not, label %if.end300, label %if.then239

if.then239:                                       ; preds = %if.then231
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10
  %.pre505 = load i32, ptr %frame_num237, align 4
  br label %if.end300

if.else241:                                       ; preds = %sw.bb228
  %last_has_mmco_5242 = getelementptr inbounds i8, ptr %p_Vid, i64 849028
  %81 = load i32, ptr %last_has_mmco_5242, align 4
  %tobool243.not = icmp eq i32 %81, 0
  %PreviousFrameNum249.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  br i1 %tobool243.not, label %if.end247, label %if.end247.thread

if.end247.thread:                                 ; preds = %if.else241
  store i32 0, ptr %PreviousFrameNum249.phi.trans.insert, align 4
  %PreviousFrameNumOffset246 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  store i32 0, ptr %PreviousFrameNumOffset246, align 4
  %frame_num248523 = getelementptr inbounds i8, ptr %pSlice, i64 172
  br label %if.else257

if.end247:                                        ; preds = %if.else241
  %.pre = load i32, ptr %PreviousFrameNum249.phi.trans.insert, align 4
  %frame_num248 = getelementptr inbounds i8, ptr %pSlice, i64 172
  %82 = load i32, ptr %frame_num248, align 4
  %cmp250 = icmp ult i32 %82, %.pre
  br i1 %cmp250, label %if.then252, label %if.else257

if.then252:                                       ; preds = %if.end247
  %PreviousFrameNumOffset253 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  %83 = load i32, ptr %PreviousFrameNumOffset253, align 4
  %MaxFrameNum254 = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %84 = load i32, ptr %MaxFrameNum254, align 8
  %add255 = add nsw i32 %84, %83
  br label %if.end260

if.else257:                                       ; preds = %if.end247.thread, %if.end247
  %frame_num248526 = phi ptr [ %frame_num248523, %if.end247.thread ], [ %frame_num248, %if.end247 ]
  %PreviousFrameNumOffset258 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  %85 = load i32, ptr %PreviousFrameNumOffset258, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.else257, %if.then252
  %frame_num248525 = phi ptr [ %frame_num248, %if.then252 ], [ %frame_num248526, %if.else257 ]
  %.sink = phi i32 [ %add255, %if.then252 ], [ %85, %if.else257 ]
  %86 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  store i32 %.sink, ptr %86, align 8
  %87 = load i32, ptr %frame_num248525, align 4
  %add263 = add i32 %87, %.sink
  %AbsFrameNum264 = getelementptr inbounds i8, ptr %pSlice, i64 100
  store i32 %add263, ptr %AbsFrameNum264, align 4
  %nal_reference_idc265 = getelementptr inbounds i8, ptr %pSlice, i64 56
  %88 = load i32, ptr %nal_reference_idc265, align 8
  %tobool266.not = icmp eq i32 %88, 0
  %mul269 = shl i32 %add263, 1
  %sub270 = sext i1 %tobool266.not to i32
  %89 = add i32 %mul269, %sub270
  %90 = getelementptr inbounds i8, ptr %pSlice, i64 104
  store i32 %89, ptr %90, align 8
  %field_pic_flag277 = getelementptr inbounds i8, ptr %pSlice, i64 176
  %91 = load i32, ptr %field_pic_flag277, align 8
  %cmp278 = icmp eq i32 %91, 0
  br i1 %cmp278, label %if.then280, label %if.else285

if.then280:                                       ; preds = %if.end260
  %framepoc282 = getelementptr inbounds i8, ptr %pSlice, i64 76
  store i32 %89, ptr %framepoc282, align 4
  %bottompoc283 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %89, ptr %bottompoc283, align 8
  %toppoc284 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %89, ptr %toppoc284, align 4
  br label %if.end300

if.else285:                                       ; preds = %if.end260
  %bottom_field_flag286 = getelementptr inbounds i8, ptr %pSlice, i64 180
  %92 = load i8, ptr %bottom_field_flag286, align 4
  %cmp288 = icmp eq i8 %92, 0
  %framepoc292 = getelementptr inbounds i8, ptr %pSlice, i64 76
  store i32 %89, ptr %framepoc292, align 4
  br i1 %cmp288, label %if.then290, label %if.else294

if.then290:                                       ; preds = %if.else285
  %toppoc293 = getelementptr inbounds i8, ptr %pSlice, i64 68
  store i32 %89, ptr %toppoc293, align 4
  br label %if.end300

if.else294:                                       ; preds = %if.else285
  %bottompoc297 = getelementptr inbounds i8, ptr %pSlice, i64 72
  store i32 %89, ptr %bottompoc297, align 8
  br label %if.end300

if.end300:                                        ; preds = %if.then280, %if.else294, %if.then290, %if.then231, %if.then239
  %93 = phi i32 [ %87, %if.then280 ], [ %87, %if.else294 ], [ %87, %if.then290 ], [ 0, %if.then231 ], [ %.pre505, %if.then239 ]
  %PreviousFrameNum302 = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  store i32 %93, ptr %PreviousFrameNum302, align 4
  %FrameNumOffset303 = getelementptr inbounds i8, ptr %p_Vid, i64 848976
  %94 = load i32, ptr %FrameNumOffset303, align 8
  %PreviousFrameNumOffset304 = getelementptr inbounds i8, ptr %p_Vid, i64 848988
  store i32 %94, ptr %PreviousFrameNumOffset304, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end78, %if.then80, %if.end300, %if.end221
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dumppoc(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #5 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %1 = load ptr, ptr %ppSliceList, align 8
  %2 = load ptr, ptr %1, align 8
  %toppoc = getelementptr inbounds i8, ptr %2, i64 68
  %3 = load i32, ptr %toppoc, align 4
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %3)
  %4 = load ptr, ptr %ppSliceList, align 8
  %5 = load ptr, ptr %4, align 8
  %bottompoc = getelementptr inbounds i8, ptr %5, i64 72
  %6 = load i32, ptr %bottompoc, align 8
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %6)
  %7 = load ptr, ptr %ppSliceList, align 8
  %8 = load ptr, ptr %7, align 8
  %frame_num = getelementptr inbounds i8, ptr %8, i64 172
  %9 = load i32, ptr %frame_num, align 4
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %9)
  %10 = load ptr, ptr %ppSliceList, align 8
  %11 = load ptr, ptr %10, align 8
  %field_pic_flag = getelementptr inbounds i8, ptr %11, i64 176
  %12 = load i32, ptr %field_pic_flag, align 8
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %12)
  %13 = load ptr, ptr %ppSliceList, align 8
  %14 = load ptr, ptr %13, align 8
  %bottom_field_flag = getelementptr inbounds i8, ptr %14, i64 180
  %15 = load i8, ptr %bottom_field_flag, align 4
  %conv = zext i8 %15 to i32
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %conv)
  %puts61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %0, i64 2068
  %16 = load i32, ptr %log2_max_frame_num_minus4, align 4
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %16)
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %0, i64 2076
  %17 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %17)
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %0, i64 2072
  %18 = load i32, ptr %pic_order_cnt_type, align 4
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %18)
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %0, i64 2092
  %19 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %call19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %19)
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %0, i64 2080
  %20 = load i32, ptr %delta_pic_order_always_zero_flag, align 4
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %20)
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %0, i64 2084
  %21 = load i32, ptr %offset_for_non_ref_pic, align 4
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %21)
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %0, i64 2088
  %22 = load i32, ptr %offset_for_top_to_bottom_field, align 4
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %22)
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %0, i64 2096
  %23 = load i32, ptr %offset_for_ref_frame, align 4
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %23)
  %arrayidx26 = getelementptr inbounds i8, ptr %0, i64 2100
  %24 = load i32, ptr %arrayidx26, align 4
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %24)
  %puts62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8
  %25 = load ptr, ptr %active_pps, align 8
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %25, i64 2040
  %26 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag, align 8
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %26)
  %27 = load ptr, ptr %ppSliceList, align 8
  %28 = load ptr, ptr %27, align 8
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %28, i64 88
  %29 = load i32, ptr %delta_pic_order_cnt, align 8
  %call33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %29)
  %30 = load ptr, ptr %ppSliceList, align 8
  %31 = load ptr, ptr %30, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %31, i64 92
  %32 = load i32, ptr %arrayidx37, align 4
  %call38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %32)
  %33 = load ptr, ptr %ppSliceList, align 8
  %34 = load ptr, ptr %33, align 8
  %idr_flag = getelementptr inbounds i8, ptr %34, i64 48
  %35 = load i32, ptr %idr_flag, align 8
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %35)
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %36 = load i32, ptr %MaxFrameNum, align 8
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %36)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @picture_order(ptr nocapture noundef readonly %pSlice) local_unnamed_addr #7 {
entry:
  %field_pic_flag = getelementptr inbounds i8, ptr %pSlice, i64 176
  %0 = load i32, ptr %field_pic_flag, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %bottom_field_flag = getelementptr inbounds i8, ptr %pSlice, i64 180
  %1 = load i8, ptr %bottom_field_flag, align 4
  %cmp1 = icmp eq i8 %1, 0
  %. = select i1 %cmp1, i64 68, i64 72
  br label %return

return:                                           ; preds = %if.else, %entry
  %.sink = phi i64 [ 76, %entry ], [ %., %if.else ]
  %bottompoc = getelementptr inbounds i8, ptr %pSlice, i64 %.sink
  %retval.0 = load i32, ptr %bottompoc, align 4
  ret i32 %retval.0
}

declare void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7}
!7 = distinct !{!7, !"LVerDomain"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !9}
