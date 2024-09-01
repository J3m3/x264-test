; ModuleID = 'ldecod_src/header.c'
source_filename = "ldecod_src/header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [20 x i8] c"SH: colour_plane_id\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [30 x i8] c"SH: num_ref_idx_override_flag\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1, !dbg !71
@.str.19 = private unnamed_addr constant [45 x i8] c"slice_qp_delta makes slice_qp_y out of range\00", align 1, !dbg !73
@.str.20 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1, !dbg !78
@.str.21 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1, !dbg !83
@.str.22 = private unnamed_addr constant [45 x i8] c"slice_qs_delta makes slice_qs_y out of range\00", align 1, !dbg !85
@.str.23 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1, !dbg !87
@.str.24 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1, !dbg !92
@.str.25 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1, !dbg !94
@.str.26 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1, !dbg !96
@.str.27 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1, !dbg !101
@.str.28 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1, !dbg !103
@.str.29 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1, !dbg !105
@.str.30 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1, !dbg !110
@.str.31 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1, !dbg !115
@.str.32 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1, !dbg !117
@.str.33 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1, !dbg !119
@.str.34 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1, !dbg !124
@.str.35 = private unnamed_addr constant [43 x i8] c"frame_num not equal to zero in IDR picture\00", align 1, !dbg !126
@.str.37 = private unnamed_addr constant [42 x i8] c"toppoc                                %d\0A\00", align 1, !dbg !131
@.str.38 = private unnamed_addr constant [42 x i8] c"bottompoc                             %d\0A\00", align 1, !dbg !136
@.str.39 = private unnamed_addr constant [42 x i8] c"frame_num                             %d\0A\00", align 1, !dbg !138
@.str.40 = private unnamed_addr constant [42 x i8] c"field_pic_flag                        %d\0A\00", align 1, !dbg !140
@.str.41 = private unnamed_addr constant [42 x i8] c"bottom_field_flag                     %d\0A\00", align 1, !dbg !142
@.str.43 = private unnamed_addr constant [42 x i8] c"log2_max_frame_num_minus4             %d\0A\00", align 1, !dbg !144
@.str.44 = private unnamed_addr constant [42 x i8] c"log2_max_pic_order_cnt_lsb_minus4     %d\0A\00", align 1, !dbg !146
@.str.45 = private unnamed_addr constant [42 x i8] c"pic_order_cnt_type                    %d\0A\00", align 1, !dbg !148
@.str.46 = private unnamed_addr constant [42 x i8] c"num_ref_frames_in_pic_order_cnt_cycle %d\0A\00", align 1, !dbg !150
@.str.47 = private unnamed_addr constant [42 x i8] c"delta_pic_order_always_zero_flag      %d\0A\00", align 1, !dbg !152
@.str.48 = private unnamed_addr constant [42 x i8] c"offset_for_non_ref_pic                %d\0A\00", align 1, !dbg !154
@.str.49 = private unnamed_addr constant [42 x i8] c"offset_for_top_to_bottom_field        %d\0A\00", align 1, !dbg !156
@.str.50 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[0]               %d\0A\00", align 1, !dbg !158
@.str.51 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[1]               %d\0A\00", align 1, !dbg !160
@.str.53 = private unnamed_addr constant [64 x i8] c"bottom_field_pic_order_in_frame_present_flag                %d\0A\00", align 1, !dbg !162
@.str.54 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[0]                %d\0A\00", align 1, !dbg !167
@.str.55 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[1]                %d\0A\00", align 1, !dbg !169
@.str.56 = private unnamed_addr constant [42 x i8] c"idr_flag                              %d\0A\00", align 1, !dbg !171
@.str.57 = private unnamed_addr constant [42 x i8] c"MaxFrameNum                           %d\0A\00", align 1, !dbg !173
@.str.58 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1, !dbg !175
@.str.59 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l0\00", align 1, !dbg !177
@.str.60 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1, !dbg !179
@.str.61 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1, !dbg !181
@.str.62 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1, !dbg !183
@.str.63 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l1\00", align 1, !dbg !185
@.str.64 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1, !dbg !187
@.str.65 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1, !dbg !189
@.str.66 = private unnamed_addr constant [38 x i8] c"SH: ref_pic_list_modification_flag_l0\00", align 1, !dbg !191
@.str.67 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l0\00", align 1, !dbg !196
@.str.68 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l0\00", align 1, !dbg !198
@.str.69 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l1\00", align 1, !dbg !200
@.str.70 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l1\00", align 1, !dbg !202
@.str.71 = private unnamed_addr constant [27 x i8] c"SH: luma_log2_weight_denom\00", align 1, !dbg !204
@.str.72 = private unnamed_addr constant [29 x i8] c"SH: chroma_log2_weight_denom\00", align 1, !dbg !206
@.str.73 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1, !dbg !208
@.str.74 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1, !dbg !210
@.str.75 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1, !dbg !212
@.str.76 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l0\00", align 1, !dbg !214
@.str.77 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l0\00", align 1, !dbg !219
@.str.78 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l0\00", align 1, !dbg !224
@.str.79 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1, !dbg !226
@.str.80 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1, !dbg !228
@.str.81 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1, !dbg !230
@.str.82 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l1\00", align 1, !dbg !232
@.str.83 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l1\00", align 1, !dbg !234
@.str.84 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l1\00", align 1, !dbg !236
@str = private unnamed_addr constant [15 x i8] c"\0APOC locals...\00", align 1
@str.85 = private unnamed_addr constant [8 x i8] c"POC SPS\00", align 1
@str.86 = private unnamed_addr constant [20 x i8] c"POC in SLice Header\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @CeilLog2(i32 noundef %uiVal) local_unnamed_addr #0 !dbg !356 {
entry:
    #dbg_value(i32 %uiVal, !360, !DIExpression(), !363)
  %sub = add i32 %uiVal, -1, !dbg !364
    #dbg_value(i32 %sub, !361, !DIExpression(), !363)
    #dbg_value(i32 0, !362, !DIExpression(), !363)
  %cmp.not3 = icmp eq i32 %sub, 0, !dbg !365
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub, i1 true), !dbg !366
  %1 = sub nuw nsw i32 32, %0, !dbg !366
  %uiRet.0.lcssa = select i1 %cmp.not3, i32 0, i32 %1, !dbg !366
  ret i32 %uiRet.0.lcssa, !dbg !367
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @CeilLog2_sf(i32 noundef %uiVal) local_unnamed_addr #0 !dbg !368 {
entry:
    #dbg_value(i32 %uiVal, !370, !DIExpression(), !373)
  %sub = add i32 %uiVal, -1, !dbg !374
    #dbg_value(i32 %sub, !371, !DIExpression(), !373)
    #dbg_value(i32 0, !372, !DIExpression(), !373)
  %cmp.not3 = icmp eq i32 %sub, 0, !dbg !375
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub, i1 true), !dbg !376
  %1 = sub nuw nsw i32 32, %0, !dbg !376
  %uiRet.0.lcssa = select i1 %cmp.not3, i32 0, i32 %1, !dbg !376
  ret i32 %uiRet.0.lcssa, !dbg !377
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FirstPartOfSliceHeader(ptr nocapture noundef %currSlice) local_unnamed_addr #1 !dbg !378 {
entry:
    #dbg_value(ptr %currSlice, !1533, !DIExpression(), !1539)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !1540
    #dbg_value(ptr %0, !1534, !DIExpression(), !1539)
    #dbg_value(i8 0, !1535, !DIExpression(), !1539)
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312, !dbg !1541
  %1 = load ptr, ptr %partArr, align 8, !dbg !1541
    #dbg_value(ptr %1, !1536, !DIExpression(), !1539)
  %2 = load ptr, ptr %1, align 8, !dbg !1542
    #dbg_value(ptr %2, !1537, !DIExpression(), !1539)
  %frame_bitoffset = getelementptr inbounds i8, ptr %2, i64 8, !dbg !1543
  %3 = load i32, ptr %frame_bitoffset, align 8, !dbg !1543
  %4 = load ptr, ptr @p_Dec, align 8, !dbg !1544
  %UsedBits = getelementptr inbounds i8, ptr %4, i64 24, !dbg !1545
  store i32 %3, ptr %UsedBits, align 8, !dbg !1546
  %call = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %2) #10, !dbg !1547
  %start_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 188, !dbg !1548
  store i32 %call, ptr %start_mb_nr, align 4, !dbg !1549
  %call6 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %2) #10, !dbg !1550
    #dbg_value(i32 %call6, !1538, !DIExpression(), !1539)
  %cmp = icmp sgt i32 %call6, 4, !dbg !1551
  %sub = add nsw i32 %call6, -5
  %spec.select = select i1 %cmp, i32 %sub, i32 %call6, !dbg !1553
    #dbg_value(i32 %spec.select, !1538, !DIExpression(), !1539)
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164, !dbg !1554
  store i32 %spec.select, ptr %slice_type, align 4, !dbg !1555
  %type = getelementptr inbounds i8, ptr %0, i64 848776, !dbg !1556
  store i32 %spec.select, ptr %type, align 8, !dbg !1557
  %call7 = tail call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %2) #10, !dbg !1558
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228, !dbg !1559
  store i32 %call7, ptr %pic_parameter_set_id, align 4, !dbg !1560
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280, !dbg !1561
  %5 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !1561
  %tobool.not = icmp eq i32 %5, 0, !dbg !1563
  br i1 %tobool.not, label %if.end11, label %if.then8, !dbg !1564

if.then8:                                         ; preds = %entry
  %call9 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #10, !dbg !1565
  br label %if.end11, !dbg !1566

if.end11:                                         ; preds = %entry, %if.then8
  %call9.sink = phi i32 [ %call9, %if.then8 ], [ 0, %entry ], !dbg !1567
  %6 = getelementptr inbounds i8, ptr %currSlice, i64 216, !dbg !1567
  store i32 %call9.sink, ptr %6, align 8, !dbg !1567
  %7 = load ptr, ptr @p_Dec, align 8, !dbg !1568
  %UsedBits12 = getelementptr inbounds i8, ptr %7, i64 24, !dbg !1569
  %8 = load i32, ptr %UsedBits12, align 8, !dbg !1569
  ret i32 %8, !dbg !1570
}

declare !dbg !1571 i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1576 i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @RestOfSliceHeader(ptr noundef %currSlice) local_unnamed_addr #1 !dbg !1579 {
entry:
    #dbg_value(ptr %currSlice, !1581, !DIExpression(), !1590)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !1591
    #dbg_value(ptr %0, !1582, !DIExpression(), !1590)
  %p_Inp2 = getelementptr inbounds i8, ptr %currSlice, i64 8, !dbg !1592
  %1 = load ptr, ptr %p_Inp2, align 8, !dbg !1592
    #dbg_value(ptr %1, !1583, !DIExpression(), !1590)
  %active_sps3 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !1593
  %2 = load ptr, ptr %active_sps3, align 8, !dbg !1593
    #dbg_value(ptr %2, !1584, !DIExpression(), !1590)
    #dbg_value(i8 0, !1585, !DIExpression(), !1590)
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312, !dbg !1594
  %3 = load ptr, ptr %partArr, align 8, !dbg !1594
    #dbg_value(ptr %3, !1586, !DIExpression(), !1590)
  %4 = load ptr, ptr %3, align 8, !dbg !1595
    #dbg_value(ptr %4, !1587, !DIExpression(), !1590)
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %2, i64 2068, !dbg !1596
  %5 = load i32, ptr %log2_max_frame_num_minus4, align 4, !dbg !1596
  %add = add i32 %5, 4, !dbg !1597
  %call = tail call i32 @u_v(i32 noundef %add, ptr noundef nonnull @.str.4, ptr noundef %4) #10, !dbg !1598
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172, !dbg !1599
  store i32 %call, ptr %frame_num, align 4, !dbg !1600
  %idr_flag = getelementptr inbounds i8, ptr %currSlice, i64 48, !dbg !1601
  %6 = load i32, ptr %idr_flag, align 8, !dbg !1601
  %tobool.not = icmp eq i32 %6, 0, !dbg !1603
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1604

if.then:                                          ; preds = %entry
  %pre_frame_num = getelementptr inbounds i8, ptr %0, i64 848944, !dbg !1605
  store i32 %call, ptr %pre_frame_num, align 8, !dbg !1607
  %last_ref_pic_poc = getelementptr inbounds i8, ptr %0, i64 849228, !dbg !1608
  store i32 0, ptr %last_ref_pic_poc, align 4, !dbg !1609
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %entry
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %2, i64 3136, !dbg !1611
  %7 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !1611
  %tobool8.not = icmp eq i32 %7, 0, !dbg !1613
  br i1 %tobool8.not, label %if.else, label %if.then9, !dbg !1614

if.then9:                                         ; preds = %if.end
  %structure = getelementptr inbounds i8, ptr %0, i64 848876, !dbg !1615
  store i32 0, ptr %structure, align 4, !dbg !1617
  %field_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !1618
  store i32 0, ptr %field_pic_flag, align 8, !dbg !1619
  br label %if.end24, !dbg !1620

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %4) #10, !dbg !1621
  %field_pic_flag11 = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !1623
  store i32 %call10, ptr %field_pic_flag11, align 8, !dbg !1624
  %tobool13.not = icmp eq i32 %call10, 0, !dbg !1625
  %bottom_field_flag22 = getelementptr inbounds i8, ptr %currSlice, i64 180, !dbg !1627
  br i1 %tobool13.not, label %if.else20, label %if.then14, !dbg !1628

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %4) #10, !dbg !1629
  %conv = trunc i32 %call15 to i8, !dbg !1631
  store i8 %conv, ptr %bottom_field_flag22, align 4, !dbg !1632
  %conv17 = and i32 %call15, 255, !dbg !1633
  %tobool18.not = icmp eq i32 %conv17, 0, !dbg !1633
  %cond = select i1 %tobool18.not, i32 1, i32 2, !dbg !1633
  %structure19 = getelementptr inbounds i8, ptr %0, i64 848876, !dbg !1634
  store i32 %cond, ptr %structure19, align 4, !dbg !1635
  br label %if.end24, !dbg !1636

if.else20:                                        ; preds = %if.else
  %structure21 = getelementptr inbounds i8, ptr %0, i64 848876, !dbg !1637
  store i32 0, ptr %structure21, align 4, !dbg !1639
  store i8 0, ptr %bottom_field_flag22, align 4, !dbg !1640
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.else20, %if.then9
  %structure25 = getelementptr inbounds i8, ptr %0, i64 848876, !dbg !1641
  %8 = load i32, ptr %structure25, align 4, !dbg !1641
  %structure26 = getelementptr inbounds i8, ptr %currSlice, i64 184, !dbg !1642
  store i32 %8, ptr %structure26, align 8, !dbg !1643
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %2, i64 3140, !dbg !1644
  %9 = load i32, ptr %mb_adaptive_frame_field_flag, align 4, !dbg !1644
  %tobool27.not = icmp eq i32 %9, 0, !dbg !1645
  br i1 %tobool27.not, label %land.end, label %land.rhs, !dbg !1646

land.rhs:                                         ; preds = %if.end24
  %field_pic_flag28 = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !1647
  %10 = load i32, ptr %field_pic_flag28, align 8, !dbg !1647
  %cmp = icmp eq i32 %10, 0, !dbg !1648
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end24
  %11 = phi i1 [ false, %if.end24 ], [ %cmp, %land.rhs ], !dbg !1590
  %land.ext = zext i1 %11 to i32, !dbg !1646
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128, !dbg !1649
  store i32 %land.ext, ptr %mb_aff_frame_flag, align 8, !dbg !1650
  %12 = load i32, ptr %idr_flag, align 8, !dbg !1651
  %tobool46.not = icmp eq i32 %12, 0, !dbg !1653
  br i1 %tobool46.not, label %if.end49, label %if.then47, !dbg !1654

if.then47:                                        ; preds = %land.end
  %call48 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #10, !dbg !1655
  %idr_pic_id = getelementptr inbounds i8, ptr %currSlice, i64 52, !dbg !1657
  store i32 %call48, ptr %idr_pic_id, align 4, !dbg !1658
  br label %if.end49, !dbg !1659

if.end49:                                         ; preds = %if.then47, %land.end
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %2, i64 2072, !dbg !1660
  %13 = load i32, ptr %pic_order_cnt_type, align 4, !dbg !1660
  %cmp50 = icmp eq i32 %13, 0, !dbg !1662
  br i1 %cmp50, label %if.then52, label %if.end64, !dbg !1663

if.then52:                                        ; preds = %if.end49
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %2, i64 2076, !dbg !1664
  %14 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !1664
  %add53 = add i32 %14, 4, !dbg !1666
  %call54 = tail call i32 @u_v(i32 noundef %add53, ptr noundef nonnull @.str.8, ptr noundef %4) #10, !dbg !1667
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %currSlice, i64 80, !dbg !1668
  store i32 %call54, ptr %pic_order_cnt_lsb, align 8, !dbg !1669
  %active_pps = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1670
  %15 = load ptr, ptr %active_pps, align 8, !dbg !1670
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %15, i64 2040, !dbg !1672
  %16 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag, align 8, !dbg !1672
  %cmp55 = icmp eq i32 %16, 1, !dbg !1673
  br i1 %cmp55, label %land.lhs.true, label %if.end64thread-pre-split, !dbg !1674

land.lhs.true:                                    ; preds = %if.then52
  %field_pic_flag57 = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !1675
  %17 = load i32, ptr %field_pic_flag57, align 8, !dbg !1675
  %tobool58.not = icmp eq i32 %17, 0, !dbg !1676
  br i1 %tobool58.not, label %if.then59, label %if.end64thread-pre-split, !dbg !1677

if.then59:                                        ; preds = %land.lhs.true
  %call60 = tail call i32 @se_v(ptr noundef nonnull @.str.9, ptr noundef %4) #10, !dbg !1678
  br label %if.end64thread-pre-split, !dbg !1679

if.end64thread-pre-split:                         ; preds = %if.then52, %land.lhs.true, %if.then59
  %.sink = phi i32 [ %call60, %if.then59 ], [ 0, %land.lhs.true ], [ 0, %if.then52 ]
  %delta_pic_order_cnt_bottom62 = getelementptr inbounds i8, ptr %currSlice, i64 84, !dbg !1680
  store i32 %.sink, ptr %delta_pic_order_cnt_bottom62, align 4, !dbg !1680
  %.pr = load i32, ptr %pic_order_cnt_type, align 4, !dbg !1681
  br label %if.end64, !dbg !1681

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.end49
  %18 = phi i32 [ %.pr, %if.end64thread-pre-split ], [ %13, %if.end49 ], !dbg !1681
  %cmp66 = icmp eq i32 %18, 1, !dbg !1683
  br i1 %cmp66, label %if.then68, label %if.end94, !dbg !1684

if.then68:                                        ; preds = %if.end64
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %2, i64 2080, !dbg !1685
  %19 = load i32, ptr %delta_pic_order_always_zero_flag, align 4, !dbg !1685
  %tobool69.not = icmp eq i32 %19, 0, !dbg !1688
  br i1 %tobool69.not, label %if.then70, label %if.else88, !dbg !1689

if.then70:                                        ; preds = %if.then68
  %call71 = tail call i32 @se_v(ptr noundef nonnull @.str.10, ptr noundef %4) #10, !dbg !1690
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %currSlice, i64 88, !dbg !1692
  store i32 %call71, ptr %delta_pic_order_cnt, align 8, !dbg !1693
  %active_pps73 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1694
  %20 = load ptr, ptr %active_pps73, align 8, !dbg !1694
  %bottom_field_pic_order_in_frame_present_flag74 = getelementptr inbounds i8, ptr %20, i64 2040, !dbg !1696
  %21 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag74, align 8, !dbg !1696
  %cmp75 = icmp eq i32 %21, 1, !dbg !1697
  br i1 %cmp75, label %land.lhs.true77, label %if.end94.sink.split, !dbg !1698

land.lhs.true77:                                  ; preds = %if.then70
  %field_pic_flag78 = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !1699
  %22 = load i32, ptr %field_pic_flag78, align 8, !dbg !1699
  %tobool79.not = icmp eq i32 %22, 0, !dbg !1700
  br i1 %tobool79.not, label %if.then80, label %if.end94.sink.split, !dbg !1701

if.then80:                                        ; preds = %land.lhs.true77
  %call81 = tail call i32 @se_v(ptr noundef nonnull @.str.11, ptr noundef %4) #10, !dbg !1702
  br label %if.end94.sink.split, !dbg !1703

if.else88:                                        ; preds = %if.then68
  %delta_pic_order_cnt89 = getelementptr inbounds i8, ptr %currSlice, i64 88, !dbg !1704
  store i32 0, ptr %delta_pic_order_cnt89, align 8, !dbg !1706
  br label %if.end94.sink.split

if.end94.sink.split:                              ; preds = %if.then70, %land.lhs.true77, %if.then80, %if.else88
  %.sink608 = phi i32 [ 0, %if.else88 ], [ %call81, %if.then80 ], [ 0, %land.lhs.true77 ], [ 0, %if.then70 ]
  %arrayidx92 = getelementptr inbounds i8, ptr %currSlice, i64 92, !dbg !1707
  store i32 %.sink608, ptr %arrayidx92, align 4, !dbg !1707
  br label %if.end94, !dbg !1708

if.end94:                                         ; preds = %if.end94.sink.split, %if.end64
  %active_pps95 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1708
  %23 = load ptr, ptr %active_pps95, align 8, !dbg !1708
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %23, i64 2208, !dbg !1710
  %24 = load i32, ptr %redundant_pic_cnt_present_flag, align 8, !dbg !1710
  %tobool96.not = icmp eq i32 %24, 0, !dbg !1711
  br i1 %tobool96.not, label %if.end99, label %if.then97, !dbg !1712

if.then97:                                        ; preds = %if.end94
  %call98 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef %4) #10, !dbg !1713
  %redundant_pic_cnt = getelementptr inbounds i8, ptr %currSlice, i64 220, !dbg !1715
  store i32 %call98, ptr %redundant_pic_cnt, align 4, !dbg !1716
  br label %if.end99, !dbg !1717

if.end99:                                         ; preds = %if.then97, %if.end94
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164, !dbg !1718
  %25 = load i32, ptr %slice_type, align 4, !dbg !1718
  %cmp100 = icmp eq i32 %25, 1, !dbg !1720
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !1721

if.then102:                                       ; preds = %if.end99
  %call103 = tail call i32 @u_1(ptr noundef nonnull @.str.13, ptr noundef %4) #10, !dbg !1722
  %direct_spatial_mv_pred_flag = getelementptr inbounds i8, ptr %currSlice, i64 132, !dbg !1724
  store i32 %call103, ptr %direct_spatial_mv_pred_flag, align 4, !dbg !1725
  br label %if.end104, !dbg !1726

if.end104:                                        ; preds = %if.then102, %if.end99
  %26 = load ptr, ptr %active_pps95, align 8, !dbg !1727
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %26, i64 2168, !dbg !1728
  %27 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8, !dbg !1728
  %add106 = add nsw i32 %27, 1, !dbg !1729
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136, !dbg !1730
  store i32 %add106, ptr %num_ref_idx_active, align 8, !dbg !1731
  %28 = load ptr, ptr %active_pps95, align 8, !dbg !1732
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %28, i64 2172, !dbg !1733
  %29 = load i32, ptr %num_ref_idx_l1_active_minus1, align 4, !dbg !1733
  %add109 = add nsw i32 %29, 1, !dbg !1734
  %arrayidx111 = getelementptr inbounds i8, ptr %currSlice, i64 140, !dbg !1735
  store i32 %add109, ptr %arrayidx111, align 4, !dbg !1736
  %type = getelementptr inbounds i8, ptr %0, i64 848776, !dbg !1737
  %30 = load i32, ptr %type, align 8, !dbg !1737
  switch i32 %30, label %if.end139 [
    i32 0, label %if.then121
    i32 3, label %if.then121
    i32 1, label %if.then121
  ], !dbg !1739

if.then121:                                       ; preds = %if.end104, %if.end104, %if.end104
  %call122 = tail call i32 @u_1(ptr noundef nonnull @.str.14, ptr noundef %4) #10, !dbg !1740
    #dbg_value(i32 %call122, !1588, !DIExpression(), !1590)
  %tobool123.not = icmp eq i32 %call122, 0, !dbg !1742
  br i1 %tobool123.not, label %if.end139, label %if.then124, !dbg !1744

if.then124:                                       ; preds = %if.then121
  %call125 = tail call i32 @ue_v(ptr noundef nonnull @.str.15, ptr noundef %4) #10, !dbg !1745
  %add126 = add nsw i32 %call125, 1, !dbg !1747
  store i32 %add126, ptr %num_ref_idx_active, align 8, !dbg !1748
  %31 = load i32, ptr %type, align 8, !dbg !1749
  %cmp130 = icmp eq i32 %31, 1, !dbg !1751
  br i1 %cmp130, label %if.then132, label %if.end139, !dbg !1752

if.then132:                                       ; preds = %if.then124
  %call133 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef %4) #10, !dbg !1753
  %add134 = add nsw i32 %call133, 1, !dbg !1755
  store i32 %add134, ptr %arrayidx111, align 4, !dbg !1756
  br label %if.end139, !dbg !1757

if.end139:                                        ; preds = %if.end104, %if.then121, %if.then132, %if.then124
  %32 = load i32, ptr %slice_type, align 4, !dbg !1758
  %cmp141.not = icmp eq i32 %32, 1, !dbg !1760
  br i1 %cmp141.not, label %if.end146, label %if.then143, !dbg !1761

if.then143:                                       ; preds = %if.end139
  store i32 0, ptr %arrayidx111, align 4, !dbg !1762
  br label %if.end146, !dbg !1764

if.end146:                                        ; preds = %if.then143, %if.end139
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32, !dbg !1765
  %33 = load i32, ptr %svc_extension_flag, align 8, !dbg !1765
  %switch = icmp ult i32 %33, 2, !dbg !1767
  %34 = load ptr, ptr %currSlice, align 8, !dbg !1768
  %35 = load ptr, ptr %partArr, align 8, !dbg !1768
  %36 = load ptr, ptr %35, align 8, !dbg !1768
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %currSlice) #10, !dbg !1768
  %type.i = getelementptr inbounds i8, ptr %34, i64 848776, !dbg !1768
  %37 = load i32, ptr %type.i, align 8, !dbg !1768
  br i1 %switch, label %if.then153, label %if.else154, !dbg !1767

if.then153:                                       ; preds = %if.end146
    #dbg_value(ptr %currSlice, !1769, !DIExpression(), !1780)
    #dbg_value(ptr %34, !1774, !DIExpression(), !1780)
    #dbg_value(i8 0, !1775, !DIExpression(), !1780)
    #dbg_value(ptr %35, !1776, !DIExpression(), !1780)
    #dbg_value(ptr %36, !1777, !DIExpression(), !1780)
  %rem.i = srem i32 %37, 5, !dbg !1782
  switch i32 %rem.i, label %if.then.i [
    i32 2, label %if.end40.i
    i32 4, label %if.end40.i
  ], !dbg !1784

if.then.i:                                        ; preds = %if.then153
  %call.i = tail call i32 @u_1(ptr noundef nonnull @.str.66, ptr noundef %36) #10, !dbg !1785
  %ref_pic_list_reordering_flag.i = getelementptr inbounds i8, ptr %currSlice, i64 1104, !dbg !1787
  store i32 %call.i, ptr %ref_pic_list_reordering_flag.i, align 8, !dbg !1788
    #dbg_value(i32 %call.i, !1779, !DIExpression(), !1780)
  %tobool.not.i = icmp eq i32 %call.i, 0, !dbg !1789
  br i1 %tobool.not.i, label %if.end40.i, label %do.body.preheader.i, !dbg !1791

do.body.preheader.i:                              ; preds = %if.then.i
  %reordering_of_pic_nums_idc.i = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %abs_diff_view_idx_minus1.i = getelementptr inbounds i8, ptr %currSlice, i64 1160
  %long_term_pic_idx.i = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %abs_diff_pic_num_minus1.i = getelementptr inbounds i8, ptr %currSlice, i64 1128
  br label %do.body.i, !dbg !1792

do.body.i:                                        ; preds = %if.end37.i, %do.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %do.body.preheader.i ], [ %indvars.iv.next.i, %if.end37.i ], !dbg !1794
    #dbg_value(i64 %indvars.iv.i, !1778, !DIExpression(), !1780)
  %call10.i = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %36) #10, !dbg !1795
  %38 = load ptr, ptr %reordering_of_pic_nums_idc.i, align 8, !dbg !1797
  %arrayidx13.i = getelementptr inbounds i32, ptr %38, i64 %indvars.iv.i, !dbg !1797
  store i32 %call10.i, ptr %arrayidx13.i, align 4, !dbg !1798
    #dbg_value(i32 %call10.i, !1779, !DIExpression(), !1780)
  %or.cond.i = icmp ult i32 %call10.i, 2, !dbg !1799
  br i1 %or.cond.i, label %if.end37.sink.split.i, label %if.else.i, !dbg !1799

if.else.i:                                        ; preds = %do.body.i
  %cmp21.i = icmp eq i32 %call10.i, 2, !dbg !1801
  br i1 %cmp21.i, label %if.end37.sink.split.i, label %if.else27.i, !dbg !1804

if.else27.i:                                      ; preds = %if.else.i
  %39 = and i32 %call10.i, -2, !dbg !1805
  %or.cond101.i = icmp eq i32 %39, 4, !dbg !1805
  br i1 %or.cond101.i, label %if.end37.sink.split.i, label %if.end37.i, !dbg !1805

if.end37.sink.split.i:                            ; preds = %if.else27.i, %if.else.i, %do.body.i
  %.str.61.sink.i = phi ptr [ @.str.60, %do.body.i ], [ @.str.61, %if.else.i ], [ @.str.68, %if.else27.i ]
  %long_term_pic_idx.sink.i = phi ptr [ %abs_diff_pic_num_minus1.i, %do.body.i ], [ %long_term_pic_idx.i, %if.else.i ], [ %abs_diff_view_idx_minus1.i, %if.else27.i ]
  %call23.i = tail call i32 @ue_v(ptr noundef nonnull %.str.61.sink.i, ptr noundef %36) #10, !dbg !1807
  %40 = load ptr, ptr %long_term_pic_idx.sink.i, align 8, !dbg !1807
  %arrayidx26.i = getelementptr inbounds i32, ptr %40, i64 %indvars.iv.i, !dbg !1807
  store i32 %call23.i, ptr %arrayidx26.i, align 4, !dbg !1807
  br label %if.end37.i, !dbg !1808

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %if.else27.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1808
    #dbg_value(i64 %indvars.iv.next.i, !1778, !DIExpression(), !1780)
  %cmp38.not.i = icmp eq i32 %call10.i, 3, !dbg !1809
  br i1 %cmp38.not.i, label %if.end40.i, label %do.body.i, !dbg !1810, !llvm.loop !1811

if.end40.i:                                       ; preds = %if.end37.i, %if.then.i, %if.then153, %if.then153
  %41 = load i32, ptr %type.i, align 8, !dbg !1813
  %rem42.i = srem i32 %41, 5, !dbg !1815
  %cmp43.i = icmp eq i32 %rem42.i, 1, !dbg !1816
  br i1 %cmp43.i, label %if.then44.i, label %if.end91.i, !dbg !1817

if.then44.i:                                      ; preds = %if.end40.i
  %call45.i = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %36) #10, !dbg !1818
  %arrayidx47.i = getelementptr inbounds i8, ptr %currSlice, i64 1108, !dbg !1820
  store i32 %call45.i, ptr %arrayidx47.i, align 4, !dbg !1821
    #dbg_value(i32 %call45.i, !1779, !DIExpression(), !1780)
  %tobool48.not.i = icmp eq i32 %call45.i, 0, !dbg !1822
  br i1 %tobool48.not.i, label %if.end91.i, label %do.body50.preheader.i, !dbg !1824

do.body50.preheader.i:                            ; preds = %if.then44.i
  %arrayidx53.i = getelementptr inbounds i8, ptr %currSlice, i64 1120
  %arrayidx80.i = getelementptr inbounds i8, ptr %currSlice, i64 1168
  %arrayidx70.i = getelementptr inbounds i8, ptr %currSlice, i64 1152
  %arrayidx62.i = getelementptr inbounds i8, ptr %currSlice, i64 1136
  br label %do.body50.i, !dbg !1825

do.body50.i:                                      ; preds = %if.end85.i, %do.body50.preheader.i
  %indvars.iv155.i = phi i64 [ 0, %do.body50.preheader.i ], [ %indvars.iv.next156.i, %if.end85.i ], !dbg !1827
    #dbg_value(i64 %indvars.iv155.i, !1778, !DIExpression(), !1780)
  %call51.i = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %36) #10, !dbg !1828
  %42 = load ptr, ptr %arrayidx53.i, align 8, !dbg !1830
  %arrayidx55.i = getelementptr inbounds i32, ptr %42, i64 %indvars.iv155.i, !dbg !1830
  store i32 %call51.i, ptr %arrayidx55.i, align 4, !dbg !1831
    #dbg_value(i32 %call51.i, !1779, !DIExpression(), !1780)
  %or.cond102.i = icmp ult i32 %call51.i, 2, !dbg !1832
  br i1 %or.cond102.i, label %if.end85.sink.split.i, label %if.else65.i, !dbg !1832

if.else65.i:                                      ; preds = %do.body50.i
  %cmp66.i = icmp eq i32 %call51.i, 2, !dbg !1834
  br i1 %cmp66.i, label %if.end85.sink.split.i, label %if.else73.i, !dbg !1837

if.else73.i:                                      ; preds = %if.else65.i
  %43 = and i32 %call51.i, -2, !dbg !1838
  %or.cond103.i = icmp eq i32 %43, 4, !dbg !1838
  br i1 %or.cond103.i, label %if.end85.sink.split.i, label %if.end85.i, !dbg !1838

if.end85.sink.split.i:                            ; preds = %if.else73.i, %if.else65.i, %do.body50.i
  %.str.65.sink.i = phi ptr [ @.str.64, %do.body50.i ], [ @.str.65, %if.else65.i ], [ @.str.70, %if.else73.i ]
  %arrayidx70.sink.i = phi ptr [ %arrayidx62.i, %do.body50.i ], [ %arrayidx70.i, %if.else65.i ], [ %arrayidx80.i, %if.else73.i ]
  %call68.i = tail call i32 @ue_v(ptr noundef nonnull %.str.65.sink.i, ptr noundef %36) #10, !dbg !1840
  %44 = load ptr, ptr %arrayidx70.sink.i, align 8, !dbg !1840
  %arrayidx72.i = getelementptr inbounds i32, ptr %44, i64 %indvars.iv155.i, !dbg !1840
  store i32 %call68.i, ptr %arrayidx72.i, align 4, !dbg !1840
  br label %if.end85.i, !dbg !1841

if.end85.i:                                       ; preds = %if.end85.sink.split.i, %if.else73.i
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1, !dbg !1841
    #dbg_value(i64 %indvars.iv.next156.i, !1778, !DIExpression(), !1780)
  %cmp88.not.i = icmp eq i32 %call51.i, 3, !dbg !1842
  br i1 %cmp88.not.i, label %if.end91.i, label %do.body50.i, !dbg !1843, !llvm.loop !1844

if.end91.i:                                       ; preds = %if.end85.i, %if.then44.i, %if.end40.i
  %redundant_pic_cnt.i = getelementptr inbounds i8, ptr %currSlice, i64 220, !dbg !1846
  %45 = load i32, ptr %redundant_pic_cnt.i, align 4, !dbg !1846
  %tobool92.not.i = icmp eq i32 %45, 0, !dbg !1848
  br i1 %tobool92.not.i, label %if.end155, label %land.lhs.true93.i, !dbg !1849

land.lhs.true93.i:                                ; preds = %if.end91.i
  %46 = load i32, ptr %type.i, align 8, !dbg !1850
  %cmp95.not.i = icmp eq i32 %46, 2, !dbg !1851
  br i1 %cmp95.not.i, label %if.end155, label %if.end155.sink.split, !dbg !1852

if.else154:                                       ; preds = %if.end146
    #dbg_value(ptr %currSlice, !1853, !DIExpression(), !1862)
    #dbg_value(ptr %34, !1856, !DIExpression(), !1862)
    #dbg_value(i8 0, !1857, !DIExpression(), !1862)
    #dbg_value(ptr %35, !1858, !DIExpression(), !1862)
    #dbg_value(ptr %36, !1859, !DIExpression(), !1862)
  switch i32 %37, label %if.then.i579 [
    i32 2, label %if.end68.i
    i32 4, label %if.end68.i
  ], !dbg !1864

if.then.i579:                                     ; preds = %if.else154
  %call.i580 = tail call i32 @u_1(ptr noundef nonnull @.str.58, ptr noundef %36) #10, !dbg !1866
  %ref_pic_list_reordering_flag.i581 = getelementptr inbounds i8, ptr %currSlice, i64 1104, !dbg !1868
  store i32 %call.i580, ptr %ref_pic_list_reordering_flag.i581, align 8, !dbg !1869
    #dbg_value(i32 %call.i580, !1861, !DIExpression(), !1862)
  %tobool.not.i582 = icmp eq i32 %call.i580, 0, !dbg !1870
  br i1 %tobool.not.i582, label %if.end29.i, label %do.body.preheader.i583, !dbg !1872

do.body.preheader.i583:                           ; preds = %if.then.i579
  %reordering_of_pic_nums_idc.i584 = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %long_term_pic_idx.i585 = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %abs_diff_pic_num_minus1.i586 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  br label %do.body.i587, !dbg !1873

do.body.i587:                                     ; preds = %if.end26.i, %do.body.preheader.i583
  %indvars.iv.i588 = phi i64 [ 0, %do.body.preheader.i583 ], [ %indvars.iv.next.i591, %if.end26.i ], !dbg !1875
    #dbg_value(i64 %indvars.iv.i588, !1860, !DIExpression(), !1862)
  %call9.i = tail call i32 @ue_v(ptr noundef nonnull @.str.59, ptr noundef %36) #10, !dbg !1876
  %47 = load ptr, ptr %reordering_of_pic_nums_idc.i584, align 8, !dbg !1878
  %arrayidx12.i = getelementptr inbounds i32, ptr %47, i64 %indvars.iv.i588, !dbg !1878
  store i32 %call9.i, ptr %arrayidx12.i, align 4, !dbg !1879
    #dbg_value(i32 %call9.i, !1861, !DIExpression(), !1862)
  %or.cond.i589 = icmp ult i32 %call9.i, 2, !dbg !1880
  br i1 %or.cond.i589, label %if.end26.sink.split.i, label %if.else.i590, !dbg !1880

if.else.i590:                                     ; preds = %do.body.i587
  %cmp20.i = icmp eq i32 %call9.i, 2, !dbg !1882
  br i1 %cmp20.i, label %if.end26.sink.split.i, label %if.end26.i, !dbg !1885

if.end26.sink.split.i:                            ; preds = %if.else.i590, %do.body.i587
  %.str.61.sink.i593 = phi ptr [ @.str.60, %do.body.i587 ], [ @.str.61, %if.else.i590 ]
  %long_term_pic_idx.sink.i594 = phi ptr [ %abs_diff_pic_num_minus1.i586, %do.body.i587 ], [ %long_term_pic_idx.i585, %if.else.i590 ]
  %call22.i = tail call i32 @ue_v(ptr noundef nonnull %.str.61.sink.i593, ptr noundef %36) #10, !dbg !1886
  %48 = load ptr, ptr %long_term_pic_idx.sink.i594, align 8, !dbg !1886
  %arrayidx25.i = getelementptr inbounds i32, ptr %48, i64 %indvars.iv.i588, !dbg !1886
  store i32 %call22.i, ptr %arrayidx25.i, align 4, !dbg !1886
  br label %if.end26.i, !dbg !1887

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.else.i590
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i588, 1, !dbg !1887
    #dbg_value(i64 %indvars.iv.next.i591, !1860, !DIExpression(), !1862)
  %cmp27.not.i = icmp eq i32 %call9.i, 3, !dbg !1888
  br i1 %cmp27.not.i, label %if.end29.i, label %do.body.i587, !dbg !1889, !llvm.loop !1890

if.end29.i:                                       ; preds = %if.end26.i, %if.then.i579
  %.pr.i = load i32, ptr %type.i, align 8, !dbg !1892
  %cmp31.i = icmp eq i32 %.pr.i, 1, !dbg !1894
  br i1 %cmp31.i, label %if.then32.i, label %if.end68.i, !dbg !1895

if.then32.i:                                      ; preds = %if.end29.i
  %call33.i = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %36) #10, !dbg !1896
  %arrayidx35.i = getelementptr inbounds i8, ptr %currSlice, i64 1108, !dbg !1898
  store i32 %call33.i, ptr %arrayidx35.i, align 4, !dbg !1899
    #dbg_value(i32 %call33.i, !1861, !DIExpression(), !1862)
  %tobool36.not.i = icmp eq i32 %call33.i, 0, !dbg !1900
  br i1 %tobool36.not.i, label %if.end68.i, label %do.body38.preheader.i, !dbg !1902

do.body38.preheader.i:                            ; preds = %if.then32.i
  %arrayidx41.i = getelementptr inbounds i8, ptr %currSlice, i64 1120
  %arrayidx58.i = getelementptr inbounds i8, ptr %currSlice, i64 1152
  %arrayidx50.i = getelementptr inbounds i8, ptr %currSlice, i64 1136
  br label %do.body38.i, !dbg !1903

do.body38.i:                                      ; preds = %if.end62.i, %do.body38.preheader.i
  %indvars.iv121.i = phi i64 [ 0, %do.body38.preheader.i ], [ %indvars.iv.next122.i, %if.end62.i ], !dbg !1905
    #dbg_value(i64 %indvars.iv121.i, !1860, !DIExpression(), !1862)
  %call39.i = tail call i32 @ue_v(ptr noundef nonnull @.str.63, ptr noundef %36) #10, !dbg !1906
  %49 = load ptr, ptr %arrayidx41.i, align 8, !dbg !1908
  %arrayidx43.i = getelementptr inbounds i32, ptr %49, i64 %indvars.iv121.i, !dbg !1908
  store i32 %call39.i, ptr %arrayidx43.i, align 4, !dbg !1909
    #dbg_value(i32 %call39.i, !1861, !DIExpression(), !1862)
  %or.cond78.i = icmp ult i32 %call39.i, 2, !dbg !1910
  br i1 %or.cond78.i, label %if.end62.sink.split.i, label %if.else53.i, !dbg !1910

if.else53.i:                                      ; preds = %do.body38.i
  %cmp54.i = icmp eq i32 %call39.i, 2, !dbg !1912
  br i1 %cmp54.i, label %if.end62.sink.split.i, label %if.end62.i, !dbg !1915

if.end62.sink.split.i:                            ; preds = %if.else53.i, %do.body38.i
  %.str.65.sink.i592 = phi ptr [ @.str.64, %do.body38.i ], [ @.str.65, %if.else53.i ]
  %arrayidx58.sink.i = phi ptr [ %arrayidx50.i, %do.body38.i ], [ %arrayidx58.i, %if.else53.i ]
  %call56.i = tail call i32 @ue_v(ptr noundef nonnull %.str.65.sink.i592, ptr noundef %36) #10, !dbg !1916
  %50 = load ptr, ptr %arrayidx58.sink.i, align 8, !dbg !1916
  %arrayidx60.i = getelementptr inbounds i32, ptr %50, i64 %indvars.iv121.i, !dbg !1916
  store i32 %call56.i, ptr %arrayidx60.i, align 4, !dbg !1916
  br label %if.end62.i, !dbg !1917

if.end62.i:                                       ; preds = %if.end62.sink.split.i, %if.else53.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1, !dbg !1917
    #dbg_value(i64 %indvars.iv.next122.i, !1860, !DIExpression(), !1862)
  %cmp65.not.i = icmp eq i32 %call39.i, 3, !dbg !1918
  br i1 %cmp65.not.i, label %if.end68.i, label %do.body38.i, !dbg !1919, !llvm.loop !1920

if.end68.i:                                       ; preds = %if.end62.i, %if.then32.i, %if.end29.i, %if.else154, %if.else154
  %redundant_pic_cnt.i576 = getelementptr inbounds i8, ptr %currSlice, i64 220, !dbg !1922
  %51 = load i32, ptr %redundant_pic_cnt.i576, align 4, !dbg !1922
  %tobool69.not.i = icmp eq i32 %51, 0, !dbg !1924
  br i1 %tobool69.not.i, label %if.end155, label %land.lhs.true70.i, !dbg !1925

land.lhs.true70.i:                                ; preds = %if.end68.i
  %52 = load i32, ptr %type.i, align 8, !dbg !1926
  %cmp72.not.i = icmp eq i32 %52, 2, !dbg !1927
  br i1 %cmp72.not.i, label %if.end155, label %if.end155.sink.split, !dbg !1928

if.end155.sink.split:                             ; preds = %land.lhs.true70.i, %land.lhs.true93.i
  %abs_diff_pic_num_minus174.i = getelementptr inbounds i8, ptr %currSlice, i64 1128, !dbg !1768
  %53 = load ptr, ptr %abs_diff_pic_num_minus174.i, align 8, !dbg !1768
  %54 = load i32, ptr %53, align 4, !dbg !1768
  %add.i577 = add nsw i32 %54, 1, !dbg !1768
  %redundant_slice_ref_idx.i578 = getelementptr inbounds i8, ptr %currSlice, i64 232, !dbg !1768
  store i32 %add.i577, ptr %redundant_slice_ref_idx.i578, align 8, !dbg !1768
  br label %if.end155, !dbg !1929

if.end155:                                        ; preds = %if.end155.sink.split, %land.lhs.true70.i, %if.end68.i, %land.lhs.true93.i, %if.end91.i
  %55 = load i32, ptr %slice_type, align 4, !dbg !1929
  switch i32 %55, label %land.end171 [
    i32 0, label %cond.true
    i32 3, label %cond.true
    i32 1, label %land.rhs167
  ], !dbg !1930

cond.true:                                        ; preds = %if.end155, %if.end155
  %56 = load ptr, ptr %active_pps95, align 8, !dbg !1931
  %weighted_pred_flag = getelementptr inbounds i8, ptr %56, i64 2176, !dbg !1932
  %57 = load i32, ptr %weighted_pred_flag, align 8, !dbg !1932
  br label %cond.end, !dbg !1933

land.rhs167:                                      ; preds = %if.end155
  %58 = load ptr, ptr %active_pps95, align 8, !dbg !1934
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %58, i64 2180, !dbg !1935
  %59 = load i32, ptr %weighted_bipred_idc, align 4, !dbg !1935
  %cmp169 = icmp eq i32 %59, 1, !dbg !1936
  br label %land.end171

land.end171:                                      ; preds = %if.end155, %land.rhs167
  %60 = phi i1 [ %cmp169, %land.rhs167 ], [ false, %if.end155 ], !dbg !1590
  %land.ext172 = zext i1 %60 to i32, !dbg !1937
  br label %cond.end, !dbg !1933

cond.end:                                         ; preds = %land.end171, %cond.true
  %cond173 = phi i32 [ %57, %cond.true ], [ %land.ext172, %land.end171 ], !dbg !1933
  %conv174 = trunc i32 %cond173 to i16, !dbg !1938
  %weighted_pred_flag175 = getelementptr inbounds i8, ptr %currSlice, i64 13272, !dbg !1939
  store i16 %conv174, ptr %weighted_pred_flag175, align 8, !dbg !1940
  %cmp177 = icmp eq i32 %55, 1, !dbg !1941
  br i1 %cmp177, label %land.rhs179, label %land.end184, !dbg !1942

land.rhs179:                                      ; preds = %cond.end
  %61 = load ptr, ptr %active_pps95, align 8, !dbg !1943
  %weighted_bipred_idc181 = getelementptr inbounds i8, ptr %61, i64 2180, !dbg !1944
  %62 = load i32, ptr %weighted_bipred_idc181, align 4, !dbg !1944
  %cmp182 = icmp ne i32 %62, 0, !dbg !1945
  br label %land.end184

land.end184:                                      ; preds = %land.rhs179, %cond.end
  %63 = phi i1 [ false, %cond.end ], [ %cmp182, %land.rhs179 ], !dbg !1590
  %conv186 = zext i1 %63 to i16, !dbg !1946
  %weighted_bipred_idc187 = getelementptr inbounds i8, ptr %currSlice, i64 13274, !dbg !1947
  store i16 %conv186, ptr %weighted_bipred_idc187, align 2, !dbg !1948
  %64 = load ptr, ptr %active_pps95, align 8, !dbg !1949
  %weighted_pred_flag189 = getelementptr inbounds i8, ptr %64, i64 2176, !dbg !1951
  %65 = load i32, ptr %weighted_pred_flag189, align 8, !dbg !1951
  %tobool190.not = icmp eq i32 %65, 0, !dbg !1952
  br i1 %tobool190.not, label %lor.lhs.false199, label %land.lhs.true191, !dbg !1953

land.lhs.true191:                                 ; preds = %land.end184
  %66 = load i32, ptr %type, align 8, !dbg !1954
  switch i32 %66, label %lor.lhs.false199 [
    i32 0, label %if.then208
    i32 3, label %if.then208
  ], !dbg !1955

lor.lhs.false199:                                 ; preds = %land.lhs.true191, %land.end184
  %weighted_bipred_idc201 = getelementptr inbounds i8, ptr %64, i64 2180, !dbg !1956
  %67 = load i32, ptr %weighted_bipred_idc201, align 4, !dbg !1956
  %cmp202 = icmp eq i32 %67, 1, !dbg !1957
  br i1 %cmp202, label %land.lhs.true204, label %if.end209, !dbg !1958

land.lhs.true204:                                 ; preds = %lor.lhs.false199
  %68 = load i32, ptr %type, align 8, !dbg !1959
  %cmp206 = icmp eq i32 %68, 1, !dbg !1960
  br i1 %cmp206, label %if.then208, label %if.end209, !dbg !1961

if.then208:                                       ; preds = %land.lhs.true191, %land.lhs.true191, %land.lhs.true204
    #dbg_value(ptr %currSlice, !1962, !DIExpression(), !1976)
  %69 = load ptr, ptr %currSlice, align 8, !dbg !1979
    #dbg_value(ptr %69, !1965, !DIExpression(), !1976)
  %active_sps2.i = getelementptr inbounds i8, ptr %69, i64 16, !dbg !1980
  %70 = load ptr, ptr %active_sps2.i, align 8, !dbg !1980
    #dbg_value(ptr %70, !1966, !DIExpression(), !1976)
    #dbg_value(i8 0, !1967, !DIExpression(), !1976)
  %71 = load ptr, ptr %partArr, align 8, !dbg !1981
    #dbg_value(ptr %71, !1968, !DIExpression(), !1976)
  %72 = load ptr, ptr %71, align 8, !dbg !1982
    #dbg_value(ptr %72, !1969, !DIExpression(), !1976)
  %call.i596 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %72) #10, !dbg !1983
  %conv.i = trunc i32 %call.i596 to i16, !dbg !1984
  %luma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13276, !dbg !1985
  store i16 %conv.i, ptr %luma_log2_weight_denom.i, align 4, !dbg !1986
  %conv7.i = and i32 %call.i596, 65535, !dbg !1987
  %tobool.not.i597 = icmp eq i32 %conv7.i, 0, !dbg !1987
  %sub.i = add nsw i32 %conv7.i, -1, !dbg !1987
  %shl.i = shl nuw i32 1, %sub.i, !dbg !1987
  %73 = trunc i32 %shl.i to i16, !dbg !1987
  %conv10.i = select i1 %tobool.not.i597, i16 0, i16 %73, !dbg !1987
  %wp_round_luma.i = getelementptr inbounds i8, ptr %currSlice, i64 13304, !dbg !1988
  store i16 %conv10.i, ptr %wp_round_luma.i, align 8, !dbg !1989
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %70, i64 36, !dbg !1990
  %74 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !1990
  %cmp.not.i = icmp eq i32 %74, 0, !dbg !1992
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i598, !dbg !1993

if.then.i598:                                     ; preds = %if.then208
  %call12.i = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %72) #10, !dbg !1994
  %conv13.i = trunc i32 %call12.i to i16, !dbg !1996
  %chroma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13278, !dbg !1997
  store i16 %conv13.i, ptr %chroma_log2_weight_denom.i, align 2, !dbg !1998
  %conv15.i = and i32 %call12.i, 65535, !dbg !1999
  %tobool16.not.i = icmp eq i32 %conv15.i, 0, !dbg !1999
  %sub20.i = add nsw i32 %conv15.i, -1, !dbg !1999
  %shl21.i = shl nuw i32 1, %sub20.i, !dbg !1999
  %75 = trunc i32 %shl21.i to i16, !dbg !1999
  %cond24.i = select i1 %tobool16.not.i, i16 0, i16 %75, !dbg !1999
  %wp_round_chroma.i = getelementptr inbounds i8, ptr %currSlice, i64 13306, !dbg !2000
  store i16 %cond24.i, ptr %wp_round_chroma.i, align 2, !dbg !2001
  br label %if.end.i, !dbg !2002

if.end.i:                                         ; preds = %if.then.i598, %if.then208
    #dbg_value(ptr %currSlice, !2003, !DIExpression(), !2009)
    #dbg_value(i32 0, !2006, !DIExpression(), !2009)
  %wp_weight.i.i = getelementptr inbounds i8, ptr %currSlice, i64 13280
  %cond.in.in.1.i.i = getelementptr inbounds i8, ptr %currSlice, i64 13278
  br label %for.cond1.preheader.i.i, !dbg !2011

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i, %if.end.i
  %indvars.iv.i.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next.i.i, %for.cond1.preheader.i.i ]
    #dbg_value(i64 %indvars.iv.i.i, !2006, !DIExpression(), !2009)
    #dbg_value(i64 0, !2007, !DIExpression(), !2009)
  %cond.in.i.i = load i16, ptr %luma_log2_weight_denom.i, align 2, !dbg !2013
  %cond.i.i = zext nneg i16 %cond.in.i.i to i32, !dbg !2019
    #dbg_value(i32 %cond.i.i, !2008, !DIExpression(), !2009)
  %shl.i.i = shl nuw i32 1, %cond.i.i, !dbg !2020
  %76 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2021
  %77 = load ptr, ptr %76, align 8, !dbg !2022
  %arrayidx6.i.i = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv.i.i, !dbg !2022
  %78 = load ptr, ptr %arrayidx6.i.i, align 8, !dbg !2022
  store i32 %shl.i.i, ptr %78, align 4, !dbg !2023
  %79 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2024
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %79, i64 8, !dbg !2025
  %80 = load ptr, ptr %arrayidx11.i.i, align 8, !dbg !2025
  %arrayidx13.i.i = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv.i.i, !dbg !2025
  %81 = load ptr, ptr %arrayidx13.i.i, align 8, !dbg !2025
  store i32 %shl.i.i, ptr %81, align 4, !dbg !2026
    #dbg_value(i64 1, !2007, !DIExpression(), !2009)
  %cond.in.1.i.i = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2013
  %cond.1.i.i = zext nneg i16 %cond.in.1.i.i to i32, !dbg !2019
    #dbg_value(i32 %cond.1.i.i, !2008, !DIExpression(), !2009)
  %shl.1.i.i = shl nuw i32 1, %cond.1.i.i, !dbg !2020
  %82 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2021
  %83 = load ptr, ptr %82, align 8, !dbg !2022
  %arrayidx6.1.i.i = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv.i.i, !dbg !2022
  %84 = load ptr, ptr %arrayidx6.1.i.i, align 8, !dbg !2022
  %arrayidx8.1.i.i = getelementptr inbounds i8, ptr %84, i64 4, !dbg !2022
  store i32 %shl.1.i.i, ptr %arrayidx8.1.i.i, align 4, !dbg !2023
  %85 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2024
  %arrayidx11.1.i.i = getelementptr inbounds i8, ptr %85, i64 8, !dbg !2025
  %86 = load ptr, ptr %arrayidx11.1.i.i, align 8, !dbg !2025
  %arrayidx13.1.i.i = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv.i.i, !dbg !2025
  %87 = load ptr, ptr %arrayidx13.1.i.i, align 8, !dbg !2025
  %arrayidx15.1.i.i = getelementptr inbounds i8, ptr %87, i64 4, !dbg !2025
  store i32 %shl.1.i.i, ptr %arrayidx15.1.i.i, align 4, !dbg !2026
    #dbg_value(i64 2, !2007, !DIExpression(), !2009)
  %cond.in.2.i.i = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2013
  %cond.2.i.i = zext nneg i16 %cond.in.2.i.i to i32, !dbg !2019
    #dbg_value(i32 %cond.2.i.i, !2008, !DIExpression(), !2009)
  %shl.2.i.i = shl nuw i32 1, %cond.2.i.i, !dbg !2020
  %88 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2021
  %89 = load ptr, ptr %88, align 8, !dbg !2022
  %arrayidx6.2.i.i = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv.i.i, !dbg !2022
  %90 = load ptr, ptr %arrayidx6.2.i.i, align 8, !dbg !2022
  %arrayidx8.2.i.i = getelementptr inbounds i8, ptr %90, i64 8, !dbg !2022
  store i32 %shl.2.i.i, ptr %arrayidx8.2.i.i, align 4, !dbg !2023
  %91 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2024
  %arrayidx11.2.i.i = getelementptr inbounds i8, ptr %91, i64 8, !dbg !2025
  %92 = load ptr, ptr %arrayidx11.2.i.i, align 8, !dbg !2025
  %arrayidx13.2.i.i = getelementptr inbounds ptr, ptr %92, i64 %indvars.iv.i.i, !dbg !2025
  %93 = load ptr, ptr %arrayidx13.2.i.i, align 8, !dbg !2025
  %arrayidx15.2.i.i = getelementptr inbounds i8, ptr %93, i64 8, !dbg !2025
  store i32 %shl.2.i.i, ptr %arrayidx15.2.i.i, align 4, !dbg !2026
    #dbg_value(i64 3, !2007, !DIExpression(), !2009)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !2027
    #dbg_value(i64 %indvars.iv.next.i.i, !2006, !DIExpression(), !2009)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32, !dbg !2028
  br i1 %exitcond.not.i.i, label %for.cond.preheader.i, label %for.cond1.preheader.i.i, !dbg !2011, !llvm.loop !2029

for.cond.preheader.i:                             ; preds = %for.cond1.preheader.i.i
    #dbg_value(i32 0, !1974, !DIExpression(), !1976)
  %94 = load i32, ptr %num_ref_idx_active, align 8, !dbg !2031
  %cmp27356.i = icmp sgt i32 %94, 0, !dbg !2034
  br i1 %cmp27356.i, label %for.body.lr.ph.i, label %for.end129.i, !dbg !2035

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %wp_offset.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %bitdepth_luma.i = getelementptr inbounds i8, ptr %69, i64 849040
  %bitdepth_chroma.i = getelementptr inbounds i8, ptr %69, i64 849042
  br label %for.body.i, !dbg !2035

for.body.i:                                       ; preds = %for.inc127.i, %for.body.lr.ph.i
  %indvars.iv.i600 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i603, %for.inc127.i ]
    #dbg_value(i64 %indvars.iv.i600, !1974, !DIExpression(), !1976)
  %call29.i = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef %72) #10, !dbg !2036
    #dbg_value(i32 %call29.i, !1970, !DIExpression(), !1976)
  %tobool30.not.i = icmp eq i32 %call29.i, 0, !dbg !2038
  br i1 %tobool30.not.i, label %if.else.i604, label %if.then31.i, !dbg !2040

if.then31.i:                                      ; preds = %for.body.i
  %call32.i = tail call i32 @se_v(ptr noundef nonnull @.str.74, ptr noundef %72) #10, !dbg !2041
  %95 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2043
  %96 = load ptr, ptr %95, align 8, !dbg !2044
  %arrayidx35.i601 = getelementptr inbounds ptr, ptr %96, i64 %indvars.iv.i600, !dbg !2044
  %97 = load ptr, ptr %arrayidx35.i601, align 8, !dbg !2044
  store i32 %call32.i, ptr %97, align 4, !dbg !2045
  %call37.i = tail call i32 @se_v(ptr noundef nonnull @.str.75, ptr noundef %72) #10, !dbg !2046
  %98 = load ptr, ptr %wp_offset.i, align 8, !dbg !2047
  %99 = load ptr, ptr %98, align 8, !dbg !2048
  %arrayidx40.i = getelementptr inbounds ptr, ptr %99, i64 %indvars.iv.i600, !dbg !2048
  %100 = load ptr, ptr %arrayidx40.i, align 8, !dbg !2048
  store i32 %call37.i, ptr %100, align 4, !dbg !2049
  %101 = load ptr, ptr %wp_offset.i, align 8, !dbg !2050
  %102 = load ptr, ptr %101, align 8, !dbg !2051
  %arrayidx45.i = getelementptr inbounds ptr, ptr %102, i64 %indvars.iv.i600, !dbg !2051
  %103 = load ptr, ptr %arrayidx45.i, align 8, !dbg !2051
  %104 = load i32, ptr %103, align 4, !dbg !2051
  %105 = load i16, ptr %bitdepth_luma.i, align 8, !dbg !2052
  %conv47.i = sext i16 %105 to i32, !dbg !2053
  %sub48.i = add nsw i32 %conv47.i, -8, !dbg !2054
  %shl49.i = shl i32 %104, %sub48.i, !dbg !2055
  store i32 %shl49.i, ptr %103, align 4, !dbg !2056
  br label %if.end68.i602, !dbg !2057

if.else.i604:                                     ; preds = %for.body.i
  %106 = load i16, ptr %luma_log2_weight_denom.i, align 4, !dbg !2058
  %conv56.i = zext nneg i16 %106 to i32, !dbg !2060
  %shl57.i = shl nuw i32 1, %conv56.i, !dbg !2061
  %107 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2062
  %108 = load ptr, ptr %107, align 8, !dbg !2063
  %arrayidx61.i = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv.i600, !dbg !2063
  %109 = load ptr, ptr %arrayidx61.i, align 8, !dbg !2063
  store i32 %shl57.i, ptr %109, align 4, !dbg !2064
  %110 = load ptr, ptr %wp_offset.i, align 8, !dbg !2065
  %111 = load ptr, ptr %110, align 8, !dbg !2066
  %arrayidx66.i = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv.i600, !dbg !2066
  %112 = load ptr, ptr %arrayidx66.i, align 8, !dbg !2066
  store i32 0, ptr %112, align 4, !dbg !2067
  br label %if.end68.i602

if.end68.i602:                                    ; preds = %if.else.i604, %if.then31.i
  %113 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !2068
  %cmp70.not.i = icmp eq i32 %113, 0, !dbg !2070
  br i1 %cmp70.not.i, label %for.inc127.i, label %if.then72.i, !dbg !2071

if.then72.i:                                      ; preds = %if.end68.i602
  %call73.i = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef %72) #10, !dbg !2072
    #dbg_value(i32 %call73.i, !1972, !DIExpression(), !1976)
    #dbg_value(i32 1, !1975, !DIExpression(), !1976)
  %tobool78.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool78.not.i, label %for.body77.us.preheader.i, label %for.body77.preheader.i

for.body77.preheader.i:                           ; preds = %if.then72.i
    #dbg_value(i64 1, !1975, !DIExpression(), !1976)
  %call80.i = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %72) #10, !dbg !2074
  %114 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2080
  %115 = load ptr, ptr %114, align 8, !dbg !2081
  %arrayidx84.i = getelementptr inbounds ptr, ptr %115, i64 %indvars.iv.i600, !dbg !2081
  %116 = load ptr, ptr %arrayidx84.i, align 8, !dbg !2081
  %arrayidx86.i = getelementptr inbounds i8, ptr %116, i64 4, !dbg !2081
  store i32 %call80.i, ptr %arrayidx86.i, align 4, !dbg !2082
  %call87.i = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %72) #10, !dbg !2083
  %117 = load ptr, ptr %wp_offset.i, align 8, !dbg !2084
  %118 = load ptr, ptr %117, align 8, !dbg !2085
  %arrayidx91.i = getelementptr inbounds ptr, ptr %118, i64 %indvars.iv.i600, !dbg !2085
  %119 = load ptr, ptr %arrayidx91.i, align 8, !dbg !2085
  %arrayidx93.i = getelementptr inbounds i8, ptr %119, i64 4, !dbg !2085
  store i32 %call87.i, ptr %arrayidx93.i, align 4, !dbg !2086
  %120 = load ptr, ptr %wp_offset.i, align 8, !dbg !2087
  %121 = load ptr, ptr %120, align 8, !dbg !2088
  %arrayidx97.i = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv.i600, !dbg !2088
  %122 = load ptr, ptr %arrayidx97.i, align 8, !dbg !2088
  %arrayidx99.i = getelementptr inbounds i8, ptr %122, i64 4, !dbg !2088
  %123 = load i32, ptr %arrayidx99.i, align 4, !dbg !2088
  %124 = load i16, ptr %bitdepth_chroma.i, align 2, !dbg !2089
  %conv100.i = sext i16 %124 to i32, !dbg !2090
  %sub101.i = add nsw i32 %conv100.i, -8, !dbg !2091
  %shl102.i = shl i32 %123, %sub101.i, !dbg !2092
  store i32 %shl102.i, ptr %arrayidx99.i, align 4, !dbg !2093
    #dbg_value(i64 2, !1975, !DIExpression(), !1976)
  %call80.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %72) #10, !dbg !2074
  %125 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2080
  %126 = load ptr, ptr %125, align 8, !dbg !2081
  %arrayidx84.1.i = getelementptr inbounds ptr, ptr %126, i64 %indvars.iv.i600, !dbg !2081
  %127 = load ptr, ptr %arrayidx84.1.i, align 8, !dbg !2081
  %arrayidx86.1.i = getelementptr inbounds i8, ptr %127, i64 8, !dbg !2081
  store i32 %call80.1.i, ptr %arrayidx86.1.i, align 4, !dbg !2082
  %call87.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %72) #10, !dbg !2083
  %128 = load ptr, ptr %wp_offset.i, align 8, !dbg !2084
  %129 = load ptr, ptr %128, align 8, !dbg !2085
  %arrayidx91.1.i = getelementptr inbounds ptr, ptr %129, i64 %indvars.iv.i600, !dbg !2085
  %130 = load ptr, ptr %arrayidx91.1.i, align 8, !dbg !2085
  %arrayidx93.1.i = getelementptr inbounds i8, ptr %130, i64 8, !dbg !2085
  store i32 %call87.1.i, ptr %arrayidx93.1.i, align 4, !dbg !2086
  %131 = load ptr, ptr %wp_offset.i, align 8, !dbg !2087
  %132 = load ptr, ptr %131, align 8, !dbg !2088
  %arrayidx97.1.i = getelementptr inbounds ptr, ptr %132, i64 %indvars.iv.i600, !dbg !2088
  %133 = load ptr, ptr %arrayidx97.1.i, align 8, !dbg !2088
  %arrayidx99.1.i = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2088
  %134 = load i32, ptr %arrayidx99.1.i, align 4, !dbg !2088
  %135 = load i16, ptr %bitdepth_chroma.i, align 2, !dbg !2089
  %conv100.1.i = sext i16 %135 to i32, !dbg !2090
  %sub101.1.i = add nsw i32 %conv100.1.i, -8, !dbg !2091
  %shl102.1.i = shl i32 %134, %sub101.1.i, !dbg !2092
  store i32 %shl102.1.i, ptr %arrayidx99.1.i, align 4, !dbg !2093
    #dbg_value(i64 3, !1975, !DIExpression(), !1976)
  br label %for.inc127.i, !dbg !2094

for.body77.us.preheader.i:                        ; preds = %if.then72.i
    #dbg_value(i64 1, !1975, !DIExpression(), !1976)
  %136 = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2095
  %conv111.us.i = zext nneg i16 %136 to i32, !dbg !2097
  %shl112.us.i = shl nuw i32 1, %conv111.us.i, !dbg !2098
  %137 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2099
  %138 = load ptr, ptr %137, align 8, !dbg !2100
  %arrayidx116.us.i = getelementptr inbounds ptr, ptr %138, i64 %indvars.iv.i600, !dbg !2100
  %139 = load ptr, ptr %arrayidx116.us.i, align 8, !dbg !2100
  %arrayidx118.us.i = getelementptr inbounds i8, ptr %139, i64 4, !dbg !2100
  store i32 %shl112.us.i, ptr %arrayidx118.us.i, align 4, !dbg !2101
  %140 = load ptr, ptr %wp_offset.i, align 8, !dbg !2102
  %141 = load ptr, ptr %140, align 8, !dbg !2103
  %arrayidx122.us.i = getelementptr inbounds ptr, ptr %141, i64 %indvars.iv.i600, !dbg !2103
  %142 = load ptr, ptr %arrayidx122.us.i, align 8, !dbg !2103
  %arrayidx124.us.i = getelementptr inbounds i8, ptr %142, i64 4, !dbg !2103
  store i32 0, ptr %arrayidx124.us.i, align 4, !dbg !2104
    #dbg_value(i64 2, !1975, !DIExpression(), !1976)
  %143 = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2095
  %conv111.us.1.i = zext nneg i16 %143 to i32, !dbg !2097
  %shl112.us.1.i = shl nuw i32 1, %conv111.us.1.i, !dbg !2098
  %144 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2099
  %145 = load ptr, ptr %144, align 8, !dbg !2100
  %arrayidx116.us.1.i = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv.i600, !dbg !2100
  %146 = load ptr, ptr %arrayidx116.us.1.i, align 8, !dbg !2100
  %arrayidx118.us.1.i = getelementptr inbounds i8, ptr %146, i64 8, !dbg !2100
  store i32 %shl112.us.1.i, ptr %arrayidx118.us.1.i, align 4, !dbg !2101
  %147 = load ptr, ptr %wp_offset.i, align 8, !dbg !2102
  %148 = load ptr, ptr %147, align 8, !dbg !2103
  %arrayidx122.us.1.i = getelementptr inbounds ptr, ptr %148, i64 %indvars.iv.i600, !dbg !2103
  %149 = load ptr, ptr %arrayidx122.us.1.i, align 8, !dbg !2103
  %arrayidx124.us.1.i = getelementptr inbounds i8, ptr %149, i64 8, !dbg !2103
  store i32 0, ptr %arrayidx124.us.1.i, align 4, !dbg !2104
    #dbg_value(i64 3, !1975, !DIExpression(), !1976)
  br label %for.inc127.i, !dbg !2094

for.inc127.i:                                     ; preds = %for.body77.us.preheader.i, %for.body77.preheader.i, %if.end68.i602
  %indvars.iv.next.i603 = add nuw nsw i64 %indvars.iv.i600, 1, !dbg !2094
    #dbg_value(i64 %indvars.iv.next.i603, !1974, !DIExpression(), !1976)
  %150 = load i32, ptr %num_ref_idx_active, align 8, !dbg !2031
  %151 = sext i32 %150 to i64, !dbg !2034
  %cmp27.i = icmp slt i64 %indvars.iv.next.i603, %151, !dbg !2034
  br i1 %cmp27.i, label %for.body.i, label %for.end129.i, !dbg !2035, !llvm.loop !2105

for.end129.i:                                     ; preds = %for.inc127.i, %for.cond.preheader.i
  %type.i599 = getelementptr inbounds i8, ptr %69, i64 848776, !dbg !2107
  %152 = load i32, ptr %type.i599, align 8, !dbg !2107
  %cmp130.i = icmp eq i32 %152, 1, !dbg !2109
  br i1 %cmp130.i, label %land.lhs.true.i, label %if.end209, !dbg !2110

land.lhs.true.i:                                  ; preds = %for.end129.i
  %active_pps.i = getelementptr inbounds i8, ptr %69, i64 8, !dbg !2111
  %153 = load ptr, ptr %active_pps.i, align 8, !dbg !2111
  %weighted_bipred_idc.i = getelementptr inbounds i8, ptr %153, i64 2180, !dbg !2112
  %154 = load i32, ptr %weighted_bipred_idc.i, align 4, !dbg !2112
  %cmp132.i = icmp eq i32 %154, 1, !dbg !2113
  br i1 %cmp132.i, label %for.cond135.preheader.i, label %if.end209, !dbg !2114

for.cond135.preheader.i:                          ; preds = %land.lhs.true.i
    #dbg_value(i32 0, !1974, !DIExpression(), !1976)
  %155 = load i32, ptr %arrayidx111, align 4, !dbg !2115
  %cmp138359.i = icmp sgt i32 %155, 0, !dbg !2119
  br i1 %cmp138359.i, label %for.body140.lr.ph.i, label %if.end209, !dbg !2120

for.body140.lr.ph.i:                              ; preds = %for.cond135.preheader.i
  %wp_offset151.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %bitdepth_luma161.i = getelementptr inbounds i8, ptr %69, i64 849040
  %bitdepth_chroma216.i = getelementptr inbounds i8, ptr %69, i64 849042
  br label %for.body140.i, !dbg !2120

for.body140.i:                                    ; preds = %for.inc247.i, %for.body140.lr.ph.i
  %indvars.iv372.i = phi i64 [ 0, %for.body140.lr.ph.i ], [ %indvars.iv.next373.i, %for.inc247.i ]
    #dbg_value(i64 %indvars.iv372.i, !1974, !DIExpression(), !1976)
  %call141.i = tail call i32 @u_1(ptr noundef nonnull @.str.79, ptr noundef %72) #10, !dbg !2121
    #dbg_value(i32 %call141.i, !1971, !DIExpression(), !1976)
  %tobool142.not.i = icmp eq i32 %call141.i, 0, !dbg !2123
  br i1 %tobool142.not.i, label %if.else170.i, label %if.then143.i, !dbg !2125

if.then143.i:                                     ; preds = %for.body140.i
  %call144.i = tail call i32 @se_v(ptr noundef nonnull @.str.80, ptr noundef %72) #10, !dbg !2126
  %156 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2128
  %arrayidx146.i = getelementptr inbounds i8, ptr %156, i64 8, !dbg !2129
  %157 = load ptr, ptr %arrayidx146.i, align 8, !dbg !2129
  %arrayidx148.i = getelementptr inbounds ptr, ptr %157, i64 %indvars.iv372.i, !dbg !2129
  %158 = load ptr, ptr %arrayidx148.i, align 8, !dbg !2129
  store i32 %call144.i, ptr %158, align 4, !dbg !2130
  %call150.i = tail call i32 @se_v(ptr noundef nonnull @.str.81, ptr noundef %72) #10, !dbg !2131
  %159 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2132
  %arrayidx152.i = getelementptr inbounds i8, ptr %159, i64 8, !dbg !2133
  %160 = load ptr, ptr %arrayidx152.i, align 8, !dbg !2133
  %arrayidx154.i = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv372.i, !dbg !2133
  %161 = load ptr, ptr %arrayidx154.i, align 8, !dbg !2133
  store i32 %call150.i, ptr %161, align 4, !dbg !2134
  %162 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2135
  %arrayidx157.i = getelementptr inbounds i8, ptr %162, i64 8, !dbg !2136
  %163 = load ptr, ptr %arrayidx157.i, align 8, !dbg !2136
  %arrayidx159.i = getelementptr inbounds ptr, ptr %163, i64 %indvars.iv372.i, !dbg !2136
  %164 = load ptr, ptr %arrayidx159.i, align 8, !dbg !2136
  %165 = load i32, ptr %164, align 4, !dbg !2136
  %166 = load i16, ptr %bitdepth_luma161.i, align 8, !dbg !2137
  %conv162.i = sext i16 %166 to i32, !dbg !2138
  %sub163.i = add nsw i32 %conv162.i, -8, !dbg !2139
  %shl164.i = shl i32 %165, %sub163.i, !dbg !2140
  store i32 %shl164.i, ptr %164, align 4, !dbg !2141
  br label %if.end184.i, !dbg !2142

if.else170.i:                                     ; preds = %for.body140.i
  %167 = load i16, ptr %luma_log2_weight_denom.i, align 4, !dbg !2143
  %conv172.i = zext nneg i16 %167 to i32, !dbg !2145
  %shl173.i = shl nuw i32 1, %conv172.i, !dbg !2146
  %168 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2147
  %arrayidx175.i = getelementptr inbounds i8, ptr %168, i64 8, !dbg !2148
  %169 = load ptr, ptr %arrayidx175.i, align 8, !dbg !2148
  %arrayidx177.i = getelementptr inbounds ptr, ptr %169, i64 %indvars.iv372.i, !dbg !2148
  %170 = load ptr, ptr %arrayidx177.i, align 8, !dbg !2148
  store i32 %shl173.i, ptr %170, align 4, !dbg !2149
  %171 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2150
  %arrayidx180.i = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2151
  %172 = load ptr, ptr %arrayidx180.i, align 8, !dbg !2151
  %arrayidx182.i = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv372.i, !dbg !2151
  %173 = load ptr, ptr %arrayidx182.i, align 8, !dbg !2151
  store i32 0, ptr %173, align 4, !dbg !2152
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else170.i, %if.then143.i
  %174 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !2153
  %cmp186.not.i = icmp eq i32 %174, 0, !dbg !2155
  br i1 %cmp186.not.i, label %for.inc247.i, label %if.then188.i, !dbg !2156

if.then188.i:                                     ; preds = %if.end184.i
  %call189.i = tail call i32 @u_1(ptr noundef nonnull @.str.82, ptr noundef %72) #10, !dbg !2157
    #dbg_value(i32 %call189.i, !1973, !DIExpression(), !1976)
    #dbg_value(i32 1, !1975, !DIExpression(), !1976)
  %tobool194.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool194.not.i, label %for.body193.us.preheader.i, label %for.body193.preheader.i

for.body193.preheader.i:                          ; preds = %if.then188.i
    #dbg_value(i64 1, !1975, !DIExpression(), !1976)
  %call196.i = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %72) #10, !dbg !2159
  %175 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2165
  %arrayidx198.i = getelementptr inbounds i8, ptr %175, i64 8, !dbg !2166
  %176 = load ptr, ptr %arrayidx198.i, align 8, !dbg !2166
  %arrayidx200.i = getelementptr inbounds ptr, ptr %176, i64 %indvars.iv372.i, !dbg !2166
  %177 = load ptr, ptr %arrayidx200.i, align 8, !dbg !2166
  %arrayidx202.i = getelementptr inbounds i8, ptr %177, i64 4, !dbg !2166
  store i32 %call196.i, ptr %arrayidx202.i, align 4, !dbg !2167
  %call203.i = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %72) #10, !dbg !2168
  %178 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2169
  %arrayidx205.i = getelementptr inbounds i8, ptr %178, i64 8, !dbg !2170
  %179 = load ptr, ptr %arrayidx205.i, align 8, !dbg !2170
  %arrayidx207.i = getelementptr inbounds ptr, ptr %179, i64 %indvars.iv372.i, !dbg !2170
  %180 = load ptr, ptr %arrayidx207.i, align 8, !dbg !2170
  %arrayidx209.i = getelementptr inbounds i8, ptr %180, i64 4, !dbg !2170
  store i32 %call203.i, ptr %arrayidx209.i, align 4, !dbg !2171
  %181 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2172
  %arrayidx211.i = getelementptr inbounds i8, ptr %181, i64 8, !dbg !2173
  %182 = load ptr, ptr %arrayidx211.i, align 8, !dbg !2173
  %arrayidx213.i = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv372.i, !dbg !2173
  %183 = load ptr, ptr %arrayidx213.i, align 8, !dbg !2173
  %arrayidx215.i = getelementptr inbounds i8, ptr %183, i64 4, !dbg !2173
  %184 = load i32, ptr %arrayidx215.i, align 4, !dbg !2173
  %185 = load i16, ptr %bitdepth_chroma216.i, align 2, !dbg !2174
  %conv217.i = sext i16 %185 to i32, !dbg !2175
  %sub218.i = add nsw i32 %conv217.i, -8, !dbg !2176
  %shl219.i = shl i32 %184, %sub218.i, !dbg !2177
  store i32 %shl219.i, ptr %arrayidx215.i, align 4, !dbg !2178
    #dbg_value(i64 2, !1975, !DIExpression(), !1976)
  %call196.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %72) #10, !dbg !2159
  %186 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2165
  %arrayidx198.1.i = getelementptr inbounds i8, ptr %186, i64 8, !dbg !2166
  %187 = load ptr, ptr %arrayidx198.1.i, align 8, !dbg !2166
  %arrayidx200.1.i = getelementptr inbounds ptr, ptr %187, i64 %indvars.iv372.i, !dbg !2166
  %188 = load ptr, ptr %arrayidx200.1.i, align 8, !dbg !2166
  %arrayidx202.1.i = getelementptr inbounds i8, ptr %188, i64 8, !dbg !2166
  store i32 %call196.1.i, ptr %arrayidx202.1.i, align 4, !dbg !2167
  %call203.1.i = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %72) #10, !dbg !2168
  %189 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2169
  %arrayidx205.1.i = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2170
  %190 = load ptr, ptr %arrayidx205.1.i, align 8, !dbg !2170
  %arrayidx207.1.i = getelementptr inbounds ptr, ptr %190, i64 %indvars.iv372.i, !dbg !2170
  %191 = load ptr, ptr %arrayidx207.1.i, align 8, !dbg !2170
  %arrayidx209.1.i = getelementptr inbounds i8, ptr %191, i64 8, !dbg !2170
  store i32 %call203.1.i, ptr %arrayidx209.1.i, align 4, !dbg !2171
  %192 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2172
  %arrayidx211.1.i = getelementptr inbounds i8, ptr %192, i64 8, !dbg !2173
  %193 = load ptr, ptr %arrayidx211.1.i, align 8, !dbg !2173
  %arrayidx213.1.i = getelementptr inbounds ptr, ptr %193, i64 %indvars.iv372.i, !dbg !2173
  %194 = load ptr, ptr %arrayidx213.1.i, align 8, !dbg !2173
  %arrayidx215.1.i = getelementptr inbounds i8, ptr %194, i64 8, !dbg !2173
  %195 = load i32, ptr %arrayidx215.1.i, align 4, !dbg !2173
  %196 = load i16, ptr %bitdepth_chroma216.i, align 2, !dbg !2174
  %conv217.1.i = sext i16 %196 to i32, !dbg !2175
  %sub218.1.i = add nsw i32 %conv217.1.i, -8, !dbg !2176
  %shl219.1.i = shl i32 %195, %sub218.1.i, !dbg !2177
  store i32 %shl219.1.i, ptr %arrayidx215.1.i, align 4, !dbg !2178
    #dbg_value(i64 3, !1975, !DIExpression(), !1976)
  br label %for.inc247.i, !dbg !2179

for.body193.us.preheader.i:                       ; preds = %if.then188.i
    #dbg_value(i64 1, !1975, !DIExpression(), !1976)
  %197 = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2180
  %conv228.us.i = zext nneg i16 %197 to i32, !dbg !2182
  %shl229.us.i = shl nuw i32 1, %conv228.us.i, !dbg !2183
  %198 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2184
  %arrayidx231.us.i = getelementptr inbounds i8, ptr %198, i64 8, !dbg !2185
  %199 = load ptr, ptr %arrayidx231.us.i, align 8, !dbg !2185
  %arrayidx233.us.i = getelementptr inbounds ptr, ptr %199, i64 %indvars.iv372.i, !dbg !2185
  %200 = load ptr, ptr %arrayidx233.us.i, align 8, !dbg !2185
  %arrayidx235.us.i = getelementptr inbounds i8, ptr %200, i64 4, !dbg !2185
  store i32 %shl229.us.i, ptr %arrayidx235.us.i, align 4, !dbg !2186
  %201 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2187
  %arrayidx237.us.i = getelementptr inbounds i8, ptr %201, i64 8, !dbg !2188
  %202 = load ptr, ptr %arrayidx237.us.i, align 8, !dbg !2188
  %arrayidx239.us.i = getelementptr inbounds ptr, ptr %202, i64 %indvars.iv372.i, !dbg !2188
  %203 = load ptr, ptr %arrayidx239.us.i, align 8, !dbg !2188
  %arrayidx241.us.i = getelementptr inbounds i8, ptr %203, i64 4, !dbg !2188
  store i32 0, ptr %arrayidx241.us.i, align 4, !dbg !2189
    #dbg_value(i64 2, !1975, !DIExpression(), !1976)
  %204 = load i16, ptr %cond.in.in.1.i.i, align 2, !dbg !2180
  %conv228.us.1.i = zext nneg i16 %204 to i32, !dbg !2182
  %shl229.us.1.i = shl nuw i32 1, %conv228.us.1.i, !dbg !2183
  %205 = load ptr, ptr %wp_weight.i.i, align 8, !dbg !2184
  %arrayidx231.us.1.i = getelementptr inbounds i8, ptr %205, i64 8, !dbg !2185
  %206 = load ptr, ptr %arrayidx231.us.1.i, align 8, !dbg !2185
  %arrayidx233.us.1.i = getelementptr inbounds ptr, ptr %206, i64 %indvars.iv372.i, !dbg !2185
  %207 = load ptr, ptr %arrayidx233.us.1.i, align 8, !dbg !2185
  %arrayidx235.us.1.i = getelementptr inbounds i8, ptr %207, i64 8, !dbg !2185
  store i32 %shl229.us.1.i, ptr %arrayidx235.us.1.i, align 4, !dbg !2186
  %208 = load ptr, ptr %wp_offset151.i, align 8, !dbg !2187
  %arrayidx237.us.1.i = getelementptr inbounds i8, ptr %208, i64 8, !dbg !2188
  %209 = load ptr, ptr %arrayidx237.us.1.i, align 8, !dbg !2188
  %arrayidx239.us.1.i = getelementptr inbounds ptr, ptr %209, i64 %indvars.iv372.i, !dbg !2188
  %210 = load ptr, ptr %arrayidx239.us.1.i, align 8, !dbg !2188
  %arrayidx241.us.1.i = getelementptr inbounds i8, ptr %210, i64 8, !dbg !2188
  store i32 0, ptr %arrayidx241.us.1.i, align 4, !dbg !2189
    #dbg_value(i64 3, !1975, !DIExpression(), !1976)
  br label %for.inc247.i, !dbg !2179

for.inc247.i:                                     ; preds = %for.body193.us.preheader.i, %for.body193.preheader.i, %if.end184.i
  %indvars.iv.next373.i = add nuw nsw i64 %indvars.iv372.i, 1, !dbg !2179
    #dbg_value(i64 %indvars.iv.next373.i, !1974, !DIExpression(), !1976)
  %211 = load i32, ptr %arrayidx111, align 4, !dbg !2115
  %212 = sext i32 %211 to i64, !dbg !2119
  %cmp138.i = icmp slt i64 %indvars.iv.next373.i, %212, !dbg !2119
  br i1 %cmp138.i, label %for.body140.i, label %if.end209, !dbg !2120, !llvm.loop !2190

if.end209:                                        ; preds = %for.inc247.i, %for.cond135.preheader.i, %land.lhs.true.i, %for.end129.i, %land.lhs.true204, %lor.lhs.false199
  %nal_reference_idc = getelementptr inbounds i8, ptr %currSlice, i64 56, !dbg !2192
  %213 = load i32, ptr %nal_reference_idc, align 8, !dbg !2192
  %tobool210.not = icmp eq i32 %213, 0, !dbg !2194
  br i1 %tobool210.not, label %if.end212, label %if.then211, !dbg !2195

if.then211:                                       ; preds = %if.end209
  tail call void @dec_ref_pic_marking(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %currSlice), !dbg !2196
  br label %if.end212, !dbg !2196

if.end212:                                        ; preds = %if.then211, %if.end209
  %214 = load ptr, ptr %active_pps95, align 8, !dbg !2197
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %214, i64 12, !dbg !2199
  %215 = load i32, ptr %entropy_coding_mode_flag, align 4, !dbg !2199
  %tobool214.not = icmp eq i32 %215, 0, !dbg !2200
  br i1 %tobool214.not, label %if.end227, label %land.lhs.true215, !dbg !2201

land.lhs.true215:                                 ; preds = %if.end212
  %216 = load i32, ptr %type, align 8, !dbg !2202
  switch i32 %216, label %if.then223 [
    i32 2, label %if.end227
    i32 4, label %if.end227
  ], !dbg !2203

if.then223:                                       ; preds = %land.lhs.true215
  %call224 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef %4) #10, !dbg !2204
  br label %if.end227, !dbg !2206

if.end227:                                        ; preds = %if.end212, %land.lhs.true215, %land.lhs.true215, %if.then223
  %.sink611 = phi i32 [ %call224, %if.then223 ], [ 0, %land.lhs.true215 ], [ 0, %land.lhs.true215 ], [ 0, %if.end212 ]
  %model_number226 = getelementptr inbounds i8, ptr %currSlice, i64 168, !dbg !2207
  store i32 %.sink611, ptr %model_number226, align 8, !dbg !2207
  %call228 = tail call i32 @se_v(ptr noundef nonnull @.str.18, ptr noundef %4) #10, !dbg !2208
    #dbg_value(i32 %call228, !1588, !DIExpression(), !1590)
  %slice_qp_delta = getelementptr inbounds i8, ptr %currSlice, i64 152, !dbg !2209
  store i32 %call228, ptr %slice_qp_delta, align 8, !dbg !2210
  %217 = load ptr, ptr %active_pps95, align 8, !dbg !2211
  %pic_init_qp_minus26 = getelementptr inbounds i8, ptr %217, i64 2184, !dbg !2212
  %218 = load i32, ptr %pic_init_qp_minus26, align 8, !dbg !2212
  %add230 = add i32 %call228, 26, !dbg !2213
  %add231 = add i32 %add230, %218, !dbg !2214
  %qp = getelementptr inbounds i8, ptr %currSlice, i64 148, !dbg !2215
  store i32 %add231, ptr %qp, align 4, !dbg !2216
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %0, i64 849052, !dbg !2217
  %219 = load i32, ptr %bitdepth_luma_qp_scale, align 4, !dbg !2217
  %sub = sub nsw i32 0, %219, !dbg !2219
  %cmp233 = icmp slt i32 %add231, %sub, !dbg !2220
  %cmp237 = icmp sgt i32 %add231, 51
  %or.cond = or i1 %cmp233, %cmp237, !dbg !2221
  br i1 %or.cond, label %if.then239, label %if.end240, !dbg !2221

if.then239:                                       ; preds = %if.end227
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #10, !dbg !2222
  br label %if.end240, !dbg !2222

if.end240:                                        ; preds = %if.end227, %if.then239
  %220 = load i32, ptr %type, align 8, !dbg !2223
  %.off = add i32 %220, -3, !dbg !2225
  %switch573 = icmp ult i32 %.off, 2, !dbg !2225
  br i1 %switch573, label %if.then248, label %if.end268, !dbg !2225

if.then248:                                       ; preds = %if.end240
  %cmp250 = icmp eq i32 %220, 3, !dbg !2226
  br i1 %cmp250, label %if.then252, label %if.end254, !dbg !2229

if.then252:                                       ; preds = %if.then248
  %call253 = tail call i32 @u_1(ptr noundef nonnull @.str.20, ptr noundef %4) #10, !dbg !2230
  %sp_switch = getelementptr inbounds i8, ptr %currSlice, i64 224, !dbg !2232
  store i32 %call253, ptr %sp_switch, align 8, !dbg !2233
  br label %if.end254, !dbg !2234

if.end254:                                        ; preds = %if.then252, %if.then248
  %call255 = tail call i32 @se_v(ptr noundef nonnull @.str.21, ptr noundef %4) #10, !dbg !2235
    #dbg_value(i32 %call255, !1588, !DIExpression(), !1590)
  %slice_qs_delta = getelementptr inbounds i8, ptr %currSlice, i64 160, !dbg !2236
  store i32 %call255, ptr %slice_qs_delta, align 8, !dbg !2237
  %221 = load ptr, ptr %active_pps95, align 8, !dbg !2238
  %pic_init_qs_minus26 = getelementptr inbounds i8, ptr %221, i64 2188, !dbg !2239
  %222 = load i32, ptr %pic_init_qs_minus26, align 4, !dbg !2239
  %add257 = add i32 %call255, 26, !dbg !2240
  %add258 = add i32 %add257, %222, !dbg !2241
  %qs = getelementptr inbounds i8, ptr %currSlice, i64 156, !dbg !2242
  store i32 %add258, ptr %qs, align 4, !dbg !2243
  %or.cond571 = icmp ugt i32 %add258, 51, !dbg !2244
  br i1 %or.cond571, label %if.then266, label %if.end268, !dbg !2244

if.then266:                                       ; preds = %if.end254
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #10, !dbg !2246
  br label %if.end268, !dbg !2246

if.end268:                                        ; preds = %if.end240, %if.end254, %if.then266
  %223 = load ptr, ptr %active_sps3, align 8, !dbg !2247
  %profile_idc = getelementptr inbounds i8, ptr %223, i64 4, !dbg !2247
  %224 = load i32, ptr %profile_idc, align 4, !dbg !2247
  %cmp270 = icmp ugt i32 %224, 109, !dbg !2247
  br i1 %cmp270, label %land.lhs.true272, label %lor.lhs.false275, !dbg !2247

land.lhs.true272:                                 ; preds = %if.end268
  %constrained_set3_flag = getelementptr inbounds i8, ptr %223, i64 20, !dbg !2247
  %225 = load i32, ptr %constrained_set3_flag, align 4, !dbg !2247
  %tobool274.not = icmp eq i32 %225, 0, !dbg !2247
  br i1 %tobool274.not, label %if.then297, label %land.lhs.true294, !dbg !2247

lor.lhs.false275:                                 ; preds = %if.end268
  %cmp278 = icmp eq i32 %224, 44, !dbg !2247
  br i1 %cmp278, label %land.lhs.true294, label %if.then297, !dbg !2249

land.lhs.true294:                                 ; preds = %land.lhs.true272, %lor.lhs.false275
  %intra_profile_deblocking = getelementptr inbounds i8, ptr %1, i64 788, !dbg !2250
  %226 = load i32, ptr %intra_profile_deblocking, align 4, !dbg !2250
  %cmp295 = icmp eq i32 %226, 1, !dbg !2251
  br i1 %cmp295, label %if.then297, label %if.else322, !dbg !2252

if.then297:                                       ; preds = %land.lhs.true272, %land.lhs.true294, %lor.lhs.false275
  %227 = load ptr, ptr %active_pps95, align 8, !dbg !2253
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %227, i64 2200, !dbg !2256
  %228 = load i32, ptr %deblocking_filter_control_present_flag, align 8, !dbg !2256
  %tobool299.not = icmp eq i32 %228, 0, !dbg !2257
  br i1 %tobool299.not, label %if.else317, label %if.then300, !dbg !2258

if.then300:                                       ; preds = %if.then297
  %call301 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %4) #10, !dbg !2259
  %conv302 = trunc i32 %call301 to i16, !dbg !2261
  %DFDisableIdc = getelementptr inbounds i8, ptr %currSlice, i64 1220, !dbg !2262
  store i16 %conv302, ptr %DFDisableIdc, align 4, !dbg !2263
  %sext.mask570 = and i32 %call301, 65535, !dbg !2264
  %cmp305.not = icmp eq i32 %sext.mask570, 1, !dbg !2264
  br i1 %cmp305.not, label %if.else313, label %if.then307, !dbg !2266

if.then307:                                       ; preds = %if.then300
  %call308 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %4) #10, !dbg !2267
  %call308.tr = trunc i32 %call308 to i16, !dbg !2269
  %conv309 = shl i16 %call308.tr, 1, !dbg !2269
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %currSlice, i64 1222, !dbg !2270
  store i16 %conv309, ptr %DFAlphaC0Offset, align 2, !dbg !2271
  %call310 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %4) #10, !dbg !2272
  %call310.tr = trunc i32 %call310 to i16, !dbg !2273
  %conv312 = shl i16 %call310.tr, 1, !dbg !2273
  %DFBetaOffset = getelementptr inbounds i8, ptr %currSlice, i64 1224, !dbg !2274
  store i16 %conv312, ptr %DFBetaOffset, align 8, !dbg !2275
  br label %if.end348, !dbg !2276

if.else313:                                       ; preds = %if.then300
  %DFBetaOffset314 = getelementptr inbounds i8, ptr %currSlice, i64 1224, !dbg !2277
  store i16 0, ptr %DFBetaOffset314, align 8, !dbg !2279
  %DFAlphaC0Offset315 = getelementptr inbounds i8, ptr %currSlice, i64 1222, !dbg !2280
  store i16 0, ptr %DFAlphaC0Offset315, align 2, !dbg !2281
  br label %if.end348

if.else317:                                       ; preds = %if.then297
  %DFBetaOffset318 = getelementptr inbounds i8, ptr %currSlice, i64 1224, !dbg !2282
  store i16 0, ptr %DFBetaOffset318, align 8, !dbg !2284
  %DFAlphaC0Offset319 = getelementptr inbounds i8, ptr %currSlice, i64 1222, !dbg !2285
  store i16 0, ptr %DFAlphaC0Offset319, align 2, !dbg !2286
  %DFDisableIdc320 = getelementptr inbounds i8, ptr %currSlice, i64 1220, !dbg !2287
  store i16 0, ptr %DFDisableIdc320, align 4, !dbg !2288
  br label %if.end348

if.else322:                                       ; preds = %land.lhs.true294
  %229 = load ptr, ptr %active_pps95, align 8, !dbg !2289
  %deblocking_filter_control_present_flag324 = getelementptr inbounds i8, ptr %229, i64 2200, !dbg !2292
  %230 = load i32, ptr %deblocking_filter_control_present_flag324, align 8, !dbg !2292
  %tobool325.not = icmp eq i32 %230, 0, !dbg !2293
  br i1 %tobool325.not, label %if.end344, label %if.then326, !dbg !2294

if.then326:                                       ; preds = %if.else322
  %call327 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %4) #10, !dbg !2295
  %conv328 = trunc i32 %call327 to i16, !dbg !2297
  %DFDisableIdc329 = getelementptr inbounds i8, ptr %currSlice, i64 1220, !dbg !2298
  store i16 %conv328, ptr %DFDisableIdc329, align 4, !dbg !2299
  %sext.mask = and i32 %call327, 65535, !dbg !2300
  %cmp332.not = icmp eq i32 %sext.mask, 1, !dbg !2300
  br i1 %cmp332.not, label %if.end344, label %if.then334, !dbg !2302

if.then334:                                       ; preds = %if.then326
  %call335 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %4) #10, !dbg !2303
  %call335.tr = trunc i32 %call335 to i16, !dbg !2305
  %conv337 = shl i16 %call335.tr, 1, !dbg !2305
  %DFAlphaC0Offset338 = getelementptr inbounds i8, ptr %currSlice, i64 1222, !dbg !2306
  store i16 %conv337, ptr %DFAlphaC0Offset338, align 2, !dbg !2307
  %call339 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %4) #10, !dbg !2308
  br label %if.end344, !dbg !2309

if.end344:                                        ; preds = %if.then326, %if.then334, %if.else322
  %DFDisableIdc345 = getelementptr inbounds i8, ptr %currSlice, i64 1220, !dbg !2310
  store i16 1, ptr %DFDisableIdc345, align 4, !dbg !2311
  %DFBetaOffset346 = getelementptr inbounds i8, ptr %currSlice, i64 1224, !dbg !2312
  store i16 0, ptr %DFBetaOffset346, align 8, !dbg !2313
  %DFAlphaC0Offset347 = getelementptr inbounds i8, ptr %currSlice, i64 1222, !dbg !2314
  store i16 0, ptr %DFAlphaC0Offset347, align 2, !dbg !2315
  br label %if.end348

if.end348:                                        ; preds = %if.else317, %if.else313, %if.then307, %if.end344
  %231 = load ptr, ptr %active_pps95, align 8, !dbg !2316
  %num_slice_groups_minus1 = getelementptr inbounds i8, ptr %231, i64 2044, !dbg !2318
  %232 = load i32, ptr %num_slice_groups_minus1, align 4, !dbg !2318
  %cmp350.not = icmp eq i32 %232, 0, !dbg !2319
  br i1 %cmp350.not, label %if.end382, label %land.lhs.true352, !dbg !2320

land.lhs.true352:                                 ; preds = %if.end348
  %slice_group_map_type = getelementptr inbounds i8, ptr %231, i64 2048, !dbg !2321
  %233 = load i32, ptr %slice_group_map_type, align 8, !dbg !2321
  %234 = add i32 %233, -3, !dbg !2322
  %or.cond572 = icmp ult i32 %234, 3, !dbg !2322
  br i1 %or.cond572, label %if.then361, label %if.end382, !dbg !2322

if.then361:                                       ; preds = %land.lhs.true352
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %2, i64 3132, !dbg !2323
  %235 = load i32, ptr %pic_height_in_map_units_minus1, align 4, !dbg !2323
  %add362 = add i32 %235, 1, !dbg !2325
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %2, i64 3128, !dbg !2326
  %236 = load i32, ptr %pic_width_in_mbs_minus1, align 4, !dbg !2326
  %add363 = add i32 %236, 1, !dbg !2327
  %mul364 = mul i32 %add363, %add362, !dbg !2328
  %slice_group_change_rate_minus1 = getelementptr inbounds i8, ptr %231, i64 2152, !dbg !2329
  %237 = load i32, ptr %slice_group_change_rate_minus1, align 8, !dbg !2329
  %add366 = add i32 %237, 1, !dbg !2330
  %div = udiv i32 %mul364, %add366, !dbg !2331
    #dbg_value(i32 %div, !1589, !DIExpression(), !1590)
  %rem = urem i32 %mul364, %add366, !dbg !2332
  %tobool375.not = icmp ne i32 %rem, 0, !dbg !2332
  %add377 = zext i1 %tobool375.not to i32, !dbg !2334
  %spec.select = add nsw i32 %div, %add377, !dbg !2334
    #dbg_value(i32 %spec.select, !1589, !DIExpression(), !1590)
    #dbg_value(i32 %spec.select, !360, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2335)
    #dbg_value(i32 %spec.select, !361, !DIExpression(), !2335)
    #dbg_value(i32 0, !362, !DIExpression(), !2335)
  %cmp.not3.i = icmp eq i32 %spec.select, 0, !dbg !2337
  %238 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select, i1 true), !dbg !2338
  %239 = sub nuw nsw i32 32, %238, !dbg !2338
  %uiRet.0.lcssa.i = select i1 %cmp.not3.i, i32 0, i32 %239, !dbg !2338
    #dbg_value(i32 %uiRet.0.lcssa.i, !1589, !DIExpression(), !1590)
  %call381 = tail call i32 @u_v(i32 noundef %uiRet.0.lcssa.i, ptr noundef nonnull @.str.26, ptr noundef %4) #10, !dbg !2339
  %slice_group_change_cycle = getelementptr inbounds i8, ptr %currSlice, i64 228, !dbg !2340
  store i32 %call381, ptr %slice_group_change_cycle, align 4, !dbg !2341
  br label %if.end382, !dbg !2342

if.end382:                                        ; preds = %if.then361, %land.lhs.true352, %if.end348
  %FrameHeightInMbs = getelementptr inbounds i8, ptr %0, i64 849004, !dbg !2343
  %240 = load i32, ptr %FrameHeightInMbs, align 4, !dbg !2343
  %field_pic_flag383 = getelementptr inbounds i8, ptr %currSlice, i64 176, !dbg !2344
  %241 = load i32, ptr %field_pic_flag383, align 8, !dbg !2344
  %add384 = add i32 %241, 1, !dbg !2345
  %div385 = udiv i32 %240, %add384, !dbg !2346
  %PicHeightInMbs = getelementptr inbounds i8, ptr %0, i64 849008, !dbg !2347
  store i32 %div385, ptr %PicHeightInMbs, align 8, !dbg !2348
  %PicWidthInMbs = getelementptr inbounds i8, ptr %0, i64 848996, !dbg !2349
  %242 = load i32, ptr %PicWidthInMbs, align 4, !dbg !2349
  %mul387 = mul i32 %242, %div385, !dbg !2350
  %PicSizeInMbs = getelementptr inbounds i8, ptr %0, i64 849012, !dbg !2351
  store i32 %mul387, ptr %PicSizeInMbs, align 4, !dbg !2352
  %mul390 = mul i32 %242, %240, !dbg !2353
  %FrameSizeInMbs = getelementptr inbounds i8, ptr %0, i64 849016, !dbg !2354
  store i32 %mul390, ptr %FrameSizeInMbs, align 8, !dbg !2355
  %243 = load ptr, ptr @p_Dec, align 8, !dbg !2356
  %UsedBits = getelementptr inbounds i8, ptr %243, i64 24, !dbg !2357
  %244 = load i32, ptr %UsedBits, align 8, !dbg !2357
  ret i32 %244, !dbg !2358
}

declare !dbg !2359 i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2360 i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dec_ref_pic_marking(ptr nocapture noundef writeonly %p_Vid, ptr noundef %currStream, ptr nocapture noundef %pSlice) local_unnamed_addr #1 !dbg !2361 {
entry:
    #dbg_value(ptr %p_Vid, !2365, !DIExpression(), !2371)
    #dbg_value(ptr %currStream, !2366, !DIExpression(), !2371)
    #dbg_value(ptr %pSlice, !2367, !DIExpression(), !2371)
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %pSlice, i64 248
  %0 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2372
  %tobool.not86 = icmp eq ptr %0, null, !dbg !2373
  br i1 %tobool.not86, label %while.end, label %while.body, !dbg !2373

while.body:                                       ; preds = %entry, %while.body
  %1 = phi ptr [ %3, %while.body ], [ %0, %entry ]
    #dbg_value(ptr %1, !2369, !DIExpression(), !2371)
  %Next = getelementptr inbounds i8, ptr %1, i64 24, !dbg !2374
  %2 = load ptr, ptr %Next, align 8, !dbg !2374
  store ptr %2, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2376
  tail call void @free(ptr noundef nonnull %1) #10, !dbg !2377
  %3 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2372
  %tobool.not = icmp eq ptr %3, null, !dbg !2373
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !2373, !llvm.loop !2378

while.end:                                        ; preds = %while.body, %entry
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48, !dbg !2380
  %4 = load i32, ptr %idr_flag, align 8, !dbg !2380
  %tobool3.not = icmp eq i32 %4, 0, !dbg !2382
  br i1 %tobool3.not, label %if.else, label %if.then, !dbg !2383

if.then:                                          ; preds = %while.end
  %call = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %currStream) #10, !dbg !2384
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %pSlice, i64 236, !dbg !2386
  store i32 %call, ptr %no_output_of_prior_pics_flag, align 4, !dbg !2387
  %no_output_of_prior_pics_flag5 = getelementptr inbounds i8, ptr %p_Vid, i64 849024, !dbg !2388
  store i32 %call, ptr %no_output_of_prior_pics_flag5, align 8, !dbg !2389
  %call6 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %currStream) #10, !dbg !2390
  %long_term_reference_flag = getelementptr inbounds i8, ptr %pSlice, i64 240, !dbg !2391
  store i32 %call6, ptr %long_term_reference_flag, align 8, !dbg !2392
  br label %if.end47, !dbg !2393

if.else:                                          ; preds = %while.end
  %call7 = tail call i32 @u_1(ptr noundef nonnull @.str.29, ptr noundef %currStream) #10, !dbg !2394
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %pSlice, i64 244, !dbg !2396
  store i32 %call7, ptr %adaptive_ref_pic_buffering_flag, align 4, !dbg !2397
  %tobool9.not = icmp eq i32 %call7, 0, !dbg !2398
  br i1 %tobool9.not, label %if.end47, label %do.body, !dbg !2400

do.body:                                          ; preds = %if.else, %do.cond
  %call11 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #11, !dbg !2401
    #dbg_value(ptr %call11, !2369, !DIExpression(), !2371)
  %Next12 = getelementptr inbounds i8, ptr %call11, i64 24, !dbg !2404
  store ptr null, ptr %Next12, align 8, !dbg !2405
  %call13 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %currStream) #10, !dbg !2406
  store i32 %call13, ptr %call11, align 8, !dbg !2407
    #dbg_value(i32 %call13, !2368, !DIExpression(), !2371)
  switch i32 %call13, label %if.end30 [
    i32 3, label %if.then15
    i32 1, label %if.then15
    i32 2, label %if.then18
    i32 6, label %if.then24
    i32 4, label %if.then28
  ], !dbg !2408

if.then15:                                        ; preds = %do.body, %do.body
  %call16 = tail call i32 @ue_v(ptr noundef nonnull @.str.31, ptr noundef %currStream) #10, !dbg !2410
  %difference_of_pic_nums_minus1 = getelementptr inbounds i8, ptr %call11, i64 4, !dbg !2412
  store i32 %call16, ptr %difference_of_pic_nums_minus1, align 4, !dbg !2413
  switch i32 %call13, label %if.end30 [
    i32 2, label %if.then18
    i32 3, label %if.then24
  ], !dbg !2414

if.then18:                                        ; preds = %do.body, %if.then15
  %call19 = tail call i32 @ue_v(ptr noundef nonnull @.str.32, ptr noundef %currStream) #10, !dbg !2415
  %long_term_pic_num = getelementptr inbounds i8, ptr %call11, i64 8, !dbg !2418
  store i32 %call19, ptr %long_term_pic_num, align 8, !dbg !2419
  br label %if.end30, !dbg !2420

if.then24:                                        ; preds = %if.then15, %do.body
  %call25 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %currStream) #10, !dbg !2422
  %long_term_frame_idx = getelementptr inbounds i8, ptr %call11, i64 12, !dbg !2424
  store i32 %call25, ptr %long_term_frame_idx, align 4, !dbg !2425
  br label %if.end30, !dbg !2426

if.then28:                                        ; preds = %do.body
  %call29 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %currStream) #10, !dbg !2427
  %max_long_term_frame_idx_plus1 = getelementptr inbounds i8, ptr %call11, i64 16, !dbg !2430
  store i32 %call29, ptr %max_long_term_frame_idx_plus1, align 8, !dbg !2431
  br label %if.end30, !dbg !2432

if.end30:                                         ; preds = %if.then24, %if.then18, %do.body, %if.then15, %if.then28
  %5 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !2433
  %cmp32 = icmp eq ptr %5, null, !dbg !2435
  br i1 %cmp32, label %do.cond, label %while.cond37, !dbg !2436

while.cond37:                                     ; preds = %if.end30, %while.cond37
  %tmp_drpm2.0 = phi ptr [ %6, %while.cond37 ], [ %5, %if.end30 ], !dbg !2437
    #dbg_value(ptr %tmp_drpm2.0, !2370, !DIExpression(), !2371)
  %Next38 = getelementptr inbounds i8, ptr %tmp_drpm2.0, i64 24, !dbg !2439
  %6 = load ptr, ptr %Next38, align 8, !dbg !2439
  %cmp39.not = icmp eq ptr %6, null, !dbg !2440
  br i1 %cmp39.not, label %while.end42, label %while.cond37, !dbg !2441, !llvm.loop !2442

while.end42:                                      ; preds = %while.cond37
  %Next38.le = getelementptr inbounds i8, ptr %tmp_drpm2.0, i64 24
  br label %do.cond

do.cond:                                          ; preds = %if.end30, %while.end42
  %dec_ref_pic_marking_buffer.sink = phi ptr [ %Next38.le, %while.end42 ], [ %dec_ref_pic_marking_buffer, %if.end30 ]
  store ptr %call11, ptr %dec_ref_pic_marking_buffer.sink, align 8, !dbg !2444
  %cmp45.not = icmp eq i32 %call13, 0, !dbg !2445
  br i1 %cmp45.not, label %if.end47, label %do.body, !dbg !2446, !llvm.loop !2447

if.end47:                                         ; preds = %do.cond, %if.else, %if.then
  ret void, !dbg !2450
}

declare !dbg !2451 void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2454 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !2458 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @decode_poc(ptr noundef %p_Vid, ptr noundef %pSlice) local_unnamed_addr #1 !dbg !2464 {
entry:
    #dbg_value(ptr %p_Vid, !2468, !DIExpression(), !2473)
    #dbg_value(ptr %pSlice, !2469, !DIExpression(), !2473)
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2474
  %0 = load ptr, ptr %active_sps1, align 8, !dbg !2474
    #dbg_value(ptr %0, !2470, !DIExpression(), !2473)
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %0, i64 2076, !dbg !2475
  %1 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !2475
  %add = add i32 %1, 4, !dbg !2476
  %shl = shl nuw i32 1, %add, !dbg !2477
    #dbg_value(i32 %shl, !2472, !DIExpression(), !2473)
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %0, i64 2072, !dbg !2478
  %2 = load i32, ptr %pic_order_cnt_type, align 4, !dbg !2478
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb86
    i32 2, label %sw.bb228
  ], !dbg !2479

sw.bb:                                            ; preds = %entry
  %idr_flag = getelementptr inbounds i8, ptr %pSlice, i64 48, !dbg !2480
  %3 = load i32, ptr %idr_flag, align 8, !dbg !2480
  %tobool.not = icmp eq i32 %3, 0, !dbg !2483
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2484

if.then:                                          ; preds = %sw.bb
  %PrevPicOrderCntMsb = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2485
  store i32 0, ptr %PrevPicOrderCntMsb, align 8, !dbg !2487
  br label %if.end12.thread, !dbg !2488

if.else:                                          ; preds = %sw.bb
  %last_has_mmco_5 = getelementptr inbounds i8, ptr %p_Vid, i64 849028, !dbg !2489
  %4 = load i32, ptr %last_has_mmco_5, align 4, !dbg !2489
  %tobool2.not = icmp eq i32 %4, 0, !dbg !2492
  br i1 %tobool2.not, label %if.else.if.end12_crit_edge, label %if.then3, !dbg !2493

if.else.if.end12_crit_edge:                       ; preds = %if.else
  %PrevPicOrderCntLsb13.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848956
  %.pre507 = load i32, ptr %PrevPicOrderCntLsb13.phi.trans.insert, align 4, !dbg !2494
  br label %if.end12, !dbg !2493

if.then3:                                         ; preds = %if.else
  %last_pic_bottom_field = getelementptr inbounds i8, ptr %p_Vid, i64 849032, !dbg !2496
  %5 = load i32, ptr %last_pic_bottom_field, align 8, !dbg !2496
  %tobool4.not = icmp eq i32 %5, 0, !dbg !2499
  %PrevPicOrderCntMsb9 = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2500
  store i32 0, ptr %PrevPicOrderCntMsb9, align 8, !dbg !2500
  br i1 %tobool4.not, label %if.else8, label %if.end12.thread, !dbg !2501

if.else8:                                         ; preds = %if.then3
  %toppoc = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2502
  %6 = load i32, ptr %toppoc, align 4, !dbg !2502
  %PrevPicOrderCntLsb10 = getelementptr inbounds i8, ptr %p_Vid, i64 848956, !dbg !2504
  store i32 %6, ptr %PrevPicOrderCntLsb10, align 4, !dbg !2505
  br label %if.end12

if.end12.thread:                                  ; preds = %if.then3, %if.then
  %PrevPicOrderCntLsb7 = getelementptr inbounds i8, ptr %p_Vid, i64 848956, !dbg !2506
  store i32 0, ptr %PrevPicOrderCntLsb7, align 4, !dbg !2506
  %pic_order_cnt_lsb508 = getelementptr inbounds i8, ptr %pSlice, i64 80, !dbg !2507
  %7 = load i32, ptr %pic_order_cnt_lsb508, align 8, !dbg !2507
  %PrevPicOrderCntLsb13509 = getelementptr inbounds i8, ptr %p_Vid, i64 848956, !dbg !2494
  br label %if.else20, !dbg !2508

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.else8
  %8 = phi i32 [ %.pre507, %if.else.if.end12_crit_edge ], [ %6, %if.else8 ], !dbg !2494
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %pSlice, i64 80, !dbg !2507
  %9 = load i32, ptr %pic_order_cnt_lsb, align 8, !dbg !2507
  %PrevPicOrderCntLsb13 = getelementptr inbounds i8, ptr %p_Vid, i64 848956, !dbg !2494
  %cmp = icmp ult i32 %9, %8, !dbg !2509
  br i1 %cmp, label %land.lhs.true, label %if.else20, !dbg !2508

land.lhs.true:                                    ; preds = %if.end12
  %sub = sub i32 %8, %9, !dbg !2510
  %div494 = lshr i32 %shl, 1, !dbg !2511
  %cmp16.not = icmp ult i32 %sub, %div494, !dbg !2512
  br i1 %cmp16.not, label %if.else20, label %if.then17, !dbg !2513

if.then17:                                        ; preds = %land.lhs.true
  %PrevPicOrderCntMsb18 = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2514
  %10 = load i32, ptr %PrevPicOrderCntMsb18, align 8, !dbg !2514
  %add19 = add i32 %10, %shl, !dbg !2515
  br label %if.end38, !dbg !2516

if.else20:                                        ; preds = %if.end12.thread, %land.lhs.true, %if.end12
  %PrevPicOrderCntLsb13514 = phi ptr [ %PrevPicOrderCntLsb13509, %if.end12.thread ], [ %PrevPicOrderCntLsb13, %land.lhs.true ], [ %PrevPicOrderCntLsb13, %if.end12 ]
  %11 = phi i32 [ %7, %if.end12.thread ], [ %9, %land.lhs.true ], [ %9, %if.end12 ]
  %pic_order_cnt_lsb512 = phi ptr [ %pic_order_cnt_lsb508, %if.end12.thread ], [ %pic_order_cnt_lsb, %land.lhs.true ], [ %pic_order_cnt_lsb, %if.end12 ]
  %12 = phi i32 [ 0, %if.end12.thread ], [ %8, %land.lhs.true ], [ %8, %if.end12 ]
  %cmp23 = icmp ugt i32 %11, %12, !dbg !2517
  br i1 %cmp23, label %land.lhs.true24, label %if.else34, !dbg !2519

land.lhs.true24:                                  ; preds = %if.else20
  %sub27 = sub i32 %11, %12, !dbg !2520
  %div28495 = lshr i32 %shl, 1, !dbg !2521
  %cmp29 = icmp ugt i32 %sub27, %div28495, !dbg !2522
  br i1 %cmp29, label %if.then30, label %if.else34, !dbg !2523

if.then30:                                        ; preds = %land.lhs.true24
  %PrevPicOrderCntMsb31 = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2524
  %13 = load i32, ptr %PrevPicOrderCntMsb31, align 8, !dbg !2524
  %sub32 = sub i32 %13, %shl, !dbg !2525
  br label %if.end38, !dbg !2526

if.else34:                                        ; preds = %land.lhs.true24, %if.else20
  %PrevPicOrderCntMsb35 = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2527
  %14 = load i32, ptr %PrevPicOrderCntMsb35, align 8, !dbg !2527
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.else34, %if.then17
  %sub32.sink = phi i32 [ %sub32, %if.then30 ], [ %14, %if.else34 ], [ %add19, %if.then17 ]
  %PrevPicOrderCntLsb13513 = phi ptr [ %PrevPicOrderCntLsb13514, %if.then30 ], [ %PrevPicOrderCntLsb13514, %if.else34 ], [ %PrevPicOrderCntLsb13, %if.then17 ]
  %15 = phi i32 [ %11, %if.then30 ], [ %11, %if.else34 ], [ %9, %if.then17 ]
  %pic_order_cnt_lsb511 = phi ptr [ %pic_order_cnt_lsb512, %if.then30 ], [ %pic_order_cnt_lsb512, %if.else34 ], [ %pic_order_cnt_lsb, %if.then17 ]
  %PicOrderCntMsb33 = getelementptr inbounds i8, ptr %pSlice, i64 96, !dbg !2528
  store i32 %sub32.sink, ptr %PicOrderCntMsb33, align 8, !dbg !2528
  %field_pic_flag = getelementptr inbounds i8, ptr %pSlice, i64 176, !dbg !2529
  %16 = load i32, ptr %field_pic_flag, align 8, !dbg !2529
  %cmp39 = icmp eq i32 %16, 0, !dbg !2531
  br i1 %cmp39, label %if.then40, label %if.else52, !dbg !2532

if.then40:                                        ; preds = %if.end38
  %add43 = add i32 %sub32.sink, %15, !dbg !2533
  %toppoc44 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2535
  store i32 %add43, ptr %toppoc44, align 4, !dbg !2536
  %delta_pic_order_cnt_bottom = getelementptr inbounds i8, ptr %pSlice, i64 84, !dbg !2537
  %17 = load i32, ptr %delta_pic_order_cnt_bottom, align 4, !dbg !2537
  %add46 = add nsw i32 %17, %add43, !dbg !2538
  %bottompoc = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2539
  store i32 %add46, ptr %bottompoc, align 8, !dbg !2540
  %cmp49 = icmp sgt i32 %17, 0, !dbg !2541
  %add43.add46 = select i1 %cmp49, i32 %add43, i32 %add46, !dbg !2542
  %ThisPOC = getelementptr inbounds i8, ptr %pSlice, i64 104, !dbg !2543
  store i32 %add43.add46, ptr %ThisPOC, align 8, !dbg !2544
  br label %if.end68, !dbg !2545

if.else52:                                        ; preds = %if.end38
  %bottom_field_flag = getelementptr inbounds i8, ptr %pSlice, i64 180, !dbg !2546
  %18 = load i8, ptr %bottom_field_flag, align 4, !dbg !2546
  %cmp53 = icmp eq i8 %18, 0, !dbg !2548
  %add58 = add i32 %sub32.sink, %15, !dbg !2549
  %ThisPOC60 = getelementptr inbounds i8, ptr %pSlice, i64 104, !dbg !2549
  br i1 %cmp53, label %if.then55, label %if.else61, !dbg !2550

if.then55:                                        ; preds = %if.else52
  %toppoc59 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2551
  store i32 %add58, ptr %toppoc59, align 4, !dbg !2553
  store i32 %add58, ptr %ThisPOC60, align 8, !dbg !2554
  br label %if.end68, !dbg !2555

if.else61:                                        ; preds = %if.else52
  %bottompoc65 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2556
  store i32 %add58, ptr %bottompoc65, align 8, !dbg !2558
  store i32 %add58, ptr %ThisPOC60, align 8, !dbg !2559
  br label %if.end68

if.end68:                                         ; preds = %if.then55, %if.else61, %if.then40
  %19 = phi i32 [ %add58, %if.then55 ], [ %add58, %if.else61 ], [ %add43.add46, %if.then40 ], !dbg !2560
  %framepoc70 = getelementptr inbounds i8, ptr %pSlice, i64 76, !dbg !2561
  store i32 %19, ptr %framepoc70, align 4, !dbg !2562
  %ThisPOC72 = getelementptr inbounds i8, ptr %p_Vid, i64 848984, !dbg !2563
  store i32 %19, ptr %ThisPOC72, align 8, !dbg !2564
  %frame_num = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2565
  %20 = load i32, ptr %frame_num, align 4, !dbg !2565
  %PreviousFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848972, !dbg !2567
  %21 = load i32, ptr %PreviousFrameNum, align 4, !dbg !2567
  %cmp73.not = icmp eq i32 %20, %21, !dbg !2568
  br i1 %cmp73.not, label %if.end78, label %if.then75, !dbg !2569

if.then75:                                        ; preds = %if.end68
  store i32 %20, ptr %PreviousFrameNum, align 4, !dbg !2570
  br label %if.end78, !dbg !2571

if.end78:                                         ; preds = %if.then75, %if.end68
  %nal_reference_idc = getelementptr inbounds i8, ptr %pSlice, i64 56, !dbg !2572
  %22 = load i32, ptr %nal_reference_idc, align 8, !dbg !2572
  %tobool79.not = icmp eq i32 %22, 0, !dbg !2574
  br i1 %tobool79.not, label %sw.epilog, label %if.then80, !dbg !2575

if.then80:                                        ; preds = %if.end78
  %23 = load i32, ptr %pic_order_cnt_lsb511, align 8, !dbg !2576
  store i32 %23, ptr %PrevPicOrderCntLsb13513, align 4, !dbg !2578
  %PicOrderCntMsb83 = getelementptr inbounds i8, ptr %pSlice, i64 96, !dbg !2579
  %24 = load i32, ptr %PicOrderCntMsb83, align 8, !dbg !2579
  %PrevPicOrderCntMsb84 = getelementptr inbounds i8, ptr %p_Vid, i64 848952, !dbg !2580
  store i32 %24, ptr %PrevPicOrderCntMsb84, align 8, !dbg !2581
  br label %sw.epilog, !dbg !2582

sw.bb86:                                          ; preds = %entry
  %idr_flag87 = getelementptr inbounds i8, ptr %pSlice, i64 48, !dbg !2583
  %25 = load i32, ptr %idr_flag87, align 8, !dbg !2583
  %tobool88.not = icmp eq i32 %25, 0, !dbg !2585
  br i1 %tobool88.not, label %if.else94, label %if.then89, !dbg !2586

if.then89:                                        ; preds = %sw.bb86
  %FrameNumOffset = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2587
  store i32 0, ptr %FrameNumOffset, align 8, !dbg !2589
  %frame_num90 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2590
  %26 = load i32, ptr %frame_num90, align 4, !dbg !2590
  %tobool91.not = icmp eq i32 %26, 0, !dbg !2592
  br i1 %tobool91.not, label %if.end112, label %if.then92, !dbg !2593

if.then92:                                        ; preds = %if.then89
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10, !dbg !2594
  br label %if.end112, !dbg !2594

if.else94:                                        ; preds = %sw.bb86
  %last_has_mmco_595 = getelementptr inbounds i8, ptr %p_Vid, i64 849028, !dbg !2595
  %27 = load i32, ptr %last_has_mmco_595, align 4, !dbg !2595
  %tobool96.not = icmp eq i32 %27, 0, !dbg !2598
  br i1 %tobool96.not, label %if.end99, label %if.end99.thread, !dbg !2599

if.end99.thread:                                  ; preds = %if.else94
  %PreviousFrameNumOffset = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2600
  store i32 0, ptr %PreviousFrameNumOffset, align 4, !dbg !2602
  %PreviousFrameNum98 = getelementptr inbounds i8, ptr %p_Vid, i64 848972, !dbg !2603
  store i32 0, ptr %PreviousFrameNum98, align 4, !dbg !2604
  br label %if.else108, !dbg !2605

if.end99:                                         ; preds = %if.else94
  %PreviousFrameNum101.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  %.pre506 = load i32, ptr %PreviousFrameNum101.phi.trans.insert, align 4, !dbg !2606
  %frame_num100 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2608
  %28 = load i32, ptr %frame_num100, align 4, !dbg !2608
  %cmp102 = icmp ult i32 %28, %.pre506, !dbg !2609
  br i1 %cmp102, label %if.then104, label %if.else108, !dbg !2605

if.then104:                                       ; preds = %if.end99
  %PreviousFrameNumOffset105 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2610
  %29 = load i32, ptr %PreviousFrameNumOffset105, align 4, !dbg !2610
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992, !dbg !2612
  %30 = load i32, ptr %MaxFrameNum, align 8, !dbg !2612
  %add106 = add nsw i32 %30, %29, !dbg !2613
  %FrameNumOffset107 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2614
  store i32 %add106, ptr %FrameNumOffset107, align 8, !dbg !2615
  br label %if.end112, !dbg !2616

if.else108:                                       ; preds = %if.end99.thread, %if.end99
  %PreviousFrameNumOffset109 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2617
  %31 = load i32, ptr %PreviousFrameNumOffset109, align 4, !dbg !2617
  %FrameNumOffset110 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2619
  store i32 %31, ptr %FrameNumOffset110, align 8, !dbg !2620
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %if.else108, %if.then89, %if.then92
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %0, i64 2092, !dbg !2621
  %32 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2621
  %tobool113.not = icmp eq i32 %32, 0, !dbg !2623
  br i1 %tobool113.not, label %if.end120.thread, label %if.end120, !dbg !2624

if.end120:                                        ; preds = %if.end112
  %FrameNumOffset115 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2625
  %33 = load i32, ptr %FrameNumOffset115, align 8, !dbg !2625
  %frame_num116 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2626
  %34 = load i32, ptr %frame_num116, align 4, !dbg !2626
  %add117 = add i32 %34, %33, !dbg !2627
  %35 = getelementptr inbounds i8, ptr %pSlice, i64 100, !dbg !2628
  store i32 %add117, ptr %35, align 4, !dbg !2628
  %nal_reference_idc121 = getelementptr inbounds i8, ptr %pSlice, i64 56, !dbg !2629
  %36 = load i32, ptr %nal_reference_idc121, align 8, !dbg !2629
  %tobool122.not = icmp ne i32 %36, 0, !dbg !2631
  %cmp125.not = icmp eq i32 %add117, 0
  %or.cond = select i1 %tobool122.not, i1 true, i1 %cmp125.not, !dbg !2632
  br i1 %or.cond, label %if.end129, label %if.then127, !dbg !2632

if.end120.thread:                                 ; preds = %if.end112
  %37 = getelementptr inbounds i8, ptr %pSlice, i64 100, !dbg !2628
  store i32 0, ptr %37, align 4, !dbg !2628
  %nal_reference_idc121517 = getelementptr inbounds i8, ptr %pSlice, i64 56, !dbg !2629
  br label %if.end129, !dbg !2632

if.then127:                                       ; preds = %if.end120
  %dec = add i32 %add117, -1, !dbg !2633
  store i32 %dec, ptr %35, align 4, !dbg !2633
  br label %if.end129, !dbg !2634

if.end129:                                        ; preds = %if.end120.thread, %if.then127, %if.end120
  %nal_reference_idc121519 = phi ptr [ %nal_reference_idc121, %if.then127 ], [ %nal_reference_idc121, %if.end120 ], [ %nal_reference_idc121517, %if.end120.thread ]
  %38 = phi ptr [ %35, %if.then127 ], [ %35, %if.end120 ], [ %37, %if.end120.thread ]
  %ExpectedDeltaPerPicOrderCntCycle = getelementptr inbounds i8, ptr %p_Vid, i64 848980, !dbg !2635
  store i32 0, ptr %ExpectedDeltaPerPicOrderCntCycle, align 4, !dbg !2636
  %39 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2637
  %tobool131.not = icmp eq i32 %39, 0, !dbg !2639
  br i1 %tobool131.not, label %if.end138, label %for.cond.preheader, !dbg !2640

for.cond.preheader:                               ; preds = %if.end129
    #dbg_value(i32 0, !2471, !DIExpression(), !2473)
  %cmp134496 = icmp sgt i32 %39, 0, !dbg !2641
  br i1 %cmp134496, label %for.body.lr.ph, label %if.end138, !dbg !2644

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %0, i64 2096
  br label %for.body, !dbg !2644

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %40 = phi i32 [ 0, %for.body.lr.ph ], [ %add137, %for.body ], !dbg !2645
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !2471, !DIExpression(), !2473)
  %arrayidx = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv, !dbg !2646
  %41 = load i32, ptr %arrayidx, align 4, !dbg !2646
  %add137 = add nsw i32 %40, %41, !dbg !2645
  store i32 %add137, ptr %ExpectedDeltaPerPicOrderCntCycle, align 4, !dbg !2645
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2647
    #dbg_value(i64 %indvars.iv.next, !2471, !DIExpression(), !2473)
  %42 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2648
  %43 = sext i32 %42 to i64, !dbg !2641
  %cmp134 = icmp slt i64 %indvars.iv.next, %43, !dbg !2641
  br i1 %cmp134, label %for.body, label %if.end138, !dbg !2644, !llvm.loop !2649

if.end138:                                        ; preds = %for.body, %for.cond.preheader, %if.end129
  %44 = phi i32 [ 0, %for.cond.preheader ], [ 0, %if.end129 ], [ %add137, %for.body ]
  %45 = phi i32 [ %39, %for.cond.preheader ], [ 0, %if.end129 ], [ %42, %for.body ]
  %46 = load i32, ptr %38, align 4, !dbg !2651
  %tobool140.not = icmp eq i32 %46, 0, !dbg !2653
  br i1 %tobool140.not, label %if.else164, label %if.then141, !dbg !2654

if.then141:                                       ; preds = %if.end138
  %sub143 = add i32 %46, -1, !dbg !2655
  %div145 = udiv i32 %sub143, %45, !dbg !2657
  %PicOrderCntCycleCnt = getelementptr inbounds i8, ptr %p_Vid, i64 848964, !dbg !2658
  store i32 %div145, ptr %PicOrderCntCycleCnt, align 4, !dbg !2659
  %47 = load i32, ptr %38, align 4, !dbg !2660
  %sub147 = add i32 %47, -1, !dbg !2661
  %48 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2662
  %rem = urem i32 %sub147, %48, !dbg !2663
  %FrameNumInPicOrderCntCycle = getelementptr inbounds i8, ptr %p_Vid, i64 848968, !dbg !2664
  store i32 %rem, ptr %FrameNumInPicOrderCntCycle, align 8, !dbg !2665
  %mul = mul nsw i32 %44, %div145, !dbg !2666
  %ExpectedPicOrderCnt = getelementptr inbounds i8, ptr %p_Vid, i64 848960, !dbg !2667
  store i32 %mul, ptr %ExpectedPicOrderCnt, align 8, !dbg !2668
    #dbg_value(i32 0, !2471, !DIExpression(), !2473)
  %cmp153.not498 = icmp slt i32 %rem, 0, !dbg !2669
  br i1 %cmp153.not498, label %if.end166, label %for.body155.lr.ph, !dbg !2672

for.body155.lr.ph:                                ; preds = %if.then141
  %offset_for_ref_frame156 = getelementptr inbounds i8, ptr %0, i64 2096
  %49 = zext nneg i32 %rem to i64, !dbg !2672
  %50 = add nuw nsw i64 %49, 1, !dbg !2672
  %min.iters.check = icmp ult i32 %rem, 15, !dbg !2672
  br i1 %min.iters.check, label %for.body155.preheader, label %vector.memcheck, !dbg !2672

vector.memcheck:                                  ; preds = %for.body155.lr.ph
  %scevgep = getelementptr i8, ptr %p_Vid, i64 848964, !dbg !2672
  %51 = shl nuw nsw i64 %49, 2, !dbg !2672
  %52 = getelementptr i8, ptr %0, i64 %51, !dbg !2672
  %scevgep527 = getelementptr i8, ptr %52, i64 2100, !dbg !2672
  %bound0 = icmp ult ptr %ExpectedPicOrderCnt, %scevgep527, !dbg !2672
  %bound1 = icmp ult ptr %offset_for_ref_frame156, %scevgep, !dbg !2672
  %found.conflict = and i1 %bound0, %bound1, !dbg !2672
  br i1 %found.conflict, label %for.body155.preheader, label %vector.ph, !dbg !2672

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %50, 4294967280, !dbg !2672
  %53 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul, i64 0, !dbg !2672
  br label %vector.body, !dbg !2672

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2673
  %vec.phi = phi <4 x i32> [ %53, %vector.ph ], [ %58, %vector.body ]
  %vec.phi528 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %59, %vector.body ]
  %vec.phi529 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %60, %vector.body ]
  %vec.phi530 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %61, %vector.body ]
  %54 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame156, i64 0, i64 %index, !dbg !2673
  %55 = getelementptr inbounds i8, ptr %54, i64 16, !dbg !2673
  %56 = getelementptr inbounds i8, ptr %54, i64 32, !dbg !2673
  %57 = getelementptr inbounds i8, ptr %54, i64 48, !dbg !2673
  %wide.load = load <4 x i32>, ptr %54, align 4, !dbg !2673, !alias.scope !2674
  %wide.load531 = load <4 x i32>, ptr %55, align 4, !dbg !2673, !alias.scope !2674
  %wide.load532 = load <4 x i32>, ptr %56, align 4, !dbg !2673, !alias.scope !2674
  %wide.load533 = load <4 x i32>, ptr %57, align 4, !dbg !2673, !alias.scope !2674
  %58 = add <4 x i32> %vec.phi, %wide.load, !dbg !2677
  %59 = add <4 x i32> %vec.phi528, %wide.load531, !dbg !2677
  %60 = add <4 x i32> %vec.phi529, %wide.load532, !dbg !2677
  %61 = add <4 x i32> %vec.phi530, %wide.load533, !dbg !2677
  %index.next = add nuw i64 %index, 16, !dbg !2673
  %62 = icmp eq i64 %index.next, %n.vec, !dbg !2673
  br i1 %62, label %middle.block, label %vector.body, !dbg !2673, !llvm.loop !2678

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %59, %58, !dbg !2672
  %bin.rdx534 = add <4 x i32> %60, %bin.rdx, !dbg !2672
  %bin.rdx535 = add <4 x i32> %61, %bin.rdx534, !dbg !2672
  %63 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx535), !dbg !2672
  store i32 %63, ptr %ExpectedPicOrderCnt, align 8, !dbg !2672
  %cmp.n = icmp eq i64 %50, %n.vec, !dbg !2672
  br i1 %cmp.n, label %if.end166, label %for.body155.preheader, !dbg !2672

for.body155.preheader:                            ; preds = %middle.block, %vector.memcheck, %for.body155.lr.ph
  %indvars.iv502.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body155.lr.ph ], [ %n.vec, %middle.block ]
  %add160500.ph = phi i32 [ %mul, %vector.memcheck ], [ %mul, %for.body155.lr.ph ], [ %63, %middle.block ]
  br label %for.body155, !dbg !2672

for.body155:                                      ; preds = %for.body155.preheader, %for.body155
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %for.body155 ], [ %indvars.iv502.ph, %for.body155.preheader ], !dbg !2673
  %add160500 = phi i32 [ %add160, %for.body155 ], [ %add160500.ph, %for.body155.preheader ], !dbg !2673
    #dbg_value(i64 %indvars.iv502, !2471, !DIExpression(), !2473)
  %arrayidx158 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame156, i64 0, i64 %indvars.iv502, !dbg !2673
  %64 = load i32, ptr %arrayidx158, align 4, !dbg !2673
  %add160 = add nsw i32 %add160500, %64, !dbg !2677
  store i32 %add160, ptr %ExpectedPicOrderCnt, align 8, !dbg !2677
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1, !dbg !2682
    #dbg_value(i64 %indvars.iv.next503, !2471, !DIExpression(), !2473)
  %cmp153.not.not = icmp ult i64 %indvars.iv502, %49, !dbg !2669
  br i1 %cmp153.not.not, label %for.body155, label %if.end166, !dbg !2672, !llvm.loop !2683

if.else164:                                       ; preds = %if.end138
  %ExpectedPicOrderCnt165 = getelementptr inbounds i8, ptr %p_Vid, i64 848960, !dbg !2684
  store i32 0, ptr %ExpectedPicOrderCnt165, align 8, !dbg !2685
  br label %if.end166

if.end166:                                        ; preds = %for.body155, %middle.block, %if.then141, %if.else164
  %65 = phi i32 [ %mul, %if.then141 ], [ 0, %if.else164 ], [ %63, %middle.block ], [ %add160, %for.body155 ]
  %66 = load i32, ptr %nal_reference_idc121519, align 8, !dbg !2686
  %tobool168.not = icmp eq i32 %66, 0, !dbg !2688
  br i1 %tobool168.not, label %if.then169, label %if.end172, !dbg !2689

if.then169:                                       ; preds = %if.end166
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %0, i64 2084, !dbg !2690
  %67 = load i32, ptr %offset_for_non_ref_pic, align 4, !dbg !2690
  %ExpectedPicOrderCnt170 = getelementptr inbounds i8, ptr %p_Vid, i64 848960, !dbg !2691
  %add171 = add nsw i32 %65, %67, !dbg !2692
  store i32 %add171, ptr %ExpectedPicOrderCnt170, align 8, !dbg !2692
  br label %if.end172, !dbg !2693

if.end172:                                        ; preds = %if.then169, %if.end166
  %68 = phi i32 [ %add171, %if.then169 ], [ %65, %if.end166 ]
  %field_pic_flag173 = getelementptr inbounds i8, ptr %pSlice, i64 176, !dbg !2694
  %69 = load i32, ptr %field_pic_flag173, align 8, !dbg !2694
  %cmp174 = icmp eq i32 %69, 0, !dbg !2696
  br i1 %cmp174, label %if.then176, label %if.else199, !dbg !2697

if.then176:                                       ; preds = %if.end172
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %pSlice, i64 88, !dbg !2698
  %70 = load i32, ptr %delta_pic_order_cnt, align 8, !dbg !2700
  %add179 = add nsw i32 %70, %68, !dbg !2701
  %toppoc180 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2702
  store i32 %add179, ptr %toppoc180, align 4, !dbg !2703
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %0, i64 2088, !dbg !2704
  %71 = load i32, ptr %offset_for_top_to_bottom_field, align 4, !dbg !2704
  %add182 = add nsw i32 %71, %add179, !dbg !2705
  %arrayidx184 = getelementptr inbounds i8, ptr %pSlice, i64 92, !dbg !2706
  %72 = load i32, ptr %arrayidx184, align 4, !dbg !2706
  %add185 = add nsw i32 %add182, %72, !dbg !2707
  %bottompoc186 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2708
  store i32 %add185, ptr %bottompoc186, align 8, !dbg !2709
  %.add185 = tail call i32 @llvm.smin.i32(i32 %add179, i32 %add185), !dbg !2710
  br label %if.end221, !dbg !2711

if.else199:                                       ; preds = %if.end172
  %bottom_field_flag200 = getelementptr inbounds i8, ptr %pSlice, i64 180, !dbg !2712
  %73 = load i8, ptr %bottom_field_flag200, align 4, !dbg !2712
  %cmp202 = icmp eq i8 %73, 0, !dbg !2714
  br i1 %cmp202, label %if.then204, label %if.else211, !dbg !2715

if.then204:                                       ; preds = %if.else199
  %delta_pic_order_cnt206 = getelementptr inbounds i8, ptr %pSlice, i64 88, !dbg !2716
  %74 = load i32, ptr %delta_pic_order_cnt206, align 8, !dbg !2718
  %add208 = add nsw i32 %74, %68, !dbg !2719
  %toppoc209 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2720
  store i32 %add208, ptr %toppoc209, align 4, !dbg !2721
  br label %if.end221, !dbg !2722

if.else211:                                       ; preds = %if.else199
  %offset_for_top_to_bottom_field213 = getelementptr inbounds i8, ptr %0, i64 2088, !dbg !2723
  %75 = load i32, ptr %offset_for_top_to_bottom_field213, align 4, !dbg !2723
  %add214 = add nsw i32 %75, %68, !dbg !2725
  %delta_pic_order_cnt215 = getelementptr inbounds i8, ptr %pSlice, i64 88, !dbg !2726
  %76 = load i32, ptr %delta_pic_order_cnt215, align 8, !dbg !2727
  %add217 = add nsw i32 %add214, %76, !dbg !2728
  %bottompoc218 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2729
  store i32 %add217, ptr %bottompoc218, align 8, !dbg !2730
  br label %if.end221

if.end221:                                        ; preds = %if.then204, %if.else211, %if.then176
  %add208.sink = phi i32 [ %add208, %if.then204 ], [ %add217, %if.else211 ], [ %.add185, %if.then176 ]
  %ThisPOC210 = getelementptr inbounds i8, ptr %pSlice, i64 104, !dbg !2731
  store i32 %add208.sink, ptr %ThisPOC210, align 8, !dbg !2731
  %framepoc223 = getelementptr inbounds i8, ptr %pSlice, i64 76, !dbg !2732
  store i32 %add208.sink, ptr %framepoc223, align 4, !dbg !2733
  %frame_num224 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2734
  %77 = load i32, ptr %frame_num224, align 4, !dbg !2734
  %PreviousFrameNum225 = getelementptr inbounds i8, ptr %p_Vid, i64 848972, !dbg !2735
  store i32 %77, ptr %PreviousFrameNum225, align 4, !dbg !2736
  %FrameNumOffset226 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2737
  %78 = load i32, ptr %FrameNumOffset226, align 8, !dbg !2737
  %PreviousFrameNumOffset227 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2738
  store i32 %78, ptr %PreviousFrameNumOffset227, align 4, !dbg !2739
  br label %sw.epilog, !dbg !2740

sw.bb228:                                         ; preds = %entry
  %idr_flag229 = getelementptr inbounds i8, ptr %pSlice, i64 48, !dbg !2741
  %79 = load i32, ptr %idr_flag229, align 8, !dbg !2741
  %tobool230.not = icmp eq i32 %79, 0, !dbg !2743
  br i1 %tobool230.not, label %if.else241, label %if.then231, !dbg !2744

if.then231:                                       ; preds = %sw.bb228
  %FrameNumOffset232 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2745
  store i32 0, ptr %FrameNumOffset232, align 8, !dbg !2747
  %bottompoc233 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2748
  store i32 0, ptr %bottompoc233, align 8, !dbg !2749
  %toppoc234 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2750
  store i32 0, ptr %toppoc234, align 4, !dbg !2751
  %framepoc235 = getelementptr inbounds i8, ptr %pSlice, i64 76, !dbg !2752
  store i32 0, ptr %framepoc235, align 4, !dbg !2753
  %ThisPOC236 = getelementptr inbounds i8, ptr %pSlice, i64 104, !dbg !2754
  store i32 0, ptr %ThisPOC236, align 8, !dbg !2755
  %frame_num237 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2756
  %80 = load i32, ptr %frame_num237, align 4, !dbg !2756
  %tobool238.not = icmp eq i32 %80, 0, !dbg !2758
  br i1 %tobool238.not, label %if.end300, label %if.then239, !dbg !2759

if.then239:                                       ; preds = %if.then231
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10, !dbg !2760
  %.pre505 = load i32, ptr %frame_num237, align 4, !dbg !2761
  br label %if.end300, !dbg !2760

if.else241:                                       ; preds = %sw.bb228
  %last_has_mmco_5242 = getelementptr inbounds i8, ptr %p_Vid, i64 849028, !dbg !2762
  %81 = load i32, ptr %last_has_mmco_5242, align 4, !dbg !2762
  %tobool243.not = icmp eq i32 %81, 0, !dbg !2765
  %PreviousFrameNum249.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 848972
  br i1 %tobool243.not, label %if.end247, label %if.end247.thread, !dbg !2766

if.end247.thread:                                 ; preds = %if.else241
  store i32 0, ptr %PreviousFrameNum249.phi.trans.insert, align 4, !dbg !2767
  %PreviousFrameNumOffset246 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2769
  store i32 0, ptr %PreviousFrameNumOffset246, align 4, !dbg !2770
  %frame_num248523 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2771
  br label %if.else257, !dbg !2773

if.end247:                                        ; preds = %if.else241
  %.pre = load i32, ptr %PreviousFrameNum249.phi.trans.insert, align 4, !dbg !2774
  %frame_num248 = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !2771
  %82 = load i32, ptr %frame_num248, align 4, !dbg !2771
  %cmp250 = icmp ult i32 %82, %.pre, !dbg !2775
  br i1 %cmp250, label %if.then252, label %if.else257, !dbg !2773

if.then252:                                       ; preds = %if.end247
  %PreviousFrameNumOffset253 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2776
  %83 = load i32, ptr %PreviousFrameNumOffset253, align 4, !dbg !2776
  %MaxFrameNum254 = getelementptr inbounds i8, ptr %p_Vid, i64 848992, !dbg !2777
  %84 = load i32, ptr %MaxFrameNum254, align 8, !dbg !2777
  %add255 = add nsw i32 %84, %83, !dbg !2778
  br label %if.end260, !dbg !2779

if.else257:                                       ; preds = %if.end247.thread, %if.end247
  %frame_num248526 = phi ptr [ %frame_num248523, %if.end247.thread ], [ %frame_num248, %if.end247 ]
  %PreviousFrameNumOffset258 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2780
  %85 = load i32, ptr %PreviousFrameNumOffset258, align 4, !dbg !2780
  br label %if.end260

if.end260:                                        ; preds = %if.else257, %if.then252
  %frame_num248525 = phi ptr [ %frame_num248, %if.then252 ], [ %frame_num248526, %if.else257 ]
  %.sink = phi i32 [ %add255, %if.then252 ], [ %85, %if.else257 ], !dbg !2781
  %86 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2781
  store i32 %.sink, ptr %86, align 8, !dbg !2781
  %87 = load i32, ptr %frame_num248525, align 4, !dbg !2782
  %add263 = add i32 %87, %.sink, !dbg !2783
  %AbsFrameNum264 = getelementptr inbounds i8, ptr %pSlice, i64 100, !dbg !2784
  store i32 %add263, ptr %AbsFrameNum264, align 4, !dbg !2785
  %nal_reference_idc265 = getelementptr inbounds i8, ptr %pSlice, i64 56, !dbg !2786
  %88 = load i32, ptr %nal_reference_idc265, align 8, !dbg !2786
  %tobool266.not = icmp eq i32 %88, 0, !dbg !2788
  %mul269 = shl i32 %add263, 1, !dbg !2789
  %sub270 = sext i1 %tobool266.not to i32, !dbg !2790
  %89 = add i32 %mul269, %sub270, !dbg !2790
  %90 = getelementptr inbounds i8, ptr %pSlice, i64 104, !dbg !2789
  store i32 %89, ptr %90, align 8, !dbg !2789
  %field_pic_flag277 = getelementptr inbounds i8, ptr %pSlice, i64 176, !dbg !2791
  %91 = load i32, ptr %field_pic_flag277, align 8, !dbg !2791
  %cmp278 = icmp eq i32 %91, 0, !dbg !2793
  br i1 %cmp278, label %if.then280, label %if.else285, !dbg !2794

if.then280:                                       ; preds = %if.end260
  %framepoc282 = getelementptr inbounds i8, ptr %pSlice, i64 76, !dbg !2795
  store i32 %89, ptr %framepoc282, align 4, !dbg !2796
  %bottompoc283 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2797
  store i32 %89, ptr %bottompoc283, align 8, !dbg !2798
  %toppoc284 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2799
  store i32 %89, ptr %toppoc284, align 4, !dbg !2800
  br label %if.end300, !dbg !2801

if.else285:                                       ; preds = %if.end260
  %bottom_field_flag286 = getelementptr inbounds i8, ptr %pSlice, i64 180, !dbg !2802
  %92 = load i8, ptr %bottom_field_flag286, align 4, !dbg !2802
  %cmp288 = icmp eq i8 %92, 0, !dbg !2804
  %framepoc292 = getelementptr inbounds i8, ptr %pSlice, i64 76, !dbg !2805
  store i32 %89, ptr %framepoc292, align 4, !dbg !2805
  br i1 %cmp288, label %if.then290, label %if.else294, !dbg !2806

if.then290:                                       ; preds = %if.else285
  %toppoc293 = getelementptr inbounds i8, ptr %pSlice, i64 68, !dbg !2807
  store i32 %89, ptr %toppoc293, align 4, !dbg !2808
  br label %if.end300, !dbg !2809

if.else294:                                       ; preds = %if.else285
  %bottompoc297 = getelementptr inbounds i8, ptr %pSlice, i64 72, !dbg !2810
  store i32 %89, ptr %bottompoc297, align 8, !dbg !2811
  br label %if.end300

if.end300:                                        ; preds = %if.then280, %if.else294, %if.then290, %if.then231, %if.then239
  %93 = phi i32 [ %87, %if.then280 ], [ %87, %if.else294 ], [ %87, %if.then290 ], [ 0, %if.then231 ], [ %.pre505, %if.then239 ], !dbg !2761
  %PreviousFrameNum302 = getelementptr inbounds i8, ptr %p_Vid, i64 848972, !dbg !2812
  store i32 %93, ptr %PreviousFrameNum302, align 4, !dbg !2813
  %FrameNumOffset303 = getelementptr inbounds i8, ptr %p_Vid, i64 848976, !dbg !2814
  %94 = load i32, ptr %FrameNumOffset303, align 8, !dbg !2814
  %PreviousFrameNumOffset304 = getelementptr inbounds i8, ptr %p_Vid, i64 848988, !dbg !2815
  store i32 %94, ptr %PreviousFrameNumOffset304, align 4, !dbg !2816
  br label %sw.epilog, !dbg !2817

sw.epilog:                                        ; preds = %entry, %if.end78, %if.then80, %if.end300, %if.end221
  ret void, !dbg !2818
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dumppoc(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #5 !dbg !2819 {
entry:
    #dbg_value(ptr %p_Vid, !2823, !DIExpression(), !2825)
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2826
  %0 = load ptr, ptr %active_sps1, align 8, !dbg !2826
    #dbg_value(ptr %0, !2824, !DIExpression(), !2825)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !2827
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736, !dbg !2828
  %1 = load ptr, ptr %ppSliceList, align 8, !dbg !2828
  %2 = load ptr, ptr %1, align 8, !dbg !2829
  %toppoc = getelementptr inbounds i8, ptr %2, i64 68, !dbg !2830
  %3 = load i32, ptr %toppoc, align 4, !dbg !2830
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %3), !dbg !2831
  %4 = load ptr, ptr %ppSliceList, align 8, !dbg !2832
  %5 = load ptr, ptr %4, align 8, !dbg !2833
  %bottompoc = getelementptr inbounds i8, ptr %5, i64 72, !dbg !2834
  %6 = load i32, ptr %bottompoc, align 8, !dbg !2834
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %6), !dbg !2835
  %7 = load ptr, ptr %ppSliceList, align 8, !dbg !2836
  %8 = load ptr, ptr %7, align 8, !dbg !2837
  %frame_num = getelementptr inbounds i8, ptr %8, i64 172, !dbg !2838
  %9 = load i32, ptr %frame_num, align 4, !dbg !2838
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %9), !dbg !2839
  %10 = load ptr, ptr %ppSliceList, align 8, !dbg !2840
  %11 = load ptr, ptr %10, align 8, !dbg !2841
  %field_pic_flag = getelementptr inbounds i8, ptr %11, i64 176, !dbg !2842
  %12 = load i32, ptr %field_pic_flag, align 8, !dbg !2842
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %12), !dbg !2843
  %13 = load ptr, ptr %ppSliceList, align 8, !dbg !2844
  %14 = load ptr, ptr %13, align 8, !dbg !2845
  %bottom_field_flag = getelementptr inbounds i8, ptr %14, i64 180, !dbg !2846
  %15 = load i8, ptr %bottom_field_flag, align 4, !dbg !2846
  %conv = zext i8 %15 to i32, !dbg !2847
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %conv), !dbg !2848
  %puts61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85), !dbg !2849
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %0, i64 2068, !dbg !2850
  %16 = load i32, ptr %log2_max_frame_num_minus4, align 4, !dbg !2850
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %16), !dbg !2851
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %0, i64 2076, !dbg !2852
  %17 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !2852
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %17), !dbg !2853
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %0, i64 2072, !dbg !2854
  %18 = load i32, ptr %pic_order_cnt_type, align 4, !dbg !2854
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %18), !dbg !2855
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds i8, ptr %0, i64 2092, !dbg !2856
  %19 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !2856
  %call19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %19), !dbg !2857
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %0, i64 2080, !dbg !2858
  %20 = load i32, ptr %delta_pic_order_always_zero_flag, align 4, !dbg !2858
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %20), !dbg !2859
  %offset_for_non_ref_pic = getelementptr inbounds i8, ptr %0, i64 2084, !dbg !2860
  %21 = load i32, ptr %offset_for_non_ref_pic, align 4, !dbg !2860
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %21), !dbg !2861
  %offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %0, i64 2088, !dbg !2862
  %22 = load i32, ptr %offset_for_top_to_bottom_field, align 4, !dbg !2862
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %22), !dbg !2863
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %0, i64 2096, !dbg !2864
  %23 = load i32, ptr %offset_for_ref_frame, align 4, !dbg !2865
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %23), !dbg !2866
  %arrayidx26 = getelementptr inbounds i8, ptr %0, i64 2100, !dbg !2867
  %24 = load i32, ptr %arrayidx26, align 4, !dbg !2867
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %24), !dbg !2868
  %puts62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86), !dbg !2869
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8, !dbg !2870
  %25 = load ptr, ptr %active_pps, align 8, !dbg !2870
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %25, i64 2040, !dbg !2871
  %26 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag, align 8, !dbg !2871
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %26), !dbg !2872
  %27 = load ptr, ptr %ppSliceList, align 8, !dbg !2873
  %28 = load ptr, ptr %27, align 8, !dbg !2874
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %28, i64 88, !dbg !2875
  %29 = load i32, ptr %delta_pic_order_cnt, align 8, !dbg !2874
  %call33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %29), !dbg !2876
  %30 = load ptr, ptr %ppSliceList, align 8, !dbg !2877
  %31 = load ptr, ptr %30, align 8, !dbg !2878
  %arrayidx37 = getelementptr inbounds i8, ptr %31, i64 92, !dbg !2878
  %32 = load i32, ptr %arrayidx37, align 4, !dbg !2878
  %call38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %32), !dbg !2879
  %33 = load ptr, ptr %ppSliceList, align 8, !dbg !2880
  %34 = load ptr, ptr %33, align 8, !dbg !2881
  %idr_flag = getelementptr inbounds i8, ptr %34, i64 48, !dbg !2882
  %35 = load i32, ptr %idr_flag, align 8, !dbg !2882
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %35), !dbg !2883
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992, !dbg !2884
  %36 = load i32, ptr %MaxFrameNum, align 8, !dbg !2884
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %36), !dbg !2885
  ret i32 0, !dbg !2886
}

; Function Attrs: nofree nounwind
declare !dbg !2887 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @picture_order(ptr nocapture noundef readonly %pSlice) local_unnamed_addr #7 !dbg !2894 {
entry:
    #dbg_value(ptr %pSlice, !2896, !DIExpression(), !2897)
  %field_pic_flag = getelementptr inbounds i8, ptr %pSlice, i64 176, !dbg !2898
  %0 = load i32, ptr %field_pic_flag, align 8, !dbg !2898
  %cmp = icmp eq i32 %0, 0, !dbg !2900
  br i1 %cmp, label %return, label %if.else, !dbg !2901

if.else:                                          ; preds = %entry
  %bottom_field_flag = getelementptr inbounds i8, ptr %pSlice, i64 180, !dbg !2902
  %1 = load i8, ptr %bottom_field_flag, align 4, !dbg !2902
  %cmp1 = icmp eq i8 %1, 0, !dbg !2904
  %. = select i1 %cmp1, i64 68, i64 72, !dbg !2905
  br label %return, !dbg !2905

return:                                           ; preds = %if.else, %entry
  %.sink = phi i64 [ 76, %entry ], [ %., %if.else ]
  %bottompoc = getelementptr inbounds i8, ptr %pSlice, i64 %.sink, !dbg !2906
  %retval.0 = load i32, ptr %bottompoc, align 4, !dbg !2906
  ret i32 %retval.0, !dbg !2907
}

declare !dbg !2908 void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!238}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/header.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "307e15d1aeb079f1b915bdf68cf8dbe9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 25)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 20)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 14)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 19)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !3, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !9, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !3, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 31)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 27)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !45, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !3, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 32)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 30)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 33)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !64, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !29, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !29, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 45)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 23)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !29, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !75, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 34)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !40, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !45, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 336, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 29)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 654, type: !64, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !98, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 660, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 36)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 40)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 673, type: !89, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !3, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 24)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !54, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 43)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 927, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 42)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 928, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 929, type: !133, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 930, type: !133, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 931, type: !133, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 933, type: !133, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 934, type: !133, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 935, type: !133, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 936, type: !133, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 937, type: !133, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 938, type: !133, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 939, type: !133, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 940, type: !133, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 941, type: !133, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 943, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 64)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 944, type: !133, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 945, type: !133, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 946, type: !133, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 947, type: !133, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !107, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !89, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !40, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !14, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !107, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !89, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !40, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !14, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 38)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !107, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !54, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !107, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !54, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 542, type: !45, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !98, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !121, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !29, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !29, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 26)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 21)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 578, type: !221, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !121, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !29, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !29, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !216, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !221, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !221, isLocal: true, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !307, globals: !328, splitDebugInlining: false, nameTableKind: None)
!239 = !{!240, !249, !255, !264, !274, !279, !287, !294}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 22, baseType: !242, size: 32, elements: !243)
!241 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!242 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!245 = !DIEnumerator(name: "YUV400", value: 0)
!246 = !DIEnumerator(name: "YUV420", value: 1)
!247 = !DIEnumerator(name: "YUV422", value: 2)
!248 = !DIEnumerator(name: "YUV444", value: 3)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 15, baseType: !242, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254}
!251 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!252 = !DIEnumerator(name: "CM_YUV", value: 0)
!253 = !DIEnumerator(name: "CM_RGB", value: 1)
!254 = !DIEnumerator(name: "CM_XYZ", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !256, line: 25, baseType: !242, size: 32, elements: !257)
!256 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!257 = !{!258, !259, !260, !261, !262, !263}
!258 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!259 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!260 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!261 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!262 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!263 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 22, baseType: !266, size: 32, elements: !267)
!265 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!266 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!267 = !{!268, !269, !270, !271, !272, !273}
!268 = !DIEnumerator(name: "PLANE_Y", value: 0)
!269 = !DIEnumerator(name: "PLANE_U", value: 1)
!270 = !DIEnumerator(name: "PLANE_V", value: 2)
!271 = !DIEnumerator(name: "PLANE_G", value: 0)
!272 = !DIEnumerator(name: "PLANE_B", value: 1)
!273 = !DIEnumerator(name: "PLANE_R", value: 2)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 135, baseType: !266, size: 32, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIEnumerator(name: "FRAME", value: 0)
!277 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!278 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 142, baseType: !266, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIEnumerator(name: "P_SLICE", value: 0)
!282 = !DIEnumerator(name: "B_SLICE", value: 1)
!283 = !DIEnumerator(name: "I_SLICE", value: 2)
!284 = !DIEnumerator(name: "SP_SLICE", value: 3)
!285 = !DIEnumerator(name: "SI_SLICE", value: 4)
!286 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 34, baseType: !266, size: 32, elements: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIEnumerator(name: "LIST_0", value: 0)
!290 = !DIEnumerator(name: "LIST_1", value: 1)
!291 = !DIEnumerator(name: "BI_PRED", value: 2)
!292 = !DIEnumerator(name: "BI_PRED_L0", value: 3)
!293 = !DIEnumerator(name: "BI_PRED_L1", value: 4)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 74, baseType: !266, size: 32, elements: !296)
!295 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!297 = !DIEnumerator(name: "FREXT_CAVLC444", value: 44)
!298 = !DIEnumerator(name: "BASELINE", value: 66)
!299 = !DIEnumerator(name: "MAIN", value: 77)
!300 = !DIEnumerator(name: "EXTENDED", value: 88)
!301 = !DIEnumerator(name: "FREXT_HP", value: 100)
!302 = !DIEnumerator(name: "FREXT_Hi10P", value: 110)
!303 = !DIEnumerator(name: "FREXT_Hi422", value: 122)
!304 = !DIEnumerator(name: "FREXT_Hi444", value: 244)
!305 = !DIEnumerator(name: "MVC_HIGH", value: 118)
!306 = !DIEnumerator(name: "STEREO_HIGH", value: 128)
!307 = !{!308, !309, !312, !313, !314, !315, !327, !242}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "SliceType", file: !265, line: 150, baseType: !279)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !310, line: 21, baseType: !311)
!310 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!311 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !265, line: 140, baseType: !274)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !317, line: 194, baseType: !318)
!317 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !317, line: 186, size: 256, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !318, file: !317, line: 188, baseType: !242, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !318, file: !317, line: 189, baseType: !242, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !318, file: !317, line: 190, baseType: !242, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !318, file: !317, line: 191, baseType: !242, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !318, file: !317, line: 192, baseType: !242, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !318, file: !317, line: 193, baseType: !326, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!328 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !38, !43, !48, !50, !52, !57, !62, !67, !69, !71, !73, !78, !83, !85, !87, !92, !94, !96, !101, !103, !105, !110, !115, !117, !119, !124, !126, !329, !131, !136, !138, !140, !142, !334, !144, !146, !148, !150, !152, !154, !156, !158, !160, !339, !162, !167, !169, !171, !173, !341, !175, !177, !179, !181, !183, !185, !187, !189, !191, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !219, !224, !226, !228, !230, !232, !234, !236}
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 926, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 16)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 932, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 9)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 942, type: !221, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "assignSE2partition", scope: !238, file: !343, line: 103, type: !344, isLocal: true, isDefinition: true)
!343 = !DIFile(filename: "ldecod_src/inc/elements.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "655df3b60bdcd53a79db33d4ea16f27b")
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 320, elements: !346)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!346 = !{!347, !21}
!347 = !DISubrange(count: 2)
!348 = !{i32 7, !"Dwarf Version", i32 5}
!349 = !{i32 2, !"Debug Info Version", i32 3}
!350 = !{i32 1, !"wchar_size", i32 4}
!351 = !{i32 8, !"PIC Level", i32 2}
!352 = !{i32 7, !"PIE Level", i32 2}
!353 = !{i32 7, !"uwtable", i32 2}
!354 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!355 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!356 = distinct !DISubprogram(name: "CeilLog2", scope: !2, file: !2, line: 42, type: !357, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!266, !266}
!359 = !{!360, !361, !362}
!360 = !DILocalVariable(name: "uiVal", arg: 1, scope: !356, file: !2, line: 42, type: !266)
!361 = !DILocalVariable(name: "uiTmp", scope: !356, file: !2, line: 44, type: !266)
!362 = !DILocalVariable(name: "uiRet", scope: !356, file: !2, line: 45, type: !266)
!363 = !DILocation(line: 0, scope: !356)
!364 = !DILocation(line: 44, column: 25, scope: !356)
!365 = !DILocation(line: 47, column: 16, scope: !356)
!366 = !DILocation(line: 47, column: 3, scope: !356)
!367 = !DILocation(line: 52, column: 3, scope: !356)
!368 = distinct !DISubprogram(name: "CeilLog2_sf", scope: !2, file: !2, line: 55, type: !357, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !369)
!369 = !{!370, !371, !372}
!370 = !DILocalVariable(name: "uiVal", arg: 1, scope: !368, file: !2, line: 55, type: !266)
!371 = !DILocalVariable(name: "uiTmp", scope: !368, file: !2, line: 57, type: !266)
!372 = !DILocalVariable(name: "uiRet", scope: !368, file: !2, line: 58, type: !266)
!373 = !DILocation(line: 0, scope: !368)
!374 = !DILocation(line: 57, column: 25, scope: !368)
!375 = !DILocation(line: 60, column: 16, scope: !368)
!376 = !DILocation(line: 60, column: 3, scope: !368)
!377 = !DILocation(line: 65, column: 3, scope: !368)
!378 = distinct !DISubprogram(name: "FirstPartOfSliceHeader", scope: !2, file: !2, line: 76, type: !379, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1532)
!379 = !DISubroutineType(types: !380)
!380 = !{!242, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !317, line: 542, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !317, line: 341, size: 109184, elements: !384)
!384 = !{!385, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1362, !1364, !1367, !1395, !1420, !1423, !1424, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1458, !1459, !1460, !1461, !1462, !1463, !1466, !1467, !1470, !1471, !1473, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1485, !1486, !1487, !1488, !1489, !1491, !1492, !1493, !1497, !1501, !1505, !1509, !1513, !1514, !1515, !1516, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !383, file: !317, line: 343, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !317, line: 566, size: 6855040, elements: !388)
!388 = !{!389, !474, !526, !627, !629, !631, !689, !691, !692, !693, !694, !695, !698, !717, !729, !730, !731, !732, !733, !734, !736, !737, !739, !740, !741, !742, !743, !744, !746, !748, !751, !752, !754, !755, !756, !757, !1027, !1029, !1030, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1176, !1180, !1181, !1183, !1184, !1187, !1190, !1191, !1192, !1194, !1197, !1200, !1201, !1202, !1203, !1204, !1205, !1231, !1232, !1234, !1235, !1236, !1237, !1238, !1241, !1246, !1250, !1254, !1258, !1259, !1263, !1264, !1268, !1269, !1273, !1294, !1295, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !387, file: !317, line: 568, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !317, line: 850, size: 32128, elements: !392)
!392 = !{!393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !435, !436, !437, !438, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !391, file: !317, line: 852, baseType: !394, size: 2040)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 255)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !391, file: !317, line: 853, baseType: !394, size: 2040, offset: 2040)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !391, file: !317, line: 854, baseType: !394, size: 2040, offset: 4080)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !391, file: !317, line: 856, baseType: !242, size: 32, offset: 6144)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !391, file: !317, line: 857, baseType: !242, size: 32, offset: 6176)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !391, file: !317, line: 858, baseType: !242, size: 32, offset: 6208)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !391, file: !317, line: 859, baseType: !242, size: 32, offset: 6240)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !391, file: !317, line: 860, baseType: !242, size: 32, offset: 6272)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !391, file: !317, line: 861, baseType: !242, size: 32, offset: 6304)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !391, file: !317, line: 864, baseType: !406, size: 1088, offset: 6336)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !241, line: 52, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !241, line: 30, size: 1088, elements: !408)
!408 = !{!409, !411, !413, !415, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !407, file: !241, line: 32, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !241, line: 28, baseType: !240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !407, file: !241, line: 33, baseType: !412, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !241, line: 20, baseType: !249)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !407, file: !241, line: 34, baseType: !414, size: 64, offset: 64)
!414 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !407, file: !241, line: 35, baseType: !416, size: 96, offset: 128)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 96, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 3)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !407, file: !241, line: 36, baseType: !416, size: 96, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !407, file: !241, line: 37, baseType: !242, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !407, file: !241, line: 38, baseType: !242, size: 32, offset: 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !407, file: !241, line: 39, baseType: !242, size: 32, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !407, file: !241, line: 40, baseType: !242, size: 32, offset: 416)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !407, file: !241, line: 41, baseType: !242, size: 32, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !407, file: !241, line: 42, baseType: !242, size: 32, offset: 480)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !407, file: !241, line: 43, baseType: !242, size: 32, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !407, file: !241, line: 44, baseType: !242, size: 32, offset: 544)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !407, file: !241, line: 45, baseType: !416, size: 96, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !407, file: !241, line: 46, baseType: !242, size: 32, offset: 672)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !407, file: !241, line: 47, baseType: !416, size: 96, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !407, file: !241, line: 48, baseType: !416, size: 96, offset: 800)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !407, file: !241, line: 49, baseType: !416, size: 96, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !407, file: !241, line: 50, baseType: !242, size: 32, offset: 992)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !407, file: !241, line: 51, baseType: !242, size: 32, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !391, file: !317, line: 865, baseType: !406, size: 1088, offset: 7424)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !391, file: !317, line: 867, baseType: !242, size: 32, offset: 8512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !391, file: !317, line: 868, baseType: !242, size: 32, offset: 8544)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !391, file: !317, line: 869, baseType: !439, size: 7744, offset: 8576)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !256, line: 60, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !256, line: 34, size: 7744, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !440, file: !256, line: 37, baseType: !394, size: 2040)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !440, file: !256, line: 38, baseType: !394, size: 2040, offset: 2040)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !440, file: !256, line: 39, baseType: !394, size: 2040, offset: 4080)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !440, file: !256, line: 40, baseType: !242, size: 32, offset: 6144)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !440, file: !256, line: 41, baseType: !447, size: 32, offset: 6176)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !256, line: 32, baseType: !255)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !440, file: !256, line: 42, baseType: !406, size: 1088, offset: 6208)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !440, file: !256, line: 43, baseType: !242, size: 32, offset: 7296)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !440, file: !256, line: 44, baseType: !242, size: 32, offset: 7328)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !440, file: !256, line: 45, baseType: !242, size: 32, offset: 7360)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !440, file: !256, line: 46, baseType: !242, size: 32, offset: 7392)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !440, file: !256, line: 47, baseType: !242, size: 32, offset: 7424)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !440, file: !256, line: 48, baseType: !242, size: 32, offset: 7456)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !440, file: !256, line: 49, baseType: !242, size: 32, offset: 7488)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !440, file: !256, line: 50, baseType: !242, size: 32, offset: 7520)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !440, file: !256, line: 51, baseType: !242, size: 32, offset: 7552)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !440, file: !256, line: 52, baseType: !242, size: 32, offset: 7584)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !440, file: !256, line: 53, baseType: !242, size: 32, offset: 7616)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !440, file: !256, line: 56, baseType: !461, size: 64, offset: 7680)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !391, file: !317, line: 870, baseType: !439, size: 7744, offset: 16320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !391, file: !317, line: 871, baseType: !439, size: 7744, offset: 24064)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !391, file: !317, line: 873, baseType: !242, size: 32, offset: 31808)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !391, file: !317, line: 884, baseType: !242, size: 32, offset: 31840)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !391, file: !317, line: 885, baseType: !242, size: 32, offset: 31872)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !391, file: !317, line: 886, baseType: !242, size: 32, offset: 31904)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !391, file: !317, line: 890, baseType: !242, size: 32, offset: 31936)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !391, file: !317, line: 893, baseType: !242, size: 32, offset: 31968)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !391, file: !317, line: 894, baseType: !242, size: 32, offset: 32000)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !391, file: !317, line: 895, baseType: !242, size: 32, offset: 32032)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !391, file: !317, line: 897, baseType: !242, size: 32, offset: 32064)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !391, file: !317, line: 899, baseType: !242, size: 32, offset: 32096)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !387, file: !317, line: 569, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !477, line: 138, baseType: !478)
!477 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 94, size: 17728, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !490, !494, !497, !500, !501, !502, !503, !504, !508, !509, !510, !511, !512, !513, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !478, file: !477, line: 96, baseType: !242, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !478, file: !477, line: 97, baseType: !266, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !478, file: !477, line: 98, baseType: !266, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !478, file: !477, line: 99, baseType: !242, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !478, file: !477, line: 100, baseType: !242, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !478, file: !477, line: 102, baseType: !242, size: 32, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !478, file: !477, line: 103, baseType: !487, size: 384, offset: 192)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 384, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 12)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !478, file: !477, line: 104, baseType: !491, size: 3072, offset: 576)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 3072, elements: !492)
!492 = !{!493, !333}
!493 = !DISubrange(count: 6)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !478, file: !477, line: 105, baseType: !495, size: 12288, offset: 3648)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 12288, elements: !496)
!496 = !{!493, !166}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !478, file: !477, line: 106, baseType: !498, size: 192, offset: 15936)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !499)
!499 = !{!493}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !478, file: !477, line: 107, baseType: !498, size: 192, offset: 16128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !478, file: !477, line: 110, baseType: !242, size: 32, offset: 16320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !478, file: !477, line: 111, baseType: !266, size: 32, offset: 16352)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !478, file: !477, line: 112, baseType: !266, size: 32, offset: 16384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !478, file: !477, line: 114, baseType: !505, size: 256, offset: 16416)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !478, file: !477, line: 116, baseType: !505, size: 256, offset: 16672)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !478, file: !477, line: 117, baseType: !505, size: 256, offset: 16928)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !478, file: !477, line: 119, baseType: !242, size: 32, offset: 17184)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !478, file: !477, line: 120, baseType: !266, size: 32, offset: 17216)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !478, file: !477, line: 122, baseType: !266, size: 32, offset: 17248)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !478, file: !477, line: 123, baseType: !514, size: 64, offset: 17280)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !478, file: !477, line: 125, baseType: !242, size: 32, offset: 17344)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !478, file: !477, line: 126, baseType: !242, size: 32, offset: 17376)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !478, file: !477, line: 127, baseType: !242, size: 32, offset: 17408)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !478, file: !477, line: 128, baseType: !266, size: 32, offset: 17440)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !478, file: !477, line: 129, baseType: !242, size: 32, offset: 17472)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !478, file: !477, line: 130, baseType: !242, size: 32, offset: 17504)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !478, file: !477, line: 131, baseType: !242, size: 32, offset: 17536)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !478, file: !477, line: 133, baseType: !242, size: 32, offset: 17568)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !478, file: !477, line: 135, baseType: !242, size: 32, offset: 17600)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !478, file: !477, line: 136, baseType: !242, size: 32, offset: 17632)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !478, file: !477, line: 137, baseType: !242, size: 32, offset: 17664)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !387, file: !317, line: 570, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !477, line: 197, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 142, size: 33024, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !625, !626}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !529, file: !477, line: 144, baseType: !242, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !529, file: !477, line: 146, baseType: !266, size: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !529, file: !477, line: 147, baseType: !242, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !529, file: !477, line: 148, baseType: !242, size: 32, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !529, file: !477, line: 149, baseType: !242, size: 32, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !529, file: !477, line: 150, baseType: !242, size: 32, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !529, file: !477, line: 152, baseType: !242, size: 32, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !529, file: !477, line: 154, baseType: !266, size: 32, offset: 224)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !529, file: !477, line: 155, baseType: !266, size: 32, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !529, file: !477, line: 156, baseType: !266, size: 32, offset: 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !529, file: !477, line: 158, baseType: !242, size: 32, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !529, file: !477, line: 159, baseType: !487, size: 384, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !529, file: !477, line: 160, baseType: !491, size: 3072, offset: 736)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !529, file: !477, line: 161, baseType: !495, size: 12288, offset: 3808)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !529, file: !477, line: 162, baseType: !498, size: 192, offset: 16096)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !529, file: !477, line: 163, baseType: !498, size: 192, offset: 16288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !529, file: !477, line: 165, baseType: !266, size: 32, offset: 16480)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !529, file: !477, line: 166, baseType: !266, size: 32, offset: 16512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !529, file: !477, line: 167, baseType: !266, size: 32, offset: 16544)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !529, file: !477, line: 168, baseType: !266, size: 32, offset: 16576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !529, file: !477, line: 170, baseType: !266, size: 32, offset: 16608)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !529, file: !477, line: 172, baseType: !242, size: 32, offset: 16640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !529, file: !477, line: 173, baseType: !242, size: 32, offset: 16672)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !529, file: !477, line: 174, baseType: !242, size: 32, offset: 16704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !529, file: !477, line: 175, baseType: !266, size: 32, offset: 16736)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !529, file: !477, line: 177, baseType: !557, size: 8192, offset: 16768)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 8192, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !529, file: !477, line: 178, baseType: !266, size: 32, offset: 24960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !529, file: !477, line: 179, baseType: !242, size: 32, offset: 24992)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !529, file: !477, line: 180, baseType: !266, size: 32, offset: 25024)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !529, file: !477, line: 181, baseType: !266, size: 32, offset: 25056)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !529, file: !477, line: 182, baseType: !242, size: 32, offset: 25088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !529, file: !477, line: 184, baseType: !242, size: 32, offset: 25120)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !529, file: !477, line: 185, baseType: !242, size: 32, offset: 25152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !529, file: !477, line: 186, baseType: !242, size: 32, offset: 25184)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !529, file: !477, line: 187, baseType: !266, size: 32, offset: 25216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !529, file: !477, line: 188, baseType: !266, size: 32, offset: 25248)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !529, file: !477, line: 189, baseType: !266, size: 32, offset: 25280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !529, file: !477, line: 190, baseType: !266, size: 32, offset: 25312)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !529, file: !477, line: 191, baseType: !242, size: 32, offset: 25344)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !529, file: !477, line: 192, baseType: !574, size: 7584, offset: 25376)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !477, line: 90, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 53, size: 7584, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !575, file: !477, line: 55, baseType: !242, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !575, file: !477, line: 56, baseType: !266, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !575, file: !477, line: 57, baseType: !313, size: 16, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !575, file: !477, line: 58, baseType: !313, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !575, file: !477, line: 59, baseType: !242, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !575, file: !477, line: 60, baseType: !242, size: 32, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !575, file: !477, line: 61, baseType: !242, size: 32, offset: 160)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !575, file: !477, line: 62, baseType: !266, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !575, file: !477, line: 63, baseType: !242, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !575, file: !477, line: 64, baseType: !242, size: 32, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !575, file: !477, line: 65, baseType: !266, size: 32, offset: 288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !575, file: !477, line: 66, baseType: !266, size: 32, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !575, file: !477, line: 67, baseType: !266, size: 32, offset: 352)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !575, file: !477, line: 68, baseType: !242, size: 32, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !575, file: !477, line: 69, baseType: !266, size: 32, offset: 416)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !575, file: !477, line: 70, baseType: !266, size: 32, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !575, file: !477, line: 71, baseType: !242, size: 32, offset: 480)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !575, file: !477, line: 72, baseType: !266, size: 32, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !575, file: !477, line: 73, baseType: !266, size: 32, offset: 544)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !575, file: !477, line: 74, baseType: !242, size: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !575, file: !477, line: 75, baseType: !242, size: 32, offset: 608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !575, file: !477, line: 76, baseType: !599, size: 3296, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !477, line: 50, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 38, size: 3296, elements: !601)
!601 = !{!602, !603, !604, !605, !607, !608, !609, !610, !611, !612}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !600, file: !477, line: 40, baseType: !266, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !600, file: !477, line: 41, baseType: !266, size: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !600, file: !477, line: 42, baseType: !266, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !600, file: !477, line: 43, baseType: !606, size: 1024, offset: 96)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1024, elements: !55)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !600, file: !477, line: 44, baseType: !606, size: 1024, offset: 1120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !600, file: !477, line: 45, baseType: !606, size: 1024, offset: 2144)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !600, file: !477, line: 46, baseType: !266, size: 32, offset: 3168)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !600, file: !477, line: 47, baseType: !266, size: 32, offset: 3200)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !600, file: !477, line: 48, baseType: !266, size: 32, offset: 3232)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !600, file: !477, line: 49, baseType: !266, size: 32, offset: 3264)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !575, file: !477, line: 77, baseType: !242, size: 32, offset: 3936)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !575, file: !477, line: 78, baseType: !599, size: 3296, offset: 3968)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !575, file: !477, line: 80, baseType: !242, size: 32, offset: 7264)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !575, file: !477, line: 81, baseType: !242, size: 32, offset: 7296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !575, file: !477, line: 82, baseType: !242, size: 32, offset: 7328)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !575, file: !477, line: 83, baseType: !242, size: 32, offset: 7360)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !575, file: !477, line: 84, baseType: !266, size: 32, offset: 7392)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !575, file: !477, line: 85, baseType: !266, size: 32, offset: 7424)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !575, file: !477, line: 86, baseType: !266, size: 32, offset: 7456)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !575, file: !477, line: 87, baseType: !266, size: 32, offset: 7488)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !575, file: !477, line: 88, baseType: !266, size: 32, offset: 7520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !575, file: !477, line: 89, baseType: !266, size: 32, offset: 7552)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !529, file: !477, line: 193, baseType: !266, size: 32, offset: 32960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !529, file: !477, line: 195, baseType: !242, size: 32, offset: 32992)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !387, file: !317, line: 571, baseType: !628, size: 1056768, offset: 192)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 1056768, elements: !55)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !387, file: !317, line: 572, baseType: !630, size: 4538368, offset: 1056960)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 4538368, elements: !558)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !387, file: !317, line: 575, baseType: !632, size: 64, offset: 5595328)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !477, line: 256, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 228, size: 37312, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !656, !657, !658, !659}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !634, file: !477, line: 230, baseType: !528, size: 33024)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !634, file: !477, line: 232, baseType: !266, size: 32, offset: 33024)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !634, file: !477, line: 233, baseType: !242, size: 32, offset: 33056)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !634, file: !477, line: 234, baseType: !461, size: 64, offset: 33088)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !634, file: !477, line: 235, baseType: !461, size: 64, offset: 33152)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !634, file: !477, line: 236, baseType: !642, size: 64, offset: 33216)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !634, file: !477, line: 237, baseType: !461, size: 64, offset: 33280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !634, file: !477, line: 238, baseType: !642, size: 64, offset: 33344)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !634, file: !477, line: 240, baseType: !461, size: 64, offset: 33408)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !634, file: !477, line: 241, baseType: !642, size: 64, offset: 33472)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !634, file: !477, line: 242, baseType: !461, size: 64, offset: 33536)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !634, file: !477, line: 243, baseType: !642, size: 64, offset: 33600)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !634, file: !477, line: 245, baseType: !242, size: 32, offset: 33664)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !634, file: !477, line: 246, baseType: !461, size: 64, offset: 33728)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !634, file: !477, line: 247, baseType: !461, size: 64, offset: 33792)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !634, file: !477, line: 248, baseType: !642, size: 64, offset: 33856)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !634, file: !477, line: 249, baseType: !642, size: 64, offset: 33920)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !634, file: !477, line: 250, baseType: !655, size: 64, offset: 33984)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !634, file: !477, line: 251, baseType: !642, size: 64, offset: 34048)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !634, file: !477, line: 253, baseType: !266, size: 32, offset: 34112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !634, file: !477, line: 254, baseType: !242, size: 32, offset: 34144)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !634, file: !477, line: 255, baseType: !660, size: 3136, offset: 34176)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !477, line: 226, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !477, line: 200, size: 3136, elements: !662)
!662 = !{!663, !664, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !682, !683, !685, !686, !687, !688}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !661, file: !477, line: 202, baseType: !242, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !661, file: !477, line: 203, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !661, file: !477, line: 204, baseType: !461, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !661, file: !477, line: 205, baseType: !642, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !661, file: !477, line: 206, baseType: !665, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !661, file: !477, line: 207, baseType: !461, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !661, file: !477, line: 208, baseType: !461, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !661, file: !477, line: 209, baseType: !665, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !661, file: !477, line: 210, baseType: !665, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !661, file: !477, line: 211, baseType: !665, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !661, file: !477, line: 212, baseType: !665, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !661, file: !477, line: 213, baseType: !665, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !661, file: !477, line: 216, baseType: !666, size: 8, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !661, file: !477, line: 217, baseType: !666, size: 8, offset: 776)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !661, file: !477, line: 218, baseType: !666, size: 8, offset: 784)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !661, file: !477, line: 219, baseType: !681, size: 1024, offset: 800)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1024, elements: !55)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !661, file: !477, line: 220, baseType: !681, size: 1024, offset: 1824)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !661, file: !477, line: 221, baseType: !684, size: 256, offset: 2848)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !55)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !661, file: !477, line: 222, baseType: !666, size: 8, offset: 3104)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !661, file: !477, line: 223, baseType: !666, size: 8, offset: 3112)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !661, file: !477, line: 224, baseType: !666, size: 8, offset: 3120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !661, file: !477, line: 225, baseType: !666, size: 8, offset: 3128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !387, file: !317, line: 577, baseType: !690, size: 1193984, offset: 5595392)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 1193984, elements: !55)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !387, file: !317, line: 578, baseType: !242, size: 32, offset: 6789376)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !387, file: !317, line: 579, baseType: !242, size: 32, offset: 6789408)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !387, file: !317, line: 580, baseType: !242, size: 32, offset: 6789440)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !387, file: !317, line: 581, baseType: !242, size: 32, offset: 6789472)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !387, file: !317, line: 584, baseType: !696, size: 64, offset: 6789504)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !317, line: 584, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !387, file: !317, line: 586, baseType: !699, size: 64, offset: 6789568)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !317, line: 902, size: 416, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !710, !711, !712, !713, !714, !715, !716}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !700, file: !317, line: 904, baseType: !266, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !700, file: !317, line: 905, baseType: !266, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !700, file: !317, line: 906, baseType: !242, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !700, file: !317, line: 907, baseType: !266, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !700, file: !317, line: 908, baseType: !242, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !700, file: !317, line: 909, baseType: !708, size: 64, offset: 160)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !709)
!709 = !{!347}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !700, file: !317, line: 910, baseType: !309, size: 8, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !700, file: !317, line: 911, baseType: !309, size: 8, offset: 232)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !700, file: !317, line: 912, baseType: !242, size: 32, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !700, file: !317, line: 913, baseType: !242, size: 32, offset: 288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !700, file: !317, line: 915, baseType: !242, size: 32, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !700, file: !317, line: 916, baseType: !242, size: 32, offset: 352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !700, file: !317, line: 917, baseType: !242, size: 32, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !387, file: !317, line: 587, baseType: !718, size: 64, offset: 6789632)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !317, line: 839, size: 512, elements: !720)
!720 = !{!721, !722, !725, !726, !727, !728}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !719, file: !317, line: 841, baseType: !242, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !719, file: !317, line: 842, baseType: !723, size: 96, offset: 32)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 96, elements: !417)
!724 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !719, file: !317, line: 843, baseType: !723, size: 96, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !719, file: !317, line: 844, baseType: !723, size: 96, offset: 224)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !719, file: !317, line: 845, baseType: !723, size: 96, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !719, file: !317, line: 846, baseType: !723, size: 96, offset: 416)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !387, file: !317, line: 588, baseType: !242, size: 32, offset: 6789696)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !387, file: !317, line: 591, baseType: !266, size: 32, offset: 6789728)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !387, file: !317, line: 592, baseType: !242, size: 32, offset: 6789760)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !387, file: !317, line: 593, baseType: !242, size: 32, offset: 6789792)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !387, file: !317, line: 594, baseType: !242, size: 32, offset: 6789824)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !387, file: !317, line: 595, baseType: !735, size: 64, offset: 6789888)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !387, file: !317, line: 596, baseType: !665, size: 64, offset: 6789952)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !387, file: !317, line: 597, baseType: !738, size: 192, offset: 6790016)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 192, elements: !417)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !317, line: 601, baseType: !242, size: 32, offset: 6790208)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !387, file: !317, line: 602, baseType: !242, size: 32, offset: 6790240)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !387, file: !317, line: 603, baseType: !242, size: 32, offset: 6790272)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !387, file: !317, line: 604, baseType: !242, size: 32, offset: 6790304)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !387, file: !317, line: 605, baseType: !242, size: 32, offset: 6790336)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !387, file: !317, line: 607, baseType: !745, size: 64, offset: 6790400)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !387, file: !317, line: 608, baseType: !747, size: 192, offset: 6790464)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 192, elements: !417)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !387, file: !317, line: 609, baseType: !749, size: 64, offset: 6790656)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !387, file: !317, line: 610, baseType: !642, size: 64, offset: 6790720)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !387, file: !317, line: 611, baseType: !753, size: 192, offset: 6790784)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, elements: !417)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !387, file: !317, line: 613, baseType: !242, size: 32, offset: 6790976)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !387, file: !317, line: 614, baseType: !242, size: 32, offset: 6791008)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !387, file: !317, line: 617, baseType: !381, size: 64, offset: 6791040)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !387, file: !317, line: 618, baseType: !758, size: 64, offset: 6791104)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !317, line: 273, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !317, line: 197, size: 3840, elements: !761)
!761 = !{!762, !764, !765, !766, !767, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !796, !797, !798, !799, !800, !804, !805, !814, !815, !816, !817, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !843, !844, !968, !982, !1026}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !760, file: !317, line: 199, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !760, file: !317, line: 200, baseType: !386, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !760, file: !317, line: 201, baseType: !390, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !760, file: !317, line: 202, baseType: !242, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !760, file: !317, line: 203, baseType: !768, size: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !317, line: 112, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 108, size: 32, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !769, file: !317, line: 110, baseType: !314, size: 16)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !769, file: !317, line: 111, baseType: !314, size: 16, offset: 16)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !760, file: !317, line: 204, baseType: !242, size: 32, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !760, file: !317, line: 205, baseType: !242, size: 32, offset: 288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !760, file: !317, line: 206, baseType: !242, size: 32, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !760, file: !317, line: 207, baseType: !242, size: 32, offset: 352)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !760, file: !317, line: 208, baseType: !242, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !760, file: !317, line: 209, baseType: !242, size: 32, offset: 416)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !760, file: !317, line: 210, baseType: !242, size: 32, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !760, file: !317, line: 212, baseType: !242, size: 32, offset: 480)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !760, file: !317, line: 213, baseType: !242, size: 32, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !760, file: !317, line: 215, baseType: !242, size: 32, offset: 544)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !760, file: !317, line: 216, baseType: !708, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !760, file: !317, line: 217, baseType: !416, size: 96, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !760, file: !317, line: 218, baseType: !242, size: 32, offset: 736)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !760, file: !317, line: 219, baseType: !242, size: 32, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !760, file: !317, line: 220, baseType: !242, size: 32, offset: 800)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !760, file: !317, line: 221, baseType: !242, size: 32, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !760, file: !317, line: 223, baseType: !314, size: 16, offset: 864)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !760, file: !317, line: 224, baseType: !666, size: 8, offset: 880)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !760, file: !317, line: 225, baseType: !666, size: 8, offset: 888)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !760, file: !317, line: 226, baseType: !314, size: 16, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !760, file: !317, line: 227, baseType: !314, size: 16, offset: 912)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !760, file: !317, line: 229, baseType: !795, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !760, file: !317, line: 230, baseType: !795, size: 64, offset: 1024)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !760, file: !317, line: 232, baseType: !795, size: 64, offset: 1088)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !760, file: !317, line: 233, baseType: !795, size: 64, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !760, file: !317, line: 236, baseType: !314, size: 16, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !760, file: !317, line: 237, baseType: !801, size: 1024, offset: 1232)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 1024, elements: !802)
!802 = !{!347, !803, !803, !347}
!803 = !DISubrange(count: 4)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !760, file: !317, line: 239, baseType: !242, size: 32, offset: 2272)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !760, file: !317, line: 240, baseType: !806, size: 192, offset: 2304)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 192, elements: !417)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !808, line: 103, baseType: !809)
!808 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !810, line: 27, baseType: !811)
!810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !812, line: 44, baseType: !813)
!812 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!813 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !760, file: !317, line: 241, baseType: !806, size: 192, offset: 2496)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !760, file: !317, line: 242, baseType: !806, size: 192, offset: 2688)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !760, file: !317, line: 244, baseType: !242, size: 32, offset: 2880)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !760, file: !317, line: 245, baseType: !818, size: 32, offset: 2912)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 32, elements: !819)
!819 = !{!803}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !760, file: !317, line: 246, baseType: !818, size: 32, offset: 2944)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !760, file: !317, line: 247, baseType: !666, size: 8, offset: 2976)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !760, file: !317, line: 248, baseType: !666, size: 8, offset: 2984)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !760, file: !317, line: 249, baseType: !666, size: 8, offset: 2992)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !760, file: !317, line: 250, baseType: !314, size: 16, offset: 3008)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !760, file: !317, line: 251, baseType: !314, size: 16, offset: 3024)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !760, file: !317, line: 252, baseType: !314, size: 16, offset: 3040)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !760, file: !317, line: 254, baseType: !242, size: 32, offset: 3072)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !760, file: !317, line: 256, baseType: !242, size: 32, offset: 3104)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !760, file: !317, line: 256, baseType: !242, size: 32, offset: 3136)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !760, file: !317, line: 256, baseType: !242, size: 32, offset: 3168)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !760, file: !317, line: 256, baseType: !242, size: 32, offset: 3200)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !760, file: !317, line: 257, baseType: !242, size: 32, offset: 3232)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !760, file: !317, line: 257, baseType: !242, size: 32, offset: 3264)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !760, file: !317, line: 257, baseType: !242, size: 32, offset: 3296)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !760, file: !317, line: 257, baseType: !242, size: 32, offset: 3328)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !760, file: !317, line: 259, baseType: !242, size: 32, offset: 3360)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !760, file: !317, line: 260, baseType: !242, size: 32, offset: 3392)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !760, file: !317, line: 262, baseType: !839, size: 64, offset: 3456)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !795, !842, !242, !242}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !265, line: 32, baseType: !264)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !760, file: !317, line: 263, baseType: !839, size: 64, offset: 3520)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !760, file: !317, line: 265, baseType: !845, size: 64, offset: 3584)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !795, !848, !858, !314, !864, !242, !242, !242, !242, !242}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !317, line: 85, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !317, line: 77, size: 128, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !850, file: !317, line: 79, baseType: !242, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !850, file: !317, line: 80, baseType: !242, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !850, file: !317, line: 81, baseType: !314, size: 16, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !850, file: !317, line: 82, baseType: !314, size: 16, offset: 80)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !850, file: !317, line: 83, baseType: !314, size: 16, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !850, file: !317, line: 84, baseType: !314, size: 16, offset: 112)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !317, line: 104, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 100, size: 32, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !860, file: !317, line: 102, baseType: !314, size: 16)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !860, file: !317, line: 103, baseType: !314, size: 16, offset: 16)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !867, line: 36, size: 256, elements: !868)
!867 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!868 = !{!869, !965, !967}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !866, file: !867, line: 38, baseType: !870, size: 128)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 128, elements: !709)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !867, line: 46, size: 3328, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !911, !913, !914, !915, !917, !921, !923, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !962}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !872, file: !867, line: 48, baseType: !312, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !872, file: !867, line: 50, baseType: !242, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !872, file: !867, line: 51, baseType: !242, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !872, file: !867, line: 52, baseType: !242, size: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !872, file: !867, line: 53, baseType: !242, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !872, file: !867, line: 54, baseType: !266, size: 32, offset: 160)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !872, file: !867, line: 55, baseType: !266, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !872, file: !867, line: 57, baseType: !242, size: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !872, file: !867, line: 58, baseType: !242, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !872, file: !867, line: 59, baseType: !242, size: 32, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !872, file: !867, line: 61, baseType: !309, size: 8, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !872, file: !867, line: 62, baseType: !242, size: 32, offset: 352)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !872, file: !867, line: 63, baseType: !242, size: 32, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !872, file: !867, line: 64, baseType: !242, size: 32, offset: 416)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !872, file: !867, line: 65, baseType: !242, size: 32, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !872, file: !867, line: 67, baseType: !314, size: 16, offset: 480)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !872, file: !867, line: 69, baseType: !242, size: 32, offset: 512)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !872, file: !867, line: 69, baseType: !242, size: 32, offset: 544)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !872, file: !867, line: 69, baseType: !242, size: 32, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !872, file: !867, line: 69, baseType: !242, size: 32, offset: 608)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !872, file: !867, line: 70, baseType: !242, size: 32, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !872, file: !867, line: 70, baseType: !242, size: 32, offset: 672)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !872, file: !867, line: 70, baseType: !242, size: 32, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !872, file: !867, line: 70, baseType: !242, size: 32, offset: 736)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !872, file: !867, line: 71, baseType: !242, size: 32, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !872, file: !867, line: 72, baseType: !242, size: 32, offset: 800)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !872, file: !867, line: 73, baseType: !266, size: 32, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !872, file: !867, line: 74, baseType: !266, size: 32, offset: 864)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !872, file: !867, line: 75, baseType: !242, size: 32, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !872, file: !867, line: 75, baseType: !242, size: 32, offset: 928)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !872, file: !867, line: 76, baseType: !242, size: 32, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !872, file: !867, line: 76, baseType: !242, size: 32, offset: 992)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !872, file: !867, line: 79, baseType: !907, size: 64, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !310, line: 41, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !310, line: 23, baseType: !313)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !872, file: !867, line: 80, baseType: !912, size: 64, offset: 1088)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !872, file: !867, line: 81, baseType: !912, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !872, file: !867, line: 84, baseType: !864, size: 64, offset: 1216)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !872, file: !867, line: 85, baseType: !916, size: 192, offset: 1280)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 192, elements: !417)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !872, file: !867, line: 87, baseType: !918, size: 64, offset: 1472)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !867, line: 29, size: 64, elements: !919)
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !918, file: !867, line: 31, baseType: !514, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !872, file: !867, line: 88, baseType: !922, size: 192, offset: 1536)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 192, elements: !417)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !872, file: !867, line: 90, baseType: !924, size: 64, offset: 1728)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !872, file: !867, line: 92, baseType: !871, size: 64, offset: 1792)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !872, file: !867, line: 93, baseType: !871, size: 64, offset: 1856)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !872, file: !867, line: 94, baseType: !871, size: 64, offset: 1920)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !872, file: !867, line: 96, baseType: !242, size: 32, offset: 1984)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !872, file: !867, line: 97, baseType: !242, size: 32, offset: 2016)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !872, file: !867, line: 98, baseType: !242, size: 32, offset: 2048)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !872, file: !867, line: 99, baseType: !242, size: 32, offset: 2080)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !872, file: !867, line: 100, baseType: !242, size: 32, offset: 2112)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !872, file: !867, line: 102, baseType: !242, size: 32, offset: 2144)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !872, file: !867, line: 103, baseType: !242, size: 32, offset: 2176)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !872, file: !867, line: 104, baseType: !242, size: 32, offset: 2208)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !872, file: !867, line: 105, baseType: !242, size: 32, offset: 2240)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !872, file: !867, line: 106, baseType: !242, size: 32, offset: 2272)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !872, file: !867, line: 107, baseType: !242, size: 32, offset: 2304)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !872, file: !867, line: 108, baseType: !242, size: 32, offset: 2336)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !872, file: !867, line: 109, baseType: !242, size: 32, offset: 2368)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !872, file: !867, line: 110, baseType: !708, size: 64, offset: 2400)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !872, file: !867, line: 111, baseType: !242, size: 32, offset: 2464)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !872, file: !867, line: 112, baseType: !315, size: 64, offset: 2496)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !872, file: !867, line: 115, baseType: !242, size: 32, offset: 2560)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !872, file: !867, line: 118, baseType: !242, size: 32, offset: 2592)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !872, file: !867, line: 119, baseType: !242, size: 32, offset: 2624)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !872, file: !867, line: 120, baseType: !242, size: 32, offset: 2656)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !872, file: !867, line: 121, baseType: !908, size: 64, offset: 2688)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !872, file: !867, line: 124, baseType: !242, size: 32, offset: 2752)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !872, file: !867, line: 125, baseType: !242, size: 32, offset: 2784)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !872, file: !867, line: 126, baseType: !242, size: 32, offset: 2816)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !872, file: !867, line: 128, baseType: !242, size: 32, offset: 2848)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !872, file: !867, line: 129, baseType: !242, size: 32, offset: 2880)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !872, file: !867, line: 130, baseType: !242, size: 32, offset: 2912)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !872, file: !867, line: 131, baseType: !242, size: 32, offset: 2944)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !872, file: !867, line: 132, baseType: !907, size: 64, offset: 3008)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !872, file: !867, line: 133, baseType: !242, size: 32, offset: 3072)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !872, file: !867, line: 134, baseType: !242, size: 32, offset: 3104)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !872, file: !867, line: 136, baseType: !961, size: 16, offset: 3136)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 16, elements: !709)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !872, file: !867, line: 137, baseType: !963, size: 128, offset: 3200)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !709)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !866, file: !867, line: 39, baseType: !966, size: 64, offset: 128)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 64, elements: !709)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !866, file: !867, line: 40, baseType: !961, size: 16, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !760, file: !317, line: 268, baseType: !969, size: 64, offset: 3648)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!242, !795, !972, !242}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !317, line: 97, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !317, line: 95, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 88, size: 256, elements: !976)
!976 = !{!977, !978, !979, !980, !981}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !975, file: !317, line: 90, baseType: !266, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !975, file: !317, line: 91, baseType: !266, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !975, file: !317, line: 92, baseType: !242, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !975, file: !317, line: 93, baseType: !514, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !975, file: !317, line: 94, baseType: !461, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !760, file: !317, line: 269, baseType: !983, size: 64, offset: 3712)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!666, !795, !986, !1005, !666, !242}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !317, line: 276, size: 384, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997, !1001}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !987, file: !317, line: 278, baseType: !242, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !987, file: !317, line: 279, baseType: !242, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !987, file: !317, line: 280, baseType: !242, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !987, file: !317, line: 281, baseType: !242, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !987, file: !317, line: 282, baseType: !242, size: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !987, file: !317, line: 283, baseType: !266, size: 32, offset: 160)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !987, file: !317, line: 284, baseType: !242, size: 32, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !987, file: !317, line: 285, baseType: !242, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !987, file: !317, line: 293, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !242, !242, !461, !461}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !987, file: !317, line: 295, baseType: !1002, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !758, !986, !972}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !317, line: 314, size: 384, elements: !1007)
!1007 = !{!1008, !1019, !1020}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !1006, file: !317, line: 317, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !317, line: 47, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !317, line: 300, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !1011, file: !317, line: 303, baseType: !242, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !1011, file: !317, line: 304, baseType: !242, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !1011, file: !317, line: 306, baseType: !242, size: 32, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !1011, file: !317, line: 307, baseType: !242, size: 32, offset: 96)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !1011, file: !317, line: 309, baseType: !514, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1011, file: !317, line: 310, baseType: !242, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !1006, file: !317, line: 318, baseType: !974, size: 256, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !1006, file: !317, line: 320, baseType: !1021, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!242, !758, !1024, !1005}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !317, line: 296, baseType: !987)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !760, file: !317, line: 272, baseType: !309, size: 8, offset: 3776)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !387, file: !317, line: 619, baseType: !1028, size: 192, offset: 6791168)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 192, elements: !417)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !387, file: !317, line: 621, baseType: !242, size: 32, offset: 6791360)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !387, file: !317, line: 626, baseType: !1031, size: 64, offset: 6791424)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !317, line: 626, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !387, file: !317, line: 627, baseType: !1031, size: 64, offset: 6791488)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !387, file: !317, line: 629, baseType: !266, size: 32, offset: 6791552)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !387, file: !317, line: 630, baseType: !242, size: 32, offset: 6791584)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !387, file: !317, line: 634, baseType: !242, size: 32, offset: 6791616)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !387, file: !317, line: 635, baseType: !266, size: 32, offset: 6791648)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !387, file: !317, line: 638, baseType: !242, size: 32, offset: 6791680)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !387, file: !317, line: 638, baseType: !242, size: 32, offset: 6791712)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !387, file: !317, line: 638, baseType: !242, size: 32, offset: 6791744)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !387, file: !317, line: 639, baseType: !266, size: 32, offset: 6791776)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !387, file: !317, line: 639, baseType: !266, size: 32, offset: 6791808)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !387, file: !317, line: 640, baseType: !242, size: 32, offset: 6791840)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !387, file: !317, line: 641, baseType: !242, size: 32, offset: 6791872)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !387, file: !317, line: 642, baseType: !242, size: 32, offset: 6791904)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !387, file: !317, line: 645, baseType: !242, size: 32, offset: 6791936)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !387, file: !317, line: 647, baseType: !266, size: 32, offset: 6791968)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !387, file: !317, line: 648, baseType: !266, size: 32, offset: 6792000)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !387, file: !317, line: 649, baseType: !266, size: 32, offset: 6792032)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !387, file: !317, line: 650, baseType: !266, size: 32, offset: 6792064)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !387, file: !317, line: 651, baseType: !266, size: 32, offset: 6792096)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !387, file: !317, line: 652, baseType: !266, size: 32, offset: 6792128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !387, file: !317, line: 653, baseType: !266, size: 32, offset: 6792160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !387, file: !317, line: 655, baseType: !242, size: 32, offset: 6792192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !387, file: !317, line: 657, baseType: !242, size: 32, offset: 6792224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !387, file: !317, line: 658, baseType: !242, size: 32, offset: 6792256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !387, file: !317, line: 661, baseType: !242, size: 32, offset: 6792288)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !387, file: !317, line: 662, baseType: !314, size: 16, offset: 6792320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !387, file: !317, line: 663, baseType: !314, size: 16, offset: 6792336)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !387, file: !317, line: 664, baseType: !708, size: 64, offset: 6792352)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !387, file: !317, line: 665, baseType: !242, size: 32, offset: 6792416)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !387, file: !317, line: 666, baseType: !242, size: 32, offset: 6792448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !387, file: !317, line: 667, baseType: !1064, size: 96, offset: 6792480)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 96, elements: !417)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !387, file: !317, line: 668, baseType: !416, size: 96, offset: 6792576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !387, file: !317, line: 670, baseType: !242, size: 32, offset: 6792672)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !387, file: !317, line: 671, baseType: !242, size: 32, offset: 6792704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !387, file: !317, line: 672, baseType: !242, size: 32, offset: 6792736)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !387, file: !317, line: 673, baseType: !242, size: 32, offset: 6792768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !387, file: !317, line: 674, baseType: !242, size: 32, offset: 6792800)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !387, file: !317, line: 675, baseType: !242, size: 32, offset: 6792832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !387, file: !317, line: 676, baseType: !242, size: 32, offset: 6792864)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !387, file: !317, line: 677, baseType: !242, size: 32, offset: 6792896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !387, file: !317, line: 678, baseType: !242, size: 32, offset: 6792928)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !387, file: !317, line: 679, baseType: !242, size: 32, offset: 6792960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !387, file: !317, line: 680, baseType: !1077, size: 192, offset: 6792992)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !1078)
!1078 = !{!418, !347}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !387, file: !317, line: 681, baseType: !1077, size: 192, offset: 6793184)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !387, file: !317, line: 682, baseType: !1077, size: 192, offset: 6793376)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !387, file: !317, line: 683, baseType: !242, size: 32, offset: 6793568)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !387, file: !317, line: 684, baseType: !242, size: 32, offset: 6793600)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !387, file: !317, line: 685, baseType: !242, size: 32, offset: 6793632)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !387, file: !317, line: 686, baseType: !242, size: 32, offset: 6793664)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !387, file: !317, line: 687, baseType: !242, size: 32, offset: 6793696)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !387, file: !317, line: 689, baseType: !242, size: 32, offset: 6793728)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !387, file: !317, line: 692, baseType: !242, size: 32, offset: 6793760)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !387, file: !317, line: 693, baseType: !242, size: 32, offset: 6793792)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !387, file: !317, line: 700, baseType: !242, size: 32, offset: 6793824)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !387, file: !317, line: 701, baseType: !242, size: 32, offset: 6793856)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !387, file: !317, line: 702, baseType: !242, size: 32, offset: 6793888)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !387, file: !317, line: 703, baseType: !242, size: 32, offset: 6793920)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !387, file: !317, line: 704, baseType: !242, size: 32, offset: 6793952)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !387, file: !317, line: 705, baseType: !266, size: 32, offset: 6793984)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !387, file: !317, line: 706, baseType: !242, size: 32, offset: 6794016)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !387, file: !317, line: 707, baseType: !242, size: 32, offset: 6794048)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !387, file: !317, line: 710, baseType: !242, size: 32, offset: 6794080)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !387, file: !317, line: 711, baseType: !242, size: 32, offset: 6794112)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !387, file: !317, line: 712, baseType: !242, size: 32, offset: 6794144)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !387, file: !317, line: 713, baseType: !242, size: 32, offset: 6794176)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !387, file: !317, line: 714, baseType: !242, size: 32, offset: 6794208)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !387, file: !317, line: 716, baseType: !242, size: 32, offset: 6794240)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !387, file: !317, line: 717, baseType: !242, size: 32, offset: 6794272)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !387, file: !317, line: 719, baseType: !514, size: 64, offset: 6794304)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !387, file: !317, line: 720, baseType: !514, size: 64, offset: 6794368)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !387, file: !317, line: 722, baseType: !1107, size: 2560, offset: 6794432)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1108, line: 38, baseType: !1109)
!1108 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1108, line: 20, size: 2560, elements: !1110)
!1110 = !{!1111, !1112, !1114, !1115, !1116, !1120, !1121, !1122, !1123, !1124}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1109, file: !1108, line: 22, baseType: !406, size: 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1109, file: !1108, line: 24, baseType: !1113, size: 192, offset: 1088)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 192, elements: !417)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1109, file: !1108, line: 25, baseType: !1113, size: 192, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1109, file: !1108, line: 26, baseType: !1113, size: 192, offset: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1109, file: !1108, line: 31, baseType: !1117, size: 192, offset: 1664)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1118, size: 192, elements: !417)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1109, file: !1108, line: 32, baseType: !1117, size: 192, offset: 1856)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1109, file: !1108, line: 33, baseType: !1117, size: 192, offset: 2048)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1109, file: !1108, line: 35, baseType: !416, size: 96, offset: 2240)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1109, file: !1108, line: 36, baseType: !416, size: 96, offset: 2336)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1109, file: !1108, line: 37, baseType: !416, size: 96, offset: 2432)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !387, file: !317, line: 723, baseType: !1107, size: 2560, offset: 6796992)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !387, file: !317, line: 724, baseType: !1107, size: 2560, offset: 6799552)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !387, file: !317, line: 725, baseType: !1107, size: 2560, offset: 6802112)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !387, file: !317, line: 728, baseType: !1107, size: 2560, offset: 6804672)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !387, file: !317, line: 729, baseType: !1107, size: 2560, offset: 6807232)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !387, file: !317, line: 730, baseType: !1107, size: 2560, offset: 6809792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !387, file: !317, line: 731, baseType: !1107, size: 2560, offset: 6812352)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !387, file: !317, line: 735, baseType: !266, size: 32, offset: 6814912)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !387, file: !317, line: 737, baseType: !242, size: 32, offset: 6814944)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !387, file: !317, line: 738, baseType: !242, size: 32, offset: 6814976)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !387, file: !317, line: 741, baseType: !807, size: 64, offset: 6815040)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !387, file: !317, line: 744, baseType: !242, size: 32, offset: 6815104)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !387, file: !317, line: 746, baseType: !1138, size: 32768, offset: 6815136)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 32768, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !387, file: !317, line: 748, baseType: !242, size: 32, offset: 6847904)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !387, file: !317, line: 751, baseType: !242, size: 32, offset: 6847936)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !387, file: !317, line: 752, baseType: !242, size: 32, offset: 6847968)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !387, file: !317, line: 755, baseType: !242, size: 32, offset: 6848000)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !387, file: !317, line: 756, baseType: !242, size: 32, offset: 6848032)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !387, file: !317, line: 758, baseType: !242, size: 32, offset: 6848064)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !387, file: !317, line: 759, baseType: !242, size: 32, offset: 6848096)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !387, file: !317, line: 762, baseType: !907, size: 64, offset: 6848128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !387, file: !317, line: 763, baseType: !912, size: 64, offset: 6848192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !387, file: !317, line: 765, baseType: !461, size: 64, offset: 6848256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !387, file: !317, line: 766, baseType: !461, size: 64, offset: 6848320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !387, file: !317, line: 768, baseType: !1153, size: 64, offset: 6848384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !867, line: 152, size: 768, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1171, !1172, !1173, !1174, !1175}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !1154, file: !867, line: 154, baseType: !242, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !1154, file: !867, line: 155, baseType: !242, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !1154, file: !867, line: 156, baseType: !242, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !1154, file: !867, line: 157, baseType: !242, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !1154, file: !867, line: 159, baseType: !242, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !1154, file: !867, line: 161, baseType: !266, size: 32, offset: 160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !1154, file: !867, line: 162, baseType: !266, size: 32, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !1154, file: !867, line: 164, baseType: !242, size: 32, offset: 224)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !1154, file: !867, line: 165, baseType: !242, size: 32, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !1154, file: !867, line: 166, baseType: !242, size: 32, offset: 288)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !1154, file: !867, line: 167, baseType: !242, size: 32, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !1154, file: !867, line: 170, baseType: !242, size: 32, offset: 352)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1154, file: !867, line: 172, baseType: !1169, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !867, line: 138, baseType: !872)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !1154, file: !867, line: 173, baseType: !1169, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !1154, file: !867, line: 174, baseType: !1169, size: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1154, file: !867, line: 177, baseType: !242, size: 32, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1154, file: !867, line: 178, baseType: !708, size: 64, offset: 608)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1154, file: !867, line: 179, baseType: !708, size: 64, offset: 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !387, file: !317, line: 769, baseType: !1177, size: 3200, offset: 6848448)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 3200, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 100)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !387, file: !317, line: 771, baseType: !871, size: 64, offset: 6851648)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !387, file: !317, line: 772, baseType: !1182, size: 192, offset: 6851712)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 192, elements: !417)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !387, file: !317, line: 773, baseType: !871, size: 64, offset: 6851904)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !387, file: !317, line: 776, baseType: !1185, size: 64, offset: 6851968)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !317, line: 776, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !387, file: !317, line: 777, baseType: !1188, size: 64, offset: 6852032)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !317, line: 777, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !387, file: !317, line: 779, baseType: !242, size: 32, offset: 6852096)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !387, file: !317, line: 780, baseType: !386, size: 64, offset: 6852160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !387, file: !317, line: 781, baseType: !1193, size: 640, offset: 6852224)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 640, elements: !20)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !387, file: !317, line: 783, baseType: !1195, size: 64, offset: 6852864)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !317, line: 783, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !387, file: !317, line: 784, baseType: !1198, size: 64, offset: 6852928)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !317, line: 784, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !387, file: !317, line: 786, baseType: !1153, size: 64, offset: 6852992)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !387, file: !317, line: 788, baseType: !871, size: 64, offset: 6853056)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !387, file: !317, line: 789, baseType: !242, size: 32, offset: 6853120)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !387, file: !317, line: 790, baseType: !242, size: 32, offset: 6853152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !387, file: !317, line: 792, baseType: !242, size: 32, offset: 6853184)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !387, file: !317, line: 794, baseType: !1206, size: 64, offset: 6853248)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !867, line: 186, size: 33408, elements: !1208)
!1208 = !{!1209, !1212, !1215, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !1207, file: !867, line: 188, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !317, line: 836, baseType: !387)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !1207, file: !867, line: 189, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !317, line: 900, baseType: !391)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1207, file: !867, line: 190, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !867, line: 182, baseType: !1154)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !1207, file: !867, line: 191, baseType: !1216, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !1207, file: !867, line: 192, baseType: !1216, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1207, file: !867, line: 193, baseType: !266, size: 32, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !1207, file: !867, line: 194, baseType: !266, size: 32, offset: 352)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !1207, file: !867, line: 195, baseType: !266, size: 32, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !1207, file: !867, line: 196, baseType: !266, size: 32, offset: 416)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !1207, file: !867, line: 197, baseType: !242, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !1207, file: !867, line: 199, baseType: !242, size: 32, offset: 480)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !1207, file: !867, line: 200, baseType: !1138, size: 32768, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !1207, file: !867, line: 205, baseType: !242, size: 32, offset: 33280)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !1207, file: !867, line: 206, baseType: !242, size: 32, offset: 33312)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !1207, file: !867, line: 208, baseType: !1217, size: 64, offset: 33344)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !387, file: !317, line: 795, baseType: !1206, size: 64, offset: 6853312)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !387, file: !317, line: 796, baseType: !1233, size: 128, offset: 6853376)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 128, elements: !709)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !387, file: !317, line: 800, baseType: !336, size: 72, offset: 6853504)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !387, file: !317, line: 802, baseType: !461, size: 64, offset: 6853632)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !387, file: !317, line: 803, baseType: !461, size: 64, offset: 6853696)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !387, file: !317, line: 804, baseType: !242, size: 32, offset: 6853760)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !387, file: !317, line: 807, baseType: !1239, size: 64, offset: 6853824)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !317, line: 807, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !387, file: !317, line: 810, baseType: !1242, size: 64, offset: 6853888)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !907, !1245, !242, !242, !242, !242, !242, !242}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !387, file: !317, line: 811, baseType: !1247, size: 64, offset: 6853952)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !758, !242, !242, !461, !848}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !387, file: !317, line: 812, baseType: !1251, size: 64, offset: 6854016)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !242, !925, !925}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !387, file: !317, line: 813, baseType: !1255, size: 64, offset: 6854080)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !514, !758, !242, !242, !871}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !387, file: !317, line: 814, baseType: !1255, size: 64, offset: 6854144)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !387, file: !317, line: 815, baseType: !1260, size: 64, offset: 6854208)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !842, !907, !514, !758, !242, !871}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !387, file: !317, line: 816, baseType: !1260, size: 64, offset: 6854272)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !387, file: !317, line: 817, baseType: !1265, size: 64, offset: 6854336)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !907, !514, !758, !242, !242, !871}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !387, file: !317, line: 818, baseType: !1265, size: 64, offset: 6854400)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !387, file: !317, line: 819, baseType: !1270, size: 64, offset: 6854464)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !907, !1245, !242, !242, !242, !242, !242, !242, !242, !242}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !387, file: !317, line: 821, baseType: !1274, size: 64, offset: 6854528)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !317, line: 561, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !317, line: 544, size: 640, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1276, file: !317, line: 546, baseType: !242, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1276, file: !317, line: 547, baseType: !242, size: 32, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1276, file: !317, line: 548, baseType: !242, size: 32, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1276, file: !317, line: 549, baseType: !242, size: 32, offset: 96)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1276, file: !317, line: 550, baseType: !242, size: 32, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1276, file: !317, line: 551, baseType: !242, size: 32, offset: 160)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1276, file: !317, line: 552, baseType: !514, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1276, file: !317, line: 553, baseType: !514, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1276, file: !317, line: 554, baseType: !514, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1276, file: !317, line: 555, baseType: !242, size: 32, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1276, file: !317, line: 556, baseType: !242, size: 32, offset: 416)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1276, file: !317, line: 557, baseType: !242, size: 32, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1276, file: !317, line: 558, baseType: !242, size: 32, offset: 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1276, file: !317, line: 559, baseType: !242, size: 32, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1276, file: !317, line: 560, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !387, file: !317, line: 822, baseType: !242, size: 32, offset: 6854592)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !387, file: !317, line: 823, baseType: !1296, size: 64, offset: 6854656)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !317, line: 823, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !387, file: !317, line: 824, baseType: !242, size: 32, offset: 6854720)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !387, file: !317, line: 825, baseType: !242, size: 32, offset: 6854752)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !387, file: !317, line: 826, baseType: !242, size: 32, offset: 6854784)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !387, file: !317, line: 827, baseType: !242, size: 32, offset: 6854816)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !387, file: !317, line: 829, baseType: !242, size: 32, offset: 6854848)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !387, file: !317, line: 830, baseType: !242, size: 32, offset: 6854880)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !387, file: !317, line: 831, baseType: !242, size: 32, offset: 6854912)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !387, file: !317, line: 835, baseType: !475, size: 64, offset: 6854976)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !383, file: !317, line: 344, baseType: !390, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !383, file: !317, line: 345, baseType: !475, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !383, file: !317, line: 346, baseType: !527, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !383, file: !317, line: 347, baseType: !242, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !383, file: !317, line: 350, baseType: !1206, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !383, file: !317, line: 353, baseType: !242, size: 32, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !383, file: !317, line: 354, baseType: !242, size: 32, offset: 416)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !383, file: !317, line: 355, baseType: !242, size: 32, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !383, file: !317, line: 356, baseType: !242, size: 32, offset: 480)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !383, file: !317, line: 357, baseType: !242, size: 32, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !383, file: !317, line: 359, baseType: !242, size: 32, offset: 544)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !383, file: !317, line: 360, baseType: !242, size: 32, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !383, file: !317, line: 361, baseType: !242, size: 32, offset: 608)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !383, file: !317, line: 365, baseType: !266, size: 32, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !383, file: !317, line: 366, baseType: !242, size: 32, offset: 672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !383, file: !317, line: 368, baseType: !708, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !383, file: !317, line: 372, baseType: !242, size: 32, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !383, file: !317, line: 378, baseType: !266, size: 32, offset: 800)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !383, file: !317, line: 379, baseType: !242, size: 32, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !383, file: !317, line: 387, baseType: !266, size: 32, offset: 864)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !383, file: !317, line: 388, baseType: !266, size: 32, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !383, file: !317, line: 389, baseType: !314, size: 16, offset: 928)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !383, file: !317, line: 396, baseType: !242, size: 32, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !383, file: !317, line: 397, baseType: !242, size: 32, offset: 992)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !383, file: !317, line: 400, baseType: !242, size: 32, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !383, file: !317, line: 401, baseType: !242, size: 32, offset: 1056)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !383, file: !317, line: 402, baseType: !708, size: 64, offset: 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !383, file: !317, line: 406, baseType: !242, size: 32, offset: 1152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !383, file: !317, line: 407, baseType: !242, size: 32, offset: 1184)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !383, file: !317, line: 408, baseType: !242, size: 32, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !383, file: !317, line: 409, baseType: !242, size: 32, offset: 1248)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !383, file: !317, line: 410, baseType: !242, size: 32, offset: 1280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !383, file: !317, line: 411, baseType: !242, size: 32, offset: 1312)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !383, file: !317, line: 412, baseType: !242, size: 32, offset: 1344)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !383, file: !317, line: 413, baseType: !266, size: 32, offset: 1376)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !383, file: !317, line: 414, baseType: !266, size: 32, offset: 1408)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !383, file: !317, line: 415, baseType: !309, size: 8, offset: 1440)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !383, file: !317, line: 416, baseType: !312, size: 32, offset: 1472)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !383, file: !317, line: 417, baseType: !242, size: 32, offset: 1504)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !383, file: !317, line: 418, baseType: !242, size: 32, offset: 1536)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !383, file: !317, line: 419, baseType: !242, size: 32, offset: 1568)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !383, file: !317, line: 420, baseType: !242, size: 32, offset: 1600)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !383, file: !317, line: 421, baseType: !242, size: 32, offset: 1632)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !383, file: !317, line: 422, baseType: !242, size: 32, offset: 1664)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !383, file: !317, line: 423, baseType: !242, size: 32, offset: 1696)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !383, file: !317, line: 426, baseType: !242, size: 32, offset: 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !383, file: !317, line: 427, baseType: !242, size: 32, offset: 1760)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !383, file: !317, line: 428, baseType: !242, size: 32, offset: 1792)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !383, file: !317, line: 429, baseType: !242, size: 32, offset: 1824)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !383, file: !317, line: 430, baseType: !242, size: 32, offset: 1856)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !383, file: !317, line: 431, baseType: !242, size: 32, offset: 1888)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !383, file: !317, line: 432, baseType: !242, size: 32, offset: 1920)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !383, file: !317, line: 433, baseType: !242, size: 32, offset: 1952)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !383, file: !317, line: 434, baseType: !315, size: 64, offset: 1984)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !383, file: !317, line: 436, baseType: !1361, size: 48, offset: 2048)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 48, elements: !499)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !383, file: !317, line: 437, baseType: !1363, size: 384, offset: 2112)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 384, elements: !499)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !383, file: !317, line: 440, baseType: !1365, size: 64, offset: 2496)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !317, line: 324, baseType: !1006)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !383, file: !317, line: 441, baseType: !1368, size: 64, offset: 2560)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !317, line: 153, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 145, size: 2912, elements: !1371)
!1371 = !{!1372, !1382, !1385, !1389, !1392, !1394}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !1370, file: !317, line: 147, baseType: !1373, size: 1056)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 1056, elements: !1380)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !317, line: 122, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 117, size: 32, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1375, file: !317, line: 119, baseType: !910, size: 16)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1375, file: !317, line: 120, baseType: !311, size: 8, offset: 16)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1375, file: !317, line: 121, baseType: !311, size: 8, offset: 24)
!1380 = !{!418, !1381}
!1381 = !DISubrange(count: 11)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !1370, file: !317, line: 148, baseType: !1383, size: 576, offset: 1056)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 576, elements: !1384)
!1384 = !{!347, !338}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !1370, file: !317, line: 149, baseType: !1386, size: 640, offset: 1632)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 640, elements: !1387)
!1387 = !{!347, !1388}
!1388 = !DISubrange(count: 10)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !1370, file: !317, line: 150, baseType: !1390, size: 384, offset: 2272)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 384, elements: !1391)
!1391 = !{!347, !493}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !1370, file: !317, line: 151, baseType: !1393, size: 128, offset: 2656)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 128, elements: !819)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !1370, file: !317, line: 152, baseType: !1393, size: 128, offset: 2784)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !383, file: !317, line: 442, baseType: !1396, size: 64, offset: 2624)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !317, line: 175, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 164, size: 52768, elements: !1399)
!1399 = !{!1400, !1402, !1404, !1405, !1408, !1411, !1414, !1415, !1419}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1398, file: !317, line: 166, baseType: !1401, size: 96)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 96, elements: !417)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1398, file: !317, line: 167, baseType: !1403, size: 64, offset: 96)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 64, elements: !709)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1398, file: !317, line: 168, baseType: !1393, size: 128, offset: 160)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1398, file: !317, line: 169, baseType: !1406, size: 384, offset: 288)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 384, elements: !1407)
!1407 = !{!418, !803}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1398, file: !317, line: 170, baseType: !1409, size: 2816, offset: 672)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 2816, elements: !1410)
!1410 = !{!6, !803}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1398, file: !317, line: 171, baseType: !1412, size: 21120, offset: 3488)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 21120, elements: !1413)
!1413 = !{!347, !6, !11}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1398, file: !317, line: 172, baseType: !1412, size: 21120, offset: 24608)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1398, file: !317, line: 173, baseType: !1416, size: 3520, offset: 45728)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 3520, elements: !1417)
!1417 = !{!6, !1418}
!1418 = !DISubrange(count: 5)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1398, file: !317, line: 174, baseType: !1416, size: 3520, offset: 49248)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !383, file: !317, line: 444, baseType: !1421, size: 6144, offset: 2688)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 6144, elements: !1422)
!1422 = !{!493, !56}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !383, file: !317, line: 446, baseType: !708, size: 64, offset: 8832)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !383, file: !317, line: 447, baseType: !1425, size: 128, offset: 8896)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 128, elements: !709)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !383, file: !317, line: 448, baseType: !1425, size: 128, offset: 9024)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !383, file: !317, line: 449, baseType: !1425, size: 128, offset: 9152)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !383, file: !317, line: 452, baseType: !1425, size: 128, offset: 9280)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !383, file: !317, line: 454, baseType: !242, size: 32, offset: 9408)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !383, file: !317, line: 455, baseType: !242, size: 32, offset: 9440)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !383, file: !317, line: 456, baseType: !242, size: 32, offset: 9472)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !383, file: !317, line: 458, baseType: !1433, size: 256, offset: 9504)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !317, line: 337, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !317, line: 327, size: 256, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1434, file: !317, line: 329, baseType: !266, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1434, file: !317, line: 330, baseType: !266, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1434, file: !317, line: 331, baseType: !266, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1434, file: !317, line: 332, baseType: !266, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1434, file: !317, line: 333, baseType: !266, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1434, file: !317, line: 334, baseType: !266, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1434, file: !317, line: 335, baseType: !266, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1434, file: !317, line: 336, baseType: !266, size: 32, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !383, file: !317, line: 461, baseType: !314, size: 16, offset: 9760)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !383, file: !317, line: 462, baseType: !314, size: 16, offset: 9776)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !383, file: !317, line: 463, baseType: !314, size: 16, offset: 9792)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !383, file: !317, line: 465, baseType: !242, size: 32, offset: 9824)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !383, file: !317, line: 467, baseType: !242, size: 32, offset: 9856)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !383, file: !317, line: 468, baseType: !242, size: 32, offset: 9888)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !383, file: !317, line: 470, baseType: !242, size: 32, offset: 9920)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !383, file: !317, line: 471, baseType: !912, size: 64, offset: 9984)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !383, file: !317, line: 472, baseType: !912, size: 64, offset: 10048)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !383, file: !317, line: 473, baseType: !655, size: 64, offset: 10112)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !383, file: !317, line: 474, baseType: !655, size: 64, offset: 10176)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !383, file: !317, line: 475, baseType: !655, size: 64, offset: 10240)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !383, file: !317, line: 477, baseType: !1457, size: 512, offset: 10304)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 512, elements: !332)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !383, file: !317, line: 479, baseType: !907, size: 64, offset: 10816)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !383, file: !317, line: 480, baseType: !907, size: 64, offset: 10880)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !383, file: !317, line: 481, baseType: !642, size: 64, offset: 10944)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !383, file: !317, line: 482, baseType: !907, size: 64, offset: 11008)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !383, file: !317, line: 483, baseType: !907, size: 64, offset: 11072)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !383, file: !317, line: 486, baseType: !1464, size: 9216, offset: 11136)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 9216, elements: !1465)
!1465 = !{!418, !493, !803, !803}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !383, file: !317, line: 487, baseType: !1464, size: 9216, offset: 20352)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !383, file: !317, line: 488, baseType: !1468, size: 36864, offset: 29568)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 36864, elements: !1469)
!1469 = !{!418, !493, !507, !507}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !383, file: !317, line: 489, baseType: !1468, size: 36864, offset: 66432)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !383, file: !317, line: 491, baseType: !1472, size: 768, offset: 103296)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 768, elements: !488)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !383, file: !317, line: 494, baseType: !1474, size: 2048, offset: 104064)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 2048, elements: !165)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !383, file: !317, line: 495, baseType: !242, size: 32, offset: 106112)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !383, file: !317, line: 496, baseType: !242, size: 32, offset: 106144)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !383, file: !317, line: 500, baseType: !313, size: 16, offset: 106176)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !383, file: !317, line: 501, baseType: !313, size: 16, offset: 106192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !383, file: !317, line: 503, baseType: !313, size: 16, offset: 106208)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !383, file: !317, line: 504, baseType: !313, size: 16, offset: 106224)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !383, file: !317, line: 505, baseType: !655, size: 64, offset: 106240)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !383, file: !317, line: 506, baseType: !655, size: 64, offset: 106304)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !383, file: !317, line: 507, baseType: !1484, size: 64, offset: 106368)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !383, file: !317, line: 508, baseType: !314, size: 16, offset: 106432)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !383, file: !317, line: 509, baseType: !314, size: 16, offset: 106448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !383, file: !317, line: 512, baseType: !242, size: 32, offset: 106464)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !383, file: !317, line: 513, baseType: !242, size: 32, offset: 106496)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !383, file: !317, line: 514, baseType: !1490, size: 64, offset: 106560)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !383, file: !317, line: 515, baseType: !1490, size: 64, offset: 106624)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !383, file: !317, line: 520, baseType: !242, size: 32, offset: 106688)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !383, file: !317, line: 521, baseType: !1494, size: 544, offset: 106720)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 544, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 17)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !383, file: !317, line: 523, baseType: !1498, size: 64, offset: 107264)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !758}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !383, file: !317, line: 524, baseType: !1502, size: 64, offset: 107328)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!242, !758, !842, !907, !871}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !383, file: !317, line: 525, baseType: !1506, size: 64, offset: 107392)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!242, !386, !390}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !383, file: !317, line: 526, baseType: !1510, size: 64, offset: 107456)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!242, !763, !242}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !383, file: !317, line: 527, baseType: !1498, size: 64, offset: 107520)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !383, file: !317, line: 528, baseType: !1498, size: 64, offset: 107584)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !383, file: !317, line: 529, baseType: !1498, size: 64, offset: 107648)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !383, file: !317, line: 530, baseType: !1517, size: 64, offset: 107712)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !763}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !383, file: !317, line: 531, baseType: !1498, size: 64, offset: 107776)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !383, file: !317, line: 532, baseType: !998, size: 64, offset: 107840)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !383, file: !317, line: 533, baseType: !998, size: 64, offset: 107904)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !383, file: !317, line: 534, baseType: !1498, size: 64, offset: 107968)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !383, file: !317, line: 535, baseType: !242, size: 32, offset: 108032)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !383, file: !317, line: 536, baseType: !758, size: 64, offset: 108096)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !383, file: !317, line: 537, baseType: !871, size: 64, offset: 108160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !383, file: !317, line: 538, baseType: !642, size: 64, offset: 108224)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !383, file: !317, line: 539, baseType: !745, size: 64, offset: 108288)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !383, file: !317, line: 540, baseType: !665, size: 64, offset: 108352)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !383, file: !317, line: 541, baseType: !1531, size: 768, offset: 108416)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 768, elements: !492)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538}
!1533 = !DILocalVariable(name: "currSlice", arg: 1, scope: !378, file: !2, line: 76, type: !381)
!1534 = !DILocalVariable(name: "p_Vid", scope: !378, file: !2, line: 78, type: !1210)
!1535 = !DILocalVariable(name: "dP_nr", scope: !378, file: !2, line: 79, type: !309)
!1536 = !DILocalVariable(name: "partition", scope: !378, file: !2, line: 80, type: !1365)
!1537 = !DILocalVariable(name: "currStream", scope: !378, file: !2, line: 81, type: !1009)
!1538 = !DILocalVariable(name: "tmp", scope: !378, file: !2, line: 82, type: !242)
!1539 = !DILocation(line: 0, scope: !378)
!1540 = !DILocation(line: 78, column: 39, scope: !378)
!1541 = !DILocation(line: 80, column: 43, scope: !378)
!1542 = !DILocation(line: 81, column: 38, scope: !378)
!1543 = !DILocation(line: 84, column: 42, scope: !378)
!1544 = !DILocation(line: 84, column: 3, scope: !378)
!1545 = !DILocation(line: 84, column: 10, scope: !378)
!1546 = !DILocation(line: 84, column: 18, scope: !378)
!1547 = !DILocation(line: 87, column: 28, scope: !378)
!1548 = !DILocation(line: 87, column: 14, scope: !378)
!1549 = !DILocation(line: 87, column: 26, scope: !378)
!1550 = !DILocation(line: 89, column: 9, scope: !378)
!1551 = !DILocation(line: 91, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !378, file: !2, line: 91, column: 7)
!1553 = !DILocation(line: 91, column: 7, scope: !378)
!1554 = !DILocation(line: 93, column: 28, scope: !378)
!1555 = !DILocation(line: 93, column: 39, scope: !378)
!1556 = !DILocation(line: 93, column: 10, scope: !378)
!1557 = !DILocation(line: 93, column: 15, scope: !378)
!1558 = !DILocation(line: 95, column: 37, scope: !378)
!1559 = !DILocation(line: 95, column: 14, scope: !378)
!1560 = !DILocation(line: 95, column: 35, scope: !378)
!1561 = !DILocation(line: 97, column: 14, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !378, file: !2, line: 97, column: 7)
!1563 = !DILocation(line: 97, column: 7, scope: !1562)
!1564 = !DILocation(line: 97, column: 7, scope: !378)
!1565 = !DILocation(line: 98, column: 34, scope: !1562)
!1566 = !DILocation(line: 98, column: 5, scope: !1562)
!1567 = !DILocation(line: 0, scope: !1562)
!1568 = !DILocation(line: 102, column: 10, scope: !378)
!1569 = !DILocation(line: 102, column: 17, scope: !378)
!1570 = !DILocation(line: 102, column: 3, scope: !378)
!1571 = !DISubprogram(name: "ue_v", scope: !1572, file: !1572, line: 71, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!242, !1575, !1009}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1576 = !DISubprogram(name: "u_v", scope: !1572, file: !1572, line: 73, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!242, !242, !1575, !1009}
!1579 = distinct !DISubprogram(name: "RestOfSliceHeader", scope: !2, file: !2, line: 113, type: !379, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1581 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1579, file: !2, line: 113, type: !381)
!1582 = !DILocalVariable(name: "p_Vid", scope: !1579, file: !2, line: 115, type: !1210)
!1583 = !DILocalVariable(name: "p_Inp", scope: !1579, file: !2, line: 116, type: !1213)
!1584 = !DILocalVariable(name: "active_sps", scope: !1579, file: !2, line: 117, type: !527)
!1585 = !DILocalVariable(name: "dP_nr", scope: !1579, file: !2, line: 119, type: !309)
!1586 = !DILocalVariable(name: "partition", scope: !1579, file: !2, line: 120, type: !1365)
!1587 = !DILocalVariable(name: "currStream", scope: !1579, file: !2, line: 121, type: !1009)
!1588 = !DILocalVariable(name: "val", scope: !1579, file: !2, line: 123, type: !242)
!1589 = !DILocalVariable(name: "len", scope: !1579, file: !2, line: 123, type: !242)
!1590 = !DILocation(line: 0, scope: !1579)
!1591 = !DILocation(line: 115, column: 39, scope: !1579)
!1592 = !DILocation(line: 116, column: 39, scope: !1579)
!1593 = !DILocation(line: 117, column: 49, scope: !1579)
!1594 = !DILocation(line: 120, column: 43, scope: !1579)
!1595 = !DILocation(line: 121, column: 38, scope: !1579)
!1596 = !DILocation(line: 125, column: 43, scope: !1579)
!1597 = !DILocation(line: 125, column: 69, scope: !1579)
!1598 = !DILocation(line: 125, column: 26, scope: !1579)
!1599 = !DILocation(line: 125, column: 14, scope: !1579)
!1600 = !DILocation(line: 125, column: 24, scope: !1579)
!1601 = !DILocation(line: 128, column: 17, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 128, column: 6)
!1603 = !DILocation(line: 128, column: 6, scope: !1602)
!1604 = !DILocation(line: 128, column: 6, scope: !1579)
!1605 = !DILocation(line: 130, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 129, column: 3)
!1607 = !DILocation(line: 130, column: 26, scope: !1606)
!1608 = !DILocation(line: 132, column: 12, scope: !1606)
!1609 = !DILocation(line: 132, column: 29, scope: !1606)
!1610 = !DILocation(line: 134, column: 3, scope: !1606)
!1611 = !DILocation(line: 136, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 136, column: 7)
!1613 = !DILocation(line: 136, column: 7, scope: !1612)
!1614 = !DILocation(line: 136, column: 7, scope: !1579)
!1615 = !DILocation(line: 138, column: 12, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 137, column: 3)
!1617 = !DILocation(line: 138, column: 22, scope: !1616)
!1618 = !DILocation(line: 139, column: 16, scope: !1616)
!1619 = !DILocation(line: 139, column: 30, scope: !1616)
!1620 = !DILocation(line: 140, column: 3, scope: !1616)
!1621 = !DILocation(line: 144, column: 33, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 142, column: 3)
!1623 = !DILocation(line: 144, column: 16, scope: !1622)
!1624 = !DILocation(line: 144, column: 31, scope: !1622)
!1625 = !DILocation(line: 145, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 145, column: 9)
!1627 = !DILocation(line: 0, scope: !1626)
!1628 = !DILocation(line: 145, column: 9, scope: !1622)
!1629 = !DILocation(line: 148, column: 45, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 146, column: 5)
!1631 = !DILocation(line: 148, column: 38, scope: !1630)
!1632 = !DILocation(line: 148, column: 36, scope: !1630)
!1633 = !DILocation(line: 149, column: 26, scope: !1630)
!1634 = !DILocation(line: 149, column: 14, scope: !1630)
!1635 = !DILocation(line: 149, column: 24, scope: !1630)
!1636 = !DILocation(line: 150, column: 5, scope: !1630)
!1637 = !DILocation(line: 153, column: 14, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 152, column: 5)
!1639 = !DILocation(line: 153, column: 24, scope: !1638)
!1640 = !DILocation(line: 154, column: 36, scope: !1638)
!1641 = !DILocation(line: 158, column: 52, scope: !1579)
!1642 = !DILocation(line: 158, column: 14, scope: !1579)
!1643 = !DILocation(line: 158, column: 24, scope: !1579)
!1644 = !DILocation(line: 160, column: 47, scope: !1579)
!1645 = !DILocation(line: 160, column: 35, scope: !1579)
!1646 = !DILocation(line: 160, column: 76, scope: !1579)
!1647 = !DILocation(line: 160, column: 91, scope: !1579)
!1648 = !DILocation(line: 160, column: 105, scope: !1579)
!1649 = !DILocation(line: 160, column: 14, scope: !1579)
!1650 = !DILocation(line: 160, column: 32, scope: !1579)
!1651 = !DILocation(line: 170, column: 18, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 170, column: 7)
!1653 = !DILocation(line: 170, column: 7, scope: !1652)
!1654 = !DILocation(line: 170, column: 7, scope: !1579)
!1655 = !DILocation(line: 172, column: 29, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 171, column: 3)
!1657 = !DILocation(line: 172, column: 16, scope: !1656)
!1658 = !DILocation(line: 172, column: 27, scope: !1656)
!1659 = !DILocation(line: 173, column: 3, scope: !1656)
!1660 = !DILocation(line: 175, column: 19, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 175, column: 7)
!1662 = !DILocation(line: 175, column: 38, scope: !1661)
!1663 = !DILocation(line: 175, column: 7, scope: !1579)
!1664 = !DILocation(line: 177, column: 52, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 176, column: 3)
!1666 = !DILocation(line: 177, column: 86, scope: !1665)
!1667 = !DILocation(line: 177, column: 36, scope: !1665)
!1668 = !DILocation(line: 177, column: 16, scope: !1665)
!1669 = !DILocation(line: 177, column: 34, scope: !1665)
!1670 = !DILocation(line: 178, column: 16, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 178, column: 9)
!1672 = !DILocation(line: 178, column: 28, scope: !1671)
!1673 = !DILocation(line: 178, column: 74, scope: !1671)
!1674 = !DILocation(line: 178, column: 80, scope: !1671)
!1675 = !DILocation(line: 178, column: 96, scope: !1671)
!1676 = !DILocation(line: 178, column: 85, scope: !1671)
!1677 = !DILocation(line: 178, column: 9, scope: !1665)
!1678 = !DILocation(line: 179, column: 47, scope: !1671)
!1679 = !DILocation(line: 179, column: 7, scope: !1671)
!1680 = !DILocation(line: 0, scope: !1671)
!1681 = !DILocation(line: 184, column: 19, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 184, column: 7)
!1683 = !DILocation(line: 184, column: 38, scope: !1682)
!1684 = !DILocation(line: 184, column: 7, scope: !1579)
!1685 = !DILocation(line: 186, column: 23, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 186, column: 10)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 185, column: 3)
!1688 = !DILocation(line: 186, column: 11, scope: !1686)
!1689 = !DILocation(line: 186, column: 10, scope: !1687)
!1690 = !DILocation(line: 188, column: 45, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 187, column: 5)
!1692 = !DILocation(line: 188, column: 18, scope: !1691)
!1693 = !DILocation(line: 188, column: 43, scope: !1691)
!1694 = !DILocation(line: 189, column: 18, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 189, column: 11)
!1696 = !DILocation(line: 189, column: 30, scope: !1695)
!1697 = !DILocation(line: 189, column: 76, scope: !1695)
!1698 = !DILocation(line: 189, column: 83, scope: !1695)
!1699 = !DILocation(line: 189, column: 99, scope: !1695)
!1700 = !DILocation(line: 189, column: 88, scope: !1695)
!1701 = !DILocation(line: 189, column: 11, scope: !1691)
!1702 = !DILocation(line: 190, column: 47, scope: !1695)
!1703 = !DILocation(line: 190, column: 9, scope: !1695)
!1704 = !DILocation(line: 196, column: 18, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 195, column: 5)
!1706 = !DILocation(line: 196, column: 43, scope: !1705)
!1707 = !DILocation(line: 0, scope: !1686)
!1708 = !DILocation(line: 202, column: 14, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 202, column: 7)
!1710 = !DILocation(line: 202, column: 26, scope: !1709)
!1711 = !DILocation(line: 202, column: 7, scope: !1709)
!1712 = !DILocation(line: 202, column: 7, scope: !1579)
!1713 = !DILocation(line: 204, column: 36, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 203, column: 3)
!1715 = !DILocation(line: 204, column: 16, scope: !1714)
!1716 = !DILocation(line: 204, column: 34, scope: !1714)
!1717 = !DILocation(line: 205, column: 3, scope: !1714)
!1718 = !DILocation(line: 207, column: 17, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 207, column: 6)
!1720 = !DILocation(line: 207, column: 28, scope: !1719)
!1721 = !DILocation(line: 207, column: 6, scope: !1579)
!1722 = !DILocation(line: 209, column: 46, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 208, column: 3)
!1724 = !DILocation(line: 209, column: 16, scope: !1723)
!1725 = !DILocation(line: 209, column: 44, scope: !1723)
!1726 = !DILocation(line: 210, column: 3, scope: !1723)
!1727 = !DILocation(line: 212, column: 50, scope: !1579)
!1728 = !DILocation(line: 212, column: 62, scope: !1579)
!1729 = !DILocation(line: 212, column: 91, scope: !1579)
!1730 = !DILocation(line: 212, column: 14, scope: !1579)
!1731 = !DILocation(line: 212, column: 41, scope: !1579)
!1732 = !DILocation(line: 213, column: 50, scope: !1579)
!1733 = !DILocation(line: 213, column: 62, scope: !1579)
!1734 = !DILocation(line: 213, column: 91, scope: !1579)
!1735 = !DILocation(line: 213, column: 3, scope: !1579)
!1736 = !DILocation(line: 213, column: 41, scope: !1579)
!1737 = !DILocation(line: 215, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 215, column: 6)
!1739 = !DILocation(line: 215, column: 27, scope: !1738)
!1740 = !DILocation(line: 217, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 216, column: 3)
!1742 = !DILocation(line: 218, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 218, column: 9)
!1744 = !DILocation(line: 218, column: 9, scope: !1741)
!1745 = !DILocation(line: 220, column: 51, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 219, column: 5)
!1747 = !DILocation(line: 220, column: 49, scope: !1746)
!1748 = !DILocation(line: 220, column: 45, scope: !1746)
!1749 = !DILocation(line: 222, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 222, column: 10)
!1751 = !DILocation(line: 222, column: 21, scope: !1750)
!1752 = !DILocation(line: 222, column: 10, scope: !1746)
!1753 = !DILocation(line: 224, column: 53, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 223, column: 7)
!1755 = !DILocation(line: 224, column: 51, scope: !1754)
!1756 = !DILocation(line: 224, column: 47, scope: !1754)
!1757 = !DILocation(line: 225, column: 7, scope: !1754)
!1758 = !DILocation(line: 228, column: 18, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 228, column: 7)
!1760 = !DILocation(line: 228, column: 28, scope: !1759)
!1761 = !DILocation(line: 228, column: 7, scope: !1579)
!1762 = !DILocation(line: 230, column: 43, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 229, column: 3)
!1764 = !DILocation(line: 231, column: 3, scope: !1763)
!1765 = !DILocation(line: 234, column: 18, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 234, column: 7)
!1767 = !DILocation(line: 234, column: 42, scope: !1766)
!1768 = !DILocation(line: 0, scope: !1766)
!1769 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1770, file: !2, line: 430, type: !381)
!1770 = distinct !DISubprogram(name: "ref_pic_list_mvc_modification", scope: !2, file: !2, line: 430, type: !1771, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !381}
!1773 = !{!1769, !1774, !1775, !1776, !1777, !1778, !1779}
!1774 = !DILocalVariable(name: "p_Vid", scope: !1770, file: !2, line: 432, type: !1210)
!1775 = !DILocalVariable(name: "dP_nr", scope: !1770, file: !2, line: 433, type: !309)
!1776 = !DILocalVariable(name: "partition", scope: !1770, file: !2, line: 434, type: !1365)
!1777 = !DILocalVariable(name: "currStream", scope: !1770, file: !2, line: 435, type: !1009)
!1778 = !DILocalVariable(name: "i", scope: !1770, file: !2, line: 436, type: !242)
!1779 = !DILocalVariable(name: "val", scope: !1770, file: !2, line: 436, type: !242)
!1780 = !DILocation(line: 0, scope: !1770, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 235, column: 5, scope: !1766)
!1782 = !DILocation(line: 440, column: 19, scope: !1783, inlinedAt: !1781)
!1783 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 440, column: 6)
!1784 = !DILocation(line: 440, column: 35, scope: !1783, inlinedAt: !1781)
!1785 = !DILocation(line: 442, column: 59, scope: !1786, inlinedAt: !1781)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 441, column: 2)
!1787 = !DILocation(line: 442, column: 20, scope: !1786, inlinedAt: !1781)
!1788 = !DILocation(line: 442, column: 57, scope: !1786, inlinedAt: !1781)
!1789 = !DILocation(line: 444, column: 7, scope: !1790, inlinedAt: !1781)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 444, column: 7)
!1791 = !DILocation(line: 444, column: 7, scope: !1786, inlinedAt: !1781)
!1792 = !DILocation(line: 447, column: 4, scope: !1793, inlinedAt: !1781)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 445, column: 3)
!1794 = !DILocation(line: 0, scope: !1793, inlinedAt: !1781)
!1795 = !DILocation(line: 449, column: 62, scope: !1796, inlinedAt: !1781)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 448, column: 4)
!1797 = !DILocation(line: 449, column: 11, scope: !1796, inlinedAt: !1781)
!1798 = !DILocation(line: 449, column: 60, scope: !1796, inlinedAt: !1781)
!1799 = !DILocation(line: 450, column: 16, scope: !1800, inlinedAt: !1781)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 450, column: 9)
!1801 = !DILocation(line: 456, column: 13, scope: !1802, inlinedAt: !1781)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 456, column: 10)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 455, column: 5)
!1804 = !DILocation(line: 456, column: 10, scope: !1803, inlinedAt: !1781)
!1805 = !DILocation(line: 460, column: 27, scope: !1806, inlinedAt: !1781)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 460, column: 20)
!1807 = !DILocation(line: 0, scope: !1800, inlinedAt: !1781)
!1808 = !DILocation(line: 465, column: 6, scope: !1796, inlinedAt: !1781)
!1809 = !DILocation(line: 467, column: 17, scope: !1793, inlinedAt: !1781)
!1810 = !DILocation(line: 467, column: 4, scope: !1796, inlinedAt: !1781)
!1811 = distinct !{!1811, !1792, !1812}
!1812 = !DILocation(line: 467, column: 21, scope: !1793, inlinedAt: !1781)
!1813 = !DILocation(line: 471, column: 14, scope: !1814, inlinedAt: !1781)
!1814 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 471, column: 6)
!1815 = !DILocation(line: 471, column: 19, scope: !1814, inlinedAt: !1781)
!1816 = !DILocation(line: 471, column: 24, scope: !1814, inlinedAt: !1781)
!1817 = !DILocation(line: 471, column: 6, scope: !1770, inlinedAt: !1781)
!1818 = !DILocation(line: 473, column: 59, scope: !1819, inlinedAt: !1781)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 472, column: 2)
!1820 = !DILocation(line: 473, column: 9, scope: !1819, inlinedAt: !1781)
!1821 = !DILocation(line: 473, column: 57, scope: !1819, inlinedAt: !1781)
!1822 = !DILocation(line: 475, column: 7, scope: !1823, inlinedAt: !1781)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 475, column: 7)
!1824 = !DILocation(line: 475, column: 7, scope: !1819, inlinedAt: !1781)
!1825 = !DILocation(line: 478, column: 4, scope: !1826, inlinedAt: !1781)
!1826 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 476, column: 3)
!1827 = !DILocation(line: 0, scope: !1826, inlinedAt: !1781)
!1828 = !DILocation(line: 480, column: 62, scope: !1829, inlinedAt: !1781)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 479, column: 4)
!1830 = !DILocation(line: 480, column: 11, scope: !1829, inlinedAt: !1781)
!1831 = !DILocation(line: 480, column: 60, scope: !1829, inlinedAt: !1781)
!1832 = !DILocation(line: 481, column: 16, scope: !1833, inlinedAt: !1781)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 481, column: 9)
!1834 = !DILocation(line: 487, column: 13, scope: !1835, inlinedAt: !1781)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 487, column: 10)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 486, column: 5)
!1837 = !DILocation(line: 487, column: 10, scope: !1836, inlinedAt: !1781)
!1838 = !DILocation(line: 491, column: 27, scope: !1839, inlinedAt: !1781)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 491, column: 20)
!1840 = !DILocation(line: 0, scope: !1833, inlinedAt: !1781)
!1841 = !DILocation(line: 496, column: 6, scope: !1829, inlinedAt: !1781)
!1842 = !DILocation(line: 498, column: 17, scope: !1826, inlinedAt: !1781)
!1843 = !DILocation(line: 498, column: 4, scope: !1829, inlinedAt: !1781)
!1844 = distinct !{!1844, !1825, !1845}
!1845 = !DILocation(line: 498, column: 21, scope: !1826, inlinedAt: !1781)
!1846 = !DILocation(line: 503, column: 17, scope: !1847, inlinedAt: !1781)
!1847 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 503, column: 6)
!1848 = !DILocation(line: 503, column: 6, scope: !1847, inlinedAt: !1781)
!1849 = !DILocation(line: 503, column: 35, scope: !1847, inlinedAt: !1781)
!1850 = !DILocation(line: 503, column: 46, scope: !1847, inlinedAt: !1781)
!1851 = !DILocation(line: 503, column: 51, scope: !1847, inlinedAt: !1781)
!1852 = !DILocation(line: 503, column: 6, scope: !1770, inlinedAt: !1781)
!1853 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1854, file: !2, line: 352, type: !381)
!1854 = distinct !DISubprogram(name: "ref_pic_list_reordering", scope: !2, file: !2, line: 352, type: !1771, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1855)
!1855 = !{!1853, !1856, !1857, !1858, !1859, !1860, !1861}
!1856 = !DILocalVariable(name: "p_Vid", scope: !1854, file: !2, line: 354, type: !1210)
!1857 = !DILocalVariable(name: "dP_nr", scope: !1854, file: !2, line: 355, type: !309)
!1858 = !DILocalVariable(name: "partition", scope: !1854, file: !2, line: 356, type: !1365)
!1859 = !DILocalVariable(name: "currStream", scope: !1854, file: !2, line: 357, type: !1009)
!1860 = !DILocalVariable(name: "i", scope: !1854, file: !2, line: 358, type: !242)
!1861 = !DILocalVariable(name: "val", scope: !1854, file: !2, line: 358, type: !242)
!1862 = !DILocation(line: 0, scope: !1854, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 237, column: 5, scope: !1766)
!1864 = !DILocation(line: 362, column: 28, scope: !1865, inlinedAt: !1863)
!1865 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 362, column: 7)
!1866 = !DILocation(line: 364, column: 61, scope: !1867, inlinedAt: !1863)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 363, column: 3)
!1868 = !DILocation(line: 364, column: 22, scope: !1867, inlinedAt: !1863)
!1869 = !DILocation(line: 364, column: 59, scope: !1867, inlinedAt: !1863)
!1870 = !DILocation(line: 366, column: 9, scope: !1871, inlinedAt: !1863)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 366, column: 9)
!1872 = !DILocation(line: 366, column: 9, scope: !1867, inlinedAt: !1863)
!1873 = !DILocation(line: 369, column: 7, scope: !1874, inlinedAt: !1863)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 367, column: 5)
!1875 = !DILocation(line: 0, scope: !1874, inlinedAt: !1863)
!1876 = !DILocation(line: 371, column: 66, scope: !1877, inlinedAt: !1863)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 370, column: 7)
!1878 = !DILocation(line: 371, column: 15, scope: !1877, inlinedAt: !1863)
!1879 = !DILocation(line: 371, column: 64, scope: !1877, inlinedAt: !1863)
!1880 = !DILocation(line: 372, column: 20, scope: !1881, inlinedAt: !1863)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 372, column: 13)
!1882 = !DILocation(line: 378, column: 18, scope: !1883, inlinedAt: !1863)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 378, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 377, column: 9)
!1885 = !DILocation(line: 378, column: 15, scope: !1884, inlinedAt: !1863)
!1886 = !DILocation(line: 0, scope: !1881, inlinedAt: !1863)
!1887 = !DILocation(line: 383, column: 10, scope: !1877, inlinedAt: !1863)
!1888 = !DILocation(line: 385, column: 20, scope: !1874, inlinedAt: !1863)
!1889 = !DILocation(line: 385, column: 7, scope: !1877, inlinedAt: !1863)
!1890 = distinct !{!1890, !1873, !1891}
!1891 = !DILocation(line: 385, column: 24, scope: !1874, inlinedAt: !1863)
!1892 = !DILocation(line: 389, column: 14, scope: !1893, inlinedAt: !1863)
!1893 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 389, column: 7)
!1894 = !DILocation(line: 389, column: 18, scope: !1893, inlinedAt: !1863)
!1895 = !DILocation(line: 389, column: 7, scope: !1854, inlinedAt: !1863)
!1896 = !DILocation(line: 391, column: 61, scope: !1897, inlinedAt: !1863)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 390, column: 3)
!1898 = !DILocation(line: 391, column: 11, scope: !1897, inlinedAt: !1863)
!1899 = !DILocation(line: 391, column: 59, scope: !1897, inlinedAt: !1863)
!1900 = !DILocation(line: 393, column: 9, scope: !1901, inlinedAt: !1863)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 393, column: 9)
!1902 = !DILocation(line: 393, column: 9, scope: !1897, inlinedAt: !1863)
!1903 = !DILocation(line: 396, column: 7, scope: !1904, inlinedAt: !1863)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 394, column: 5)
!1905 = !DILocation(line: 0, scope: !1904, inlinedAt: !1863)
!1906 = !DILocation(line: 398, column: 66, scope: !1907, inlinedAt: !1863)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 397, column: 7)
!1908 = !DILocation(line: 398, column: 15, scope: !1907, inlinedAt: !1863)
!1909 = !DILocation(line: 398, column: 64, scope: !1907, inlinedAt: !1863)
!1910 = !DILocation(line: 399, column: 20, scope: !1911, inlinedAt: !1863)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 399, column: 13)
!1912 = !DILocation(line: 405, column: 18, scope: !1913, inlinedAt: !1863)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 405, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 404, column: 9)
!1915 = !DILocation(line: 405, column: 15, scope: !1914, inlinedAt: !1863)
!1916 = !DILocation(line: 0, scope: !1911, inlinedAt: !1863)
!1917 = !DILocation(line: 410, column: 10, scope: !1907, inlinedAt: !1863)
!1918 = !DILocation(line: 412, column: 20, scope: !1904, inlinedAt: !1863)
!1919 = !DILocation(line: 412, column: 7, scope: !1907, inlinedAt: !1863)
!1920 = distinct !{!1920, !1903, !1921}
!1921 = !DILocation(line: 412, column: 24, scope: !1904, inlinedAt: !1863)
!1922 = !DILocation(line: 417, column: 17, scope: !1923, inlinedAt: !1863)
!1923 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 417, column: 6)
!1924 = !DILocation(line: 417, column: 6, scope: !1923, inlinedAt: !1863)
!1925 = !DILocation(line: 417, column: 35, scope: !1923, inlinedAt: !1863)
!1926 = !DILocation(line: 417, column: 46, scope: !1923, inlinedAt: !1863)
!1927 = !DILocation(line: 417, column: 51, scope: !1923, inlinedAt: !1863)
!1928 = !DILocation(line: 417, column: 6, scope: !1854, inlinedAt: !1863)
!1929 = !DILocation(line: 242, column: 65, scope: !1579)
!1930 = !DILocation(line: 242, column: 87, scope: !1579)
!1931 = !DILocation(line: 243, column: 14, scope: !1579)
!1932 = !DILocation(line: 243, column: 26, scope: !1579)
!1933 = !DILocation(line: 242, column: 53, scope: !1579)
!1934 = !DILocation(line: 244, column: 51, scope: !1579)
!1935 = !DILocation(line: 244, column: 63, scope: !1579)
!1936 = !DILocation(line: 244, column: 83, scope: !1579)
!1937 = !DILocation(line: 244, column: 41, scope: !1579)
!1938 = !DILocation(line: 242, column: 35, scope: !1579)
!1939 = !DILocation(line: 242, column: 14, scope: !1579)
!1940 = !DILocation(line: 242, column: 33, scope: !1579)
!1941 = !DILocation(line: 245, column: 76, scope: !1579)
!1942 = !DILocation(line: 245, column: 87, scope: !1579)
!1943 = !DILocation(line: 245, column: 97, scope: !1579)
!1944 = !DILocation(line: 245, column: 109, scope: !1579)
!1945 = !DILocation(line: 245, column: 129, scope: !1579)
!1946 = !DILocation(line: 245, column: 36, scope: !1579)
!1947 = !DILocation(line: 245, column: 14, scope: !1579)
!1948 = !DILocation(line: 245, column: 34, scope: !1579)
!1949 = !DILocation(line: 247, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 247, column: 7)
!1951 = !DILocation(line: 247, column: 27, scope: !1950)
!1952 = !DILocation(line: 247, column: 8, scope: !1950)
!1953 = !DILocation(line: 247, column: 45, scope: !1950)
!1954 = !DILocation(line: 247, column: 55, scope: !1950)
!1955 = !DILocation(line: 247, column: 68, scope: !1950)
!1956 = !DILocation(line: 248, column: 27, scope: !1950)
!1957 = !DILocation(line: 248, column: 46, scope: !1950)
!1958 = !DILocation(line: 248, column: 50, scope: !1950)
!1959 = !DILocation(line: 248, column: 61, scope: !1950)
!1960 = !DILocation(line: 248, column: 65, scope: !1950)
!1961 = !DILocation(line: 247, column: 7, scope: !1579)
!1962 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1963, file: !2, line: 532, type: !381)
!1963 = distinct !DISubprogram(name: "pred_weight_table", scope: !2, file: !2, line: 532, type: !1771, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1964)
!1964 = !{!1962, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1965 = !DILocalVariable(name: "p_Vid", scope: !1963, file: !2, line: 534, type: !1210)
!1966 = !DILocalVariable(name: "active_sps", scope: !1963, file: !2, line: 535, type: !527)
!1967 = !DILocalVariable(name: "dP_nr", scope: !1963, file: !2, line: 536, type: !309)
!1968 = !DILocalVariable(name: "partition", scope: !1963, file: !2, line: 537, type: !1365)
!1969 = !DILocalVariable(name: "currStream", scope: !1963, file: !2, line: 538, type: !1009)
!1970 = !DILocalVariable(name: "luma_weight_flag_l0", scope: !1963, file: !2, line: 539, type: !242)
!1971 = !DILocalVariable(name: "luma_weight_flag_l1", scope: !1963, file: !2, line: 539, type: !242)
!1972 = !DILocalVariable(name: "chroma_weight_flag_l0", scope: !1963, file: !2, line: 539, type: !242)
!1973 = !DILocalVariable(name: "chroma_weight_flag_l1", scope: !1963, file: !2, line: 539, type: !242)
!1974 = !DILocalVariable(name: "i", scope: !1963, file: !2, line: 540, type: !242)
!1975 = !DILocalVariable(name: "j", scope: !1963, file: !2, line: 540, type: !242)
!1976 = !DILocation(line: 0, scope: !1963, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 250, column: 5, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 249, column: 3)
!1979 = !DILocation(line: 534, column: 39, scope: !1963, inlinedAt: !1977)
!1980 = !DILocation(line: 535, column: 49, scope: !1963, inlinedAt: !1977)
!1981 = !DILocation(line: 537, column: 43, scope: !1963, inlinedAt: !1977)
!1982 = !DILocation(line: 538, column: 38, scope: !1963, inlinedAt: !1977)
!1983 = !DILocation(line: 542, column: 56, scope: !1963, inlinedAt: !1977)
!1984 = !DILocation(line: 542, column: 39, scope: !1963, inlinedAt: !1977)
!1985 = !DILocation(line: 542, column: 14, scope: !1963, inlinedAt: !1977)
!1986 = !DILocation(line: 542, column: 37, scope: !1963, inlinedAt: !1977)
!1987 = !DILocation(line: 543, column: 30, scope: !1963, inlinedAt: !1977)
!1988 = !DILocation(line: 543, column: 14, scope: !1963, inlinedAt: !1977)
!1989 = !DILocation(line: 543, column: 28, scope: !1963, inlinedAt: !1977)
!1990 = !DILocation(line: 545, column: 25, scope: !1991, inlinedAt: !1977)
!1991 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 545, column: 8)
!1992 = !DILocation(line: 545, column: 10, scope: !1991, inlinedAt: !1977)
!1993 = !DILocation(line: 545, column: 8, scope: !1963, inlinedAt: !1977)
!1994 = !DILocation(line: 547, column: 60, scope: !1995, inlinedAt: !1977)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 546, column: 3)
!1996 = !DILocation(line: 547, column: 43, scope: !1995, inlinedAt: !1977)
!1997 = !DILocation(line: 547, column: 16, scope: !1995, inlinedAt: !1977)
!1998 = !DILocation(line: 547, column: 41, scope: !1995, inlinedAt: !1977)
!1999 = !DILocation(line: 548, column: 34, scope: !1995, inlinedAt: !1977)
!2000 = !DILocation(line: 548, column: 16, scope: !1995, inlinedAt: !1977)
!2001 = !DILocation(line: 548, column: 32, scope: !1995, inlinedAt: !1977)
!2002 = !DILocation(line: 549, column: 3, scope: !1995, inlinedAt: !1977)
!2003 = !DILocalVariable(name: "currSlice", arg: 1, scope: !2004, file: !2, line: 510, type: !381)
!2004 = distinct !DISubprogram(name: "reset_wp_params", scope: !2, file: !2, line: 510, type: !1771, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2005)
!2005 = !{!2003, !2006, !2007, !2008}
!2006 = !DILocalVariable(name: "i", scope: !2004, file: !2, line: 512, type: !242)
!2007 = !DILocalVariable(name: "comp", scope: !2004, file: !2, line: 512, type: !242)
!2008 = !DILocalVariable(name: "log_weight_denom", scope: !2004, file: !2, line: 513, type: !242)
!2009 = !DILocation(line: 0, scope: !2004, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 551, column: 3, scope: !1963, inlinedAt: !1977)
!2011 = !DILocation(line: 515, column: 3, scope: !2012, inlinedAt: !2010)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 515, column: 3)
!2013 = !DILocation(line: 519, scope: !2014, inlinedAt: !2010)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 518, column: 5)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 517, column: 5)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 517, column: 5)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 516, column: 3)
!2018 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 515, column: 3)
!2019 = !DILocation(line: 519, column: 26, scope: !2014, inlinedAt: !2010)
!2020 = !DILocation(line: 520, column: 44, scope: !2014, inlinedAt: !2010)
!2021 = !DILocation(line: 520, column: 18, scope: !2014, inlinedAt: !2010)
!2022 = !DILocation(line: 520, column: 7, scope: !2014, inlinedAt: !2010)
!2023 = !DILocation(line: 520, column: 40, scope: !2014, inlinedAt: !2010)
!2024 = !DILocation(line: 521, column: 18, scope: !2014, inlinedAt: !2010)
!2025 = !DILocation(line: 521, column: 7, scope: !2014, inlinedAt: !2010)
!2026 = !DILocation(line: 521, column: 40, scope: !2014, inlinedAt: !2010)
!2027 = !DILocation(line: 515, column: 40, scope: !2018, inlinedAt: !2010)
!2028 = !DILocation(line: 515, column: 14, scope: !2018, inlinedAt: !2010)
!2029 = distinct !{!2029, !2011, !2030}
!2030 = !DILocation(line: 523, column: 3, scope: !2012, inlinedAt: !2010)
!2031 = !DILocation(line: 553, column: 15, scope: !2032, inlinedAt: !1977)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 553, column: 3)
!2033 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 553, column: 3)
!2034 = !DILocation(line: 553, column: 14, scope: !2032, inlinedAt: !1977)
!2035 = !DILocation(line: 553, column: 3, scope: !2033, inlinedAt: !1977)
!2036 = !DILocation(line: 555, column: 27, scope: !2037, inlinedAt: !1977)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 554, column: 3)
!2038 = !DILocation(line: 557, column: 9, scope: !2039, inlinedAt: !1977)
!2039 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 557, column: 9)
!2040 = !DILocation(line: 557, column: 9, scope: !2037, inlinedAt: !1977)
!2041 = !DILocation(line: 559, column: 39, scope: !2042, inlinedAt: !1977)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 558, column: 5)
!2043 = !DILocation(line: 559, column: 18, scope: !2042, inlinedAt: !1977)
!2044 = !DILocation(line: 559, column: 7, scope: !2042, inlinedAt: !1977)
!2045 = !DILocation(line: 559, column: 37, scope: !2042, inlinedAt: !1977)
!2046 = !DILocation(line: 560, column: 39, scope: !2042, inlinedAt: !1977)
!2047 = !DILocation(line: 560, column: 18, scope: !2042, inlinedAt: !1977)
!2048 = !DILocation(line: 560, column: 7, scope: !2042, inlinedAt: !1977)
!2049 = !DILocation(line: 560, column: 37, scope: !2042, inlinedAt: !1977)
!2050 = !DILocation(line: 561, column: 50, scope: !2042, inlinedAt: !1977)
!2051 = !DILocation(line: 561, column: 39, scope: !2042, inlinedAt: !1977)
!2052 = !DILocation(line: 561, column: 78, scope: !2042, inlinedAt: !1977)
!2053 = !DILocation(line: 561, column: 71, scope: !2042, inlinedAt: !1977)
!2054 = !DILocation(line: 561, column: 92, scope: !2042, inlinedAt: !1977)
!2055 = !DILocation(line: 561, column: 68, scope: !2042, inlinedAt: !1977)
!2056 = !DILocation(line: 561, column: 37, scope: !2042, inlinedAt: !1977)
!2057 = !DILocation(line: 562, column: 5, scope: !2042, inlinedAt: !1977)
!2058 = !DILocation(line: 565, column: 55, scope: !2059, inlinedAt: !1977)
!2059 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 564, column: 5)
!2060 = !DILocation(line: 565, column: 44, scope: !2059, inlinedAt: !1977)
!2061 = !DILocation(line: 565, column: 41, scope: !2059, inlinedAt: !1977)
!2062 = !DILocation(line: 565, column: 18, scope: !2059, inlinedAt: !1977)
!2063 = !DILocation(line: 565, column: 7, scope: !2059, inlinedAt: !1977)
!2064 = !DILocation(line: 565, column: 37, scope: !2059, inlinedAt: !1977)
!2065 = !DILocation(line: 566, column: 18, scope: !2059, inlinedAt: !1977)
!2066 = !DILocation(line: 566, column: 7, scope: !2059, inlinedAt: !1977)
!2067 = !DILocation(line: 566, column: 37, scope: !2059, inlinedAt: !1977)
!2068 = !DILocation(line: 569, column: 21, scope: !2069, inlinedAt: !1977)
!2069 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 569, column: 9)
!2070 = !DILocation(line: 569, column: 39, scope: !2069, inlinedAt: !1977)
!2071 = !DILocation(line: 569, column: 9, scope: !2037, inlinedAt: !1977)
!2072 = !DILocation(line: 571, column: 31, scope: !2073, inlinedAt: !1977)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 570, column: 5)
!2074 = !DILocation(line: 577, column: 43, scope: !2075, inlinedAt: !1977)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 576, column: 9)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 575, column: 13)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 574, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 573, column: 7)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 573, column: 7)
!2080 = !DILocation(line: 577, column: 22, scope: !2075, inlinedAt: !1977)
!2081 = !DILocation(line: 577, column: 11, scope: !2075, inlinedAt: !1977)
!2082 = !DILocation(line: 577, column: 41, scope: !2075, inlinedAt: !1977)
!2083 = !DILocation(line: 578, column: 43, scope: !2075, inlinedAt: !1977)
!2084 = !DILocation(line: 578, column: 22, scope: !2075, inlinedAt: !1977)
!2085 = !DILocation(line: 578, column: 11, scope: !2075, inlinedAt: !1977)
!2086 = !DILocation(line: 578, column: 41, scope: !2075, inlinedAt: !1977)
!2087 = !DILocation(line: 579, column: 54, scope: !2075, inlinedAt: !1977)
!2088 = !DILocation(line: 579, column: 43, scope: !2075, inlinedAt: !1977)
!2089 = !DILocation(line: 579, column: 82, scope: !2075, inlinedAt: !1977)
!2090 = !DILocation(line: 579, column: 75, scope: !2075, inlinedAt: !1977)
!2091 = !DILocation(line: 579, column: 97, scope: !2075, inlinedAt: !1977)
!2092 = !DILocation(line: 579, column: 72, scope: !2075, inlinedAt: !1977)
!2093 = !DILocation(line: 579, column: 41, scope: !2075, inlinedAt: !1977)
!2094 = !DILocation(line: 553, column: 55, scope: !2032, inlinedAt: !1977)
!2095 = !DILocation(line: 583, column: 57, scope: !2096, inlinedAt: !1977)
!2096 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 582, column: 9)
!2097 = !DILocation(line: 583, column: 46, scope: !2096, inlinedAt: !1977)
!2098 = !DILocation(line: 583, column: 44, scope: !2096, inlinedAt: !1977)
!2099 = !DILocation(line: 583, column: 22, scope: !2096, inlinedAt: !1977)
!2100 = !DILocation(line: 583, column: 11, scope: !2096, inlinedAt: !1977)
!2101 = !DILocation(line: 583, column: 41, scope: !2096, inlinedAt: !1977)
!2102 = !DILocation(line: 584, column: 22, scope: !2096, inlinedAt: !1977)
!2103 = !DILocation(line: 584, column: 11, scope: !2096, inlinedAt: !1977)
!2104 = !DILocation(line: 584, column: 41, scope: !2096, inlinedAt: !1977)
!2105 = distinct !{!2105, !2035, !2106}
!2106 = !DILocation(line: 588, column: 3, scope: !2033, inlinedAt: !1977)
!2107 = !DILocation(line: 589, column: 15, scope: !2108, inlinedAt: !1977)
!2108 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 589, column: 7)
!2109 = !DILocation(line: 589, column: 20, scope: !2108, inlinedAt: !1977)
!2110 = !DILocation(line: 589, column: 32, scope: !2108, inlinedAt: !1977)
!2111 = !DILocation(line: 589, column: 42, scope: !2108, inlinedAt: !1977)
!2112 = !DILocation(line: 589, column: 54, scope: !2108, inlinedAt: !1977)
!2113 = !DILocation(line: 589, column: 74, scope: !2108, inlinedAt: !1977)
!2114 = !DILocation(line: 589, column: 7, scope: !1963, inlinedAt: !1977)
!2115 = !DILocation(line: 591, column: 17, scope: !2116, inlinedAt: !1977)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 591, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 591, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 590, column: 3)
!2119 = !DILocation(line: 591, column: 16, scope: !2116, inlinedAt: !1977)
!2120 = !DILocation(line: 591, column: 5, scope: !2117, inlinedAt: !1977)
!2121 = !DILocation(line: 593, column: 29, scope: !2122, inlinedAt: !1977)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 592, column: 5)
!2123 = !DILocation(line: 595, column: 11, scope: !2124, inlinedAt: !1977)
!2124 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 595, column: 11)
!2125 = !DILocation(line: 595, column: 11, scope: !2122, inlinedAt: !1977)
!2126 = !DILocation(line: 597, column: 41, scope: !2127, inlinedAt: !1977)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 596, column: 7)
!2128 = !DILocation(line: 597, column: 20, scope: !2127, inlinedAt: !1977)
!2129 = !DILocation(line: 597, column: 9, scope: !2127, inlinedAt: !1977)
!2130 = !DILocation(line: 597, column: 39, scope: !2127, inlinedAt: !1977)
!2131 = !DILocation(line: 598, column: 41, scope: !2127, inlinedAt: !1977)
!2132 = !DILocation(line: 598, column: 20, scope: !2127, inlinedAt: !1977)
!2133 = !DILocation(line: 598, column: 9, scope: !2127, inlinedAt: !1977)
!2134 = !DILocation(line: 598, column: 39, scope: !2127, inlinedAt: !1977)
!2135 = !DILocation(line: 599, column: 52, scope: !2127, inlinedAt: !1977)
!2136 = !DILocation(line: 599, column: 41, scope: !2127, inlinedAt: !1977)
!2137 = !DILocation(line: 599, column: 80, scope: !2127, inlinedAt: !1977)
!2138 = !DILocation(line: 599, column: 73, scope: !2127, inlinedAt: !1977)
!2139 = !DILocation(line: 599, column: 93, scope: !2127, inlinedAt: !1977)
!2140 = !DILocation(line: 599, column: 70, scope: !2127, inlinedAt: !1977)
!2141 = !DILocation(line: 599, column: 39, scope: !2127, inlinedAt: !1977)
!2142 = !DILocation(line: 600, column: 7, scope: !2127, inlinedAt: !1977)
!2143 = !DILocation(line: 603, column: 55, scope: !2144, inlinedAt: !1977)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 602, column: 7)
!2145 = !DILocation(line: 603, column: 44, scope: !2144, inlinedAt: !1977)
!2146 = !DILocation(line: 603, column: 42, scope: !2144, inlinedAt: !1977)
!2147 = !DILocation(line: 603, column: 20, scope: !2144, inlinedAt: !1977)
!2148 = !DILocation(line: 603, column: 9, scope: !2144, inlinedAt: !1977)
!2149 = !DILocation(line: 603, column: 39, scope: !2144, inlinedAt: !1977)
!2150 = !DILocation(line: 604, column: 20, scope: !2144, inlinedAt: !1977)
!2151 = !DILocation(line: 604, column: 9, scope: !2144, inlinedAt: !1977)
!2152 = !DILocation(line: 604, column: 39, scope: !2144, inlinedAt: !1977)
!2153 = !DILocation(line: 607, column: 23, scope: !2154, inlinedAt: !1977)
!2154 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 607, column: 11)
!2155 = !DILocation(line: 607, column: 41, scope: !2154, inlinedAt: !1977)
!2156 = !DILocation(line: 607, column: 11, scope: !2122, inlinedAt: !1977)
!2157 = !DILocation(line: 609, column: 33, scope: !2158, inlinedAt: !1977)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 608, column: 7)
!2159 = !DILocation(line: 615, column: 45, scope: !2160, inlinedAt: !1977)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 614, column: 11)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 613, column: 15)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 612, column: 9)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 611, column: 9)
!2164 = distinct !DILexicalBlock(scope: !2158, file: !2, line: 611, column: 9)
!2165 = !DILocation(line: 615, column: 24, scope: !2160, inlinedAt: !1977)
!2166 = !DILocation(line: 615, column: 13, scope: !2160, inlinedAt: !1977)
!2167 = !DILocation(line: 615, column: 43, scope: !2160, inlinedAt: !1977)
!2168 = !DILocation(line: 616, column: 45, scope: !2160, inlinedAt: !1977)
!2169 = !DILocation(line: 616, column: 24, scope: !2160, inlinedAt: !1977)
!2170 = !DILocation(line: 616, column: 13, scope: !2160, inlinedAt: !1977)
!2171 = !DILocation(line: 616, column: 43, scope: !2160, inlinedAt: !1977)
!2172 = !DILocation(line: 617, column: 56, scope: !2160, inlinedAt: !1977)
!2173 = !DILocation(line: 617, column: 45, scope: !2160, inlinedAt: !1977)
!2174 = !DILocation(line: 617, column: 84, scope: !2160, inlinedAt: !1977)
!2175 = !DILocation(line: 617, column: 77, scope: !2160, inlinedAt: !1977)
!2176 = !DILocation(line: 617, column: 99, scope: !2160, inlinedAt: !1977)
!2177 = !DILocation(line: 617, column: 74, scope: !2160, inlinedAt: !1977)
!2178 = !DILocation(line: 617, column: 43, scope: !2160, inlinedAt: !1977)
!2179 = !DILocation(line: 591, column: 57, scope: !2116, inlinedAt: !1977)
!2180 = !DILocation(line: 621, column: 59, scope: !2181, inlinedAt: !1977)
!2181 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 620, column: 11)
!2182 = !DILocation(line: 621, column: 48, scope: !2181, inlinedAt: !1977)
!2183 = !DILocation(line: 621, column: 46, scope: !2181, inlinedAt: !1977)
!2184 = !DILocation(line: 621, column: 24, scope: !2181, inlinedAt: !1977)
!2185 = !DILocation(line: 621, column: 13, scope: !2181, inlinedAt: !1977)
!2186 = !DILocation(line: 621, column: 43, scope: !2181, inlinedAt: !1977)
!2187 = !DILocation(line: 622, column: 24, scope: !2181, inlinedAt: !1977)
!2188 = !DILocation(line: 622, column: 13, scope: !2181, inlinedAt: !1977)
!2189 = !DILocation(line: 622, column: 43, scope: !2181, inlinedAt: !1977)
!2190 = distinct !{!2190, !2120, !2191}
!2191 = !DILocation(line: 626, column: 5, scope: !2117, inlinedAt: !1977)
!2192 = !DILocation(line: 253, column: 18, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 253, column: 7)
!2194 = !DILocation(line: 253, column: 7, scope: !2193)
!2195 = !DILocation(line: 253, column: 7, scope: !1579)
!2196 = !DILocation(line: 254, column: 5, scope: !2193)
!2197 = !DILocation(line: 256, column: 14, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 256, column: 7)
!2199 = !DILocation(line: 256, column: 26, scope: !2198)
!2200 = !DILocation(line: 256, column: 7, scope: !2198)
!2201 = !DILocation(line: 256, column: 51, scope: !2198)
!2202 = !DILocation(line: 256, column: 61, scope: !2198)
!2203 = !DILocation(line: 256, column: 75, scope: !2198)
!2204 = !DILocation(line: 258, column: 31, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 257, column: 3)
!2206 = !DILocation(line: 259, column: 3, scope: !2205)
!2207 = !DILocation(line: 0, scope: !2198)
!2208 = !DILocation(line: 265, column: 37, scope: !1579)
!2209 = !DILocation(line: 265, column: 14, scope: !1579)
!2210 = !DILocation(line: 265, column: 29, scope: !1579)
!2211 = !DILocation(line: 267, column: 31, scope: !1579)
!2212 = !DILocation(line: 267, column: 43, scope: !1579)
!2213 = !DILocation(line: 267, column: 22, scope: !1579)
!2214 = !DILocation(line: 267, column: 63, scope: !1579)
!2215 = !DILocation(line: 267, column: 14, scope: !1579)
!2216 = !DILocation(line: 267, column: 17, scope: !1579)
!2217 = !DILocation(line: 269, column: 32, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 269, column: 7)
!2219 = !DILocation(line: 269, column: 24, scope: !2218)
!2220 = !DILocation(line: 269, column: 22, scope: !2218)
!2221 = !DILocation(line: 269, column: 56, scope: !2218)
!2222 = !DILocation(line: 270, column: 5, scope: !2218)
!2223 = !DILocation(line: 272, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 272, column: 6)
!2225 = !DILocation(line: 272, column: 28, scope: !2224)
!2226 = !DILocation(line: 274, column: 19, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 274, column: 8)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 273, column: 3)
!2229 = !DILocation(line: 274, column: 8, scope: !2228)
!2230 = !DILocation(line: 276, column: 30, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 275, column: 5)
!2232 = !DILocation(line: 276, column: 18, scope: !2231)
!2233 = !DILocation(line: 276, column: 28, scope: !2231)
!2234 = !DILocation(line: 277, column: 5, scope: !2231)
!2235 = !DILocation(line: 278, column: 39, scope: !2228)
!2236 = !DILocation(line: 278, column: 16, scope: !2228)
!2237 = !DILocation(line: 278, column: 31, scope: !2228)
!2238 = !DILocation(line: 279, column: 33, scope: !2228)
!2239 = !DILocation(line: 279, column: 45, scope: !2228)
!2240 = !DILocation(line: 279, column: 24, scope: !2228)
!2241 = !DILocation(line: 279, column: 65, scope: !2228)
!2242 = !DILocation(line: 279, column: 16, scope: !2228)
!2243 = !DILocation(line: 279, column: 19, scope: !2228)
!2244 = !DILocation(line: 280, column: 29, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 280, column: 9)
!2246 = !DILocation(line: 281, column: 7, scope: !2245)
!2247 = !DILocation(line: 284, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 284, column: 8)
!2249 = !DILocation(line: 284, column: 31, scope: !2248)
!2250 = !DILocation(line: 284, column: 68, scope: !2248)
!2251 = !DILocation(line: 284, column: 93, scope: !2248)
!2252 = !DILocation(line: 284, column: 8, scope: !1579)
!2253 = !DILocation(line: 287, column: 16, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 287, column: 9)
!2255 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 286, column: 3)
!2256 = !DILocation(line: 287, column: 28, scope: !2254)
!2257 = !DILocation(line: 287, column: 9, scope: !2254)
!2258 = !DILocation(line: 287, column: 9, scope: !2255)
!2259 = !DILocation(line: 289, column: 41, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 288, column: 5)
!2261 = !DILocation(line: 289, column: 33, scope: !2260)
!2262 = !DILocation(line: 289, column: 18, scope: !2260)
!2263 = !DILocation(line: 289, column: 31, scope: !2260)
!2264 = !DILocation(line: 291, column: 34, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 291, column: 11)
!2266 = !DILocation(line: 291, column: 11, scope: !2260)
!2267 = !DILocation(line: 293, column: 51, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 292, column: 7)
!2269 = !DILocation(line: 293, column: 38, scope: !2268)
!2270 = !DILocation(line: 293, column: 20, scope: !2268)
!2271 = !DILocation(line: 293, column: 36, scope: !2268)
!2272 = !DILocation(line: 294, column: 51, scope: !2268)
!2273 = !DILocation(line: 294, column: 38, scope: !2268)
!2274 = !DILocation(line: 294, column: 20, scope: !2268)
!2275 = !DILocation(line: 294, column: 36, scope: !2268)
!2276 = !DILocation(line: 295, column: 7, scope: !2268)
!2277 = !DILocation(line: 298, column: 49, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 297, column: 7)
!2279 = !DILocation(line: 298, column: 62, scope: !2278)
!2280 = !DILocation(line: 298, column: 20, scope: !2278)
!2281 = !DILocation(line: 298, column: 36, scope: !2278)
!2282 = !DILocation(line: 303, column: 73, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 302, column: 5)
!2284 = !DILocation(line: 303, column: 86, scope: !2283)
!2285 = !DILocation(line: 303, column: 44, scope: !2283)
!2286 = !DILocation(line: 303, column: 60, scope: !2283)
!2287 = !DILocation(line: 303, column: 18, scope: !2283)
!2288 = !DILocation(line: 303, column: 31, scope: !2283)
!2289 = !DILocation(line: 309, column: 16, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !2, line: 309, column: 9)
!2291 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 307, column: 3)
!2292 = !DILocation(line: 309, column: 28, scope: !2290)
!2293 = !DILocation(line: 309, column: 9, scope: !2290)
!2294 = !DILocation(line: 309, column: 9, scope: !2291)
!2295 = !DILocation(line: 311, column: 41, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 310, column: 5)
!2297 = !DILocation(line: 311, column: 33, scope: !2296)
!2298 = !DILocation(line: 311, column: 18, scope: !2296)
!2299 = !DILocation(line: 311, column: 31, scope: !2296)
!2300 = !DILocation(line: 313, column: 34, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 313, column: 11)
!2302 = !DILocation(line: 313, column: 11, scope: !2296)
!2303 = !DILocation(line: 315, column: 51, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 314, column: 7)
!2305 = !DILocation(line: 315, column: 38, scope: !2304)
!2306 = !DILocation(line: 315, column: 20, scope: !2304)
!2307 = !DILocation(line: 315, column: 36, scope: !2304)
!2308 = !DILocation(line: 316, column: 51, scope: !2304)
!2309 = !DILocation(line: 317, column: 7, scope: !2304)
!2310 = !DILocation(line: 320, column: 16, scope: !2291)
!2311 = !DILocation(line: 320, column: 29, scope: !2291)
!2312 = !DILocation(line: 321, column: 45, scope: !2291)
!2313 = !DILocation(line: 321, column: 58, scope: !2291)
!2314 = !DILocation(line: 321, column: 16, scope: !2291)
!2315 = !DILocation(line: 321, column: 32, scope: !2291)
!2316 = !DILocation(line: 325, column: 14, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 325, column: 7)
!2318 = !DILocation(line: 325, column: 26, scope: !2317)
!2319 = !DILocation(line: 325, column: 49, scope: !2317)
!2320 = !DILocation(line: 325, column: 52, scope: !2317)
!2321 = !DILocation(line: 325, column: 74, scope: !2317)
!2322 = !DILocation(line: 325, column: 98, scope: !2317)
!2323 = !DILocation(line: 328, column: 24, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 327, column: 3)
!2325 = !DILocation(line: 328, column: 54, scope: !2324)
!2326 = !DILocation(line: 328, column: 71, scope: !2324)
!2327 = !DILocation(line: 328, column: 94, scope: !2324)
!2328 = !DILocation(line: 328, column: 57, scope: !2324)
!2329 = !DILocation(line: 329, column: 31, scope: !2324)
!2330 = !DILocation(line: 329, column: 61, scope: !2324)
!2331 = !DILocation(line: 328, column: 97, scope: !2324)
!2332 = !DILocation(line: 330, column: 97, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 330, column: 9)
!2334 = !DILocation(line: 330, column: 9, scope: !2324)
!2335 = !DILocation(line: 0, scope: !356, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 334, column: 11, scope: !2324)
!2337 = !DILocation(line: 47, column: 16, scope: !356, inlinedAt: !2336)
!2338 = !DILocation(line: 47, column: 3, scope: !356, inlinedAt: !2336)
!2339 = !DILocation(line: 336, column: 43, scope: !2324)
!2340 = !DILocation(line: 336, column: 16, scope: !2324)
!2341 = !DILocation(line: 336, column: 41, scope: !2324)
!2342 = !DILocation(line: 337, column: 3, scope: !2324)
!2343 = !DILocation(line: 338, column: 34, scope: !1579)
!2344 = !DILocation(line: 338, column: 70, scope: !1579)
!2345 = !DILocation(line: 338, column: 57, scope: !1579)
!2346 = !DILocation(line: 338, column: 51, scope: !1579)
!2347 = !DILocation(line: 338, column: 10, scope: !1579)
!2348 = !DILocation(line: 338, column: 25, scope: !1579)
!2349 = !DILocation(line: 339, column: 34, scope: !1579)
!2350 = !DILocation(line: 339, column: 48, scope: !1579)
!2351 = !DILocation(line: 339, column: 10, scope: !1579)
!2352 = !DILocation(line: 339, column: 25, scope: !1579)
!2353 = !DILocation(line: 340, column: 48, scope: !1579)
!2354 = !DILocation(line: 340, column: 10, scope: !1579)
!2355 = !DILocation(line: 340, column: 25, scope: !1579)
!2356 = !DILocation(line: 342, column: 10, scope: !1579)
!2357 = !DILocation(line: 342, column: 17, scope: !1579)
!2358 = !DILocation(line: 342, column: 3, scope: !1579)
!2359 = !DISubprogram(name: "u_1", scope: !1572, file: !1572, line: 72, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2360 = !DISubprogram(name: "se_v", scope: !1572, file: !1572, line: 70, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = distinct !DISubprogram(name: "dec_ref_pic_marking", scope: !2, file: !2, line: 637, type: !2362, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !1210, !1009, !381}
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370}
!2365 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2361, file: !2, line: 637, type: !1210)
!2366 = !DILocalVariable(name: "currStream", arg: 2, scope: !2361, file: !2, line: 637, type: !1009)
!2367 = !DILocalVariable(name: "pSlice", arg: 3, scope: !2361, file: !2, line: 637, type: !381)
!2368 = !DILocalVariable(name: "val", scope: !2361, file: !2, line: 639, type: !242)
!2369 = !DILocalVariable(name: "tmp_drpm", scope: !2361, file: !2, line: 641, type: !315)
!2370 = !DILocalVariable(name: "tmp_drpm2", scope: !2361, file: !2, line: 641, type: !315)
!2371 = !DILocation(line: 0, scope: !2361)
!2372 = !DILocation(line: 644, column: 18, scope: !2361)
!2373 = !DILocation(line: 644, column: 3, scope: !2361)
!2374 = !DILocation(line: 648, column: 50, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 645, column: 3)
!2376 = !DILocation(line: 648, column: 39, scope: !2375)
!2377 = !DILocation(line: 649, column: 5, scope: !2375)
!2378 = distinct !{!2378, !2373, !2379}
!2379 = !DILocation(line: 650, column: 3, scope: !2361)
!2380 = !DILocation(line: 652, column: 15, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 652, column: 7)
!2382 = !DILocation(line: 652, column: 7, scope: !2381)
!2383 = !DILocation(line: 652, column: 7, scope: !2361)
!2384 = !DILocation(line: 654, column: 44, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 653, column: 3)
!2386 = !DILocation(line: 654, column: 13, scope: !2385)
!2387 = !DILocation(line: 654, column: 42, scope: !2385)
!2388 = !DILocation(line: 655, column: 12, scope: !2385)
!2389 = !DILocation(line: 655, column: 41, scope: !2385)
!2390 = !DILocation(line: 656, column: 40, scope: !2385)
!2391 = !DILocation(line: 656, column: 13, scope: !2385)
!2392 = !DILocation(line: 656, column: 38, scope: !2385)
!2393 = !DILocation(line: 657, column: 3, scope: !2385)
!2394 = !DILocation(line: 660, column: 47, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 659, column: 3)
!2396 = !DILocation(line: 660, column: 13, scope: !2395)
!2397 = !DILocation(line: 660, column: 45, scope: !2395)
!2398 = !DILocation(line: 661, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 661, column: 9)
!2400 = !DILocation(line: 661, column: 9, scope: !2395)
!2401 = !DILocation(line: 666, column: 39, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !2, line: 665, column: 7)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 662, column: 5)
!2404 = !DILocation(line: 667, column: 19, scope: !2402)
!2405 = !DILocation(line: 667, column: 23, scope: !2402)
!2406 = !DILocation(line: 669, column: 63, scope: !2402)
!2407 = !DILocation(line: 669, column: 61, scope: !2402)
!2408 = !DILocation(line: 671, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 671, column: 13)
!2410 = !DILocation(line: 673, column: 53, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 672, column: 9)
!2412 = !DILocation(line: 673, column: 21, scope: !2411)
!2413 = !DILocation(line: 673, column: 51, scope: !2411)
!2414 = !DILocation(line: 675, column: 13, scope: !2402)
!2415 = !DILocation(line: 677, column: 41, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 676, column: 9)
!2417 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 675, column: 13)
!2418 = !DILocation(line: 677, column: 21, scope: !2416)
!2419 = !DILocation(line: 677, column: 39, scope: !2416)
!2420 = !DILocation(line: 680, column: 21, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 680, column: 13)
!2422 = !DILocation(line: 682, column: 43, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 681, column: 9)
!2424 = !DILocation(line: 682, column: 21, scope: !2423)
!2425 = !DILocation(line: 682, column: 41, scope: !2423)
!2426 = !DILocation(line: 684, column: 13, scope: !2402)
!2427 = !DILocation(line: 686, column: 53, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 685, column: 9)
!2429 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 684, column: 13)
!2430 = !DILocation(line: 686, column: 21, scope: !2428)
!2431 = !DILocation(line: 686, column: 51, scope: !2428)
!2432 = !DILocation(line: 687, column: 9, scope: !2428)
!2433 = !DILocation(line: 690, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 690, column: 13)
!2435 = !DILocation(line: 690, column: 47, scope: !2434)
!2436 = !DILocation(line: 690, column: 13, scope: !2402)
!2437 = !DILocation(line: 0, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 695, column: 9)
!2439 = !DILocation(line: 697, column: 29, scope: !2438)
!2440 = !DILocation(line: 697, column: 33, scope: !2438)
!2441 = !DILocation(line: 697, column: 11, scope: !2438)
!2442 = distinct !{!2442, !2441, !2443}
!2443 = !DILocation(line: 697, column: 62, scope: !2438)
!2444 = !DILocation(line: 0, scope: !2434)
!2445 = !DILocation(line: 702, column: 18, scope: !2403)
!2446 = !DILocation(line: 701, column: 7, scope: !2402)
!2447 = distinct !{!2447, !2448, !2449}
!2448 = !DILocation(line: 664, column: 7, scope: !2403)
!2449 = !DILocation(line: 702, column: 22, scope: !2403)
!2450 = !DILocation(line: 705, column: 1, scope: !2361)
!2451 = !DISubprogram(name: "error", scope: !317, file: !317, line: 940, type: !2452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !1575, !242}
!2454 = !DISubprogram(name: "free", scope: !2455, file: !2455, line: 555, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2455 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !327}
!2458 = !DISubprogram(name: "calloc", scope: !2455, file: !2455, line: 543, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!327, !2461, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2462, line: 18, baseType: !2463)
!2462 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!2463 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!2464 = distinct !DISubprogram(name: "decode_poc", scope: !2, file: !2, line: 718, type: !2465, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !1210, !381}
!2467 = !{!2468, !2469, !2470, !2471, !2472}
!2468 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2464, file: !2, line: 718, type: !1210)
!2469 = !DILocalVariable(name: "pSlice", arg: 2, scope: !2464, file: !2, line: 718, type: !381)
!2470 = !DILocalVariable(name: "active_sps", scope: !2464, file: !2, line: 720, type: !527)
!2471 = !DILocalVariable(name: "i", scope: !2464, file: !2, line: 721, type: !242)
!2472 = !DILocalVariable(name: "MaxPicOrderCntLsb", scope: !2464, file: !2, line: 723, type: !266)
!2473 = !DILocation(line: 0, scope: !2464)
!2474 = !DILocation(line: 720, column: 49, scope: !2464)
!2475 = !DILocation(line: 723, column: 53, scope: !2464)
!2476 = !DILocation(line: 723, column: 86, scope: !2464)
!2477 = !DILocation(line: 723, column: 38, scope: !2464)
!2478 = !DILocation(line: 725, column: 24, scope: !2464)
!2479 = !DILocation(line: 725, column: 3, scope: !2464)
!2480 = !DILocation(line: 729, column: 16, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 729, column: 8)
!2482 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 726, column: 3)
!2483 = !DILocation(line: 729, column: 8, scope: !2481)
!2484 = !DILocation(line: 729, column: 8, scope: !2482)
!2485 = !DILocation(line: 731, column: 14, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 730, column: 5)
!2487 = !DILocation(line: 731, column: 33, scope: !2486)
!2488 = !DILocation(line: 733, column: 5, scope: !2486)
!2489 = !DILocation(line: 736, column: 18, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 736, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 735, column: 5)
!2492 = !DILocation(line: 736, column: 11, scope: !2490)
!2493 = !DILocation(line: 736, column: 11, scope: !2491)
!2494 = !DILocation(line: 751, column: 46, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 751, column: 9)
!2496 = !DILocation(line: 738, column: 20, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 738, column: 13)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 737, column: 7)
!2499 = !DILocation(line: 738, column: 13, scope: !2497)
!2500 = !DILocation(line: 0, scope: !2497)
!2501 = !DILocation(line: 738, column: 13, scope: !2498)
!2502 = !DILocation(line: 746, column: 47, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 744, column: 9)
!2504 = !DILocation(line: 746, column: 18, scope: !2503)
!2505 = !DILocation(line: 746, column: 37, scope: !2503)
!2506 = !DILocation(line: 0, scope: !2481)
!2507 = !DILocation(line: 751, column: 17, scope: !2495)
!2508 = !DILocation(line: 751, column: 66, scope: !2495)
!2509 = !DILocation(line: 751, column: 36, scope: !2495)
!2510 = !DILocation(line: 752, column: 35, scope: !2495)
!2511 = !DILocation(line: 752, column: 90, scope: !2495)
!2512 = !DILocation(line: 752, column: 66, scope: !2495)
!2513 = !DILocation(line: 751, column: 9, scope: !2482)
!2514 = !DILocation(line: 753, column: 39, scope: !2495)
!2515 = !DILocation(line: 753, column: 58, scope: !2495)
!2516 = !DILocation(line: 753, column: 7, scope: !2495)
!2517 = !DILocation(line: 754, column: 42, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 754, column: 15)
!2519 = !DILocation(line: 754, column: 72, scope: !2518)
!2520 = !DILocation(line: 755, column: 35, scope: !2518)
!2521 = !DILocation(line: 755, column: 89, scope: !2518)
!2522 = !DILocation(line: 755, column: 66, scope: !2518)
!2523 = !DILocation(line: 754, column: 15, scope: !2495)
!2524 = !DILocation(line: 756, column: 39, scope: !2518)
!2525 = !DILocation(line: 756, column: 58, scope: !2518)
!2526 = !DILocation(line: 756, column: 7, scope: !2518)
!2527 = !DILocation(line: 758, column: 39, scope: !2518)
!2528 = !DILocation(line: 0, scope: !2495)
!2529 = !DILocation(line: 762, column: 16, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 762, column: 8)
!2531 = !DILocation(line: 762, column: 30, scope: !2530)
!2532 = !DILocation(line: 762, column: 8, scope: !2482)
!2533 = !DILocation(line: 764, column: 47, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 763, column: 5)
!2535 = !DILocation(line: 764, column: 15, scope: !2534)
!2536 = !DILocation(line: 764, column: 22, scope: !2534)
!2537 = !DILocation(line: 765, column: 52, scope: !2534)
!2538 = !DILocation(line: 765, column: 42, scope: !2534)
!2539 = !DILocation(line: 765, column: 15, scope: !2534)
!2540 = !DILocation(line: 765, column: 25, scope: !2534)
!2541 = !DILocation(line: 766, column: 60, scope: !2534)
!2542 = !DILocation(line: 766, column: 44, scope: !2534)
!2543 = !DILocation(line: 766, column: 15, scope: !2534)
!2544 = !DILocation(line: 766, column: 23, scope: !2534)
!2545 = !DILocation(line: 767, column: 5, scope: !2534)
!2546 = !DILocation(line: 768, column: 22, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 768, column: 14)
!2548 = !DILocation(line: 768, column: 40, scope: !2547)
!2549 = !DILocation(line: 0, scope: !2547)
!2550 = !DILocation(line: 768, column: 14, scope: !2530)
!2551 = !DILocation(line: 770, column: 32, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 769, column: 5)
!2553 = !DILocation(line: 770, column: 39, scope: !2552)
!2554 = !DILocation(line: 770, column: 22, scope: !2552)
!2555 = !DILocation(line: 771, column: 5, scope: !2552)
!2556 = !DILocation(line: 774, column: 32, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 773, column: 5)
!2558 = !DILocation(line: 774, column: 42, scope: !2557)
!2559 = !DILocation(line: 774, column: 22, scope: !2557)
!2560 = !DILocation(line: 776, column: 32, scope: !2482)
!2561 = !DILocation(line: 776, column: 13, scope: !2482)
!2562 = !DILocation(line: 776, column: 22, scope: !2482)
!2563 = !DILocation(line: 778, column: 12, scope: !2482)
!2564 = !DILocation(line: 778, column: 20, scope: !2482)
!2565 = !DILocation(line: 780, column: 18, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 780, column: 10)
!2567 = !DILocation(line: 780, column: 38, scope: !2566)
!2568 = !DILocation(line: 780, column: 28, scope: !2566)
!2569 = !DILocation(line: 780, column: 10, scope: !2482)
!2570 = !DILocation(line: 781, column: 31, scope: !2566)
!2571 = !DILocation(line: 781, column: 7, scope: !2566)
!2572 = !DILocation(line: 783, column: 16, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 783, column: 8)
!2574 = !DILocation(line: 783, column: 8, scope: !2573)
!2575 = !DILocation(line: 783, column: 8, scope: !2482)
!2576 = !DILocation(line: 785, column: 43, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 784, column: 5)
!2578 = !DILocation(line: 785, column: 33, scope: !2577)
!2579 = !DILocation(line: 786, column: 43, scope: !2577)
!2580 = !DILocation(line: 786, column: 14, scope: !2577)
!2581 = !DILocation(line: 786, column: 33, scope: !2577)
!2582 = !DILocation(line: 787, column: 5, scope: !2577)
!2583 = !DILocation(line: 793, column: 16, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 793, column: 8)
!2585 = !DILocation(line: 793, column: 8, scope: !2584)
!2586 = !DILocation(line: 793, column: 8, scope: !2482)
!2587 = !DILocation(line: 795, column: 14, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 794, column: 5)
!2589 = !DILocation(line: 795, column: 28, scope: !2588)
!2590 = !DILocation(line: 796, column: 18, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 796, column: 10)
!2592 = !DILocation(line: 796, column: 10, scope: !2591)
!2593 = !DILocation(line: 796, column: 10, scope: !2588)
!2594 = !DILocation(line: 797, column: 9, scope: !2591)
!2595 = !DILocation(line: 801, column: 18, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 801, column: 11)
!2597 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 800, column: 5)
!2598 = !DILocation(line: 801, column: 11, scope: !2596)
!2599 = !DILocation(line: 801, column: 11, scope: !2597)
!2600 = !DILocation(line: 803, column: 16, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 802, column: 7)
!2602 = !DILocation(line: 803, column: 39, scope: !2601)
!2603 = !DILocation(line: 804, column: 16, scope: !2601)
!2604 = !DILocation(line: 804, column: 33, scope: !2601)
!2605 = !DILocation(line: 806, column: 11, scope: !2597)
!2606 = !DILocation(line: 806, column: 36, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 806, column: 11)
!2608 = !DILocation(line: 806, column: 19, scope: !2607)
!2609 = !DILocation(line: 806, column: 28, scope: !2607)
!2610 = !DILocation(line: 808, column: 40, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 807, column: 7)
!2612 = !DILocation(line: 808, column: 72, scope: !2611)
!2613 = !DILocation(line: 808, column: 63, scope: !2611)
!2614 = !DILocation(line: 808, column: 16, scope: !2611)
!2615 = !DILocation(line: 808, column: 31, scope: !2611)
!2616 = !DILocation(line: 809, column: 7, scope: !2611)
!2617 = !DILocation(line: 812, column: 40, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 811, column: 7)
!2619 = !DILocation(line: 812, column: 16, scope: !2618)
!2620 = !DILocation(line: 812, column: 31, scope: !2618)
!2621 = !DILocation(line: 817, column: 20, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 817, column: 8)
!2623 = !DILocation(line: 817, column: 8, scope: !2622)
!2624 = !DILocation(line: 817, column: 8, scope: !2482)
!2625 = !DILocation(line: 818, column: 36, scope: !2622)
!2626 = !DILocation(line: 818, column: 59, scope: !2622)
!2627 = !DILocation(line: 818, column: 50, scope: !2622)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 821, column: 19, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 821, column: 9)
!2631 = !DILocation(line: 821, column: 11, scope: !2630)
!2632 = !DILocation(line: 821, column: 38, scope: !2630)
!2633 = !DILocation(line: 822, column: 26, scope: !2630)
!2634 = !DILocation(line: 822, column: 7, scope: !2630)
!2635 = !DILocation(line: 825, column: 12, scope: !2482)
!2636 = !DILocation(line: 825, column: 44, scope: !2482)
!2637 = !DILocation(line: 827, column: 20, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 827, column: 8)
!2639 = !DILocation(line: 827, column: 8, scope: !2638)
!2640 = !DILocation(line: 827, column: 8, scope: !2482)
!2641 = !DILocation(line: 828, column: 14, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 828, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 828, column: 5)
!2644 = !DILocation(line: 828, column: 5, scope: !2643)
!2645 = !DILocation(line: 829, column: 47, scope: !2642)
!2646 = !DILocation(line: 829, column: 50, scope: !2642)
!2647 = !DILocation(line: 828, column: 72, scope: !2642)
!2648 = !DILocation(line: 828, column: 33, scope: !2642)
!2649 = distinct !{!2649, !2644, !2650}
!2650 = !DILocation(line: 829, column: 84, scope: !2643)
!2651 = !DILocation(line: 831, column: 16, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 831, column: 8)
!2653 = !DILocation(line: 831, column: 8, scope: !2652)
!2654 = !DILocation(line: 831, column: 8, scope: !2482)
!2655 = !DILocation(line: 833, column: 56, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 832, column: 5)
!2657 = !DILocation(line: 833, column: 59, scope: !2656)
!2658 = !DILocation(line: 833, column: 14, scope: !2656)
!2659 = !DILocation(line: 833, column: 34, scope: !2656)
!2660 = !DILocation(line: 834, column: 52, scope: !2656)
!2661 = !DILocation(line: 834, column: 63, scope: !2656)
!2662 = !DILocation(line: 834, column: 79, scope: !2656)
!2663 = !DILocation(line: 834, column: 66, scope: !2656)
!2664 = !DILocation(line: 834, column: 14, scope: !2656)
!2665 = !DILocation(line: 834, column: 41, scope: !2656)
!2666 = !DILocation(line: 835, column: 62, scope: !2656)
!2667 = !DILocation(line: 835, column: 14, scope: !2656)
!2668 = !DILocation(line: 835, column: 34, scope: !2656)
!2669 = !DILocation(line: 836, column: 16, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 836, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 836, column: 7)
!2672 = !DILocation(line: 836, column: 7, scope: !2671)
!2673 = !DILocation(line: 837, column: 39, scope: !2670)
!2674 = !{!2675}
!2675 = distinct !{!2675, !2676}
!2676 = distinct !{!2676, !"LVerDomain"}
!2677 = !DILocation(line: 837, column: 36, scope: !2670)
!2678 = distinct !{!2678, !2672, !2679, !2680, !2681}
!2679 = !DILocation(line: 837, column: 73, scope: !2671)
!2680 = !{!"llvm.loop.isvectorized", i32 1}
!2681 = !{!"llvm.loop.unroll.runtime.disable"}
!2682 = !DILocation(line: 836, column: 58, scope: !2670)
!2683 = distinct !{!2683, !2672, !2679, !2680}
!2684 = !DILocation(line: 840, column: 14, scope: !2652)
!2685 = !DILocation(line: 840, column: 33, scope: !2652)
!2686 = !DILocation(line: 842, column: 17, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 842, column: 8)
!2688 = !DILocation(line: 842, column: 9, scope: !2687)
!2689 = !DILocation(line: 842, column: 8, scope: !2482)
!2690 = !DILocation(line: 843, column: 49, scope: !2687)
!2691 = !DILocation(line: 843, column: 14, scope: !2687)
!2692 = !DILocation(line: 843, column: 34, scope: !2687)
!2693 = !DILocation(line: 843, column: 7, scope: !2687)
!2694 = !DILocation(line: 845, column: 16, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 845, column: 8)
!2696 = !DILocation(line: 845, column: 30, scope: !2695)
!2697 = !DILocation(line: 845, column: 8, scope: !2482)
!2698 = !DILocation(line: 847, column: 61, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 846, column: 5)
!2700 = !DILocation(line: 847, column: 53, scope: !2699)
!2701 = !DILocation(line: 847, column: 51, scope: !2699)
!2702 = !DILocation(line: 847, column: 15, scope: !2699)
!2703 = !DILocation(line: 847, column: 22, scope: !2699)
!2704 = !DILocation(line: 848, column: 56, scope: !2699)
!2705 = !DILocation(line: 848, column: 42, scope: !2699)
!2706 = !DILocation(line: 848, column: 89, scope: !2699)
!2707 = !DILocation(line: 848, column: 87, scope: !2699)
!2708 = !DILocation(line: 848, column: 15, scope: !2699)
!2709 = !DILocation(line: 848, column: 25, scope: !2699)
!2710 = !DILocation(line: 849, column: 44, scope: !2699)
!2711 = !DILocation(line: 850, column: 5, scope: !2699)
!2712 = !DILocation(line: 851, column: 22, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 851, column: 14)
!2714 = !DILocation(line: 851, column: 40, scope: !2713)
!2715 = !DILocation(line: 851, column: 14, scope: !2695)
!2716 = !DILocation(line: 853, column: 79, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 852, column: 5)
!2718 = !DILocation(line: 853, column: 71, scope: !2717)
!2719 = !DILocation(line: 853, column: 69, scope: !2717)
!2720 = !DILocation(line: 853, column: 33, scope: !2717)
!2721 = !DILocation(line: 853, column: 40, scope: !2717)
!2722 = !DILocation(line: 854, column: 5, scope: !2717)
!2723 = !DILocation(line: 857, column: 86, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 856, column: 5)
!2725 = !DILocation(line: 857, column: 72, scope: !2724)
!2726 = !DILocation(line: 857, column: 127, scope: !2724)
!2727 = !DILocation(line: 857, column: 119, scope: !2724)
!2728 = !DILocation(line: 857, column: 117, scope: !2724)
!2729 = !DILocation(line: 857, column: 33, scope: !2724)
!2730 = !DILocation(line: 857, column: 43, scope: !2724)
!2731 = !DILocation(line: 0, scope: !2695)
!2732 = !DILocation(line: 859, column: 13, scope: !2482)
!2733 = !DILocation(line: 859, column: 21, scope: !2482)
!2734 = !DILocation(line: 861, column: 37, scope: !2482)
!2735 = !DILocation(line: 861, column: 12, scope: !2482)
!2736 = !DILocation(line: 861, column: 28, scope: !2482)
!2737 = !DILocation(line: 862, column: 42, scope: !2482)
!2738 = !DILocation(line: 862, column: 12, scope: !2482)
!2739 = !DILocation(line: 862, column: 34, scope: !2482)
!2740 = !DILocation(line: 864, column: 5, scope: !2482)
!2741 = !DILocation(line: 868, column: 16, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 868, column: 8)
!2743 = !DILocation(line: 868, column: 8, scope: !2742)
!2744 = !DILocation(line: 868, column: 8, scope: !2482)
!2745 = !DILocation(line: 870, column: 14, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 869, column: 5)
!2747 = !DILocation(line: 870, column: 28, scope: !2746)
!2748 = !DILocation(line: 871, column: 69, scope: !2746)
!2749 = !DILocation(line: 871, column: 79, scope: !2746)
!2750 = !DILocation(line: 871, column: 52, scope: !2746)
!2751 = !DILocation(line: 871, column: 59, scope: !2746)
!2752 = !DILocation(line: 871, column: 33, scope: !2746)
!2753 = !DILocation(line: 871, column: 42, scope: !2746)
!2754 = !DILocation(line: 871, column: 15, scope: !2746)
!2755 = !DILocation(line: 871, column: 23, scope: !2746)
!2756 = !DILocation(line: 872, column: 18, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 872, column: 10)
!2758 = !DILocation(line: 872, column: 10, scope: !2757)
!2759 = !DILocation(line: 872, column: 10, scope: !2746)
!2760 = !DILocation(line: 873, column: 9, scope: !2757)
!2761 = !DILocation(line: 902, column: 37, scope: !2482)
!2762 = !DILocation(line: 877, column: 18, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 877, column: 11)
!2764 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 876, column: 5)
!2765 = !DILocation(line: 877, column: 11, scope: !2763)
!2766 = !DILocation(line: 877, column: 11, scope: !2764)
!2767 = !DILocation(line: 879, column: 33, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 878, column: 7)
!2769 = !DILocation(line: 880, column: 16, scope: !2768)
!2770 = !DILocation(line: 880, column: 39, scope: !2768)
!2771 = !DILocation(line: 882, column: 19, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 882, column: 11)
!2773 = !DILocation(line: 882, column: 11, scope: !2764)
!2774 = !DILocation(line: 882, column: 36, scope: !2772)
!2775 = !DILocation(line: 882, column: 28, scope: !2772)
!2776 = !DILocation(line: 883, column: 40, scope: !2772)
!2777 = !DILocation(line: 883, column: 72, scope: !2772)
!2778 = !DILocation(line: 883, column: 63, scope: !2772)
!2779 = !DILocation(line: 883, column: 9, scope: !2772)
!2780 = !DILocation(line: 885, column: 40, scope: !2772)
!2781 = !DILocation(line: 0, scope: !2772)
!2782 = !DILocation(line: 888, column: 59, scope: !2764)
!2783 = !DILocation(line: 888, column: 50, scope: !2764)
!2784 = !DILocation(line: 888, column: 15, scope: !2764)
!2785 = !DILocation(line: 888, column: 27, scope: !2764)
!2786 = !DILocation(line: 889, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 889, column: 10)
!2788 = !DILocation(line: 889, column: 11, scope: !2787)
!2789 = !DILocation(line: 0, scope: !2787)
!2790 = !DILocation(line: 889, column: 10, scope: !2764)
!2791 = !DILocation(line: 894, column: 19, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 894, column: 11)
!2793 = !DILocation(line: 894, column: 33, scope: !2792)
!2794 = !DILocation(line: 894, column: 11, scope: !2764)
!2795 = !DILocation(line: 895, column: 54, scope: !2792)
!2796 = !DILocation(line: 895, column: 63, scope: !2792)
!2797 = !DILocation(line: 895, column: 34, scope: !2792)
!2798 = !DILocation(line: 895, column: 44, scope: !2792)
!2799 = !DILocation(line: 895, column: 17, scope: !2792)
!2800 = !DILocation(line: 895, column: 24, scope: !2792)
!2801 = !DILocation(line: 895, column: 9, scope: !2792)
!2802 = !DILocation(line: 896, column: 24, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 896, column: 16)
!2804 = !DILocation(line: 896, column: 42, scope: !2803)
!2805 = !DILocation(line: 0, scope: !2803)
!2806 = !DILocation(line: 896, column: 16, scope: !2792)
!2807 = !DILocation(line: 897, column: 18, scope: !2803)
!2808 = !DILocation(line: 897, column: 25, scope: !2803)
!2809 = !DILocation(line: 897, column: 10, scope: !2803)
!2810 = !DILocation(line: 899, column: 17, scope: !2803)
!2811 = !DILocation(line: 899, column: 27, scope: !2803)
!2812 = !DILocation(line: 902, column: 12, scope: !2482)
!2813 = !DILocation(line: 902, column: 28, scope: !2482)
!2814 = !DILocation(line: 903, column: 42, scope: !2482)
!2815 = !DILocation(line: 903, column: 12, scope: !2482)
!2816 = !DILocation(line: 903, column: 34, scope: !2482)
!2817 = !DILocation(line: 904, column: 5, scope: !2482)
!2818 = !DILocation(line: 912, column: 1, scope: !2464)
!2819 = distinct !DISubprogram(name: "dumppoc", scope: !2, file: !2, line: 922, type: !2820, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!242, !1210}
!2822 = !{!2823, !2824}
!2823 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2819, file: !2, line: 922, type: !1210)
!2824 = !DILocalVariable(name: "active_sps", scope: !2819, file: !2, line: 924, type: !527)
!2825 = !DILocation(line: 0, scope: !2819)
!2826 = !DILocation(line: 924, column: 49, scope: !2819)
!2827 = !DILocation(line: 926, column: 3, scope: !2819)
!2828 = !DILocation(line: 927, column: 70, scope: !2819)
!2829 = !DILocation(line: 927, column: 63, scope: !2819)
!2830 = !DILocation(line: 927, column: 86, scope: !2819)
!2831 = !DILocation(line: 927, column: 3, scope: !2819)
!2832 = !DILocation(line: 928, column: 70, scope: !2819)
!2833 = !DILocation(line: 928, column: 63, scope: !2819)
!2834 = !DILocation(line: 928, column: 86, scope: !2819)
!2835 = !DILocation(line: 928, column: 3, scope: !2819)
!2836 = !DILocation(line: 929, column: 70, scope: !2819)
!2837 = !DILocation(line: 929, column: 63, scope: !2819)
!2838 = !DILocation(line: 929, column: 86, scope: !2819)
!2839 = !DILocation(line: 929, column: 3, scope: !2819)
!2840 = !DILocation(line: 930, column: 70, scope: !2819)
!2841 = !DILocation(line: 930, column: 63, scope: !2819)
!2842 = !DILocation(line: 930, column: 86, scope: !2819)
!2843 = !DILocation(line: 930, column: 3, scope: !2819)
!2844 = !DILocation(line: 931, column: 70, scope: !2819)
!2845 = !DILocation(line: 931, column: 63, scope: !2819)
!2846 = !DILocation(line: 931, column: 86, scope: !2819)
!2847 = !DILocation(line: 931, column: 57, scope: !2819)
!2848 = !DILocation(line: 931, column: 3, scope: !2819)
!2849 = !DILocation(line: 932, column: 3, scope: !2819)
!2850 = !DILocation(line: 933, column: 75, scope: !2819)
!2851 = !DILocation(line: 933, column: 3, scope: !2819)
!2852 = !DILocation(line: 934, column: 75, scope: !2819)
!2853 = !DILocation(line: 934, column: 3, scope: !2819)
!2854 = !DILocation(line: 935, column: 75, scope: !2819)
!2855 = !DILocation(line: 935, column: 3, scope: !2819)
!2856 = !DILocation(line: 936, column: 75, scope: !2819)
!2857 = !DILocation(line: 936, column: 3, scope: !2819)
!2858 = !DILocation(line: 937, column: 75, scope: !2819)
!2859 = !DILocation(line: 937, column: 3, scope: !2819)
!2860 = !DILocation(line: 938, column: 75, scope: !2819)
!2861 = !DILocation(line: 938, column: 3, scope: !2819)
!2862 = !DILocation(line: 939, column: 75, scope: !2819)
!2863 = !DILocation(line: 939, column: 3, scope: !2819)
!2864 = !DILocation(line: 940, column: 75, scope: !2819)
!2865 = !DILocation(line: 940, column: 63, scope: !2819)
!2866 = !DILocation(line: 940, column: 3, scope: !2819)
!2867 = !DILocation(line: 941, column: 63, scope: !2819)
!2868 = !DILocation(line: 941, column: 3, scope: !2819)
!2869 = !DILocation(line: 942, column: 3, scope: !2819)
!2870 = !DILocation(line: 943, column: 92, scope: !2819)
!2871 = !DILocation(line: 943, column: 104, scope: !2819)
!2872 = !DILocation(line: 943, column: 3, scope: !2819)
!2873 = !DILocation(line: 944, column: 70, scope: !2819)
!2874 = !DILocation(line: 944, column: 63, scope: !2819)
!2875 = !DILocation(line: 944, column: 86, scope: !2819)
!2876 = !DILocation(line: 944, column: 3, scope: !2819)
!2877 = !DILocation(line: 945, column: 70, scope: !2819)
!2878 = !DILocation(line: 945, column: 63, scope: !2819)
!2879 = !DILocation(line: 945, column: 3, scope: !2819)
!2880 = !DILocation(line: 946, column: 70, scope: !2819)
!2881 = !DILocation(line: 946, column: 63, scope: !2819)
!2882 = !DILocation(line: 946, column: 86, scope: !2819)
!2883 = !DILocation(line: 946, column: 3, scope: !2819)
!2884 = !DILocation(line: 947, column: 70, scope: !2819)
!2885 = !DILocation(line: 947, column: 3, scope: !2819)
!2886 = !DILocation(line: 949, column: 3, scope: !2819)
!2887 = !DISubprogram(name: "printf", scope: !2888, file: !2888, line: 356, type: !2889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2888 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!242, !2891, null}
!2891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2892)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!2894 = distinct !DISubprogram(name: "picture_order", scope: !2, file: !2, line: 959, type: !379, scopeLine: 960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2895)
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "pSlice", arg: 1, scope: !2894, file: !2, line: 959, type: !381)
!2897 = !DILocation(line: 0, scope: !2894)
!2898 = !DILocation(line: 961, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 961, column: 7)
!2900 = !DILocation(line: 961, column: 29, scope: !2899)
!2901 = !DILocation(line: 961, column: 7, scope: !2894)
!2902 = !DILocation(line: 963, column: 20, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !2, line: 963, column: 12)
!2904 = !DILocation(line: 963, column: 38, scope: !2903)
!2905 = !DILocation(line: 0, scope: !2903)
!2906 = !DILocation(line: 0, scope: !2899)
!2907 = !DILocation(line: 967, column: 1, scope: !2894)
!2908 = !DISubprogram(name: "alloc_ref_pic_list_reordering_buffer", scope: !867, file: !867, line: 251, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
