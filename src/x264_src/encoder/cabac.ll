; ModuleID = 'x264_src/encoder/cabac.c'
source_filename = "x264_src/encoder/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1, !dbg !0
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !1456
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !1486
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !1489
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16, !dbg !1491
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16, !dbg !1494
@x264_cabac_mb_type.i_mb_bits = internal unnamed_addr constant [27 x i8] c"1)\045-\00Cc\00=/\009%\06Ss\00Kk\00[{\00Gg!", align 16, !dbg !136
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1, !dbg !1453
@x264_cabac_mb_mvd_cpn.ctxes = internal unnamed_addr constant [8 x i8] c"\03\04\05\06\06\06\06\06", align 1, !dbg !1461
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16, !dbg !1498
@significant_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 105, i16 120, i16 134, i16 149, i16 152, i16 402], [6 x i16] [i16 277, i16 292, i16 306, i16 321, i16 324, i16 436]], align 16, !dbg !1506
@last_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 166, i16 181, i16 195, i16 210, i16 213, i16 417], [6 x i16] [i16 338, i16 353, i16 367, i16 382, i16 385, i16 451]], align 16, !dbg !1511
@coeff_abs_level_m1_offset = internal unnamed_addr constant [6 x i16] [i16 227, i16 237, i16 247, i16 257, i16 266, i16 426], align 2, !dbg !1513
@significant_coeff_flag_offset_8x8 = internal unnamed_addr constant [2 x [63 x i8]] [[63 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C", [63 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E"], align 16, !dbg !1516
@last_coeff_flag_offset_8x8 = internal unnamed_addr constant [63 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08", align 16, !dbg !1521
@count_cat_m1 = internal unnamed_addr constant [5 x i8] c"\0F\0E\0F\03\0E", align 1, !dbg !1525
@coeff_abs_level1_ctx = internal unnamed_addr constant [8 x i8] c"\01\02\03\04\00\00\00\00", align 1, !dbg !1528
@coeff_abs_levelgt1_ctx = internal unnamed_addr constant [8 x i8] c"\05\05\05\05\06\07\08\09", align 1, !dbg !1530
@coeff_abs_level_transition = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\02\03\03\04\05\06\07", [8 x i8] c"\04\04\04\04\05\06\07\07"], align 16, !dbg !1532

; Function Attrs: nounwind uwtable
define dso_local void @x264_cabac_mb_skip(ptr noundef %h, i32 noundef %b_skip) local_unnamed_addr #0 !dbg !1547 {
entry:
    #dbg_value(ptr %h, !1551, !DIExpression(), !1554)
    #dbg_value(i32 %b_skip, !1552, !DIExpression(), !1554)
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !1555
  %0 = load i32, ptr %i_neighbour, align 8, !dbg !1555
  %and = and i32 %0, 1, !dbg !1556
  %tobool.not = icmp eq i32 %and, 0, !dbg !1556
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1557

land.rhs:                                         ; preds = %entry
  %i_mb_type_left = getelementptr inbounds i8, ptr %h, i64 16584, !dbg !1558
  %1 = load i32, ptr %i_mb_type_left, align 8, !dbg !1558
  %cmp = icmp ne i32 %1, 6, !dbg !1558
  %cmp4 = icmp ne i32 %1, 18, !dbg !1558
  %narrow = and i1 %cmp, %cmp4, !dbg !1558
  %lnot = zext i1 %narrow to i32, !dbg !1558
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %lnot, %land.rhs ], !dbg !1554
  %and7 = and i32 %0, 2, !dbg !1559
  %tobool8.not = icmp eq i32 %and7, 0, !dbg !1559
  br i1 %tobool8.not, label %land.end18, label %land.rhs9, !dbg !1560

land.rhs9:                                        ; preds = %land.end
  %i_mb_type_top = getelementptr inbounds i8, ptr %h, i64 16580, !dbg !1561
  %2 = load i32, ptr %i_mb_type_top, align 4, !dbg !1561
  %cmp11 = icmp ne i32 %2, 6, !dbg !1561
  %cmp15 = icmp ne i32 %2, 18, !dbg !1561
  %narrow30 = and i1 %cmp11, %cmp15, !dbg !1561
  %lnot17 = zext i1 %narrow30 to i32, !dbg !1561
  br label %land.end18

land.end18:                                       ; preds = %land.rhs9, %land.end
  %land.ext19 = phi i32 [ 0, %land.end ], [ %lnot17, %land.rhs9 ], !dbg !1554
  %add = add nuw nsw i32 %land.ext19, %land.ext, !dbg !1562
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !1563
  %3 = load i32, ptr %i_type, align 16, !dbg !1563
  %cmp20 = icmp eq i32 %3, 0, !dbg !1564
  %cond = select i1 %cmp20, i32 11, i32 24, !dbg !1565
  %add21 = add nuw nsw i32 %add, %cond, !dbg !1566
    #dbg_value(i32 %add21, !1553, !DIExpression(), !1554)
  %cabac = getelementptr inbounds i8, ptr %h, i64 13904, !dbg !1567
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cabac, i32 noundef %add21, i32 noundef %b_skip) #7, !dbg !1568
  ret void, !dbg !1569
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1570 void @x264_cabac_encode_decision_c(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cabac(ptr noundef %h, ptr noundef %cb) local_unnamed_addr #0 !dbg !1573 {
entry:
  %mvp.i1549 = alloca [2 x i16], align 4, !DIAssignID !1707
  %mvp.i1499 = alloca [2 x i16], align 4, !DIAssignID !1708
  %mvp.i1451 = alloca [2 x i16], align 4, !DIAssignID !1709
  %mvp.i1403 = alloca [2 x i16], align 4, !DIAssignID !1710
  %mvp.i1353 = alloca [2 x i16], align 4, !DIAssignID !1711
  %mvp.i1296 = alloca [2 x i16], align 4, !DIAssignID !1712
  %mvp.i = alloca [2 x i16], align 4, !DIAssignID !1713
  %mvp.i590.i = alloca [2 x i16], align 4, !DIAssignID !1714
  %mvp.i534.i = alloca [2 x i16], align 4, !DIAssignID !1715
  %mvp.i478.i = alloca [2 x i16], align 4, !DIAssignID !1716
  %mvp.i422.i = alloca [2 x i16], align 4, !DIAssignID !1717
  %mvp.i365.i = alloca [2 x i16], align 4, !DIAssignID !1718
  %mvp.i309.i = alloca [2 x i16], align 4, !DIAssignID !1719
  %mvp.i253.i = alloca [2 x i16], align 4, !DIAssignID !1720
  %mvp.i197.i = alloca [2 x i16], align 4, !DIAssignID !1721
  %mvp.i.i = alloca [2 x i16], align 4, !DIAssignID !1722
    #dbg_value(ptr %h, !1575, !DIExpression(), !1723)
    #dbg_value(ptr %cb, !1576, !DIExpression(), !1723)
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384, !dbg !1724
  %0 = load i32, ptr %i_type, align 8, !dbg !1724
    #dbg_value(i32 %0, !1577, !DIExpression(), !1723)
    #dbg_value(ptr %cb, !1725, !DIExpression(), !1730)
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !1732
  %1 = load ptr, ptr %p.i, align 8, !dbg !1732
  %p_start.i = getelementptr inbounds i8, ptr %cb, i64 16, !dbg !1733
  %2 = load ptr, ptr %p_start.i, align 16, !dbg !1733
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i64, !dbg !1734
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i64, !dbg !1734
  %sub.ptr.sub.i.neg = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i, !dbg !1734
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1735
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !1735
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8, !dbg !1736
  %4 = load i32, ptr %i_queue.i, align 8, !dbg !1736
  %.neg1770 = trunc i64 %sub.ptr.sub.i.neg to i32, !dbg !1737
  %add.tr.i.neg = sub i32 %.neg1770, %3, !dbg !1737
  %.neg1771 = shl i32 %add.tr.i.neg, 3, !dbg !1737
  %conv3.i.neg1772 = sub i32 %.neg1771, %4, !dbg !1737
    #dbg_value(!DIArgList(i32 %3, i32 %4, i64 %sub.ptr.lhs.cast.i, i64 %sub.ptr.rhs.cast.i), !1579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1723)
    #dbg_value(ptr %h, !1435, !DIExpression(), !1738)
    #dbg_value(ptr %cb, !1436, !DIExpression(), !1738)
    #dbg_value(i32 %0, !1437, !DIExpression(), !1738)
  %b_mbaff.i = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !1740
  %5 = load i32, ptr %b_mbaff.i, align 4, !dbg !1740
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !1742
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i, !dbg !1743

land.lhs.true.i:                                  ; preds = %entry
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1744
  %6 = load i32, ptr %i_mb_y.i, align 4, !dbg !1744
  %and.i = and i32 %6, 1, !dbg !1745
  %tobool2.not.i = icmp eq i32 %and.i, 0, !dbg !1745
  br i1 %tobool2.not.i, label %if.then.i, label %lor.lhs.false.i, !dbg !1746

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !1747
  %7 = load ptr, ptr %type.i, align 8, !dbg !1747
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !1747
  %8 = load i32, ptr %i_mb_xy.i, align 8, !dbg !1747
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !1747
  %9 = load i32, ptr %i_mb_stride.i, align 4, !dbg !1747
  %sub.i = sub nsw i32 %8, %9, !dbg !1747
  %idxprom.i = sext i32 %sub.i to i64, !dbg !1747
  %arrayidx.i = getelementptr inbounds i8, ptr %7, i64 %idxprom.i, !dbg !1747
  %10 = load i8, ptr %arrayidx.i, align 1, !dbg !1747
  switch i8 %10, label %if.end.i [
    i8 6, label %if.then.i
    i8 18, label %if.then.i
  ], !dbg !1747

if.then.i:                                        ; preds = %lor.lhs.false.i, %lor.lhs.false.i, %land.lhs.true.i
  %i_neighbour_interlaced.i = getelementptr inbounds i8, ptr %h, i64 25772, !dbg !1748
  %11 = load i32, ptr %i_neighbour_interlaced.i, align 4, !dbg !1748
  %add.i = add nsw i32 %11, 70, !dbg !1750
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1751
  %12 = load i32, ptr %b_interlaced.i, align 4, !dbg !1751
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i, i32 noundef %12) #7, !dbg !1752
  br label %if.end.i, !dbg !1753

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i, %entry
  %i_type23.i = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !1754
  %13 = load i32, ptr %i_type23.i, align 16, !dbg !1754
  switch i32 %13, label %if.else75.i [
    i32 2, label %if.then26.i
    i32 0, label %if.then52.i
  ], !dbg !1755

if.then26.i:                                      ; preds = %if.end.i
    #dbg_value(i32 0, !1439, !DIExpression(), !1756)
  %i_neighbour.i = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !1757
  %14 = load i32, ptr %i_neighbour.i, align 8, !dbg !1757
  %and28.i = and i32 %14, 1, !dbg !1759
  %tobool29.not.i = icmp eq i32 %and28.i, 0, !dbg !1759
  br i1 %tobool29.not.i, label %if.end35.i, label %land.lhs.true30.i, !dbg !1760

land.lhs.true30.i:                                ; preds = %if.then26.i
  %i_mb_type_left.i = getelementptr inbounds i8, ptr %h, i64 16584, !dbg !1761
  %15 = load i32, ptr %i_mb_type_left.i, align 8, !dbg !1761
  %cmp32.not.i = icmp ne i32 %15, 0, !dbg !1762
  %spec.select.i = zext i1 %cmp32.not.i to i32, !dbg !1763
  br label %if.end35.i, !dbg !1763

if.end35.i:                                       ; preds = %land.lhs.true30.i, %if.then26.i
  %ctx.0.i = phi i32 [ 0, %if.then26.i ], [ %spec.select.i, %land.lhs.true30.i ], !dbg !1756
    #dbg_value(i32 %ctx.0.i, !1439, !DIExpression(), !1756)
  %and38.i = and i32 %14, 2, !dbg !1764
  %tobool39.not.i = icmp eq i32 %and38.i, 0, !dbg !1764
  br i1 %tobool39.not.i, label %if.end46.i, label %land.lhs.true40.i, !dbg !1766

land.lhs.true40.i:                                ; preds = %if.end35.i
  %i_mb_type_top.i = getelementptr inbounds i8, ptr %h, i64 16580, !dbg !1767
  %16 = load i32, ptr %i_mb_type_top.i, align 4, !dbg !1767
  %cmp42.not.i = icmp ne i32 %16, 0, !dbg !1768
  %inc45.i = zext i1 %cmp42.not.i to i32, !dbg !1769
  %spec.select259.i = add nuw nsw i32 %ctx.0.i, %inc45.i, !dbg !1769
  br label %if.end46.i, !dbg !1769

if.end46.i:                                       ; preds = %land.lhs.true40.i, %if.end35.i
  %ctx.1.i = phi i32 [ %ctx.0.i, %if.end35.i ], [ %spec.select259.i, %land.lhs.true40.i ], !dbg !1756
    #dbg_value(i32 %ctx.1.i, !1439, !DIExpression(), !1756)
  %add47.i = add nuw nsw i32 %ctx.1.i, 3, !dbg !1770
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef %add47.i, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10), !dbg !1771
  br label %x264_cabac_mb_type.exit, !dbg !1772

if.then52.i:                                      ; preds = %if.end.i
  switch i32 %0, label %if.else72.i [
    i32 4, label %if.else.thread
    i32 5, label %if.else.thread1849
  ], !dbg !1773

if.else.thread:                                   ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 0) #7, !dbg !1775
  %i_partition.i = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !1778
  %17 = load i32, ptr %i_partition.i, align 4, !dbg !1778
  %cmp57.i = icmp ne i32 %17, 16, !dbg !1779
  %conv58.i = zext i1 %cmp57.i to i32, !dbg !1779
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 15, i32 noundef %conv58.i) #7, !dbg !1780
  %18 = load i32, ptr %i_partition.i, align 4, !dbg !1781
  %cmp61.i = icmp eq i32 %18, 16, !dbg !1782
  %sub63.i = select i1 %cmp61.i, i32 16, i32 17, !dbg !1783
  %cmp66.i = icmp eq i32 %18, 14, !dbg !1784
  %conv67.i = zext i1 %cmp66.i to i32, !dbg !1784
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub63.i, i32 noundef %conv67.i) #7, !dbg !1785
  br label %if.then76, !dbg !1786

if.else.thread1849:                               ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 0) #7, !dbg !1787
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 15, i32 noundef 0) #7, !dbg !1790
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 16, i32 noundef 1) #7, !dbg !1791
  br label %for.cond149.preheader, !dbg !1786

if.else72.i:                                      ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 1) #7, !dbg !1792
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef 17, i32 noundef 18, i32 noundef 19, i32 noundef 19, i32 noundef 20, i32 noundef 20), !dbg !1794
  br label %x264_cabac_mb_type.exit

if.else75.i:                                      ; preds = %if.end.i
    #dbg_value(i32 0, !1442, !DIExpression(), !1795)
  %i_neighbour78.i = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !1796
  %19 = load i32, ptr %i_neighbour78.i, align 8, !dbg !1796
  %and79.i = and i32 %19, 1, !dbg !1798
  %tobool80.not.i = icmp eq i32 %and79.i, 0, !dbg !1798
  br i1 %tobool80.not.i, label %if.end93.i, label %land.lhs.true81.i, !dbg !1799

land.lhs.true81.i:                                ; preds = %if.else75.i
  %i_mb_type_left83.i = getelementptr inbounds i8, ptr %h, i64 16584, !dbg !1800
  %20 = load i32, ptr %i_mb_type_left83.i, align 8, !dbg !1800
  %switch.selectcmp.case1.i = icmp ne i32 %20, 18, !dbg !1801
  %switch.selectcmp.case2.i = icmp ne i32 %20, 7, !dbg !1801
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i, !dbg !1801
  %21 = zext i1 %switch.selectcmp.not.i to i32, !dbg !1801
  br label %if.end93.i, !dbg !1801

if.end93.i:                                       ; preds = %land.lhs.true81.i, %if.else75.i
  %ctx76.0.i = phi i32 [ 0, %if.else75.i ], [ %21, %land.lhs.true81.i ], !dbg !1795
    #dbg_value(i32 %ctx76.0.i, !1442, !DIExpression(), !1795)
  %and96.i = and i32 %19, 2, !dbg !1802
  %tobool97.not.i = icmp eq i32 %and96.i, 0, !dbg !1802
  br i1 %tobool97.not.i, label %if.end110.i, label %land.lhs.true98.i, !dbg !1804

land.lhs.true98.i:                                ; preds = %if.end93.i
  %i_mb_type_top100.i = getelementptr inbounds i8, ptr %h, i64 16580, !dbg !1805
  %22 = load i32, ptr %i_mb_type_top100.i, align 4, !dbg !1805
  switch i32 %22, label %if.then108.i [
    i32 18, label %if.end110.i
    i32 7, label %if.end110.i
  ], !dbg !1806

if.then108.i:                                     ; preds = %land.lhs.true98.i
  %inc109.i = add nuw nsw i32 %ctx76.0.i, 1, !dbg !1807
    #dbg_value(i32 %inc109.i, !1442, !DIExpression(), !1795)
  br label %if.end110.i, !dbg !1808

if.end110.i:                                      ; preds = %if.then108.i, %land.lhs.true98.i, %land.lhs.true98.i, %if.end93.i
  %ctx76.1.i = phi i32 [ %inc109.i, %if.then108.i ], [ %ctx76.0.i, %land.lhs.true98.i ], [ %ctx76.0.i, %if.end93.i ], [ %ctx76.0.i, %land.lhs.true98.i ], !dbg !1795
    #dbg_value(i32 %ctx76.1.i, !1442, !DIExpression(), !1795)
  %cmp111.not.i = icmp eq i32 %0, 7, !dbg !1809
  %add114.i = add nuw nsw i32 %ctx76.1.i, 27, !dbg !1795
  br i1 %cmp111.not.i, label %if.else.thread1855, label %if.end115.i, !dbg !1811

if.else.thread1855:                               ; preds = %if.end110.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add114.i, i32 noundef 0) #7, !dbg !1812
  br label %if.end467, !dbg !1786

if.end115.i:                                      ; preds = %if.end110.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add114.i, i32 noundef 1) #7, !dbg !1814
  %cmp117.i = icmp eq i32 %0, 17, !dbg !1815
  br i1 %cmp117.i, label %if.else.thread1852, label %if.else120.i, !dbg !1816

if.else.thread1852:                               ; preds = %if.end115.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef 1) #7, !dbg !1817
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 31, i32 noundef 1) #7, !dbg !1819
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7, !dbg !1820
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7, !dbg !1821
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7, !dbg !1822
  br label %for.cond183.preheader, !dbg !1786

if.else120.i:                                     ; preds = %if.end115.i
  %or.cond170.i = icmp ult i32 %0, 4, !dbg !1823
  br i1 %or.cond170.i, label %if.then132.i, label %if.else133.i, !dbg !1823

if.then132.i:                                     ; preds = %if.else120.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef 1) #7, !dbg !1824
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 31, i32 noundef 1) #7, !dbg !1826
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7, !dbg !1827
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 0) #7, !dbg !1828
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7, !dbg !1829
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef 32, i32 noundef 33, i32 noundef 34, i32 noundef 34, i32 noundef 35, i32 noundef 35), !dbg !1830
  br label %x264_cabac_mb_type.exit, !dbg !1831

if.else133.i:                                     ; preds = %if.else120.i
  %23 = mul i32 %0, 3, !dbg !1832
  %i_partition136.i = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !1833
  %24 = load i32, ptr %i_partition136.i, align 4, !dbg !1833
  %sub137.i = add i32 %23, -38, !dbg !1834
  %add138.i = add i32 %sub137.i, %24, !dbg !1834
    #dbg_value(i32 %add138.i, !1445, !DIExpression(), !1835)
  %idxprom139.i = sext i32 %add138.i to i64, !dbg !1836
  %arrayidx140.i = getelementptr inbounds [27 x i8], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %idxprom139.i, !dbg !1836
  %25 = load i8, ptr %arrayidx140.i, align 1, !dbg !1836
  %conv141.i = zext i8 %25 to i32, !dbg !1836
    #dbg_value(i32 %conv141.i, !1449, !DIExpression(), !1835)
  %and142.i = and i32 %conv141.i, 1, !dbg !1837
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef %and142.i) #7, !dbg !1838
  %sub144.i = sub nuw nsw i32 32, %and142.i, !dbg !1839
  %shr.i = lshr i32 %conv141.i, 1, !dbg !1840
  %and145.i = and i32 %shr.i, 1, !dbg !1841
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub144.i, i32 noundef %and145.i) #7, !dbg !1842
  %shr146.i = lshr i32 %conv141.i, 2, !dbg !1843
    #dbg_value(i32 %shr146.i, !1449, !DIExpression(), !1835)
  %cmp147.not.i = icmp eq i32 %shr146.i, 1, !dbg !1844
  br i1 %cmp147.not.i, label %if.else, label %if.then149.i, !dbg !1846

if.then149.i:                                     ; preds = %if.else133.i
  %and150.i = and i32 %shr146.i, 1, !dbg !1847
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and150.i) #7, !dbg !1849
  %shr151.i = lshr i32 %conv141.i, 3, !dbg !1850
    #dbg_value(i32 %shr151.i, !1449, !DIExpression(), !1835)
  %and152.i = and i32 %shr151.i, 1, !dbg !1851
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and152.i) #7, !dbg !1852
  %shr153.i = lshr i32 %conv141.i, 4, !dbg !1853
    #dbg_value(i32 %shr153.i, !1449, !DIExpression(), !1835)
  %and154.i = and i32 %shr153.i, 1, !dbg !1854
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and154.i) #7, !dbg !1855
  %shr155.i = lshr i32 %conv141.i, 5, !dbg !1856
    #dbg_value(i32 %shr155.i, !1449, !DIExpression(), !1835)
  %cmp156.not.i = icmp eq i32 %shr155.i, 1, !dbg !1857
  br i1 %cmp156.not.i, label %if.else, label %if.then158.i, !dbg !1859

if.then158.i:                                     ; preds = %if.then149.i
  %and159.i = and i32 %shr155.i, 1, !dbg !1860
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and159.i) #7, !dbg !1861
  br label %if.else, !dbg !1861

x264_cabac_mb_type.exit:                          ; preds = %if.end46.i, %if.else72.i, %if.then132.i
  %cmp = icmp eq i32 %0, 3, !dbg !1862
  br i1 %cmp, label %if.then, label %if.end, !dbg !1863

if.then:                                          ; preds = %x264_cabac_mb_type.exit
    #dbg_value(ptr %cb, !1725, !DIExpression(), !1864)
  %26 = load ptr, ptr %p.i, align 8, !dbg !1866
  %27 = load ptr, ptr %p_start.i, align 16, !dbg !1867
  %sub.ptr.lhs.cast.i993 = ptrtoint ptr %26 to i64, !dbg !1868
  %sub.ptr.rhs.cast.i994 = ptrtoint ptr %27 to i64, !dbg !1868
  %sub.ptr.sub.i995 = sub i64 %sub.ptr.lhs.cast.i993, %sub.ptr.rhs.cast.i994, !dbg !1868
  %28 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !1869
  %29 = load i32, ptr %i_queue.i, align 8, !dbg !1870
  %30 = trunc i64 %sub.ptr.sub.i995 to i32, !dbg !1871
  %add.tr.i998 = add i32 %28, %30, !dbg !1871
  %31 = shl i32 %add.tr.i998, 3, !dbg !1871
  %conv3.i999 = add i32 %31, %29, !dbg !1871
    #dbg_value(i32 %conv3.i999, !1580, !DIExpression(), !1723)
  %stat = getelementptr inbounds i8, ptr %h, i64 26712, !dbg !1872
  %32 = load i32, ptr %stat, align 8, !dbg !1873
  %sub = add i32 %32, %conv3.i.neg1772, !dbg !1874
  %add = add i32 %sub, %conv3.i999, !dbg !1873
  store i32 %add, ptr %stat, align 8, !dbg !1873
  %33 = load ptr, ptr %p.i, align 8, !dbg !1875
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !1876
  %34 = load ptr, ptr %p_fenc, align 16, !dbg !1877
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %33, ptr noundef nonnull align 1 dereferenceable(256) %34, i64 256, i1 false), !dbg !1878
  %35 = load ptr, ptr %p.i, align 8, !dbg !1879
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 256, !dbg !1879
  store ptr %add.ptr, ptr %p.i, align 8, !dbg !1879
    #dbg_value(i32 0, !1581, !DIExpression(), !1880)
  %arrayidx10 = getelementptr inbounds i8, ptr %h, i64 21352
    #dbg_value(i64 0, !1581, !DIExpression(), !1880)
  %36 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %37 = load i64, ptr %36, align 1, !dbg !1883
  store i64 %37, ptr %add.ptr, align 1, !dbg !1883
    #dbg_value(i64 1, !1581, !DIExpression(), !1880)
  %38 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.1 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !1885
  %39 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.1 = getelementptr inbounds i8, ptr %39, i64 16, !dbg !1886
  %40 = load i64, ptr %add.ptr13.1, align 1, !dbg !1883
  store i64 %40, ptr %add.ptr6.1, align 1, !dbg !1883
    #dbg_value(i64 2, !1581, !DIExpression(), !1880)
  %41 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.2 = getelementptr inbounds i8, ptr %41, i64 16, !dbg !1885
  %42 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.2 = getelementptr inbounds i8, ptr %42, i64 32, !dbg !1886
  %43 = load i64, ptr %add.ptr13.2, align 1, !dbg !1883
  store i64 %43, ptr %add.ptr6.2, align 1, !dbg !1883
    #dbg_value(i64 3, !1581, !DIExpression(), !1880)
  %44 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.3 = getelementptr inbounds i8, ptr %44, i64 24, !dbg !1885
  %45 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.3 = getelementptr inbounds i8, ptr %45, i64 48, !dbg !1886
  %46 = load i64, ptr %add.ptr13.3, align 1, !dbg !1883
  store i64 %46, ptr %add.ptr6.3, align 1, !dbg !1883
    #dbg_value(i64 4, !1581, !DIExpression(), !1880)
  %47 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.4 = getelementptr inbounds i8, ptr %47, i64 32, !dbg !1885
  %48 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.4 = getelementptr inbounds i8, ptr %48, i64 64, !dbg !1886
  %49 = load i64, ptr %add.ptr13.4, align 1, !dbg !1883
  store i64 %49, ptr %add.ptr6.4, align 1, !dbg !1883
    #dbg_value(i64 5, !1581, !DIExpression(), !1880)
  %50 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.5 = getelementptr inbounds i8, ptr %50, i64 40, !dbg !1885
  %51 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.5 = getelementptr inbounds i8, ptr %51, i64 80, !dbg !1886
  %52 = load i64, ptr %add.ptr13.5, align 1, !dbg !1883
  store i64 %52, ptr %add.ptr6.5, align 1, !dbg !1883
    #dbg_value(i64 6, !1581, !DIExpression(), !1880)
  %53 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.6 = getelementptr inbounds i8, ptr %53, i64 48, !dbg !1885
  %54 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.6 = getelementptr inbounds i8, ptr %54, i64 96, !dbg !1886
  %55 = load i64, ptr %add.ptr13.6, align 1, !dbg !1883
  store i64 %55, ptr %add.ptr6.6, align 1, !dbg !1883
    #dbg_value(i64 7, !1581, !DIExpression(), !1880)
  %56 = load ptr, ptr %p.i, align 8, !dbg !1884
  %add.ptr6.7 = getelementptr inbounds i8, ptr %56, i64 56, !dbg !1885
  %57 = load ptr, ptr %arrayidx10, align 8, !dbg !1881
  %add.ptr13.7 = getelementptr inbounds i8, ptr %57, i64 112, !dbg !1886
  %58 = load i64, ptr %add.ptr13.7, align 1, !dbg !1883
  store i64 %58, ptr %add.ptr6.7, align 1, !dbg !1883
    #dbg_value(i64 8, !1581, !DIExpression(), !1880)
  %59 = load ptr, ptr %p.i, align 8, !dbg !1887
  %add.ptr15 = getelementptr inbounds i8, ptr %59, i64 64, !dbg !1887
  store ptr %add.ptr15, ptr %p.i, align 8, !dbg !1887
    #dbg_value(i32 0, !1585, !DIExpression(), !1888)
  %arrayidx28 = getelementptr inbounds i8, ptr %h, i64 21360
    #dbg_value(i64 0, !1585, !DIExpression(), !1888)
  %60 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %61 = load i64, ptr %60, align 1, !dbg !1891
  store i64 %61, ptr %add.ptr15, align 1, !dbg !1891
    #dbg_value(i64 1, !1585, !DIExpression(), !1888)
  %62 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.1 = getelementptr inbounds i8, ptr %62, i64 8, !dbg !1893
  %63 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.1 = getelementptr inbounds i8, ptr %63, i64 16, !dbg !1894
  %64 = load i64, ptr %add.ptr31.1, align 1, !dbg !1891
  store i64 %64, ptr %add.ptr24.1, align 1, !dbg !1891
    #dbg_value(i64 2, !1585, !DIExpression(), !1888)
  %65 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.2 = getelementptr inbounds i8, ptr %65, i64 16, !dbg !1893
  %66 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.2 = getelementptr inbounds i8, ptr %66, i64 32, !dbg !1894
  %67 = load i64, ptr %add.ptr31.2, align 1, !dbg !1891
  store i64 %67, ptr %add.ptr24.2, align 1, !dbg !1891
    #dbg_value(i64 3, !1585, !DIExpression(), !1888)
  %68 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.3 = getelementptr inbounds i8, ptr %68, i64 24, !dbg !1893
  %69 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.3 = getelementptr inbounds i8, ptr %69, i64 48, !dbg !1894
  %70 = load i64, ptr %add.ptr31.3, align 1, !dbg !1891
  store i64 %70, ptr %add.ptr24.3, align 1, !dbg !1891
    #dbg_value(i64 4, !1585, !DIExpression(), !1888)
  %71 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.4 = getelementptr inbounds i8, ptr %71, i64 32, !dbg !1893
  %72 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.4 = getelementptr inbounds i8, ptr %72, i64 64, !dbg !1894
  %73 = load i64, ptr %add.ptr31.4, align 1, !dbg !1891
  store i64 %73, ptr %add.ptr24.4, align 1, !dbg !1891
    #dbg_value(i64 5, !1585, !DIExpression(), !1888)
  %74 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.5 = getelementptr inbounds i8, ptr %74, i64 40, !dbg !1893
  %75 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.5 = getelementptr inbounds i8, ptr %75, i64 80, !dbg !1894
  %76 = load i64, ptr %add.ptr31.5, align 1, !dbg !1891
  store i64 %76, ptr %add.ptr24.5, align 1, !dbg !1891
    #dbg_value(i64 6, !1585, !DIExpression(), !1888)
  %77 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.6 = getelementptr inbounds i8, ptr %77, i64 48, !dbg !1893
  %78 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.6 = getelementptr inbounds i8, ptr %78, i64 96, !dbg !1894
  %79 = load i64, ptr %add.ptr31.6, align 1, !dbg !1891
  store i64 %79, ptr %add.ptr24.6, align 1, !dbg !1891
    #dbg_value(i64 7, !1585, !DIExpression(), !1888)
  %80 = load ptr, ptr %p.i, align 8, !dbg !1892
  %add.ptr24.7 = getelementptr inbounds i8, ptr %80, i64 56, !dbg !1893
  %81 = load ptr, ptr %arrayidx28, align 16, !dbg !1889
  %add.ptr31.7 = getelementptr inbounds i8, ptr %81, i64 112, !dbg !1894
  %82 = load i64, ptr %add.ptr31.7, align 1, !dbg !1891
  store i64 %82, ptr %add.ptr24.7, align 1, !dbg !1891
    #dbg_value(i64 8, !1585, !DIExpression(), !1888)
  %83 = load ptr, ptr %p.i, align 8, !dbg !1895
  %add.ptr36 = getelementptr inbounds i8, ptr %83, i64 64, !dbg !1895
  store ptr %add.ptr36, ptr %p.i, align 8, !dbg !1895
  tail call void @x264_cabac_encode_init_core(ptr noundef nonnull %cb) #7, !dbg !1896
    #dbg_value(ptr %cb, !1725, !DIExpression(), !1897)
  br label %cleanup, !dbg !1899

if.end:                                           ; preds = %x264_cabac_mb_type.exit
  %cmp45 = icmp eq i32 %0, 2, !dbg !1900
  %or.cond691 = icmp ult i32 %0, 3, !dbg !1900
  br i1 %or.cond691, label %if.then48, label %if.else, !dbg !1900

if.then48:                                        ; preds = %if.end
  %pps = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !1901
  %84 = load ptr, ptr %pps, align 16, !dbg !1901
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %84, i64 60, !dbg !1903
  %85 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !1903
  %tobool = icmp ne i32 %85, 0, !dbg !1904
  %cmp49 = icmp ne i32 %0, 2
  %or.cond693 = select i1 %tobool, i1 %cmp49, i1 false, !dbg !1905
  br i1 %or.cond693, label %if.end51.thread, label %if.end51, !dbg !1905

if.end51.thread:                                  ; preds = %if.then48
  %86 = getelementptr i8, ptr %h, i64 17396, !dbg !1906
  %h.val989 = load i32, ptr %86, align 4, !dbg !1906
  %87 = getelementptr i8, ptr %h, i64 25768, !dbg !1906
  %h.val990 = load i32, ptr %87, align 8, !dbg !1906
    #dbg_value(ptr undef, !1907, !DIExpression(), !1912)
    #dbg_value(ptr %cb, !1910, !DIExpression(), !1912)
  %add.i1009 = add nsw i32 %h.val990, 399, !dbg !1914
    #dbg_value(i32 %add.i1009, !1911, !DIExpression(), !1912)
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i1009, i32 noundef %h.val989) #7, !dbg !1915
  br label %if.then53, !dbg !1916

if.end51:                                         ; preds = %if.then48
  br i1 %cmp49, label %if.then53, label %if.end73, !dbg !1916

if.then53:                                        ; preds = %if.end51.thread, %if.end51
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !1917
  %88 = load i32, ptr %b_transform_8x8, align 4, !dbg !1917
  %tobool55.not = icmp eq i32 %88, 0, !dbg !1918
  %cond = select i1 %tobool55.not, i64 1, i64 4, !dbg !1918
    #dbg_value(i32 poison, !1587, !DIExpression(), !1919)
    #dbg_value(i32 0, !1592, !DIExpression(), !1920)
  %cache.i = getelementptr inbounds i8, ptr %h, i64 25024
  br label %for.body60, !dbg !1921

for.body60:                                       ; preds = %if.then53, %x264_cabac_mb_intra4x4_pred_mode.exit
  %indvars.iv = phi i64 [ 0, %if.then53 ], [ %indvars.iv.next, %x264_cabac_mb_intra4x4_pred_mode.exit ]
    #dbg_value(i64 %indvars.iv, !1592, !DIExpression(), !1920)
    #dbg_value(ptr %h, !1922, !DIExpression(), !1931)
    #dbg_value(i64 %indvars.iv, !1927, !DIExpression(), !1931)
  %arrayidx.i1011 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv, !dbg !1933
  %89 = load i32, ptr %arrayidx.i1011, align 4, !dbg !1933
  %sub.i1012 = add nsw i32 %89, -1, !dbg !1934
  %idxprom1.i = sext i32 %sub.i1012 to i64, !dbg !1935
  %arrayidx2.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom1.i, !dbg !1935
  %90 = load i8, ptr %arrayidx2.i, align 1, !dbg !1935
  %conv.i = sext i8 %90 to i64, !dbg !1935
    #dbg_value(i8 %90, !1928, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1931)
  %sub9.i = add nsw i32 %89, -8, !dbg !1936
  %idxprom10.i = sext i32 %sub9.i to i64, !dbg !1937
  %arrayidx11.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom10.i, !dbg !1937
  %91 = load i8, ptr %arrayidx11.i, align 1, !dbg !1937
  %conv12.i = sext i8 %91 to i64, !dbg !1937
    #dbg_value(i8 %91, !1929, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1931)
  %add.i1013 = add nsw i64 %conv.i, 1, !dbg !1938
  %arrayidx14.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add.i1013, !dbg !1938
  %92 = load i8, ptr %arrayidx14.i, align 1, !dbg !1938
  %add16.i = add nsw i64 %conv12.i, 1, !dbg !1938
  %arrayidx18.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add16.i, !dbg !1938
  %93 = load i8, ptr %arrayidx18.i, align 1, !dbg !1938
  %..i = tail call i8 @llvm.smin.i8(i8 %92, i8 %93), !dbg !1938
    #dbg_value(i8 %..i, !1930, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1931)
  %cmp29.i = icmp slt i8 %..i, 0, !dbg !1939
  %narrow.i = select i1 %cmp29.i, i8 2, i8 %..i, !dbg !1941
    #dbg_value(i8 %narrow.i, !1594, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1942)
  %idxprom64 = sext i32 %89 to i64, !dbg !1943
  %arrayidx65 = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom64, !dbg !1943
  %94 = load i8, ptr %arrayidx65, align 1, !dbg !1943
  %conv = sext i8 %94 to i64, !dbg !1943
  %add66 = add nsw i64 %conv, 1, !dbg !1943
  %arrayidx68 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add66, !dbg !1943
  %95 = load i8, ptr %arrayidx68, align 1, !dbg !1943
    #dbg_value(i8 %95, !1597, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1942)
    #dbg_value(ptr %cb, !1944, !DIExpression(), !1949)
    #dbg_value(i8 %narrow.i, !1947, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1949)
    #dbg_value(i8 %95, !1948, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1949)
  %cmp.i = icmp eq i8 %narrow.i, %95, !dbg !1951
  br i1 %cmp.i, label %if.then.i1016, label %if.else.i, !dbg !1953

if.then.i1016:                                    ; preds = %for.body60
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 68, i32 noundef 1) #7, !dbg !1954
  br label %x264_cabac_mb_intra4x4_pred_mode.exit, !dbg !1954

if.else.i:                                        ; preds = %for.body60
  %conv69 = sext i8 %95 to i32, !dbg !1943
    #dbg_value(i32 %conv69, !1597, !DIExpression(), !1942)
    #dbg_value(i32 %conv69, !1948, !DIExpression(), !1949)
    #dbg_value(i8 %narrow.i, !1594, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1942)
    #dbg_value(i8 %narrow.i, !1947, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1949)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 68, i32 noundef 0) #7, !dbg !1955
  %cmp1.i = icmp sgt i8 %95, %narrow.i, !dbg !1957
  %dec.i = sext i1 %cmp1.i to i32, !dbg !1959
  %spec.select.i1014 = add nsw i32 %dec.i, %conv69, !dbg !1959
    #dbg_value(i32 %spec.select.i1014, !1948, !DIExpression(), !1949)
  %and.i1015 = and i32 %spec.select.i1014, 1, !dbg !1960
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %and.i1015) #7, !dbg !1961
  %shr16.i = lshr i32 %spec.select.i1014, 1, !dbg !1962
  %and3.i = and i32 %shr16.i, 1, !dbg !1963
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %and3.i) #7, !dbg !1964
  %shr4.i = ashr i32 %spec.select.i1014, 2, !dbg !1965
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %shr4.i) #7, !dbg !1966
  br label %x264_cabac_mb_intra4x4_pred_mode.exit

x264_cabac_mb_intra4x4_pred_mode.exit:            ; preds = %if.then.i1016, %if.else.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %cond, !dbg !1967
    #dbg_value(i64 %indvars.iv.next, !1592, !DIExpression(), !1920)
  %cmp58 = icmp ult i64 %indvars.iv.next, 16, !dbg !1968
  br i1 %cmp58, label %for.body60, label %if.end73, !dbg !1921, !llvm.loop !1969

if.end73:                                         ; preds = %x264_cabac_mb_intra4x4_pred_mode.exit, %if.end51
    #dbg_value(ptr %h, !1971, !DIExpression(), !1977)
    #dbg_value(ptr %cb, !1974, !DIExpression(), !1977)
  %i_chroma_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 17412, !dbg !1979
  %96 = load i32, ptr %i_chroma_pred_mode.i, align 4, !dbg !1979
  %idxprom.i1017 = sext i32 %96 to i64, !dbg !1980
    #dbg_value(i8 poison, !1975, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1977)
    #dbg_value(i32 0, !1976, !DIExpression(), !1977)
  %i_neighbour.i1018 = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !1981
  %97 = load i32, ptr %i_neighbour.i1018, align 8, !dbg !1981
  %and.i1019 = and i32 %97, 1, !dbg !1983
  %tobool.not.i1020 = icmp eq i32 %and.i1019, 0, !dbg !1983
  br i1 %tobool.not.i1020, label %if.end.i1023, label %land.lhs.true.i1021, !dbg !1984

land.lhs.true.i1021:                              ; preds = %if.end73
  %chroma_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 16664, !dbg !1985
  %98 = load ptr, ptr %chroma_pred_mode.i, align 8, !dbg !1985
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !1986
  %99 = load i32, ptr %i_mb_left_xy.i, align 8, !dbg !1986
  %idxprom4.i = sext i32 %99 to i64, !dbg !1987
  %arrayidx5.i = getelementptr inbounds i8, ptr %98, i64 %idxprom4.i, !dbg !1987
  %100 = load i8, ptr %arrayidx5.i, align 1, !dbg !1987
  %cmp.not.i = icmp ne i8 %100, 0, !dbg !1988
  %spec.select.i1022 = zext i1 %cmp.not.i to i32, !dbg !1989
  br label %if.end.i1023, !dbg !1989

if.end.i1023:                                     ; preds = %land.lhs.true.i1021, %if.end73
  %ctx.0.i1024 = phi i32 [ 0, %if.end73 ], [ %spec.select.i1022, %land.lhs.true.i1021 ], !dbg !1977
    #dbg_value(i32 %ctx.0.i1024, !1976, !DIExpression(), !1977)
  %and10.i = and i32 %97, 2, !dbg !1990
  %tobool11.not.i = icmp eq i32 %and10.i, 0, !dbg !1990
  br i1 %tobool11.not.i, label %if.end23.i, label %land.lhs.true12.i, !dbg !1992

land.lhs.true12.i:                                ; preds = %if.end.i1023
  %chroma_pred_mode14.i = getelementptr inbounds i8, ptr %h, i64 16664, !dbg !1993
  %101 = load ptr, ptr %chroma_pred_mode14.i, align 8, !dbg !1993
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !1994
  %102 = load i32, ptr %i_mb_top_xy.i, align 4, !dbg !1994
  %idxprom16.i = sext i32 %102 to i64, !dbg !1995
  %arrayidx17.i = getelementptr inbounds i8, ptr %101, i64 %idxprom16.i, !dbg !1995
  %103 = load i8, ptr %arrayidx17.i, align 1, !dbg !1995
  %cmp19.not.i = icmp ne i8 %103, 0, !dbg !1996
  %inc22.i = zext i1 %cmp19.not.i to i32, !dbg !1997
  %spec.select52.i = add nuw nsw i32 %ctx.0.i1024, %inc22.i, !dbg !1997
  br label %if.end23.i, !dbg !1997

if.end23.i:                                       ; preds = %land.lhs.true12.i, %if.end.i1023
  %ctx.1.i1025 = phi i32 [ %ctx.0.i1024, %if.end.i1023 ], [ %spec.select52.i, %land.lhs.true12.i ], !dbg !1977
    #dbg_value(i32 %ctx.1.i1025, !1976, !DIExpression(), !1977)
  %add.i1026 = add nuw nsw i32 %ctx.1.i1025, 64, !dbg !1998
  %104 = add nsw i64 %idxprom.i1017, -1, !dbg !1999
  %cmp24.i = icmp ult i64 %104, 3, !dbg !1999
  %conv25.i = zext i1 %cmp24.i to i32, !dbg !1999
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add.i1026, i32 noundef %conv25.i) #7, !dbg !2000
  br i1 %cmp24.i, label %if.then28.i, label %if.end467, !dbg !2001

if.then28.i:                                      ; preds = %if.end23.i
  %105 = and i32 %96, -2, !dbg !2002
  %cmp29.i1027 = icmp eq i32 %105, 2, !dbg !2002
  %conv30.i = zext i1 %cmp29.i1027 to i32, !dbg !2002
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 67, i32 noundef %conv30.i) #7, !dbg !2005
  br i1 %cmp29.i1027, label %if.then33.i, label %if.end467, !dbg !2006

if.then33.i:                                      ; preds = %if.then28.i
  %cmp34.i = icmp eq i32 %96, 3, !dbg !2007
  %conv35.i = zext i1 %cmp34.i to i32, !dbg !2007
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 67, i32 noundef %conv35.i) #7, !dbg !2009
  br label %if.end467, !dbg !2009

if.else:                                          ; preds = %if.else133.i, %if.then149.i, %if.then158.i, %if.end
  %cmp451745 = phi i1 [ %cmp45, %if.end ], [ false, %if.then158.i ], [ false, %if.then149.i ], [ false, %if.else133.i ]
  switch i32 %0, label %if.then317 [
    i32 4, label %if.then76
    i32 5, label %for.cond149.preheader
    i32 17, label %for.cond183.preheader
    i32 7, label %if.end467
  ], !dbg !1786

for.cond183.preheader:                            ; preds = %if.else.thread1852, %if.else
  %cmp4517451854 = phi i1 [ false, %if.else.thread1852 ], [ %cmp451745, %if.else ]
  %i_sub_partition189 = getelementptr inbounds i8, ptr %h, i64 17392
    #dbg_value(i64 0, !1621, !DIExpression(), !2010)
  %106 = load i8, ptr %i_sub_partition189, align 1, !dbg !2011
    #dbg_value(ptr %cb, !2013, !DIExpression(), !2019)
    #dbg_value(i8 %106, !2018, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2019)
  %cmp.i1188 = icmp eq i8 %106, 12, !dbg !2021
  br i1 %cmp.i1188, label %if.then.i1193, label %if.end.i1189, !dbg !2023

for.cond149.preheader:                            ; preds = %if.else.thread1849, %if.else
  %cmp4517451851 = phi i1 [ false, %if.else.thread1849 ], [ %cmp451745, %if.else ]
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
    #dbg_value(i64 0, !1615, !DIExpression(), !2024)
  %107 = load i8, ptr %i_sub_partition, align 1, !dbg !2025
    #dbg_value(ptr %cb, !2027, !DIExpression(), !2031)
    #dbg_value(i8 %107, !2030, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2031)
  %cmp.i1058 = icmp eq i8 %107, 3, !dbg !2033
  br i1 %cmp.i1058, label %if.then.i1063, label %if.end.i1059, !dbg !2035

if.then76:                                        ; preds = %if.else.thread, %if.else
  %cmp4517451848 = phi i1 [ false, %if.else.thread ], [ %cmp451745, %if.else ]
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !2036
  %108 = load i32, ptr %i_partition, align 4, !dbg !2036
  %i_fref122 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2037
  %109 = load i32, ptr %i_fref122, align 8, !dbg !2037
  %cmp124 = icmp sgt i32 %109, 1, !dbg !2037
  switch i32 %108, label %if.else119 [
    i32 16, label %if.then80
    i32 14, label %if.then96
  ], !dbg !2038

if.then80:                                        ; preds = %if.then76
  br i1 %cmp124, label %if.then86, label %do.body, !dbg !2039

if.then86:                                        ; preds = %if.then80
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0), !dbg !2040
  br label %do.body, !dbg !2043

do.body:                                          ; preds = %if.then80, %if.then86
  %call88 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2044
    #dbg_value(i16 %call88, !1598, !DIExpression(), !2045)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2059)
    #dbg_value(i32 0, !2052, !DIExpression(), !2059)
    #dbg_value(i32 0, !2053, !DIExpression(), !2059)
    #dbg_value(i32 4, !2054, !DIExpression(), !2059)
    #dbg_value(i32 4, !2055, !DIExpression(), !2059)
    #dbg_value(i32 0, !2056, !DIExpression(), !2059)
    #dbg_value(i16 %call88, !2057, !DIExpression(), !2059)
  %arrayidx4.i = getelementptr inbounds i8, ptr %h, i64 25544, !dbg !2061
    #dbg_value(ptr %arrayidx4.i, !2058, !DIExpression(), !2059)
  %conv.i1028 = zext i16 %call88 to i64, !dbg !2062
    #dbg_value(ptr %arrayidx4.i, !2064, !DIExpression(), !2077)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2077)
    #dbg_value(i32 4, !2070, !DIExpression(), !2077)
    #dbg_value(i32 2, !2071, !DIExpression(), !2077)
    #dbg_value(i16 %call88, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2077)
    #dbg_value(ptr %arrayidx4.i, !2073, !DIExpression(), !2077)
    #dbg_value(i16 %call88, !2074, !DIExpression(), !2077)
    #dbg_value(i64 %conv.i1028, !2075, !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2077)
  %add.i.i = mul nuw i64 %conv.i1028, 281479271743489, !dbg !2079
    #dbg_value(i64 %add.i.i, !2076, !DIExpression(), !2077)
    #dbg_value(i32 16, !2071, !DIExpression(), !2077)
  store i64 %add.i.i, ptr %arrayidx4.i, align 8, !dbg !2080
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %h, i64 25560, !dbg !2087
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8, !dbg !2088
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %h, i64 25576, !dbg !2089
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8, !dbg !2090
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %h, i64 25592, !dbg !2091
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8, !dbg !2092
  br label %if.end467, !dbg !2093

if.then96:                                        ; preds = %if.then76
  br i1 %cmp124, label %if.then103, label %do.body105, !dbg !2094

if.then103:                                       ; preds = %if.then96
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0), !dbg !2095
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 8), !dbg !2098
  br label %do.body105, !dbg !2099

do.body105:                                       ; preds = %if.then96, %if.then103
  %call107 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2100
    #dbg_value(i16 %call107, !1604, !DIExpression(), !2101)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2102)
    #dbg_value(i32 0, !2052, !DIExpression(), !2102)
    #dbg_value(i32 0, !2053, !DIExpression(), !2102)
    #dbg_value(i32 4, !2054, !DIExpression(), !2102)
    #dbg_value(i32 2, !2055, !DIExpression(), !2102)
    #dbg_value(i32 0, !2056, !DIExpression(), !2102)
    #dbg_value(i16 %call107, !2057, !DIExpression(), !2102)
  %arrayidx4.i1030 = getelementptr inbounds i8, ptr %h, i64 25544, !dbg !2104
    #dbg_value(ptr %arrayidx4.i1030, !2058, !DIExpression(), !2102)
  %conv.i1031 = zext i16 %call107 to i64, !dbg !2105
    #dbg_value(ptr %arrayidx4.i1030, !2064, !DIExpression(), !2106)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2106)
    #dbg_value(i32 2, !2070, !DIExpression(), !2106)
    #dbg_value(i32 2, !2071, !DIExpression(), !2106)
    #dbg_value(i16 %call107, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2106)
    #dbg_value(ptr %arrayidx4.i1030, !2073, !DIExpression(), !2106)
    #dbg_value(i16 %call107, !2074, !DIExpression(), !2106)
    #dbg_value(i64 %conv.i1031, !2075, !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2106)
  %add.i.i1034 = mul nuw i64 %conv.i1031, 281479271743489, !dbg !2108
    #dbg_value(i64 %add.i.i1034, !2076, !DIExpression(), !2106)
    #dbg_value(i32 16, !2071, !DIExpression(), !2106)
  store i64 %add.i.i1034, ptr %arrayidx4.i1030, align 8, !dbg !2109
  %add.ptr73.i.i1035 = getelementptr inbounds i8, ptr %h, i64 25560, !dbg !2110
  store i64 %add.i.i1034, ptr %add.ptr73.i.i1035, align 8, !dbg !2111
  %call114 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 8, i32 noundef 4), !dbg !2112
    #dbg_value(i16 %call114, !1608, !DIExpression(), !2113)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2114)
    #dbg_value(i32 0, !2052, !DIExpression(), !2114)
    #dbg_value(i32 2, !2053, !DIExpression(), !2114)
    #dbg_value(i32 4, !2054, !DIExpression(), !2114)
    #dbg_value(i32 2, !2055, !DIExpression(), !2114)
    #dbg_value(i32 0, !2056, !DIExpression(), !2114)
    #dbg_value(i16 %call114, !2057, !DIExpression(), !2114)
  %arrayidx4.i1037 = getelementptr inbounds i8, ptr %h, i64 25576, !dbg !2116
    #dbg_value(ptr %arrayidx4.i1037, !2058, !DIExpression(), !2114)
  %conv.i1038 = zext i16 %call114 to i64, !dbg !2117
    #dbg_value(ptr %arrayidx4.i1037, !2064, !DIExpression(), !2118)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2118)
    #dbg_value(i32 2, !2070, !DIExpression(), !2118)
    #dbg_value(i32 2, !2071, !DIExpression(), !2118)
    #dbg_value(i16 %call114, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2118)
    #dbg_value(ptr %arrayidx4.i1037, !2073, !DIExpression(), !2118)
    #dbg_value(i16 %call114, !2074, !DIExpression(), !2118)
    #dbg_value(i64 %conv.i1038, !2075, !DIExpression(DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2118)
  %add.i.i1041 = mul nuw i64 %conv.i1038, 281479271743489, !dbg !2120
    #dbg_value(i64 %add.i.i1041, !2076, !DIExpression(), !2118)
    #dbg_value(i32 16, !2071, !DIExpression(), !2118)
  store i64 %add.i.i1041, ptr %arrayidx4.i1037, align 8, !dbg !2121
  %add.ptr73.i.i1042 = getelementptr inbounds i8, ptr %h, i64 25592, !dbg !2122
  store i64 %add.i.i1041, ptr %add.ptr73.i.i1042, align 8, !dbg !2123
  br label %if.end467, !dbg !2124

if.else119:                                       ; preds = %if.then76
  br i1 %cmp124, label %if.then126, label %do.body128, !dbg !2125

if.then126:                                       ; preds = %if.else119
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0), !dbg !2126
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 4), !dbg !2129
  br label %do.body128, !dbg !2130

do.body128:                                       ; preds = %if.else119, %if.then126
  %call130 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2131
    #dbg_value(i16 %call130, !1610, !DIExpression(), !2132)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2133)
    #dbg_value(i32 0, !2052, !DIExpression(), !2133)
    #dbg_value(i32 0, !2053, !DIExpression(), !2133)
    #dbg_value(i32 2, !2054, !DIExpression(), !2133)
    #dbg_value(i32 4, !2055, !DIExpression(), !2133)
    #dbg_value(i32 0, !2056, !DIExpression(), !2133)
    #dbg_value(i16 %call130, !2057, !DIExpression(), !2133)
  %arrayidx4.i1044 = getelementptr inbounds i8, ptr %h, i64 25544, !dbg !2135
    #dbg_value(ptr %arrayidx4.i1044, !2058, !DIExpression(), !2133)
  %conv.i1045 = zext i16 %call130 to i32, !dbg !2136
    #dbg_value(ptr %arrayidx4.i1044, !2064, !DIExpression(), !2137)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2137)
    #dbg_value(i32 4, !2070, !DIExpression(), !2137)
    #dbg_value(i32 2, !2071, !DIExpression(), !2137)
    #dbg_value(i32 %conv.i1045, !2072, !DIExpression(), !2137)
    #dbg_value(ptr %arrayidx4.i1044, !2073, !DIExpression(), !2137)
    #dbg_value(i16 %call130, !2074, !DIExpression(), !2137)
  %mul8.i.i1046 = mul nuw i32 %conv.i1045, 65537, !dbg !2139
    #dbg_value(i32 %mul8.i.i1046, !2075, !DIExpression(), !2137)
    #dbg_value(i32 %mul8.i.i1046, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2137)
    #dbg_value(i32 16, !2071, !DIExpression(), !2137)
  store i32 %mul8.i.i1046, ptr %arrayidx4.i1044, align 4, !dbg !2140
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %h, i64 25560, !dbg !2142
  store i32 %mul8.i.i1046, ptr %add.ptr49.i.i, align 4, !dbg !2143
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %h, i64 25576, !dbg !2144
  store i32 %mul8.i.i1046, ptr %add.ptr56.i.i, align 4, !dbg !2145
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %h, i64 25592, !dbg !2146
  store i32 %mul8.i.i1046, ptr %add.ptr59.i.i, align 4, !dbg !2147
  %call137 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2148
    #dbg_value(i16 %call137, !1613, !DIExpression(), !2149)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2150)
    #dbg_value(i32 2, !2052, !DIExpression(), !2150)
    #dbg_value(i32 0, !2053, !DIExpression(), !2150)
    #dbg_value(i32 2, !2054, !DIExpression(), !2150)
    #dbg_value(i32 4, !2055, !DIExpression(), !2150)
    #dbg_value(i32 0, !2056, !DIExpression(), !2150)
    #dbg_value(i16 %call137, !2057, !DIExpression(), !2150)
  %arrayidx4.i1050 = getelementptr inbounds i8, ptr %h, i64 25548, !dbg !2152
    #dbg_value(ptr %arrayidx4.i1050, !2058, !DIExpression(), !2150)
  %conv.i1051 = zext i16 %call137 to i32, !dbg !2153
    #dbg_value(ptr %arrayidx4.i1050, !2064, !DIExpression(), !2154)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2154)
    #dbg_value(i32 4, !2070, !DIExpression(), !2154)
    #dbg_value(i32 2, !2071, !DIExpression(), !2154)
    #dbg_value(i32 %conv.i1051, !2072, !DIExpression(), !2154)
    #dbg_value(ptr %arrayidx4.i1050, !2073, !DIExpression(), !2154)
    #dbg_value(i16 %call137, !2074, !DIExpression(), !2154)
  %mul8.i.i1052 = mul nuw i32 %conv.i1051, 65537, !dbg !2156
    #dbg_value(i32 %mul8.i.i1052, !2075, !DIExpression(), !2154)
    #dbg_value(i32 %mul8.i.i1052, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2154)
    #dbg_value(i32 16, !2071, !DIExpression(), !2154)
  store i32 %mul8.i.i1052, ptr %arrayidx4.i1050, align 4, !dbg !2157
  %add.ptr49.i.i1055 = getelementptr inbounds i8, ptr %h, i64 25564, !dbg !2158
  store i32 %mul8.i.i1052, ptr %add.ptr49.i.i1055, align 4, !dbg !2159
  %add.ptr56.i.i1056 = getelementptr inbounds i8, ptr %h, i64 25580, !dbg !2160
  store i32 %mul8.i.i1052, ptr %add.ptr56.i.i1056, align 4, !dbg !2161
  %add.ptr59.i.i1057 = getelementptr inbounds i8, ptr %h, i64 25596, !dbg !2162
  store i32 %mul8.i.i1052, ptr %add.ptr59.i.i1057, align 4, !dbg !2163
  br label %if.end467

if.then.i1063:                                    ; preds = %for.cond149.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7, !dbg !2164
  br label %x264_cabac_mb_sub_p_partition.exit, !dbg !2166

if.end.i1059:                                     ; preds = %for.cond149.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7, !dbg !2167
  %cmp1.i1060 = icmp eq i8 %107, 1, !dbg !2168
  br i1 %cmp1.i1060, label %if.then2.i, label %if.else.i1061, !dbg !2170

if.then2.i:                                       ; preds = %if.end.i1059
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7, !dbg !2171
  br label %x264_cabac_mb_sub_p_partition.exit, !dbg !2171

if.else.i1061:                                    ; preds = %if.end.i1059
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7, !dbg !2172
  %cmp3.i = icmp eq i8 %107, 2, !dbg !2174
  %conv.i1062 = zext i1 %cmp3.i to i32, !dbg !2174
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062) #7, !dbg !2175
  br label %x264_cabac_mb_sub_p_partition.exit

x264_cabac_mb_sub_p_partition.exit:               ; preds = %if.then.i1063, %if.then2.i, %if.else.i1061
    #dbg_value(i64 1, !1615, !DIExpression(), !2024)
  %arrayidx156.1 = getelementptr inbounds i8, ptr %h, i64 17393, !dbg !2025
  %110 = load i8, ptr %arrayidx156.1, align 1, !dbg !2025
    #dbg_value(ptr %cb, !2027, !DIExpression(), !2031)
    #dbg_value(i8 %110, !2030, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2031)
  %cmp.i1058.1 = icmp eq i8 %110, 3, !dbg !2033
  br i1 %cmp.i1058.1, label %if.then.i1063.1, label %if.end.i1059.1, !dbg !2035

if.end.i1059.1:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7, !dbg !2167
  %cmp1.i1060.1 = icmp eq i8 %110, 1, !dbg !2168
  br i1 %cmp1.i1060.1, label %if.then2.i.1, label %if.else.i1061.1, !dbg !2170

if.else.i1061.1:                                  ; preds = %if.end.i1059.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7, !dbg !2172
  %cmp3.i.1 = icmp eq i8 %110, 2, !dbg !2174
  %conv.i1062.1 = zext i1 %cmp3.i.1 to i32, !dbg !2174
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.1) #7, !dbg !2175
  br label %x264_cabac_mb_sub_p_partition.exit.1

if.then2.i.1:                                     ; preds = %if.end.i1059.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7, !dbg !2171
  br label %x264_cabac_mb_sub_p_partition.exit.1, !dbg !2171

if.then.i1063.1:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7, !dbg !2164
  br label %x264_cabac_mb_sub_p_partition.exit.1, !dbg !2166

x264_cabac_mb_sub_p_partition.exit.1:             ; preds = %if.then.i1063.1, %if.then2.i.1, %if.else.i1061.1
    #dbg_value(i64 2, !1615, !DIExpression(), !2024)
  %arrayidx156.2 = getelementptr inbounds i8, ptr %h, i64 17394, !dbg !2025
  %111 = load i8, ptr %arrayidx156.2, align 1, !dbg !2025
    #dbg_value(ptr %cb, !2027, !DIExpression(), !2031)
    #dbg_value(i8 %111, !2030, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2031)
  %cmp.i1058.2 = icmp eq i8 %111, 3, !dbg !2033
  br i1 %cmp.i1058.2, label %if.then.i1063.2, label %if.end.i1059.2, !dbg !2035

if.end.i1059.2:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7, !dbg !2167
  %cmp1.i1060.2 = icmp eq i8 %111, 1, !dbg !2168
  br i1 %cmp1.i1060.2, label %if.then2.i.2, label %if.else.i1061.2, !dbg !2170

if.else.i1061.2:                                  ; preds = %if.end.i1059.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7, !dbg !2172
  %cmp3.i.2 = icmp eq i8 %111, 2, !dbg !2174
  %conv.i1062.2 = zext i1 %cmp3.i.2 to i32, !dbg !2174
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.2) #7, !dbg !2175
  br label %x264_cabac_mb_sub_p_partition.exit.2

if.then2.i.2:                                     ; preds = %if.end.i1059.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7, !dbg !2171
  br label %x264_cabac_mb_sub_p_partition.exit.2, !dbg !2171

if.then.i1063.2:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7, !dbg !2164
  br label %x264_cabac_mb_sub_p_partition.exit.2, !dbg !2166

x264_cabac_mb_sub_p_partition.exit.2:             ; preds = %if.then.i1063.2, %if.then2.i.2, %if.else.i1061.2
    #dbg_value(i64 3, !1615, !DIExpression(), !2024)
  %arrayidx156.3 = getelementptr inbounds i8, ptr %h, i64 17395, !dbg !2025
  %112 = load i8, ptr %arrayidx156.3, align 1, !dbg !2025
    #dbg_value(ptr %cb, !2027, !DIExpression(), !2031)
    #dbg_value(i8 %112, !2030, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2031)
  %cmp.i1058.3 = icmp eq i8 %112, 3, !dbg !2033
  br i1 %cmp.i1058.3, label %if.then.i1063.3, label %if.end.i1059.3, !dbg !2035

if.end.i1059.3:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7, !dbg !2167
  %cmp1.i1060.3 = icmp eq i8 %112, 1, !dbg !2168
  br i1 %cmp1.i1060.3, label %if.then2.i.3, label %if.else.i1061.3, !dbg !2170

if.else.i1061.3:                                  ; preds = %if.end.i1059.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7, !dbg !2172
  %cmp3.i.3 = icmp eq i8 %112, 2, !dbg !2174
  %conv.i1062.3 = zext i1 %cmp3.i.3 to i32, !dbg !2174
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.3) #7, !dbg !2175
  br label %x264_cabac_mb_sub_p_partition.exit.3

if.then2.i.3:                                     ; preds = %if.end.i1059.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7, !dbg !2171
  br label %x264_cabac_mb_sub_p_partition.exit.3, !dbg !2171

if.then.i1063.3:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7, !dbg !2164
  br label %x264_cabac_mb_sub_p_partition.exit.3, !dbg !2166

x264_cabac_mb_sub_p_partition.exit.3:             ; preds = %if.then.i1063.3, %if.then2.i.3, %if.else.i1061.3
    #dbg_value(i64 4, !1615, !DIExpression(), !2024)
  %i_fref163 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2176
  %113 = load i32, ptr %i_fref163, align 8, !dbg !2178
  %cmp165 = icmp sgt i32 %113, 1, !dbg !2179
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !2180

if.then167:                                       ; preds = %x264_cabac_mb_sub_p_partition.exit.3
    #dbg_value(ptr %h, !2181, !DIExpression(), !2195)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2195)
    #dbg_value(i32 0, !2187, !DIExpression(), !2195)
    #dbg_value(i32 0, !2188, !DIExpression(), !2195)
    #dbg_value(i32 12, !2189, !DIExpression(), !2195)
  %arrayidx4.i1064 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !2198
  %114 = load i8, ptr %arrayidx4.i1064, align 1, !dbg !2198
    #dbg_value(i8 %114, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2195)
  %arrayidx12.i = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !2199
  %115 = load i8, ptr %arrayidx12.i, align 1, !dbg !2199
    #dbg_value(i8 %115, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2195)
    #dbg_value(i32 0, !2192, !DIExpression(), !2195)
  %cmp.i1065 = icmp sgt i8 %114, 0, !dbg !2200
  br i1 %cmp.i1065, label %land.lhs.true.i1073, label %if.end.i1066, !dbg !2202

land.lhs.true.i1073:                              ; preds = %if.then167
  %arrayidx19.i = getelementptr inbounds i8, ptr %h, i64 25691, !dbg !2203
  %116 = load i8, ptr %arrayidx19.i, align 1, !dbg !2203
  %tobool.not.i1074 = icmp eq i8 %116, 0, !dbg !2203
  %spec.select.i1075 = zext i1 %tobool.not.i1074 to i32, !dbg !2204
  br label %if.end.i1066, !dbg !2204

if.end.i1066:                                     ; preds = %land.lhs.true.i1073, %if.then167
  %ctx.0.i1067 = phi i32 [ 0, %if.then167 ], [ %spec.select.i1075, %land.lhs.true.i1073 ], !dbg !2195
    #dbg_value(i32 %ctx.0.i1067, !2192, !DIExpression(), !2195)
  %cmp20.i = icmp sgt i8 %115, 0, !dbg !2205
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end31.i, !dbg !2207

land.lhs.true22.i:                                ; preds = %if.end.i1066
  %arrayidx28.i = getelementptr inbounds i8, ptr %h, i64 25684, !dbg !2208
  %117 = load i8, ptr %arrayidx28.i, align 1, !dbg !2208
  %tobool29.not.i1071 = icmp eq i8 %117, 0, !dbg !2208
  %add.i1072 = or disjoint i32 %ctx.0.i1067, 2
  %spec.select61.i = select i1 %tobool29.not.i1071, i32 %add.i1072, i32 %ctx.0.i1067, !dbg !2209
  br label %if.end31.i, !dbg !2209

if.end31.i:                                       ; preds = %land.lhs.true22.i, %if.end.i1066
  %ctx.1.i1068 = phi i32 [ %ctx.0.i1067, %if.end.i1066 ], [ %spec.select61.i, %land.lhs.true22.i ], !dbg !2195
    #dbg_value(i32 %ctx.1.i1068, !2192, !DIExpression(), !2195)
  %arrayidx38.i = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2210
  %118 = load i8, ptr %arrayidx38.i, align 1, !dbg !2210
    #dbg_value(i8 %118, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2211)
  %cmp4062.i = icmp sgt i8 %118, 0, !dbg !2212
  br i1 %cmp4062.i, label %for.body.preheader.i, label %x264_cabac_mb_ref.exit, !dbg !2214

for.body.preheader.i:                             ; preds = %if.end31.i
  %conv39.i = zext nneg i8 %118 to i32, !dbg !2210
    #dbg_value(i32 %conv39.i, !2193, !DIExpression(), !2211)
  br label %for.body.i, !dbg !2214

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %i_ref.064.i = phi i32 [ %dec.i1070, %for.body.i ], [ %conv39.i, %for.body.preheader.i ]
  %ctx.263.i = phi i32 [ %add43.i, %for.body.i ], [ %ctx.1.i1068, %for.body.preheader.i ]
    #dbg_value(i32 %i_ref.064.i, !2193, !DIExpression(), !2211)
    #dbg_value(i32 %ctx.263.i, !2192, !DIExpression(), !2195)
  %add42.i = add nuw nsw i32 %ctx.263.i, 54, !dbg !2215
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i, i32 noundef 1) #7, !dbg !2217
  %shr.i1069 = lshr i32 %ctx.263.i, 2, !dbg !2218
  %add43.i = add nuw nsw i32 %shr.i1069, 4, !dbg !2219
    #dbg_value(i32 %add43.i, !2192, !DIExpression(), !2195)
  %dec.i1070 = add nsw i32 %i_ref.064.i, -1, !dbg !2220
    #dbg_value(i32 %dec.i1070, !2193, !DIExpression(), !2211)
  %cmp40.i = icmp ugt i32 %i_ref.064.i, 1, !dbg !2212
  br i1 %cmp40.i, label %for.body.i, label %x264_cabac_mb_ref.exit, !dbg !2214, !llvm.loop !2221

x264_cabac_mb_ref.exit:                           ; preds = %for.body.i, %if.end31.i
  %ctx.2.lcssa.i = phi i32 [ %ctx.1.i1068, %if.end31.i ], [ %add43.i, %for.body.i ], !dbg !2195
  %add44.i = add nuw nsw i32 %ctx.2.lcssa.i, 54, !dbg !2223
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i, i32 noundef 0) #7, !dbg !2224
    #dbg_value(ptr %h, !2181, !DIExpression(), !2225)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2225)
    #dbg_value(i32 0, !2187, !DIExpression(), !2225)
    #dbg_value(i32 4, !2188, !DIExpression(), !2225)
    #dbg_value(i32 14, !2189, !DIExpression(), !2225)
  %arrayidx4.i1077 = getelementptr inbounds i8, ptr %h, i64 25133, !dbg !2227
  %119 = load i8, ptr %arrayidx4.i1077, align 1, !dbg !2227
    #dbg_value(i8 %119, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2225)
  %arrayidx12.i1078 = getelementptr inbounds i8, ptr %h, i64 25126, !dbg !2228
  %120 = load i8, ptr %arrayidx12.i1078, align 1, !dbg !2228
    #dbg_value(i8 %120, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2225)
    #dbg_value(i32 0, !2192, !DIExpression(), !2225)
  %cmp.i1079 = icmp sgt i8 %119, 0, !dbg !2229
  br i1 %cmp.i1079, label %land.lhs.true.i1105, label %if.end.i1080, !dbg !2230

land.lhs.true.i1105:                              ; preds = %x264_cabac_mb_ref.exit
  %arrayidx19.i1107 = getelementptr inbounds i8, ptr %h, i64 25693, !dbg !2231
  %121 = load i8, ptr %arrayidx19.i1107, align 1, !dbg !2231
  %tobool.not.i1108 = icmp eq i8 %121, 0, !dbg !2231
  %spec.select.i1109 = zext i1 %tobool.not.i1108 to i32, !dbg !2232
  br label %if.end.i1080, !dbg !2232

if.end.i1080:                                     ; preds = %land.lhs.true.i1105, %x264_cabac_mb_ref.exit
  %ctx.0.i1081 = phi i32 [ 0, %x264_cabac_mb_ref.exit ], [ %spec.select.i1109, %land.lhs.true.i1105 ], !dbg !2225
    #dbg_value(i32 %ctx.0.i1081, !2192, !DIExpression(), !2225)
  %cmp20.i1082 = icmp sgt i8 %120, 0, !dbg !2233
  br i1 %cmp20.i1082, label %land.lhs.true22.i1099, label %if.end31.i1083, !dbg !2234

land.lhs.true22.i1099:                            ; preds = %if.end.i1080
  %arrayidx28.i1101 = getelementptr inbounds i8, ptr %h, i64 25686, !dbg !2235
  %122 = load i8, ptr %arrayidx28.i1101, align 1, !dbg !2235
  %tobool29.not.i1102 = icmp eq i8 %122, 0, !dbg !2235
  %add.i1103 = or disjoint i32 %ctx.0.i1081, 2
  %spec.select61.i1104 = select i1 %tobool29.not.i1102, i32 %add.i1103, i32 %ctx.0.i1081, !dbg !2236
  br label %if.end31.i1083, !dbg !2236

if.end31.i1083:                                   ; preds = %land.lhs.true22.i1099, %if.end.i1080
  %ctx.1.i1084 = phi i32 [ %ctx.0.i1081, %if.end.i1080 ], [ %spec.select61.i1104, %land.lhs.true22.i1099 ], !dbg !2225
    #dbg_value(i32 %ctx.1.i1084, !2192, !DIExpression(), !2225)
  %arrayidx38.i1085 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2237
  %123 = load i8, ptr %arrayidx38.i1085, align 1, !dbg !2237
    #dbg_value(i8 %123, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2238)
  %cmp4062.i1086 = icmp sgt i8 %123, 0, !dbg !2239
  br i1 %cmp4062.i1086, label %for.body.preheader.i1089, label %x264_cabac_mb_ref.exit1110, !dbg !2240

for.body.preheader.i1089:                         ; preds = %if.end31.i1083
  %conv39.i1090 = zext nneg i8 %123 to i32, !dbg !2237
    #dbg_value(i32 %conv39.i1090, !2193, !DIExpression(), !2238)
  br label %for.body.i1091, !dbg !2240

for.body.i1091:                                   ; preds = %for.body.i1091, %for.body.preheader.i1089
  %i_ref.064.i1092 = phi i32 [ %dec.i1097, %for.body.i1091 ], [ %conv39.i1090, %for.body.preheader.i1089 ]
  %ctx.263.i1093 = phi i32 [ %add43.i1096, %for.body.i1091 ], [ %ctx.1.i1084, %for.body.preheader.i1089 ]
    #dbg_value(i32 %i_ref.064.i1092, !2193, !DIExpression(), !2238)
    #dbg_value(i32 %ctx.263.i1093, !2192, !DIExpression(), !2225)
  %add42.i1094 = add nuw nsw i32 %ctx.263.i1093, 54, !dbg !2241
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1094, i32 noundef 1) #7, !dbg !2242
  %shr.i1095 = lshr i32 %ctx.263.i1093, 2, !dbg !2243
  %add43.i1096 = add nuw nsw i32 %shr.i1095, 4, !dbg !2244
    #dbg_value(i32 %add43.i1096, !2192, !DIExpression(), !2225)
  %dec.i1097 = add nsw i32 %i_ref.064.i1092, -1, !dbg !2245
    #dbg_value(i32 %dec.i1097, !2193, !DIExpression(), !2238)
  %cmp40.i1098 = icmp ugt i32 %i_ref.064.i1092, 1, !dbg !2239
  br i1 %cmp40.i1098, label %for.body.i1091, label %x264_cabac_mb_ref.exit1110, !dbg !2240, !llvm.loop !2246

x264_cabac_mb_ref.exit1110:                       ; preds = %for.body.i1091, %if.end31.i1083
  %ctx.2.lcssa.i1087 = phi i32 [ %ctx.1.i1084, %if.end31.i1083 ], [ %add43.i1096, %for.body.i1091 ], !dbg !2225
  %add44.i1088 = add nuw nsw i32 %ctx.2.lcssa.i1087, 54, !dbg !2248
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1088, i32 noundef 0) #7, !dbg !2249
    #dbg_value(ptr %h, !2181, !DIExpression(), !2250)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2250)
    #dbg_value(i32 0, !2187, !DIExpression(), !2250)
    #dbg_value(i32 8, !2188, !DIExpression(), !2250)
    #dbg_value(i32 28, !2189, !DIExpression(), !2250)
  %arrayidx4.i1112 = getelementptr inbounds i8, ptr %h, i64 25147, !dbg !2252
  %124 = load i8, ptr %arrayidx4.i1112, align 1, !dbg !2252
    #dbg_value(i8 %124, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2250)
  %arrayidx12.i1113 = getelementptr inbounds i8, ptr %h, i64 25140, !dbg !2253
  %125 = load i8, ptr %arrayidx12.i1113, align 1, !dbg !2253
    #dbg_value(i8 %125, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2250)
    #dbg_value(i32 0, !2192, !DIExpression(), !2250)
  %cmp.i1114 = icmp sgt i8 %124, 0, !dbg !2254
  br i1 %cmp.i1114, label %land.lhs.true.i1140, label %if.end.i1115, !dbg !2255

land.lhs.true.i1140:                              ; preds = %x264_cabac_mb_ref.exit1110
  %arrayidx19.i1142 = getelementptr inbounds i8, ptr %h, i64 25707, !dbg !2256
  %126 = load i8, ptr %arrayidx19.i1142, align 1, !dbg !2256
  %tobool.not.i1143 = icmp eq i8 %126, 0, !dbg !2256
  %spec.select.i1144 = zext i1 %tobool.not.i1143 to i32, !dbg !2257
  br label %if.end.i1115, !dbg !2257

if.end.i1115:                                     ; preds = %land.lhs.true.i1140, %x264_cabac_mb_ref.exit1110
  %ctx.0.i1116 = phi i32 [ 0, %x264_cabac_mb_ref.exit1110 ], [ %spec.select.i1144, %land.lhs.true.i1140 ], !dbg !2250
    #dbg_value(i32 %ctx.0.i1116, !2192, !DIExpression(), !2250)
  %cmp20.i1117 = icmp sgt i8 %125, 0, !dbg !2258
  br i1 %cmp20.i1117, label %land.lhs.true22.i1134, label %if.end31.i1118, !dbg !2259

land.lhs.true22.i1134:                            ; preds = %if.end.i1115
  %arrayidx28.i1136 = getelementptr inbounds i8, ptr %h, i64 25700, !dbg !2260
  %127 = load i8, ptr %arrayidx28.i1136, align 1, !dbg !2260
  %tobool29.not.i1137 = icmp eq i8 %127, 0, !dbg !2260
  %add.i1138 = or disjoint i32 %ctx.0.i1116, 2
  %spec.select61.i1139 = select i1 %tobool29.not.i1137, i32 %add.i1138, i32 %ctx.0.i1116, !dbg !2261
  br label %if.end31.i1118, !dbg !2261

if.end31.i1118:                                   ; preds = %land.lhs.true22.i1134, %if.end.i1115
  %ctx.1.i1119 = phi i32 [ %ctx.0.i1116, %if.end.i1115 ], [ %spec.select61.i1139, %land.lhs.true22.i1134 ], !dbg !2250
    #dbg_value(i32 %ctx.1.i1119, !2192, !DIExpression(), !2250)
  %arrayidx38.i1120 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2262
  %128 = load i8, ptr %arrayidx38.i1120, align 1, !dbg !2262
    #dbg_value(i8 %128, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2263)
  %cmp4062.i1121 = icmp sgt i8 %128, 0, !dbg !2264
  br i1 %cmp4062.i1121, label %for.body.preheader.i1124, label %x264_cabac_mb_ref.exit1145, !dbg !2265

for.body.preheader.i1124:                         ; preds = %if.end31.i1118
  %conv39.i1125 = zext nneg i8 %128 to i32, !dbg !2262
    #dbg_value(i32 %conv39.i1125, !2193, !DIExpression(), !2263)
  br label %for.body.i1126, !dbg !2265

for.body.i1126:                                   ; preds = %for.body.i1126, %for.body.preheader.i1124
  %i_ref.064.i1127 = phi i32 [ %dec.i1132, %for.body.i1126 ], [ %conv39.i1125, %for.body.preheader.i1124 ]
  %ctx.263.i1128 = phi i32 [ %add43.i1131, %for.body.i1126 ], [ %ctx.1.i1119, %for.body.preheader.i1124 ]
    #dbg_value(i32 %i_ref.064.i1127, !2193, !DIExpression(), !2263)
    #dbg_value(i32 %ctx.263.i1128, !2192, !DIExpression(), !2250)
  %add42.i1129 = add nuw nsw i32 %ctx.263.i1128, 54, !dbg !2266
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1129, i32 noundef 1) #7, !dbg !2267
  %shr.i1130 = lshr i32 %ctx.263.i1128, 2, !dbg !2268
  %add43.i1131 = add nuw nsw i32 %shr.i1130, 4, !dbg !2269
    #dbg_value(i32 %add43.i1131, !2192, !DIExpression(), !2250)
  %dec.i1132 = add nsw i32 %i_ref.064.i1127, -1, !dbg !2270
    #dbg_value(i32 %dec.i1132, !2193, !DIExpression(), !2263)
  %cmp40.i1133 = icmp ugt i32 %i_ref.064.i1127, 1, !dbg !2264
  br i1 %cmp40.i1133, label %for.body.i1126, label %x264_cabac_mb_ref.exit1145, !dbg !2265, !llvm.loop !2271

x264_cabac_mb_ref.exit1145:                       ; preds = %for.body.i1126, %if.end31.i1118
  %ctx.2.lcssa.i1122 = phi i32 [ %ctx.1.i1119, %if.end31.i1118 ], [ %add43.i1131, %for.body.i1126 ], !dbg !2250
  %add44.i1123 = add nuw nsw i32 %ctx.2.lcssa.i1122, 54, !dbg !2273
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1123, i32 noundef 0) #7, !dbg !2274
    #dbg_value(ptr %h, !2181, !DIExpression(), !2275)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2275)
    #dbg_value(i32 0, !2187, !DIExpression(), !2275)
    #dbg_value(i32 12, !2188, !DIExpression(), !2275)
    #dbg_value(i32 30, !2189, !DIExpression(), !2275)
  %arrayidx4.i1147 = getelementptr inbounds i8, ptr %h, i64 25149, !dbg !2277
  %129 = load i8, ptr %arrayidx4.i1147, align 1, !dbg !2277
    #dbg_value(i8 %129, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2275)
  %arrayidx12.i1148 = getelementptr inbounds i8, ptr %h, i64 25142, !dbg !2278
  %130 = load i8, ptr %arrayidx12.i1148, align 1, !dbg !2278
    #dbg_value(i8 %130, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2275)
    #dbg_value(i32 0, !2192, !DIExpression(), !2275)
  %cmp.i1149 = icmp sgt i8 %129, 0, !dbg !2279
  br i1 %cmp.i1149, label %land.lhs.true.i1175, label %if.end.i1150, !dbg !2280

land.lhs.true.i1175:                              ; preds = %x264_cabac_mb_ref.exit1145
  %arrayidx19.i1177 = getelementptr inbounds i8, ptr %h, i64 25709, !dbg !2281
  %131 = load i8, ptr %arrayidx19.i1177, align 1, !dbg !2281
  %tobool.not.i1178 = icmp eq i8 %131, 0, !dbg !2281
  %spec.select.i1179 = zext i1 %tobool.not.i1178 to i32, !dbg !2282
  br label %if.end.i1150, !dbg !2282

if.end.i1150:                                     ; preds = %land.lhs.true.i1175, %x264_cabac_mb_ref.exit1145
  %ctx.0.i1151 = phi i32 [ 0, %x264_cabac_mb_ref.exit1145 ], [ %spec.select.i1179, %land.lhs.true.i1175 ], !dbg !2275
    #dbg_value(i32 %ctx.0.i1151, !2192, !DIExpression(), !2275)
  %cmp20.i1152 = icmp sgt i8 %130, 0, !dbg !2283
  br i1 %cmp20.i1152, label %land.lhs.true22.i1169, label %if.end31.i1153, !dbg !2284

land.lhs.true22.i1169:                            ; preds = %if.end.i1150
  %arrayidx28.i1171 = getelementptr inbounds i8, ptr %h, i64 25702, !dbg !2285
  %132 = load i8, ptr %arrayidx28.i1171, align 1, !dbg !2285
  %tobool29.not.i1172 = icmp eq i8 %132, 0, !dbg !2285
  %add.i1173 = or disjoint i32 %ctx.0.i1151, 2
  %spec.select61.i1174 = select i1 %tobool29.not.i1172, i32 %add.i1173, i32 %ctx.0.i1151, !dbg !2286
  br label %if.end31.i1153, !dbg !2286

if.end31.i1153:                                   ; preds = %land.lhs.true22.i1169, %if.end.i1150
  %ctx.1.i1154 = phi i32 [ %ctx.0.i1151, %if.end.i1150 ], [ %spec.select61.i1174, %land.lhs.true22.i1169 ], !dbg !2275
    #dbg_value(i32 %ctx.1.i1154, !2192, !DIExpression(), !2275)
  %arrayidx38.i1155 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2287
  %133 = load i8, ptr %arrayidx38.i1155, align 1, !dbg !2287
    #dbg_value(i8 %133, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2288)
  %cmp4062.i1156 = icmp sgt i8 %133, 0, !dbg !2289
  br i1 %cmp4062.i1156, label %for.body.preheader.i1159, label %x264_cabac_mb_ref.exit1180, !dbg !2290

for.body.preheader.i1159:                         ; preds = %if.end31.i1153
  %conv39.i1160 = zext nneg i8 %133 to i32, !dbg !2287
    #dbg_value(i32 %conv39.i1160, !2193, !DIExpression(), !2288)
  br label %for.body.i1161, !dbg !2290

for.body.i1161:                                   ; preds = %for.body.i1161, %for.body.preheader.i1159
  %i_ref.064.i1162 = phi i32 [ %dec.i1167, %for.body.i1161 ], [ %conv39.i1160, %for.body.preheader.i1159 ]
  %ctx.263.i1163 = phi i32 [ %add43.i1166, %for.body.i1161 ], [ %ctx.1.i1154, %for.body.preheader.i1159 ]
    #dbg_value(i32 %i_ref.064.i1162, !2193, !DIExpression(), !2288)
    #dbg_value(i32 %ctx.263.i1163, !2192, !DIExpression(), !2275)
  %add42.i1164 = add nuw nsw i32 %ctx.263.i1163, 54, !dbg !2291
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1164, i32 noundef 1) #7, !dbg !2292
  %shr.i1165 = lshr i32 %ctx.263.i1163, 2, !dbg !2293
  %add43.i1166 = add nuw nsw i32 %shr.i1165, 4, !dbg !2294
    #dbg_value(i32 %add43.i1166, !2192, !DIExpression(), !2275)
  %dec.i1167 = add nsw i32 %i_ref.064.i1162, -1, !dbg !2295
    #dbg_value(i32 %dec.i1167, !2193, !DIExpression(), !2288)
  %cmp40.i1168 = icmp ugt i32 %i_ref.064.i1162, 1, !dbg !2289
  br i1 %cmp40.i1168, label %for.body.i1161, label %x264_cabac_mb_ref.exit1180, !dbg !2290, !llvm.loop !2296

x264_cabac_mb_ref.exit1180:                       ; preds = %for.body.i1161, %if.end31.i1153
  %ctx.2.lcssa.i1157 = phi i32 [ %ctx.1.i1154, %if.end31.i1153 ], [ %add43.i1166, %for.body.i1161 ], !dbg !2275
  %add44.i1158 = add nuw nsw i32 %ctx.2.lcssa.i1157, 54, !dbg !2298
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1158, i32 noundef 0) #7, !dbg !2299
  br label %if.end168, !dbg !2300

if.end168:                                        ; preds = %x264_cabac_mb_ref.exit1180, %x264_cabac_mb_sub_p_partition.exit.3
    #dbg_value(i32 0, !1619, !DIExpression(), !2301)
  %mv.i423.i = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx19.i433.i = getelementptr inbounds i8, ptr %mvp.i422.i, i64 2
  %mvd.i436.i = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx19.i489.i = getelementptr inbounds i8, ptr %mvp.i478.i, i64 2
  %arrayidx19.i545.i = getelementptr inbounds i8, ptr %mvp.i534.i, i64 2
  %arrayidx19.i601.i = getelementptr inbounds i8, ptr %mvp.i590.i, i64 2
  %arrayidx19.i320.i = getelementptr inbounds i8, ptr %mvp.i309.i, i64 2
  %arrayidx19.i376.i = getelementptr inbounds i8, ptr %mvp.i365.i, i64 2
  %arrayidx19.i208.i = getelementptr inbounds i8, ptr %mvp.i197.i, i64 2
  %arrayidx19.i264.i = getelementptr inbounds i8, ptr %mvp.i253.i, i64 2
  %arrayidx19.i.i = getelementptr inbounds i8, ptr %mvp.i.i, i64 2
  br label %for.body174, !dbg !2302

for.body174:                                      ; preds = %if.end168, %x264_cabac_mb8x8_mvd.exit
  %indvars.iv1810 = phi i64 [ 0, %if.end168 ], [ %indvars.iv.next1811, %x264_cabac_mb8x8_mvd.exit ]
    #dbg_value(i64 %indvars.iv1810, !1619, !DIExpression(), !2301)
    #dbg_value(ptr %h, !2303, !DIExpression(), !2329)
    #dbg_value(ptr %cb, !2308, !DIExpression(), !2329)
    #dbg_value(i64 %indvars.iv1810, !2309, !DIExpression(), !2329)
  %arrayidx.i1182 = getelementptr inbounds [4 x i8], ptr %i_sub_partition, i64 0, i64 %indvars.iv1810, !dbg !2332
  %134 = load i8, ptr %arrayidx.i1182, align 1, !dbg !2332
  switch i8 %134, label %x264_cabac_mb8x8_mvd.exit [
    i8 3, label %do.body.i
    i8 1, label %do.body10.i
    i8 2, label %do.body42.i
    i8 0, label %do.body75.i
  ], !dbg !2333

do.body.i:                                        ; preds = %for.body174
  %135 = shl nuw nsw i64 %indvars.iv1810, 2, !dbg !2334
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1722, ptr %mvp.i.i, !DIExpression(), !2348)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2348)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2348)
    #dbg_value(i32 0, !2342, !DIExpression(), !2348)
    #dbg_value(i64 %135, !2343, !DIExpression(), !2348)
    #dbg_value(i32 2, !2344, !DIExpression(), !2348)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i.i) #7, !dbg !2350
  %136 = trunc nuw nsw i64 %135 to i32, !dbg !2351
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %136, i32 noundef 2, ptr noundef nonnull %mvp.i.i) #7, !dbg !2351
  %arrayidx2.i.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %135, !dbg !2352
  %137 = load i32, ptr %arrayidx2.i.i, align 16, !dbg !2352
  %idxprom3.i.i = sext i32 %137 to i64, !dbg !2353
  %arrayidx4.i.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i.i, !dbg !2353
  %138 = load i16, ptr %arrayidx4.i.i, align 4, !dbg !2353
  %conv.i.i = sext i16 %138 to i32, !dbg !2353
  %139 = load i16, ptr %mvp.i.i, align 4, !dbg !2354
  %conv7.i.i = sext i16 %139 to i32, !dbg !2354
  %sub.i.i = sub nsw i32 %conv.i.i, %conv7.i.i, !dbg !2355
    #dbg_value(i32 %sub.i.i, !2345, !DIExpression(), !2348)
  %arrayidx17.i.i = getelementptr inbounds i8, ptr %arrayidx4.i.i, i64 2, !dbg !2356
  %140 = load i16, ptr %arrayidx17.i.i, align 2, !dbg !2356
  %conv18.i.i = sext i16 %140 to i32, !dbg !2356
  %141 = load i16, ptr %arrayidx19.i.i, align 2, !dbg !2357
  %conv20.i.i = sext i16 %141 to i32, !dbg !2357
  %sub21.i.i = sub nsw i32 %conv18.i.i, %conv20.i.i, !dbg !2358
    #dbg_value(i32 %sub21.i.i, !2346, !DIExpression(), !2348)
  %sub28.i.i = add nsw i32 %137, -1, !dbg !2359
  %idxprom29.i.i = sext i32 %sub28.i.i to i64, !dbg !2360
  %arrayidx30.i.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i.i, !dbg !2360
  %sub39.i.i = add nsw i32 %137, -8, !dbg !2361
  %idxprom40.i.i = sext i32 %sub39.i.i to i64, !dbg !2362
  %arrayidx41.i.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i.i, !dbg !2362
  %arrayidx30.val.i.i = load i8, ptr %arrayidx30.i.i, align 1, !dbg !2363
  %142 = getelementptr i8, ptr %arrayidx30.i.i, i64 1, !dbg !2363
  %arrayidx30.val71.i.i = load i8, ptr %142, align 1, !dbg !2363
  %arrayidx41.val.i.i = load i8, ptr %arrayidx41.i.i, align 1, !dbg !2363
  %143 = getelementptr i8, ptr %arrayidx41.i.i, i64 1, !dbg !2363
  %arrayidx41.val72.i.i = load i8, ptr %143, align 1, !dbg !2363
    #dbg_value(ptr undef, !2364, !DIExpression(), !2372)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2372)
  %conv.i.i.i = zext i8 %arrayidx30.val.i.i to i32, !dbg !2374
  %conv2.i.i.i = zext i8 %arrayidx41.val.i.i to i32, !dbg !2375
  %add.i.i.i = add nuw nsw i32 %conv2.i.i.i, %conv.i.i.i, !dbg !2376
    #dbg_value(i32 %add.i.i.i, !2370, !DIExpression(), !2372)
  %conv4.i.i.i = zext i8 %arrayidx30.val71.i.i to i32, !dbg !2377
  %conv6.i.i.i = zext i8 %arrayidx41.val72.i.i to i32, !dbg !2378
  %add7.i.i.i = add nuw nsw i32 %conv6.i.i.i, %conv4.i.i.i, !dbg !2379
    #dbg_value(i32 %add7.i.i.i, !2371, !DIExpression(), !2372)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 2, !dbg !2380
  %conv8.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !2380
  %cmp9.i.i.i = icmp ugt i32 %add.i.i.i, 32, !dbg !2381
  %conv10.i.i.i = zext i1 %cmp9.i.i.i to i32, !dbg !2381
  %add11.i.i.i = add nuw nsw i32 %conv8.i.i.i, %conv10.i.i.i, !dbg !2382
    #dbg_value(!DIArgList(i1 %cmp.i.i.i, i1 %cmp9.i.i.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2372)
  %cmp12.i.i.i = icmp ugt i32 %add7.i.i.i, 2, !dbg !2383
  %conv13.i.i.i = zext i1 %cmp12.i.i.i to i32, !dbg !2383
  %cmp14.i.i.i = icmp ugt i32 %add7.i.i.i, 32, !dbg !2384
  %conv15.i.i.i = zext i1 %cmp14.i.i.i to i32, !dbg !2384
  %add16.i.i.i = add nuw nsw i32 %conv13.i.i.i, %conv15.i.i.i, !dbg !2385
    #dbg_value(!DIArgList(i1 %cmp12.i.i.i, i1 %cmp14.i.i.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2372)
    #dbg_value(!DIArgList(i32 %add16.i.i.i, i32 %add11.i.i.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2348)
  %call44.i.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i.i, i32 noundef %add11.i.i.i), !dbg !2386
    #dbg_value(i32 %call44.i.i, !2345, !DIExpression(), !2348)
  %call46.i.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.i, i32 noundef %add16.i.i.i), !dbg !2387
    #dbg_value(i32 %call46.i.i, !2346, !DIExpression(), !2348)
    #dbg_value(i32 %call44.i.i, !2388, !DIExpression(), !2394)
    #dbg_value(i32 %call46.i.i, !2393, !DIExpression(), !2394)
  %shl.i73.i.i = shl nuw nsw i32 %call46.i.i, 8, !dbg !2396
  %add.i74.i.i = add nuw nsw i32 %shl.i73.i.i, %call44.i.i, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i.i) #7, !dbg !2398
    #dbg_value(i32 %add.i74.i.i, !2310, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2399)
  %arrayidx3.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %135, !dbg !2334
  %144 = load i8, ptr %arrayidx3.i, align 4, !dbg !2334
  %conv4.i = zext i8 %144 to i64, !dbg !2334
  %arrayidx7.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %135, !dbg !2334
  %145 = load i8, ptr %arrayidx7.i, align 4, !dbg !2334
  %conv8.i = zext i8 %145 to i64, !dbg !2334
    #dbg_value(ptr %h, !2046, !DIExpression(), !2400)
    #dbg_value(i8 %144, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2400)
    #dbg_value(i8 %145, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2400)
    #dbg_value(i32 2, !2054, !DIExpression(), !2400)
    #dbg_value(i32 2, !2055, !DIExpression(), !2400)
    #dbg_value(i32 0, !2056, !DIExpression(), !2400)
    #dbg_value(i32 %add.i74.i.i, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2400)
  %add.i.i1187 = add nuw nsw i64 %conv4.i, 12, !dbg !2402
  %mul.i.i = shl nuw nsw i64 %conv8.i, 3, !dbg !2403
  %add2.i.i = add nuw nsw i64 %add.i.i1187, %mul.i.i, !dbg !2404
  %arrayidx4.i193.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i.i, !dbg !2405
    #dbg_value(ptr %arrayidx4.i193.i, !2058, !DIExpression(), !2400)
  %conv.i194.i = and i32 %add.i74.i.i, 65535, !dbg !2406
    #dbg_value(ptr %arrayidx4.i193.i, !2064, !DIExpression(), !2407)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2407)
    #dbg_value(i32 2, !2070, !DIExpression(), !2407)
    #dbg_value(i32 2, !2071, !DIExpression(), !2407)
    #dbg_value(i32 %conv.i194.i, !2072, !DIExpression(), !2407)
    #dbg_value(ptr %arrayidx4.i193.i, !2073, !DIExpression(), !2407)
    #dbg_value(i32 %add.i74.i.i, !2074, !DIExpression(), !2407)
  %mul8.i.i.i = mul nuw i32 %conv.i194.i, 65537, !dbg !2409
    #dbg_value(i32 %mul8.i.i.i, !2075, !DIExpression(), !2407)
    #dbg_value(i32 %mul8.i.i.i, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2407)
    #dbg_value(i32 16, !2071, !DIExpression(), !2407)
  store i32 %mul8.i.i.i, ptr %arrayidx4.i193.i, align 4, !dbg !2410
  %add.ptr49.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i193.i, i64 16, !dbg !2411
  store i32 %mul8.i.i.i, ptr %add.ptr49.i.i.i, align 4, !dbg !2412
  br label %x264_cabac_mb8x8_mvd.exit, !dbg !2413

do.body10.i:                                      ; preds = %for.body174
  %146 = shl nuw nsw i64 %indvars.iv1810, 2, !dbg !2414
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1721, ptr %mvp.i197.i, !DIExpression(), !2415)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2415)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2415)
    #dbg_value(i32 0, !2342, !DIExpression(), !2415)
    #dbg_value(i64 %146, !2343, !DIExpression(), !2415)
    #dbg_value(i32 2, !2344, !DIExpression(), !2415)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i197.i) #7, !dbg !2417
  %147 = trunc nuw nsw i64 %146 to i32, !dbg !2418
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %147, i32 noundef 2, ptr noundef nonnull %mvp.i197.i) #7, !dbg !2418
  %arrayidx2.i200.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %146, !dbg !2419
  %148 = load i32, ptr %arrayidx2.i200.i, align 16, !dbg !2419
  %idxprom3.i201.i = sext i32 %148 to i64, !dbg !2420
  %arrayidx4.i202.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i201.i, !dbg !2420
  %149 = load i16, ptr %arrayidx4.i202.i, align 4, !dbg !2420
  %conv.i203.i = sext i16 %149 to i32, !dbg !2420
  %150 = load i16, ptr %mvp.i197.i, align 4, !dbg !2421
  %conv7.i204.i = sext i16 %150 to i32, !dbg !2421
  %sub.i205.i = sub nsw i32 %conv.i203.i, %conv7.i204.i, !dbg !2422
    #dbg_value(i32 %sub.i205.i, !2345, !DIExpression(), !2415)
  %arrayidx17.i206.i = getelementptr inbounds i8, ptr %arrayidx4.i202.i, i64 2, !dbg !2423
  %151 = load i16, ptr %arrayidx17.i206.i, align 2, !dbg !2423
  %conv18.i207.i = sext i16 %151 to i32, !dbg !2423
  %152 = load i16, ptr %arrayidx19.i208.i, align 2, !dbg !2424
  %conv20.i209.i = sext i16 %152 to i32, !dbg !2424
  %sub21.i210.i = sub nsw i32 %conv18.i207.i, %conv20.i209.i, !dbg !2425
    #dbg_value(i32 %sub21.i210.i, !2346, !DIExpression(), !2415)
  %sub28.i212.i = add nsw i32 %148, -1, !dbg !2426
  %idxprom29.i213.i = sext i32 %sub28.i212.i to i64, !dbg !2427
  %arrayidx30.i214.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i213.i, !dbg !2427
  %sub39.i215.i = add nsw i32 %148, -8, !dbg !2428
  %idxprom40.i216.i = sext i32 %sub39.i215.i to i64, !dbg !2429
  %arrayidx41.i217.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i216.i, !dbg !2429
  %arrayidx30.val.i218.i = load i8, ptr %arrayidx30.i214.i, align 1, !dbg !2430
  %153 = getelementptr i8, ptr %arrayidx30.i214.i, i64 1, !dbg !2430
  %arrayidx30.val71.i219.i = load i8, ptr %153, align 1, !dbg !2430
  %arrayidx41.val.i220.i = load i8, ptr %arrayidx41.i217.i, align 1, !dbg !2430
  %154 = getelementptr i8, ptr %arrayidx41.i217.i, i64 1, !dbg !2430
  %arrayidx41.val72.i221.i = load i8, ptr %154, align 1, !dbg !2430
    #dbg_value(ptr undef, !2364, !DIExpression(), !2431)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2431)
  %conv.i.i222.i = zext i8 %arrayidx30.val.i218.i to i32, !dbg !2433
  %conv2.i.i223.i = zext i8 %arrayidx41.val.i220.i to i32, !dbg !2434
  %add.i.i224.i = add nuw nsw i32 %conv2.i.i223.i, %conv.i.i222.i, !dbg !2435
    #dbg_value(i32 %add.i.i224.i, !2370, !DIExpression(), !2431)
  %conv4.i.i225.i = zext i8 %arrayidx30.val71.i219.i to i32, !dbg !2436
  %conv6.i.i226.i = zext i8 %arrayidx41.val72.i221.i to i32, !dbg !2437
  %add7.i.i227.i = add nuw nsw i32 %conv6.i.i226.i, %conv4.i.i225.i, !dbg !2438
    #dbg_value(i32 %add7.i.i227.i, !2371, !DIExpression(), !2431)
  %cmp.i.i228.i = icmp ugt i32 %add.i.i224.i, 2, !dbg !2439
  %conv8.i.i229.i = zext i1 %cmp.i.i228.i to i32, !dbg !2439
  %cmp9.i.i230.i = icmp ugt i32 %add.i.i224.i, 32, !dbg !2440
  %conv10.i.i231.i = zext i1 %cmp9.i.i230.i to i32, !dbg !2440
  %add11.i.i232.i = add nuw nsw i32 %conv8.i.i229.i, %conv10.i.i231.i, !dbg !2441
    #dbg_value(!DIArgList(i1 %cmp.i.i228.i, i1 %cmp9.i.i230.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2431)
  %cmp12.i.i233.i = icmp ugt i32 %add7.i.i227.i, 2, !dbg !2442
  %conv13.i.i234.i = zext i1 %cmp12.i.i233.i to i32, !dbg !2442
  %cmp14.i.i235.i = icmp ugt i32 %add7.i.i227.i, 32, !dbg !2443
  %conv15.i.i236.i = zext i1 %cmp14.i.i235.i to i32, !dbg !2443
  %add16.i.i237.i = add nuw nsw i32 %conv13.i.i234.i, %conv15.i.i236.i, !dbg !2444
    #dbg_value(!DIArgList(i1 %cmp12.i.i233.i, i1 %cmp14.i.i235.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2431)
    #dbg_value(!DIArgList(i32 %add16.i.i237.i, i32 %add11.i.i232.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2415)
  %call44.i238.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i205.i, i32 noundef %add11.i.i232.i), !dbg !2445
    #dbg_value(i32 %call44.i238.i, !2345, !DIExpression(), !2415)
  %call46.i239.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i210.i, i32 noundef %add16.i.i237.i), !dbg !2446
    #dbg_value(i32 %call46.i239.i, !2346, !DIExpression(), !2415)
    #dbg_value(i32 %call44.i238.i, !2388, !DIExpression(), !2447)
    #dbg_value(i32 %call46.i239.i, !2393, !DIExpression(), !2447)
  %shl.i73.i240.i = shl nuw nsw i32 %call46.i239.i, 8, !dbg !2449
  %add.i74.i241.i = add nuw nsw i32 %shl.i73.i240.i, %call44.i238.i, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i197.i) #7, !dbg !2451
    #dbg_value(i32 %add.i74.i241.i, !2313, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2452)
  %arrayidx17.i1184 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %146, !dbg !2414
  %155 = load i8, ptr %arrayidx17.i1184, align 4, !dbg !2414
  %conv18.i = zext i8 %155 to i64, !dbg !2414
  %arrayidx22.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %146, !dbg !2414
  %156 = load i8, ptr %arrayidx22.i, align 4, !dbg !2414
  %conv23.i = zext i8 %156 to i64, !dbg !2414
    #dbg_value(ptr %h, !2046, !DIExpression(), !2453)
    #dbg_value(i8 %155, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2453)
    #dbg_value(i8 %156, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2453)
    #dbg_value(i32 2, !2054, !DIExpression(), !2453)
    #dbg_value(i32 1, !2055, !DIExpression(), !2453)
    #dbg_value(i32 0, !2056, !DIExpression(), !2453)
    #dbg_value(i32 %add.i74.i241.i, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2453)
  %add.i244.i = add nuw nsw i64 %conv18.i, 12, !dbg !2455
  %mul.i245.i = shl nuw nsw i64 %conv23.i, 3, !dbg !2456
  %add2.i246.i = add nuw nsw i64 %add.i244.i, %mul.i245.i, !dbg !2457
  %arrayidx4.i248.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i246.i, !dbg !2458
    #dbg_value(ptr %arrayidx4.i248.i, !2058, !DIExpression(), !2453)
  %conv.i249.i = and i32 %add.i74.i241.i, 65535, !dbg !2459
    #dbg_value(ptr %arrayidx4.i248.i, !2064, !DIExpression(), !2460)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2460)
    #dbg_value(i32 1, !2070, !DIExpression(), !2460)
    #dbg_value(i32 2, !2071, !DIExpression(), !2460)
    #dbg_value(i32 %conv.i249.i, !2072, !DIExpression(), !2460)
    #dbg_value(ptr %arrayidx4.i248.i, !2073, !DIExpression(), !2460)
    #dbg_value(i32 %add.i74.i241.i, !2074, !DIExpression(), !2460)
  %mul8.i.i250.i = mul nuw i32 %conv.i249.i, 65537, !dbg !2462
    #dbg_value(i32 %mul8.i.i250.i, !2075, !DIExpression(), !2460)
    #dbg_value(i32 %mul8.i.i250.i, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2460)
    #dbg_value(i32 16, !2071, !DIExpression(), !2460)
  store i32 %mul8.i.i250.i, ptr %arrayidx4.i248.i, align 4, !dbg !2463
  %157 = or disjoint i64 %146, 2, !dbg !2464
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1720, ptr %mvp.i253.i, !DIExpression(), !2465)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2465)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2465)
    #dbg_value(i32 0, !2342, !DIExpression(), !2465)
    #dbg_value(i64 %157, !2343, !DIExpression(), !2465)
    #dbg_value(i32 2, !2344, !DIExpression(), !2465)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i253.i) #7, !dbg !2467
  %158 = trunc nuw nsw i64 %157 to i32, !dbg !2468
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %158, i32 noundef 2, ptr noundef nonnull %mvp.i253.i) #7, !dbg !2468
  %arrayidx2.i256.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %157, !dbg !2469
  %159 = load i32, ptr %arrayidx2.i256.i, align 8, !dbg !2469
  %idxprom3.i257.i = sext i32 %159 to i64, !dbg !2470
  %arrayidx4.i258.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i257.i, !dbg !2470
  %160 = load i16, ptr %arrayidx4.i258.i, align 4, !dbg !2470
  %conv.i259.i = sext i16 %160 to i32, !dbg !2470
  %161 = load i16, ptr %mvp.i253.i, align 4, !dbg !2471
  %conv7.i260.i = sext i16 %161 to i32, !dbg !2471
  %sub.i261.i = sub nsw i32 %conv.i259.i, %conv7.i260.i, !dbg !2472
    #dbg_value(i32 %sub.i261.i, !2345, !DIExpression(), !2465)
  %arrayidx17.i262.i = getelementptr inbounds i8, ptr %arrayidx4.i258.i, i64 2, !dbg !2473
  %162 = load i16, ptr %arrayidx17.i262.i, align 2, !dbg !2473
  %conv18.i263.i = sext i16 %162 to i32, !dbg !2473
  %163 = load i16, ptr %arrayidx19.i264.i, align 2, !dbg !2474
  %conv20.i265.i = sext i16 %163 to i32, !dbg !2474
  %sub21.i266.i = sub nsw i32 %conv18.i263.i, %conv20.i265.i, !dbg !2475
    #dbg_value(i32 %sub21.i266.i, !2346, !DIExpression(), !2465)
  %sub28.i268.i = add nsw i32 %159, -1, !dbg !2476
  %idxprom29.i269.i = sext i32 %sub28.i268.i to i64, !dbg !2477
  %arrayidx30.i270.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i269.i, !dbg !2477
  %sub39.i271.i = add nsw i32 %159, -8, !dbg !2478
  %idxprom40.i272.i = sext i32 %sub39.i271.i to i64, !dbg !2479
  %arrayidx41.i273.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i272.i, !dbg !2479
  %arrayidx30.val.i274.i = load i8, ptr %arrayidx30.i270.i, align 1, !dbg !2480
  %164 = getelementptr i8, ptr %arrayidx30.i270.i, i64 1, !dbg !2480
  %arrayidx30.val71.i275.i = load i8, ptr %164, align 1, !dbg !2480
  %arrayidx41.val.i276.i = load i8, ptr %arrayidx41.i273.i, align 1, !dbg !2480
  %165 = getelementptr i8, ptr %arrayidx41.i273.i, i64 1, !dbg !2480
  %arrayidx41.val72.i277.i = load i8, ptr %165, align 1, !dbg !2480
    #dbg_value(ptr undef, !2364, !DIExpression(), !2481)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2481)
  %conv.i.i278.i = zext i8 %arrayidx30.val.i274.i to i32, !dbg !2483
  %conv2.i.i279.i = zext i8 %arrayidx41.val.i276.i to i32, !dbg !2484
  %add.i.i280.i = add nuw nsw i32 %conv2.i.i279.i, %conv.i.i278.i, !dbg !2485
    #dbg_value(i32 %add.i.i280.i, !2370, !DIExpression(), !2481)
  %conv4.i.i281.i = zext i8 %arrayidx30.val71.i275.i to i32, !dbg !2486
  %conv6.i.i282.i = zext i8 %arrayidx41.val72.i277.i to i32, !dbg !2487
  %add7.i.i283.i = add nuw nsw i32 %conv6.i.i282.i, %conv4.i.i281.i, !dbg !2488
    #dbg_value(i32 %add7.i.i283.i, !2371, !DIExpression(), !2481)
  %cmp.i.i284.i = icmp ugt i32 %add.i.i280.i, 2, !dbg !2489
  %conv8.i.i285.i = zext i1 %cmp.i.i284.i to i32, !dbg !2489
  %cmp9.i.i286.i = icmp ugt i32 %add.i.i280.i, 32, !dbg !2490
  %conv10.i.i287.i = zext i1 %cmp9.i.i286.i to i32, !dbg !2490
  %add11.i.i288.i = add nuw nsw i32 %conv8.i.i285.i, %conv10.i.i287.i, !dbg !2491
    #dbg_value(!DIArgList(i1 %cmp.i.i284.i, i1 %cmp9.i.i286.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2481)
  %cmp12.i.i289.i = icmp ugt i32 %add7.i.i283.i, 2, !dbg !2492
  %conv13.i.i290.i = zext i1 %cmp12.i.i289.i to i32, !dbg !2492
  %cmp14.i.i291.i = icmp ugt i32 %add7.i.i283.i, 32, !dbg !2493
  %conv15.i.i292.i = zext i1 %cmp14.i.i291.i to i32, !dbg !2493
  %add16.i.i293.i = add nuw nsw i32 %conv13.i.i290.i, %conv15.i.i292.i, !dbg !2494
    #dbg_value(!DIArgList(i1 %cmp12.i.i289.i, i1 %cmp14.i.i291.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2481)
    #dbg_value(!DIArgList(i32 %add16.i.i293.i, i32 %add11.i.i288.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2465)
  %call44.i294.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i261.i, i32 noundef %add11.i.i288.i), !dbg !2495
    #dbg_value(i32 %call44.i294.i, !2345, !DIExpression(), !2465)
  %call46.i295.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i266.i, i32 noundef %add16.i.i293.i), !dbg !2496
    #dbg_value(i32 %call46.i295.i, !2346, !DIExpression(), !2465)
    #dbg_value(i32 %call44.i294.i, !2388, !DIExpression(), !2497)
    #dbg_value(i32 %call46.i295.i, !2393, !DIExpression(), !2497)
  %shl.i73.i296.i = shl nuw nsw i32 %call46.i295.i, 8, !dbg !2499
  %add.i74.i297.i = add nuw nsw i32 %shl.i73.i296.i, %call44.i294.i, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i253.i) #7, !dbg !2501
    #dbg_value(i32 %add.i74.i297.i, !2315, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2502)
  %arrayidx33.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %157, !dbg !2464
  %166 = load i8, ptr %arrayidx33.i, align 2, !dbg !2464
  %conv34.i = zext i8 %166 to i64, !dbg !2464
  %arrayidx38.i1185 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %157, !dbg !2464
  %167 = load i8, ptr %arrayidx38.i1185, align 2, !dbg !2464
  %conv39.i1186 = zext i8 %167 to i64, !dbg !2464
    #dbg_value(ptr %h, !2046, !DIExpression(), !2503)
    #dbg_value(i8 %166, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2503)
    #dbg_value(i8 %167, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2503)
    #dbg_value(i32 2, !2054, !DIExpression(), !2503)
    #dbg_value(i32 1, !2055, !DIExpression(), !2503)
    #dbg_value(i32 0, !2056, !DIExpression(), !2503)
    #dbg_value(i32 %add.i74.i297.i, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2503)
  %add.i300.i = add nuw nsw i64 %conv34.i, 12, !dbg !2505
  %mul.i301.i = shl nuw nsw i64 %conv39.i1186, 3, !dbg !2506
  %add2.i302.i = add nuw nsw i64 %add.i300.i, %mul.i301.i, !dbg !2507
  %arrayidx4.i304.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i302.i, !dbg !2508
    #dbg_value(ptr %arrayidx4.i304.i, !2058, !DIExpression(), !2503)
  %conv.i305.i = and i32 %add.i74.i297.i, 65535, !dbg !2509
    #dbg_value(ptr %arrayidx4.i304.i, !2064, !DIExpression(), !2510)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2510)
    #dbg_value(i32 1, !2070, !DIExpression(), !2510)
    #dbg_value(i32 2, !2071, !DIExpression(), !2510)
    #dbg_value(i32 %conv.i305.i, !2072, !DIExpression(), !2510)
    #dbg_value(ptr %arrayidx4.i304.i, !2073, !DIExpression(), !2510)
    #dbg_value(i32 %add.i74.i297.i, !2074, !DIExpression(), !2510)
  %mul8.i.i306.i = mul nuw i32 %conv.i305.i, 65537, !dbg !2512
    #dbg_value(i32 %mul8.i.i306.i, !2075, !DIExpression(), !2510)
    #dbg_value(i32 %mul8.i.i306.i, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2510)
    #dbg_value(i32 16, !2071, !DIExpression(), !2510)
  store i32 %mul8.i.i306.i, ptr %arrayidx4.i304.i, align 4, !dbg !2513
  br label %x264_cabac_mb8x8_mvd.exit, !dbg !2514

do.body42.i:                                      ; preds = %for.body174
  %168 = shl nuw nsw i64 %indvars.iv1810, 2, !dbg !2515
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1719, ptr %mvp.i309.i, !DIExpression(), !2516)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2516)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2516)
    #dbg_value(i32 0, !2342, !DIExpression(), !2516)
    #dbg_value(i64 %168, !2343, !DIExpression(), !2516)
    #dbg_value(i32 1, !2344, !DIExpression(), !2516)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i309.i) #7, !dbg !2518
  %169 = trunc nuw nsw i64 %168 to i32, !dbg !2519
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %169, i32 noundef 1, ptr noundef nonnull %mvp.i309.i) #7, !dbg !2519
  %arrayidx2.i312.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %168, !dbg !2520
  %170 = load i32, ptr %arrayidx2.i312.i, align 16, !dbg !2520
  %idxprom3.i313.i = sext i32 %170 to i64, !dbg !2521
  %arrayidx4.i314.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i313.i, !dbg !2521
  %171 = load i16, ptr %arrayidx4.i314.i, align 4, !dbg !2521
  %conv.i315.i = sext i16 %171 to i32, !dbg !2521
  %172 = load i16, ptr %mvp.i309.i, align 4, !dbg !2522
  %conv7.i316.i = sext i16 %172 to i32, !dbg !2522
  %sub.i317.i = sub nsw i32 %conv.i315.i, %conv7.i316.i, !dbg !2523
    #dbg_value(i32 %sub.i317.i, !2345, !DIExpression(), !2516)
  %arrayidx17.i318.i = getelementptr inbounds i8, ptr %arrayidx4.i314.i, i64 2, !dbg !2524
  %173 = load i16, ptr %arrayidx17.i318.i, align 2, !dbg !2524
  %conv18.i319.i = sext i16 %173 to i32, !dbg !2524
  %174 = load i16, ptr %arrayidx19.i320.i, align 2, !dbg !2525
  %conv20.i321.i = sext i16 %174 to i32, !dbg !2525
  %sub21.i322.i = sub nsw i32 %conv18.i319.i, %conv20.i321.i, !dbg !2526
    #dbg_value(i32 %sub21.i322.i, !2346, !DIExpression(), !2516)
  %sub28.i324.i = add nsw i32 %170, -1, !dbg !2527
  %idxprom29.i325.i = sext i32 %sub28.i324.i to i64, !dbg !2528
  %arrayidx30.i326.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i325.i, !dbg !2528
  %sub39.i327.i = add nsw i32 %170, -8, !dbg !2529
  %idxprom40.i328.i = sext i32 %sub39.i327.i to i64, !dbg !2530
  %arrayidx41.i329.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i328.i, !dbg !2530
  %arrayidx30.val.i330.i = load i8, ptr %arrayidx30.i326.i, align 1, !dbg !2531
  %175 = getelementptr i8, ptr %arrayidx30.i326.i, i64 1, !dbg !2531
  %arrayidx30.val71.i331.i = load i8, ptr %175, align 1, !dbg !2531
  %arrayidx41.val.i332.i = load i8, ptr %arrayidx41.i329.i, align 1, !dbg !2531
  %176 = getelementptr i8, ptr %arrayidx41.i329.i, i64 1, !dbg !2531
  %arrayidx41.val72.i333.i = load i8, ptr %176, align 1, !dbg !2531
    #dbg_value(ptr undef, !2364, !DIExpression(), !2532)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2532)
  %conv.i.i334.i = zext i8 %arrayidx30.val.i330.i to i32, !dbg !2534
  %conv2.i.i335.i = zext i8 %arrayidx41.val.i332.i to i32, !dbg !2535
  %add.i.i336.i = add nuw nsw i32 %conv2.i.i335.i, %conv.i.i334.i, !dbg !2536
    #dbg_value(i32 %add.i.i336.i, !2370, !DIExpression(), !2532)
  %conv4.i.i337.i = zext i8 %arrayidx30.val71.i331.i to i32, !dbg !2537
  %conv6.i.i338.i = zext i8 %arrayidx41.val72.i333.i to i32, !dbg !2538
  %add7.i.i339.i = add nuw nsw i32 %conv6.i.i338.i, %conv4.i.i337.i, !dbg !2539
    #dbg_value(i32 %add7.i.i339.i, !2371, !DIExpression(), !2532)
  %cmp.i.i340.i = icmp ugt i32 %add.i.i336.i, 2, !dbg !2540
  %conv8.i.i341.i = zext i1 %cmp.i.i340.i to i32, !dbg !2540
  %cmp9.i.i342.i = icmp ugt i32 %add.i.i336.i, 32, !dbg !2541
  %conv10.i.i343.i = zext i1 %cmp9.i.i342.i to i32, !dbg !2541
  %add11.i.i344.i = add nuw nsw i32 %conv8.i.i341.i, %conv10.i.i343.i, !dbg !2542
    #dbg_value(!DIArgList(i1 %cmp.i.i340.i, i1 %cmp9.i.i342.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2532)
  %cmp12.i.i345.i = icmp ugt i32 %add7.i.i339.i, 2, !dbg !2543
  %conv13.i.i346.i = zext i1 %cmp12.i.i345.i to i32, !dbg !2543
  %cmp14.i.i347.i = icmp ugt i32 %add7.i.i339.i, 32, !dbg !2544
  %conv15.i.i348.i = zext i1 %cmp14.i.i347.i to i32, !dbg !2544
  %add16.i.i349.i = add nuw nsw i32 %conv13.i.i346.i, %conv15.i.i348.i, !dbg !2545
    #dbg_value(!DIArgList(i1 %cmp12.i.i345.i, i1 %cmp14.i.i347.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2532)
    #dbg_value(!DIArgList(i32 %add16.i.i349.i, i32 %add11.i.i344.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2516)
  %call44.i350.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i317.i, i32 noundef %add11.i.i344.i), !dbg !2546
    #dbg_value(i32 %call44.i350.i, !2345, !DIExpression(), !2516)
  %call46.i351.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i322.i, i32 noundef %add16.i.i349.i), !dbg !2547
    #dbg_value(i32 %call46.i351.i, !2346, !DIExpression(), !2516)
    #dbg_value(i32 %call44.i350.i, !2388, !DIExpression(), !2548)
    #dbg_value(i32 %call46.i351.i, !2393, !DIExpression(), !2548)
  %shl.i73.i352.i = shl nuw nsw i32 %call46.i351.i, 8, !dbg !2550
  %add.i74.i353.i = add nuw nsw i32 %shl.i73.i352.i, %call44.i350.i, !dbg !2551
  %conv48.i354.i = trunc i32 %add.i74.i353.i to i16, !dbg !2552
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i309.i) #7, !dbg !2553
    #dbg_value(i16 %conv48.i354.i, !2317, !DIExpression(), !2554)
  %arrayidx50.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %168, !dbg !2515
  %177 = load i8, ptr %arrayidx50.i, align 4, !dbg !2515
  %conv51.i = zext i8 %177 to i64, !dbg !2515
  %arrayidx55.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %168, !dbg !2515
  %178 = load i8, ptr %arrayidx55.i, align 4, !dbg !2515
  %conv56.i = zext i8 %178 to i64, !dbg !2515
    #dbg_value(ptr %h, !2046, !DIExpression(), !2555)
    #dbg_value(i8 %177, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2555)
    #dbg_value(i8 %178, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2555)
    #dbg_value(i32 1, !2054, !DIExpression(), !2555)
    #dbg_value(i32 2, !2055, !DIExpression(), !2555)
    #dbg_value(i32 0, !2056, !DIExpression(), !2555)
    #dbg_value(i16 %conv48.i354.i, !2057, !DIExpression(), !2555)
  %add.i356.i = add nuw nsw i64 %conv51.i, 12, !dbg !2557
  %mul.i357.i = shl nuw nsw i64 %conv56.i, 3, !dbg !2558
  %add2.i358.i = add nuw nsw i64 %add.i356.i, %mul.i357.i, !dbg !2559
  %arrayidx4.i360.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i358.i, !dbg !2560
    #dbg_value(ptr %arrayidx4.i360.i, !2058, !DIExpression(), !2555)
    #dbg_value(ptr %arrayidx4.i360.i, !2064, !DIExpression(), !2561)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2561)
    #dbg_value(i32 2, !2070, !DIExpression(), !2561)
    #dbg_value(i16 %conv48.i354.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2561)
    #dbg_value(ptr %arrayidx4.i360.i, !2073, !DIExpression(), !2561)
    #dbg_value(i16 %conv48.i354.i, !2074, !DIExpression(), !2561)
    #dbg_value(i16 %conv48.i354.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2561)
    #dbg_value(i16 %conv48.i354.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2561)
    #dbg_value(i32 16, !2071, !DIExpression(), !2561)
  store i16 %conv48.i354.i, ptr %arrayidx4.i360.i, align 2, !dbg !2563
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i360.i, i64 16, !dbg !2565
  store i16 %conv48.i354.i, ptr %add.ptr26.i.i.i, align 2, !dbg !2566
  %179 = or disjoint i64 %168, 1, !dbg !2567
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1718, ptr %mvp.i365.i, !DIExpression(), !2568)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2568)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2568)
    #dbg_value(i32 0, !2342, !DIExpression(), !2568)
    #dbg_value(i64 %179, !2343, !DIExpression(), !2568)
    #dbg_value(i32 1, !2344, !DIExpression(), !2568)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i365.i) #7, !dbg !2570
  %180 = trunc nuw nsw i64 %179 to i32, !dbg !2571
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %180, i32 noundef 1, ptr noundef nonnull %mvp.i365.i) #7, !dbg !2571
  %arrayidx2.i368.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %179, !dbg !2572
  %181 = load i32, ptr %arrayidx2.i368.i, align 4, !dbg !2572
  %idxprom3.i369.i = sext i32 %181 to i64, !dbg !2573
  %arrayidx4.i370.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i369.i, !dbg !2573
  %182 = load i16, ptr %arrayidx4.i370.i, align 4, !dbg !2573
  %conv.i371.i = sext i16 %182 to i32, !dbg !2573
  %183 = load i16, ptr %mvp.i365.i, align 4, !dbg !2574
  %conv7.i372.i = sext i16 %183 to i32, !dbg !2574
  %sub.i373.i = sub nsw i32 %conv.i371.i, %conv7.i372.i, !dbg !2575
    #dbg_value(i32 %sub.i373.i, !2345, !DIExpression(), !2568)
  %arrayidx17.i374.i = getelementptr inbounds i8, ptr %arrayidx4.i370.i, i64 2, !dbg !2576
  %184 = load i16, ptr %arrayidx17.i374.i, align 2, !dbg !2576
  %conv18.i375.i = sext i16 %184 to i32, !dbg !2576
  %185 = load i16, ptr %arrayidx19.i376.i, align 2, !dbg !2577
  %conv20.i377.i = sext i16 %185 to i32, !dbg !2577
  %sub21.i378.i = sub nsw i32 %conv18.i375.i, %conv20.i377.i, !dbg !2578
    #dbg_value(i32 %sub21.i378.i, !2346, !DIExpression(), !2568)
  %sub28.i380.i = add nsw i32 %181, -1, !dbg !2579
  %idxprom29.i381.i = sext i32 %sub28.i380.i to i64, !dbg !2580
  %arrayidx30.i382.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i381.i, !dbg !2580
  %sub39.i383.i = add nsw i32 %181, -8, !dbg !2581
  %idxprom40.i384.i = sext i32 %sub39.i383.i to i64, !dbg !2582
  %arrayidx41.i385.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i384.i, !dbg !2582
  %arrayidx30.val.i386.i = load i8, ptr %arrayidx30.i382.i, align 1, !dbg !2583
  %186 = getelementptr i8, ptr %arrayidx30.i382.i, i64 1, !dbg !2583
  %arrayidx30.val71.i387.i = load i8, ptr %186, align 1, !dbg !2583
  %arrayidx41.val.i388.i = load i8, ptr %arrayidx41.i385.i, align 1, !dbg !2583
  %187 = getelementptr i8, ptr %arrayidx41.i385.i, i64 1, !dbg !2583
  %arrayidx41.val72.i389.i = load i8, ptr %187, align 1, !dbg !2583
    #dbg_value(ptr undef, !2364, !DIExpression(), !2584)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2584)
  %conv.i.i390.i = zext i8 %arrayidx30.val.i386.i to i32, !dbg !2586
  %conv2.i.i391.i = zext i8 %arrayidx41.val.i388.i to i32, !dbg !2587
  %add.i.i392.i = add nuw nsw i32 %conv2.i.i391.i, %conv.i.i390.i, !dbg !2588
    #dbg_value(i32 %add.i.i392.i, !2370, !DIExpression(), !2584)
  %conv4.i.i393.i = zext i8 %arrayidx30.val71.i387.i to i32, !dbg !2589
  %conv6.i.i394.i = zext i8 %arrayidx41.val72.i389.i to i32, !dbg !2590
  %add7.i.i395.i = add nuw nsw i32 %conv6.i.i394.i, %conv4.i.i393.i, !dbg !2591
    #dbg_value(i32 %add7.i.i395.i, !2371, !DIExpression(), !2584)
  %cmp.i.i396.i = icmp ugt i32 %add.i.i392.i, 2, !dbg !2592
  %conv8.i.i397.i = zext i1 %cmp.i.i396.i to i32, !dbg !2592
  %cmp9.i.i398.i = icmp ugt i32 %add.i.i392.i, 32, !dbg !2593
  %conv10.i.i399.i = zext i1 %cmp9.i.i398.i to i32, !dbg !2593
  %add11.i.i400.i = add nuw nsw i32 %conv8.i.i397.i, %conv10.i.i399.i, !dbg !2594
    #dbg_value(!DIArgList(i1 %cmp.i.i396.i, i1 %cmp9.i.i398.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2584)
  %cmp12.i.i401.i = icmp ugt i32 %add7.i.i395.i, 2, !dbg !2595
  %conv13.i.i402.i = zext i1 %cmp12.i.i401.i to i32, !dbg !2595
  %cmp14.i.i403.i = icmp ugt i32 %add7.i.i395.i, 32, !dbg !2596
  %conv15.i.i404.i = zext i1 %cmp14.i.i403.i to i32, !dbg !2596
  %add16.i.i405.i = add nuw nsw i32 %conv13.i.i402.i, %conv15.i.i404.i, !dbg !2597
    #dbg_value(!DIArgList(i1 %cmp12.i.i401.i, i1 %cmp14.i.i403.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2584)
    #dbg_value(!DIArgList(i32 %add16.i.i405.i, i32 %add11.i.i400.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2568)
  %call44.i406.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i373.i, i32 noundef %add11.i.i400.i), !dbg !2598
    #dbg_value(i32 %call44.i406.i, !2345, !DIExpression(), !2568)
  %call46.i407.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i378.i, i32 noundef %add16.i.i405.i), !dbg !2599
    #dbg_value(i32 %call46.i407.i, !2346, !DIExpression(), !2568)
    #dbg_value(i32 %call44.i406.i, !2388, !DIExpression(), !2600)
    #dbg_value(i32 %call46.i407.i, !2393, !DIExpression(), !2600)
  %shl.i73.i408.i = shl nuw nsw i32 %call46.i407.i, 8, !dbg !2602
  %add.i74.i409.i = add nuw nsw i32 %shl.i73.i408.i, %call44.i406.i, !dbg !2603
  %conv48.i410.i = trunc i32 %add.i74.i409.i to i16, !dbg !2604
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i365.i) #7, !dbg !2605
    #dbg_value(i16 %conv48.i410.i, !2319, !DIExpression(), !2606)
  %arrayidx66.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %179, !dbg !2567
  %188 = load i8, ptr %arrayidx66.i, align 1, !dbg !2567
  %conv67.i1183 = zext i8 %188 to i64, !dbg !2567
  %arrayidx71.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %179, !dbg !2567
  %189 = load i8, ptr %arrayidx71.i, align 1, !dbg !2567
  %conv72.i = zext i8 %189 to i64, !dbg !2567
    #dbg_value(ptr %h, !2046, !DIExpression(), !2607)
    #dbg_value(i8 %188, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2607)
    #dbg_value(i8 %189, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2607)
    #dbg_value(i32 1, !2054, !DIExpression(), !2607)
    #dbg_value(i32 2, !2055, !DIExpression(), !2607)
    #dbg_value(i32 0, !2056, !DIExpression(), !2607)
    #dbg_value(i16 %conv48.i410.i, !2057, !DIExpression(), !2607)
  %add.i412.i = add nuw nsw i64 %conv67.i1183, 12, !dbg !2609
  %mul.i413.i = shl nuw nsw i64 %conv72.i, 3, !dbg !2610
  %add2.i414.i = add nuw nsw i64 %add.i412.i, %mul.i413.i, !dbg !2611
  %arrayidx4.i416.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i414.i, !dbg !2612
    #dbg_value(ptr %arrayidx4.i416.i, !2058, !DIExpression(), !2607)
    #dbg_value(ptr %arrayidx4.i416.i, !2064, !DIExpression(), !2613)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2613)
    #dbg_value(i32 2, !2070, !DIExpression(), !2613)
    #dbg_value(i16 %conv48.i410.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2613)
    #dbg_value(ptr %arrayidx4.i416.i, !2073, !DIExpression(), !2613)
    #dbg_value(i16 %conv48.i410.i, !2074, !DIExpression(), !2613)
    #dbg_value(i16 %conv48.i410.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2613)
    #dbg_value(i16 %conv48.i410.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2613)
    #dbg_value(i32 16, !2071, !DIExpression(), !2613)
  store i16 %conv48.i410.i, ptr %arrayidx4.i416.i, align 2, !dbg !2615
  %add.ptr26.i.i421.i = getelementptr inbounds i8, ptr %arrayidx4.i416.i, i64 16, !dbg !2616
  store i16 %conv48.i410.i, ptr %add.ptr26.i.i421.i, align 2, !dbg !2617
  br label %x264_cabac_mb8x8_mvd.exit, !dbg !2618

do.body75.i:                                      ; preds = %for.body174
  %190 = shl nuw nsw i64 %indvars.iv1810, 2, !dbg !2619
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1717, ptr %mvp.i422.i, !DIExpression(), !2620)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2620)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2620)
    #dbg_value(i32 0, !2342, !DIExpression(), !2620)
    #dbg_value(i64 %190, !2343, !DIExpression(), !2620)
    #dbg_value(i32 1, !2344, !DIExpression(), !2620)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i422.i) #7, !dbg !2622
  %191 = trunc nuw nsw i64 %190 to i32, !dbg !2623
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %191, i32 noundef 1, ptr noundef nonnull %mvp.i422.i) #7, !dbg !2623
  %arrayidx2.i425.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %190, !dbg !2624
  %192 = load i32, ptr %arrayidx2.i425.i, align 16, !dbg !2624
  %idxprom3.i426.i = sext i32 %192 to i64, !dbg !2625
  %arrayidx4.i427.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i426.i, !dbg !2625
  %193 = load i16, ptr %arrayidx4.i427.i, align 4, !dbg !2625
  %conv.i428.i = sext i16 %193 to i32, !dbg !2625
  %194 = load i16, ptr %mvp.i422.i, align 4, !dbg !2626
  %conv7.i429.i = sext i16 %194 to i32, !dbg !2626
  %sub.i430.i = sub nsw i32 %conv.i428.i, %conv7.i429.i, !dbg !2627
    #dbg_value(i32 %sub.i430.i, !2345, !DIExpression(), !2620)
  %arrayidx17.i431.i = getelementptr inbounds i8, ptr %arrayidx4.i427.i, i64 2, !dbg !2628
  %195 = load i16, ptr %arrayidx17.i431.i, align 2, !dbg !2628
  %conv18.i432.i = sext i16 %195 to i32, !dbg !2628
  %196 = load i16, ptr %arrayidx19.i433.i, align 2, !dbg !2629
  %conv20.i434.i = sext i16 %196 to i32, !dbg !2629
  %sub21.i435.i = sub nsw i32 %conv18.i432.i, %conv20.i434.i, !dbg !2630
    #dbg_value(i32 %sub21.i435.i, !2346, !DIExpression(), !2620)
  %sub28.i437.i = add nsw i32 %192, -1, !dbg !2631
  %idxprom29.i438.i = sext i32 %sub28.i437.i to i64, !dbg !2632
  %arrayidx30.i439.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i438.i, !dbg !2632
  %sub39.i440.i = add nsw i32 %192, -8, !dbg !2633
  %idxprom40.i441.i = sext i32 %sub39.i440.i to i64, !dbg !2634
  %arrayidx41.i442.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i441.i, !dbg !2634
  %arrayidx30.val.i443.i = load i8, ptr %arrayidx30.i439.i, align 1, !dbg !2635
  %197 = getelementptr i8, ptr %arrayidx30.i439.i, i64 1, !dbg !2635
  %arrayidx30.val71.i444.i = load i8, ptr %197, align 1, !dbg !2635
  %arrayidx41.val.i445.i = load i8, ptr %arrayidx41.i442.i, align 1, !dbg !2635
  %198 = getelementptr i8, ptr %arrayidx41.i442.i, i64 1, !dbg !2635
  %arrayidx41.val72.i446.i = load i8, ptr %198, align 1, !dbg !2635
    #dbg_value(ptr undef, !2364, !DIExpression(), !2636)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2636)
  %conv.i.i447.i = zext i8 %arrayidx30.val.i443.i to i32, !dbg !2638
  %conv2.i.i448.i = zext i8 %arrayidx41.val.i445.i to i32, !dbg !2639
  %add.i.i449.i = add nuw nsw i32 %conv2.i.i448.i, %conv.i.i447.i, !dbg !2640
    #dbg_value(i32 %add.i.i449.i, !2370, !DIExpression(), !2636)
  %conv4.i.i450.i = zext i8 %arrayidx30.val71.i444.i to i32, !dbg !2641
  %conv6.i.i451.i = zext i8 %arrayidx41.val72.i446.i to i32, !dbg !2642
  %add7.i.i452.i = add nuw nsw i32 %conv6.i.i451.i, %conv4.i.i450.i, !dbg !2643
    #dbg_value(i32 %add7.i.i452.i, !2371, !DIExpression(), !2636)
  %cmp.i.i453.i = icmp ugt i32 %add.i.i449.i, 2, !dbg !2644
  %conv8.i.i454.i = zext i1 %cmp.i.i453.i to i32, !dbg !2644
  %cmp9.i.i455.i = icmp ugt i32 %add.i.i449.i, 32, !dbg !2645
  %conv10.i.i456.i = zext i1 %cmp9.i.i455.i to i32, !dbg !2645
  %add11.i.i457.i = add nuw nsw i32 %conv8.i.i454.i, %conv10.i.i456.i, !dbg !2646
    #dbg_value(!DIArgList(i1 %cmp.i.i453.i, i1 %cmp9.i.i455.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2636)
  %cmp12.i.i458.i = icmp ugt i32 %add7.i.i452.i, 2, !dbg !2647
  %conv13.i.i459.i = zext i1 %cmp12.i.i458.i to i32, !dbg !2647
  %cmp14.i.i460.i = icmp ugt i32 %add7.i.i452.i, 32, !dbg !2648
  %conv15.i.i461.i = zext i1 %cmp14.i.i460.i to i32, !dbg !2648
  %add16.i.i462.i = add nuw nsw i32 %conv13.i.i459.i, %conv15.i.i461.i, !dbg !2649
    #dbg_value(!DIArgList(i1 %cmp12.i.i458.i, i1 %cmp14.i.i460.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2636)
    #dbg_value(!DIArgList(i32 %add16.i.i462.i, i32 %add11.i.i457.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2620)
  %call44.i463.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i430.i, i32 noundef %add11.i.i457.i), !dbg !2650
    #dbg_value(i32 %call44.i463.i, !2345, !DIExpression(), !2620)
  %call46.i464.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i435.i, i32 noundef %add16.i.i462.i), !dbg !2651
    #dbg_value(i32 %call46.i464.i, !2346, !DIExpression(), !2620)
    #dbg_value(i32 %call44.i463.i, !2388, !DIExpression(), !2652)
    #dbg_value(i32 %call46.i464.i, !2393, !DIExpression(), !2652)
  %shl.i73.i465.i = shl nuw nsw i32 %call46.i464.i, 8, !dbg !2654
  %add.i74.i466.i = add nuw nsw i32 %shl.i73.i465.i, %call44.i463.i, !dbg !2655
  %conv48.i467.i = trunc i32 %add.i74.i466.i to i16, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i422.i) #7, !dbg !2657
    #dbg_value(i16 %conv48.i467.i, !2321, !DIExpression(), !2658)
  %arrayidx83.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %190, !dbg !2619
  %199 = load i8, ptr %arrayidx83.i, align 4, !dbg !2619
  %conv84.i = zext i8 %199 to i64, !dbg !2619
  %arrayidx88.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %190, !dbg !2619
  %200 = load i8, ptr %arrayidx88.i, align 4, !dbg !2619
  %conv89.i = zext i8 %200 to i64, !dbg !2619
    #dbg_value(ptr %h, !2046, !DIExpression(), !2659)
    #dbg_value(i8 %199, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2659)
    #dbg_value(i8 %200, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2659)
    #dbg_value(i32 1, !2054, !DIExpression(), !2659)
    #dbg_value(i32 1, !2055, !DIExpression(), !2659)
    #dbg_value(i32 0, !2056, !DIExpression(), !2659)
    #dbg_value(i16 %conv48.i467.i, !2057, !DIExpression(), !2659)
  %add.i469.i = add nuw nsw i64 %conv84.i, 12, !dbg !2661
  %mul.i470.i = shl nuw nsw i64 %conv89.i, 3, !dbg !2662
  %add2.i471.i = add nuw nsw i64 %add.i469.i, %mul.i470.i, !dbg !2663
  %arrayidx4.i473.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i471.i, !dbg !2664
    #dbg_value(ptr %arrayidx4.i473.i, !2058, !DIExpression(), !2659)
    #dbg_value(ptr %arrayidx4.i473.i, !2064, !DIExpression(), !2665)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2665)
    #dbg_value(i32 1, !2070, !DIExpression(), !2665)
    #dbg_value(i16 %conv48.i467.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2665)
    #dbg_value(ptr %arrayidx4.i473.i, !2073, !DIExpression(), !2665)
    #dbg_value(i16 %conv48.i467.i, !2074, !DIExpression(), !2665)
    #dbg_value(i16 %conv48.i467.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2665)
    #dbg_value(i16 %conv48.i467.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2665)
    #dbg_value(i32 16, !2071, !DIExpression(), !2665)
  store i16 %conv48.i467.i, ptr %arrayidx4.i473.i, align 2, !dbg !2667
  %201 = or disjoint i64 %190, 1, !dbg !2668
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1716, ptr %mvp.i478.i, !DIExpression(), !2669)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2669)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2669)
    #dbg_value(i32 0, !2342, !DIExpression(), !2669)
    #dbg_value(i64 %201, !2343, !DIExpression(), !2669)
    #dbg_value(i32 1, !2344, !DIExpression(), !2669)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i478.i) #7, !dbg !2671
  %202 = trunc nuw nsw i64 %201 to i32, !dbg !2672
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %202, i32 noundef 1, ptr noundef nonnull %mvp.i478.i) #7, !dbg !2672
  %arrayidx2.i481.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %201, !dbg !2673
  %203 = load i32, ptr %arrayidx2.i481.i, align 4, !dbg !2673
  %idxprom3.i482.i = sext i32 %203 to i64, !dbg !2674
  %arrayidx4.i483.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i482.i, !dbg !2674
  %204 = load i16, ptr %arrayidx4.i483.i, align 4, !dbg !2674
  %conv.i484.i = sext i16 %204 to i32, !dbg !2674
  %205 = load i16, ptr %mvp.i478.i, align 4, !dbg !2675
  %conv7.i485.i = sext i16 %205 to i32, !dbg !2675
  %sub.i486.i = sub nsw i32 %conv.i484.i, %conv7.i485.i, !dbg !2676
    #dbg_value(i32 %sub.i486.i, !2345, !DIExpression(), !2669)
  %arrayidx17.i487.i = getelementptr inbounds i8, ptr %arrayidx4.i483.i, i64 2, !dbg !2677
  %206 = load i16, ptr %arrayidx17.i487.i, align 2, !dbg !2677
  %conv18.i488.i = sext i16 %206 to i32, !dbg !2677
  %207 = load i16, ptr %arrayidx19.i489.i, align 2, !dbg !2678
  %conv20.i490.i = sext i16 %207 to i32, !dbg !2678
  %sub21.i491.i = sub nsw i32 %conv18.i488.i, %conv20.i490.i, !dbg !2679
    #dbg_value(i32 %sub21.i491.i, !2346, !DIExpression(), !2669)
  %sub28.i493.i = add nsw i32 %203, -1, !dbg !2680
  %idxprom29.i494.i = sext i32 %sub28.i493.i to i64, !dbg !2681
  %arrayidx30.i495.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i494.i, !dbg !2681
  %sub39.i496.i = add nsw i32 %203, -8, !dbg !2682
  %idxprom40.i497.i = sext i32 %sub39.i496.i to i64, !dbg !2683
  %arrayidx41.i498.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i497.i, !dbg !2683
  %arrayidx30.val.i499.i = load i8, ptr %arrayidx30.i495.i, align 1, !dbg !2684
  %208 = getelementptr i8, ptr %arrayidx30.i495.i, i64 1, !dbg !2684
  %arrayidx30.val71.i500.i = load i8, ptr %208, align 1, !dbg !2684
  %arrayidx41.val.i501.i = load i8, ptr %arrayidx41.i498.i, align 1, !dbg !2684
  %209 = getelementptr i8, ptr %arrayidx41.i498.i, i64 1, !dbg !2684
  %arrayidx41.val72.i502.i = load i8, ptr %209, align 1, !dbg !2684
    #dbg_value(ptr undef, !2364, !DIExpression(), !2685)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2685)
  %conv.i.i503.i = zext i8 %arrayidx30.val.i499.i to i32, !dbg !2687
  %conv2.i.i504.i = zext i8 %arrayidx41.val.i501.i to i32, !dbg !2688
  %add.i.i505.i = add nuw nsw i32 %conv2.i.i504.i, %conv.i.i503.i, !dbg !2689
    #dbg_value(i32 %add.i.i505.i, !2370, !DIExpression(), !2685)
  %conv4.i.i506.i = zext i8 %arrayidx30.val71.i500.i to i32, !dbg !2690
  %conv6.i.i507.i = zext i8 %arrayidx41.val72.i502.i to i32, !dbg !2691
  %add7.i.i508.i = add nuw nsw i32 %conv6.i.i507.i, %conv4.i.i506.i, !dbg !2692
    #dbg_value(i32 %add7.i.i508.i, !2371, !DIExpression(), !2685)
  %cmp.i.i509.i = icmp ugt i32 %add.i.i505.i, 2, !dbg !2693
  %conv8.i.i510.i = zext i1 %cmp.i.i509.i to i32, !dbg !2693
  %cmp9.i.i511.i = icmp ugt i32 %add.i.i505.i, 32, !dbg !2694
  %conv10.i.i512.i = zext i1 %cmp9.i.i511.i to i32, !dbg !2694
  %add11.i.i513.i = add nuw nsw i32 %conv8.i.i510.i, %conv10.i.i512.i, !dbg !2695
    #dbg_value(!DIArgList(i1 %cmp.i.i509.i, i1 %cmp9.i.i511.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2685)
  %cmp12.i.i514.i = icmp ugt i32 %add7.i.i508.i, 2, !dbg !2696
  %conv13.i.i515.i = zext i1 %cmp12.i.i514.i to i32, !dbg !2696
  %cmp14.i.i516.i = icmp ugt i32 %add7.i.i508.i, 32, !dbg !2697
  %conv15.i.i517.i = zext i1 %cmp14.i.i516.i to i32, !dbg !2697
  %add16.i.i518.i = add nuw nsw i32 %conv13.i.i515.i, %conv15.i.i517.i, !dbg !2698
    #dbg_value(!DIArgList(i1 %cmp12.i.i514.i, i1 %cmp14.i.i516.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2685)
    #dbg_value(!DIArgList(i32 %add16.i.i518.i, i32 %add11.i.i513.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2669)
  %call44.i519.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i486.i, i32 noundef %add11.i.i513.i), !dbg !2699
    #dbg_value(i32 %call44.i519.i, !2345, !DIExpression(), !2669)
  %call46.i520.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i491.i, i32 noundef %add16.i.i518.i), !dbg !2700
    #dbg_value(i32 %call46.i520.i, !2346, !DIExpression(), !2669)
    #dbg_value(i32 %call44.i519.i, !2388, !DIExpression(), !2701)
    #dbg_value(i32 %call46.i520.i, !2393, !DIExpression(), !2701)
  %shl.i73.i521.i = shl nuw nsw i32 %call46.i520.i, 8, !dbg !2703
  %add.i74.i522.i = add nuw nsw i32 %shl.i73.i521.i, %call44.i519.i, !dbg !2704
  %conv48.i523.i = trunc i32 %add.i74.i522.i to i16, !dbg !2705
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i478.i) #7, !dbg !2706
    #dbg_value(i16 %conv48.i523.i, !2323, !DIExpression(), !2707)
  %arrayidx99.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %201, !dbg !2668
  %210 = load i8, ptr %arrayidx99.i, align 1, !dbg !2668
  %conv100.i = zext i8 %210 to i64, !dbg !2668
  %arrayidx104.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %201, !dbg !2668
  %211 = load i8, ptr %arrayidx104.i, align 1, !dbg !2668
  %conv105.i = zext i8 %211 to i64, !dbg !2668
    #dbg_value(ptr %h, !2046, !DIExpression(), !2708)
    #dbg_value(i8 %210, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2708)
    #dbg_value(i8 %211, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2708)
    #dbg_value(i32 1, !2054, !DIExpression(), !2708)
    #dbg_value(i32 1, !2055, !DIExpression(), !2708)
    #dbg_value(i32 0, !2056, !DIExpression(), !2708)
    #dbg_value(i16 %conv48.i523.i, !2057, !DIExpression(), !2708)
  %add.i525.i = add nuw nsw i64 %conv100.i, 12, !dbg !2710
  %mul.i526.i = shl nuw nsw i64 %conv105.i, 3, !dbg !2711
  %add2.i527.i = add nuw nsw i64 %add.i525.i, %mul.i526.i, !dbg !2712
  %arrayidx4.i529.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i527.i, !dbg !2713
    #dbg_value(ptr %arrayidx4.i529.i, !2058, !DIExpression(), !2708)
    #dbg_value(ptr %arrayidx4.i529.i, !2064, !DIExpression(), !2714)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2714)
    #dbg_value(i32 1, !2070, !DIExpression(), !2714)
    #dbg_value(i16 %conv48.i523.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2714)
    #dbg_value(ptr %arrayidx4.i529.i, !2073, !DIExpression(), !2714)
    #dbg_value(i16 %conv48.i523.i, !2074, !DIExpression(), !2714)
    #dbg_value(i16 %conv48.i523.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2714)
    #dbg_value(i16 %conv48.i523.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2714)
    #dbg_value(i32 16, !2071, !DIExpression(), !2714)
  store i16 %conv48.i523.i, ptr %arrayidx4.i529.i, align 2, !dbg !2716
  %212 = or disjoint i64 %190, 2, !dbg !2717
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1715, ptr %mvp.i534.i, !DIExpression(), !2718)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2718)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2718)
    #dbg_value(i32 0, !2342, !DIExpression(), !2718)
    #dbg_value(i64 %212, !2343, !DIExpression(), !2718)
    #dbg_value(i32 1, !2344, !DIExpression(), !2718)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i534.i) #7, !dbg !2720
  %213 = trunc nuw nsw i64 %212 to i32, !dbg !2721
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %213, i32 noundef 1, ptr noundef nonnull %mvp.i534.i) #7, !dbg !2721
  %arrayidx2.i537.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %212, !dbg !2722
  %214 = load i32, ptr %arrayidx2.i537.i, align 8, !dbg !2722
  %idxprom3.i538.i = sext i32 %214 to i64, !dbg !2723
  %arrayidx4.i539.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i538.i, !dbg !2723
  %215 = load i16, ptr %arrayidx4.i539.i, align 4, !dbg !2723
  %conv.i540.i = sext i16 %215 to i32, !dbg !2723
  %216 = load i16, ptr %mvp.i534.i, align 4, !dbg !2724
  %conv7.i541.i = sext i16 %216 to i32, !dbg !2724
  %sub.i542.i = sub nsw i32 %conv.i540.i, %conv7.i541.i, !dbg !2725
    #dbg_value(i32 %sub.i542.i, !2345, !DIExpression(), !2718)
  %arrayidx17.i543.i = getelementptr inbounds i8, ptr %arrayidx4.i539.i, i64 2, !dbg !2726
  %217 = load i16, ptr %arrayidx17.i543.i, align 2, !dbg !2726
  %conv18.i544.i = sext i16 %217 to i32, !dbg !2726
  %218 = load i16, ptr %arrayidx19.i545.i, align 2, !dbg !2727
  %conv20.i546.i = sext i16 %218 to i32, !dbg !2727
  %sub21.i547.i = sub nsw i32 %conv18.i544.i, %conv20.i546.i, !dbg !2728
    #dbg_value(i32 %sub21.i547.i, !2346, !DIExpression(), !2718)
  %sub28.i549.i = add nsw i32 %214, -1, !dbg !2729
  %idxprom29.i550.i = sext i32 %sub28.i549.i to i64, !dbg !2730
  %arrayidx30.i551.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i550.i, !dbg !2730
  %sub39.i552.i = add nsw i32 %214, -8, !dbg !2731
  %idxprom40.i553.i = sext i32 %sub39.i552.i to i64, !dbg !2732
  %arrayidx41.i554.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i553.i, !dbg !2732
  %arrayidx30.val.i555.i = load i8, ptr %arrayidx30.i551.i, align 1, !dbg !2733
  %219 = getelementptr i8, ptr %arrayidx30.i551.i, i64 1, !dbg !2733
  %arrayidx30.val71.i556.i = load i8, ptr %219, align 1, !dbg !2733
  %arrayidx41.val.i557.i = load i8, ptr %arrayidx41.i554.i, align 1, !dbg !2733
  %220 = getelementptr i8, ptr %arrayidx41.i554.i, i64 1, !dbg !2733
  %arrayidx41.val72.i558.i = load i8, ptr %220, align 1, !dbg !2733
    #dbg_value(ptr undef, !2364, !DIExpression(), !2734)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2734)
  %conv.i.i559.i = zext i8 %arrayidx30.val.i555.i to i32, !dbg !2736
  %conv2.i.i560.i = zext i8 %arrayidx41.val.i557.i to i32, !dbg !2737
  %add.i.i561.i = add nuw nsw i32 %conv2.i.i560.i, %conv.i.i559.i, !dbg !2738
    #dbg_value(i32 %add.i.i561.i, !2370, !DIExpression(), !2734)
  %conv4.i.i562.i = zext i8 %arrayidx30.val71.i556.i to i32, !dbg !2739
  %conv6.i.i563.i = zext i8 %arrayidx41.val72.i558.i to i32, !dbg !2740
  %add7.i.i564.i = add nuw nsw i32 %conv6.i.i563.i, %conv4.i.i562.i, !dbg !2741
    #dbg_value(i32 %add7.i.i564.i, !2371, !DIExpression(), !2734)
  %cmp.i.i565.i = icmp ugt i32 %add.i.i561.i, 2, !dbg !2742
  %conv8.i.i566.i = zext i1 %cmp.i.i565.i to i32, !dbg !2742
  %cmp9.i.i567.i = icmp ugt i32 %add.i.i561.i, 32, !dbg !2743
  %conv10.i.i568.i = zext i1 %cmp9.i.i567.i to i32, !dbg !2743
  %add11.i.i569.i = add nuw nsw i32 %conv8.i.i566.i, %conv10.i.i568.i, !dbg !2744
    #dbg_value(!DIArgList(i1 %cmp.i.i565.i, i1 %cmp9.i.i567.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2734)
  %cmp12.i.i570.i = icmp ugt i32 %add7.i.i564.i, 2, !dbg !2745
  %conv13.i.i571.i = zext i1 %cmp12.i.i570.i to i32, !dbg !2745
  %cmp14.i.i572.i = icmp ugt i32 %add7.i.i564.i, 32, !dbg !2746
  %conv15.i.i573.i = zext i1 %cmp14.i.i572.i to i32, !dbg !2746
  %add16.i.i574.i = add nuw nsw i32 %conv13.i.i571.i, %conv15.i.i573.i, !dbg !2747
    #dbg_value(!DIArgList(i1 %cmp12.i.i570.i, i1 %cmp14.i.i572.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2734)
    #dbg_value(!DIArgList(i32 %add16.i.i574.i, i32 %add11.i.i569.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2718)
  %call44.i575.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i542.i, i32 noundef %add11.i.i569.i), !dbg !2748
    #dbg_value(i32 %call44.i575.i, !2345, !DIExpression(), !2718)
  %call46.i576.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i547.i, i32 noundef %add16.i.i574.i), !dbg !2749
    #dbg_value(i32 %call46.i576.i, !2346, !DIExpression(), !2718)
    #dbg_value(i32 %call44.i575.i, !2388, !DIExpression(), !2750)
    #dbg_value(i32 %call46.i576.i, !2393, !DIExpression(), !2750)
  %shl.i73.i577.i = shl nuw nsw i32 %call46.i576.i, 8, !dbg !2752
  %add.i74.i578.i = add nuw nsw i32 %shl.i73.i577.i, %call44.i575.i, !dbg !2753
  %conv48.i579.i = trunc i32 %add.i74.i578.i to i16, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i534.i) #7, !dbg !2755
    #dbg_value(i16 %conv48.i579.i, !2325, !DIExpression(), !2756)
  %arrayidx115.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %212, !dbg !2717
  %221 = load i8, ptr %arrayidx115.i, align 2, !dbg !2717
  %conv116.i = zext i8 %221 to i64, !dbg !2717
  %arrayidx120.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %212, !dbg !2717
  %222 = load i8, ptr %arrayidx120.i, align 2, !dbg !2717
  %conv121.i = zext i8 %222 to i64, !dbg !2717
    #dbg_value(ptr %h, !2046, !DIExpression(), !2757)
    #dbg_value(i8 %221, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2757)
    #dbg_value(i8 %222, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2757)
    #dbg_value(i32 1, !2054, !DIExpression(), !2757)
    #dbg_value(i32 1, !2055, !DIExpression(), !2757)
    #dbg_value(i32 0, !2056, !DIExpression(), !2757)
    #dbg_value(i16 %conv48.i579.i, !2057, !DIExpression(), !2757)
  %add.i581.i = add nuw nsw i64 %conv116.i, 12, !dbg !2759
  %mul.i582.i = shl nuw nsw i64 %conv121.i, 3, !dbg !2760
  %add2.i583.i = add nuw nsw i64 %add.i581.i, %mul.i582.i, !dbg !2761
  %arrayidx4.i585.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i583.i, !dbg !2762
    #dbg_value(ptr %arrayidx4.i585.i, !2058, !DIExpression(), !2757)
    #dbg_value(ptr %arrayidx4.i585.i, !2064, !DIExpression(), !2763)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2763)
    #dbg_value(i32 1, !2070, !DIExpression(), !2763)
    #dbg_value(i16 %conv48.i579.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2763)
    #dbg_value(ptr %arrayidx4.i585.i, !2073, !DIExpression(), !2763)
    #dbg_value(i16 %conv48.i579.i, !2074, !DIExpression(), !2763)
    #dbg_value(i16 %conv48.i579.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2763)
    #dbg_value(i16 %conv48.i579.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2763)
    #dbg_value(i32 16, !2071, !DIExpression(), !2763)
  store i16 %conv48.i579.i, ptr %arrayidx4.i585.i, align 2, !dbg !2765
  %223 = or disjoint i64 %190, 3, !dbg !2766
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1714, ptr %mvp.i590.i, !DIExpression(), !2767)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2767)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2767)
    #dbg_value(i32 0, !2342, !DIExpression(), !2767)
    #dbg_value(i64 %223, !2343, !DIExpression(), !2767)
    #dbg_value(i32 1, !2344, !DIExpression(), !2767)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i590.i) #7, !dbg !2769
  %224 = trunc nuw nsw i64 %223 to i32, !dbg !2770
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %224, i32 noundef 1, ptr noundef nonnull %mvp.i590.i) #7, !dbg !2770
  %arrayidx2.i593.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %223, !dbg !2771
  %225 = load i32, ptr %arrayidx2.i593.i, align 4, !dbg !2771
  %idxprom3.i594.i = sext i32 %225 to i64, !dbg !2772
  %arrayidx4.i595.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i594.i, !dbg !2772
  %226 = load i16, ptr %arrayidx4.i595.i, align 4, !dbg !2772
  %conv.i596.i = sext i16 %226 to i32, !dbg !2772
  %227 = load i16, ptr %mvp.i590.i, align 4, !dbg !2773
  %conv7.i597.i = sext i16 %227 to i32, !dbg !2773
  %sub.i598.i = sub nsw i32 %conv.i596.i, %conv7.i597.i, !dbg !2774
    #dbg_value(i32 %sub.i598.i, !2345, !DIExpression(), !2767)
  %arrayidx17.i599.i = getelementptr inbounds i8, ptr %arrayidx4.i595.i, i64 2, !dbg !2775
  %228 = load i16, ptr %arrayidx17.i599.i, align 2, !dbg !2775
  %conv18.i600.i = sext i16 %228 to i32, !dbg !2775
  %229 = load i16, ptr %arrayidx19.i601.i, align 2, !dbg !2776
  %conv20.i602.i = sext i16 %229 to i32, !dbg !2776
  %sub21.i603.i = sub nsw i32 %conv18.i600.i, %conv20.i602.i, !dbg !2777
    #dbg_value(i32 %sub21.i603.i, !2346, !DIExpression(), !2767)
  %sub28.i605.i = add nsw i32 %225, -1, !dbg !2778
  %idxprom29.i606.i = sext i32 %sub28.i605.i to i64, !dbg !2779
  %arrayidx30.i607.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i606.i, !dbg !2779
  %sub39.i608.i = add nsw i32 %225, -8, !dbg !2780
  %idxprom40.i609.i = sext i32 %sub39.i608.i to i64, !dbg !2781
  %arrayidx41.i610.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i609.i, !dbg !2781
  %arrayidx30.val.i611.i = load i8, ptr %arrayidx30.i607.i, align 1, !dbg !2782
  %230 = getelementptr i8, ptr %arrayidx30.i607.i, i64 1, !dbg !2782
  %arrayidx30.val71.i612.i = load i8, ptr %230, align 1, !dbg !2782
  %arrayidx41.val.i613.i = load i8, ptr %arrayidx41.i610.i, align 1, !dbg !2782
  %231 = getelementptr i8, ptr %arrayidx41.i610.i, i64 1, !dbg !2782
  %arrayidx41.val72.i614.i = load i8, ptr %231, align 1, !dbg !2782
    #dbg_value(ptr undef, !2364, !DIExpression(), !2783)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2783)
  %conv.i.i615.i = zext i8 %arrayidx30.val.i611.i to i32, !dbg !2785
  %conv2.i.i616.i = zext i8 %arrayidx41.val.i613.i to i32, !dbg !2786
  %add.i.i617.i = add nuw nsw i32 %conv2.i.i616.i, %conv.i.i615.i, !dbg !2787
    #dbg_value(i32 %add.i.i617.i, !2370, !DIExpression(), !2783)
  %conv4.i.i618.i = zext i8 %arrayidx30.val71.i612.i to i32, !dbg !2788
  %conv6.i.i619.i = zext i8 %arrayidx41.val72.i614.i to i32, !dbg !2789
  %add7.i.i620.i = add nuw nsw i32 %conv6.i.i619.i, %conv4.i.i618.i, !dbg !2790
    #dbg_value(i32 %add7.i.i620.i, !2371, !DIExpression(), !2783)
  %cmp.i.i621.i = icmp ugt i32 %add.i.i617.i, 2, !dbg !2791
  %conv8.i.i622.i = zext i1 %cmp.i.i621.i to i32, !dbg !2791
  %cmp9.i.i623.i = icmp ugt i32 %add.i.i617.i, 32, !dbg !2792
  %conv10.i.i624.i = zext i1 %cmp9.i.i623.i to i32, !dbg !2792
  %add11.i.i625.i = add nuw nsw i32 %conv8.i.i622.i, %conv10.i.i624.i, !dbg !2793
    #dbg_value(!DIArgList(i1 %cmp.i.i621.i, i1 %cmp9.i.i623.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2783)
  %cmp12.i.i626.i = icmp ugt i32 %add7.i.i620.i, 2, !dbg !2794
  %conv13.i.i627.i = zext i1 %cmp12.i.i626.i to i32, !dbg !2794
  %cmp14.i.i628.i = icmp ugt i32 %add7.i.i620.i, 32, !dbg !2795
  %conv15.i.i629.i = zext i1 %cmp14.i.i628.i to i32, !dbg !2795
  %add16.i.i630.i = add nuw nsw i32 %conv13.i.i627.i, %conv15.i.i629.i, !dbg !2796
    #dbg_value(!DIArgList(i1 %cmp12.i.i626.i, i1 %cmp14.i.i628.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2783)
    #dbg_value(!DIArgList(i32 %add16.i.i630.i, i32 %add11.i.i625.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2767)
  %call44.i631.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i598.i, i32 noundef %add11.i.i625.i), !dbg !2797
    #dbg_value(i32 %call44.i631.i, !2345, !DIExpression(), !2767)
  %call46.i632.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i603.i, i32 noundef %add16.i.i630.i), !dbg !2798
    #dbg_value(i32 %call46.i632.i, !2346, !DIExpression(), !2767)
    #dbg_value(i32 %call44.i631.i, !2388, !DIExpression(), !2799)
    #dbg_value(i32 %call46.i632.i, !2393, !DIExpression(), !2799)
  %shl.i73.i633.i = shl nuw nsw i32 %call46.i632.i, 8, !dbg !2801
  %add.i74.i634.i = add nuw nsw i32 %shl.i73.i633.i, %call44.i631.i, !dbg !2802
  %conv48.i635.i = trunc i32 %add.i74.i634.i to i16, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i590.i) #7, !dbg !2804
    #dbg_value(i16 %conv48.i635.i, !2327, !DIExpression(), !2805)
  %arrayidx131.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %223, !dbg !2766
  %232 = load i8, ptr %arrayidx131.i, align 1, !dbg !2766
  %conv132.i = zext i8 %232 to i64, !dbg !2766
  %arrayidx136.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %223, !dbg !2766
  %233 = load i8, ptr %arrayidx136.i, align 1, !dbg !2766
  %conv137.i = zext i8 %233 to i64, !dbg !2766
    #dbg_value(ptr %h, !2046, !DIExpression(), !2806)
    #dbg_value(i8 %232, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2806)
    #dbg_value(i8 %233, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2806)
    #dbg_value(i32 1, !2054, !DIExpression(), !2806)
    #dbg_value(i32 1, !2055, !DIExpression(), !2806)
    #dbg_value(i32 0, !2056, !DIExpression(), !2806)
    #dbg_value(i16 %conv48.i635.i, !2057, !DIExpression(), !2806)
  %add.i637.i = add nuw nsw i64 %conv132.i, 12, !dbg !2808
  %mul.i638.i = shl nuw nsw i64 %conv137.i, 3, !dbg !2809
  %add2.i639.i = add nuw nsw i64 %add.i637.i, %mul.i638.i, !dbg !2810
  %arrayidx4.i641.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i639.i, !dbg !2811
    #dbg_value(ptr %arrayidx4.i641.i, !2058, !DIExpression(), !2806)
    #dbg_value(ptr %arrayidx4.i641.i, !2064, !DIExpression(), !2812)
    #dbg_value(i32 1, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2812)
    #dbg_value(i32 1, !2070, !DIExpression(), !2812)
    #dbg_value(i16 %conv48.i635.i, !2072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2812)
    #dbg_value(ptr %arrayidx4.i641.i, !2073, !DIExpression(), !2812)
    #dbg_value(i16 %conv48.i635.i, !2074, !DIExpression(), !2812)
    #dbg_value(i16 %conv48.i635.i, !2075, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_stack_value), !2812)
    #dbg_value(i16 %conv48.i635.i, !2076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 65537, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2812)
    #dbg_value(i32 16, !2071, !DIExpression(), !2812)
  store i16 %conv48.i635.i, ptr %arrayidx4.i641.i, align 2, !dbg !2814
  br label %x264_cabac_mb8x8_mvd.exit, !dbg !2815

x264_cabac_mb8x8_mvd.exit:                        ; preds = %for.body174, %do.body.i, %do.body10.i, %do.body42.i, %do.body75.i
  %indvars.iv.next1811 = add nuw nsw i64 %indvars.iv1810, 1, !dbg !2816
    #dbg_value(i64 %indvars.iv.next1811, !1619, !DIExpression(), !2301)
  %exitcond.not = icmp eq i64 %indvars.iv.next1811, 4, !dbg !2817
  br i1 %exitcond.not, label %if.end467, label %for.body174, !dbg !2302, !llvm.loop !2818

for.cond204.preheader:                            ; preds = %x264_cabac_mb_sub_b_partition.exit.3
    #dbg_value(i64 0, !1625, !DIExpression(), !2820)
  %idxprom213 = zext i8 %.pre1841.pre1845 to i64, !dbg !2821
  %arrayidx214 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213, !dbg !2821
  %234 = load i8, ptr %arrayidx214, align 1, !dbg !2821
  %tobool215.not = icmp eq i8 %234, 0, !dbg !2821
  br i1 %tobool215.not, label %for.inc219, label %if.then216, !dbg !2824

if.then.i1193:                                    ; preds = %for.cond183.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7, !dbg !2825
  br label %x264_cabac_mb_sub_b_partition.exit, !dbg !2827

if.end.i1189:                                     ; preds = %for.cond183.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7, !dbg !2828
  %cmp1.i1190 = icmp eq i8 %106, 11, !dbg !2829
  br i1 %cmp1.i1190, label %if.then2.i1192, label %if.end3.i, !dbg !2831

if.then2.i1192:                                   ; preds = %if.end.i1189
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7, !dbg !2832
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7, !dbg !2834
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2835
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2836
  br label %x264_cabac_mb_sub_b_partition.exit, !dbg !2837

if.end3.i:                                        ; preds = %if.end.i1189
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7, !dbg !2838
  %cmp4.i = icmp eq i8 %106, 7, !dbg !2839
  %conv.i1191 = zext i1 %cmp4.i to i32, !dbg !2839
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191) #7, !dbg !2840
  br label %x264_cabac_mb_sub_b_partition.exit, !dbg !2841

x264_cabac_mb_sub_b_partition.exit:               ; preds = %if.then.i1193, %if.then2.i1192, %if.end3.i
    #dbg_value(i64 1, !1621, !DIExpression(), !2010)
  %arrayidx191.1 = getelementptr inbounds i8, ptr %h, i64 17393, !dbg !2011
  %235 = load i8, ptr %arrayidx191.1, align 1, !dbg !2011
    #dbg_value(ptr %cb, !2013, !DIExpression(), !2019)
    #dbg_value(i8 %235, !2018, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2019)
  %cmp.i1188.1 = icmp eq i8 %235, 12, !dbg !2021
  br i1 %cmp.i1188.1, label %if.then.i1193.1, label %if.end.i1189.1, !dbg !2023

if.end.i1189.1:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7, !dbg !2828
  %cmp1.i1190.1 = icmp eq i8 %235, 11, !dbg !2829
  br i1 %cmp1.i1190.1, label %if.then2.i1192.1, label %if.end3.i.1, !dbg !2831

if.end3.i.1:                                      ; preds = %if.end.i1189.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7, !dbg !2838
  %cmp4.i.1 = icmp eq i8 %235, 7, !dbg !2839
  %conv.i1191.1 = zext i1 %cmp4.i.1 to i32, !dbg !2839
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.1) #7, !dbg !2840
  br label %x264_cabac_mb_sub_b_partition.exit.1, !dbg !2841

if.then2.i1192.1:                                 ; preds = %if.end.i1189.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7, !dbg !2832
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7, !dbg !2834
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2835
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2836
  br label %x264_cabac_mb_sub_b_partition.exit.1, !dbg !2837

if.then.i1193.1:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7, !dbg !2825
  br label %x264_cabac_mb_sub_b_partition.exit.1, !dbg !2827

x264_cabac_mb_sub_b_partition.exit.1:             ; preds = %if.then.i1193.1, %if.then2.i1192.1, %if.end3.i.1
    #dbg_value(i64 2, !1621, !DIExpression(), !2010)
  %arrayidx191.2 = getelementptr inbounds i8, ptr %h, i64 17394, !dbg !2011
  %236 = load i8, ptr %arrayidx191.2, align 1, !dbg !2011
    #dbg_value(ptr %cb, !2013, !DIExpression(), !2019)
    #dbg_value(i8 %236, !2018, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2019)
  %cmp.i1188.2 = icmp eq i8 %236, 12, !dbg !2021
  br i1 %cmp.i1188.2, label %if.then.i1193.2, label %if.end.i1189.2, !dbg !2023

if.end.i1189.2:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7, !dbg !2828
  %cmp1.i1190.2 = icmp eq i8 %236, 11, !dbg !2829
  br i1 %cmp1.i1190.2, label %if.then2.i1192.2, label %if.end3.i.2, !dbg !2831

if.end3.i.2:                                      ; preds = %if.end.i1189.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7, !dbg !2838
  %cmp4.i.2 = icmp eq i8 %236, 7, !dbg !2839
  %conv.i1191.2 = zext i1 %cmp4.i.2 to i32, !dbg !2839
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.2) #7, !dbg !2840
  br label %x264_cabac_mb_sub_b_partition.exit.2, !dbg !2841

if.then2.i1192.2:                                 ; preds = %if.end.i1189.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7, !dbg !2832
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7, !dbg !2834
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2835
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2836
  br label %x264_cabac_mb_sub_b_partition.exit.2, !dbg !2837

if.then.i1193.2:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7, !dbg !2825
  br label %x264_cabac_mb_sub_b_partition.exit.2, !dbg !2827

x264_cabac_mb_sub_b_partition.exit.2:             ; preds = %if.then.i1193.2, %if.then2.i1192.2, %if.end3.i.2
    #dbg_value(i64 3, !1621, !DIExpression(), !2010)
  %arrayidx191.3 = getelementptr inbounds i8, ptr %h, i64 17395, !dbg !2011
  %237 = load i8, ptr %arrayidx191.3, align 1, !dbg !2011
    #dbg_value(ptr %cb, !2013, !DIExpression(), !2019)
    #dbg_value(i8 %237, !2018, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2019)
  %cmp.i1188.3 = icmp eq i8 %237, 12, !dbg !2021
  br i1 %cmp.i1188.3, label %if.then.i1193.3, label %if.end.i1189.3, !dbg !2023

if.end.i1189.3:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7, !dbg !2828
  %cmp1.i1190.3 = icmp eq i8 %237, 11, !dbg !2829
  br i1 %cmp1.i1190.3, label %if.then2.i1192.3, label %if.end3.i.3, !dbg !2831

if.end3.i.3:                                      ; preds = %if.end.i1189.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7, !dbg !2838
  %cmp4.i.3 = icmp eq i8 %237, 7, !dbg !2839
  %conv.i1191.3 = zext i1 %cmp4.i.3 to i32, !dbg !2839
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.3) #7, !dbg !2840
  br label %x264_cabac_mb_sub_b_partition.exit.3, !dbg !2841

if.then2.i1192.3:                                 ; preds = %if.end.i1189.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7, !dbg !2832
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7, !dbg !2834
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2835
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7, !dbg !2836
  br label %x264_cabac_mb_sub_b_partition.exit.3, !dbg !2837

if.then.i1193.3:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7, !dbg !2825
  br label %x264_cabac_mb_sub_b_partition.exit.3, !dbg !2827

x264_cabac_mb_sub_b_partition.exit.3:             ; preds = %if.then.i1193.3, %if.then2.i1192.3, %if.end3.i.3
    #dbg_value(i64 4, !1621, !DIExpression(), !2010)
  %i_fref198 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2842
  %238 = load i32, ptr %i_fref198, align 8, !dbg !2843
  %cmp200 = icmp sgt i32 %238, 1, !dbg !2844
  %.pre1841.pre1845 = load i8, ptr %i_sub_partition189, align 1, !dbg !2845
  br i1 %cmp200, label %for.cond204.preheader, label %if.end222, !dbg !2846

if.then216:                                       ; preds = %for.cond204.preheader
    #dbg_value(ptr %h, !2181, !DIExpression(), !2847)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2847)
    #dbg_value(i32 0, !2187, !DIExpression(), !2847)
    #dbg_value(i64 0, !2188, !DIExpression(), !2847)
    #dbg_value(i32 12, !2189, !DIExpression(), !2847)
  %arrayidx4.i1198 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !2849
  %239 = load i8, ptr %arrayidx4.i1198, align 1, !dbg !2849
    #dbg_value(i8 %239, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
  %arrayidx12.i1199 = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !2850
  %240 = load i8, ptr %arrayidx12.i1199, align 1, !dbg !2850
    #dbg_value(i8 %240, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
    #dbg_value(i32 0, !2192, !DIExpression(), !2847)
  %cmp.i1200 = icmp sgt i8 %239, 0, !dbg !2851
  br i1 %cmp.i1200, label %land.lhs.true.i1226, label %if.end.i1201, !dbg !2852

land.lhs.true.i1226:                              ; preds = %if.then216
  %arrayidx19.i1228 = getelementptr inbounds i8, ptr %h, i64 25691, !dbg !2853
  %241 = load i8, ptr %arrayidx19.i1228, align 1, !dbg !2853
  %tobool.not.i1229 = icmp eq i8 %241, 0, !dbg !2853
  %spec.select.i1230 = zext i1 %tobool.not.i1229 to i32, !dbg !2854
  br label %if.end.i1201, !dbg !2854

if.end.i1201:                                     ; preds = %land.lhs.true.i1226, %if.then216
  %ctx.0.i1202 = phi i32 [ 0, %if.then216 ], [ %spec.select.i1230, %land.lhs.true.i1226 ], !dbg !2847
    #dbg_value(i32 %ctx.0.i1202, !2192, !DIExpression(), !2847)
  %cmp20.i1203 = icmp sgt i8 %240, 0, !dbg !2855
  br i1 %cmp20.i1203, label %land.lhs.true22.i1220, label %if.end31.i1204, !dbg !2856

land.lhs.true22.i1220:                            ; preds = %if.end.i1201
  %arrayidx28.i1222 = getelementptr inbounds i8, ptr %h, i64 25684, !dbg !2857
  %242 = load i8, ptr %arrayidx28.i1222, align 1, !dbg !2857
  %tobool29.not.i1223 = icmp eq i8 %242, 0, !dbg !2857
  %add.i1224 = or disjoint i32 %ctx.0.i1202, 2
  %spec.select61.i1225 = select i1 %tobool29.not.i1223, i32 %add.i1224, i32 %ctx.0.i1202, !dbg !2858
  br label %if.end31.i1204, !dbg !2858

if.end31.i1204:                                   ; preds = %land.lhs.true22.i1220, %if.end.i1201
  %ctx.1.i1205 = phi i32 [ %ctx.0.i1202, %if.end.i1201 ], [ %spec.select61.i1225, %land.lhs.true22.i1220 ], !dbg !2847
    #dbg_value(i32 %ctx.1.i1205, !2192, !DIExpression(), !2847)
  %arrayidx38.i1206 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2859
  %243 = load i8, ptr %arrayidx38.i1206, align 1, !dbg !2859
    #dbg_value(i8 %243, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2860)
  %cmp4062.i1207 = icmp sgt i8 %243, 0, !dbg !2861
  br i1 %cmp4062.i1207, label %for.body.preheader.i1210, label %x264_cabac_mb_ref.exit1231, !dbg !2862

for.body.preheader.i1210:                         ; preds = %if.end31.i1204
  %conv39.i1211 = zext nneg i8 %243 to i32, !dbg !2859
    #dbg_value(i32 %conv39.i1211, !2193, !DIExpression(), !2860)
  br label %for.body.i1212, !dbg !2862

for.body.i1212:                                   ; preds = %for.body.i1212, %for.body.preheader.i1210
  %i_ref.064.i1213 = phi i32 [ %dec.i1218, %for.body.i1212 ], [ %conv39.i1211, %for.body.preheader.i1210 ]
  %ctx.263.i1214 = phi i32 [ %add43.i1217, %for.body.i1212 ], [ %ctx.1.i1205, %for.body.preheader.i1210 ]
    #dbg_value(i32 %i_ref.064.i1213, !2193, !DIExpression(), !2860)
    #dbg_value(i32 %ctx.263.i1214, !2192, !DIExpression(), !2847)
  %add42.i1215 = add nuw nsw i32 %ctx.263.i1214, 54, !dbg !2863
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215, i32 noundef 1) #7, !dbg !2864
  %shr.i1216 = lshr i32 %ctx.263.i1214, 2, !dbg !2865
  %add43.i1217 = add nuw nsw i32 %shr.i1216, 4, !dbg !2866
    #dbg_value(i32 %add43.i1217, !2192, !DIExpression(), !2847)
  %dec.i1218 = add nsw i32 %i_ref.064.i1213, -1, !dbg !2867
    #dbg_value(i32 %dec.i1218, !2193, !DIExpression(), !2860)
  %cmp40.i1219 = icmp ugt i32 %i_ref.064.i1213, 1, !dbg !2861
  br i1 %cmp40.i1219, label %for.body.i1212, label %x264_cabac_mb_ref.exit1231, !dbg !2862, !llvm.loop !2868

x264_cabac_mb_ref.exit1231:                       ; preds = %for.body.i1212, %if.end31.i1204
  %ctx.2.lcssa.i1208 = phi i32 [ %ctx.1.i1205, %if.end31.i1204 ], [ %add43.i1217, %for.body.i1212 ], !dbg !2847
  %add44.i1209 = add nuw nsw i32 %ctx.2.lcssa.i1208, 54, !dbg !2870
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209, i32 noundef 0) #7, !dbg !2871
  br label %for.inc219, !dbg !2872

for.inc219:                                       ; preds = %for.cond204.preheader, %x264_cabac_mb_ref.exit1231
    #dbg_value(i64 1, !1625, !DIExpression(), !2820)
  %244 = load i8, ptr %arrayidx191.1, align 1, !dbg !2873
  %idxprom213.1 = zext i8 %244 to i64, !dbg !2821
  %arrayidx214.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.1, !dbg !2821
  %245 = load i8, ptr %arrayidx214.1, align 1, !dbg !2821
  %tobool215.not.1 = icmp eq i8 %245, 0, !dbg !2821
  br i1 %tobool215.not.1, label %for.inc219.1, label %if.then216.1, !dbg !2824

if.then216.1:                                     ; preds = %for.inc219
    #dbg_value(ptr %h, !2181, !DIExpression(), !2847)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2847)
    #dbg_value(i32 0, !2187, !DIExpression(), !2847)
    #dbg_value(i64 4, !2188, !DIExpression(), !2847)
    #dbg_value(i32 14, !2189, !DIExpression(), !2847)
  %arrayidx4.i1198.1 = getelementptr inbounds i8, ptr %h, i64 25133, !dbg !2849
  %246 = load i8, ptr %arrayidx4.i1198.1, align 1, !dbg !2849
    #dbg_value(i8 %246, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
  %arrayidx12.i1199.1 = getelementptr inbounds i8, ptr %h, i64 25126, !dbg !2850
  %247 = load i8, ptr %arrayidx12.i1199.1, align 1, !dbg !2850
    #dbg_value(i8 %247, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
    #dbg_value(i32 0, !2192, !DIExpression(), !2847)
  %cmp.i1200.1 = icmp sgt i8 %246, 0, !dbg !2851
  br i1 %cmp.i1200.1, label %land.lhs.true.i1226.1, label %if.end.i1201.1, !dbg !2852

land.lhs.true.i1226.1:                            ; preds = %if.then216.1
  %arrayidx19.i1228.1 = getelementptr inbounds i8, ptr %h, i64 25693, !dbg !2853
  %248 = load i8, ptr %arrayidx19.i1228.1, align 1, !dbg !2853
  %tobool.not.i1229.1 = icmp eq i8 %248, 0, !dbg !2853
  %spec.select.i1230.1 = zext i1 %tobool.not.i1229.1 to i32, !dbg !2854
  br label %if.end.i1201.1, !dbg !2854

if.end.i1201.1:                                   ; preds = %land.lhs.true.i1226.1, %if.then216.1
  %ctx.0.i1202.1 = phi i32 [ 0, %if.then216.1 ], [ %spec.select.i1230.1, %land.lhs.true.i1226.1 ], !dbg !2847
    #dbg_value(i32 %ctx.0.i1202.1, !2192, !DIExpression(), !2847)
  %cmp20.i1203.1 = icmp sgt i8 %247, 0, !dbg !2855
  br i1 %cmp20.i1203.1, label %land.lhs.true22.i1220.1, label %if.end31.i1204.1, !dbg !2856

land.lhs.true22.i1220.1:                          ; preds = %if.end.i1201.1
  %arrayidx28.i1222.1 = getelementptr inbounds i8, ptr %h, i64 25686, !dbg !2857
  %249 = load i8, ptr %arrayidx28.i1222.1, align 1, !dbg !2857
  %tobool29.not.i1223.1 = icmp eq i8 %249, 0, !dbg !2857
  %add.i1224.1 = or disjoint i32 %ctx.0.i1202.1, 2
  %spec.select61.i1225.1 = select i1 %tobool29.not.i1223.1, i32 %add.i1224.1, i32 %ctx.0.i1202.1, !dbg !2858
  br label %if.end31.i1204.1, !dbg !2858

if.end31.i1204.1:                                 ; preds = %land.lhs.true22.i1220.1, %if.end.i1201.1
  %ctx.1.i1205.1 = phi i32 [ %ctx.0.i1202.1, %if.end.i1201.1 ], [ %spec.select61.i1225.1, %land.lhs.true22.i1220.1 ], !dbg !2847
    #dbg_value(i32 %ctx.1.i1205.1, !2192, !DIExpression(), !2847)
  %arrayidx38.i1206.1 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2859
  %250 = load i8, ptr %arrayidx38.i1206.1, align 1, !dbg !2859
    #dbg_value(i8 %250, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2860)
  %cmp4062.i1207.1 = icmp sgt i8 %250, 0, !dbg !2861
  br i1 %cmp4062.i1207.1, label %for.body.preheader.i1210.1, label %x264_cabac_mb_ref.exit1231.1, !dbg !2862

for.body.preheader.i1210.1:                       ; preds = %if.end31.i1204.1
  %conv39.i1211.1 = zext nneg i8 %250 to i32, !dbg !2859
    #dbg_value(i32 %conv39.i1211.1, !2193, !DIExpression(), !2860)
  br label %for.body.i1212.1, !dbg !2862

for.body.i1212.1:                                 ; preds = %for.body.i1212.1, %for.body.preheader.i1210.1
  %i_ref.064.i1213.1 = phi i32 [ %dec.i1218.1, %for.body.i1212.1 ], [ %conv39.i1211.1, %for.body.preheader.i1210.1 ]
  %ctx.263.i1214.1 = phi i32 [ %add43.i1217.1, %for.body.i1212.1 ], [ %ctx.1.i1205.1, %for.body.preheader.i1210.1 ]
    #dbg_value(i32 %i_ref.064.i1213.1, !2193, !DIExpression(), !2860)
    #dbg_value(i32 %ctx.263.i1214.1, !2192, !DIExpression(), !2847)
  %add42.i1215.1 = add nuw nsw i32 %ctx.263.i1214.1, 54, !dbg !2863
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.1, i32 noundef 1) #7, !dbg !2864
  %shr.i1216.1 = lshr i32 %ctx.263.i1214.1, 2, !dbg !2865
  %add43.i1217.1 = add nuw nsw i32 %shr.i1216.1, 4, !dbg !2866
    #dbg_value(i32 %add43.i1217.1, !2192, !DIExpression(), !2847)
  %dec.i1218.1 = add nsw i32 %i_ref.064.i1213.1, -1, !dbg !2867
    #dbg_value(i32 %dec.i1218.1, !2193, !DIExpression(), !2860)
  %cmp40.i1219.1 = icmp ugt i32 %i_ref.064.i1213.1, 1, !dbg !2861
  br i1 %cmp40.i1219.1, label %for.body.i1212.1, label %x264_cabac_mb_ref.exit1231.1, !dbg !2862, !llvm.loop !2868

x264_cabac_mb_ref.exit1231.1:                     ; preds = %for.body.i1212.1, %if.end31.i1204.1
  %ctx.2.lcssa.i1208.1 = phi i32 [ %ctx.1.i1205.1, %if.end31.i1204.1 ], [ %add43.i1217.1, %for.body.i1212.1 ], !dbg !2847
  %add44.i1209.1 = add nuw nsw i32 %ctx.2.lcssa.i1208.1, 54, !dbg !2870
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.1, i32 noundef 0) #7, !dbg !2871
  br label %for.inc219.1, !dbg !2872

for.inc219.1:                                     ; preds = %x264_cabac_mb_ref.exit1231.1, %for.inc219
    #dbg_value(i64 2, !1625, !DIExpression(), !2820)
  %251 = load i8, ptr %arrayidx191.2, align 1, !dbg !2873
  %idxprom213.2 = zext i8 %251 to i64, !dbg !2821
  %arrayidx214.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.2, !dbg !2821
  %252 = load i8, ptr %arrayidx214.2, align 1, !dbg !2821
  %tobool215.not.2 = icmp eq i8 %252, 0, !dbg !2821
  br i1 %tobool215.not.2, label %for.inc219.2, label %if.then216.2, !dbg !2824

if.then216.2:                                     ; preds = %for.inc219.1
    #dbg_value(ptr %h, !2181, !DIExpression(), !2847)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2847)
    #dbg_value(i32 0, !2187, !DIExpression(), !2847)
    #dbg_value(i64 8, !2188, !DIExpression(), !2847)
    #dbg_value(i32 28, !2189, !DIExpression(), !2847)
  %arrayidx4.i1198.2 = getelementptr inbounds i8, ptr %h, i64 25147, !dbg !2849
  %253 = load i8, ptr %arrayidx4.i1198.2, align 1, !dbg !2849
    #dbg_value(i8 %253, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
  %arrayidx12.i1199.2 = getelementptr inbounds i8, ptr %h, i64 25140, !dbg !2850
  %254 = load i8, ptr %arrayidx12.i1199.2, align 1, !dbg !2850
    #dbg_value(i8 %254, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
    #dbg_value(i32 0, !2192, !DIExpression(), !2847)
  %cmp.i1200.2 = icmp sgt i8 %253, 0, !dbg !2851
  br i1 %cmp.i1200.2, label %land.lhs.true.i1226.2, label %if.end.i1201.2, !dbg !2852

land.lhs.true.i1226.2:                            ; preds = %if.then216.2
  %arrayidx19.i1228.2 = getelementptr inbounds i8, ptr %h, i64 25707, !dbg !2853
  %255 = load i8, ptr %arrayidx19.i1228.2, align 1, !dbg !2853
  %tobool.not.i1229.2 = icmp eq i8 %255, 0, !dbg !2853
  %spec.select.i1230.2 = zext i1 %tobool.not.i1229.2 to i32, !dbg !2854
  br label %if.end.i1201.2, !dbg !2854

if.end.i1201.2:                                   ; preds = %land.lhs.true.i1226.2, %if.then216.2
  %ctx.0.i1202.2 = phi i32 [ 0, %if.then216.2 ], [ %spec.select.i1230.2, %land.lhs.true.i1226.2 ], !dbg !2847
    #dbg_value(i32 %ctx.0.i1202.2, !2192, !DIExpression(), !2847)
  %cmp20.i1203.2 = icmp sgt i8 %254, 0, !dbg !2855
  br i1 %cmp20.i1203.2, label %land.lhs.true22.i1220.2, label %if.end31.i1204.2, !dbg !2856

land.lhs.true22.i1220.2:                          ; preds = %if.end.i1201.2
  %arrayidx28.i1222.2 = getelementptr inbounds i8, ptr %h, i64 25700, !dbg !2857
  %256 = load i8, ptr %arrayidx28.i1222.2, align 1, !dbg !2857
  %tobool29.not.i1223.2 = icmp eq i8 %256, 0, !dbg !2857
  %add.i1224.2 = or disjoint i32 %ctx.0.i1202.2, 2
  %spec.select61.i1225.2 = select i1 %tobool29.not.i1223.2, i32 %add.i1224.2, i32 %ctx.0.i1202.2, !dbg !2858
  br label %if.end31.i1204.2, !dbg !2858

if.end31.i1204.2:                                 ; preds = %land.lhs.true22.i1220.2, %if.end.i1201.2
  %ctx.1.i1205.2 = phi i32 [ %ctx.0.i1202.2, %if.end.i1201.2 ], [ %spec.select61.i1225.2, %land.lhs.true22.i1220.2 ], !dbg !2847
    #dbg_value(i32 %ctx.1.i1205.2, !2192, !DIExpression(), !2847)
  %arrayidx38.i1206.2 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2859
  %257 = load i8, ptr %arrayidx38.i1206.2, align 1, !dbg !2859
    #dbg_value(i8 %257, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2860)
  %cmp4062.i1207.2 = icmp sgt i8 %257, 0, !dbg !2861
  br i1 %cmp4062.i1207.2, label %for.body.preheader.i1210.2, label %x264_cabac_mb_ref.exit1231.2, !dbg !2862

for.body.preheader.i1210.2:                       ; preds = %if.end31.i1204.2
  %conv39.i1211.2 = zext nneg i8 %257 to i32, !dbg !2859
    #dbg_value(i32 %conv39.i1211.2, !2193, !DIExpression(), !2860)
  br label %for.body.i1212.2, !dbg !2862

for.body.i1212.2:                                 ; preds = %for.body.i1212.2, %for.body.preheader.i1210.2
  %i_ref.064.i1213.2 = phi i32 [ %dec.i1218.2, %for.body.i1212.2 ], [ %conv39.i1211.2, %for.body.preheader.i1210.2 ]
  %ctx.263.i1214.2 = phi i32 [ %add43.i1217.2, %for.body.i1212.2 ], [ %ctx.1.i1205.2, %for.body.preheader.i1210.2 ]
    #dbg_value(i32 %i_ref.064.i1213.2, !2193, !DIExpression(), !2860)
    #dbg_value(i32 %ctx.263.i1214.2, !2192, !DIExpression(), !2847)
  %add42.i1215.2 = add nuw nsw i32 %ctx.263.i1214.2, 54, !dbg !2863
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.2, i32 noundef 1) #7, !dbg !2864
  %shr.i1216.2 = lshr i32 %ctx.263.i1214.2, 2, !dbg !2865
  %add43.i1217.2 = add nuw nsw i32 %shr.i1216.2, 4, !dbg !2866
    #dbg_value(i32 %add43.i1217.2, !2192, !DIExpression(), !2847)
  %dec.i1218.2 = add nsw i32 %i_ref.064.i1213.2, -1, !dbg !2867
    #dbg_value(i32 %dec.i1218.2, !2193, !DIExpression(), !2860)
  %cmp40.i1219.2 = icmp ugt i32 %i_ref.064.i1213.2, 1, !dbg !2861
  br i1 %cmp40.i1219.2, label %for.body.i1212.2, label %x264_cabac_mb_ref.exit1231.2, !dbg !2862, !llvm.loop !2868

x264_cabac_mb_ref.exit1231.2:                     ; preds = %for.body.i1212.2, %if.end31.i1204.2
  %ctx.2.lcssa.i1208.2 = phi i32 [ %ctx.1.i1205.2, %if.end31.i1204.2 ], [ %add43.i1217.2, %for.body.i1212.2 ], !dbg !2847
  %add44.i1209.2 = add nuw nsw i32 %ctx.2.lcssa.i1208.2, 54, !dbg !2870
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.2, i32 noundef 0) #7, !dbg !2871
  br label %for.inc219.2, !dbg !2872

for.inc219.2:                                     ; preds = %x264_cabac_mb_ref.exit1231.2, %for.inc219.1
    #dbg_value(i64 3, !1625, !DIExpression(), !2820)
  %258 = load i8, ptr %arrayidx191.3, align 1, !dbg !2873
  %idxprom213.3 = zext i8 %258 to i64, !dbg !2821
  %arrayidx214.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.3, !dbg !2821
  %259 = load i8, ptr %arrayidx214.3, align 1, !dbg !2821
  %tobool215.not.3 = icmp eq i8 %259, 0, !dbg !2821
  br i1 %tobool215.not.3, label %for.inc219.3, label %if.then216.3, !dbg !2824

if.then216.3:                                     ; preds = %for.inc219.2
    #dbg_value(ptr %h, !2181, !DIExpression(), !2847)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2847)
    #dbg_value(i32 0, !2187, !DIExpression(), !2847)
    #dbg_value(i64 12, !2188, !DIExpression(), !2847)
    #dbg_value(i32 30, !2189, !DIExpression(), !2847)
  %arrayidx4.i1198.3 = getelementptr inbounds i8, ptr %h, i64 25149, !dbg !2849
  %260 = load i8, ptr %arrayidx4.i1198.3, align 1, !dbg !2849
    #dbg_value(i8 %260, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
  %arrayidx12.i1199.3 = getelementptr inbounds i8, ptr %h, i64 25142, !dbg !2850
  %261 = load i8, ptr %arrayidx12.i1199.3, align 1, !dbg !2850
    #dbg_value(i8 %261, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2847)
    #dbg_value(i32 0, !2192, !DIExpression(), !2847)
  %cmp.i1200.3 = icmp sgt i8 %260, 0, !dbg !2851
  br i1 %cmp.i1200.3, label %land.lhs.true.i1226.3, label %if.end.i1201.3, !dbg !2852

land.lhs.true.i1226.3:                            ; preds = %if.then216.3
  %arrayidx19.i1228.3 = getelementptr inbounds i8, ptr %h, i64 25709, !dbg !2853
  %262 = load i8, ptr %arrayidx19.i1228.3, align 1, !dbg !2853
  %tobool.not.i1229.3 = icmp eq i8 %262, 0, !dbg !2853
  %spec.select.i1230.3 = zext i1 %tobool.not.i1229.3 to i32, !dbg !2854
  br label %if.end.i1201.3, !dbg !2854

if.end.i1201.3:                                   ; preds = %land.lhs.true.i1226.3, %if.then216.3
  %ctx.0.i1202.3 = phi i32 [ 0, %if.then216.3 ], [ %spec.select.i1230.3, %land.lhs.true.i1226.3 ], !dbg !2847
    #dbg_value(i32 %ctx.0.i1202.3, !2192, !DIExpression(), !2847)
  %cmp20.i1203.3 = icmp sgt i8 %261, 0, !dbg !2855
  br i1 %cmp20.i1203.3, label %land.lhs.true22.i1220.3, label %if.end31.i1204.3, !dbg !2856

land.lhs.true22.i1220.3:                          ; preds = %if.end.i1201.3
  %arrayidx28.i1222.3 = getelementptr inbounds i8, ptr %h, i64 25702, !dbg !2857
  %263 = load i8, ptr %arrayidx28.i1222.3, align 1, !dbg !2857
  %tobool29.not.i1223.3 = icmp eq i8 %263, 0, !dbg !2857
  %add.i1224.3 = or disjoint i32 %ctx.0.i1202.3, 2
  %spec.select61.i1225.3 = select i1 %tobool29.not.i1223.3, i32 %add.i1224.3, i32 %ctx.0.i1202.3, !dbg !2858
  br label %if.end31.i1204.3, !dbg !2858

if.end31.i1204.3:                                 ; preds = %land.lhs.true22.i1220.3, %if.end.i1201.3
  %ctx.1.i1205.3 = phi i32 [ %ctx.0.i1202.3, %if.end.i1201.3 ], [ %spec.select61.i1225.3, %land.lhs.true22.i1220.3 ], !dbg !2847
    #dbg_value(i32 %ctx.1.i1205.3, !2192, !DIExpression(), !2847)
  %arrayidx38.i1206.3 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2859
  %264 = load i8, ptr %arrayidx38.i1206.3, align 1, !dbg !2859
    #dbg_value(i8 %264, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2860)
  %cmp4062.i1207.3 = icmp sgt i8 %264, 0, !dbg !2861
  br i1 %cmp4062.i1207.3, label %for.body.preheader.i1210.3, label %x264_cabac_mb_ref.exit1231.3, !dbg !2862

for.body.preheader.i1210.3:                       ; preds = %if.end31.i1204.3
  %conv39.i1211.3 = zext nneg i8 %264 to i32, !dbg !2859
    #dbg_value(i32 %conv39.i1211.3, !2193, !DIExpression(), !2860)
  br label %for.body.i1212.3, !dbg !2862

for.body.i1212.3:                                 ; preds = %for.body.i1212.3, %for.body.preheader.i1210.3
  %i_ref.064.i1213.3 = phi i32 [ %dec.i1218.3, %for.body.i1212.3 ], [ %conv39.i1211.3, %for.body.preheader.i1210.3 ]
  %ctx.263.i1214.3 = phi i32 [ %add43.i1217.3, %for.body.i1212.3 ], [ %ctx.1.i1205.3, %for.body.preheader.i1210.3 ]
    #dbg_value(i32 %i_ref.064.i1213.3, !2193, !DIExpression(), !2860)
    #dbg_value(i32 %ctx.263.i1214.3, !2192, !DIExpression(), !2847)
  %add42.i1215.3 = add nuw nsw i32 %ctx.263.i1214.3, 54, !dbg !2863
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.3, i32 noundef 1) #7, !dbg !2864
  %shr.i1216.3 = lshr i32 %ctx.263.i1214.3, 2, !dbg !2865
  %add43.i1217.3 = add nuw nsw i32 %shr.i1216.3, 4, !dbg !2866
    #dbg_value(i32 %add43.i1217.3, !2192, !DIExpression(), !2847)
  %dec.i1218.3 = add nsw i32 %i_ref.064.i1213.3, -1, !dbg !2867
    #dbg_value(i32 %dec.i1218.3, !2193, !DIExpression(), !2860)
  %cmp40.i1219.3 = icmp ugt i32 %i_ref.064.i1213.3, 1, !dbg !2861
  br i1 %cmp40.i1219.3, label %for.body.i1212.3, label %x264_cabac_mb_ref.exit1231.3, !dbg !2862, !llvm.loop !2868

x264_cabac_mb_ref.exit1231.3:                     ; preds = %for.body.i1212.3, %if.end31.i1204.3
  %ctx.2.lcssa.i1208.3 = phi i32 [ %ctx.1.i1205.3, %if.end31.i1204.3 ], [ %add43.i1217.3, %for.body.i1212.3 ], !dbg !2847
  %add44.i1209.3 = add nuw nsw i32 %ctx.2.lcssa.i1208.3, 54, !dbg !2870
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.3, i32 noundef 0) #7, !dbg !2871
  br label %for.inc219.3, !dbg !2872

for.inc219.3:                                     ; preds = %x264_cabac_mb_ref.exit1231.3, %for.inc219.2
    #dbg_value(i64 4, !1625, !DIExpression(), !2820)
  %.pre1841.pre = load i8, ptr %i_sub_partition189, align 1, !dbg !2845
  br label %if.end222, !dbg !2874

if.end222:                                        ; preds = %for.inc219.3, %x264_cabac_mb_sub_b_partition.exit.3
  %.pre1841 = phi i8 [ %.pre1841.pre, %for.inc219.3 ], [ %.pre1841.pre1845, %x264_cabac_mb_sub_b_partition.exit.3 ], !dbg !2845
  %arrayidx226 = getelementptr inbounds i8, ptr %h, i64 21420, !dbg !2874
  %265 = load i32, ptr %arrayidx226, align 4, !dbg !2874
  %cmp227 = icmp sgt i32 %265, 1, !dbg !2875
  br i1 %cmp227, label %for.cond231.preheader, label %if.end249, !dbg !2876

for.cond231.preheader:                            ; preds = %if.end222
    #dbg_value(i64 0, !1628, !DIExpression(), !2877)
  %idxprom240 = zext i8 %.pre1841 to i64, !dbg !2878
  %arrayidx241 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240, !dbg !2878
  %266 = load i8, ptr %arrayidx241, align 1, !dbg !2878
  %tobool242.not = icmp eq i8 %266, 0, !dbg !2878
  br i1 %tobool242.not, label %for.inc246, label %if.then243, !dbg !2881

if.then243:                                       ; preds = %for.cond231.preheader
    #dbg_value(ptr %h, !2181, !DIExpression(), !2882)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2882)
    #dbg_value(i32 1, !2187, !DIExpression(), !2882)
    #dbg_value(i64 0, !2188, !DIExpression(), !2882)
    #dbg_value(i32 12, !2189, !DIExpression(), !2882)
  %arrayidx4.i1237 = getelementptr inbounds i8, ptr %h, i64 25171, !dbg !2884
  %267 = load i8, ptr %arrayidx4.i1237, align 1, !dbg !2884
    #dbg_value(i8 %267, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
  %arrayidx12.i1240 = getelementptr inbounds i8, ptr %h, i64 25164, !dbg !2885
  %268 = load i8, ptr %arrayidx12.i1240, align 1, !dbg !2885
    #dbg_value(i8 %268, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
    #dbg_value(i32 0, !2192, !DIExpression(), !2882)
  %cmp.i1241 = icmp sgt i8 %267, 0, !dbg !2886
  br i1 %cmp.i1241, label %land.lhs.true.i1268, label %if.end.i1242, !dbg !2887

land.lhs.true.i1268:                              ; preds = %if.then243
  %arrayidx19.i1270 = getelementptr inbounds i8, ptr %h, i64 25691, !dbg !2888
  %269 = load i8, ptr %arrayidx19.i1270, align 1, !dbg !2888
  %tobool.not.i1271 = icmp eq i8 %269, 0, !dbg !2888
  %spec.select.i1272 = zext i1 %tobool.not.i1271 to i32, !dbg !2889
  br label %if.end.i1242, !dbg !2889

if.end.i1242:                                     ; preds = %land.lhs.true.i1268, %if.then243
  %ctx.0.i1243 = phi i32 [ 0, %if.then243 ], [ %spec.select.i1272, %land.lhs.true.i1268 ], !dbg !2882
    #dbg_value(i32 %ctx.0.i1243, !2192, !DIExpression(), !2882)
  %cmp20.i1244 = icmp sgt i8 %268, 0, !dbg !2890
  br i1 %cmp20.i1244, label %land.lhs.true22.i1262, label %if.end31.i1245, !dbg !2891

land.lhs.true22.i1262:                            ; preds = %if.end.i1242
  %arrayidx28.i1264 = getelementptr inbounds i8, ptr %h, i64 25684, !dbg !2892
  %270 = load i8, ptr %arrayidx28.i1264, align 1, !dbg !2892
  %tobool29.not.i1265 = icmp eq i8 %270, 0, !dbg !2892
  %add.i1266 = or disjoint i32 %ctx.0.i1243, 2
  %spec.select61.i1267 = select i1 %tobool29.not.i1265, i32 %add.i1266, i32 %ctx.0.i1243, !dbg !2893
  br label %if.end31.i1245, !dbg !2893

if.end31.i1245:                                   ; preds = %land.lhs.true22.i1262, %if.end.i1242
  %ctx.1.i1246 = phi i32 [ %ctx.0.i1243, %if.end.i1242 ], [ %spec.select61.i1267, %land.lhs.true22.i1262 ], !dbg !2882
    #dbg_value(i32 %ctx.1.i1246, !2192, !DIExpression(), !2882)
  %arrayidx38.i1248 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2894
  %271 = load i8, ptr %arrayidx38.i1248, align 1, !dbg !2894
    #dbg_value(i8 %271, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2895)
  %cmp4062.i1249 = icmp sgt i8 %271, 0, !dbg !2896
  br i1 %cmp4062.i1249, label %for.body.preheader.i1252, label %x264_cabac_mb_ref.exit1273, !dbg !2897

for.body.preheader.i1252:                         ; preds = %if.end31.i1245
  %conv39.i1253 = zext nneg i8 %271 to i32, !dbg !2894
    #dbg_value(i32 %conv39.i1253, !2193, !DIExpression(), !2895)
  br label %for.body.i1254, !dbg !2897

for.body.i1254:                                   ; preds = %for.body.i1254, %for.body.preheader.i1252
  %i_ref.064.i1255 = phi i32 [ %dec.i1260, %for.body.i1254 ], [ %conv39.i1253, %for.body.preheader.i1252 ]
  %ctx.263.i1256 = phi i32 [ %add43.i1259, %for.body.i1254 ], [ %ctx.1.i1246, %for.body.preheader.i1252 ]
    #dbg_value(i32 %i_ref.064.i1255, !2193, !DIExpression(), !2895)
    #dbg_value(i32 %ctx.263.i1256, !2192, !DIExpression(), !2882)
  %add42.i1257 = add nuw nsw i32 %ctx.263.i1256, 54, !dbg !2898
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257, i32 noundef 1) #7, !dbg !2899
  %shr.i1258 = lshr i32 %ctx.263.i1256, 2, !dbg !2900
  %add43.i1259 = add nuw nsw i32 %shr.i1258, 4, !dbg !2901
    #dbg_value(i32 %add43.i1259, !2192, !DIExpression(), !2882)
  %dec.i1260 = add nsw i32 %i_ref.064.i1255, -1, !dbg !2902
    #dbg_value(i32 %dec.i1260, !2193, !DIExpression(), !2895)
  %cmp40.i1261 = icmp ugt i32 %i_ref.064.i1255, 1, !dbg !2896
  br i1 %cmp40.i1261, label %for.body.i1254, label %x264_cabac_mb_ref.exit1273, !dbg !2897, !llvm.loop !2903

x264_cabac_mb_ref.exit1273:                       ; preds = %for.body.i1254, %if.end31.i1245
  %ctx.2.lcssa.i1250 = phi i32 [ %ctx.1.i1246, %if.end31.i1245 ], [ %add43.i1259, %for.body.i1254 ], !dbg !2882
  %add44.i1251 = add nuw nsw i32 %ctx.2.lcssa.i1250, 54, !dbg !2905
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251, i32 noundef 0) #7, !dbg !2906
  br label %for.inc246, !dbg !2907

for.inc246:                                       ; preds = %for.cond231.preheader, %x264_cabac_mb_ref.exit1273
    #dbg_value(i64 1, !1628, !DIExpression(), !2877)
  %272 = load i8, ptr %arrayidx191.1, align 1, !dbg !2908
  %idxprom240.1 = zext i8 %272 to i64, !dbg !2878
  %arrayidx241.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.1, !dbg !2878
  %273 = load i8, ptr %arrayidx241.1, align 1, !dbg !2878
  %tobool242.not.1 = icmp eq i8 %273, 0, !dbg !2878
  br i1 %tobool242.not.1, label %for.inc246.1, label %if.then243.1, !dbg !2881

if.then243.1:                                     ; preds = %for.inc246
    #dbg_value(ptr %h, !2181, !DIExpression(), !2882)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2882)
    #dbg_value(i32 1, !2187, !DIExpression(), !2882)
    #dbg_value(i64 4, !2188, !DIExpression(), !2882)
    #dbg_value(i32 14, !2189, !DIExpression(), !2882)
  %arrayidx4.i1237.1 = getelementptr inbounds i8, ptr %h, i64 25173, !dbg !2884
  %274 = load i8, ptr %arrayidx4.i1237.1, align 1, !dbg !2884
    #dbg_value(i8 %274, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
  %arrayidx12.i1240.1 = getelementptr inbounds i8, ptr %h, i64 25166, !dbg !2885
  %275 = load i8, ptr %arrayidx12.i1240.1, align 1, !dbg !2885
    #dbg_value(i8 %275, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
    #dbg_value(i32 0, !2192, !DIExpression(), !2882)
  %cmp.i1241.1 = icmp sgt i8 %274, 0, !dbg !2886
  br i1 %cmp.i1241.1, label %land.lhs.true.i1268.1, label %if.end.i1242.1, !dbg !2887

land.lhs.true.i1268.1:                            ; preds = %if.then243.1
  %arrayidx19.i1270.1 = getelementptr inbounds i8, ptr %h, i64 25693, !dbg !2888
  %276 = load i8, ptr %arrayidx19.i1270.1, align 1, !dbg !2888
  %tobool.not.i1271.1 = icmp eq i8 %276, 0, !dbg !2888
  %spec.select.i1272.1 = zext i1 %tobool.not.i1271.1 to i32, !dbg !2889
  br label %if.end.i1242.1, !dbg !2889

if.end.i1242.1:                                   ; preds = %land.lhs.true.i1268.1, %if.then243.1
  %ctx.0.i1243.1 = phi i32 [ 0, %if.then243.1 ], [ %spec.select.i1272.1, %land.lhs.true.i1268.1 ], !dbg !2882
    #dbg_value(i32 %ctx.0.i1243.1, !2192, !DIExpression(), !2882)
  %cmp20.i1244.1 = icmp sgt i8 %275, 0, !dbg !2890
  br i1 %cmp20.i1244.1, label %land.lhs.true22.i1262.1, label %if.end31.i1245.1, !dbg !2891

land.lhs.true22.i1262.1:                          ; preds = %if.end.i1242.1
  %arrayidx28.i1264.1 = getelementptr inbounds i8, ptr %h, i64 25686, !dbg !2892
  %277 = load i8, ptr %arrayidx28.i1264.1, align 1, !dbg !2892
  %tobool29.not.i1265.1 = icmp eq i8 %277, 0, !dbg !2892
  %add.i1266.1 = or disjoint i32 %ctx.0.i1243.1, 2
  %spec.select61.i1267.1 = select i1 %tobool29.not.i1265.1, i32 %add.i1266.1, i32 %ctx.0.i1243.1, !dbg !2893
  br label %if.end31.i1245.1, !dbg !2893

if.end31.i1245.1:                                 ; preds = %land.lhs.true22.i1262.1, %if.end.i1242.1
  %ctx.1.i1246.1 = phi i32 [ %ctx.0.i1243.1, %if.end.i1242.1 ], [ %spec.select61.i1267.1, %land.lhs.true22.i1262.1 ], !dbg !2882
    #dbg_value(i32 %ctx.1.i1246.1, !2192, !DIExpression(), !2882)
  %arrayidx38.i1248.1 = getelementptr inbounds i8, ptr %h, i64 25174, !dbg !2894
  %278 = load i8, ptr %arrayidx38.i1248.1, align 1, !dbg !2894
    #dbg_value(i8 %278, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2895)
  %cmp4062.i1249.1 = icmp sgt i8 %278, 0, !dbg !2896
  br i1 %cmp4062.i1249.1, label %for.body.preheader.i1252.1, label %x264_cabac_mb_ref.exit1273.1, !dbg !2897

for.body.preheader.i1252.1:                       ; preds = %if.end31.i1245.1
  %conv39.i1253.1 = zext nneg i8 %278 to i32, !dbg !2894
    #dbg_value(i32 %conv39.i1253.1, !2193, !DIExpression(), !2895)
  br label %for.body.i1254.1, !dbg !2897

for.body.i1254.1:                                 ; preds = %for.body.i1254.1, %for.body.preheader.i1252.1
  %i_ref.064.i1255.1 = phi i32 [ %dec.i1260.1, %for.body.i1254.1 ], [ %conv39.i1253.1, %for.body.preheader.i1252.1 ]
  %ctx.263.i1256.1 = phi i32 [ %add43.i1259.1, %for.body.i1254.1 ], [ %ctx.1.i1246.1, %for.body.preheader.i1252.1 ]
    #dbg_value(i32 %i_ref.064.i1255.1, !2193, !DIExpression(), !2895)
    #dbg_value(i32 %ctx.263.i1256.1, !2192, !DIExpression(), !2882)
  %add42.i1257.1 = add nuw nsw i32 %ctx.263.i1256.1, 54, !dbg !2898
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.1, i32 noundef 1) #7, !dbg !2899
  %shr.i1258.1 = lshr i32 %ctx.263.i1256.1, 2, !dbg !2900
  %add43.i1259.1 = add nuw nsw i32 %shr.i1258.1, 4, !dbg !2901
    #dbg_value(i32 %add43.i1259.1, !2192, !DIExpression(), !2882)
  %dec.i1260.1 = add nsw i32 %i_ref.064.i1255.1, -1, !dbg !2902
    #dbg_value(i32 %dec.i1260.1, !2193, !DIExpression(), !2895)
  %cmp40.i1261.1 = icmp ugt i32 %i_ref.064.i1255.1, 1, !dbg !2896
  br i1 %cmp40.i1261.1, label %for.body.i1254.1, label %x264_cabac_mb_ref.exit1273.1, !dbg !2897, !llvm.loop !2903

x264_cabac_mb_ref.exit1273.1:                     ; preds = %for.body.i1254.1, %if.end31.i1245.1
  %ctx.2.lcssa.i1250.1 = phi i32 [ %ctx.1.i1246.1, %if.end31.i1245.1 ], [ %add43.i1259.1, %for.body.i1254.1 ], !dbg !2882
  %add44.i1251.1 = add nuw nsw i32 %ctx.2.lcssa.i1250.1, 54, !dbg !2905
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.1, i32 noundef 0) #7, !dbg !2906
  br label %for.inc246.1, !dbg !2907

for.inc246.1:                                     ; preds = %x264_cabac_mb_ref.exit1273.1, %for.inc246
    #dbg_value(i64 2, !1628, !DIExpression(), !2877)
  %279 = load i8, ptr %arrayidx191.2, align 1, !dbg !2908
  %idxprom240.2 = zext i8 %279 to i64, !dbg !2878
  %arrayidx241.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.2, !dbg !2878
  %280 = load i8, ptr %arrayidx241.2, align 1, !dbg !2878
  %tobool242.not.2 = icmp eq i8 %280, 0, !dbg !2878
  br i1 %tobool242.not.2, label %for.inc246.2, label %if.then243.2, !dbg !2881

if.then243.2:                                     ; preds = %for.inc246.1
    #dbg_value(ptr %h, !2181, !DIExpression(), !2882)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2882)
    #dbg_value(i32 1, !2187, !DIExpression(), !2882)
    #dbg_value(i64 8, !2188, !DIExpression(), !2882)
    #dbg_value(i32 28, !2189, !DIExpression(), !2882)
  %arrayidx4.i1237.2 = getelementptr inbounds i8, ptr %h, i64 25187, !dbg !2884
  %281 = load i8, ptr %arrayidx4.i1237.2, align 1, !dbg !2884
    #dbg_value(i8 %281, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
  %arrayidx12.i1240.2 = getelementptr inbounds i8, ptr %h, i64 25180, !dbg !2885
  %282 = load i8, ptr %arrayidx12.i1240.2, align 1, !dbg !2885
    #dbg_value(i8 %282, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
    #dbg_value(i32 0, !2192, !DIExpression(), !2882)
  %cmp.i1241.2 = icmp sgt i8 %281, 0, !dbg !2886
  br i1 %cmp.i1241.2, label %land.lhs.true.i1268.2, label %if.end.i1242.2, !dbg !2887

land.lhs.true.i1268.2:                            ; preds = %if.then243.2
  %arrayidx19.i1270.2 = getelementptr inbounds i8, ptr %h, i64 25707, !dbg !2888
  %283 = load i8, ptr %arrayidx19.i1270.2, align 1, !dbg !2888
  %tobool.not.i1271.2 = icmp eq i8 %283, 0, !dbg !2888
  %spec.select.i1272.2 = zext i1 %tobool.not.i1271.2 to i32, !dbg !2889
  br label %if.end.i1242.2, !dbg !2889

if.end.i1242.2:                                   ; preds = %land.lhs.true.i1268.2, %if.then243.2
  %ctx.0.i1243.2 = phi i32 [ 0, %if.then243.2 ], [ %spec.select.i1272.2, %land.lhs.true.i1268.2 ], !dbg !2882
    #dbg_value(i32 %ctx.0.i1243.2, !2192, !DIExpression(), !2882)
  %cmp20.i1244.2 = icmp sgt i8 %282, 0, !dbg !2890
  br i1 %cmp20.i1244.2, label %land.lhs.true22.i1262.2, label %if.end31.i1245.2, !dbg !2891

land.lhs.true22.i1262.2:                          ; preds = %if.end.i1242.2
  %arrayidx28.i1264.2 = getelementptr inbounds i8, ptr %h, i64 25700, !dbg !2892
  %284 = load i8, ptr %arrayidx28.i1264.2, align 1, !dbg !2892
  %tobool29.not.i1265.2 = icmp eq i8 %284, 0, !dbg !2892
  %add.i1266.2 = or disjoint i32 %ctx.0.i1243.2, 2
  %spec.select61.i1267.2 = select i1 %tobool29.not.i1265.2, i32 %add.i1266.2, i32 %ctx.0.i1243.2, !dbg !2893
  br label %if.end31.i1245.2, !dbg !2893

if.end31.i1245.2:                                 ; preds = %land.lhs.true22.i1262.2, %if.end.i1242.2
  %ctx.1.i1246.2 = phi i32 [ %ctx.0.i1243.2, %if.end.i1242.2 ], [ %spec.select61.i1267.2, %land.lhs.true22.i1262.2 ], !dbg !2882
    #dbg_value(i32 %ctx.1.i1246.2, !2192, !DIExpression(), !2882)
  %arrayidx38.i1248.2 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !2894
  %285 = load i8, ptr %arrayidx38.i1248.2, align 1, !dbg !2894
    #dbg_value(i8 %285, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2895)
  %cmp4062.i1249.2 = icmp sgt i8 %285, 0, !dbg !2896
  br i1 %cmp4062.i1249.2, label %for.body.preheader.i1252.2, label %x264_cabac_mb_ref.exit1273.2, !dbg !2897

for.body.preheader.i1252.2:                       ; preds = %if.end31.i1245.2
  %conv39.i1253.2 = zext nneg i8 %285 to i32, !dbg !2894
    #dbg_value(i32 %conv39.i1253.2, !2193, !DIExpression(), !2895)
  br label %for.body.i1254.2, !dbg !2897

for.body.i1254.2:                                 ; preds = %for.body.i1254.2, %for.body.preheader.i1252.2
  %i_ref.064.i1255.2 = phi i32 [ %dec.i1260.2, %for.body.i1254.2 ], [ %conv39.i1253.2, %for.body.preheader.i1252.2 ]
  %ctx.263.i1256.2 = phi i32 [ %add43.i1259.2, %for.body.i1254.2 ], [ %ctx.1.i1246.2, %for.body.preheader.i1252.2 ]
    #dbg_value(i32 %i_ref.064.i1255.2, !2193, !DIExpression(), !2895)
    #dbg_value(i32 %ctx.263.i1256.2, !2192, !DIExpression(), !2882)
  %add42.i1257.2 = add nuw nsw i32 %ctx.263.i1256.2, 54, !dbg !2898
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.2, i32 noundef 1) #7, !dbg !2899
  %shr.i1258.2 = lshr i32 %ctx.263.i1256.2, 2, !dbg !2900
  %add43.i1259.2 = add nuw nsw i32 %shr.i1258.2, 4, !dbg !2901
    #dbg_value(i32 %add43.i1259.2, !2192, !DIExpression(), !2882)
  %dec.i1260.2 = add nsw i32 %i_ref.064.i1255.2, -1, !dbg !2902
    #dbg_value(i32 %dec.i1260.2, !2193, !DIExpression(), !2895)
  %cmp40.i1261.2 = icmp ugt i32 %i_ref.064.i1255.2, 1, !dbg !2896
  br i1 %cmp40.i1261.2, label %for.body.i1254.2, label %x264_cabac_mb_ref.exit1273.2, !dbg !2897, !llvm.loop !2903

x264_cabac_mb_ref.exit1273.2:                     ; preds = %for.body.i1254.2, %if.end31.i1245.2
  %ctx.2.lcssa.i1250.2 = phi i32 [ %ctx.1.i1246.2, %if.end31.i1245.2 ], [ %add43.i1259.2, %for.body.i1254.2 ], !dbg !2882
  %add44.i1251.2 = add nuw nsw i32 %ctx.2.lcssa.i1250.2, 54, !dbg !2905
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.2, i32 noundef 0) #7, !dbg !2906
  br label %for.inc246.2, !dbg !2907

for.inc246.2:                                     ; preds = %x264_cabac_mb_ref.exit1273.2, %for.inc246.1
    #dbg_value(i64 3, !1628, !DIExpression(), !2877)
  %286 = load i8, ptr %arrayidx191.3, align 1, !dbg !2908
  %idxprom240.3 = zext i8 %286 to i64, !dbg !2878
  %arrayidx241.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.3, !dbg !2878
  %287 = load i8, ptr %arrayidx241.3, align 1, !dbg !2878
  %tobool242.not.3 = icmp eq i8 %287, 0, !dbg !2878
  br i1 %tobool242.not.3, label %for.inc246.3, label %if.then243.3, !dbg !2881

if.then243.3:                                     ; preds = %for.inc246.2
    #dbg_value(ptr %h, !2181, !DIExpression(), !2882)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !2882)
    #dbg_value(i32 1, !2187, !DIExpression(), !2882)
    #dbg_value(i64 12, !2188, !DIExpression(), !2882)
    #dbg_value(i32 30, !2189, !DIExpression(), !2882)
  %arrayidx4.i1237.3 = getelementptr inbounds i8, ptr %h, i64 25189, !dbg !2884
  %288 = load i8, ptr %arrayidx4.i1237.3, align 1, !dbg !2884
    #dbg_value(i8 %288, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
  %arrayidx12.i1240.3 = getelementptr inbounds i8, ptr %h, i64 25182, !dbg !2885
  %289 = load i8, ptr %arrayidx12.i1240.3, align 1, !dbg !2885
    #dbg_value(i8 %289, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2882)
    #dbg_value(i32 0, !2192, !DIExpression(), !2882)
  %cmp.i1241.3 = icmp sgt i8 %288, 0, !dbg !2886
  br i1 %cmp.i1241.3, label %land.lhs.true.i1268.3, label %if.end.i1242.3, !dbg !2887

land.lhs.true.i1268.3:                            ; preds = %if.then243.3
  %arrayidx19.i1270.3 = getelementptr inbounds i8, ptr %h, i64 25709, !dbg !2888
  %290 = load i8, ptr %arrayidx19.i1270.3, align 1, !dbg !2888
  %tobool.not.i1271.3 = icmp eq i8 %290, 0, !dbg !2888
  %spec.select.i1272.3 = zext i1 %tobool.not.i1271.3 to i32, !dbg !2889
  br label %if.end.i1242.3, !dbg !2889

if.end.i1242.3:                                   ; preds = %land.lhs.true.i1268.3, %if.then243.3
  %ctx.0.i1243.3 = phi i32 [ 0, %if.then243.3 ], [ %spec.select.i1272.3, %land.lhs.true.i1268.3 ], !dbg !2882
    #dbg_value(i32 %ctx.0.i1243.3, !2192, !DIExpression(), !2882)
  %cmp20.i1244.3 = icmp sgt i8 %289, 0, !dbg !2890
  br i1 %cmp20.i1244.3, label %land.lhs.true22.i1262.3, label %if.end31.i1245.3, !dbg !2891

land.lhs.true22.i1262.3:                          ; preds = %if.end.i1242.3
  %arrayidx28.i1264.3 = getelementptr inbounds i8, ptr %h, i64 25702, !dbg !2892
  %291 = load i8, ptr %arrayidx28.i1264.3, align 1, !dbg !2892
  %tobool29.not.i1265.3 = icmp eq i8 %291, 0, !dbg !2892
  %add.i1266.3 = or disjoint i32 %ctx.0.i1243.3, 2
  %spec.select61.i1267.3 = select i1 %tobool29.not.i1265.3, i32 %add.i1266.3, i32 %ctx.0.i1243.3, !dbg !2893
  br label %if.end31.i1245.3, !dbg !2893

if.end31.i1245.3:                                 ; preds = %land.lhs.true22.i1262.3, %if.end.i1242.3
  %ctx.1.i1246.3 = phi i32 [ %ctx.0.i1243.3, %if.end.i1242.3 ], [ %spec.select61.i1267.3, %land.lhs.true22.i1262.3 ], !dbg !2882
    #dbg_value(i32 %ctx.1.i1246.3, !2192, !DIExpression(), !2882)
  %arrayidx38.i1248.3 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !2894
  %292 = load i8, ptr %arrayidx38.i1248.3, align 1, !dbg !2894
    #dbg_value(i8 %292, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2895)
  %cmp4062.i1249.3 = icmp sgt i8 %292, 0, !dbg !2896
  br i1 %cmp4062.i1249.3, label %for.body.preheader.i1252.3, label %x264_cabac_mb_ref.exit1273.3, !dbg !2897

for.body.preheader.i1252.3:                       ; preds = %if.end31.i1245.3
  %conv39.i1253.3 = zext nneg i8 %292 to i32, !dbg !2894
    #dbg_value(i32 %conv39.i1253.3, !2193, !DIExpression(), !2895)
  br label %for.body.i1254.3, !dbg !2897

for.body.i1254.3:                                 ; preds = %for.body.i1254.3, %for.body.preheader.i1252.3
  %i_ref.064.i1255.3 = phi i32 [ %dec.i1260.3, %for.body.i1254.3 ], [ %conv39.i1253.3, %for.body.preheader.i1252.3 ]
  %ctx.263.i1256.3 = phi i32 [ %add43.i1259.3, %for.body.i1254.3 ], [ %ctx.1.i1246.3, %for.body.preheader.i1252.3 ]
    #dbg_value(i32 %i_ref.064.i1255.3, !2193, !DIExpression(), !2895)
    #dbg_value(i32 %ctx.263.i1256.3, !2192, !DIExpression(), !2882)
  %add42.i1257.3 = add nuw nsw i32 %ctx.263.i1256.3, 54, !dbg !2898
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.3, i32 noundef 1) #7, !dbg !2899
  %shr.i1258.3 = lshr i32 %ctx.263.i1256.3, 2, !dbg !2900
  %add43.i1259.3 = add nuw nsw i32 %shr.i1258.3, 4, !dbg !2901
    #dbg_value(i32 %add43.i1259.3, !2192, !DIExpression(), !2882)
  %dec.i1260.3 = add nsw i32 %i_ref.064.i1255.3, -1, !dbg !2902
    #dbg_value(i32 %dec.i1260.3, !2193, !DIExpression(), !2895)
  %cmp40.i1261.3 = icmp ugt i32 %i_ref.064.i1255.3, 1, !dbg !2896
  br i1 %cmp40.i1261.3, label %for.body.i1254.3, label %x264_cabac_mb_ref.exit1273.3, !dbg !2897, !llvm.loop !2903

x264_cabac_mb_ref.exit1273.3:                     ; preds = %for.body.i1254.3, %if.end31.i1245.3
  %ctx.2.lcssa.i1250.3 = phi i32 [ %ctx.1.i1246.3, %if.end31.i1245.3 ], [ %add43.i1259.3, %for.body.i1254.3 ], !dbg !2882
  %add44.i1251.3 = add nuw nsw i32 %ctx.2.lcssa.i1250.3, 54, !dbg !2905
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.3, i32 noundef 0) #7, !dbg !2906
  br label %for.inc246.3, !dbg !2907

for.inc246.3:                                     ; preds = %x264_cabac_mb_ref.exit1273.3, %for.inc246.2
    #dbg_value(i64 4, !1628, !DIExpression(), !2877)
  %.pre = load i8, ptr %i_sub_partition189, align 1, !dbg !2845
  br label %if.end249

if.end249:                                        ; preds = %for.inc246.3, %if.end222
  %293 = phi i8 [ %.pre, %for.inc246.3 ], [ %.pre1841, %if.end222 ], !dbg !2845
    #dbg_value(i32 0, !1631, !DIExpression(), !2909)
  %arrayidx19.i1282 = getelementptr inbounds i8, ptr %mvp.i, i64 2
    #dbg_value(i64 0, !1631, !DIExpression(), !2909)
  %idxprom260 = zext i8 %293 to i64, !dbg !2910
  %arrayidx261 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260, !dbg !2910
  %294 = load i8, ptr %arrayidx261, align 1, !dbg !2910
  %tobool262.not = icmp eq i8 %294, 0, !dbg !2910
  br i1 %tobool262.not, label %for.inc279, label %do.body264, !dbg !2911

do.body264:                                       ; preds = %if.end249
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1713, ptr %mvp.i, !DIExpression(), !2912)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2912)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2912)
    #dbg_value(i32 0, !2342, !DIExpression(), !2912)
    #dbg_value(i64 0, !2343, !DIExpression(), !2912)
    #dbg_value(i32 2, !2344, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2914
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i) #7, !dbg !2915
  %arrayidx4.i1277 = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !2916
  %295 = load i16, ptr %arrayidx4.i1277, align 4, !dbg !2916
  %conv.i1278 = sext i16 %295 to i32, !dbg !2916
  %296 = load i16, ptr %mvp.i, align 4, !dbg !2917
  %conv7.i = sext i16 %296 to i32, !dbg !2917
  %sub.i1279 = sub nsw i32 %conv.i1278, %conv7.i, !dbg !2918
    #dbg_value(i32 %sub.i1279, !2345, !DIExpression(), !2912)
  %arrayidx17.i1280 = getelementptr inbounds i8, ptr %h, i64 25250, !dbg !2919
  %297 = load i16, ptr %arrayidx17.i1280, align 2, !dbg !2919
  %conv18.i1281 = sext i16 %297 to i32, !dbg !2919
  %298 = load i16, ptr %arrayidx19.i1282, align 2, !dbg !2920
  %conv20.i = sext i16 %298 to i32, !dbg !2920
  %sub21.i = sub nsw i32 %conv18.i1281, %conv20.i, !dbg !2921
    #dbg_value(i32 %sub21.i, !2346, !DIExpression(), !2912)
  %arrayidx30.i = getelementptr inbounds i8, ptr %h, i64 25542, !dbg !2922
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 25528, !dbg !2923
  %arrayidx30.val.i = load i8, ptr %arrayidx30.i, align 1, !dbg !2924
  %299 = getelementptr i8, ptr %h, i64 25543, !dbg !2924
  %arrayidx30.val71.i = load i8, ptr %299, align 1, !dbg !2924
  %arrayidx41.val.i = load i8, ptr %arrayidx41.i, align 1, !dbg !2924
  %300 = getelementptr i8, ptr %h, i64 25529, !dbg !2924
  %arrayidx41.val72.i = load i8, ptr %300, align 1, !dbg !2924
    #dbg_value(ptr undef, !2364, !DIExpression(), !2925)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2925)
  %conv.i.i1283 = zext i8 %arrayidx30.val.i to i32, !dbg !2927
  %conv2.i.i = zext i8 %arrayidx41.val.i to i32, !dbg !2928
  %add.i.i1284 = add nuw nsw i32 %conv2.i.i, %conv.i.i1283, !dbg !2929
    #dbg_value(i32 %add.i.i1284, !2370, !DIExpression(), !2925)
  %conv4.i.i = zext i8 %arrayidx30.val71.i to i32, !dbg !2930
  %conv6.i.i = zext i8 %arrayidx41.val72.i to i32, !dbg !2931
  %add7.i.i = add nuw nsw i32 %conv6.i.i, %conv4.i.i, !dbg !2932
    #dbg_value(i32 %add7.i.i, !2371, !DIExpression(), !2925)
  %cmp.i.i = icmp ugt i32 %add.i.i1284, 2, !dbg !2933
  %conv8.i.i = zext i1 %cmp.i.i to i32, !dbg !2933
  %cmp9.i.i = icmp ugt i32 %add.i.i1284, 32, !dbg !2934
  %conv10.i.i = zext i1 %cmp9.i.i to i32, !dbg !2934
  %add11.i.i = add nuw nsw i32 %conv8.i.i, %conv10.i.i, !dbg !2935
    #dbg_value(!DIArgList(i1 %cmp.i.i, i1 %cmp9.i.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
  %cmp12.i.i = icmp ugt i32 %add7.i.i, 2, !dbg !2936
  %conv13.i.i = zext i1 %cmp12.i.i to i32, !dbg !2936
  %cmp14.i.i = icmp ugt i32 %add7.i.i, 32, !dbg !2937
  %conv15.i.i1285 = zext i1 %cmp14.i.i to i32, !dbg !2937
  %add16.i.i = add nuw nsw i32 %conv13.i.i, %conv15.i.i1285, !dbg !2938
    #dbg_value(!DIArgList(i1 %cmp12.i.i, i1 %cmp14.i.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
    #dbg_value(!DIArgList(i32 %add16.i.i, i32 %add11.i.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2912)
  %call44.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279, i32 noundef %add11.i.i), !dbg !2939
    #dbg_value(i32 %call44.i, !2345, !DIExpression(), !2912)
  %call46.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i, i32 noundef %add16.i.i), !dbg !2940
    #dbg_value(i32 %call46.i, !2346, !DIExpression(), !2912)
    #dbg_value(i32 %call44.i, !2388, !DIExpression(), !2941)
    #dbg_value(i32 %call46.i, !2393, !DIExpression(), !2941)
  %shl.i73.i = shl nuw nsw i32 %call46.i, 8, !dbg !2943
  %add.i74.i = add nuw nsw i32 %shl.i73.i, %call44.i, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2945
    #dbg_value(i32 %add.i74.i, !1633, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2946)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2947)
    #dbg_value(i8 0, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i8 0, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i32 2, !2054, !DIExpression(), !2947)
    #dbg_value(i32 2, !2055, !DIExpression(), !2947)
    #dbg_value(i32 0, !2056, !DIExpression(), !2947)
    #dbg_value(i32 %add.i74.i, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2947)
  %arrayidx4.i1290 = getelementptr inbounds i8, ptr %h, i64 25544, !dbg !2949
    #dbg_value(ptr %arrayidx4.i1290, !2058, !DIExpression(), !2947)
  %conv.i1291 = and i32 %add.i74.i, 65535, !dbg !2950
    #dbg_value(ptr %arrayidx4.i1290, !2064, !DIExpression(), !2951)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2951)
    #dbg_value(i32 2, !2070, !DIExpression(), !2951)
    #dbg_value(i32 2, !2071, !DIExpression(), !2951)
    #dbg_value(i32 %conv.i1291, !2072, !DIExpression(), !2951)
    #dbg_value(ptr %arrayidx4.i1290, !2073, !DIExpression(), !2951)
    #dbg_value(i32 %add.i74.i, !2074, !DIExpression(), !2951)
  %mul8.i.i1292 = mul nuw i32 %conv.i1291, 65537, !dbg !2953
    #dbg_value(i32 %mul8.i.i1292, !2075, !DIExpression(), !2951)
    #dbg_value(i32 %mul8.i.i1292, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2951)
    #dbg_value(i32 16, !2071, !DIExpression(), !2951)
  store i32 %mul8.i.i1292, ptr %arrayidx4.i1290, align 4, !dbg !2954
  %add.ptr49.i.i1295 = getelementptr inbounds i8, ptr %h, i64 25560, !dbg !2955
  store i32 %mul8.i.i1292, ptr %add.ptr49.i.i1295, align 4, !dbg !2956
  br label %for.inc279, !dbg !2957

for.inc279:                                       ; preds = %if.end249, %do.body264
    #dbg_value(i64 1, !1631, !DIExpression(), !2909)
  %301 = load i8, ptr %arrayidx191.1, align 1, !dbg !2845
  %idxprom260.1 = zext i8 %301 to i64, !dbg !2910
  %arrayidx261.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.1, !dbg !2910
  %302 = load i8, ptr %arrayidx261.1, align 1, !dbg !2910
  %tobool262.not.1 = icmp eq i8 %302, 0, !dbg !2910
  br i1 %tobool262.not.1, label %for.inc279.1, label %do.body264.1, !dbg !2911

do.body264.1:                                     ; preds = %for.inc279
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1713, ptr %mvp.i, !DIExpression(), !2912)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2912)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2912)
    #dbg_value(i32 0, !2342, !DIExpression(), !2912)
    #dbg_value(i64 4, !2343, !DIExpression(), !2912)
    #dbg_value(i32 2, !2344, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2914
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i) #7, !dbg !2915
  %arrayidx4.i1277.1 = getelementptr inbounds i8, ptr %h, i64 25256, !dbg !2916
  %303 = load i16, ptr %arrayidx4.i1277.1, align 4, !dbg !2916
  %conv.i1278.1 = sext i16 %303 to i32, !dbg !2916
  %304 = load i16, ptr %mvp.i, align 4, !dbg !2917
  %conv7.i.1 = sext i16 %304 to i32, !dbg !2917
  %sub.i1279.1 = sub nsw i32 %conv.i1278.1, %conv7.i.1, !dbg !2918
    #dbg_value(i32 %sub.i1279.1, !2345, !DIExpression(), !2912)
  %arrayidx17.i1280.1 = getelementptr inbounds i8, ptr %h, i64 25258, !dbg !2919
  %305 = load i16, ptr %arrayidx17.i1280.1, align 2, !dbg !2919
  %conv18.i1281.1 = sext i16 %305 to i32, !dbg !2919
  %306 = load i16, ptr %arrayidx19.i1282, align 2, !dbg !2920
  %conv20.i.1 = sext i16 %306 to i32, !dbg !2920
  %sub21.i.1 = sub nsw i32 %conv18.i1281.1, %conv20.i.1, !dbg !2921
    #dbg_value(i32 %sub21.i.1, !2346, !DIExpression(), !2912)
  %arrayidx30.i.1 = getelementptr inbounds i8, ptr %h, i64 25546, !dbg !2922
  %arrayidx41.i.1 = getelementptr inbounds i8, ptr %h, i64 25532, !dbg !2923
  %arrayidx30.val.i.1 = load i8, ptr %arrayidx30.i.1, align 1, !dbg !2924
  %307 = getelementptr i8, ptr %h, i64 25547, !dbg !2924
  %arrayidx30.val71.i.1 = load i8, ptr %307, align 1, !dbg !2924
  %arrayidx41.val.i.1 = load i8, ptr %arrayidx41.i.1, align 1, !dbg !2924
  %308 = getelementptr i8, ptr %h, i64 25533, !dbg !2924
  %arrayidx41.val72.i.1 = load i8, ptr %308, align 1, !dbg !2924
    #dbg_value(ptr undef, !2364, !DIExpression(), !2925)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2925)
  %conv.i.i1283.1 = zext i8 %arrayidx30.val.i.1 to i32, !dbg !2927
  %conv2.i.i.1 = zext i8 %arrayidx41.val.i.1 to i32, !dbg !2928
  %add.i.i1284.1 = add nuw nsw i32 %conv2.i.i.1, %conv.i.i1283.1, !dbg !2929
    #dbg_value(i32 %add.i.i1284.1, !2370, !DIExpression(), !2925)
  %conv4.i.i.1 = zext i8 %arrayidx30.val71.i.1 to i32, !dbg !2930
  %conv6.i.i.1 = zext i8 %arrayidx41.val72.i.1 to i32, !dbg !2931
  %add7.i.i.1 = add nuw nsw i32 %conv6.i.i.1, %conv4.i.i.1, !dbg !2932
    #dbg_value(i32 %add7.i.i.1, !2371, !DIExpression(), !2925)
  %cmp.i.i.1 = icmp ugt i32 %add.i.i1284.1, 2, !dbg !2933
  %conv8.i.i.1 = zext i1 %cmp.i.i.1 to i32, !dbg !2933
  %cmp9.i.i.1 = icmp ugt i32 %add.i.i1284.1, 32, !dbg !2934
  %conv10.i.i.1 = zext i1 %cmp9.i.i.1 to i32, !dbg !2934
  %add11.i.i.1 = add nuw nsw i32 %conv8.i.i.1, %conv10.i.i.1, !dbg !2935
    #dbg_value(!DIArgList(i1 %cmp.i.i.1, i1 %cmp9.i.i.1), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
  %cmp12.i.i.1 = icmp ugt i32 %add7.i.i.1, 2, !dbg !2936
  %conv13.i.i.1 = zext i1 %cmp12.i.i.1 to i32, !dbg !2936
  %cmp14.i.i.1 = icmp ugt i32 %add7.i.i.1, 32, !dbg !2937
  %conv15.i.i1285.1 = zext i1 %cmp14.i.i.1 to i32, !dbg !2937
  %add16.i.i.1 = add nuw nsw i32 %conv13.i.i.1, %conv15.i.i1285.1, !dbg !2938
    #dbg_value(!DIArgList(i1 %cmp12.i.i.1, i1 %cmp14.i.i.1), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
    #dbg_value(!DIArgList(i32 %add16.i.i.1, i32 %add11.i.i.1), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2912)
  %call44.i.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.1, i32 noundef %add11.i.i.1), !dbg !2939
    #dbg_value(i32 %call44.i.1, !2345, !DIExpression(), !2912)
  %call46.i.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.1, i32 noundef %add16.i.i.1), !dbg !2940
    #dbg_value(i32 %call46.i.1, !2346, !DIExpression(), !2912)
    #dbg_value(i32 %call44.i.1, !2388, !DIExpression(), !2941)
    #dbg_value(i32 %call46.i.1, !2393, !DIExpression(), !2941)
  %shl.i73.i.1 = shl nuw nsw i32 %call46.i.1, 8, !dbg !2943
  %add.i74.i.1 = add nuw nsw i32 %shl.i73.i.1, %call44.i.1, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2945
    #dbg_value(i32 %add.i74.i.1, !1633, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2946)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2947)
    #dbg_value(i8 2, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i8 0, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i32 2, !2054, !DIExpression(), !2947)
    #dbg_value(i32 2, !2055, !DIExpression(), !2947)
    #dbg_value(i32 0, !2056, !DIExpression(), !2947)
    #dbg_value(i32 %add.i74.i.1, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2947)
  %arrayidx4.i1290.1 = getelementptr inbounds i8, ptr %h, i64 25548, !dbg !2949
    #dbg_value(ptr %arrayidx4.i1290.1, !2058, !DIExpression(), !2947)
  %conv.i1291.1 = and i32 %add.i74.i.1, 65535, !dbg !2950
    #dbg_value(ptr %arrayidx4.i1290.1, !2064, !DIExpression(), !2951)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2951)
    #dbg_value(i32 2, !2070, !DIExpression(), !2951)
    #dbg_value(i32 2, !2071, !DIExpression(), !2951)
    #dbg_value(i32 %conv.i1291.1, !2072, !DIExpression(), !2951)
    #dbg_value(ptr %arrayidx4.i1290.1, !2073, !DIExpression(), !2951)
    #dbg_value(i32 %add.i74.i.1, !2074, !DIExpression(), !2951)
  %mul8.i.i1292.1 = mul nuw i32 %conv.i1291.1, 65537, !dbg !2953
    #dbg_value(i32 %mul8.i.i1292.1, !2075, !DIExpression(), !2951)
    #dbg_value(i32 %mul8.i.i1292.1, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2951)
    #dbg_value(i32 16, !2071, !DIExpression(), !2951)
  store i32 %mul8.i.i1292.1, ptr %arrayidx4.i1290.1, align 4, !dbg !2954
  %add.ptr49.i.i1295.1 = getelementptr inbounds i8, ptr %h, i64 25564, !dbg !2955
  store i32 %mul8.i.i1292.1, ptr %add.ptr49.i.i1295.1, align 4, !dbg !2956
  br label %for.inc279.1, !dbg !2957

for.inc279.1:                                     ; preds = %do.body264.1, %for.inc279
    #dbg_value(i64 2, !1631, !DIExpression(), !2909)
  %309 = load i8, ptr %arrayidx191.2, align 1, !dbg !2845
  %idxprom260.2 = zext i8 %309 to i64, !dbg !2910
  %arrayidx261.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.2, !dbg !2910
  %310 = load i8, ptr %arrayidx261.2, align 1, !dbg !2910
  %tobool262.not.2 = icmp eq i8 %310, 0, !dbg !2910
  br i1 %tobool262.not.2, label %for.inc279.2, label %do.body264.2, !dbg !2911

do.body264.2:                                     ; preds = %for.inc279.1
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1713, ptr %mvp.i, !DIExpression(), !2912)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2912)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2912)
    #dbg_value(i32 0, !2342, !DIExpression(), !2912)
    #dbg_value(i64 8, !2343, !DIExpression(), !2912)
    #dbg_value(i32 2, !2344, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2914
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %mvp.i) #7, !dbg !2915
  %arrayidx4.i1277.2 = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !2916
  %311 = load i16, ptr %arrayidx4.i1277.2, align 4, !dbg !2916
  %conv.i1278.2 = sext i16 %311 to i32, !dbg !2916
  %312 = load i16, ptr %mvp.i, align 4, !dbg !2917
  %conv7.i.2 = sext i16 %312 to i32, !dbg !2917
  %sub.i1279.2 = sub nsw i32 %conv.i1278.2, %conv7.i.2, !dbg !2918
    #dbg_value(i32 %sub.i1279.2, !2345, !DIExpression(), !2912)
  %arrayidx17.i1280.2 = getelementptr inbounds i8, ptr %h, i64 25314, !dbg !2919
  %313 = load i16, ptr %arrayidx17.i1280.2, align 2, !dbg !2919
  %conv18.i1281.2 = sext i16 %313 to i32, !dbg !2919
  %314 = load i16, ptr %arrayidx19.i1282, align 2, !dbg !2920
  %conv20.i.2 = sext i16 %314 to i32, !dbg !2920
  %sub21.i.2 = sub nsw i32 %conv18.i1281.2, %conv20.i.2, !dbg !2921
    #dbg_value(i32 %sub21.i.2, !2346, !DIExpression(), !2912)
  %arrayidx30.i.2 = getelementptr inbounds i8, ptr %h, i64 25574, !dbg !2922
  %arrayidx41.i.2 = getelementptr inbounds i8, ptr %h, i64 25560, !dbg !2923
  %arrayidx30.val.i.2 = load i8, ptr %arrayidx30.i.2, align 1, !dbg !2924
  %315 = getelementptr i8, ptr %h, i64 25575, !dbg !2924
  %arrayidx30.val71.i.2 = load i8, ptr %315, align 1, !dbg !2924
  %arrayidx41.val.i.2 = load i8, ptr %arrayidx41.i.2, align 1, !dbg !2924
  %316 = getelementptr i8, ptr %h, i64 25561, !dbg !2924
  %arrayidx41.val72.i.2 = load i8, ptr %316, align 1, !dbg !2924
    #dbg_value(ptr undef, !2364, !DIExpression(), !2925)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2925)
  %conv.i.i1283.2 = zext i8 %arrayidx30.val.i.2 to i32, !dbg !2927
  %conv2.i.i.2 = zext i8 %arrayidx41.val.i.2 to i32, !dbg !2928
  %add.i.i1284.2 = add nuw nsw i32 %conv2.i.i.2, %conv.i.i1283.2, !dbg !2929
    #dbg_value(i32 %add.i.i1284.2, !2370, !DIExpression(), !2925)
  %conv4.i.i.2 = zext i8 %arrayidx30.val71.i.2 to i32, !dbg !2930
  %conv6.i.i.2 = zext i8 %arrayidx41.val72.i.2 to i32, !dbg !2931
  %add7.i.i.2 = add nuw nsw i32 %conv6.i.i.2, %conv4.i.i.2, !dbg !2932
    #dbg_value(i32 %add7.i.i.2, !2371, !DIExpression(), !2925)
  %cmp.i.i.2 = icmp ugt i32 %add.i.i1284.2, 2, !dbg !2933
  %conv8.i.i.2 = zext i1 %cmp.i.i.2 to i32, !dbg !2933
  %cmp9.i.i.2 = icmp ugt i32 %add.i.i1284.2, 32, !dbg !2934
  %conv10.i.i.2 = zext i1 %cmp9.i.i.2 to i32, !dbg !2934
  %add11.i.i.2 = add nuw nsw i32 %conv8.i.i.2, %conv10.i.i.2, !dbg !2935
    #dbg_value(!DIArgList(i1 %cmp.i.i.2, i1 %cmp9.i.i.2), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
  %cmp12.i.i.2 = icmp ugt i32 %add7.i.i.2, 2, !dbg !2936
  %conv13.i.i.2 = zext i1 %cmp12.i.i.2 to i32, !dbg !2936
  %cmp14.i.i.2 = icmp ugt i32 %add7.i.i.2, 32, !dbg !2937
  %conv15.i.i1285.2 = zext i1 %cmp14.i.i.2 to i32, !dbg !2937
  %add16.i.i.2 = add nuw nsw i32 %conv13.i.i.2, %conv15.i.i1285.2, !dbg !2938
    #dbg_value(!DIArgList(i1 %cmp12.i.i.2, i1 %cmp14.i.i.2), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
    #dbg_value(!DIArgList(i32 %add16.i.i.2, i32 %add11.i.i.2), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2912)
  %call44.i.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.2, i32 noundef %add11.i.i.2), !dbg !2939
    #dbg_value(i32 %call44.i.2, !2345, !DIExpression(), !2912)
  %call46.i.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.2, i32 noundef %add16.i.i.2), !dbg !2940
    #dbg_value(i32 %call46.i.2, !2346, !DIExpression(), !2912)
    #dbg_value(i32 %call44.i.2, !2388, !DIExpression(), !2941)
    #dbg_value(i32 %call46.i.2, !2393, !DIExpression(), !2941)
  %shl.i73.i.2 = shl nuw nsw i32 %call46.i.2, 8, !dbg !2943
  %add.i74.i.2 = add nuw nsw i32 %shl.i73.i.2, %call44.i.2, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2945
    #dbg_value(i32 %add.i74.i.2, !1633, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2946)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2947)
    #dbg_value(i8 0, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i8 2, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i32 2, !2054, !DIExpression(), !2947)
    #dbg_value(i32 2, !2055, !DIExpression(), !2947)
    #dbg_value(i32 0, !2056, !DIExpression(), !2947)
    #dbg_value(i32 %add.i74.i.2, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2947)
  %arrayidx4.i1290.2 = getelementptr inbounds i8, ptr %h, i64 25576, !dbg !2949
    #dbg_value(ptr %arrayidx4.i1290.2, !2058, !DIExpression(), !2947)
  %conv.i1291.2 = and i32 %add.i74.i.2, 65535, !dbg !2950
    #dbg_value(ptr %arrayidx4.i1290.2, !2064, !DIExpression(), !2951)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2951)
    #dbg_value(i32 2, !2070, !DIExpression(), !2951)
    #dbg_value(i32 2, !2071, !DIExpression(), !2951)
    #dbg_value(i32 %conv.i1291.2, !2072, !DIExpression(), !2951)
    #dbg_value(ptr %arrayidx4.i1290.2, !2073, !DIExpression(), !2951)
    #dbg_value(i32 %add.i74.i.2, !2074, !DIExpression(), !2951)
  %mul8.i.i1292.2 = mul nuw i32 %conv.i1291.2, 65537, !dbg !2953
    #dbg_value(i32 %mul8.i.i1292.2, !2075, !DIExpression(), !2951)
    #dbg_value(i32 %mul8.i.i1292.2, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2951)
    #dbg_value(i32 16, !2071, !DIExpression(), !2951)
  store i32 %mul8.i.i1292.2, ptr %arrayidx4.i1290.2, align 4, !dbg !2954
  %add.ptr49.i.i1295.2 = getelementptr inbounds i8, ptr %h, i64 25592, !dbg !2955
  store i32 %mul8.i.i1292.2, ptr %add.ptr49.i.i1295.2, align 4, !dbg !2956
  br label %for.inc279.2, !dbg !2957

for.inc279.2:                                     ; preds = %do.body264.2, %for.inc279.1
    #dbg_value(i64 3, !1631, !DIExpression(), !2909)
  %317 = load i8, ptr %arrayidx191.3, align 1, !dbg !2845
  %idxprom260.3 = zext i8 %317 to i64, !dbg !2910
  %arrayidx261.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.3, !dbg !2910
  %318 = load i8, ptr %arrayidx261.3, align 1, !dbg !2910
  %tobool262.not.3 = icmp eq i8 %318, 0, !dbg !2910
  br i1 %tobool262.not.3, label %for.inc279.3, label %do.body264.3, !dbg !2911

do.body264.3:                                     ; preds = %for.inc279.2
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1713, ptr %mvp.i, !DIExpression(), !2912)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2912)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2912)
    #dbg_value(i32 0, !2342, !DIExpression(), !2912)
    #dbg_value(i64 12, !2343, !DIExpression(), !2912)
    #dbg_value(i32 2, !2344, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2914
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %mvp.i) #7, !dbg !2915
  %arrayidx4.i1277.3 = getelementptr inbounds i8, ptr %h, i64 25320, !dbg !2916
  %319 = load i16, ptr %arrayidx4.i1277.3, align 4, !dbg !2916
  %conv.i1278.3 = sext i16 %319 to i32, !dbg !2916
  %320 = load i16, ptr %mvp.i, align 4, !dbg !2917
  %conv7.i.3 = sext i16 %320 to i32, !dbg !2917
  %sub.i1279.3 = sub nsw i32 %conv.i1278.3, %conv7.i.3, !dbg !2918
    #dbg_value(i32 %sub.i1279.3, !2345, !DIExpression(), !2912)
  %arrayidx17.i1280.3 = getelementptr inbounds i8, ptr %h, i64 25322, !dbg !2919
  %321 = load i16, ptr %arrayidx17.i1280.3, align 2, !dbg !2919
  %conv18.i1281.3 = sext i16 %321 to i32, !dbg !2919
  %322 = load i16, ptr %arrayidx19.i1282, align 2, !dbg !2920
  %conv20.i.3 = sext i16 %322 to i32, !dbg !2920
  %sub21.i.3 = sub nsw i32 %conv18.i1281.3, %conv20.i.3, !dbg !2921
    #dbg_value(i32 %sub21.i.3, !2346, !DIExpression(), !2912)
  %arrayidx30.i.3 = getelementptr inbounds i8, ptr %h, i64 25578, !dbg !2922
  %arrayidx41.i.3 = getelementptr inbounds i8, ptr %h, i64 25564, !dbg !2923
  %arrayidx30.val.i.3 = load i8, ptr %arrayidx30.i.3, align 1, !dbg !2924
  %323 = getelementptr i8, ptr %h, i64 25579, !dbg !2924
  %arrayidx30.val71.i.3 = load i8, ptr %323, align 1, !dbg !2924
  %arrayidx41.val.i.3 = load i8, ptr %arrayidx41.i.3, align 1, !dbg !2924
  %324 = getelementptr i8, ptr %h, i64 25565, !dbg !2924
  %arrayidx41.val72.i.3 = load i8, ptr %324, align 1, !dbg !2924
    #dbg_value(ptr undef, !2364, !DIExpression(), !2925)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2925)
  %conv.i.i1283.3 = zext i8 %arrayidx30.val.i.3 to i32, !dbg !2927
  %conv2.i.i.3 = zext i8 %arrayidx41.val.i.3 to i32, !dbg !2928
  %add.i.i1284.3 = add nuw nsw i32 %conv2.i.i.3, %conv.i.i1283.3, !dbg !2929
    #dbg_value(i32 %add.i.i1284.3, !2370, !DIExpression(), !2925)
  %conv4.i.i.3 = zext i8 %arrayidx30.val71.i.3 to i32, !dbg !2930
  %conv6.i.i.3 = zext i8 %arrayidx41.val72.i.3 to i32, !dbg !2931
  %add7.i.i.3 = add nuw nsw i32 %conv6.i.i.3, %conv4.i.i.3, !dbg !2932
    #dbg_value(i32 %add7.i.i.3, !2371, !DIExpression(), !2925)
  %cmp.i.i.3 = icmp ugt i32 %add.i.i1284.3, 2, !dbg !2933
  %conv8.i.i.3 = zext i1 %cmp.i.i.3 to i32, !dbg !2933
  %cmp9.i.i.3 = icmp ugt i32 %add.i.i1284.3, 32, !dbg !2934
  %conv10.i.i.3 = zext i1 %cmp9.i.i.3 to i32, !dbg !2934
  %add11.i.i.3 = add nuw nsw i32 %conv8.i.i.3, %conv10.i.i.3, !dbg !2935
    #dbg_value(!DIArgList(i1 %cmp.i.i.3, i1 %cmp9.i.i.3), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
  %cmp12.i.i.3 = icmp ugt i32 %add7.i.i.3, 2, !dbg !2936
  %conv13.i.i.3 = zext i1 %cmp12.i.i.3 to i32, !dbg !2936
  %cmp14.i.i.3 = icmp ugt i32 %add7.i.i.3, 32, !dbg !2937
  %conv15.i.i1285.3 = zext i1 %cmp14.i.i.3 to i32, !dbg !2937
  %add16.i.i.3 = add nuw nsw i32 %conv13.i.i.3, %conv15.i.i1285.3, !dbg !2938
    #dbg_value(!DIArgList(i1 %cmp12.i.i.3, i1 %cmp14.i.i.3), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2925)
    #dbg_value(!DIArgList(i32 %add16.i.i.3, i32 %add11.i.i.3), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2912)
  %call44.i.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.3, i32 noundef %add11.i.i.3), !dbg !2939
    #dbg_value(i32 %call44.i.3, !2345, !DIExpression(), !2912)
  %call46.i.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.3, i32 noundef %add16.i.i.3), !dbg !2940
    #dbg_value(i32 %call46.i.3, !2346, !DIExpression(), !2912)
    #dbg_value(i32 %call44.i.3, !2388, !DIExpression(), !2941)
    #dbg_value(i32 %call46.i.3, !2393, !DIExpression(), !2941)
  %shl.i73.i.3 = shl nuw nsw i32 %call46.i.3, 8, !dbg !2943
  %add.i74.i.3 = add nuw nsw i32 %shl.i73.i.3, %call44.i.3, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7, !dbg !2945
    #dbg_value(i32 %add.i74.i.3, !1633, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2946)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2947)
    #dbg_value(i8 2, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i8 2, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2947)
    #dbg_value(i32 2, !2054, !DIExpression(), !2947)
    #dbg_value(i32 2, !2055, !DIExpression(), !2947)
    #dbg_value(i32 0, !2056, !DIExpression(), !2947)
    #dbg_value(i32 %add.i74.i.3, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2947)
  %arrayidx4.i1290.3 = getelementptr inbounds i8, ptr %h, i64 25580, !dbg !2949
    #dbg_value(ptr %arrayidx4.i1290.3, !2058, !DIExpression(), !2947)
  %conv.i1291.3 = and i32 %add.i74.i.3, 65535, !dbg !2950
    #dbg_value(ptr %arrayidx4.i1290.3, !2064, !DIExpression(), !2951)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2951)
    #dbg_value(i32 2, !2070, !DIExpression(), !2951)
    #dbg_value(i32 2, !2071, !DIExpression(), !2951)
    #dbg_value(i32 %conv.i1291.3, !2072, !DIExpression(), !2951)
    #dbg_value(ptr %arrayidx4.i1290.3, !2073, !DIExpression(), !2951)
    #dbg_value(i32 %add.i74.i.3, !2074, !DIExpression(), !2951)
  %mul8.i.i1292.3 = mul nuw i32 %conv.i1291.3, 65537, !dbg !2953
    #dbg_value(i32 %mul8.i.i1292.3, !2075, !DIExpression(), !2951)
    #dbg_value(i32 %mul8.i.i1292.3, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2951)
    #dbg_value(i32 16, !2071, !DIExpression(), !2951)
  store i32 %mul8.i.i1292.3, ptr %arrayidx4.i1290.3, align 4, !dbg !2954
  %add.ptr49.i.i1295.3 = getelementptr inbounds i8, ptr %h, i64 25596, !dbg !2955
  store i32 %mul8.i.i1292.3, ptr %add.ptr49.i.i1295.3, align 4, !dbg !2956
  br label %for.inc279.3, !dbg !2957

for.inc279.3:                                     ; preds = %do.body264.3, %for.inc279.2
    #dbg_value(i64 4, !1631, !DIExpression(), !2909)
    #dbg_value(i32 0, !1637, !DIExpression(), !2958)
  %arrayidx19.i1307 = getelementptr inbounds i8, ptr %mvp.i1296, i64 2
    #dbg_value(i64 0, !1637, !DIExpression(), !2958)
  %325 = load i8, ptr %i_sub_partition189, align 1, !dbg !2959
  %idxprom292 = zext i8 %325 to i64, !dbg !2960
  %arrayidx293 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292, !dbg !2960
  %326 = load i8, ptr %arrayidx293, align 1, !dbg !2960
  %tobool294.not = icmp eq i8 %326, 0, !dbg !2960
  br i1 %tobool294.not, label %for.inc311, label %do.body296, !dbg !2961

do.body296:                                       ; preds = %for.inc279.3
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1712, ptr %mvp.i1296, !DIExpression(), !2962)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2962)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2962)
    #dbg_value(i32 1, !2342, !DIExpression(), !2962)
    #dbg_value(i64 0, !2343, !DIExpression(), !2962)
    #dbg_value(i32 2, !2344, !DIExpression(), !2962)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2964
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7, !dbg !2965
  %arrayidx4.i1301 = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !2966
  %327 = load i16, ptr %arrayidx4.i1301, align 4, !dbg !2966
  %conv.i1302 = sext i16 %327 to i32, !dbg !2966
  %328 = load i16, ptr %mvp.i1296, align 4, !dbg !2967
  %conv7.i1303 = sext i16 %328 to i32, !dbg !2967
  %sub.i1304 = sub nsw i32 %conv.i1302, %conv7.i1303, !dbg !2968
    #dbg_value(i32 %sub.i1304, !2345, !DIExpression(), !2962)
  %arrayidx17.i1305 = getelementptr inbounds i8, ptr %h, i64 25410, !dbg !2969
  %329 = load i16, ptr %arrayidx17.i1305, align 2, !dbg !2969
  %conv18.i1306 = sext i16 %329 to i32, !dbg !2969
  %330 = load i16, ptr %arrayidx19.i1307, align 2, !dbg !2970
  %conv20.i1308 = sext i16 %330 to i32, !dbg !2970
  %sub21.i1309 = sub nsw i32 %conv18.i1306, %conv20.i1308, !dbg !2971
    #dbg_value(i32 %sub21.i1309, !2346, !DIExpression(), !2962)
  %arrayidx30.i1313 = getelementptr inbounds i8, ptr %h, i64 25622, !dbg !2972
  %arrayidx41.i1316 = getelementptr inbounds i8, ptr %h, i64 25608, !dbg !2973
  %arrayidx30.val.i1317 = load i8, ptr %arrayidx30.i1313, align 1, !dbg !2974
  %331 = getelementptr i8, ptr %h, i64 25623, !dbg !2974
  %arrayidx30.val71.i1318 = load i8, ptr %331, align 1, !dbg !2974
  %arrayidx41.val.i1319 = load i8, ptr %arrayidx41.i1316, align 1, !dbg !2974
  %332 = getelementptr i8, ptr %h, i64 25609, !dbg !2974
  %arrayidx41.val72.i1320 = load i8, ptr %332, align 1, !dbg !2974
    #dbg_value(ptr undef, !2364, !DIExpression(), !2975)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2975)
  %conv.i.i1321 = zext i8 %arrayidx30.val.i1317 to i32, !dbg !2977
  %conv2.i.i1322 = zext i8 %arrayidx41.val.i1319 to i32, !dbg !2978
  %add.i.i1323 = add nuw nsw i32 %conv2.i.i1322, %conv.i.i1321, !dbg !2979
    #dbg_value(i32 %add.i.i1323, !2370, !DIExpression(), !2975)
  %conv4.i.i1324 = zext i8 %arrayidx30.val71.i1318 to i32, !dbg !2980
  %conv6.i.i1325 = zext i8 %arrayidx41.val72.i1320 to i32, !dbg !2981
  %add7.i.i1326 = add nuw nsw i32 %conv6.i.i1325, %conv4.i.i1324, !dbg !2982
    #dbg_value(i32 %add7.i.i1326, !2371, !DIExpression(), !2975)
  %cmp.i.i1327 = icmp ugt i32 %add.i.i1323, 2, !dbg !2983
  %conv8.i.i1328 = zext i1 %cmp.i.i1327 to i32, !dbg !2983
  %cmp9.i.i1329 = icmp ugt i32 %add.i.i1323, 32, !dbg !2984
  %conv10.i.i1330 = zext i1 %cmp9.i.i1329 to i32, !dbg !2984
  %add11.i.i1331 = add nuw nsw i32 %conv8.i.i1328, %conv10.i.i1330, !dbg !2985
    #dbg_value(!DIArgList(i1 %cmp.i.i1327, i1 %cmp9.i.i1329), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
  %cmp12.i.i1332 = icmp ugt i32 %add7.i.i1326, 2, !dbg !2986
  %conv13.i.i1333 = zext i1 %cmp12.i.i1332 to i32, !dbg !2986
  %cmp14.i.i1334 = icmp ugt i32 %add7.i.i1326, 32, !dbg !2987
  %conv15.i.i1335 = zext i1 %cmp14.i.i1334 to i32, !dbg !2987
  %add16.i.i1336 = add nuw nsw i32 %conv13.i.i1333, %conv15.i.i1335, !dbg !2988
    #dbg_value(!DIArgList(i1 %cmp12.i.i1332, i1 %cmp14.i.i1334), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
    #dbg_value(!DIArgList(i32 %add16.i.i1336, i32 %add11.i.i1331), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2962)
  %call44.i1337 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304, i32 noundef %add11.i.i1331), !dbg !2989
    #dbg_value(i32 %call44.i1337, !2345, !DIExpression(), !2962)
  %call46.i1338 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309, i32 noundef %add16.i.i1336), !dbg !2990
    #dbg_value(i32 %call46.i1338, !2346, !DIExpression(), !2962)
    #dbg_value(i32 %call44.i1337, !2388, !DIExpression(), !2991)
    #dbg_value(i32 %call46.i1338, !2393, !DIExpression(), !2991)
  %shl.i73.i1339 = shl nuw nsw i32 %call46.i1338, 8, !dbg !2993
  %add.i74.i1340 = add nuw nsw i32 %shl.i73.i1339, %call44.i1337, !dbg !2994
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2995
    #dbg_value(i32 %add.i74.i1340, !1639, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2996)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2997)
    #dbg_value(i8 0, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i8 0, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i32 2, !2054, !DIExpression(), !2997)
    #dbg_value(i32 2, !2055, !DIExpression(), !2997)
    #dbg_value(i32 1, !2056, !DIExpression(), !2997)
    #dbg_value(i32 %add.i74.i1340, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2997)
  %arrayidx4.i1347 = getelementptr inbounds i8, ptr %h, i64 25624, !dbg !2999
    #dbg_value(ptr %arrayidx4.i1347, !2058, !DIExpression(), !2997)
  %conv.i1348 = and i32 %add.i74.i1340, 65535, !dbg !3000
    #dbg_value(ptr %arrayidx4.i1347, !2064, !DIExpression(), !3001)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3001)
    #dbg_value(i32 2, !2070, !DIExpression(), !3001)
    #dbg_value(i32 2, !2071, !DIExpression(), !3001)
    #dbg_value(i32 %conv.i1348, !2072, !DIExpression(), !3001)
    #dbg_value(ptr %arrayidx4.i1347, !2073, !DIExpression(), !3001)
    #dbg_value(i32 %add.i74.i1340, !2074, !DIExpression(), !3001)
  %mul8.i.i1349 = mul nuw i32 %conv.i1348, 65537, !dbg !3003
    #dbg_value(i32 %mul8.i.i1349, !2075, !DIExpression(), !3001)
    #dbg_value(i32 %mul8.i.i1349, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3001)
    #dbg_value(i32 16, !2071, !DIExpression(), !3001)
  store i32 %mul8.i.i1349, ptr %arrayidx4.i1347, align 4, !dbg !3004
  %add.ptr49.i.i1352 = getelementptr inbounds i8, ptr %h, i64 25640, !dbg !3005
  store i32 %mul8.i.i1349, ptr %add.ptr49.i.i1352, align 4, !dbg !3006
  br label %for.inc311, !dbg !3007

for.inc311:                                       ; preds = %for.inc279.3, %do.body296
    #dbg_value(i64 1, !1637, !DIExpression(), !2958)
  %333 = load i8, ptr %arrayidx191.1, align 1, !dbg !2959
  %idxprom292.1 = zext i8 %333 to i64, !dbg !2960
  %arrayidx293.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.1, !dbg !2960
  %334 = load i8, ptr %arrayidx293.1, align 1, !dbg !2960
  %tobool294.not.1 = icmp eq i8 %334, 0, !dbg !2960
  br i1 %tobool294.not.1, label %for.inc311.1, label %do.body296.1, !dbg !2961

do.body296.1:                                     ; preds = %for.inc311
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1712, ptr %mvp.i1296, !DIExpression(), !2962)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2962)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2962)
    #dbg_value(i32 1, !2342, !DIExpression(), !2962)
    #dbg_value(i64 4, !2343, !DIExpression(), !2962)
    #dbg_value(i32 2, !2344, !DIExpression(), !2962)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2964
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7, !dbg !2965
  %arrayidx4.i1301.1 = getelementptr inbounds i8, ptr %h, i64 25416, !dbg !2966
  %335 = load i16, ptr %arrayidx4.i1301.1, align 4, !dbg !2966
  %conv.i1302.1 = sext i16 %335 to i32, !dbg !2966
  %336 = load i16, ptr %mvp.i1296, align 4, !dbg !2967
  %conv7.i1303.1 = sext i16 %336 to i32, !dbg !2967
  %sub.i1304.1 = sub nsw i32 %conv.i1302.1, %conv7.i1303.1, !dbg !2968
    #dbg_value(i32 %sub.i1304.1, !2345, !DIExpression(), !2962)
  %arrayidx17.i1305.1 = getelementptr inbounds i8, ptr %h, i64 25418, !dbg !2969
  %337 = load i16, ptr %arrayidx17.i1305.1, align 2, !dbg !2969
  %conv18.i1306.1 = sext i16 %337 to i32, !dbg !2969
  %338 = load i16, ptr %arrayidx19.i1307, align 2, !dbg !2970
  %conv20.i1308.1 = sext i16 %338 to i32, !dbg !2970
  %sub21.i1309.1 = sub nsw i32 %conv18.i1306.1, %conv20.i1308.1, !dbg !2971
    #dbg_value(i32 %sub21.i1309.1, !2346, !DIExpression(), !2962)
  %arrayidx30.i1313.1 = getelementptr inbounds i8, ptr %h, i64 25626, !dbg !2972
  %arrayidx41.i1316.1 = getelementptr inbounds i8, ptr %h, i64 25612, !dbg !2973
  %arrayidx30.val.i1317.1 = load i8, ptr %arrayidx30.i1313.1, align 1, !dbg !2974
  %339 = getelementptr i8, ptr %h, i64 25627, !dbg !2974
  %arrayidx30.val71.i1318.1 = load i8, ptr %339, align 1, !dbg !2974
  %arrayidx41.val.i1319.1 = load i8, ptr %arrayidx41.i1316.1, align 1, !dbg !2974
  %340 = getelementptr i8, ptr %h, i64 25613, !dbg !2974
  %arrayidx41.val72.i1320.1 = load i8, ptr %340, align 1, !dbg !2974
    #dbg_value(ptr undef, !2364, !DIExpression(), !2975)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2975)
  %conv.i.i1321.1 = zext i8 %arrayidx30.val.i1317.1 to i32, !dbg !2977
  %conv2.i.i1322.1 = zext i8 %arrayidx41.val.i1319.1 to i32, !dbg !2978
  %add.i.i1323.1 = add nuw nsw i32 %conv2.i.i1322.1, %conv.i.i1321.1, !dbg !2979
    #dbg_value(i32 %add.i.i1323.1, !2370, !DIExpression(), !2975)
  %conv4.i.i1324.1 = zext i8 %arrayidx30.val71.i1318.1 to i32, !dbg !2980
  %conv6.i.i1325.1 = zext i8 %arrayidx41.val72.i1320.1 to i32, !dbg !2981
  %add7.i.i1326.1 = add nuw nsw i32 %conv6.i.i1325.1, %conv4.i.i1324.1, !dbg !2982
    #dbg_value(i32 %add7.i.i1326.1, !2371, !DIExpression(), !2975)
  %cmp.i.i1327.1 = icmp ugt i32 %add.i.i1323.1, 2, !dbg !2983
  %conv8.i.i1328.1 = zext i1 %cmp.i.i1327.1 to i32, !dbg !2983
  %cmp9.i.i1329.1 = icmp ugt i32 %add.i.i1323.1, 32, !dbg !2984
  %conv10.i.i1330.1 = zext i1 %cmp9.i.i1329.1 to i32, !dbg !2984
  %add11.i.i1331.1 = add nuw nsw i32 %conv8.i.i1328.1, %conv10.i.i1330.1, !dbg !2985
    #dbg_value(!DIArgList(i1 %cmp.i.i1327.1, i1 %cmp9.i.i1329.1), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
  %cmp12.i.i1332.1 = icmp ugt i32 %add7.i.i1326.1, 2, !dbg !2986
  %conv13.i.i1333.1 = zext i1 %cmp12.i.i1332.1 to i32, !dbg !2986
  %cmp14.i.i1334.1 = icmp ugt i32 %add7.i.i1326.1, 32, !dbg !2987
  %conv15.i.i1335.1 = zext i1 %cmp14.i.i1334.1 to i32, !dbg !2987
  %add16.i.i1336.1 = add nuw nsw i32 %conv13.i.i1333.1, %conv15.i.i1335.1, !dbg !2988
    #dbg_value(!DIArgList(i1 %cmp12.i.i1332.1, i1 %cmp14.i.i1334.1), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
    #dbg_value(!DIArgList(i32 %add16.i.i1336.1, i32 %add11.i.i1331.1), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2962)
  %call44.i1337.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.1, i32 noundef %add11.i.i1331.1), !dbg !2989
    #dbg_value(i32 %call44.i1337.1, !2345, !DIExpression(), !2962)
  %call46.i1338.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.1, i32 noundef %add16.i.i1336.1), !dbg !2990
    #dbg_value(i32 %call46.i1338.1, !2346, !DIExpression(), !2962)
    #dbg_value(i32 %call44.i1337.1, !2388, !DIExpression(), !2991)
    #dbg_value(i32 %call46.i1338.1, !2393, !DIExpression(), !2991)
  %shl.i73.i1339.1 = shl nuw nsw i32 %call46.i1338.1, 8, !dbg !2993
  %add.i74.i1340.1 = add nuw nsw i32 %shl.i73.i1339.1, %call44.i1337.1, !dbg !2994
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2995
    #dbg_value(i32 %add.i74.i1340.1, !1639, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2996)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2997)
    #dbg_value(i8 2, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i8 0, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i32 2, !2054, !DIExpression(), !2997)
    #dbg_value(i32 2, !2055, !DIExpression(), !2997)
    #dbg_value(i32 1, !2056, !DIExpression(), !2997)
    #dbg_value(i32 %add.i74.i1340.1, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2997)
  %arrayidx4.i1347.1 = getelementptr inbounds i8, ptr %h, i64 25628, !dbg !2999
    #dbg_value(ptr %arrayidx4.i1347.1, !2058, !DIExpression(), !2997)
  %conv.i1348.1 = and i32 %add.i74.i1340.1, 65535, !dbg !3000
    #dbg_value(ptr %arrayidx4.i1347.1, !2064, !DIExpression(), !3001)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3001)
    #dbg_value(i32 2, !2070, !DIExpression(), !3001)
    #dbg_value(i32 2, !2071, !DIExpression(), !3001)
    #dbg_value(i32 %conv.i1348.1, !2072, !DIExpression(), !3001)
    #dbg_value(ptr %arrayidx4.i1347.1, !2073, !DIExpression(), !3001)
    #dbg_value(i32 %add.i74.i1340.1, !2074, !DIExpression(), !3001)
  %mul8.i.i1349.1 = mul nuw i32 %conv.i1348.1, 65537, !dbg !3003
    #dbg_value(i32 %mul8.i.i1349.1, !2075, !DIExpression(), !3001)
    #dbg_value(i32 %mul8.i.i1349.1, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3001)
    #dbg_value(i32 16, !2071, !DIExpression(), !3001)
  store i32 %mul8.i.i1349.1, ptr %arrayidx4.i1347.1, align 4, !dbg !3004
  %add.ptr49.i.i1352.1 = getelementptr inbounds i8, ptr %h, i64 25644, !dbg !3005
  store i32 %mul8.i.i1349.1, ptr %add.ptr49.i.i1352.1, align 4, !dbg !3006
  br label %for.inc311.1, !dbg !3007

for.inc311.1:                                     ; preds = %do.body296.1, %for.inc311
    #dbg_value(i64 2, !1637, !DIExpression(), !2958)
  %341 = load i8, ptr %arrayidx191.2, align 1, !dbg !2959
  %idxprom292.2 = zext i8 %341 to i64, !dbg !2960
  %arrayidx293.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.2, !dbg !2960
  %342 = load i8, ptr %arrayidx293.2, align 1, !dbg !2960
  %tobool294.not.2 = icmp eq i8 %342, 0, !dbg !2960
  br i1 %tobool294.not.2, label %for.inc311.2, label %do.body296.2, !dbg !2961

do.body296.2:                                     ; preds = %for.inc311.1
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1712, ptr %mvp.i1296, !DIExpression(), !2962)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2962)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2962)
    #dbg_value(i32 1, !2342, !DIExpression(), !2962)
    #dbg_value(i64 8, !2343, !DIExpression(), !2962)
    #dbg_value(i32 2, !2344, !DIExpression(), !2962)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2964
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7, !dbg !2965
  %arrayidx4.i1301.2 = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !2966
  %343 = load i16, ptr %arrayidx4.i1301.2, align 4, !dbg !2966
  %conv.i1302.2 = sext i16 %343 to i32, !dbg !2966
  %344 = load i16, ptr %mvp.i1296, align 4, !dbg !2967
  %conv7.i1303.2 = sext i16 %344 to i32, !dbg !2967
  %sub.i1304.2 = sub nsw i32 %conv.i1302.2, %conv7.i1303.2, !dbg !2968
    #dbg_value(i32 %sub.i1304.2, !2345, !DIExpression(), !2962)
  %arrayidx17.i1305.2 = getelementptr inbounds i8, ptr %h, i64 25474, !dbg !2969
  %345 = load i16, ptr %arrayidx17.i1305.2, align 2, !dbg !2969
  %conv18.i1306.2 = sext i16 %345 to i32, !dbg !2969
  %346 = load i16, ptr %arrayidx19.i1307, align 2, !dbg !2970
  %conv20.i1308.2 = sext i16 %346 to i32, !dbg !2970
  %sub21.i1309.2 = sub nsw i32 %conv18.i1306.2, %conv20.i1308.2, !dbg !2971
    #dbg_value(i32 %sub21.i1309.2, !2346, !DIExpression(), !2962)
  %arrayidx30.i1313.2 = getelementptr inbounds i8, ptr %h, i64 25654, !dbg !2972
  %arrayidx41.i1316.2 = getelementptr inbounds i8, ptr %h, i64 25640, !dbg !2973
  %arrayidx30.val.i1317.2 = load i8, ptr %arrayidx30.i1313.2, align 1, !dbg !2974
  %347 = getelementptr i8, ptr %h, i64 25655, !dbg !2974
  %arrayidx30.val71.i1318.2 = load i8, ptr %347, align 1, !dbg !2974
  %arrayidx41.val.i1319.2 = load i8, ptr %arrayidx41.i1316.2, align 1, !dbg !2974
  %348 = getelementptr i8, ptr %h, i64 25641, !dbg !2974
  %arrayidx41.val72.i1320.2 = load i8, ptr %348, align 1, !dbg !2974
    #dbg_value(ptr undef, !2364, !DIExpression(), !2975)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2975)
  %conv.i.i1321.2 = zext i8 %arrayidx30.val.i1317.2 to i32, !dbg !2977
  %conv2.i.i1322.2 = zext i8 %arrayidx41.val.i1319.2 to i32, !dbg !2978
  %add.i.i1323.2 = add nuw nsw i32 %conv2.i.i1322.2, %conv.i.i1321.2, !dbg !2979
    #dbg_value(i32 %add.i.i1323.2, !2370, !DIExpression(), !2975)
  %conv4.i.i1324.2 = zext i8 %arrayidx30.val71.i1318.2 to i32, !dbg !2980
  %conv6.i.i1325.2 = zext i8 %arrayidx41.val72.i1320.2 to i32, !dbg !2981
  %add7.i.i1326.2 = add nuw nsw i32 %conv6.i.i1325.2, %conv4.i.i1324.2, !dbg !2982
    #dbg_value(i32 %add7.i.i1326.2, !2371, !DIExpression(), !2975)
  %cmp.i.i1327.2 = icmp ugt i32 %add.i.i1323.2, 2, !dbg !2983
  %conv8.i.i1328.2 = zext i1 %cmp.i.i1327.2 to i32, !dbg !2983
  %cmp9.i.i1329.2 = icmp ugt i32 %add.i.i1323.2, 32, !dbg !2984
  %conv10.i.i1330.2 = zext i1 %cmp9.i.i1329.2 to i32, !dbg !2984
  %add11.i.i1331.2 = add nuw nsw i32 %conv8.i.i1328.2, %conv10.i.i1330.2, !dbg !2985
    #dbg_value(!DIArgList(i1 %cmp.i.i1327.2, i1 %cmp9.i.i1329.2), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
  %cmp12.i.i1332.2 = icmp ugt i32 %add7.i.i1326.2, 2, !dbg !2986
  %conv13.i.i1333.2 = zext i1 %cmp12.i.i1332.2 to i32, !dbg !2986
  %cmp14.i.i1334.2 = icmp ugt i32 %add7.i.i1326.2, 32, !dbg !2987
  %conv15.i.i1335.2 = zext i1 %cmp14.i.i1334.2 to i32, !dbg !2987
  %add16.i.i1336.2 = add nuw nsw i32 %conv13.i.i1333.2, %conv15.i.i1335.2, !dbg !2988
    #dbg_value(!DIArgList(i1 %cmp12.i.i1332.2, i1 %cmp14.i.i1334.2), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
    #dbg_value(!DIArgList(i32 %add16.i.i1336.2, i32 %add11.i.i1331.2), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2962)
  %call44.i1337.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.2, i32 noundef %add11.i.i1331.2), !dbg !2989
    #dbg_value(i32 %call44.i1337.2, !2345, !DIExpression(), !2962)
  %call46.i1338.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.2, i32 noundef %add16.i.i1336.2), !dbg !2990
    #dbg_value(i32 %call46.i1338.2, !2346, !DIExpression(), !2962)
    #dbg_value(i32 %call44.i1337.2, !2388, !DIExpression(), !2991)
    #dbg_value(i32 %call46.i1338.2, !2393, !DIExpression(), !2991)
  %shl.i73.i1339.2 = shl nuw nsw i32 %call46.i1338.2, 8, !dbg !2993
  %add.i74.i1340.2 = add nuw nsw i32 %shl.i73.i1339.2, %call44.i1337.2, !dbg !2994
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2995
    #dbg_value(i32 %add.i74.i1340.2, !1639, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2996)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2997)
    #dbg_value(i8 0, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i8 2, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i32 2, !2054, !DIExpression(), !2997)
    #dbg_value(i32 2, !2055, !DIExpression(), !2997)
    #dbg_value(i32 1, !2056, !DIExpression(), !2997)
    #dbg_value(i32 %add.i74.i1340.2, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2997)
  %arrayidx4.i1347.2 = getelementptr inbounds i8, ptr %h, i64 25656, !dbg !2999
    #dbg_value(ptr %arrayidx4.i1347.2, !2058, !DIExpression(), !2997)
  %conv.i1348.2 = and i32 %add.i74.i1340.2, 65535, !dbg !3000
    #dbg_value(ptr %arrayidx4.i1347.2, !2064, !DIExpression(), !3001)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3001)
    #dbg_value(i32 2, !2070, !DIExpression(), !3001)
    #dbg_value(i32 2, !2071, !DIExpression(), !3001)
    #dbg_value(i32 %conv.i1348.2, !2072, !DIExpression(), !3001)
    #dbg_value(ptr %arrayidx4.i1347.2, !2073, !DIExpression(), !3001)
    #dbg_value(i32 %add.i74.i1340.2, !2074, !DIExpression(), !3001)
  %mul8.i.i1349.2 = mul nuw i32 %conv.i1348.2, 65537, !dbg !3003
    #dbg_value(i32 %mul8.i.i1349.2, !2075, !DIExpression(), !3001)
    #dbg_value(i32 %mul8.i.i1349.2, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3001)
    #dbg_value(i32 16, !2071, !DIExpression(), !3001)
  store i32 %mul8.i.i1349.2, ptr %arrayidx4.i1347.2, align 4, !dbg !3004
  %add.ptr49.i.i1352.2 = getelementptr inbounds i8, ptr %h, i64 25672, !dbg !3005
  store i32 %mul8.i.i1349.2, ptr %add.ptr49.i.i1352.2, align 4, !dbg !3006
  br label %for.inc311.2, !dbg !3007

for.inc311.2:                                     ; preds = %do.body296.2, %for.inc311.1
    #dbg_value(i64 3, !1637, !DIExpression(), !2958)
  %349 = load i8, ptr %arrayidx191.3, align 1, !dbg !2959
  %idxprom292.3 = zext i8 %349 to i64, !dbg !2960
  %arrayidx293.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.3, !dbg !2960
  %350 = load i8, ptr %arrayidx293.3, align 1, !dbg !2960
  %tobool294.not.3 = icmp eq i8 %350, 0, !dbg !2960
  br i1 %tobool294.not.3, label %if.end467, label %do.body296.3, !dbg !2961

do.body296.3:                                     ; preds = %for.inc311.2
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1712, ptr %mvp.i1296, !DIExpression(), !2962)
    #dbg_value(ptr %h, !2340, !DIExpression(), !2962)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !2962)
    #dbg_value(i32 1, !2342, !DIExpression(), !2962)
    #dbg_value(i64 12, !2343, !DIExpression(), !2962)
    #dbg_value(i32 2, !2344, !DIExpression(), !2962)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2964
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7, !dbg !2965
  %arrayidx4.i1301.3 = getelementptr inbounds i8, ptr %h, i64 25480, !dbg !2966
  %351 = load i16, ptr %arrayidx4.i1301.3, align 4, !dbg !2966
  %conv.i1302.3 = sext i16 %351 to i32, !dbg !2966
  %352 = load i16, ptr %mvp.i1296, align 4, !dbg !2967
  %conv7.i1303.3 = sext i16 %352 to i32, !dbg !2967
  %sub.i1304.3 = sub nsw i32 %conv.i1302.3, %conv7.i1303.3, !dbg !2968
    #dbg_value(i32 %sub.i1304.3, !2345, !DIExpression(), !2962)
  %arrayidx17.i1305.3 = getelementptr inbounds i8, ptr %h, i64 25482, !dbg !2969
  %353 = load i16, ptr %arrayidx17.i1305.3, align 2, !dbg !2969
  %conv18.i1306.3 = sext i16 %353 to i32, !dbg !2969
  %354 = load i16, ptr %arrayidx19.i1307, align 2, !dbg !2970
  %conv20.i1308.3 = sext i16 %354 to i32, !dbg !2970
  %sub21.i1309.3 = sub nsw i32 %conv18.i1306.3, %conv20.i1308.3, !dbg !2971
    #dbg_value(i32 %sub21.i1309.3, !2346, !DIExpression(), !2962)
  %arrayidx30.i1313.3 = getelementptr inbounds i8, ptr %h, i64 25658, !dbg !2972
  %arrayidx41.i1316.3 = getelementptr inbounds i8, ptr %h, i64 25644, !dbg !2973
  %arrayidx30.val.i1317.3 = load i8, ptr %arrayidx30.i1313.3, align 1, !dbg !2974
  %355 = getelementptr i8, ptr %h, i64 25659, !dbg !2974
  %arrayidx30.val71.i1318.3 = load i8, ptr %355, align 1, !dbg !2974
  %arrayidx41.val.i1319.3 = load i8, ptr %arrayidx41.i1316.3, align 1, !dbg !2974
  %356 = getelementptr i8, ptr %h, i64 25645, !dbg !2974
  %arrayidx41.val72.i1320.3 = load i8, ptr %356, align 1, !dbg !2974
    #dbg_value(ptr undef, !2364, !DIExpression(), !2975)
    #dbg_value(ptr undef, !2369, !DIExpression(), !2975)
  %conv.i.i1321.3 = zext i8 %arrayidx30.val.i1317.3 to i32, !dbg !2977
  %conv2.i.i1322.3 = zext i8 %arrayidx41.val.i1319.3 to i32, !dbg !2978
  %add.i.i1323.3 = add nuw nsw i32 %conv2.i.i1322.3, %conv.i.i1321.3, !dbg !2979
    #dbg_value(i32 %add.i.i1323.3, !2370, !DIExpression(), !2975)
  %conv4.i.i1324.3 = zext i8 %arrayidx30.val71.i1318.3 to i32, !dbg !2980
  %conv6.i.i1325.3 = zext i8 %arrayidx41.val72.i1320.3 to i32, !dbg !2981
  %add7.i.i1326.3 = add nuw nsw i32 %conv6.i.i1325.3, %conv4.i.i1324.3, !dbg !2982
    #dbg_value(i32 %add7.i.i1326.3, !2371, !DIExpression(), !2975)
  %cmp.i.i1327.3 = icmp ugt i32 %add.i.i1323.3, 2, !dbg !2983
  %conv8.i.i1328.3 = zext i1 %cmp.i.i1327.3 to i32, !dbg !2983
  %cmp9.i.i1329.3 = icmp ugt i32 %add.i.i1323.3, 32, !dbg !2984
  %conv10.i.i1330.3 = zext i1 %cmp9.i.i1329.3 to i32, !dbg !2984
  %add11.i.i1331.3 = add nuw nsw i32 %conv8.i.i1328.3, %conv10.i.i1330.3, !dbg !2985
    #dbg_value(!DIArgList(i1 %cmp.i.i1327.3, i1 %cmp9.i.i1329.3), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
  %cmp12.i.i1332.3 = icmp ugt i32 %add7.i.i1326.3, 2, !dbg !2986
  %conv13.i.i1333.3 = zext i1 %cmp12.i.i1332.3 to i32, !dbg !2986
  %cmp14.i.i1334.3 = icmp ugt i32 %add7.i.i1326.3, 32, !dbg !2987
  %conv15.i.i1335.3 = zext i1 %cmp14.i.i1334.3 to i32, !dbg !2987
  %add16.i.i1336.3 = add nuw nsw i32 %conv13.i.i1333.3, %conv15.i.i1335.3, !dbg !2988
    #dbg_value(!DIArgList(i1 %cmp12.i.i1332.3, i1 %cmp14.i.i1334.3), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2975)
    #dbg_value(!DIArgList(i32 %add16.i.i1336.3, i32 %add11.i.i1331.3), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2962)
  %call44.i1337.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.3, i32 noundef %add11.i.i1331.3), !dbg !2989
    #dbg_value(i32 %call44.i1337.3, !2345, !DIExpression(), !2962)
  %call46.i1338.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.3, i32 noundef %add16.i.i1336.3), !dbg !2990
    #dbg_value(i32 %call46.i1338.3, !2346, !DIExpression(), !2962)
    #dbg_value(i32 %call44.i1337.3, !2388, !DIExpression(), !2991)
    #dbg_value(i32 %call46.i1338.3, !2393, !DIExpression(), !2991)
  %shl.i73.i1339.3 = shl nuw nsw i32 %call46.i1338.3, 8, !dbg !2993
  %add.i74.i1340.3 = add nuw nsw i32 %shl.i73.i1339.3, %call44.i1337.3, !dbg !2994
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7, !dbg !2995
    #dbg_value(i32 %add.i74.i1340.3, !1639, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2996)
    #dbg_value(ptr %h, !2046, !DIExpression(), !2997)
    #dbg_value(i8 2, !2052, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i8 2, !2053, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2997)
    #dbg_value(i32 2, !2054, !DIExpression(), !2997)
    #dbg_value(i32 2, !2055, !DIExpression(), !2997)
    #dbg_value(i32 1, !2056, !DIExpression(), !2997)
    #dbg_value(i32 %add.i74.i1340.3, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2997)
  %arrayidx4.i1347.3 = getelementptr inbounds i8, ptr %h, i64 25660, !dbg !2999
    #dbg_value(ptr %arrayidx4.i1347.3, !2058, !DIExpression(), !2997)
  %conv.i1348.3 = and i32 %add.i74.i1340.3, 65535, !dbg !3000
    #dbg_value(ptr %arrayidx4.i1347.3, !2064, !DIExpression(), !3001)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3001)
    #dbg_value(i32 2, !2070, !DIExpression(), !3001)
    #dbg_value(i32 2, !2071, !DIExpression(), !3001)
    #dbg_value(i32 %conv.i1348.3, !2072, !DIExpression(), !3001)
    #dbg_value(ptr %arrayidx4.i1347.3, !2073, !DIExpression(), !3001)
    #dbg_value(i32 %add.i74.i1340.3, !2074, !DIExpression(), !3001)
  %mul8.i.i1349.3 = mul nuw i32 %conv.i1348.3, 65537, !dbg !3003
    #dbg_value(i32 %mul8.i.i1349.3, !2075, !DIExpression(), !3001)
    #dbg_value(i32 %mul8.i.i1349.3, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3001)
    #dbg_value(i32 16, !2071, !DIExpression(), !3001)
  store i32 %mul8.i.i1349.3, ptr %arrayidx4.i1347.3, align 4, !dbg !3004
  %add.ptr49.i.i1352.3 = getelementptr inbounds i8, ptr %h, i64 25676, !dbg !3005
  store i32 %mul8.i.i1349.3, ptr %add.ptr49.i.i1352.3, align 4, !dbg !3006
  br label %if.end467, !dbg !3007

if.then317:                                       ; preds = %if.else
  %idxprom318 = sext i32 %0 to i64, !dbg !3008
  %arrayidx319 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %idxprom318, !dbg !3008
    #dbg_value(ptr %arrayidx319, !1643, !DIExpression(), !3009)
  %i_fref322 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !3010
  %357 = load i32, ptr %i_fref322, align 8, !dbg !3012
  %cmp324 = icmp sgt i32 %357, 1, !dbg !3013
  br i1 %cmp324, label %if.then326, label %if.end347, !dbg !3014

if.then326:                                       ; preds = %if.then317
  %358 = load i8, ptr %arrayidx319, align 4, !dbg !3015
  %tobool329.not = icmp eq i8 %358, 0, !dbg !3015
  br i1 %tobool329.not, label %if.end331, label %if.then330, !dbg !3018

if.then330:                                       ; preds = %if.then326
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0), !dbg !3019
  br label %if.end331, !dbg !3019

if.end331:                                        ; preds = %if.then330, %if.then326
  %arrayidx333 = getelementptr inbounds i8, ptr %arrayidx319, i64 1, !dbg !3020
  %359 = load i8, ptr %arrayidx333, align 1, !dbg !3020
  %tobool335.not = icmp eq i8 %359, 0, !dbg !3020
  br i1 %tobool335.not, label %if.end347, label %land.lhs.true336, !dbg !3022

land.lhs.true336:                                 ; preds = %if.end331
  %i_partition338 = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !3023
  %360 = load i32, ptr %i_partition338, align 4, !dbg !3023
  %cmp339.not = icmp eq i32 %360, 16, !dbg !3024
  br i1 %cmp339.not, label %if.end347, label %if.then341, !dbg !3025

if.then341:                                       ; preds = %land.lhs.true336
  %cmp344 = icmp eq i32 %360, 15, !dbg !3026
  %conv345 = zext i1 %cmp344 to i32, !dbg !3026
  %shr = lshr exact i32 8, %conv345, !dbg !3027
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef %shr), !dbg !3028
  br label %if.end347, !dbg !3028

if.end347:                                        ; preds = %if.end331, %land.lhs.true336, %if.then341, %if.then317
  %arrayidx351 = getelementptr inbounds i8, ptr %h, i64 21420, !dbg !3029
  %361 = load i32, ptr %arrayidx351, align 4, !dbg !3029
  %cmp352 = icmp sgt i32 %361, 1, !dbg !3031
  br i1 %cmp352, label %if.then354, label %if.end376, !dbg !3032

if.then354:                                       ; preds = %if.end347
  %arrayidx355 = getelementptr inbounds i8, ptr %arrayidx319, i64 2, !dbg !3033
  %362 = load i8, ptr %arrayidx355, align 2, !dbg !3033
  %tobool357.not = icmp eq i8 %362, 0, !dbg !3033
  br i1 %tobool357.not, label %if.end359, label %if.then358, !dbg !3036

if.then358:                                       ; preds = %if.then354
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 1, i32 noundef 0), !dbg !3037
  br label %if.end359, !dbg !3037

if.end359:                                        ; preds = %if.then358, %if.then354
  %arrayidx361 = getelementptr inbounds i8, ptr %arrayidx319, i64 3, !dbg !3038
  %363 = load i8, ptr %arrayidx361, align 1, !dbg !3038
  %tobool363.not = icmp eq i8 %363, 0, !dbg !3038
  br i1 %tobool363.not, label %if.end376, label %land.lhs.true364, !dbg !3040

land.lhs.true364:                                 ; preds = %if.end359
  %i_partition366 = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !3041
  %364 = load i32, ptr %i_partition366, align 4, !dbg !3041
  %cmp367.not = icmp eq i32 %364, 16, !dbg !3042
  br i1 %cmp367.not, label %if.end376, label %if.then369, !dbg !3043

if.then369:                                       ; preds = %land.lhs.true364
  %cmp372 = icmp eq i32 %364, 15, !dbg !3044
  %conv373 = zext i1 %cmp372 to i32, !dbg !3044
  %shr374 = lshr exact i32 8, %conv373, !dbg !3045
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 1, i32 noundef %shr374), !dbg !3046
  br label %if.end376, !dbg !3046

if.end376:                                        ; preds = %if.end359, %land.lhs.true364, %if.then369, %if.end347
    #dbg_value(i32 0, !1578, !DIExpression(), !1723)
  %i_partition382 = getelementptr inbounds i8, ptr %h, i64 17388
  %mv.i1404 = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx19.i1412 = getelementptr inbounds i8, ptr %mvp.i1403, i64 2
  %mvd.i1415 = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx19.i1460 = getelementptr inbounds i8, ptr %mvp.i1451, i64 2
  %arrayidx19.i1362 = getelementptr inbounds i8, ptr %mvp.i1353, i64 2
  %arrayidx19.i1508 = getelementptr inbounds i8, ptr %mvp.i1499, i64 2
  %arrayidx19.i1558 = getelementptr inbounds i8, ptr %mvp.i1549, i64 2
  br label %for.body380, !dbg !3047

for.body380:                                      ; preds = %if.end376, %for.inc460
  %cmp378 = phi i1 [ true, %if.end376 ], [ false, %for.inc460 ]
  %indvars.iv1822 = phi i64 [ 0, %if.end376 ], [ 1, %for.inc460 ]
    #dbg_value(i64 %indvars.iv1822, !1578, !DIExpression(), !1723)
  %365 = load i32, ptr %i_partition382, align 4, !dbg !3048
  %arrayidx433 = getelementptr inbounds [2 x i8], ptr %arrayidx319, i64 %indvars.iv1822, !dbg !3049
  %366 = load i8, ptr %arrayidx433, align 2, !dbg !3049
  %tobool435.not = icmp eq i8 %366, 0, !dbg !3049
  switch i32 %365, label %if.else431 [
    i32 16, label %if.then385
    i32 14, label %if.then404
  ], !dbg !3050

if.then385:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %for.inc460, label %do.body391, !dbg !3051

do.body391:                                       ; preds = %if.then385
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1711, ptr %mvp.i1353, !DIExpression(), !3052)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3052)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3052)
    #dbg_value(i64 %indvars.iv1822, !2342, !DIExpression(), !3052)
    #dbg_value(i32 0, !2343, !DIExpression(), !3052)
    #dbg_value(i32 4, !2344, !DIExpression(), !3052)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1353) #7, !dbg !3054
  %367 = trunc nuw nsw i64 %indvars.iv1822 to i32, !dbg !3055
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %367, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %mvp.i1353) #7, !dbg !3055
  %arrayidx4.i1356 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3056
  %368 = load i16, ptr %arrayidx4.i1356, align 4, !dbg !3056
  %conv.i1357 = sext i16 %368 to i32, !dbg !3056
  %369 = load i16, ptr %mvp.i1353, align 4, !dbg !3057
  %conv7.i1358 = sext i16 %369 to i32, !dbg !3057
  %sub.i1359 = sub nsw i32 %conv.i1357, %conv7.i1358, !dbg !3058
    #dbg_value(i32 %sub.i1359, !2345, !DIExpression(), !3052)
  %arrayidx17.i1360 = getelementptr inbounds i8, ptr %arrayidx4.i1356, i64 2, !dbg !3059
  %370 = load i16, ptr %arrayidx17.i1360, align 2, !dbg !3059
  %conv18.i1361 = sext i16 %370 to i32, !dbg !3059
  %371 = load i16, ptr %arrayidx19.i1362, align 2, !dbg !3060
  %conv20.i1363 = sext i16 %371 to i32, !dbg !3060
  %sub21.i1364 = sub nsw i32 %conv18.i1361, %conv20.i1363, !dbg !3061
    #dbg_value(i32 %sub21.i1364, !2346, !DIExpression(), !3052)
  %arrayidx30.i1366 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11, !dbg !3062
  %arrayidx41.i1367 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4, !dbg !3063
  %arrayidx30.val.i1368 = load i8, ptr %arrayidx30.i1366, align 1, !dbg !3064
  %372 = getelementptr i8, ptr %arrayidx30.i1366, i64 1, !dbg !3064
  %arrayidx30.val71.i1369 = load i8, ptr %372, align 1, !dbg !3064
  %arrayidx41.val.i1370 = load i8, ptr %arrayidx41.i1367, align 1, !dbg !3064
  %373 = getelementptr i8, ptr %arrayidx41.i1367, i64 1, !dbg !3064
  %arrayidx41.val72.i1371 = load i8, ptr %373, align 1, !dbg !3064
    #dbg_value(ptr undef, !2364, !DIExpression(), !3065)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3065)
  %conv.i.i1372 = zext i8 %arrayidx30.val.i1368 to i32, !dbg !3067
  %conv2.i.i1373 = zext i8 %arrayidx41.val.i1370 to i32, !dbg !3068
  %add.i.i1374 = add nuw nsw i32 %conv2.i.i1373, %conv.i.i1372, !dbg !3069
    #dbg_value(i32 %add.i.i1374, !2370, !DIExpression(), !3065)
  %conv4.i.i1375 = zext i8 %arrayidx30.val71.i1369 to i32, !dbg !3070
  %conv6.i.i1376 = zext i8 %arrayidx41.val72.i1371 to i32, !dbg !3071
  %add7.i.i1377 = add nuw nsw i32 %conv6.i.i1376, %conv4.i.i1375, !dbg !3072
    #dbg_value(i32 %add7.i.i1377, !2371, !DIExpression(), !3065)
  %cmp.i.i1378 = icmp ugt i32 %add.i.i1374, 2, !dbg !3073
  %conv8.i.i1379 = zext i1 %cmp.i.i1378 to i32, !dbg !3073
  %cmp9.i.i1380 = icmp ugt i32 %add.i.i1374, 32, !dbg !3074
  %conv10.i.i1381 = zext i1 %cmp9.i.i1380 to i32, !dbg !3074
  %add11.i.i1382 = add nuw nsw i32 %conv8.i.i1379, %conv10.i.i1381, !dbg !3075
    #dbg_value(!DIArgList(i1 %cmp.i.i1378, i1 %cmp9.i.i1380), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3065)
  %cmp12.i.i1383 = icmp ugt i32 %add7.i.i1377, 2, !dbg !3076
  %conv13.i.i1384 = zext i1 %cmp12.i.i1383 to i32, !dbg !3076
  %cmp14.i.i1385 = icmp ugt i32 %add7.i.i1377, 32, !dbg !3077
  %conv15.i.i1386 = zext i1 %cmp14.i.i1385 to i32, !dbg !3077
  %add16.i.i1387 = add nuw nsw i32 %conv13.i.i1384, %conv15.i.i1386, !dbg !3078
    #dbg_value(!DIArgList(i1 %cmp12.i.i1383, i1 %cmp14.i.i1385), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3065)
    #dbg_value(!DIArgList(i32 %add16.i.i1387, i32 %add11.i.i1382), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3052)
  %call44.i1388 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1359, i32 noundef %add11.i.i1382), !dbg !3079
    #dbg_value(i32 %call44.i1388, !2345, !DIExpression(), !3052)
  %call46.i1389 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1364, i32 noundef %add16.i.i1387), !dbg !3080
    #dbg_value(i32 %call46.i1389, !2346, !DIExpression(), !3052)
    #dbg_value(i32 %call44.i1388, !2388, !DIExpression(), !3081)
    #dbg_value(i32 %call46.i1389, !2393, !DIExpression(), !3081)
  %shl.i73.i1390 = shl nuw nsw i32 %call46.i1389, 8, !dbg !3083
  %add.i74.i1391 = add nuw nsw i32 %shl.i73.i1390, %call44.i1388, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1353) #7, !dbg !3085
    #dbg_value(i32 %add.i74.i1391, !1648, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3086)
    #dbg_value(ptr %h, !2046, !DIExpression(), !3087)
    #dbg_value(i32 0, !2052, !DIExpression(), !3087)
    #dbg_value(i32 0, !2053, !DIExpression(), !3087)
    #dbg_value(i32 4, !2054, !DIExpression(), !3087)
    #dbg_value(i32 4, !2055, !DIExpression(), !3087)
    #dbg_value(i64 %indvars.iv1822, !2056, !DIExpression(), !3087)
    #dbg_value(i32 %add.i74.i1391, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3087)
  %arrayidx4.i1395 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3089
    #dbg_value(ptr %arrayidx4.i1395, !2058, !DIExpression(), !3087)
  %conv.i1396 = and i32 %add.i74.i1391, 65535, !dbg !3090
    #dbg_value(ptr %arrayidx4.i1395, !2064, !DIExpression(), !3091)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3091)
    #dbg_value(i32 4, !2070, !DIExpression(), !3091)
    #dbg_value(i32 2, !2071, !DIExpression(), !3091)
    #dbg_value(i32 %conv.i1396, !2072, !DIExpression(), !3091)
    #dbg_value(ptr %arrayidx4.i1395, !2073, !DIExpression(), !3091)
    #dbg_value(i32 %add.i74.i1391, !2074, !DIExpression(), !3091)
  %mul8.i.i1397 = mul nuw i32 %conv.i1396, 65537, !dbg !3093
    #dbg_value(i32 %mul8.i.i1397, !2075, !DIExpression(), !3091)
  %conv15.i.i1398 = zext i32 %mul8.i.i1397 to i64, !dbg !3094
  %add.i.i1399 = mul nuw i64 %conv15.i.i1398, 4294967297, !dbg !3095
    #dbg_value(i64 %add.i.i1399, !2076, !DIExpression(), !3091)
    #dbg_value(i32 16, !2071, !DIExpression(), !3091)
  store i64 %add.i.i1399, ptr %arrayidx4.i1395, align 8, !dbg !3096
  %add.ptr73.i.i1400 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 16, !dbg !3097
  store i64 %add.i.i1399, ptr %add.ptr73.i.i1400, align 8, !dbg !3098
  %add.ptr80.i.i1401 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 32, !dbg !3099
  store i64 %add.i.i1399, ptr %add.ptr80.i.i1401, align 8, !dbg !3100
  %add.ptr83.i.i1402 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 48, !dbg !3101
  store i64 %add.i.i1399, ptr %add.ptr83.i.i1402, align 8, !dbg !3102
  br label %for.inc460, !dbg !3103

if.then404:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %if.end417, label %do.body410, !dbg !3104

do.body410:                                       ; preds = %if.then404
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1710, ptr %mvp.i1403, !DIExpression(), !3105)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3105)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3105)
    #dbg_value(i64 %indvars.iv1822, !2342, !DIExpression(), !3105)
    #dbg_value(i32 0, !2343, !DIExpression(), !3105)
    #dbg_value(i32 4, !2344, !DIExpression(), !3105)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1403) #7, !dbg !3107
  %374 = trunc nuw nsw i64 %indvars.iv1822 to i32, !dbg !3108
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %374, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %mvp.i1403) #7, !dbg !3108
  %arrayidx4.i1406 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3109
  %375 = load i16, ptr %arrayidx4.i1406, align 4, !dbg !3109
  %conv.i1407 = sext i16 %375 to i32, !dbg !3109
  %376 = load i16, ptr %mvp.i1403, align 4, !dbg !3110
  %conv7.i1408 = sext i16 %376 to i32, !dbg !3110
  %sub.i1409 = sub nsw i32 %conv.i1407, %conv7.i1408, !dbg !3111
    #dbg_value(i32 %sub.i1409, !2345, !DIExpression(), !3105)
  %arrayidx17.i1410 = getelementptr inbounds i8, ptr %arrayidx4.i1406, i64 2, !dbg !3112
  %377 = load i16, ptr %arrayidx17.i1410, align 2, !dbg !3112
  %conv18.i1411 = sext i16 %377 to i32, !dbg !3112
  %378 = load i16, ptr %arrayidx19.i1412, align 2, !dbg !3113
  %conv20.i1413 = sext i16 %378 to i32, !dbg !3113
  %sub21.i1414 = sub nsw i32 %conv18.i1411, %conv20.i1413, !dbg !3114
    #dbg_value(i32 %sub21.i1414, !2346, !DIExpression(), !3105)
  %arrayidx30.i1416 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11, !dbg !3115
  %arrayidx41.i1417 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4, !dbg !3116
  %arrayidx30.val.i1418 = load i8, ptr %arrayidx30.i1416, align 1, !dbg !3117
  %379 = getelementptr i8, ptr %arrayidx30.i1416, i64 1, !dbg !3117
  %arrayidx30.val71.i1419 = load i8, ptr %379, align 1, !dbg !3117
  %arrayidx41.val.i1420 = load i8, ptr %arrayidx41.i1417, align 1, !dbg !3117
  %380 = getelementptr i8, ptr %arrayidx41.i1417, i64 1, !dbg !3117
  %arrayidx41.val72.i1421 = load i8, ptr %380, align 1, !dbg !3117
    #dbg_value(ptr undef, !2364, !DIExpression(), !3118)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3118)
  %conv.i.i1422 = zext i8 %arrayidx30.val.i1418 to i32, !dbg !3120
  %conv2.i.i1423 = zext i8 %arrayidx41.val.i1420 to i32, !dbg !3121
  %add.i.i1424 = add nuw nsw i32 %conv2.i.i1423, %conv.i.i1422, !dbg !3122
    #dbg_value(i32 %add.i.i1424, !2370, !DIExpression(), !3118)
  %conv4.i.i1425 = zext i8 %arrayidx30.val71.i1419 to i32, !dbg !3123
  %conv6.i.i1426 = zext i8 %arrayidx41.val72.i1421 to i32, !dbg !3124
  %add7.i.i1427 = add nuw nsw i32 %conv6.i.i1426, %conv4.i.i1425, !dbg !3125
    #dbg_value(i32 %add7.i.i1427, !2371, !DIExpression(), !3118)
  %cmp.i.i1428 = icmp ugt i32 %add.i.i1424, 2, !dbg !3126
  %conv8.i.i1429 = zext i1 %cmp.i.i1428 to i32, !dbg !3126
  %cmp9.i.i1430 = icmp ugt i32 %add.i.i1424, 32, !dbg !3127
  %conv10.i.i1431 = zext i1 %cmp9.i.i1430 to i32, !dbg !3127
  %add11.i.i1432 = add nuw nsw i32 %conv8.i.i1429, %conv10.i.i1431, !dbg !3128
    #dbg_value(!DIArgList(i1 %cmp.i.i1428, i1 %cmp9.i.i1430), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3118)
  %cmp12.i.i1433 = icmp ugt i32 %add7.i.i1427, 2, !dbg !3129
  %conv13.i.i1434 = zext i1 %cmp12.i.i1433 to i32, !dbg !3129
  %cmp14.i.i1435 = icmp ugt i32 %add7.i.i1427, 32, !dbg !3130
  %conv15.i.i1436 = zext i1 %cmp14.i.i1435 to i32, !dbg !3130
  %add16.i.i1437 = add nuw nsw i32 %conv13.i.i1434, %conv15.i.i1436, !dbg !3131
    #dbg_value(!DIArgList(i1 %cmp12.i.i1433, i1 %cmp14.i.i1435), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3118)
    #dbg_value(!DIArgList(i32 %add16.i.i1437, i32 %add11.i.i1432), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3105)
  %call44.i1438 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1409, i32 noundef %add11.i.i1432), !dbg !3132
    #dbg_value(i32 %call44.i1438, !2345, !DIExpression(), !3105)
  %call46.i1439 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1414, i32 noundef %add16.i.i1437), !dbg !3133
    #dbg_value(i32 %call46.i1439, !2346, !DIExpression(), !3105)
    #dbg_value(i32 %call44.i1438, !2388, !DIExpression(), !3134)
    #dbg_value(i32 %call46.i1439, !2393, !DIExpression(), !3134)
  %shl.i73.i1440 = shl nuw nsw i32 %call46.i1439, 8, !dbg !3136
  %add.i74.i1441 = add nuw nsw i32 %shl.i73.i1440, %call44.i1438, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1403) #7, !dbg !3138
    #dbg_value(i32 %add.i74.i1441, !1656, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3139)
    #dbg_value(ptr %h, !2046, !DIExpression(), !3140)
    #dbg_value(i32 0, !2052, !DIExpression(), !3140)
    #dbg_value(i32 0, !2053, !DIExpression(), !3140)
    #dbg_value(i32 4, !2054, !DIExpression(), !3140)
    #dbg_value(i32 2, !2055, !DIExpression(), !3140)
    #dbg_value(i64 %indvars.iv1822, !2056, !DIExpression(), !3140)
    #dbg_value(i32 %add.i74.i1441, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3140)
  %arrayidx4.i1445 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3142
    #dbg_value(ptr %arrayidx4.i1445, !2058, !DIExpression(), !3140)
  %conv.i1446 = and i32 %add.i74.i1441, 65535, !dbg !3143
    #dbg_value(ptr %arrayidx4.i1445, !2064, !DIExpression(), !3144)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3144)
    #dbg_value(i32 2, !2070, !DIExpression(), !3144)
    #dbg_value(i32 2, !2071, !DIExpression(), !3144)
    #dbg_value(i32 %conv.i1446, !2072, !DIExpression(), !3144)
    #dbg_value(ptr %arrayidx4.i1445, !2073, !DIExpression(), !3144)
    #dbg_value(i32 %add.i74.i1441, !2074, !DIExpression(), !3144)
  %mul8.i.i1447 = mul nuw i32 %conv.i1446, 65537, !dbg !3146
    #dbg_value(i32 %mul8.i.i1447, !2075, !DIExpression(), !3144)
  %conv15.i.i1448 = zext i32 %mul8.i.i1447 to i64, !dbg !3147
  %add.i.i1449 = mul nuw i64 %conv15.i.i1448, 4294967297, !dbg !3148
    #dbg_value(i64 %add.i.i1449, !2076, !DIExpression(), !3144)
    #dbg_value(i32 16, !2071, !DIExpression(), !3144)
  store i64 %add.i.i1449, ptr %arrayidx4.i1445, align 8, !dbg !3149
  %add.ptr73.i.i1450 = getelementptr inbounds i8, ptr %arrayidx4.i1445, i64 16, !dbg !3150
  store i64 %add.i.i1449, ptr %add.ptr73.i.i1450, align 8, !dbg !3151
  br label %if.end417, !dbg !3152

if.end417:                                        ; preds = %do.body410, %if.then404
  %arrayidx420 = getelementptr inbounds i8, ptr %arrayidx433, i64 1, !dbg !3153
  %381 = load i8, ptr %arrayidx420, align 1, !dbg !3153
  %tobool421.not = icmp eq i8 %381, 0, !dbg !3153
  br i1 %tobool421.not, label %for.inc460, label %do.body423, !dbg !3154

do.body423:                                       ; preds = %if.end417
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1709, ptr %mvp.i1451, !DIExpression(), !3155)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3155)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3155)
    #dbg_value(i64 %indvars.iv1822, !2342, !DIExpression(), !3155)
    #dbg_value(i32 8, !2343, !DIExpression(), !3155)
    #dbg_value(i32 4, !2344, !DIExpression(), !3155)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1451) #7, !dbg !3157
  %382 = trunc nuw nsw i64 %indvars.iv1822 to i32, !dbg !3158
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %382, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %mvp.i1451) #7, !dbg !3158
  %arrayidx4.i1454 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 28, !dbg !3159
  %383 = load i16, ptr %arrayidx4.i1454, align 4, !dbg !3159
  %conv.i1455 = sext i16 %383 to i32, !dbg !3159
  %384 = load i16, ptr %mvp.i1451, align 4, !dbg !3160
  %conv7.i1456 = sext i16 %384 to i32, !dbg !3160
  %sub.i1457 = sub nsw i32 %conv.i1455, %conv7.i1456, !dbg !3161
    #dbg_value(i32 %sub.i1457, !2345, !DIExpression(), !3155)
  %arrayidx17.i1458 = getelementptr inbounds i8, ptr %arrayidx4.i1454, i64 2, !dbg !3162
  %385 = load i16, ptr %arrayidx17.i1458, align 2, !dbg !3162
  %conv18.i1459 = sext i16 %385 to i32, !dbg !3162
  %386 = load i16, ptr %arrayidx19.i1460, align 2, !dbg !3163
  %conv20.i1461 = sext i16 %386 to i32, !dbg !3163
  %sub21.i1462 = sub nsw i32 %conv18.i1459, %conv20.i1461, !dbg !3164
    #dbg_value(i32 %sub21.i1462, !2346, !DIExpression(), !3155)
  %arrayidx30.i1464 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 27, !dbg !3165
  %arrayidx41.i1465 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 20, !dbg !3166
  %arrayidx30.val.i1466 = load i8, ptr %arrayidx30.i1464, align 1, !dbg !3167
  %387 = getelementptr i8, ptr %arrayidx30.i1464, i64 1, !dbg !3167
  %arrayidx30.val71.i1467 = load i8, ptr %387, align 1, !dbg !3167
  %arrayidx41.val.i1468 = load i8, ptr %arrayidx41.i1465, align 1, !dbg !3167
  %388 = getelementptr i8, ptr %arrayidx41.i1465, i64 1, !dbg !3167
  %arrayidx41.val72.i1469 = load i8, ptr %388, align 1, !dbg !3167
    #dbg_value(ptr undef, !2364, !DIExpression(), !3168)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3168)
  %conv.i.i1470 = zext i8 %arrayidx30.val.i1466 to i32, !dbg !3170
  %conv2.i.i1471 = zext i8 %arrayidx41.val.i1468 to i32, !dbg !3171
  %add.i.i1472 = add nuw nsw i32 %conv2.i.i1471, %conv.i.i1470, !dbg !3172
    #dbg_value(i32 %add.i.i1472, !2370, !DIExpression(), !3168)
  %conv4.i.i1473 = zext i8 %arrayidx30.val71.i1467 to i32, !dbg !3173
  %conv6.i.i1474 = zext i8 %arrayidx41.val72.i1469 to i32, !dbg !3174
  %add7.i.i1475 = add nuw nsw i32 %conv6.i.i1474, %conv4.i.i1473, !dbg !3175
    #dbg_value(i32 %add7.i.i1475, !2371, !DIExpression(), !3168)
  %cmp.i.i1476 = icmp ugt i32 %add.i.i1472, 2, !dbg !3176
  %conv8.i.i1477 = zext i1 %cmp.i.i1476 to i32, !dbg !3176
  %cmp9.i.i1478 = icmp ugt i32 %add.i.i1472, 32, !dbg !3177
  %conv10.i.i1479 = zext i1 %cmp9.i.i1478 to i32, !dbg !3177
  %add11.i.i1480 = add nuw nsw i32 %conv8.i.i1477, %conv10.i.i1479, !dbg !3178
    #dbg_value(!DIArgList(i1 %cmp.i.i1476, i1 %cmp9.i.i1478), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3168)
  %cmp12.i.i1481 = icmp ugt i32 %add7.i.i1475, 2, !dbg !3179
  %conv13.i.i1482 = zext i1 %cmp12.i.i1481 to i32, !dbg !3179
  %cmp14.i.i1483 = icmp ugt i32 %add7.i.i1475, 32, !dbg !3180
  %conv15.i.i1484 = zext i1 %cmp14.i.i1483 to i32, !dbg !3180
  %add16.i.i1485 = add nuw nsw i32 %conv13.i.i1482, %conv15.i.i1484, !dbg !3181
    #dbg_value(!DIArgList(i1 %cmp12.i.i1481, i1 %cmp14.i.i1483), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3168)
    #dbg_value(!DIArgList(i32 %add16.i.i1485, i32 %add11.i.i1480), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3155)
  %call44.i1486 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1457, i32 noundef %add11.i.i1480), !dbg !3182
    #dbg_value(i32 %call44.i1486, !2345, !DIExpression(), !3155)
  %call46.i1487 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1462, i32 noundef %add16.i.i1485), !dbg !3183
    #dbg_value(i32 %call46.i1487, !2346, !DIExpression(), !3155)
    #dbg_value(i32 %call44.i1486, !2388, !DIExpression(), !3184)
    #dbg_value(i32 %call46.i1487, !2393, !DIExpression(), !3184)
  %shl.i73.i1488 = shl nuw nsw i32 %call46.i1487, 8, !dbg !3186
  %add.i74.i1489 = add nuw nsw i32 %shl.i73.i1488, %call44.i1486, !dbg !3187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1451) #7, !dbg !3188
    #dbg_value(i32 %add.i74.i1489, !1661, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3189)
    #dbg_value(ptr %h, !2046, !DIExpression(), !3190)
    #dbg_value(i32 0, !2052, !DIExpression(), !3190)
    #dbg_value(i32 2, !2053, !DIExpression(), !3190)
    #dbg_value(i32 4, !2054, !DIExpression(), !3190)
    #dbg_value(i32 2, !2055, !DIExpression(), !3190)
    #dbg_value(i64 %indvars.iv1822, !2056, !DIExpression(), !3190)
    #dbg_value(i32 %add.i74.i1489, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3190)
  %arrayidx4.i1493 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 28, !dbg !3192
    #dbg_value(ptr %arrayidx4.i1493, !2058, !DIExpression(), !3190)
  %conv.i1494 = and i32 %add.i74.i1489, 65535, !dbg !3193
    #dbg_value(ptr %arrayidx4.i1493, !2064, !DIExpression(), !3194)
    #dbg_value(i32 4, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3194)
    #dbg_value(i32 2, !2070, !DIExpression(), !3194)
    #dbg_value(i32 2, !2071, !DIExpression(), !3194)
    #dbg_value(i32 %conv.i1494, !2072, !DIExpression(), !3194)
    #dbg_value(ptr %arrayidx4.i1493, !2073, !DIExpression(), !3194)
    #dbg_value(i32 %add.i74.i1489, !2074, !DIExpression(), !3194)
  %mul8.i.i1495 = mul nuw i32 %conv.i1494, 65537, !dbg !3196
    #dbg_value(i32 %mul8.i.i1495, !2075, !DIExpression(), !3194)
  %conv15.i.i1496 = zext i32 %mul8.i.i1495 to i64, !dbg !3197
  %add.i.i1497 = mul nuw i64 %conv15.i.i1496, 4294967297, !dbg !3198
    #dbg_value(i64 %add.i.i1497, !2076, !DIExpression(), !3194)
    #dbg_value(i32 16, !2071, !DIExpression(), !3194)
  store i64 %add.i.i1497, ptr %arrayidx4.i1493, align 8, !dbg !3199
  %add.ptr73.i.i1498 = getelementptr inbounds i8, ptr %arrayidx4.i1493, i64 16, !dbg !3200
  store i64 %add.i.i1497, ptr %add.ptr73.i.i1498, align 8, !dbg !3201
  br label %for.inc460, !dbg !3202

if.else431:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %if.end444, label %do.body437, !dbg !3203

do.body437:                                       ; preds = %if.else431
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1708, ptr %mvp.i1499, !DIExpression(), !3204)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3204)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3204)
    #dbg_value(i64 %indvars.iv1822, !2342, !DIExpression(), !3204)
    #dbg_value(i32 0, !2343, !DIExpression(), !3204)
    #dbg_value(i32 2, !2344, !DIExpression(), !3204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1499) #7, !dbg !3206
  %389 = trunc nuw nsw i64 %indvars.iv1822 to i32, !dbg !3207
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %389, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i1499) #7, !dbg !3207
  %arrayidx4.i1502 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3208
  %390 = load i16, ptr %arrayidx4.i1502, align 4, !dbg !3208
  %conv.i1503 = sext i16 %390 to i32, !dbg !3208
  %391 = load i16, ptr %mvp.i1499, align 4, !dbg !3209
  %conv7.i1504 = sext i16 %391 to i32, !dbg !3209
  %sub.i1505 = sub nsw i32 %conv.i1503, %conv7.i1504, !dbg !3210
    #dbg_value(i32 %sub.i1505, !2345, !DIExpression(), !3204)
  %arrayidx17.i1506 = getelementptr inbounds i8, ptr %arrayidx4.i1502, i64 2, !dbg !3211
  %392 = load i16, ptr %arrayidx17.i1506, align 2, !dbg !3211
  %conv18.i1507 = sext i16 %392 to i32, !dbg !3211
  %393 = load i16, ptr %arrayidx19.i1508, align 2, !dbg !3212
  %conv20.i1509 = sext i16 %393 to i32, !dbg !3212
  %sub21.i1510 = sub nsw i32 %conv18.i1507, %conv20.i1509, !dbg !3213
    #dbg_value(i32 %sub21.i1510, !2346, !DIExpression(), !3204)
  %arrayidx30.i1512 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11, !dbg !3214
  %arrayidx41.i1513 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4, !dbg !3215
  %arrayidx30.val.i1514 = load i8, ptr %arrayidx30.i1512, align 1, !dbg !3216
  %394 = getelementptr i8, ptr %arrayidx30.i1512, i64 1, !dbg !3216
  %arrayidx30.val71.i1515 = load i8, ptr %394, align 1, !dbg !3216
  %arrayidx41.val.i1516 = load i8, ptr %arrayidx41.i1513, align 1, !dbg !3216
  %395 = getelementptr i8, ptr %arrayidx41.i1513, i64 1, !dbg !3216
  %arrayidx41.val72.i1517 = load i8, ptr %395, align 1, !dbg !3216
    #dbg_value(ptr undef, !2364, !DIExpression(), !3217)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3217)
  %conv.i.i1518 = zext i8 %arrayidx30.val.i1514 to i32, !dbg !3219
  %conv2.i.i1519 = zext i8 %arrayidx41.val.i1516 to i32, !dbg !3220
  %add.i.i1520 = add nuw nsw i32 %conv2.i.i1519, %conv.i.i1518, !dbg !3221
    #dbg_value(i32 %add.i.i1520, !2370, !DIExpression(), !3217)
  %conv4.i.i1521 = zext i8 %arrayidx30.val71.i1515 to i32, !dbg !3222
  %conv6.i.i1522 = zext i8 %arrayidx41.val72.i1517 to i32, !dbg !3223
  %add7.i.i1523 = add nuw nsw i32 %conv6.i.i1522, %conv4.i.i1521, !dbg !3224
    #dbg_value(i32 %add7.i.i1523, !2371, !DIExpression(), !3217)
  %cmp.i.i1524 = icmp ugt i32 %add.i.i1520, 2, !dbg !3225
  %conv8.i.i1525 = zext i1 %cmp.i.i1524 to i32, !dbg !3225
  %cmp9.i.i1526 = icmp ugt i32 %add.i.i1520, 32, !dbg !3226
  %conv10.i.i1527 = zext i1 %cmp9.i.i1526 to i32, !dbg !3226
  %add11.i.i1528 = add nuw nsw i32 %conv8.i.i1525, %conv10.i.i1527, !dbg !3227
    #dbg_value(!DIArgList(i1 %cmp.i.i1524, i1 %cmp9.i.i1526), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3217)
  %cmp12.i.i1529 = icmp ugt i32 %add7.i.i1523, 2, !dbg !3228
  %conv13.i.i1530 = zext i1 %cmp12.i.i1529 to i32, !dbg !3228
  %cmp14.i.i1531 = icmp ugt i32 %add7.i.i1523, 32, !dbg !3229
  %conv15.i.i1532 = zext i1 %cmp14.i.i1531 to i32, !dbg !3229
  %add16.i.i1533 = add nuw nsw i32 %conv13.i.i1530, %conv15.i.i1532, !dbg !3230
    #dbg_value(!DIArgList(i1 %cmp12.i.i1529, i1 %cmp14.i.i1531), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3217)
    #dbg_value(!DIArgList(i32 %add16.i.i1533, i32 %add11.i.i1528), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3204)
  %call44.i1534 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1505, i32 noundef %add11.i.i1528), !dbg !3231
    #dbg_value(i32 %call44.i1534, !2345, !DIExpression(), !3204)
  %call46.i1535 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1510, i32 noundef %add16.i.i1533), !dbg !3232
    #dbg_value(i32 %call46.i1535, !2346, !DIExpression(), !3204)
    #dbg_value(i32 %call44.i1534, !2388, !DIExpression(), !3233)
    #dbg_value(i32 %call46.i1535, !2393, !DIExpression(), !3233)
  %shl.i73.i1536 = shl nuw nsw i32 %call46.i1535, 8, !dbg !3235
  %add.i74.i1537 = add nuw nsw i32 %shl.i73.i1536, %call44.i1534, !dbg !3236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1499) #7, !dbg !3237
    #dbg_value(i32 %add.i74.i1537, !1664, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3238)
    #dbg_value(ptr %h, !2046, !DIExpression(), !3239)
    #dbg_value(i32 0, !2052, !DIExpression(), !3239)
    #dbg_value(i32 0, !2053, !DIExpression(), !3239)
    #dbg_value(i32 2, !2054, !DIExpression(), !3239)
    #dbg_value(i32 4, !2055, !DIExpression(), !3239)
    #dbg_value(i64 %indvars.iv1822, !2056, !DIExpression(), !3239)
    #dbg_value(i32 %add.i74.i1537, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3239)
  %arrayidx4.i1541 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12, !dbg !3241
    #dbg_value(ptr %arrayidx4.i1541, !2058, !DIExpression(), !3239)
  %conv.i1542 = and i32 %add.i74.i1537, 65535, !dbg !3242
    #dbg_value(ptr %arrayidx4.i1541, !2064, !DIExpression(), !3243)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3243)
    #dbg_value(i32 4, !2070, !DIExpression(), !3243)
    #dbg_value(i32 2, !2071, !DIExpression(), !3243)
    #dbg_value(i32 %conv.i1542, !2072, !DIExpression(), !3243)
    #dbg_value(ptr %arrayidx4.i1541, !2073, !DIExpression(), !3243)
    #dbg_value(i32 %add.i74.i1537, !2074, !DIExpression(), !3243)
  %mul8.i.i1543 = mul nuw i32 %conv.i1542, 65537, !dbg !3245
    #dbg_value(i32 %mul8.i.i1543, !2075, !DIExpression(), !3243)
    #dbg_value(i32 %mul8.i.i1543, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3243)
    #dbg_value(i32 16, !2071, !DIExpression(), !3243)
  store i32 %mul8.i.i1543, ptr %arrayidx4.i1541, align 4, !dbg !3246
  %add.ptr49.i.i1546 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 16, !dbg !3247
  store i32 %mul8.i.i1543, ptr %add.ptr49.i.i1546, align 4, !dbg !3248
  %add.ptr56.i.i1547 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 32, !dbg !3249
  store i32 %mul8.i.i1543, ptr %add.ptr56.i.i1547, align 4, !dbg !3250
  %add.ptr59.i.i1548 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 48, !dbg !3251
  store i32 %mul8.i.i1543, ptr %add.ptr59.i.i1548, align 4, !dbg !3252
  br label %if.end444, !dbg !3253

if.end444:                                        ; preds = %do.body437, %if.else431
  %arrayidx447 = getelementptr inbounds i8, ptr %arrayidx433, i64 1, !dbg !3254
  %396 = load i8, ptr %arrayidx447, align 1, !dbg !3254
  %tobool448.not = icmp eq i8 %396, 0, !dbg !3254
  br i1 %tobool448.not, label %for.inc460, label %do.body450, !dbg !3255

do.body450:                                       ; preds = %if.end444
    #dbg_assign(i1 undef, !2335, !DIExpression(), !1707, ptr %mvp.i1549, !DIExpression(), !3256)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3256)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3256)
    #dbg_value(i64 %indvars.iv1822, !2342, !DIExpression(), !3256)
    #dbg_value(i32 4, !2343, !DIExpression(), !3256)
    #dbg_value(i32 2, !2344, !DIExpression(), !3256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1549) #7, !dbg !3258
  %397 = trunc nuw nsw i64 %indvars.iv1822 to i32, !dbg !3259
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %397, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i1549) #7, !dbg !3259
  %arrayidx4.i1552 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 14, !dbg !3260
  %398 = load i16, ptr %arrayidx4.i1552, align 4, !dbg !3260
  %conv.i1553 = sext i16 %398 to i32, !dbg !3260
  %399 = load i16, ptr %mvp.i1549, align 4, !dbg !3261
  %conv7.i1554 = sext i16 %399 to i32, !dbg !3261
  %sub.i1555 = sub nsw i32 %conv.i1553, %conv7.i1554, !dbg !3262
    #dbg_value(i32 %sub.i1555, !2345, !DIExpression(), !3256)
  %arrayidx17.i1556 = getelementptr inbounds i8, ptr %arrayidx4.i1552, i64 2, !dbg !3263
  %400 = load i16, ptr %arrayidx17.i1556, align 2, !dbg !3263
  %conv18.i1557 = sext i16 %400 to i32, !dbg !3263
  %401 = load i16, ptr %arrayidx19.i1558, align 2, !dbg !3264
  %conv20.i1559 = sext i16 %401 to i32, !dbg !3264
  %sub21.i1560 = sub nsw i32 %conv18.i1557, %conv20.i1559, !dbg !3265
    #dbg_value(i32 %sub21.i1560, !2346, !DIExpression(), !3256)
  %arrayidx30.i1562 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 13, !dbg !3266
  %arrayidx41.i1563 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 6, !dbg !3267
  %arrayidx30.val.i1564 = load i8, ptr %arrayidx30.i1562, align 1, !dbg !3268
  %402 = getelementptr i8, ptr %arrayidx30.i1562, i64 1, !dbg !3268
  %arrayidx30.val71.i1565 = load i8, ptr %402, align 1, !dbg !3268
  %arrayidx41.val.i1566 = load i8, ptr %arrayidx41.i1563, align 1, !dbg !3268
  %403 = getelementptr i8, ptr %arrayidx41.i1563, i64 1, !dbg !3268
  %arrayidx41.val72.i1567 = load i8, ptr %403, align 1, !dbg !3268
    #dbg_value(ptr undef, !2364, !DIExpression(), !3269)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3269)
  %conv.i.i1568 = zext i8 %arrayidx30.val.i1564 to i32, !dbg !3271
  %conv2.i.i1569 = zext i8 %arrayidx41.val.i1566 to i32, !dbg !3272
  %add.i.i1570 = add nuw nsw i32 %conv2.i.i1569, %conv.i.i1568, !dbg !3273
    #dbg_value(i32 %add.i.i1570, !2370, !DIExpression(), !3269)
  %conv4.i.i1571 = zext i8 %arrayidx30.val71.i1565 to i32, !dbg !3274
  %conv6.i.i1572 = zext i8 %arrayidx41.val72.i1567 to i32, !dbg !3275
  %add7.i.i1573 = add nuw nsw i32 %conv6.i.i1572, %conv4.i.i1571, !dbg !3276
    #dbg_value(i32 %add7.i.i1573, !2371, !DIExpression(), !3269)
  %cmp.i.i1574 = icmp ugt i32 %add.i.i1570, 2, !dbg !3277
  %conv8.i.i1575 = zext i1 %cmp.i.i1574 to i32, !dbg !3277
  %cmp9.i.i1576 = icmp ugt i32 %add.i.i1570, 32, !dbg !3278
  %conv10.i.i1577 = zext i1 %cmp9.i.i1576 to i32, !dbg !3278
  %add11.i.i1578 = add nuw nsw i32 %conv8.i.i1575, %conv10.i.i1577, !dbg !3279
    #dbg_value(!DIArgList(i1 %cmp.i.i1574, i1 %cmp9.i.i1576), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3269)
  %cmp12.i.i1579 = icmp ugt i32 %add7.i.i1573, 2, !dbg !3280
  %conv13.i.i1580 = zext i1 %cmp12.i.i1579 to i32, !dbg !3280
  %cmp14.i.i1581 = icmp ugt i32 %add7.i.i1573, 32, !dbg !3281
  %conv15.i.i1582 = zext i1 %cmp14.i.i1581 to i32, !dbg !3281
  %add16.i.i1583 = add nuw nsw i32 %conv13.i.i1580, %conv15.i.i1582, !dbg !3282
    #dbg_value(!DIArgList(i1 %cmp12.i.i1579, i1 %cmp14.i.i1581), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3269)
    #dbg_value(!DIArgList(i32 %add16.i.i1583, i32 %add11.i.i1578), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3256)
  %call44.i1584 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1555, i32 noundef %add11.i.i1578), !dbg !3283
    #dbg_value(i32 %call44.i1584, !2345, !DIExpression(), !3256)
  %call46.i1585 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1560, i32 noundef %add16.i.i1583), !dbg !3284
    #dbg_value(i32 %call46.i1585, !2346, !DIExpression(), !3256)
    #dbg_value(i32 %call44.i1584, !2388, !DIExpression(), !3285)
    #dbg_value(i32 %call46.i1585, !2393, !DIExpression(), !3285)
  %shl.i73.i1586 = shl nuw nsw i32 %call46.i1585, 8, !dbg !3287
  %add.i74.i1587 = add nuw nsw i32 %shl.i73.i1586, %call44.i1584, !dbg !3288
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1549) #7, !dbg !3289
    #dbg_value(i32 %add.i74.i1587, !1668, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3290)
    #dbg_value(ptr %h, !2046, !DIExpression(), !3291)
    #dbg_value(i32 2, !2052, !DIExpression(), !3291)
    #dbg_value(i32 0, !2053, !DIExpression(), !3291)
    #dbg_value(i32 2, !2054, !DIExpression(), !3291)
    #dbg_value(i32 4, !2055, !DIExpression(), !3291)
    #dbg_value(i64 %indvars.iv1822, !2056, !DIExpression(), !3291)
    #dbg_value(i32 %add.i74.i1587, !2057, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3291)
  %arrayidx4.i1591 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 14, !dbg !3293
    #dbg_value(ptr %arrayidx4.i1591, !2058, !DIExpression(), !3291)
  %conv.i1592 = and i32 %add.i74.i1587, 65535, !dbg !3294
    #dbg_value(ptr %arrayidx4.i1591, !2064, !DIExpression(), !3295)
    #dbg_value(i32 2, !2069, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3295)
    #dbg_value(i32 4, !2070, !DIExpression(), !3295)
    #dbg_value(i32 2, !2071, !DIExpression(), !3295)
    #dbg_value(i32 %conv.i1592, !2072, !DIExpression(), !3295)
    #dbg_value(ptr %arrayidx4.i1591, !2073, !DIExpression(), !3295)
    #dbg_value(i32 %add.i74.i1587, !2074, !DIExpression(), !3295)
  %mul8.i.i1593 = mul nuw i32 %conv.i1592, 65537, !dbg !3297
    #dbg_value(i32 %mul8.i.i1593, !2075, !DIExpression(), !3295)
    #dbg_value(i32 %mul8.i.i1593, !2076, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !3295)
    #dbg_value(i32 16, !2071, !DIExpression(), !3295)
  store i32 %mul8.i.i1593, ptr %arrayidx4.i1591, align 4, !dbg !3298
  %add.ptr49.i.i1596 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 16, !dbg !3299
  store i32 %mul8.i.i1593, ptr %add.ptr49.i.i1596, align 4, !dbg !3300
  %add.ptr56.i.i1597 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 32, !dbg !3301
  store i32 %mul8.i.i1593, ptr %add.ptr56.i.i1597, align 4, !dbg !3302
  %add.ptr59.i.i1598 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 48, !dbg !3303
  store i32 %mul8.i.i1593, ptr %add.ptr59.i.i1598, align 4, !dbg !3304
  br label %for.inc460, !dbg !3305

for.inc460:                                       ; preds = %do.body391, %if.then385, %if.end444, %do.body450, %if.end417, %do.body423
    #dbg_value(i64 %indvars.iv1822, !1578, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1723)
  br i1 %cmp378, label %for.body380, label %if.end467, !dbg !3047, !llvm.loop !3306

if.end467:                                        ; preds = %x264_cabac_mb8x8_mvd.exit, %for.inc460, %for.inc311.2, %do.body296.3, %if.else.thread1855, %if.then33.i, %if.then28.i, %if.end23.i, %if.else, %do.body105, %do.body128, %do.body
  %or.cond6911746 = phi i1 [ false, %if.else ], [ false, %do.body105 ], [ false, %do.body128 ], [ false, %do.body ], [ true, %if.end23.i ], [ true, %if.then28.i ], [ true, %if.then33.i ], [ false, %if.else.thread1855 ], [ false, %do.body296.3 ], [ false, %for.inc311.2 ], [ false, %for.inc460 ], [ false, %x264_cabac_mb8x8_mvd.exit ]
  %cmp451744 = phi i1 [ %cmp451745, %if.else ], [ %cmp4517451848, %do.body105 ], [ %cmp4517451848, %do.body128 ], [ %cmp4517451848, %do.body ], [ %cmp45, %if.end23.i ], [ %cmp45, %if.then28.i ], [ %cmp45, %if.then33.i ], [ false, %if.else.thread1855 ], [ %cmp4517451854, %do.body296.3 ], [ %cmp4517451854, %for.inc311.2 ], [ %cmp451745, %for.inc460 ], [ %cmp4517451851, %x264_cabac_mb8x8_mvd.exit ]
    #dbg_value(ptr %cb, !1725, !DIExpression(), !3308)
  %404 = load ptr, ptr %p.i, align 8, !dbg !3310
  %405 = load ptr, ptr %p_start.i, align 16, !dbg !3311
  %sub.ptr.lhs.cast.i1601 = ptrtoint ptr %404 to i64, !dbg !3312
  %sub.ptr.rhs.cast.i1602 = ptrtoint ptr %405 to i64, !dbg !3312
  %sub.ptr.sub.i1603 = sub i64 %sub.ptr.lhs.cast.i1601, %sub.ptr.rhs.cast.i1602, !dbg !3312
  %406 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !3313
  %407 = load i32, ptr %i_queue.i, align 8, !dbg !3314
  %408 = trunc i64 %sub.ptr.sub.i1603 to i32, !dbg !3315
  %add.tr.i1606 = add i32 %406, %408, !dbg !3315
  %409 = shl i32 %add.tr.i1606, 3, !dbg !3315
  %conv3.i1607 = add i32 %409, %407, !dbg !3315
    #dbg_value(i32 %conv3.i1607, !1580, !DIExpression(), !1723)
  %stat470 = getelementptr inbounds i8, ptr %h, i64 26712, !dbg !3316
  %410 = load i32, ptr %stat470, align 8, !dbg !3317
  %sub469 = add i32 %410, %conv3.i.neg1772, !dbg !3318
  %add473 = add i32 %sub469, %conv3.i1607, !dbg !3317
  store i32 %add473, ptr %stat470, align 8, !dbg !3317
  br i1 %cmp451744, label %if.end477, label %if.then476, !dbg !3319

if.then476:                                       ; preds = %if.end467
    #dbg_value(ptr %h, !3320, !DIExpression(), !3327)
    #dbg_value(ptr %cb, !3323, !DIExpression(), !3327)
  %i_cbp_luma.i = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3331
  %411 = load i32, ptr %i_cbp_luma.i, align 8, !dbg !3331
    #dbg_value(i32 %411, !3324, !DIExpression(), !3327)
  %i_cbp_left.i = getelementptr inbounds i8, ptr %h, i64 25780, !dbg !3332
  %412 = load i32, ptr %i_cbp_left.i, align 4, !dbg !3332
    #dbg_value(i32 %412, !3325, !DIExpression(), !3327)
  %i_cbp_top.i = getelementptr inbounds i8, ptr %h, i64 25776, !dbg !3333
  %413 = load i32, ptr %i_cbp_top.i, align 16, !dbg !3333
    #dbg_value(i32 %413, !3326, !DIExpression(), !3327)
  %414 = shl i32 %412, 30, !dbg !3334
  %415 = ashr i32 %414, 31, !dbg !3334
  %sub.i1608 = add nsw i32 %415, 76, !dbg !3335
  %shr4.i1609 = lshr i32 %413, 1, !dbg !3336
  %and5.i = and i32 %shr4.i1609, 2, !dbg !3337
  %sub6.i = sub nuw nsw i32 %sub.i1608, %and5.i, !dbg !3338
  %and8.i = and i32 %411, 1, !dbg !3339
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub6.i, i32 noundef %and8.i) #7, !dbg !3340
  %shr12.i = lshr i32 %413, 2, !dbg !3341
  %and13.i = and i32 %shr12.i, 2, !dbg !3342
  %416 = or disjoint i32 %and8.i, %and13.i, !dbg !3343
  %sub14.i = sub nuw nsw i32 76, %416, !dbg !3343
  %shr1547.i = lshr i32 %411, 1, !dbg !3344
  %and16.i = and i32 %shr1547.i, 1, !dbg !3345
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub14.i, i32 noundef %and16.i) #7, !dbg !3346
  %417 = shl i32 %412, 28, !dbg !3347
  %418 = ashr i32 %417, 31, !dbg !3347
  %shl.i = shl i32 %411, 1, !dbg !3348
  %and20.i = and i32 %shl.i, 2, !dbg !3349
  %reass.sub = sub nsw i32 %418, %and20.i, !dbg !3350
  %sub21.i1610 = add nsw i32 %reass.sub, 76, !dbg !3350
  %shr2249.i = lshr i32 %411, 2, !dbg !3351
  %and23.i = and i32 %shr2249.i, 1, !dbg !3352
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub21.i1610, i32 noundef %and23.i) #7, !dbg !3353
  %and28.i1611 = and i32 %411, 2, !dbg !3354
  %419 = or disjoint i32 %and28.i1611, %and23.i, !dbg !3355
  %sub29.i = sub nuw nsw i32 76, %419, !dbg !3355
  %shr3050.i = lshr i32 %411, 3, !dbg !3356
  %and31.i = and i32 %shr3050.i, 1, !dbg !3357
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub29.i, i32 noundef %and31.i) #7, !dbg !3358
    #dbg_value(ptr %h, !3359, !DIExpression(), !3366)
    #dbg_value(ptr %cb, !3362, !DIExpression(), !3366)
  %420 = load i32, ptr %i_cbp_left.i, align 4, !dbg !3368
  %and.i1613 = and i32 %420, 48, !dbg !3369
    #dbg_value(i32 %and.i1613, !3363, !DIExpression(), !3366)
  %421 = load i32, ptr %i_cbp_top.i, align 16, !dbg !3370
  %and3.i1615 = and i32 %421, 48, !dbg !3371
    #dbg_value(i32 %and3.i1615, !3364, !DIExpression(), !3366)
    #dbg_value(i32 0, !3365, !DIExpression(), !3366)
  %tobool.not.i1616 = icmp ne i32 %and.i1613, 0, !dbg !3372
  %cmp.not.i1617 = icmp ne i32 %420, -1
  %or.cond.not.i = and i1 %cmp.not.i1617, %tobool.not.i1616, !dbg !3374
  %ctx.0.i1618 = zext i1 %or.cond.not.i to i32, !dbg !3374
    #dbg_value(i32 %ctx.0.i1618, !3365, !DIExpression(), !3366)
  %tobool7.not.i = icmp eq i32 %and3.i1615, 0, !dbg !3375
  %cmp12.not.i = icmp eq i32 %421, -1, !dbg !3377
  %add.i1619 = or disjoint i32 %ctx.0.i1618, 2, !dbg !3377
  %422 = or i1 %cmp12.not.i, %tobool7.not.i, !dbg !3377
  %ctx.1.i1620 = select i1 %422, i32 %ctx.0.i1618, i32 %add.i1619, !dbg !3377
    #dbg_value(i32 %ctx.1.i1620, !3365, !DIExpression(), !3366)
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3378
  %423 = load i32, ptr %i_cbp_chroma.i, align 4, !dbg !3378
  %cmp16.i = icmp eq i32 %423, 0, !dbg !3380
  %add18.i = add nuw nsw i32 %ctx.1.i1620, 77, !dbg !3381
  br i1 %cmp16.i, label %if.then17.i, label %if.else.i1621, !dbg !3382

if.then17.i:                                      ; preds = %if.then476
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add18.i, i32 noundef 0) #7, !dbg !3383
  br label %if.end477, !dbg !3383

if.else.i1621:                                    ; preds = %if.then476
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add18.i, i32 noundef 1) #7, !dbg !3384
    #dbg_value(i32 4, !3365, !DIExpression(), !3366)
  %cmp20.i1622 = icmp eq i32 %and.i1613, 32, !dbg !3386
  %spec.select47.i = select i1 %cmp20.i1622, i32 5, i32 4, !dbg !3388
    #dbg_value(i32 %spec.select47.i, !3365, !DIExpression(), !3366)
  %cmp24.i1623 = icmp eq i32 %and3.i1615, 32, !dbg !3389
  %add26.i = or disjoint i32 %spec.select47.i, 2, !dbg !3391
  %ctx.3.i = select i1 %cmp24.i1623, i32 %add26.i, i32 %spec.select47.i, !dbg !3391
    #dbg_value(i32 %ctx.3.i, !3365, !DIExpression(), !3366)
  %add28.i1624 = add nuw nsw i32 %ctx.3.i, 77, !dbg !3392
  %424 = load i32, ptr %i_cbp_chroma.i, align 4, !dbg !3393
  %shr.i1625 = ashr i32 %424, 1, !dbg !3394
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add28.i1624, i32 noundef %shr.i1625) #7, !dbg !3395
  br label %if.end477

if.end477:                                        ; preds = %if.else.i1621, %if.then17.i, %if.end467
    #dbg_value(ptr %h, !1504, !DIExpression(), !3396)
  %pps.i = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !3399
  %425 = load ptr, ptr %pps.i, align 16, !dbg !3399
  %b_transform_8x8_mode.i = getelementptr inbounds i8, ptr %425, i64 60, !dbg !3401
  %426 = load i32, ptr %b_transform_8x8_mode.i, align 4, !dbg !3401
  %tobool.not.i1627 = icmp eq i32 %426, 0, !dbg !3402
  br i1 %tobool.not.i1627, label %if.end484, label %if.end.i1628, !dbg !3403

if.end.i1628:                                     ; preds = %if.end477
  %427 = load i32, ptr %i_type, align 8, !dbg !3404
  %cmp.not.i1630 = icmp eq i32 %427, 5, !dbg !3406
  br i1 %cmp.not.i1630, label %if.end4.i, label %if.then1.i, !dbg !3407

if.then1.i:                                       ; preds = %if.end.i1628
  %idxprom.i1631 = sext i32 %427 to i64, !dbg !3408
  %arrayidx.i1632 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %idxprom.i1631, !dbg !3408
  %428 = load i8, ptr %arrayidx.i1632, align 1, !dbg !3408
  %conv.i1633 = zext i8 %428 to i32, !dbg !3408
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !3409

if.end4.i:                                        ; preds = %if.end.i1628
  %i_sub_partition.i1635 = getelementptr inbounds i8, ptr %h, i64 17392, !dbg !3410
  %429 = load i32, ptr %i_sub_partition.i1635, align 16, !dbg !3410
  %cmp6.i = icmp eq i32 %429, 50529027, !dbg !3411
  %conv7.i1636 = zext i1 %cmp6.i to i32, !dbg !3411
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !3412

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i1634 = phi i32 [ %conv.i1633, %if.then1.i ], [ %conv7.i1636, %if.end4.i ], !dbg !3396
  %tobool479.not = icmp eq i32 %retval.0.i1634, 0, !dbg !3413
  br i1 %tobool479.not, label %if.end484, label %land.lhs.true480, !dbg !3414

land.lhs.true480:                                 ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3415
  %430 = load i32, ptr %i_cbp_luma, align 8, !dbg !3415
  %tobool482.not = icmp eq i32 %430, 0, !dbg !3416
  br i1 %tobool482.not, label %if.end484, label %if.then483, !dbg !3417

if.then483:                                       ; preds = %land.lhs.true480
  %431 = getelementptr i8, ptr %h, i64 17396, !dbg !3418
  %h.val = load i32, ptr %431, align 4, !dbg !3418
  %432 = getelementptr i8, ptr %h, i64 25768, !dbg !3418
  %h.val988 = load i32, ptr %432, align 8, !dbg !3418
    #dbg_value(ptr undef, !1907, !DIExpression(), !3420)
    #dbg_value(ptr %cb, !1910, !DIExpression(), !3420)
  %add.i1637 = add nsw i32 %h.val988, 399, !dbg !3422
    #dbg_value(i32 %add.i1637, !1911, !DIExpression(), !3420)
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i1637, i32 noundef %h.val) #7, !dbg !3423
  br label %if.end484, !dbg !3424

if.end484:                                        ; preds = %if.end477, %if.then483, %land.lhs.true480, %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma486 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3425
  %433 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3425
  %cmp487 = icmp sgt i32 %433, 0, !dbg !3426
  br i1 %cmp487, label %if.then496, label %lor.lhs.false489, !dbg !3427

lor.lhs.false489:                                 ; preds = %if.end484
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3428
  %434 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3428
  %cmp491 = icmp sgt i32 %434, 0, !dbg !3429
  %or.cond694 = or i1 %cmp451744, %cmp491, !dbg !3430
  br i1 %or.cond694, label %if.then496, label %cleanup, !dbg !3430

if.then496:                                       ; preds = %lor.lhs.false489, %if.end484
  %lor.ext = zext i1 %or.cond6911746 to i32, !dbg !3431
    #dbg_value(i32 %lor.ext, !1671, !DIExpression(), !3432)
    #dbg_value(ptr %h, !3433, !DIExpression(), !3442)
    #dbg_value(ptr %cb, !3436, !DIExpression(), !3442)
  %i_qp.i = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3444
  %435 = load i32, ptr %i_qp.i, align 16, !dbg !3444
  %i_last_qp.i = getelementptr inbounds i8, ptr %h, i64 25800, !dbg !3445
  %436 = load i32, ptr %i_last_qp.i, align 8, !dbg !3445
  %sub.i1638 = sub nsw i32 %435, %436, !dbg !3446
    #dbg_value(i32 %sub.i1638, !3437, !DIExpression(), !3442)
  %437 = load i32, ptr %i_type, align 8, !dbg !3447
  %cmp.i1640 = icmp eq i32 %437, 2, !dbg !3449
  br i1 %cmp.i1640, label %land.lhs.true.i1651, label %if.end.i1641, !dbg !3450

land.lhs.true.i1651:                              ; preds = %if.then496
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !3451
  %438 = load ptr, ptr %cbp.i, align 16, !dbg !3451
  %i_mb_xy.i1652 = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !3452
  %439 = load i32, ptr %i_mb_xy.i1652, align 8, !dbg !3452
  %idxprom.i1653 = sext i32 %439 to i64, !dbg !3453
  %arrayidx.i1654 = getelementptr inbounds i16, ptr %438, i64 %idxprom.i1653, !dbg !3453
  %440 = load i16, ptr %arrayidx.i1654, align 2, !dbg !3453
  %tobool.not.i1655 = icmp eq i16 %440, 0, !dbg !3453
  br i1 %tobool.not.i1655, label %if.then.i1656, label %if.end.i1641, !dbg !3454

if.then.i1656:                                    ; preds = %land.lhs.true.i1651
  store i32 %436, ptr %i_qp.i, align 16, !dbg !3455
    #dbg_value(i32 0, !3437, !DIExpression(), !3442)
  br label %if.end.i1641, !dbg !3457

if.end.i1641:                                     ; preds = %if.then.i1656, %land.lhs.true.i1651, %if.then496
  %i_dqp.0.i = phi i32 [ %sub.i1638, %land.lhs.true.i1651 ], [ 0, %if.then.i1656 ], [ %sub.i1638, %if.then496 ], !dbg !3442
    #dbg_value(i32 %i_dqp.0.i, !3437, !DIExpression(), !3442)
  %i_last_dqp.i = getelementptr inbounds i8, ptr %h, i64 25804, !dbg !3458
  %441 = load i32, ptr %i_last_dqp.i, align 4, !dbg !3458
  %tobool10.not.i = icmp eq i32 %441, 0, !dbg !3459
  br i1 %tobool10.not.i, label %land.end.i, label %land.rhs.i, !dbg !3460

land.rhs.i:                                       ; preds = %if.end.i1641
  %cbp12.i = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !3461
  %442 = load ptr, ptr %cbp12.i, align 16, !dbg !3461
  %i_mb_prev_xy.i = getelementptr inbounds i8, ptr %h, i64 16596, !dbg !3462
  %443 = load i32, ptr %i_mb_prev_xy.i, align 4, !dbg !3462
  %idxprom14.i = sext i32 %443 to i64, !dbg !3463
  %arrayidx15.i = getelementptr inbounds i16, ptr %442, i64 %idxprom14.i, !dbg !3463
  %444 = load i16, ptr %arrayidx15.i, align 2, !dbg !3463
  %tobool16.i = icmp ne i16 %444, 0, !dbg !3460
  %445 = zext i1 %tobool16.i to i32, !dbg !3460
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i1641
  %land.ext.i = phi i32 [ 0, %if.end.i1641 ], [ %445, %land.rhs.i ], !dbg !3442
    #dbg_value(i32 %land.ext.i, !3438, !DIExpression(), !3442)
  %cmp17.not.i = icmp eq i32 %i_dqp.0.i, 0, !dbg !3464
  br i1 %cmp17.not.i, label %x264_cabac_mb_qp_delta.exit, label %if.then19.i, !dbg !3465

if.then19.i:                                      ; preds = %land.end.i
  %cmp20.i1642 = icmp slt i32 %i_dqp.0.i, 1, !dbg !3466
  %mul.i1643 = mul nsw i32 %i_dqp.0.i, -2, !dbg !3467
  %mul22.i = shl nuw nsw i32 %i_dqp.0.i, 1, !dbg !3467
  %sub23.i = add nsw i32 %mul22.i, -1, !dbg !3467
  %cond.i = select i1 %cmp20.i1642, i32 %mul.i1643, i32 %sub23.i, !dbg !3467
    #dbg_value(i32 %cond.i, !3439, !DIExpression(), !3468)
  %cmp24.i1644 = icmp sgt i32 %cond.i, 50, !dbg !3469
  %cmp27.i = icmp ne i32 %cond.i, 52
  %or.cond.i = and i1 %cmp24.i1644, %cmp27.i, !dbg !3471
  %sub30.i = sub nsw i32 103, %cond.i, !dbg !3471
  %val.0.i = select i1 %or.cond.i, i32 %sub30.i, i32 %cond.i, !dbg !3471
    #dbg_value(i32 %val.0.i, !3439, !DIExpression(), !3468)
  br label %do.body.i1645, !dbg !3472

do.body.i1645:                                    ; preds = %do.body.i1645, %if.then19.i
  %ctx.0.i1646 = phi i32 [ %land.ext.i, %if.then19.i ], [ %add32.i, %do.body.i1645 ], !dbg !3442
  %val.1.i = phi i32 [ %val.0.i, %if.then19.i ], [ %dec.i1649, %do.body.i1645 ], !dbg !3468
    #dbg_value(i32 %val.1.i, !3439, !DIExpression(), !3468)
    #dbg_value(i32 %ctx.0.i1646, !3438, !DIExpression(), !3442)
  %add.i1647 = add nuw nsw i32 %ctx.0.i1646, 60, !dbg !3473
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add.i1647, i32 noundef 1) #7, !dbg !3475
  %shr.i1648 = lshr i32 %ctx.0.i1646, 1, !dbg !3476
  %add32.i = add nuw nsw i32 %shr.i1648, 2, !dbg !3477
    #dbg_value(i32 %add32.i, !3438, !DIExpression(), !3442)
  %dec.i1649 = add nsw i32 %val.1.i, -1, !dbg !3478
    #dbg_value(i32 %dec.i1649, !3439, !DIExpression(), !3468)
  %tobool33.not.i = icmp eq i32 %dec.i1649, 0, !dbg !3479
  br i1 %tobool33.not.i, label %x264_cabac_mb_qp_delta.exit, label %do.body.i1645, !dbg !3479, !llvm.loop !3480

x264_cabac_mb_qp_delta.exit:                      ; preds = %do.body.i1645, %land.end.i
  %ctx.1.i1650 = phi i32 [ %land.ext.i, %land.end.i ], [ %add32.i, %do.body.i1645 ], !dbg !3442
    #dbg_value(i32 %ctx.1.i1650, !3438, !DIExpression(), !3442)
  %add35.i = add nuw nsw i32 %ctx.1.i1650, 60, !dbg !3482
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add35.i, i32 noundef 0) #7, !dbg !3483
  br i1 %cmp451744, label %if.then509, label %if.else553, !dbg !3484

if.then509:                                       ; preds = %x264_cabac_mb_qp_delta.exit
    #dbg_value(ptr %h, !3485, !DIExpression(), !3495)
    #dbg_value(i32 0, !3490, !DIExpression(), !3495)
    #dbg_value(i32 24, !3491, !DIExpression(), !3495)
    #dbg_value(i32 1, !3492, !DIExpression(), !3495)
  %i_cbp_left.i1657 = getelementptr inbounds i8, ptr %h, i64 25780, !dbg !3497
  %446 = load i32, ptr %i_cbp_left.i1657, align 4, !dbg !3497
  %shr97.i = lshr i32 %446, 8, !dbg !3499
  %and28.i1658 = and i32 %shr97.i, 1, !dbg !3500
    #dbg_value(i32 %and28.i1658, !3493, !DIExpression(), !3495)
  %i_cbp_top.i1659 = getelementptr inbounds i8, ptr %h, i64 25776, !dbg !3501
  %447 = load i32, ptr %i_cbp_top.i1659, align 16, !dbg !3501
    #dbg_value(i32 %447, !3494, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !3495)
  %448 = lshr i32 %447, 7, !dbg !3502
  %mul35.i = and i32 %448, 2, !dbg !3502
  %add36.i = add nuw nsw i32 %and28.i1658, 85, !dbg !3503
  %add37.i = add nuw nsw i32 %add36.i, %mul35.i, !dbg !3504
    #dbg_value(i32 %add37.i, !1674, !DIExpression(), !3505)
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3506
  %arrayidx514 = getelementptr inbounds i8, ptr %h, i64 25116, !dbg !3506
  %449 = load i8, ptr %arrayidx514, align 1, !dbg !3506
  %tobool515.not = icmp eq i8 %449, 0, !dbg !3506
  br i1 %tobool515.not, label %if.else518, label %if.then516, !dbg !3508

if.then516:                                       ; preds = %if.then509
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add37.i, i32 noundef 1) #7, !dbg !3509
  %dct = getelementptr inbounds i8, ptr %h, i64 15040, !dbg !3509
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 0, ptr noundef nonnull %dct), !dbg !3509
  br label %if.end519, !dbg !3509

if.else518:                                       ; preds = %if.then509
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add37.i, i32 noundef 0) #7, !dbg !3506
  br label %if.end519

if.end519:                                        ; preds = %if.else518, %if.then516
  %450 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3511
  %cmp522.not = icmp eq i32 %450, 0, !dbg !3512
  br i1 %cmp522.not, label %if.end612, label %for.cond526.preheader, !dbg !3513

for.cond526.preheader:                            ; preds = %if.end519
    #dbg_value(i32 0, !1678, !DIExpression(), !3514)
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body530, !dbg !3515

for.body530:                                      ; preds = %for.cond526.preheader, %if.end548
  %indvars.iv1833 = phi i64 [ 0, %for.cond526.preheader ], [ %indvars.iv.next1834, %if.end548 ]
    #dbg_value(i64 %indvars.iv1833, !1678, !DIExpression(), !3514)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3516)
    #dbg_value(i32 1, !3490, !DIExpression(), !3516)
    #dbg_value(i64 %indvars.iv1833, !3491, !DIExpression(), !3516)
    #dbg_value(i32 1, !3492, !DIExpression(), !3516)
  %arrayidx.i1662 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1833, !dbg !3518
  %451 = load i32, ptr %arrayidx.i1662, align 4, !dbg !3518
  %sub.i1663 = add nsw i32 %451, -1, !dbg !3519
  %idxprom1.i1664 = sext i32 %sub.i1663 to i64, !dbg !3520
  %arrayidx2.i1665 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom1.i1664, !dbg !3520
  %452 = load i8, ptr %arrayidx2.i1665, align 1, !dbg !3520
    #dbg_value(i8 %452, !3493, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3516)
  %sub8.i = add nsw i32 %451, -8, !dbg !3521
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !3522
  %arrayidx10.i = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom9.i, !dbg !3522
  %453 = load i8, ptr %arrayidx10.i, align 1, !dbg !3522
    #dbg_value(i8 %453, !3494, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3516)
  %tobool.not.i1668 = icmp eq i8 %453, 0, !dbg !3523
  %mul17.i = select i1 %tobool.not.i1668, i32 0, i32 2, !dbg !3526
  %tobool19.i.not = icmp eq i8 %452, 0, !dbg !3527
  %add18.i1669 = select i1 %tobool19.i.not, i32 89, i32 90, !dbg !3528
  %add24.i = add nuw nsw i32 %mul17.i, %add18.i1669, !dbg !3529
    #dbg_value(i32 %add24.i, !1681, !DIExpression(), !3530)
  %idxprom538 = sext i32 %451 to i64, !dbg !3531
  %arrayidx539 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom538, !dbg !3531
  %454 = load i8, ptr %arrayidx539, align 1, !dbg !3531
  %tobool540.not = icmp eq i8 %454, 0, !dbg !3531
  br i1 %tobool540.not, label %if.else547, label %if.then541, !dbg !3533

if.then541:                                       ; preds = %for.body530
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i, i32 noundef 1) #7, !dbg !3534
  %add.ptr546 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv1833, i64 1, !dbg !3534
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 1, ptr noundef nonnull %add.ptr546), !dbg !3534
  br label %if.end548, !dbg !3534

if.else547:                                       ; preds = %for.body530
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i, i32 noundef 0) #7, !dbg !3531
  br label %if.end548

if.end548:                                        ; preds = %if.else547, %if.then541
  %indvars.iv.next1834 = add nuw nsw i64 %indvars.iv1833, 1, !dbg !3536
    #dbg_value(i64 %indvars.iv.next1834, !1678, !DIExpression(), !3514)
  %exitcond1836.not = icmp eq i64 %indvars.iv.next1834, 16, !dbg !3537
  br i1 %exitcond1836.not, label %if.end612, label %for.body530, !dbg !3515, !llvm.loop !3538

if.else553:                                       ; preds = %x264_cabac_mb_qp_delta.exit
  %b_transform_8x8555 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3540
  %455 = load i32, ptr %b_transform_8x8555, align 4, !dbg !3540
  %tobool556.not = icmp eq i32 %455, 0, !dbg !3541
  br i1 %tobool556.not, label %for.cond578.preheader, label %for.cond559.preheader, !dbg !3542

for.cond559.preheader:                            ; preds = %if.else553
    #dbg_value(i64 0, !1684, !DIExpression(), !3543)
  %456 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3544
  %and = and i32 %456, 1, !dbg !3547
  %tobool566.not = icmp eq i32 %and, 0, !dbg !3547
  br i1 %tobool566.not, label %for.inc573, label %if.then567, !dbg !3548

for.cond578.preheader:                            ; preds = %if.else553
    #dbg_value(i32 0, !1688, !DIExpression(), !3549)
  %non_zero_count.i1671 = getelementptr inbounds i8, ptr %h, i64 25072
  %add.i1683 = select i1 %or.cond6911746, i32 255, i32 127
  %luma4x4601 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body582, !dbg !3550

if.then567:                                       ; preds = %for.cond559.preheader
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %luma8x8), !dbg !3551
  %.pre1842 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3544
  br label %for.inc573, !dbg !3551

for.inc573:                                       ; preds = %for.cond559.preheader, %if.then567
  %457 = phi i32 [ %456, %for.cond559.preheader ], [ %.pre1842, %if.then567 ], !dbg !3544
    #dbg_value(i64 1, !1684, !DIExpression(), !3543)
  %and.1 = and i32 %457, 2, !dbg !3547
  %tobool566.not.1 = icmp eq i32 %and.1, 0, !dbg !3547
  br i1 %tobool566.not.1, label %for.inc573.1, label %if.then567.1, !dbg !3548

if.then567.1:                                     ; preds = %for.inc573
  %arrayidx570.1 = getelementptr inbounds i8, ptr %h, i64 15216, !dbg !3551
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.1), !dbg !3551
  %.pre1843 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3544
  br label %for.inc573.1, !dbg !3551

for.inc573.1:                                     ; preds = %if.then567.1, %for.inc573
  %458 = phi i32 [ %.pre1843, %if.then567.1 ], [ %457, %for.inc573 ], !dbg !3544
    #dbg_value(i64 2, !1684, !DIExpression(), !3543)
  %and.2 = and i32 %458, 4, !dbg !3547
  %tobool566.not.2 = icmp eq i32 %and.2, 0, !dbg !3547
  br i1 %tobool566.not.2, label %for.inc573.2, label %if.then567.2, !dbg !3548

if.then567.2:                                     ; preds = %for.inc573.1
  %arrayidx570.2 = getelementptr inbounds i8, ptr %h, i64 15344, !dbg !3551
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.2), !dbg !3551
  %.pre1844 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3544
  br label %for.inc573.2, !dbg !3551

for.inc573.2:                                     ; preds = %if.then567.2, %for.inc573.1
  %459 = phi i32 [ %.pre1844, %if.then567.2 ], [ %458, %for.inc573.1 ], !dbg !3544
    #dbg_value(i64 3, !1684, !DIExpression(), !3543)
  %and.3 = and i32 %459, 8, !dbg !3547
  %tobool566.not.3 = icmp eq i32 %and.3, 0, !dbg !3547
  br i1 %tobool566.not.3, label %if.end612, label %if.then567.3, !dbg !3548

if.then567.3:                                     ; preds = %for.inc573.2
  %arrayidx570.3 = getelementptr inbounds i8, ptr %h, i64 15472, !dbg !3551
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.3), !dbg !3551
  br label %if.end612, !dbg !3551

for.body582:                                      ; preds = %for.cond578.preheader, %for.inc608
  %indvars.iv1829 = phi i64 [ 0, %for.cond578.preheader ], [ %indvars.iv.next1830, %for.inc608 ]
    #dbg_value(i64 %indvars.iv1829, !1688, !DIExpression(), !3549)
  %460 = load i32, ptr %i_cbp_luma486, align 8, !dbg !3552
  %461 = trunc nuw nsw i64 %indvars.iv1829 to i32, !dbg !3553
  %div987 = lshr i32 %461, 2, !dbg !3553
  %shl585 = shl nuw nsw i32 1, %div987, !dbg !3554
  %and586 = and i32 %460, %shl585, !dbg !3555
  %tobool587.not = icmp eq i32 %and586, 0, !dbg !3555
  br i1 %tobool587.not, label %for.inc608, label %if.then588, !dbg !3556

if.then588:                                       ; preds = %for.body582
    #dbg_value(ptr %h, !3485, !DIExpression(), !3557)
    #dbg_value(i32 2, !3490, !DIExpression(), !3557)
    #dbg_value(i64 %indvars.iv1829, !3491, !DIExpression(), !3557)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3557)
  %arrayidx.i1673 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1829, !dbg !3559
  %462 = load i32, ptr %arrayidx.i1673, align 4, !dbg !3559
  %sub.i1674 = add nsw i32 %462, -1, !dbg !3560
  %idxprom1.i1675 = sext i32 %sub.i1674 to i64, !dbg !3561
  %arrayidx2.i1676 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom1.i1675, !dbg !3561
  %463 = load i8, ptr %arrayidx2.i1676, align 1, !dbg !3561
  %conv.i1677 = zext i8 %463 to i32, !dbg !3561
    #dbg_value(i32 %conv.i1677, !3493, !DIExpression(), !3557)
  %sub8.i1678 = add nsw i32 %462, -8, !dbg !3562
  %idxprom9.i1679 = sext i32 %sub8.i1678 to i64, !dbg !3563
  %arrayidx10.i1680 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom9.i1679, !dbg !3563
  %464 = load i8, ptr %arrayidx10.i1680, align 1, !dbg !3563
  %conv11.i1681 = zext i8 %464 to i32, !dbg !3563
    #dbg_value(i32 %conv11.i1681, !3494, !DIExpression(), !3557)
  %and.i1684 = and i32 %add.i1683, %conv.i1677, !dbg !3564
    #dbg_value(i32 %and.i1684, !3493, !DIExpression(), !3557)
  %and14.i1685 = and i32 %add.i1683, %conv11.i1681, !dbg !3565
    #dbg_value(i32 %and14.i1685, !3494, !DIExpression(), !3557)
  %tobool.not.i1686 = icmp eq i32 %and14.i1685, 0, !dbg !3566
  %mul17.i1687 = select i1 %tobool.not.i1686, i32 0, i32 2, !dbg !3567
  %tobool19.i1688.not = icmp eq i32 %and.i1684, 0, !dbg !3568
  %add18.i1690 = select i1 %tobool19.i1688.not, i32 93, i32 94, !dbg !3569
  %add24.i1691 = add nuw nsw i32 %mul17.i1687, %add18.i1690, !dbg !3570
    #dbg_value(i32 %add24.i1691, !1691, !DIExpression(), !3571)
  %idxprom596 = sext i32 %462 to i64, !dbg !3572
  %arrayidx597 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom596, !dbg !3572
  %465 = load i8, ptr %arrayidx597, align 1, !dbg !3572
  %tobool598.not = icmp eq i8 %465, 0, !dbg !3572
  br i1 %tobool598.not, label %if.else605, label %if.then599, !dbg !3574

if.then599:                                       ; preds = %if.then588
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1691, i32 noundef 1) #7, !dbg !3575
  %arrayidx603 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4601, i64 0, i64 %indvars.iv1829, !dbg !3575
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 2, ptr noundef nonnull %arrayidx603), !dbg !3575
  br label %for.inc608, !dbg !3575

if.else605:                                       ; preds = %if.then588
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1691, i32 noundef 0) #7, !dbg !3572
  br label %for.inc608

for.inc608:                                       ; preds = %if.then599, %if.else605, %for.body582
  %indvars.iv.next1830 = add nuw nsw i64 %indvars.iv1829, 1, !dbg !3577
    #dbg_value(i64 %indvars.iv.next1830, !1688, !DIExpression(), !3549)
  %exitcond1832.not = icmp eq i64 %indvars.iv.next1830, 16, !dbg !3578
  br i1 %exitcond1832.not, label %if.end612, label %for.body582, !dbg !3550, !llvm.loop !3579

if.end612:                                        ; preds = %for.inc608, %if.end548, %for.inc573.2, %if.then567.3, %if.end519
  %i_cbp_chroma614 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3581
  %466 = load i32, ptr %i_cbp_chroma614, align 4, !dbg !3581
  %tobool615.not = icmp eq i32 %466, 0, !dbg !3582
  br i1 %tobool615.not, label %cleanup, label %if.then616, !dbg !3583

if.then616:                                       ; preds = %if.end612
    #dbg_value(ptr %h, !3485, !DIExpression(), !3584)
    #dbg_value(i32 3, !3490, !DIExpression(), !3584)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3584)
    #dbg_value(i32 25, !3491, !DIExpression(DW_OP_constu, 25, DW_OP_minus, DW_OP_stack_value), !3584)
  %i_cbp_left42.i = getelementptr inbounds i8, ptr %h, i64 25780, !dbg !3586
  %467 = load i32, ptr %i_cbp_left42.i, align 4, !dbg !3586
  %cmp.not.i1693 = icmp eq i32 %467, -1, !dbg !3587
  %shr4895.i = lshr i32 %467, 9, !dbg !3588
  %and49.i = and i32 %shr4895.i, 1, !dbg !3588
  %cond.i1694 = select i1 %cmp.not.i1693, i32 %lor.ext, i32 %and49.i, !dbg !3588
    #dbg_value(i32 %cond.i1694, !3493, !DIExpression(), !3584)
  %i_cbp_top52.i = getelementptr inbounds i8, ptr %h, i64 25776, !dbg !3589
  %468 = load i32, ptr %i_cbp_top52.i, align 16, !dbg !3589
  %cmp53.not.i = icmp eq i32 %468, -1, !dbg !3590
  %shr6096.i = lshr i32 %468, 9, !dbg !3591
  %and61.i = and i32 %shr6096.i, 1, !dbg !3591
  %cond64.i = select i1 %cmp53.not.i, i32 %lor.ext, i32 %and61.i, !dbg !3591
    #dbg_value(i32 %cond64.i, !3494, !DIExpression(), !3584)
  %mul67.i = shl nuw nsw i32 %cond64.i, 1, !dbg !3592
  %add68.i = add nuw nsw i32 %cond.i1694, 97, !dbg !3593
  %add69.i = add nuw nsw i32 %add68.i, %mul67.i, !dbg !3594
    #dbg_value(i32 %add69.i, !1695, !DIExpression(), !3595)
  %arrayidx623 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !3596
  %469 = load i8, ptr %arrayidx623, align 1, !dbg !3596
  %tobool624.not = icmp eq i8 %469, 0, !dbg !3596
  br i1 %tobool624.not, label %if.else629, label %if.then625, !dbg !3598

if.then625:                                       ; preds = %if.then616
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i, i32 noundef 1) #7, !dbg !3599
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072, !dbg !3599
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 3, ptr noundef nonnull %chroma_dc), !dbg !3599
  br label %if.end630, !dbg !3599

if.else629:                                       ; preds = %if.then616
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i, i32 noundef 0) #7, !dbg !3596
  br label %if.end630

if.end630:                                        ; preds = %if.else629, %if.then625
    #dbg_value(ptr %h, !3485, !DIExpression(), !3601)
    #dbg_value(i32 3, !3490, !DIExpression(), !3601)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3601)
    #dbg_value(i32 26, !3491, !DIExpression(DW_OP_constu, 25, DW_OP_minus, DW_OP_stack_value), !3601)
  %470 = load i32, ptr %i_cbp_left42.i, align 4, !dbg !3603
  %cmp.not.i1697 = icmp eq i32 %470, -1, !dbg !3604
  %shr4895.i1698 = lshr i32 %470, 10, !dbg !3605
  %and49.i1699 = and i32 %shr4895.i1698, 1, !dbg !3605
  %cond.i1700 = select i1 %cmp.not.i1697, i32 %lor.ext, i32 %and49.i1699, !dbg !3605
    #dbg_value(i32 %cond.i1700, !3493, !DIExpression(), !3601)
  %471 = load i32, ptr %i_cbp_top52.i, align 16, !dbg !3606
  %cmp53.not.i1702 = icmp eq i32 %471, -1, !dbg !3607
  %shr6096.i1703 = lshr i32 %471, 10, !dbg !3608
  %and61.i1704 = and i32 %shr6096.i1703, 1, !dbg !3608
  %cond64.i1705 = select i1 %cmp53.not.i1702, i32 %lor.ext, i32 %and61.i1704, !dbg !3608
    #dbg_value(i32 %cond64.i1705, !3494, !DIExpression(), !3601)
  %mul67.i1706 = shl nuw nsw i32 %cond64.i1705, 1, !dbg !3609
  %add68.i1707 = add nuw nsw i32 %cond.i1700, 97, !dbg !3610
  %add69.i1708 = add nuw nsw i32 %add68.i1707, %mul67.i1706, !dbg !3611
    #dbg_value(i32 %add69.i1708, !1699, !DIExpression(), !3612)
  %arrayidx637 = getelementptr inbounds i8, ptr %h, i64 25119, !dbg !3613
  %472 = load i8, ptr %arrayidx637, align 1, !dbg !3613
  %tobool638.not = icmp eq i8 %472, 0, !dbg !3613
  br i1 %tobool638.not, label %if.else644, label %if.then639, !dbg !3615

if.then639:                                       ; preds = %if.end630
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i1708, i32 noundef 1) #7, !dbg !3616
  %arrayidx642 = getelementptr inbounds i8, ptr %h, i64 15080, !dbg !3616
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 3, ptr noundef nonnull %arrayidx642), !dbg !3616
  br label %if.end645, !dbg !3616

if.else644:                                       ; preds = %if.end630
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i1708, i32 noundef 0) #7, !dbg !3613
  br label %if.end645

if.end645:                                        ; preds = %if.else644, %if.then639
  %473 = load i32, ptr %i_cbp_chroma614, align 4, !dbg !3618
  %and648 = and i32 %473, 2, !dbg !3619
  %tobool649.not = icmp eq i32 %and648, 0, !dbg !3619
  br i1 %tobool649.not, label %cleanup, label %for.cond652.preheader, !dbg !3620

for.cond652.preheader:                            ; preds = %if.end645
  %add.i1722 = select i1 %or.cond6911746, i32 255, i32 127
    #dbg_value(i64 16, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 16, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %arrayidx2.i1715 = getelementptr inbounds i8, ptr %h, i64 25080, !dbg !3624
  %474 = load i8, ptr %arrayidx2.i1715, align 1, !dbg !3624
  %conv.i1716 = zext i8 %474 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716, !3493, !DIExpression(), !3622)
  %arrayidx10.i1719 = getelementptr inbounds i8, ptr %h, i64 25073, !dbg !3625
  %475 = load i8, ptr %arrayidx10.i1719, align 1, !dbg !3625
  %conv11.i1720 = zext i8 %475 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720, !3494, !DIExpression(), !3622)
  %and.i1723 = and i32 %add.i1722, %conv.i1716, !dbg !3626
    #dbg_value(i32 %and.i1723, !3493, !DIExpression(), !3622)
  %and14.i1724 = and i32 %add.i1722, %conv11.i1720, !dbg !3627
    #dbg_value(i32 %and14.i1724, !3494, !DIExpression(), !3622)
  %tobool.not.i1725 = icmp eq i32 %and14.i1724, 0, !dbg !3628
  %mul17.i1726 = select i1 %tobool.not.i1725, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not = icmp eq i32 %and.i1723, 0, !dbg !3630
  %add18.i1729 = select i1 %tobool19.i1727.not, i32 101, i32 102, !dbg !3631
  %add24.i1730 = add nuw nsw i32 %mul17.i1726, %add18.i1729, !dbg !3632
    #dbg_value(i32 %add24.i1730, !1704, !DIExpression(), !3633)
  %arrayidx665 = getelementptr inbounds i8, ptr %h, i64 25081, !dbg !3634
  %476 = load i8, ptr %arrayidx665, align 1, !dbg !3634
  %tobool666.not = icmp eq i8 %476, 0, !dbg !3634
  br i1 %tobool666.not, label %if.else674, label %if.then667, !dbg !3636

if.then667:                                       ; preds = %for.cond652.preheader
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730, i32 noundef 1) #7, !dbg !3637
  %add.ptr673 = getelementptr inbounds i8, ptr %h, i64 16114, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673), !dbg !3637
  br label %if.end675, !dbg !3637

if.else674:                                       ; preds = %for.cond652.preheader
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730, i32 noundef 0) #7, !dbg !3634
  br label %if.end675

if.end675:                                        ; preds = %if.else674, %if.then667
    #dbg_value(i64 17, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 17, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %477 = load i8, ptr %arrayidx665, align 1, !dbg !3624
  %conv.i1716.1 = zext i8 %477 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.1, !3493, !DIExpression(), !3622)
  %arrayidx10.i1719.1 = getelementptr inbounds i8, ptr %h, i64 25074, !dbg !3625
  %478 = load i8, ptr %arrayidx10.i1719.1, align 1, !dbg !3625
  %conv11.i1720.1 = zext i8 %478 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.1, !3494, !DIExpression(), !3622)
  %and.i1723.1 = and i32 %add.i1722, %conv.i1716.1, !dbg !3626
    #dbg_value(i32 %and.i1723.1, !3493, !DIExpression(), !3622)
  %and14.i1724.1 = and i32 %add.i1722, %conv11.i1720.1, !dbg !3627
    #dbg_value(i32 %and14.i1724.1, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.1 = icmp eq i32 %and14.i1724.1, 0, !dbg !3628
  %mul17.i1726.1 = select i1 %tobool.not.i1725.1, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.1 = icmp eq i32 %and.i1723.1, 0, !dbg !3630
  %add18.i1729.1 = select i1 %tobool19.i1727.not.1, i32 101, i32 102, !dbg !3631
  %add24.i1730.1 = add nuw nsw i32 %mul17.i1726.1, %add18.i1729.1, !dbg !3632
    #dbg_value(i32 %add24.i1730.1, !1704, !DIExpression(), !3633)
  %arrayidx665.1 = getelementptr inbounds i8, ptr %h, i64 25082, !dbg !3634
  %479 = load i8, ptr %arrayidx665.1, align 1, !dbg !3634
  %tobool666.not.1 = icmp eq i8 %479, 0, !dbg !3634
  br i1 %tobool666.not.1, label %if.else674.1, label %if.then667.1, !dbg !3636

if.then667.1:                                     ; preds = %if.end675
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.1, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.1 = getelementptr inbounds i8, ptr %h, i64 16146, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.1), !dbg !3637
  br label %if.end675.1, !dbg !3637

if.else674.1:                                     ; preds = %if.end675
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.1, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.1

if.end675.1:                                      ; preds = %if.else674.1, %if.then667.1
    #dbg_value(i64 18, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 18, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %arrayidx2.i1715.2 = getelementptr inbounds i8, ptr %h, i64 25088, !dbg !3624
  %480 = load i8, ptr %arrayidx2.i1715.2, align 1, !dbg !3624
  %conv.i1716.2 = zext i8 %480 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.2, !3493, !DIExpression(), !3622)
  %481 = load i8, ptr %arrayidx665, align 1, !dbg !3625
  %conv11.i1720.2 = zext i8 %481 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.2, !3494, !DIExpression(), !3622)
  %and.i1723.2 = and i32 %add.i1722, %conv.i1716.2, !dbg !3626
    #dbg_value(i32 %and.i1723.2, !3493, !DIExpression(), !3622)
  %and14.i1724.2 = and i32 %add.i1722, %conv11.i1720.2, !dbg !3627
    #dbg_value(i32 %and14.i1724.2, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.2 = icmp eq i32 %and14.i1724.2, 0, !dbg !3628
  %mul17.i1726.2 = select i1 %tobool.not.i1725.2, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.2 = icmp eq i32 %and.i1723.2, 0, !dbg !3630
  %add18.i1729.2 = select i1 %tobool19.i1727.not.2, i32 101, i32 102, !dbg !3631
  %add24.i1730.2 = add nuw nsw i32 %mul17.i1726.2, %add18.i1729.2, !dbg !3632
    #dbg_value(i32 %add24.i1730.2, !1704, !DIExpression(), !3633)
  %arrayidx665.2 = getelementptr inbounds i8, ptr %h, i64 25089, !dbg !3634
  %482 = load i8, ptr %arrayidx665.2, align 1, !dbg !3634
  %tobool666.not.2 = icmp eq i8 %482, 0, !dbg !3634
  br i1 %tobool666.not.2, label %if.else674.2, label %if.then667.2, !dbg !3636

if.then667.2:                                     ; preds = %if.end675.1
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.2, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.2 = getelementptr inbounds i8, ptr %h, i64 16178, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.2), !dbg !3637
  br label %if.end675.2, !dbg !3637

if.else674.2:                                     ; preds = %if.end675.1
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.2, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.2

if.end675.2:                                      ; preds = %if.else674.2, %if.then667.2
    #dbg_value(i64 19, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 19, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %483 = load i8, ptr %arrayidx665.2, align 1, !dbg !3624
  %conv.i1716.3 = zext i8 %483 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.3, !3493, !DIExpression(), !3622)
  %484 = load i8, ptr %arrayidx665.1, align 1, !dbg !3625
  %conv11.i1720.3 = zext i8 %484 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.3, !3494, !DIExpression(), !3622)
  %and.i1723.3 = and i32 %add.i1722, %conv.i1716.3, !dbg !3626
    #dbg_value(i32 %and.i1723.3, !3493, !DIExpression(), !3622)
  %and14.i1724.3 = and i32 %add.i1722, %conv11.i1720.3, !dbg !3627
    #dbg_value(i32 %and14.i1724.3, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.3 = icmp eq i32 %and14.i1724.3, 0, !dbg !3628
  %mul17.i1726.3 = select i1 %tobool.not.i1725.3, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.3 = icmp eq i32 %and.i1723.3, 0, !dbg !3630
  %add18.i1729.3 = select i1 %tobool19.i1727.not.3, i32 101, i32 102, !dbg !3631
  %add24.i1730.3 = add nuw nsw i32 %mul17.i1726.3, %add18.i1729.3, !dbg !3632
    #dbg_value(i32 %add24.i1730.3, !1704, !DIExpression(), !3633)
  %arrayidx665.3 = getelementptr inbounds i8, ptr %h, i64 25090, !dbg !3634
  %485 = load i8, ptr %arrayidx665.3, align 1, !dbg !3634
  %tobool666.not.3 = icmp eq i8 %485, 0, !dbg !3634
  br i1 %tobool666.not.3, label %if.else674.3, label %if.then667.3, !dbg !3636

if.then667.3:                                     ; preds = %if.end675.2
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.3, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.3 = getelementptr inbounds i8, ptr %h, i64 16210, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.3), !dbg !3637
  br label %if.end675.3, !dbg !3637

if.else674.3:                                     ; preds = %if.end675.2
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.3, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.3

if.end675.3:                                      ; preds = %if.else674.3, %if.then667.3
    #dbg_value(i64 20, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 20, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %arrayidx2.i1715.4 = getelementptr inbounds i8, ptr %h, i64 25104, !dbg !3624
  %486 = load i8, ptr %arrayidx2.i1715.4, align 1, !dbg !3624
  %conv.i1716.4 = zext i8 %486 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.4, !3493, !DIExpression(), !3622)
  %arrayidx10.i1719.4 = getelementptr inbounds i8, ptr %h, i64 25097, !dbg !3625
  %487 = load i8, ptr %arrayidx10.i1719.4, align 1, !dbg !3625
  %conv11.i1720.4 = zext i8 %487 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.4, !3494, !DIExpression(), !3622)
  %and.i1723.4 = and i32 %add.i1722, %conv.i1716.4, !dbg !3626
    #dbg_value(i32 %and.i1723.4, !3493, !DIExpression(), !3622)
  %and14.i1724.4 = and i32 %add.i1722, %conv11.i1720.4, !dbg !3627
    #dbg_value(i32 %and14.i1724.4, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.4 = icmp eq i32 %and14.i1724.4, 0, !dbg !3628
  %mul17.i1726.4 = select i1 %tobool.not.i1725.4, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.4 = icmp eq i32 %and.i1723.4, 0, !dbg !3630
  %add18.i1729.4 = select i1 %tobool19.i1727.not.4, i32 101, i32 102, !dbg !3631
  %add24.i1730.4 = add nuw nsw i32 %mul17.i1726.4, %add18.i1729.4, !dbg !3632
    #dbg_value(i32 %add24.i1730.4, !1704, !DIExpression(), !3633)
  %arrayidx665.4 = getelementptr inbounds i8, ptr %h, i64 25105, !dbg !3634
  %488 = load i8, ptr %arrayidx665.4, align 1, !dbg !3634
  %tobool666.not.4 = icmp eq i8 %488, 0, !dbg !3634
  br i1 %tobool666.not.4, label %if.else674.4, label %if.then667.4, !dbg !3636

if.then667.4:                                     ; preds = %if.end675.3
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.4, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.4 = getelementptr inbounds i8, ptr %h, i64 16242, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.4), !dbg !3637
  br label %if.end675.4, !dbg !3637

if.else674.4:                                     ; preds = %if.end675.3
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.4, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.4

if.end675.4:                                      ; preds = %if.else674.4, %if.then667.4
    #dbg_value(i64 21, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 21, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %489 = load i8, ptr %arrayidx665.4, align 1, !dbg !3624
  %conv.i1716.5 = zext i8 %489 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.5, !3493, !DIExpression(), !3622)
  %arrayidx10.i1719.5 = getelementptr inbounds i8, ptr %h, i64 25098, !dbg !3625
  %490 = load i8, ptr %arrayidx10.i1719.5, align 1, !dbg !3625
  %conv11.i1720.5 = zext i8 %490 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.5, !3494, !DIExpression(), !3622)
  %and.i1723.5 = and i32 %add.i1722, %conv.i1716.5, !dbg !3626
    #dbg_value(i32 %and.i1723.5, !3493, !DIExpression(), !3622)
  %and14.i1724.5 = and i32 %add.i1722, %conv11.i1720.5, !dbg !3627
    #dbg_value(i32 %and14.i1724.5, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.5 = icmp eq i32 %and14.i1724.5, 0, !dbg !3628
  %mul17.i1726.5 = select i1 %tobool.not.i1725.5, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.5 = icmp eq i32 %and.i1723.5, 0, !dbg !3630
  %add18.i1729.5 = select i1 %tobool19.i1727.not.5, i32 101, i32 102, !dbg !3631
  %add24.i1730.5 = add nuw nsw i32 %mul17.i1726.5, %add18.i1729.5, !dbg !3632
    #dbg_value(i32 %add24.i1730.5, !1704, !DIExpression(), !3633)
  %arrayidx665.5 = getelementptr inbounds i8, ptr %h, i64 25106, !dbg !3634
  %491 = load i8, ptr %arrayidx665.5, align 1, !dbg !3634
  %tobool666.not.5 = icmp eq i8 %491, 0, !dbg !3634
  br i1 %tobool666.not.5, label %if.else674.5, label %if.then667.5, !dbg !3636

if.then667.5:                                     ; preds = %if.end675.4
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.5, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.5 = getelementptr inbounds i8, ptr %h, i64 16274, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.5), !dbg !3637
  br label %if.end675.5, !dbg !3637

if.else674.5:                                     ; preds = %if.end675.4
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.5, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.5

if.end675.5:                                      ; preds = %if.else674.5, %if.then667.5
    #dbg_value(i64 22, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 22, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %arrayidx2.i1715.6 = getelementptr inbounds i8, ptr %h, i64 25112, !dbg !3624
  %492 = load i8, ptr %arrayidx2.i1715.6, align 1, !dbg !3624
  %conv.i1716.6 = zext i8 %492 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.6, !3493, !DIExpression(), !3622)
  %493 = load i8, ptr %arrayidx665.4, align 1, !dbg !3625
  %conv11.i1720.6 = zext i8 %493 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.6, !3494, !DIExpression(), !3622)
  %and.i1723.6 = and i32 %add.i1722, %conv.i1716.6, !dbg !3626
    #dbg_value(i32 %and.i1723.6, !3493, !DIExpression(), !3622)
  %and14.i1724.6 = and i32 %add.i1722, %conv11.i1720.6, !dbg !3627
    #dbg_value(i32 %and14.i1724.6, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.6 = icmp eq i32 %and14.i1724.6, 0, !dbg !3628
  %mul17.i1726.6 = select i1 %tobool.not.i1725.6, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.6 = icmp eq i32 %and.i1723.6, 0, !dbg !3630
  %add18.i1729.6 = select i1 %tobool19.i1727.not.6, i32 101, i32 102, !dbg !3631
  %add24.i1730.6 = add nuw nsw i32 %mul17.i1726.6, %add18.i1729.6, !dbg !3632
    #dbg_value(i32 %add24.i1730.6, !1704, !DIExpression(), !3633)
  %arrayidx665.6 = getelementptr inbounds i8, ptr %h, i64 25113, !dbg !3634
  %494 = load i8, ptr %arrayidx665.6, align 1, !dbg !3634
  %tobool666.not.6 = icmp eq i8 %494, 0, !dbg !3634
  br i1 %tobool666.not.6, label %if.else674.6, label %if.then667.6, !dbg !3636

if.then667.6:                                     ; preds = %if.end675.5
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.6, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.6 = getelementptr inbounds i8, ptr %h, i64 16306, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.6), !dbg !3637
  br label %if.end675.6, !dbg !3637

if.else674.6:                                     ; preds = %if.end675.5
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.6, i32 noundef 0) #7, !dbg !3634
  br label %if.end675.6

if.end675.6:                                      ; preds = %if.else674.6, %if.then667.6
    #dbg_value(i64 23, !1701, !DIExpression(), !3621)
    #dbg_value(ptr %h, !3485, !DIExpression(), !3622)
    #dbg_value(i32 4, !3490, !DIExpression(), !3622)
    #dbg_value(i64 23, !3491, !DIExpression(), !3622)
    #dbg_value(i32 %lor.ext, !3492, !DIExpression(), !3622)
  %495 = load i8, ptr %arrayidx665.6, align 1, !dbg !3624
  %conv.i1716.7 = zext i8 %495 to i32, !dbg !3624
    #dbg_value(i32 %conv.i1716.7, !3493, !DIExpression(), !3622)
  %496 = load i8, ptr %arrayidx665.5, align 1, !dbg !3625
  %conv11.i1720.7 = zext i8 %496 to i32, !dbg !3625
    #dbg_value(i32 %conv11.i1720.7, !3494, !DIExpression(), !3622)
  %and.i1723.7 = and i32 %add.i1722, %conv.i1716.7, !dbg !3626
    #dbg_value(i32 %and.i1723.7, !3493, !DIExpression(), !3622)
  %and14.i1724.7 = and i32 %add.i1722, %conv11.i1720.7, !dbg !3627
    #dbg_value(i32 %and14.i1724.7, !3494, !DIExpression(), !3622)
  %tobool.not.i1725.7 = icmp eq i32 %and14.i1724.7, 0, !dbg !3628
  %mul17.i1726.7 = select i1 %tobool.not.i1725.7, i32 0, i32 2, !dbg !3629
  %tobool19.i1727.not.7 = icmp eq i32 %and.i1723.7, 0, !dbg !3630
  %add18.i1729.7 = select i1 %tobool19.i1727.not.7, i32 101, i32 102, !dbg !3631
  %add24.i1730.7 = add nuw nsw i32 %mul17.i1726.7, %add18.i1729.7, !dbg !3632
    #dbg_value(i32 %add24.i1730.7, !1704, !DIExpression(), !3633)
  %arrayidx665.7 = getelementptr inbounds i8, ptr %h, i64 25114, !dbg !3634
  %497 = load i8, ptr %arrayidx665.7, align 1, !dbg !3634
  %tobool666.not.7 = icmp eq i8 %497, 0, !dbg !3634
  br i1 %tobool666.not.7, label %if.else674.7, label %if.then667.7, !dbg !3636

if.then667.7:                                     ; preds = %if.end675.6
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.7, i32 noundef 1) #7, !dbg !3637
  %add.ptr673.7 = getelementptr inbounds i8, ptr %h, i64 16338, !dbg !3637
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.7), !dbg !3637
  br label %cleanup, !dbg !3637

if.else674.7:                                     ; preds = %if.end675.6
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.7, i32 noundef 0) #7, !dbg !3634
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false489, %if.end645, %if.end612, %if.else674.7, %if.then667.7, %if.then
  %conv3.i1607.sink = phi i32 [ %conv3.i999, %if.then ], [ %conv3.i1607, %if.then667.7 ], [ %conv3.i1607, %if.else674.7 ], [ %conv3.i1607, %if.end612 ], [ %conv3.i1607, %if.end645 ], [ %conv3.i1607, %lor.lhs.false489 ]
  %498 = load ptr, ptr %p.i, align 8, !dbg !3639
  %499 = load ptr, ptr %p_start.i, align 16, !dbg !3640
  %sub.ptr.lhs.cast.i1734 = ptrtoint ptr %498 to i64, !dbg !3641
  %sub.ptr.rhs.cast.i1735 = ptrtoint ptr %499 to i64, !dbg !3641
  %sub.ptr.sub.i1736 = sub i64 %sub.ptr.lhs.cast.i1734, %sub.ptr.rhs.cast.i1735, !dbg !3641
  %500 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !3642
  %501 = load i32, ptr %i_queue.i, align 8, !dbg !3643
  %502 = trunc i64 %sub.ptr.sub.i1736 to i32, !dbg !3644
  %add.tr.i1739 = add i32 %500, %502, !dbg !3644
  %503 = shl i32 %add.tr.i1739, 3, !dbg !3644
  %i_tex_bits686 = getelementptr inbounds i8, ptr %h, i64 26716, !dbg !1723
  %504 = load i32, ptr %i_tex_bits686, align 4, !dbg !1723
  %conv3.i1740 = sub i32 %501, %conv3.i1607.sink, !dbg !3644
  %sub683 = add i32 %conv3.i1740, %504, !dbg !1723
  %add687 = add i32 %sub683, %503, !dbg !1723
  store i32 %add687, ptr %i_tex_bits686, align 4, !dbg !1723
  ret void, !dbg !3645
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !3646 void @x264_cabac_encode_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_cabac_mb_ref(ptr nocapture noundef readonly %h, ptr noundef %cb, i32 noundef %i_list, i32 noundef %idx) unnamed_addr #0 !dbg !2182 {
entry:
    #dbg_value(ptr %h, !2181, !DIExpression(), !3649)
    #dbg_value(ptr %cb, !2186, !DIExpression(), !3649)
    #dbg_value(i32 %i_list, !2187, !DIExpression(), !3649)
    #dbg_value(i32 %idx, !2188, !DIExpression(), !3649)
  %idxprom = sext i32 %idx to i64, !dbg !3650
  %arrayidx = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !3650
  %0 = load i32, ptr %arrayidx, align 4, !dbg !3650
    #dbg_value(i32 %0, !2189, !DIExpression(), !3649)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !3651
  %idxprom1 = zext nneg i32 %i_list to i64, !dbg !3652
  %sub = add nsw i32 %0, -1, !dbg !3653
  %idxprom3 = sext i32 %sub to i64, !dbg !3652
  %arrayidx4 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom3, !dbg !3652
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !3652
    #dbg_value(i8 %1, !2190, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3649)
  %sub10 = add nsw i32 %0, -8, !dbg !3654
  %idxprom11 = sext i32 %sub10 to i64, !dbg !3655
  %arrayidx12 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom11, !dbg !3655
  %2 = load i8, ptr %arrayidx12, align 1, !dbg !3655
    #dbg_value(i8 %2, !2191, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3649)
    #dbg_value(i32 0, !2192, !DIExpression(), !3649)
  %cmp = icmp sgt i8 %1, 0, !dbg !3656
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3657

land.lhs.true:                                    ; preds = %entry
  %skip = getelementptr inbounds i8, ptr %h, i64 25680, !dbg !3658
  %arrayidx19 = getelementptr inbounds [40 x i8], ptr %skip, i64 0, i64 %idxprom3, !dbg !3659
  %3 = load i8, ptr %arrayidx19, align 1, !dbg !3659
  %tobool.not = icmp eq i8 %3, 0, !dbg !3659
  %spec.select = zext i1 %tobool.not to i32, !dbg !3660
  br label %if.end, !dbg !3660

if.end:                                           ; preds = %land.lhs.true, %entry
  %ctx.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ], !dbg !3649
    #dbg_value(i32 %ctx.0, !2192, !DIExpression(), !3649)
  %cmp20 = icmp sgt i8 %2, 0, !dbg !3661
  br i1 %cmp20, label %land.lhs.true22, label %if.end31, !dbg !3662

land.lhs.true22:                                  ; preds = %if.end
  %skip25 = getelementptr inbounds i8, ptr %h, i64 25680, !dbg !3663
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %skip25, i64 0, i64 %idxprom11, !dbg !3664
  %4 = load i8, ptr %arrayidx28, align 1, !dbg !3664
  %tobool29.not = icmp eq i8 %4, 0, !dbg !3664
  %add = or disjoint i32 %ctx.0, 2
  %spec.select61 = select i1 %tobool29.not, i32 %add, i32 %ctx.0, !dbg !3665
  br label %if.end31, !dbg !3665

if.end31:                                         ; preds = %land.lhs.true22, %if.end
  %ctx.1 = phi i32 [ %ctx.0, %if.end ], [ %spec.select61, %land.lhs.true22 ], !dbg !3649
    #dbg_value(i32 %ctx.1, !2192, !DIExpression(), !3649)
  %idxprom37 = sext i32 %0 to i64, !dbg !3666
  %arrayidx38 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom37, !dbg !3666
  %5 = load i8, ptr %arrayidx38, align 1, !dbg !3666
    #dbg_value(i8 %5, !2193, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3667)
    #dbg_value(i32 %ctx.1, !2192, !DIExpression(), !3649)
  %cmp4062 = icmp sgt i8 %5, 0, !dbg !3668
  br i1 %cmp4062, label %for.body.preheader, label %for.cond.cleanup, !dbg !3669

for.body.preheader:                               ; preds = %if.end31
  %conv39 = zext nneg i8 %5 to i32, !dbg !3666
    #dbg_value(i32 %conv39, !2193, !DIExpression(), !3667)
  br label %for.body, !dbg !3669

for.cond.cleanup:                                 ; preds = %for.body, %if.end31
  %ctx.2.lcssa = phi i32 [ %ctx.1, %if.end31 ], [ %add43, %for.body ], !dbg !3649
  %add44 = add nuw nsw i32 %ctx.2.lcssa, 54, !dbg !3670
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44, i32 noundef 0) #7, !dbg !3671
  ret void, !dbg !3672

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i_ref.064 = phi i32 [ %dec, %for.body ], [ %conv39, %for.body.preheader ]
  %ctx.263 = phi i32 [ %add43, %for.body ], [ %ctx.1, %for.body.preheader ]
    #dbg_value(i32 %i_ref.064, !2193, !DIExpression(), !3667)
    #dbg_value(i32 %ctx.263, !2192, !DIExpression(), !3649)
  %add42 = add nuw nsw i32 %ctx.263, 54, !dbg !3673
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42, i32 noundef 1) #7, !dbg !3674
  %shr = lshr i32 %ctx.263, 2, !dbg !3675
  %add43 = add nuw nsw i32 %shr, 4, !dbg !3676
    #dbg_value(i32 %add43, !2192, !DIExpression(), !3649)
  %dec = add nsw i32 %i_ref.064, -1, !dbg !3677
    #dbg_value(i32 %dec, !2193, !DIExpression(), !3667)
  %cmp40 = icmp ugt i32 %i_ref.064, 1, !dbg !3668
  br i1 %cmp40, label %for.body, label %for.cond.cleanup, !dbg !3669, !llvm.loop !3678
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef %h, ptr noundef %cb, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width) unnamed_addr #0 !dbg !2336 {
entry:
  %mvp = alloca [2 x i16], align 4, !DIAssignID !3680
    #dbg_assign(i1 undef, !2335, !DIExpression(), !3680, ptr %mvp, !DIExpression(), !3681)
    #dbg_value(ptr %h, !2340, !DIExpression(), !3681)
    #dbg_value(ptr %cb, !2341, !DIExpression(), !3681)
    #dbg_value(i32 %i_list, !2342, !DIExpression(), !3681)
    #dbg_value(i32 %idx, !2343, !DIExpression(), !3681)
    #dbg_value(i32 %width, !2344, !DIExpression(), !3681)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3682
  call void @x264_mb_predict_mv(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width, ptr noundef nonnull %mvp) #7, !dbg !3683
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !3684
  %idxprom = zext nneg i32 %i_list to i64, !dbg !3685
  %idxprom1 = sext i32 %idx to i64, !dbg !3686
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1, !dbg !3686
  %0 = load i32, ptr %arrayidx2, align 4, !dbg !3686
  %idxprom3 = sext i32 %0 to i64, !dbg !3685
  %arrayidx4 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3, !dbg !3685
  %1 = load i16, ptr %arrayidx4, align 4, !dbg !3685
  %conv = sext i16 %1 to i32, !dbg !3685
  %2 = load i16, ptr %mvp, align 4, !dbg !3687
  %conv7 = sext i16 %2 to i32, !dbg !3687
  %sub = sub nsw i32 %conv, %conv7, !dbg !3688
    #dbg_value(i32 %sub, !2345, !DIExpression(), !3681)
  %arrayidx17 = getelementptr inbounds i8, ptr %arrayidx4, i64 2, !dbg !3689
  %3 = load i16, ptr %arrayidx17, align 2, !dbg !3689
  %conv18 = sext i16 %3 to i32, !dbg !3689
  %arrayidx19 = getelementptr inbounds i8, ptr %mvp, i64 2, !dbg !3690
  %4 = load i16, ptr %arrayidx19, align 2, !dbg !3690
  %conv20 = sext i16 %4 to i32, !dbg !3690
  %sub21 = sub nsw i32 %conv18, %conv20, !dbg !3691
    #dbg_value(i32 %sub21, !2346, !DIExpression(), !3681)
  %mvd = getelementptr inbounds i8, ptr %h, i64 25520, !dbg !3692
  %sub28 = add nsw i32 %0, -1, !dbg !3693
  %idxprom29 = sext i32 %sub28 to i64, !dbg !3694
  %arrayidx30 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd, i64 0, i64 %idxprom, i64 %idxprom29, !dbg !3694
  %sub39 = add nsw i32 %0, -8, !dbg !3695
  %idxprom40 = sext i32 %sub39 to i64, !dbg !3696
  %arrayidx41 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd, i64 0, i64 %idxprom, i64 %idxprom40, !dbg !3696
  %arrayidx30.val = load i8, ptr %arrayidx30, align 1, !dbg !3697
  %5 = getelementptr i8, ptr %arrayidx30, i64 1, !dbg !3697
  %arrayidx30.val71 = load i8, ptr %5, align 1, !dbg !3697
  %arrayidx41.val = load i8, ptr %arrayidx41, align 1, !dbg !3697
  %6 = getelementptr i8, ptr %arrayidx41, i64 1, !dbg !3697
  %arrayidx41.val72 = load i8, ptr %6, align 1, !dbg !3697
    #dbg_value(ptr undef, !2364, !DIExpression(), !3698)
    #dbg_value(ptr undef, !2369, !DIExpression(), !3698)
  %conv.i = zext i8 %arrayidx30.val to i32, !dbg !3700
  %conv2.i = zext i8 %arrayidx41.val to i32, !dbg !3701
  %add.i = add nuw nsw i32 %conv2.i, %conv.i, !dbg !3702
    #dbg_value(i32 %add.i, !2370, !DIExpression(), !3698)
  %conv4.i = zext i8 %arrayidx30.val71 to i32, !dbg !3703
  %conv6.i = zext i8 %arrayidx41.val72 to i32, !dbg !3704
  %add7.i = add nuw nsw i32 %conv6.i, %conv4.i, !dbg !3705
    #dbg_value(i32 %add7.i, !2371, !DIExpression(), !3698)
  %cmp.i = icmp ugt i32 %add.i, 2, !dbg !3706
  %conv8.i = zext i1 %cmp.i to i32, !dbg !3706
  %cmp9.i = icmp ugt i32 %add.i, 32, !dbg !3707
  %conv10.i = zext i1 %cmp9.i to i32, !dbg !3707
  %add11.i = add nuw nsw i32 %conv8.i, %conv10.i, !dbg !3708
    #dbg_value(!DIArgList(i1 %cmp.i, i1 %cmp9.i), !2370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3698)
  %cmp12.i = icmp ugt i32 %add7.i, 2, !dbg !3709
  %conv13.i = zext i1 %cmp12.i to i32, !dbg !3709
  %cmp14.i = icmp ugt i32 %add7.i, 32, !dbg !3710
  %conv15.i = zext i1 %cmp14.i to i32, !dbg !3710
  %add16.i = add nuw nsw i32 %conv13.i, %conv15.i, !dbg !3711
    #dbg_value(!DIArgList(i1 %cmp12.i, i1 %cmp14.i), !2371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3698)
    #dbg_value(!DIArgList(i32 %add16.i, i32 %add11.i), !2347, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3681)
  %call44 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub, i32 noundef %add11.i), !dbg !3712
    #dbg_value(i32 %call44, !2345, !DIExpression(), !3681)
  %call46 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21, i32 noundef %add16.i), !dbg !3713
    #dbg_value(i32 %call46, !2346, !DIExpression(), !3681)
    #dbg_value(i32 %call44, !2388, !DIExpression(), !3714)
    #dbg_value(i32 %call46, !2393, !DIExpression(), !3714)
  %shl.i73 = shl nuw nsw i32 %call46, 8, !dbg !3716
  %add.i74 = add nuw nsw i32 %shl.i73, %call44, !dbg !3717
  %conv48 = trunc i32 %add.i74 to i16, !dbg !3718
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3719
  ret i16 %conv48, !dbg !3720
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block_residual_write_cabac(ptr nocapture noundef readonly %h, ptr noundef %cb, i32 noundef %i_ctxBlockCat, ptr noundef %l) unnamed_addr #0 !dbg !3721 {
entry:
  %i_coeff_abs_m1 = alloca [64 x i32], align 16, !DIAssignID !3747
    #dbg_assign(i1 undef, !3733, !DIExpression(), !3747, ptr %i_coeff_abs_m1, !DIExpression(), !3748)
  %i_coeff_sign = alloca [64 x i32], align 16, !DIAssignID !3749
    #dbg_assign(i1 undef, !3734, !DIExpression(), !3749, ptr %i_coeff_sign, !DIExpression(), !3748)
    #dbg_value(ptr %h, !3725, !DIExpression(), !3748)
    #dbg_value(ptr %cb, !3726, !DIExpression(), !3748)
    #dbg_value(i32 %i_ctxBlockCat, !3727, !DIExpression(), !3748)
    #dbg_value(ptr %l, !3728, !DIExpression(), !3748)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3750
  %0 = load i32, ptr %b_interlaced, align 4, !dbg !3750
  %idxprom = sext i32 %0 to i64, !dbg !3751
  %idxprom1 = zext nneg i32 %i_ctxBlockCat to i64, !dbg !3751
  %arrayidx2 = getelementptr inbounds [2 x [6 x i16]], ptr @significant_coeff_flag_offset, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3751
  %1 = load i16, ptr %arrayidx2, align 2, !dbg !3751
  %conv = zext i16 %1 to i32, !dbg !3751
    #dbg_value(i32 %conv, !3729, !DIExpression(), !3748)
  %arrayidx8 = getelementptr inbounds [2 x [6 x i16]], ptr @last_coeff_flag_offset, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3752
  %2 = load i16, ptr %arrayidx8, align 2, !dbg !3752
  %conv9 = zext i16 %2 to i32, !dbg !3752
    #dbg_value(i32 %conv9, !3730, !DIExpression(), !3748)
  %arrayidx11 = getelementptr inbounds [6 x i16], ptr @coeff_abs_level_m1_offset, i64 0, i64 %idxprom1, !dbg !3753
  %3 = load i16, ptr %arrayidx11, align 2, !dbg !3753
  %conv12 = zext i16 %3 to i32, !dbg !3753
    #dbg_value(i32 %conv12, !3731, !DIExpression(), !3748)
  %arrayidx16 = getelementptr inbounds [2 x [63 x i8]], ptr @significant_coeff_flag_offset_8x8, i64 0, i64 %idxprom, !dbg !3754
    #dbg_value(ptr %arrayidx16, !3732, !DIExpression(), !3748)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_coeff_abs_m1) #7, !dbg !3755
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_coeff_sign) #7, !dbg !3756
    #dbg_value(i32 0, !3735, !DIExpression(), !3748)
    #dbg_value(i32 0, !3737, !DIExpression(), !3748)
    #dbg_value(i32 0, !3738, !DIExpression(), !3748)
  %coeff_last = getelementptr inbounds i8, ptr %h, i64 33168, !dbg !3757
  %arrayidx18 = getelementptr inbounds [6 x ptr], ptr %coeff_last, i64 0, i64 %idxprom1, !dbg !3758
  %4 = load ptr, ptr %arrayidx18, align 8, !dbg !3758
  %call = tail call i32 %4(ptr noundef %l) #7, !dbg !3758
    #dbg_value(i32 %call, !3736, !DIExpression(), !3748)
  %cmp = icmp eq i32 %i_ctxBlockCat, 5, !dbg !3759
  br i1 %cmp, label %while.cond.preheader, label %if.else74, !dbg !3760

while.cond.preheader:                             ; preds = %entry
  %5 = zext i32 %call to i64, !dbg !3761
  br label %while.cond, !dbg !3761

while.cond:                                       ; preds = %while.cond.preheader, %if.end54
  %indvars.iv276 = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next277, %if.end54 ], !dbg !3748
  %i_coeff.0 = phi i32 [ 0, %while.cond.preheader ], [ %i_coeff.1, %if.end54 ], !dbg !3748
    #dbg_value(i32 %i_coeff.0, !3735, !DIExpression(), !3748)
    #dbg_value(i64 %indvars.iv276, !3738, !DIExpression(), !3748)
  %arrayidx21 = getelementptr inbounds i16, ptr %l, i64 %indvars.iv276, !dbg !3762
  %6 = load i16, ptr %arrayidx21, align 2, !dbg !3762
  %tobool.not = icmp eq i16 %6, 0, !dbg !3762
  br i1 %tobool.not, label %if.else49, label %if.then22, !dbg !3765

if.then22:                                        ; preds = %while.cond
  %7 = tail call i16 @llvm.abs.i16(i16 %6, i1 false), !dbg !3766
  %8 = zext i16 %7 to i32, !dbg !3766
  %sub = add nsw i32 %8, -1, !dbg !3766
  %idxprom26 = sext i32 %i_coeff.0 to i64, !dbg !3766
  %arrayidx27 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom26, !dbg !3766
  store i32 %sub, ptr %arrayidx27, align 4, !dbg !3766
  %.lobit264 = lshr i16 %6, 15, !dbg !3766
  %conv32 = zext nneg i16 %.lobit264 to i32, !dbg !3766
  %arrayidx34 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom26, !dbg !3766
  store i32 %conv32, ptr %arrayidx34, align 4, !dbg !3766
  %inc = add nsw i32 %i_coeff.0, 1, !dbg !3766
    #dbg_value(i32 %inc, !3735, !DIExpression(), !3748)
  %arrayidx36 = getelementptr inbounds i8, ptr %arrayidx16, i64 %indvars.iv276, !dbg !3766
  %9 = load i8, ptr %arrayidx36, align 1, !dbg !3766
  %conv37 = zext i8 %9 to i32, !dbg !3766
  %add = add nuw nsw i32 %conv37, %conv, !dbg !3766
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 1) #7, !dbg !3766
  %cmp38 = icmp eq i64 %indvars.iv276, %5, !dbg !3768
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !3766

if.then40:                                        ; preds = %if.then22
  %arrayidx42 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %5, !dbg !3770
  %10 = load i8, ptr %arrayidx42, align 1, !dbg !3770
  %conv43 = zext i8 %10 to i32, !dbg !3770
  %add44 = add nuw nsw i32 %conv43, %conv9, !dbg !3770
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44, i32 noundef 1) #7, !dbg !3770
  br label %if.end130, !dbg !3770

if.else:                                          ; preds = %if.then22
  %arrayidx46 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %indvars.iv276, !dbg !3768
  br label %if.end54, !dbg !3766

if.else49:                                        ; preds = %while.cond
  %arrayidx51 = getelementptr inbounds i8, ptr %arrayidx16, i64 %indvars.iv276, !dbg !3762
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.else
  %arrayidx51.sink = phi ptr [ %arrayidx51, %if.else49 ], [ %arrayidx46, %if.else ]
  %conv.sink = phi i32 [ %conv, %if.else49 ], [ %conv9, %if.else ]
  %i_coeff.1 = phi i32 [ %i_coeff.0, %if.else49 ], [ %inc, %if.else ], !dbg !3748
  %11 = load i8, ptr %arrayidx51.sink, align 1, !dbg !3762
  %conv52 = zext i8 %11 to i32, !dbg !3762
  %add53 = add nuw nsw i32 %conv.sink, %conv52, !dbg !3762
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add53, i32 noundef 0) #7, !dbg !3762
    #dbg_value(i32 %i_coeff.1, !3735, !DIExpression(), !3748)
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1, !dbg !3765
    #dbg_value(i64 %indvars.iv.next277, !3738, !DIExpression(), !3748)
  %cmp56 = icmp eq i64 %indvars.iv.next277, 63, !dbg !3772
  br i1 %cmp56, label %if.then58, label %while.cond, !dbg !3765, !llvm.loop !3774

if.then58:                                        ; preds = %if.end54
  %arrayidx60 = getelementptr inbounds i8, ptr %l, i64 126, !dbg !3775
  %12 = load i16, ptr %arrayidx60, align 2, !dbg !3775
  %13 = tail call i16 @llvm.abs.i16(i16 %12, i1 false), !dbg !3775
  %14 = zext i16 %13 to i32, !dbg !3775
  %sub62 = add nsw i32 %14, -1, !dbg !3775
  %idxprom63 = sext i32 %i_coeff.1 to i64, !dbg !3775
  %arrayidx64 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom63, !dbg !3775
  store i32 %sub62, ptr %arrayidx64, align 4, !dbg !3775
  %.lobit265 = lshr i16 %12, 15, !dbg !3775
  %conv69 = zext nneg i16 %.lobit265 to i32, !dbg !3775
  %arrayidx71 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom63, !dbg !3775
  store i32 %conv69, ptr %arrayidx71, align 4, !dbg !3775
  %inc72 = add nsw i32 %i_coeff.1, 1, !dbg !3775
    #dbg_value(i32 %inc72, !3735, !DIExpression(), !3748)
  br label %if.end130, !dbg !3775

if.else74:                                        ; preds = %entry
  %arrayidx77 = getelementptr inbounds [5 x i8], ptr @count_cat_m1, i64 0, i64 %idxprom1, !dbg !3777
  %15 = load i8, ptr %arrayidx77, align 1, !dbg !3777
    #dbg_value(i8 %15, !3742, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3778)
  %16 = zext i16 %1 to i64, !dbg !3779
  %17 = zext i32 %call to i64, !dbg !3779
  %18 = zext i8 %15 to i64, !dbg !3779
  %19 = zext i16 %2 to i64, !dbg !3779
  br label %while.cond79, !dbg !3779

while.cond79:                                     ; preds = %if.end109, %if.else74
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end109 ], [ 0, %if.else74 ], !dbg !3748
  %i_coeff.3 = phi i32 [ %i_coeff.4, %if.end109 ], [ 0, %if.else74 ], !dbg !3748
    #dbg_value(i32 %i_coeff.3, !3735, !DIExpression(), !3748)
    #dbg_value(i64 %indvars.iv, !3738, !DIExpression(), !3748)
  %arrayidx82 = getelementptr inbounds i16, ptr %l, i64 %indvars.iv, !dbg !3780
  %20 = load i16, ptr %arrayidx82, align 2, !dbg !3780
  %tobool83.not = icmp eq i16 %20, 0, !dbg !3780
  br i1 %tobool83.not, label %if.end109, label %if.then84, !dbg !3783

if.then84:                                        ; preds = %while.cond79
  %21 = tail call i16 @llvm.abs.i16(i16 %20, i1 false), !dbg !3784
  %22 = zext i16 %21 to i32, !dbg !3784
  %sub88 = add nsw i32 %22, -1, !dbg !3784
  %idxprom89 = sext i32 %i_coeff.3 to i64, !dbg !3784
  %arrayidx90 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom89, !dbg !3784
  store i32 %sub88, ptr %arrayidx90, align 4, !dbg !3784
  %.lobit = lshr i16 %20, 15, !dbg !3784
  %conv95 = zext nneg i16 %.lobit to i32, !dbg !3784
  %arrayidx97 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom89, !dbg !3784
  store i32 %conv95, ptr %arrayidx97, align 4, !dbg !3784
  %inc98 = add nsw i32 %i_coeff.3, 1, !dbg !3784
    #dbg_value(i32 %inc98, !3735, !DIExpression(), !3748)
  %23 = add nuw nsw i64 %indvars.iv, %16, !dbg !3784
  %24 = trunc nuw i64 %23 to i32, !dbg !3784
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %24, i32 noundef 1) #7, !dbg !3784
  %cmp100 = icmp eq i64 %indvars.iv, %17, !dbg !3786
  br i1 %cmp100, label %if.then102, label %if.end109, !dbg !3784

if.then102:                                       ; preds = %if.then84
  %add103 = add nuw nsw i32 %call, %conv9, !dbg !3788
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add103, i32 noundef 1) #7, !dbg !3788
  br label %if.end130, !dbg !3788

if.end109:                                        ; preds = %while.cond79, %if.then84
  %.sink = phi i64 [ %19, %if.then84 ], [ %16, %while.cond79 ]
  %i_coeff.4 = phi i32 [ %inc98, %if.then84 ], [ %i_coeff.3, %while.cond79 ], !dbg !3748
  %25 = add nuw nsw i64 %indvars.iv, %.sink, !dbg !3780
  %26 = trunc nuw i64 %25 to i32, !dbg !3780
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %26, i32 noundef 0) #7, !dbg !3780
    #dbg_value(i32 %i_coeff.4, !3735, !DIExpression(), !3748)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3783
    #dbg_value(i64 %indvars.iv.next, !3738, !DIExpression(), !3748)
  %cmp111 = icmp eq i64 %indvars.iv.next, %18, !dbg !3790
  br i1 %cmp111, label %if.then113, label %while.cond79, !dbg !3783, !llvm.loop !3792

if.then113:                                       ; preds = %if.end109
  %arrayidx115 = getelementptr inbounds i16, ptr %l, i64 %18, !dbg !3793
  %27 = load i16, ptr %arrayidx115, align 2, !dbg !3793
  %28 = tail call i16 @llvm.abs.i16(i16 %27, i1 false), !dbg !3793
  %29 = zext i16 %28 to i32, !dbg !3793
  %sub117 = add nsw i32 %29, -1, !dbg !3793
  %idxprom118 = sext i32 %i_coeff.4 to i64, !dbg !3793
  %arrayidx119 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom118, !dbg !3793
  store i32 %sub117, ptr %arrayidx119, align 4, !dbg !3793
  %.lobit263 = lshr i16 %27, 15, !dbg !3793
  %conv124 = zext nneg i16 %.lobit263 to i32, !dbg !3793
  %arrayidx126 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom118, !dbg !3793
  store i32 %conv124, ptr %arrayidx126, align 4, !dbg !3793
  %inc127 = add nsw i32 %i_coeff.4, 1, !dbg !3793
    #dbg_value(i32 %inc127, !3735, !DIExpression(), !3748)
  br label %if.end130, !dbg !3793

if.end130:                                        ; preds = %if.then102, %if.then113, %if.then40, %if.then58
  %i_coeff.6 = phi i32 [ %inc, %if.then40 ], [ %inc72, %if.then58 ], [ %inc98, %if.then102 ], [ %inc127, %if.then113 ], !dbg !3795
    #dbg_value(i32 %i_coeff.6, !3735, !DIExpression(), !3748)
  %30 = sext i32 %i_coeff.6 to i64, !dbg !3796
  br label %do.body, !dbg !3796

do.body:                                          ; preds = %if.end166, %if.end130
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %if.end166 ], [ %30, %if.end130 ], !dbg !3748
  %node_ctx.0 = phi i64 [ %node_ctx.1, %if.end166 ], [ 0, %if.end130 ], !dbg !3748
    #dbg_value(i64 %indvars.iv279, !3735, !DIExpression(), !3748)
    #dbg_value(i32 poison, !3737, !DIExpression(), !3748)
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, -1, !dbg !3797
    #dbg_value(i64 %indvars.iv.next280, !3735, !DIExpression(), !3748)
  %arrayidx132 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %indvars.iv.next280, !dbg !3798
  %31 = load i32, ptr %arrayidx132, align 4, !dbg !3798
  %cmp133 = icmp slt i32 %31, 14, !dbg !3798
    #dbg_value(i32 poison, !3744, !DIExpression(), !3799)
  %arrayidx138 = getelementptr inbounds [8 x i8], ptr @coeff_abs_level1_ctx, i64 0, i64 %node_ctx.0, !dbg !3800
  %32 = load i8, ptr %arrayidx138, align 1, !dbg !3800
  %conv139 = zext i8 %32 to i32, !dbg !3800
  %add140 = add nuw nsw i32 %conv139, %conv12, !dbg !3801
    #dbg_value(i32 %add140, !3746, !DIExpression(), !3799)
  %tobool141.not = icmp eq i32 %31, 0, !dbg !3802
  br i1 %tobool141.not, label %if.else162, label %if.then142, !dbg !3804

if.then142:                                       ; preds = %do.body
    #dbg_value(i32 poison, !3744, !DIExpression(), !3799)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add140, i32 noundef 1) #7, !dbg !3805
  %arrayidx144 = getelementptr inbounds [8 x i8], ptr @coeff_abs_levelgt1_ctx, i64 0, i64 %node_ctx.0, !dbg !3807
  %33 = load i8, ptr %arrayidx144, align 1, !dbg !3807
  %conv145 = zext i8 %33 to i32, !dbg !3807
  %add146 = add nuw nsw i32 %conv145, %conv12, !dbg !3808
    #dbg_value(i32 %add146, !3746, !DIExpression(), !3799)
    #dbg_value(i32 0, !3738, !DIExpression(), !3748)
    #dbg_value(i32 0, !3738, !DIExpression(), !3748)
  %cmp148268 = icmp sgt i32 %31, 1, !dbg !3809
  br i1 %cmp148268, label %for.body.preheader, label %if.then153, !dbg !3812

for.body.preheader:                               ; preds = %if.then142
  %spec.select = tail call i32 @llvm.smin.i32(i32 %31, i32 14), !dbg !3798
    #dbg_value(i32 %spec.select, !3744, !DIExpression(), !3799)
  %34 = add nsw i32 %spec.select, -2
  br label %for.body, !dbg !3812

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.2269 = phi i32 [ %inc150, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i32 %i.2269, !3738, !DIExpression(), !3748)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add146, i32 noundef 1) #7, !dbg !3813
  %inc150 = add nuw nsw i32 %i.2269, 1, !dbg !3814
    #dbg_value(i32 %inc150, !3738, !DIExpression(), !3748)
  %exitcond.not = icmp eq i32 %i.2269, %34, !dbg !3809
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3812, !llvm.loop !3815

for.end:                                          ; preds = %for.body
  br i1 %cmp133, label %if.then153, label %if.else154, !dbg !3817

if.then153:                                       ; preds = %if.then142, %for.end
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add146, i32 noundef 0) #7, !dbg !3818
  br label %if.end166, !dbg !3818

if.else154:                                       ; preds = %for.end
  %sub157 = add nsw i32 %31, -14, !dbg !3820
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %cb, i32 noundef 0, i32 noundef %sub157) #7, !dbg !3821
  br label %if.end166

if.else162:                                       ; preds = %do.body
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add140, i32 noundef 0) #7, !dbg !3822
    #dbg_value(i8 poison, !3737, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3748)
  br label %if.end166

if.end166:                                        ; preds = %if.then153, %if.else154, %if.else162
  %.pn = phi ptr [ @coeff_abs_level_transition, %if.else162 ], [ getelementptr inbounds (i8, ptr @coeff_abs_level_transition, i64 8), %if.else154 ], [ getelementptr inbounds (i8, ptr @coeff_abs_level_transition, i64 8), %if.then153 ]
  %node_ctx.1.in.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 0, i64 %node_ctx.0, !dbg !3824
  %node_ctx.1.in = load i8, ptr %node_ctx.1.in.in, align 1, !dbg !3824
  %node_ctx.1 = zext i8 %node_ctx.1.in to i64, !dbg !3824
    #dbg_value(i32 poison, !3737, !DIExpression(), !3748)
  %arrayidx168 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %indvars.iv.next280, !dbg !3825
  %35 = load i32, ptr %arrayidx168, align 4, !dbg !3825
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %cb, i32 noundef %35) #7, !dbg !3826
  %cmp169 = icmp sgt i64 %indvars.iv279, 1, !dbg !3827
  br i1 %cmp169, label %do.body, label %do.end, !dbg !3828, !llvm.loop !3829

do.end:                                           ; preds = %if.end166
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_coeff_sign) #7, !dbg !3831
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_coeff_abs_m1) #7, !dbg !3831
  ret void, !dbg !3831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_type_intra(ptr noundef %h, ptr noundef %cb, i32 noundef %i_mb_type, i32 noundef %ctx0, i32 noundef %ctx1, i32 noundef %ctx2, i32 noundef %ctx3, i32 noundef %ctx4, i32 noundef %ctx5) unnamed_addr #4 !dbg !3832 {
entry:
    #dbg_value(ptr %h, !3836, !DIExpression(), !3849)
    #dbg_value(ptr %cb, !3837, !DIExpression(), !3849)
    #dbg_value(i32 %i_mb_type, !3838, !DIExpression(), !3849)
    #dbg_value(i32 %ctx0, !3839, !DIExpression(), !3849)
    #dbg_value(i32 %ctx1, !3840, !DIExpression(), !3849)
    #dbg_value(i32 %ctx2, !3841, !DIExpression(), !3849)
    #dbg_value(i32 %ctx3, !3842, !DIExpression(), !3849)
    #dbg_value(i32 %ctx4, !3843, !DIExpression(), !3849)
    #dbg_value(i32 %ctx5, !3844, !DIExpression(), !3849)
  %or.cond = icmp ult i32 %i_mb_type, 2, !dbg !3850
  br i1 %or.cond, label %if.then, label %if.else, !dbg !3850

if.then:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 0) #7, !dbg !3851
  br label %if.end16, !dbg !3853

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %i_mb_type, 3, !dbg !3854
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !3855

if.then3:                                         ; preds = %if.else
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 1) #7, !dbg !3856
  tail call void @x264_cabac_encode_flush(ptr noundef %h, ptr noundef %cb) #7, !dbg !3858
  br label %if.end16, !dbg !3859

if.else4:                                         ; preds = %if.else
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408, !dbg !3860
  %0 = load i32, ptr %i_intra16x16_pred_mode, align 16, !dbg !3860
  %idxprom = sext i32 %0 to i64, !dbg !3861
  %arrayidx = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %idxprom, !dbg !3861
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3861
  %conv = zext i8 %1 to i32, !dbg !3861
    #dbg_value(i32 %conv, !3845, !DIExpression(), !3862)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 1) #7, !dbg !3863
  tail call void @x264_cabac_encode_terminal_c(ptr noundef %cb) #7, !dbg !3864
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3865
  %2 = load i32, ptr %i_cbp_luma, align 8, !dbg !3865
  %tobool = icmp ne i32 %2, 0, !dbg !3866
  %lnot.ext = zext i1 %tobool to i32, !dbg !3867
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx1, i32 noundef %lnot.ext) #7, !dbg !3868
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3869
  %3 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3869
  %cmp8 = icmp eq i32 %3, 0, !dbg !3871
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !3872

if.then10:                                        ; preds = %if.else4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx2, i32 noundef 0) #7, !dbg !3873
  br label %if.end, !dbg !3873

if.else11:                                        ; preds = %if.else4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx2, i32 noundef 1) #7, !dbg !3874
  %4 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3876
  %shr = ashr i32 %4, 1, !dbg !3877
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx3, i32 noundef %shr) #7, !dbg !3878
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  %shr14 = lshr i32 %conv, 1, !dbg !3879
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx4, i32 noundef %shr14) #7, !dbg !3880
  %and = and i32 %conv, 1, !dbg !3881
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx5, i32 noundef %and) #7, !dbg !3882
  br label %if.end16

if.end16:                                         ; preds = %if.then3, %if.end, %if.then
  ret void, !dbg !3883
}

declare !dbg !3884 void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3885 void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

declare !dbg !3886 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef %l, i32 noundef %mvd, i32 noundef %ctx) unnamed_addr #4 !dbg !1463 {
entry:
    #dbg_value(ptr undef, !1467, !DIExpression(), !3889)
    #dbg_value(ptr %cb, !1468, !DIExpression(), !3889)
    #dbg_value(i32 poison, !1469, !DIExpression(), !3889)
    #dbg_value(i32 poison, !1470, !DIExpression(), !3889)
    #dbg_value(i32 %l, !1471, !DIExpression(), !3889)
    #dbg_value(i32 %mvd, !1472, !DIExpression(), !3889)
    #dbg_value(i32 %ctx, !1473, !DIExpression(), !3889)
  %0 = tail call i32 @llvm.abs.i32(i32 %mvd, i1 true), !dbg !3890
    #dbg_value(i32 %0, !1474, !DIExpression(), !3889)
  %tobool.not = icmp eq i32 %l, 0, !dbg !3891
  %cond = select i1 %tobool.not, i32 40, i32 47, !dbg !3891
    #dbg_value(i32 %cond, !1475, !DIExpression(), !3889)
  %cmp = icmp eq i32 %mvd, 0, !dbg !3892
  %add = add nuw nsw i32 %cond, %ctx, !dbg !3893
  br i1 %cmp, label %if.then, label %if.else, !dbg !3894

if.then:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 0) #7, !dbg !3895
  br label %if.end29, !dbg !3895

if.else:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 1) #7, !dbg !3896
  %cmp2 = icmp ult i32 %0, 9, !dbg !3897
  br i1 %cmp2, label %for.cond.preheader, label %for.body17.preheader, !dbg !3898

for.body17.preheader:                             ; preds = %if.else
    #dbg_value(i64 1, !1482, !DIExpression(), !3899)
  %add22 = add nuw nsw i32 %cond, 3, !dbg !3900
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 2, !1482, !DIExpression(), !3899)
  %add22.1 = add nuw nsw i32 %cond, 4, !dbg !3900
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.1, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 3, !1482, !DIExpression(), !3899)
  %add22.2 = add nuw nsw i32 %cond, 5, !dbg !3900
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.2, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 4, !1482, !DIExpression(), !3899)
  %add22.3 = add nuw nsw i32 %cond, 6, !dbg !3900
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 5, !1482, !DIExpression(), !3899)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 6, !1482, !DIExpression(), !3899)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 7, !1482, !DIExpression(), !3899)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 8, !1482, !DIExpression(), !3899)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7, !dbg !3902
    #dbg_value(i64 9, !1482, !DIExpression(), !3899)
  %sub26 = add nsw i32 %0, -9, !dbg !3903
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %cb, i32 noundef 3, i32 noundef %sub26) #7, !dbg !3904
  br label %if.end

for.cond.preheader:                               ; preds = %if.else
    #dbg_value(i32 1, !1476, !DIExpression(), !3905)
  %cmp42 = icmp ugt i32 %0, 1, !dbg !3906
  br i1 %cmp42, label %for.body.preheader, label %for.cond.cleanup, !dbg !3908

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = tail call i32 @llvm.abs.i32(i32 %mvd, i1 false), !dbg !3908
  %wide.trip.count = zext i32 %smax to i64, !dbg !3906
  br label %for.body, !dbg !3908

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  %sub6 = add nsw i32 %0, -1, !dbg !3909
  %idxprom7 = zext nneg i32 %sub6 to i64, !dbg !3910
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %idxprom7, !dbg !3910
  %1 = load i8, ptr %arrayidx8, align 1, !dbg !3910
  %conv9 = zext i8 %1 to i32, !dbg !3910
  %add10 = add nuw nsw i32 %cond, %conv9, !dbg !3911
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add10, i32 noundef 0) #7, !dbg !3912
  br label %if.end, !dbg !3913

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1476, !DIExpression(), !3905)
  %2 = add nsw i64 %indvars.iv, -1, !dbg !3914
  %arrayidx = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %2, !dbg !3915
  %3 = load i8, ptr %arrayidx, align 1, !dbg !3915
  %conv = zext i8 %3 to i32, !dbg !3915
  %add5 = add nuw nsw i32 %cond, %conv, !dbg !3916
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add5, i32 noundef 1) #7, !dbg !3917
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3918
    #dbg_value(i64 %indvars.iv.next, !1476, !DIExpression(), !3905)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3906
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !3908, !llvm.loop !3919

if.end:                                           ; preds = %for.body17.preheader, %for.cond.cleanup
  %mvd.lobit = lshr i32 %mvd, 31, !dbg !3921
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %cb, i32 noundef %mvd.lobit) #7, !dbg !3922
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  %cond32 = tail call i32 @llvm.umin.i32(i32 %0, i32 33), !dbg !3923
  ret i32 %cond32, !dbg !3924
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare !dbg !3925 void @x264_cabac_encode_ue_bypass(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3926 void @x264_cabac_encode_bypass_c(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545}
!llvm.ident = !{!1546}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode4x4_fix", scope: !2, file: !74, line: 81, type: !1536, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !135, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/encoder/cabac.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2860fe716c1784c4555c09d3147821f9")
!4 = !{!5, !15, !37, !45, !65, !73}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "MB_LEFT", value: 1)
!10 = !DIEnumerator(name: "MB_TOP", value: 2)
!11 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!12 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!13 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!14 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!17 = !DIEnumerator(name: "I_4x4", value: 0)
!18 = !DIEnumerator(name: "I_8x8", value: 1)
!19 = !DIEnumerator(name: "I_16x16", value: 2)
!20 = !DIEnumerator(name: "I_PCM", value: 3)
!21 = !DIEnumerator(name: "P_L0", value: 4)
!22 = !DIEnumerator(name: "P_8x8", value: 5)
!23 = !DIEnumerator(name: "P_SKIP", value: 6)
!24 = !DIEnumerator(name: "B_DIRECT", value: 7)
!25 = !DIEnumerator(name: "B_L0_L0", value: 8)
!26 = !DIEnumerator(name: "B_L0_L1", value: 9)
!27 = !DIEnumerator(name: "B_L0_BI", value: 10)
!28 = !DIEnumerator(name: "B_L1_L0", value: 11)
!29 = !DIEnumerator(name: "B_L1_L1", value: 12)
!30 = !DIEnumerator(name: "B_L1_BI", value: 13)
!31 = !DIEnumerator(name: "B_BI_L0", value: 14)
!32 = !DIEnumerator(name: "B_BI_L1", value: 15)
!33 = !DIEnumerator(name: "B_BI_BI", value: 16)
!34 = !DIEnumerator(name: "B_8x8", value: 17)
!35 = !DIEnumerator(name: "B_SKIP", value: 18)
!36 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !38, line: 280, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!41 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!42 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!43 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!44 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 117, baseType: !7, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!47 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!48 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!49 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!50 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!51 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!52 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!53 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!54 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!55 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!56 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!57 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!58 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!59 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!60 = !DIEnumerator(name: "D_8x8", value: 13)
!61 = !DIEnumerator(name: "D_16x8", value: 14)
!62 = !DIEnumerator(name: "D_8x16", value: 15)
!63 = !DIEnumerator(name: "D_16x16", value: 16)
!64 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 258, baseType: !7, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72}
!67 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!68 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!69 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!70 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!71 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!72 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !74, line: 65, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!77 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!78 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!79 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!80 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!81 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!82 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!83 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!84 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!85 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!86 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!87 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!88 = !{!89, !94, !109, !122}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !90, line: 27, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !92, line: 45, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !38, line: 88, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 88, size: 16, elements: !97)
!97 = !{!98, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !96, file: !38, line: 88, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 25, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !92, line: 40, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !96, file: !38, line: 88, baseType: !103, size: 16)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 16, elements: !107)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !90, line: 24, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !92, line: 38, baseType: !106)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 2)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !38, line: 89, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 89, size: 32, elements: !112)
!112 = !{!113, !116, !118}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !111, file: !38, line: 89, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !90, line: 26, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !92, line: 42, baseType: !7)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !111, file: !38, line: 89, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32, elements: !107)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !111, file: !38, line: 89, baseType: !119, size: 32)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !38, line: 90, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 90, size: 64, elements: !125)
!125 = !{!126, !127, !129, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !124, file: !38, line: 90, baseType: !89, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !124, file: !38, line: 90, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !107)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !124, file: !38, line: 90, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !120)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !124, file: !38, line: 90, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 8)
!135 = !{!136, !1453, !0, !1456, !1459, !1461, !1486, !1489, !1491, !1494, !1498, !1506, !1511, !1513, !1516, !1521, !1525, !1528, !1530, !1532}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "i_mb_bits", scope: !138, file: !3, line: 151, type: !1450, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "x264_cabac_mb_type", scope: !3, file: !3, line: 70, type: !139, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141, !1433}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !143, line: 46, baseType: !144)
!143 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !38, line: 381, size: 266752, elements: !145)
!145 = !{!146, !315, !319, !320, !321, !322, !323, !324, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !460, !462, !490, !492, !493, !494, !498, !502, !503, !504, !508, !512, !513, !514, !519, !522, !523, !600, !617, !778, !779, !780, !781, !785, !786, !787, !788, !789, !790, !791, !806, !999, !1003, !1064, !1067, !1069, !1070, !1071, !1074, !1079, !1087, !1088, !1096, !1098, !1103, !1179, !1265, !1309, !1331, !1380, !1409}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !144, file: !38, line: 384, baseType: !147, size: 5632)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !143, line: 376, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !143, line: 176, size: 5632, elements: !149)
!149 = !{!150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !194, !198, !199, !200, !201, !205, !206, !220, !221, !222, !223, !224, !253, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !148, file: !143, line: 179, baseType: !7, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !148, file: !143, line: 180, baseType: !152, size: 32, offset: 32)
!152 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !148, file: !143, line: 181, baseType: !152, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !148, file: !143, line: 182, baseType: !152, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !148, file: !143, line: 183, baseType: !152, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !148, file: !143, line: 186, baseType: !152, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !148, file: !143, line: 187, baseType: !152, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !148, file: !143, line: 188, baseType: !152, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !148, file: !143, line: 189, baseType: !152, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !148, file: !143, line: 190, baseType: !152, size: 32, offset: 288)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !148, file: !143, line: 198, baseType: !152, size: 32, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !148, file: !143, line: 215, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !143, line: 200, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !163, file: !143, line: 203, baseType: !152, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !163, file: !143, line: 204, baseType: !152, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !163, file: !143, line: 206, baseType: !152, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !163, file: !143, line: 209, baseType: !152, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !163, file: !143, line: 210, baseType: !152, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !163, file: !143, line: 211, baseType: !152, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !163, file: !143, line: 212, baseType: !152, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !163, file: !143, line: 213, baseType: !152, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !163, file: !143, line: 214, baseType: !152, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !148, file: !143, line: 218, baseType: !152, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !148, file: !143, line: 219, baseType: !152, size: 32, offset: 672)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !148, file: !143, line: 220, baseType: !152, size: 32, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !148, file: !143, line: 221, baseType: !152, size: 32, offset: 736)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !148, file: !143, line: 222, baseType: !152, size: 32, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !148, file: !143, line: 224, baseType: !152, size: 32, offset: 800)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !148, file: !143, line: 225, baseType: !152, size: 32, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !148, file: !143, line: 226, baseType: !152, size: 32, offset: 864)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !148, file: !143, line: 227, baseType: !152, size: 32, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !148, file: !143, line: 229, baseType: !152, size: 32, offset: 928)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !148, file: !143, line: 230, baseType: !152, size: 32, offset: 960)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !148, file: !143, line: 231, baseType: !152, size: 32, offset: 992)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !148, file: !143, line: 233, baseType: !152, size: 32, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !148, file: !143, line: 234, baseType: !152, size: 32, offset: 1056)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !148, file: !143, line: 236, baseType: !152, size: 32, offset: 1088)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !148, file: !143, line: 237, baseType: !152, size: 32, offset: 1120)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !148, file: !143, line: 239, baseType: !152, size: 32, offset: 1152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !148, file: !143, line: 240, baseType: !192, size: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !148, file: !143, line: 241, baseType: !195, size: 128, offset: 1280)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !148, file: !143, line: 242, baseType: !195, size: 128, offset: 1408)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !148, file: !143, line: 243, baseType: !195, size: 128, offset: 1536)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !148, file: !143, line: 244, baseType: !195, size: 128, offset: 1664)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !148, file: !143, line: 245, baseType: !202, size: 512, offset: 1792)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !148, file: !143, line: 246, baseType: !202, size: 512, offset: 2304)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !148, file: !143, line: 249, baseType: !207, size: 64, offset: 2816)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !210, !152, !211, !213}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !215)
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !214, file: !3, baseType: !7, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !214, file: !3, baseType: !7, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !214, file: !3, baseType: !210, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !214, file: !3, baseType: !210, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !148, file: !143, line: 250, baseType: !210, size: 64, offset: 2880)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !148, file: !143, line: 251, baseType: !152, size: 32, offset: 2944)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !148, file: !143, line: 252, baseType: !152, size: 32, offset: 2976)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !148, file: !143, line: 253, baseType: !192, size: 64, offset: 3008)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !148, file: !143, line: 287, baseType: !225, size: 800, offset: 3072)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !143, line: 256, size: 800, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !247, !248, !249, !251, !252}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !225, file: !143, line: 258, baseType: !7, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !225, file: !143, line: 259, baseType: !7, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !225, file: !143, line: 261, baseType: !152, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !225, file: !143, line: 262, baseType: !152, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !225, file: !143, line: 263, baseType: !152, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !225, file: !143, line: 264, baseType: !152, size: 32, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !225, file: !143, line: 265, baseType: !152, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !225, file: !143, line: 267, baseType: !152, size: 32, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !225, file: !143, line: 268, baseType: !152, size: 32, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !225, file: !143, line: 269, baseType: !152, size: 32, offset: 288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !225, file: !143, line: 270, baseType: !152, size: 32, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !225, file: !143, line: 271, baseType: !152, size: 32, offset: 352)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !225, file: !143, line: 272, baseType: !152, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !225, file: !143, line: 273, baseType: !152, size: 32, offset: 416)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !225, file: !143, line: 274, baseType: !152, size: 32, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !225, file: !143, line: 275, baseType: !152, size: 32, offset: 480)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !225, file: !143, line: 276, baseType: !152, size: 32, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !225, file: !143, line: 277, baseType: !152, size: 32, offset: 544)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !225, file: !143, line: 278, baseType: !246, size: 32, offset: 576)
!246 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !225, file: !143, line: 279, baseType: !246, size: 32, offset: 608)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !225, file: !143, line: 280, baseType: !152, size: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !225, file: !143, line: 283, baseType: !250, size: 64, offset: 672)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !107)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !225, file: !143, line: 285, baseType: !152, size: 32, offset: 736)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !225, file: !143, line: 286, baseType: !152, size: 32, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !148, file: !143, line: 327, baseType: !254, size: 1152, offset: 3904)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !143, line: 290, size: 1152, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !293, !294}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !254, file: !143, line: 292, baseType: !152, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !254, file: !143, line: 294, baseType: !152, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !254, file: !143, line: 295, baseType: !152, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !254, file: !143, line: 296, baseType: !152, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !254, file: !143, line: 297, baseType: !152, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !254, file: !143, line: 299, baseType: !152, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !254, file: !143, line: 300, baseType: !246, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !254, file: !143, line: 301, baseType: !246, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !254, file: !143, line: 302, baseType: !246, size: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !254, file: !143, line: 303, baseType: !152, size: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !254, file: !143, line: 304, baseType: !152, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !254, file: !143, line: 305, baseType: !246, size: 32, offset: 352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !254, file: !143, line: 306, baseType: !246, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !254, file: !143, line: 307, baseType: !246, size: 32, offset: 416)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !254, file: !143, line: 309, baseType: !152, size: 32, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !254, file: !143, line: 310, baseType: !246, size: 32, offset: 480)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !254, file: !143, line: 311, baseType: !152, size: 32, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !254, file: !143, line: 312, baseType: !152, size: 32, offset: 544)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !254, file: !143, line: 315, baseType: !152, size: 32, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !254, file: !143, line: 316, baseType: !192, size: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !254, file: !143, line: 317, baseType: !152, size: 32, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !254, file: !143, line: 318, baseType: !192, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !254, file: !143, line: 321, baseType: !246, size: 32, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !254, file: !143, line: 322, baseType: !246, size: 32, offset: 864)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !254, file: !143, line: 323, baseType: !246, size: 32, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !254, file: !143, line: 324, baseType: !282, size: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !143, line: 174, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 167, size: 256, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !284, file: !143, line: 169, baseType: !152, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !284, file: !143, line: 169, baseType: !152, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !284, file: !143, line: 170, baseType: !152, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !284, file: !143, line: 171, baseType: !152, size: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !284, file: !143, line: 172, baseType: !246, size: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !284, file: !143, line: 173, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !254, file: !143, line: 325, baseType: !152, size: 32, offset: 1024)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !254, file: !143, line: 326, baseType: !192, size: 64, offset: 1088)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !148, file: !143, line: 330, baseType: !152, size: 32, offset: 5056)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !148, file: !143, line: 331, baseType: !152, size: 32, offset: 5088)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !148, file: !143, line: 332, baseType: !152, size: 32, offset: 5120)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !148, file: !143, line: 334, baseType: !152, size: 32, offset: 5152)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !148, file: !143, line: 335, baseType: !152, size: 32, offset: 5184)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !148, file: !143, line: 336, baseType: !114, size: 32, offset: 5216)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !148, file: !143, line: 337, baseType: !114, size: 32, offset: 5248)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !148, file: !143, line: 338, baseType: !114, size: 32, offset: 5280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !148, file: !143, line: 339, baseType: !114, size: 32, offset: 5312)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !148, file: !143, line: 340, baseType: !152, size: 32, offset: 5344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !148, file: !143, line: 344, baseType: !152, size: 32, offset: 5376)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !148, file: !143, line: 356, baseType: !152, size: 32, offset: 5408)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !148, file: !143, line: 364, baseType: !152, size: 32, offset: 5440)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !148, file: !143, line: 367, baseType: !152, size: 32, offset: 5472)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !148, file: !143, line: 368, baseType: !152, size: 32, offset: 5504)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !148, file: !143, line: 369, baseType: !152, size: 32, offset: 5536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !148, file: !143, line: 375, baseType: !312, size: 64, offset: 5568)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !210}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !144, file: !38, line: 386, baseType: !316, size: 8256, offset: 5632)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 8256, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 129)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !144, file: !38, line: 387, baseType: !152, size: 32, offset: 13888)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !144, file: !38, line: 388, baseType: !152, size: 32, offset: 13920)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !144, file: !38, line: 389, baseType: !152, size: 32, offset: 13952)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !144, file: !38, line: 390, baseType: !152, size: 32, offset: 13984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !144, file: !38, line: 391, baseType: !152, size: 32, offset: 14016)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !144, file: !38, line: 402, baseType: !325, size: 576, offset: 14080)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !38, line: 394, size: 576, elements: !326)
!326 = !{!327, !328, !329, !339, !340, !341}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !325, file: !38, line: 396, baseType: !152, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !325, file: !38, line: 397, baseType: !152, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !325, file: !38, line: 398, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !143, line: 604, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 593, size: 192, elements: !333)
!333 = !{!334, !335, !336, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !332, file: !143, line: 595, baseType: !152, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !332, file: !143, line: 596, baseType: !152, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !332, file: !143, line: 599, baseType: !152, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !332, file: !143, line: 603, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !325, file: !38, line: 399, baseType: !152, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !325, file: !38, line: 400, baseType: !338, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !325, file: !38, line: 401, baseType: !342, size: 320, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !343, line: 56, baseType: !344)
!343 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !343, line: 47, size: 320, elements: !345)
!345 = !{!346, !347, !348, !349, !353, !354}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !344, file: !343, line: 49, baseType: !338, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !344, file: !343, line: 50, baseType: !338, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !344, file: !343, line: 51, baseType: !338, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !344, file: !343, line: 53, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !351, line: 87, baseType: !352)
!351 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!352 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !344, file: !343, line: 54, baseType: !152, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !344, file: !343, line: 55, baseType: !152, size: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !144, file: !38, line: 404, baseType: !338, size: 64, offset: 14656)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !144, file: !38, line: 405, baseType: !152, size: 32, offset: 14720)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !144, file: !38, line: 410, baseType: !152, size: 32, offset: 14752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !144, file: !38, line: 411, baseType: !152, size: 32, offset: 14784)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !144, file: !38, line: 413, baseType: !152, size: 32, offset: 14816)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !144, file: !38, line: 415, baseType: !152, size: 32, offset: 14848)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !144, file: !38, line: 416, baseType: !152, size: 32, offset: 14880)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !144, file: !38, line: 418, baseType: !152, size: 32, offset: 14912)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !144, file: !38, line: 419, baseType: !152, size: 32, offset: 14944)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !144, file: !38, line: 420, baseType: !152, size: 32, offset: 14976)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !144, file: !38, line: 421, baseType: !152, size: 32, offset: 15008)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !144, file: !38, line: 422, baseType: !152, size: 32, offset: 15040)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !144, file: !38, line: 424, baseType: !152, size: 32, offset: 15072)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !144, file: !38, line: 425, baseType: !152, size: 32, offset: 15104)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !144, file: !38, line: 427, baseType: !152, size: 32, offset: 15136)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !144, file: !38, line: 430, baseType: !371, size: 10400, offset: 15168)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 10400, elements: !458)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !373, line: 154, baseType: !374)
!373 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 52, size: 10400, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !408, !409, !457}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !374, file: !373, line: 54, baseType: !152, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !374, file: !373, line: 56, baseType: !152, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !374, file: !373, line: 57, baseType: !152, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !374, file: !373, line: 59, baseType: !152, size: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !374, file: !373, line: 60, baseType: !152, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !374, file: !373, line: 61, baseType: !152, size: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !374, file: !373, line: 63, baseType: !152, size: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !374, file: !373, line: 65, baseType: !152, size: 32, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !374, file: !373, line: 67, baseType: !152, size: 32, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !374, file: !373, line: 69, baseType: !152, size: 32, offset: 288)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !374, file: !373, line: 70, baseType: !152, size: 32, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !374, file: !373, line: 71, baseType: !152, size: 32, offset: 352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !374, file: !373, line: 72, baseType: !152, size: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !374, file: !373, line: 73, baseType: !390, size: 8192, offset: 416)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 8192, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !374, file: !373, line: 75, baseType: !152, size: 32, offset: 8608)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !374, file: !373, line: 76, baseType: !152, size: 32, offset: 8640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !374, file: !373, line: 77, baseType: !152, size: 32, offset: 8672)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !374, file: !373, line: 78, baseType: !152, size: 32, offset: 8704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !374, file: !373, line: 79, baseType: !152, size: 32, offset: 8736)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !374, file: !373, line: 80, baseType: !152, size: 32, offset: 8768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !374, file: !373, line: 81, baseType: !152, size: 32, offset: 8800)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !374, file: !373, line: 83, baseType: !152, size: 32, offset: 8832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !374, file: !373, line: 90, baseType: !402, size: 128, offset: 8864)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !373, line: 84, size: 128, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !402, file: !373, line: 86, baseType: !152, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !402, file: !373, line: 87, baseType: !152, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !402, file: !373, line: 88, baseType: !152, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !402, file: !373, line: 89, baseType: !152, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !374, file: !373, line: 92, baseType: !152, size: 32, offset: 8992)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !374, file: !373, line: 150, baseType: !410, size: 1344, offset: 9024)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !373, line: 93, size: 1344, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !410, file: !373, line: 95, baseType: !152, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !410, file: !373, line: 96, baseType: !152, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !410, file: !373, line: 97, baseType: !152, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !410, file: !373, line: 99, baseType: !152, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !410, file: !373, line: 100, baseType: !152, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !410, file: !373, line: 102, baseType: !152, size: 32, offset: 160)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !410, file: !373, line: 103, baseType: !152, size: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !410, file: !373, line: 104, baseType: !152, size: 32, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !410, file: !373, line: 105, baseType: !152, size: 32, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !410, file: !373, line: 106, baseType: !152, size: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !410, file: !373, line: 107, baseType: !152, size: 32, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !410, file: !373, line: 108, baseType: !152, size: 32, offset: 352)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !410, file: !373, line: 110, baseType: !152, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !410, file: !373, line: 111, baseType: !152, size: 32, offset: 416)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !410, file: !373, line: 112, baseType: !152, size: 32, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !410, file: !373, line: 114, baseType: !152, size: 32, offset: 480)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !410, file: !373, line: 115, baseType: !114, size: 32, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !410, file: !373, line: 116, baseType: !114, size: 32, offset: 544)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !410, file: !373, line: 117, baseType: !152, size: 32, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !410, file: !373, line: 119, baseType: !152, size: 32, offset: 608)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !410, file: !373, line: 120, baseType: !152, size: 32, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !410, file: !373, line: 137, baseType: !434, size: 384, offset: 672)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !373, line: 122, size: 384, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !434, file: !373, line: 124, baseType: !152, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !434, file: !373, line: 125, baseType: !152, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !434, file: !373, line: 126, baseType: !152, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !434, file: !373, line: 127, baseType: !152, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !434, file: !373, line: 128, baseType: !152, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !434, file: !373, line: 129, baseType: !152, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !434, file: !373, line: 130, baseType: !152, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !434, file: !373, line: 131, baseType: !152, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !434, file: !373, line: 133, baseType: !152, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !434, file: !373, line: 134, baseType: !152, size: 32, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !434, file: !373, line: 135, baseType: !152, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !434, file: !373, line: 136, baseType: !152, size: 32, offset: 352)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !410, file: !373, line: 139, baseType: !152, size: 32, offset: 1056)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !410, file: !373, line: 140, baseType: !152, size: 32, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !410, file: !373, line: 141, baseType: !152, size: 32, offset: 1120)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !410, file: !373, line: 142, baseType: !152, size: 32, offset: 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !410, file: !373, line: 143, baseType: !152, size: 32, offset: 1184)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !410, file: !373, line: 144, baseType: !152, size: 32, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !410, file: !373, line: 145, baseType: !152, size: 32, offset: 1248)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !410, file: !373, line: 146, baseType: !152, size: 32, offset: 1280)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !410, file: !373, line: 147, baseType: !152, size: 32, offset: 1312)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !374, file: !373, line: 152, baseType: !152, size: 32, offset: 10368)
!458 = !{!459}
!459 = !DISubrange(count: 1)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !144, file: !38, line: 431, baseType: !461, size: 64, offset: 25600)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !144, file: !38, line: 432, baseType: !463, size: 960, offset: 25664)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 960, elements: !458)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !373, line: 186, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 156, size: 960, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !465, file: !373, line: 158, baseType: !152, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !465, file: !373, line: 159, baseType: !152, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !465, file: !373, line: 161, baseType: !152, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !465, file: !373, line: 163, baseType: !152, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !465, file: !373, line: 164, baseType: !152, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !465, file: !373, line: 166, baseType: !152, size: 32, offset: 160)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !465, file: !373, line: 167, baseType: !152, size: 32, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !465, file: !373, line: 169, baseType: !152, size: 32, offset: 224)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !465, file: !373, line: 170, baseType: !152, size: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !465, file: !373, line: 172, baseType: !152, size: 32, offset: 288)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !465, file: !373, line: 173, baseType: !152, size: 32, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !465, file: !373, line: 175, baseType: !152, size: 32, offset: 352)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !465, file: !373, line: 177, baseType: !152, size: 32, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !465, file: !373, line: 178, baseType: !152, size: 32, offset: 416)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !465, file: !373, line: 179, baseType: !152, size: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !465, file: !373, line: 181, baseType: !152, size: 32, offset: 480)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !465, file: !373, line: 183, baseType: !152, size: 32, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !465, file: !373, line: 184, baseType: !485, size: 384, offset: 576)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 384, elements: !488)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!488 = !{!489}
!489 = !DISubrange(count: 6)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !144, file: !38, line: 433, baseType: !491, size: 64, offset: 26624)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !144, file: !38, line: 434, baseType: !152, size: 32, offset: 26688)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !144, file: !38, line: 437, baseType: !152, size: 32, offset: 26720)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !144, file: !38, line: 440, baseType: !495, size: 256, offset: 26752)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 256, elements: !120)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 512, elements: !196)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !144, file: !38, line: 441, baseType: !499, size: 128, offset: 27008)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 128, elements: !107)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !203)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !144, file: !38, line: 443, baseType: !495, size: 256, offset: 27136)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !144, file: !38, line: 444, baseType: !499, size: 128, offset: 27392)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !144, file: !38, line: 446, baseType: !505, size: 256, offset: 27520)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 256, elements: !120)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !196)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !144, file: !38, line: 447, baseType: !509, size: 128, offset: 27776)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 128, elements: !107)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1024, elements: !203)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !144, file: !38, line: 448, baseType: !505, size: 256, offset: 27904)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !144, file: !38, line: 449, baseType: !509, size: 128, offset: 28160)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !144, file: !38, line: 454, baseType: !515, size: 5888, offset: 28288)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 5888, elements: !517)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!517 = !{!518}
!518 = !DISubrange(count: 92)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !144, file: !38, line: 455, baseType: !520, size: 23552, offset: 34176)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 23552, elements: !521)
!521 = !{!518, !121}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !144, file: !38, line: 457, baseType: !486, size: 64, offset: 57728)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !144, file: !38, line: 460, baseType: !524, size: 53376, offset: 57856)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !38, line: 364, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 302, size: 53376, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !555, !584, !585, !586, !592, !593, !594, !595, !596, !597, !598, !599}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !525, file: !38, line: 304, baseType: !461, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !525, file: !38, line: 305, baseType: !491, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !525, file: !38, line: 307, baseType: !152, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !525, file: !38, line: 308, baseType: !152, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !525, file: !38, line: 309, baseType: !152, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !525, file: !38, line: 311, baseType: !152, size: 32, offset: 224)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !525, file: !38, line: 313, baseType: !152, size: 32, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !525, file: !38, line: 315, baseType: !152, size: 32, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !525, file: !38, line: 316, baseType: !152, size: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !525, file: !38, line: 317, baseType: !152, size: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !525, file: !38, line: 319, baseType: !152, size: 32, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !525, file: !38, line: 321, baseType: !152, size: 32, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !525, file: !38, line: 322, baseType: !152, size: 32, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !525, file: !38, line: 324, baseType: !250, size: 64, offset: 480)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !525, file: !38, line: 325, baseType: !152, size: 32, offset: 544)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !525, file: !38, line: 327, baseType: !152, size: 32, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !525, file: !38, line: 329, baseType: !152, size: 32, offset: 608)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !525, file: !38, line: 330, baseType: !152, size: 32, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !525, file: !38, line: 331, baseType: !152, size: 32, offset: 672)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !525, file: !38, line: 333, baseType: !152, size: 32, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !525, file: !38, line: 334, baseType: !152, size: 32, offset: 736)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !525, file: !38, line: 339, baseType: !549, size: 2048, offset: 768)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 2048, elements: !554)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !38, line: 335, size: 64, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !550, file: !38, line: 337, baseType: !152, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !550, file: !38, line: 338, baseType: !152, size: 32, offset: 32)
!554 = !{!108, !197}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !525, file: !38, line: 342, baseType: !556, size: 49152, align: 128, offset: 2816)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 49152, align: 128, elements: !581)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !558, line: 36, baseType: !559, align: 128)
!558 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !558, line: 26, size: 512, elements: !560)
!560 = !{!561, !567, !568, !571, !572, !573}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !559, file: !558, line: 30, baseType: !562, size: 128, align: 128)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !133)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !564, line: 25, baseType: !565)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !92, line: 39, baseType: !566)
!566 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !559, file: !558, line: 31, baseType: !562, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !559, file: !558, line: 32, baseType: !569, size: 32, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !564, line: 26, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !92, line: 41, baseType: !152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !559, file: !558, line: 33, baseType: !569, size: 32, offset: 288)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !559, file: !558, line: 34, baseType: !569, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !559, file: !558, line: 35, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !558, line: 25, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !338, !152, !338, !152, !579, !152}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!581 = !{!582, !583}
!582 = !DISubrange(count: 32)
!583 = !DISubrange(count: 3)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !525, file: !38, line: 344, baseType: !152, size: 32, offset: 51968)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !525, file: !38, line: 345, baseType: !152, size: 32, offset: 52000)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !525, file: !38, line: 350, baseType: !587, size: 1024, offset: 52032)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 1024, elements: !196)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !38, line: 346, size: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !588, file: !38, line: 348, baseType: !152, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !588, file: !38, line: 349, baseType: !152, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !525, file: !38, line: 352, baseType: !152, size: 32, offset: 53056)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !525, file: !38, line: 354, baseType: !152, size: 32, offset: 53088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !525, file: !38, line: 355, baseType: !152, size: 32, offset: 53120)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !525, file: !38, line: 356, baseType: !152, size: 32, offset: 53152)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !525, file: !38, line: 357, baseType: !152, size: 32, offset: 53184)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !525, file: !38, line: 360, baseType: !152, size: 32, offset: 53216)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !525, file: !38, line: 361, baseType: !152, size: 32, offset: 53248)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !525, file: !38, line: 362, baseType: !152, size: 32, offset: 53280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !144, file: !38, line: 463, baseType: !601, size: 4096, offset: 111232)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !602, line: 46, baseType: !603)
!602 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 27, size: 4096, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !603, file: !602, line: 30, baseType: !152, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !603, file: !602, line: 31, baseType: !152, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !603, file: !602, line: 34, baseType: !152, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !603, file: !602, line: 35, baseType: !152, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !603, file: !602, line: 37, baseType: !338, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !603, file: !602, line: 38, baseType: !338, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !603, file: !602, line: 39, baseType: !338, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !603, file: !602, line: 42, baseType: !152, size: 32, align: 128, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !603, file: !602, line: 45, baseType: !614, size: 3680, offset: 416)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3680, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 460)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !144, file: !38, line: 494, baseType: !618, size: 2112, offset: 115328)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !38, line: 465, size: 2112, elements: !619)
!619 = !{!620, !758, !760, !761, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !774, !775, !776, !777}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !618, file: !38, line: 468, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !624, line: 146, baseType: !625)
!624 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !624, line: 31, size: 125056, elements: !626)
!626 = !{!627, !628, !629, !630, !633, !634, !635, !636, !637, !638, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !657, !658, !659, !660, !661, !662, !664, !666, !667, !668, !669, !670, !673, !675, !676, !678, !683, !684, !688, !689, !693, !697, !700, !702, !703, !705, !706, !708, !709, !710, !713, !715, !716, !717, !719, !720, !721, !722, !723, !724, !725, !726, !728, !729, !730, !739, !743, !745, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !625, file: !624, line: 34, baseType: !152, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !625, file: !624, line: 35, baseType: !152, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !625, file: !624, line: 36, baseType: !152, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !625, file: !624, line: 37, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !564, line: 27, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !92, line: 44, baseType: !352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !625, file: !624, line: 38, baseType: !631, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !625, file: !624, line: 39, baseType: !152, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !625, file: !624, line: 40, baseType: !152, size: 32, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !625, file: !624, line: 41, baseType: !152, size: 32, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !625, file: !624, line: 42, baseType: !152, size: 32, offset: 352)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !625, file: !624, line: 43, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !625, file: !624, line: 45, baseType: !152, size: 32, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !625, file: !624, line: 46, baseType: !152, size: 32, offset: 480)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !625, file: !624, line: 47, baseType: !152, size: 32, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !625, file: !624, line: 48, baseType: !152, size: 32, offset: 544)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !625, file: !624, line: 49, baseType: !152, size: 32, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !625, file: !624, line: 50, baseType: !152, size: 32, offset: 608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !625, file: !624, line: 51, baseType: !152, size: 32, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !625, file: !624, line: 52, baseType: !104, size: 8, offset: 672)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !625, file: !624, line: 53, baseType: !104, size: 8, offset: 680)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !625, file: !624, line: 54, baseType: !104, size: 8, offset: 688)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !625, file: !624, line: 55, baseType: !246, size: 32, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !625, file: !624, line: 56, baseType: !246, size: 32, offset: 736)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !625, file: !624, line: 57, baseType: !152, size: 32, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !625, file: !624, line: 60, baseType: !152, size: 32, offset: 800)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !625, file: !624, line: 61, baseType: !655, size: 96, offset: 832)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 96, elements: !656)
!656 = !{!583}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !625, file: !624, line: 62, baseType: !655, size: 96, offset: 928)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !625, file: !624, line: 63, baseType: !655, size: 96, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !625, file: !624, line: 64, baseType: !152, size: 32, offset: 1120)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !625, file: !624, line: 65, baseType: !152, size: 32, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !625, file: !624, line: 66, baseType: !152, size: 32, offset: 1184)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !625, file: !624, line: 67, baseType: !663, size: 192, offset: 1216)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !656)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !625, file: !624, line: 68, baseType: !665, size: 256, offset: 1408)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !625, file: !624, line: 69, baseType: !665, size: 256, offset: 1664)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !625, file: !624, line: 70, baseType: !516, size: 64, offset: 1920)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !625, file: !624, line: 74, baseType: !665, size: 256, offset: 1984)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !625, file: !624, line: 75, baseType: !665, size: 256, offset: 2240)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !625, file: !624, line: 77, baseType: !671, size: 24576, align: 128, offset: 2560)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 24576, align: 128, elements: !672)
!672 = !{!197, !583}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !625, file: !624, line: 78, baseType: !674, size: 1024, offset: 27136)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !196)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !625, file: !624, line: 79, baseType: !152, size: 32, offset: 28160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !625, file: !624, line: 80, baseType: !677, size: 64, offset: 28224)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !625, file: !624, line: 83, baseType: !679, size: 64, offset: 28288)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !564, line: 24, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !92, line: 37, baseType: !682)
!682 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !625, file: !624, line: 84, baseType: !338, size: 64, offset: 28352)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !625, file: !624, line: 85, baseType: !685, size: 128, offset: 28416)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 128, elements: !107)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 32, elements: !107)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !625, file: !624, line: 86, baseType: !686, size: 64, offset: 28544)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !625, file: !624, line: 87, baseType: !690, size: 2176, offset: 28608)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 2176, elements: !691)
!691 = !{!108, !692}
!692 = !DISubrange(count: 17)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !625, file: !624, line: 92, baseType: !694, size: 20736, offset: 30784)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 20736, elements: !695)
!695 = !{!696, !696}
!696 = !DISubrange(count: 18)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !625, file: !624, line: 96, baseType: !698, size: 2176, offset: 51520)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 2176, elements: !691)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !625, file: !624, line: 97, baseType: !701, size: 128, offset: 53696)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 128, elements: !107)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !625, file: !624, line: 98, baseType: !250, size: 64, offset: 53824)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !625, file: !624, line: 99, baseType: !704, size: 1024, offset: 53888)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !554)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !625, file: !624, line: 100, baseType: !687, size: 32, offset: 54912)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !625, file: !624, line: 105, baseType: !707, size: 10368, offset: 54944)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 10368, elements: !695)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !625, file: !624, line: 106, baseType: !707, size: 10368, offset: 65312)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !625, file: !624, line: 107, baseType: !152, size: 32, offset: 75680)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !625, file: !624, line: 108, baseType: !711, size: 576, offset: 75712)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 576, elements: !712)
!712 = !{!696}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !625, file: !624, line: 109, baseType: !714, size: 20736, offset: 76288)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 20736, elements: !695)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !625, file: !624, line: 110, baseType: !699, size: 64, offset: 97024)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !625, file: !624, line: 111, baseType: !699, size: 64, offset: 97088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !625, file: !624, line: 112, baseType: !718, size: 64, offset: 97152)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !625, file: !624, line: 113, baseType: !718, size: 64, offset: 97216)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !625, file: !624, line: 114, baseType: !718, size: 64, offset: 97280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !625, file: !624, line: 115, baseType: !152, size: 32, offset: 97344)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !625, file: !624, line: 116, baseType: !516, size: 64, offset: 97408)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !625, file: !624, line: 117, baseType: !516, size: 64, offset: 97472)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !625, file: !624, line: 118, baseType: !516, size: 64, offset: 97536)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !625, file: !624, line: 119, baseType: !152, size: 32, offset: 97600)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !625, file: !624, line: 120, baseType: !727, size: 576, offset: 97632)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 576, elements: !712)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !625, file: !624, line: 121, baseType: !114, size: 32, offset: 98208)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !625, file: !624, line: 122, baseType: !89, size: 64, offset: 98240)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !625, file: !624, line: 125, baseType: !731, size: 256, offset: 98304)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !143, line: 503, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 496, size: 256, elements: !733)
!733 = !{!734, !736, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !732, file: !143, line: 498, baseType: !735, size: 64)
!735 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !732, file: !143, line: 499, baseType: !735, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !732, file: !143, line: 500, baseType: !735, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !732, file: !143, line: 502, baseType: !735, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !625, file: !624, line: 128, baseType: !740, size: 2008, offset: 98560)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2008, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 251)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !625, file: !624, line: 129, baseType: !744, size: 8032, offset: 100576)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 8032, elements: !741)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !625, file: !624, line: 130, baseType: !746, size: 16064, offset: 108608)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 16064, elements: !741)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !625, file: !624, line: 131, baseType: !152, size: 32, offset: 124672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !625, file: !624, line: 132, baseType: !152, size: 32, offset: 124704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !625, file: !624, line: 135, baseType: !152, size: 32, offset: 124736)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !625, file: !624, line: 136, baseType: !152, size: 32, offset: 124768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !625, file: !624, line: 137, baseType: !152, size: 32, offset: 124800)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !625, file: !624, line: 138, baseType: !152, size: 32, offset: 124832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !625, file: !624, line: 139, baseType: !152, size: 32, offset: 124864)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !625, file: !624, line: 142, baseType: !246, size: 32, offset: 124896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !625, file: !624, line: 143, baseType: !152, size: 32, offset: 124928)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !625, file: !624, line: 144, baseType: !152, size: 32, offset: 124960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !625, file: !624, line: 145, baseType: !152, size: 32, offset: 124992)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !618, file: !38, line: 470, baseType: !759, size: 128, offset: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 128, elements: !107)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !618, file: !38, line: 473, baseType: !621, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !618, file: !38, line: 476, baseType: !762, size: 1152, offset: 256)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 1152, elements: !712)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !618, file: !38, line: 478, baseType: !152, size: 32, offset: 1408)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !618, file: !38, line: 480, baseType: !152, size: 32, offset: 1440)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !618, file: !38, line: 482, baseType: !152, size: 32, offset: 1472)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !618, file: !38, line: 483, baseType: !152, size: 32, offset: 1504)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !618, file: !38, line: 484, baseType: !152, size: 32, offset: 1536)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !618, file: !38, line: 485, baseType: !152, size: 32, offset: 1568)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !618, file: !38, line: 486, baseType: !152, size: 32, offset: 1600)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !618, file: !38, line: 487, baseType: !631, size: 64, offset: 1664)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !618, file: !38, line: 488, baseType: !631, size: 64, offset: 1728)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !618, file: !38, line: 489, baseType: !773, size: 128, offset: 1792)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !107)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !618, file: !38, line: 490, baseType: !631, size: 64, offset: 1920)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !618, file: !38, line: 491, baseType: !631, size: 64, offset: 1984)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !618, file: !38, line: 492, baseType: !152, size: 32, offset: 2048)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !618, file: !38, line: 493, baseType: !152, size: 32, offset: 2080)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !144, file: !38, line: 497, baseType: !622, size: 64, offset: 117440)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !144, file: !38, line: 500, baseType: !622, size: 64, offset: 117504)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !144, file: !38, line: 503, baseType: !152, size: 32, offset: 117568)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !144, file: !38, line: 504, baseType: !782, size: 1216, offset: 117632)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 1216, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 19)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !144, file: !38, line: 505, baseType: !152, size: 32, offset: 118848)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !144, file: !38, line: 506, baseType: !782, size: 1216, offset: 118912)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !144, file: !38, line: 507, baseType: !250, size: 64, offset: 120128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !144, file: !38, line: 510, baseType: !152, size: 32, offset: 120192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !144, file: !38, line: 511, baseType: !152, size: 32, offset: 120224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !144, file: !38, line: 512, baseType: !631, size: 64, offset: 120256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !144, file: !38, line: 522, baseType: !792, size: 10624, offset: 120320)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !38, line: 515, size: 10624, elements: !793)
!793 = !{!794, !796, !799, !802}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !792, file: !38, line: 517, baseType: !795, size: 256, align: 128)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 256, elements: !196)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !792, file: !38, line: 518, baseType: !797, size: 128, align: 128, offset: 256)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !798)
!798 = !{!108, !121}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !792, file: !38, line: 520, baseType: !800, size: 4096, align: 128, offset: 384)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4096, elements: !801)
!801 = !{!121, !204}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !792, file: !38, line: 521, baseType: !803, size: 6144, align: 128, offset: 4480)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 6144, elements: !804)
!804 = !{!805, !197}
!805 = !DISubrange(count: 24)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !144, file: !38, line: 732, baseType: !807, size: 82688, offset: 130944)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !38, line: 525, size: 82688, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !836, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !854, !857, !861, !862, !863, !868, !869, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !937, !968, !969, !970, !971, !972, !973, !974, !975, !976, !979, !980, !981, !984, !987, !989, !992, !994, !995}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !807, file: !38, line: 527, baseType: !152, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !807, file: !38, line: 530, baseType: !152, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !807, file: !38, line: 531, baseType: !152, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !807, file: !38, line: 532, baseType: !152, size: 32, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !807, file: !38, line: 535, baseType: !152, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !807, file: !38, line: 536, baseType: !152, size: 32, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !807, file: !38, line: 537, baseType: !152, size: 32, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !807, file: !38, line: 538, baseType: !152, size: 32, offset: 224)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !807, file: !38, line: 539, baseType: !152, size: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !807, file: !38, line: 542, baseType: !152, size: 32, offset: 288)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !807, file: !38, line: 543, baseType: !152, size: 32, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !807, file: !38, line: 544, baseType: !152, size: 32, offset: 352)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !807, file: !38, line: 545, baseType: !152, size: 32, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !807, file: !38, line: 546, baseType: !152, size: 32, offset: 416)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !807, file: !38, line: 547, baseType: !152, size: 32, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !807, file: !38, line: 548, baseType: !152, size: 32, offset: 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !807, file: !38, line: 549, baseType: !152, size: 32, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !807, file: !38, line: 551, baseType: !152, size: 32, offset: 544)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !807, file: !38, line: 554, baseType: !250, size: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !807, file: !38, line: 555, baseType: !250, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !807, file: !38, line: 558, baseType: !250, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !807, file: !38, line: 559, baseType: !250, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !807, file: !38, line: 561, baseType: !250, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !807, file: !38, line: 562, baseType: !250, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !807, file: !38, line: 565, baseType: !7, size: 32, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !807, file: !38, line: 566, baseType: !835, size: 128, offset: 992)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !120)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !807, file: !38, line: 567, baseType: !837, size: 512, offset: 1120)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !196)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !807, file: !38, line: 568, baseType: !7, size: 32, offset: 1632)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !807, file: !38, line: 569, baseType: !7, size: 32, offset: 1664)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !807, file: !38, line: 570, baseType: !152, size: 32, offset: 1696)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !807, file: !38, line: 571, baseType: !152, size: 32, offset: 1728)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !807, file: !38, line: 572, baseType: !152, size: 32, offset: 1760)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !807, file: !38, line: 573, baseType: !152, size: 32, offset: 1792)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !807, file: !38, line: 574, baseType: !152, size: 32, offset: 1824)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !807, file: !38, line: 575, baseType: !152, size: 32, offset: 1856)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !807, file: !38, line: 576, baseType: !152, size: 32, offset: 1888)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !807, file: !38, line: 577, baseType: !152, size: 32, offset: 1920)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !807, file: !38, line: 578, baseType: !152, size: 32, offset: 1952)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !38, line: 585, baseType: !679, size: 64, offset: 1984)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !807, file: !38, line: 586, baseType: !338, size: 64, offset: 2048)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !807, file: !38, line: 587, baseType: !679, size: 64, offset: 2112)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !807, file: !38, line: 588, baseType: !853, size: 64, offset: 2176)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !807, file: !38, line: 589, baseType: !855, size: 64, offset: 2240)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 64, elements: !133)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !807, file: !38, line: 591, baseType: !858, size: 64, offset: 2304)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 192, elements: !860)
!860 = !{!805}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !807, file: !38, line: 592, baseType: !679, size: 64, offset: 2368)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !807, file: !38, line: 593, baseType: !685, size: 128, offset: 2432)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !807, file: !38, line: 594, baseType: !864, size: 128, offset: 2560)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 128, elements: !107)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !867)
!867 = !{!134, !108}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !807, file: !38, line: 595, baseType: !701, size: 128, offset: 2688)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !807, file: !38, line: 596, baseType: !870, size: 4096, offset: 2816)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 4096, elements: !871)
!871 = !{!108, !582}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !807, file: !38, line: 597, baseType: !679, size: 64, offset: 6912)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !807, file: !38, line: 598, baseType: !679, size: 64, offset: 6976)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !807, file: !38, line: 599, baseType: !516, size: 64, offset: 7040)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !807, file: !38, line: 603, baseType: !674, size: 1024, offset: 7104)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !807, file: !38, line: 606, baseType: !152, size: 32, offset: 8128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !807, file: !38, line: 607, baseType: !152, size: 32, offset: 8160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !807, file: !38, line: 608, baseType: !119, size: 32, align: 32, offset: 8192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !807, file: !38, line: 609, baseType: !152, size: 32, offset: 8224)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !807, file: !38, line: 611, baseType: !152, size: 32, offset: 8256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !807, file: !38, line: 612, baseType: !152, size: 32, offset: 8288)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !807, file: !38, line: 614, baseType: !152, size: 32, offset: 8320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !807, file: !38, line: 615, baseType: !152, size: 32, offset: 8352)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !807, file: !38, line: 621, baseType: !152, size: 32, offset: 8384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !807, file: !38, line: 624, baseType: !152, size: 32, offset: 8416)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !807, file: !38, line: 626, baseType: !152, size: 32, offset: 8448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !807, file: !38, line: 627, baseType: !152, size: 32, offset: 8480)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !807, file: !38, line: 671, baseType: !889, size: 60672, offset: 8576)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !38, line: 629, size: 60672, elements: !890)
!890 = !{!891, !895, !899, !901, !902, !905, !909, !911, !912, !913, !914, !915, !918, !922, !925, !926, !927, !928, !929, !932, !934, !936}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !889, file: !38, line: 634, baseType: !892, size: 3072, align: 128)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !889, file: !38, line: 635, baseType: !896, size: 6912, align: 128, offset: 3072)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 6912, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 864)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !889, file: !38, line: 638, baseType: !900, size: 2048, align: 128, offset: 9984)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !391)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !889, file: !38, line: 639, baseType: !900, size: 2048, align: 128, offset: 12032)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !889, file: !38, line: 640, baseType: !903, size: 3072, align: 128, offset: 14080)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 3072, elements: !904)
!904 = !{!583, !204}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !889, file: !38, line: 641, baseType: !906, size: 3840, align: 128, offset: 17152)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 3840, elements: !907)
!907 = !{!908, !197}
!908 = !DISubrange(count: 15)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !889, file: !38, line: 642, baseType: !910, size: 128, offset: 20992)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !120)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !889, file: !38, line: 643, baseType: !910, size: 128, offset: 21120)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !889, file: !38, line: 644, baseType: !152, size: 32, offset: 21248)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !889, file: !38, line: 645, baseType: !152, size: 32, offset: 21280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !889, file: !38, line: 648, baseType: !800, size: 4096, align: 128, offset: 21376)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !889, file: !38, line: 649, baseType: !916, size: 4096, align: 128, offset: 25472)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4096, elements: !917)
!917 = !{!197, !197}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !889, file: !38, line: 652, baseType: !919, size: 576, align: 128, offset: 29568)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 576, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 9)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !889, file: !38, line: 653, baseType: !923, size: 1024, align: 128, offset: 30208)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !924)
!924 = !{!582}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !889, file: !38, line: 656, baseType: !663, size: 192, offset: 31232)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !889, file: !38, line: 658, baseType: !663, size: 192, offset: 31424)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !889, file: !38, line: 661, baseType: !663, size: 192, offset: 31616)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !889, file: !38, line: 664, baseType: !250, size: 64, offset: 31808)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !889, file: !38, line: 665, baseType: !930, size: 24576, offset: 31872)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 24576, elements: !931)
!931 = !{!108, !582, !489}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !889, file: !38, line: 666, baseType: !933, size: 2048, offset: 56448)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !924)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !889, file: !38, line: 667, baseType: !935, size: 2048, offset: 58496)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 2048, elements: !554)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !889, file: !38, line: 670, baseType: !655, size: 96, offset: 60544)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !807, file: !38, line: 704, baseType: !938, size: 6144, offset: 69248)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !38, line: 674, size: 6144, elements: !939)
!939 = !{!940, !944, !948, !951, !954, !956, !957, !960, !962, !963, !964, !965, !966, !967}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !938, file: !38, line: 677, baseType: !941, size: 320, align: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 320, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 40)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !938, file: !38, line: 680, baseType: !945, size: 384, align: 128, offset: 384)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 384, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 48)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !938, file: !38, line: 683, baseType: !949, size: 640, align: 32, offset: 768)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 640, elements: !950)
!950 = !{!108, !943}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !938, file: !38, line: 686, baseType: !952, size: 2560, align: 128, offset: 1408)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 2560, elements: !953)
!953 = !{!108, !943, !108}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !938, file: !38, line: 687, baseType: !955, size: 1280, align: 64, offset: 3968)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1280, elements: !953)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !938, file: !38, line: 690, baseType: !941, size: 320, align: 32, offset: 5248)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !938, file: !38, line: 692, baseType: !958, size: 256, align: 32, offset: 5568)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 256, elements: !959)
!959 = !{!108, !121, !108}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !938, file: !38, line: 693, baseType: !961, size: 64, align: 32, offset: 5824)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 64, elements: !798)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !938, file: !38, line: 694, baseType: !152, size: 32, offset: 5888)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !938, file: !38, line: 695, baseType: !687, size: 32, align: 32, offset: 5920)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !938, file: !38, line: 698, baseType: !152, size: 32, offset: 5952)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !938, file: !38, line: 699, baseType: !152, size: 32, offset: 5984)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !938, file: !38, line: 702, baseType: !152, size: 32, offset: 6016)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !938, file: !38, line: 703, baseType: !152, size: 32, offset: 6048)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !807, file: !38, line: 707, baseType: !152, size: 32, offset: 75392)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !807, file: !38, line: 708, baseType: !152, size: 32, offset: 75424)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !807, file: !38, line: 709, baseType: !152, size: 32, offset: 75456)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !807, file: !38, line: 710, baseType: !152, size: 32, offset: 75488)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !807, file: !38, line: 711, baseType: !152, size: 32, offset: 75520)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !807, file: !38, line: 712, baseType: !152, size: 32, offset: 75552)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !807, file: !38, line: 713, baseType: !152, size: 32, offset: 75584)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !807, file: !38, line: 714, baseType: !152, size: 32, offset: 75616)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !807, file: !38, line: 717, baseType: !977, size: 128, offset: 75648)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !978)
!978 = !{!108, !108}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !807, file: !38, line: 718, baseType: !152, size: 32, offset: 75776)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !807, file: !38, line: 719, baseType: !152, size: 32, offset: 75808)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !807, file: !38, line: 722, baseType: !982, size: 4096, offset: 75840)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4096, elements: !983)
!983 = !{!108, !582, !121}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !807, file: !38, line: 723, baseType: !985, size: 64, offset: 79936)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 64, elements: !120)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !807, file: !38, line: 724, baseType: !988, size: 2048, offset: 80000)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 2048, elements: !983)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !807, file: !38, line: 725, baseType: !990, size: 64, offset: 82048)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 32, elements: !120)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !807, file: !38, line: 728, baseType: !993, size: 144, offset: 82112)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 144, elements: !712)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !807, file: !38, line: 729, baseType: !152, size: 32, offset: 82272)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !807, file: !38, line: 730, baseType: !996, size: 272, offset: 82304)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 272, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 34)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !144, file: !38, line: 735, baseType: !1000, size: 64, offset: 213632)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !38, line: 379, baseType: !1002)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !38, line: 379, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !144, file: !38, line: 793, baseType: !1004, size: 29504, offset: 213696)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !38, line: 738, size: 29504, elements: !1005)
!1005 = !{!1006, !1033, !1037, !1039, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1051, !1053, !1054, !1057, !1059, !1061, !1062, !1063}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1004, file: !38, line: 764, baseType: !1007, size: 5632)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !38, line: 741, size: 5632, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1014, !1015, !1016, !1017, !1018, !1020, !1023, !1025, !1029, !1030, !1032}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1007, file: !38, line: 744, baseType: !152, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1007, file: !38, line: 746, baseType: !152, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1007, file: !38, line: 748, baseType: !152, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1007, file: !38, line: 750, baseType: !1013, size: 608, offset: 96)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 608, elements: !783)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1007, file: !38, line: 751, baseType: !152, size: 32, offset: 704)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1007, file: !38, line: 752, baseType: !152, size: 32, offset: 736)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1007, file: !38, line: 753, baseType: !152, size: 32, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1007, file: !38, line: 754, baseType: !250, size: 64, offset: 800)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1007, file: !38, line: 755, baseType: !1019, size: 2048, offset: 864)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !871)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1007, file: !38, line: 756, baseType: !1021, size: 544, offset: 2912)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 544, elements: !1022)
!1022 = !{!692}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1007, file: !38, line: 757, baseType: !1024, size: 192, offset: 3456)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !488)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1007, file: !38, line: 758, baseType: !1026, size: 1664, offset: 3648)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1664, elements: !1027)
!1027 = !{!121, !1028}
!1028 = !DISubrange(count: 13)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1007, file: !38, line: 760, baseType: !250, size: 64, offset: 5312)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1007, file: !38, line: 762, baseType: !1031, size: 192, offset: 5376)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 192, elements: !656)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1007, file: !38, line: 763, baseType: !735, size: 64, offset: 5568)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1004, file: !38, line: 769, baseType: !1034, size: 160, offset: 5632)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 160, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 5)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1004, file: !38, line: 770, baseType: !1038, size: 320, offset: 5824)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 320, elements: !1035)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1004, file: !38, line: 771, baseType: !1040, size: 320, offset: 6144)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 320, elements: !1035)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1004, file: !38, line: 772, baseType: !1021, size: 544, offset: 6464)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1004, file: !38, line: 774, baseType: !1038, size: 320, offset: 7040)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1004, file: !38, line: 775, baseType: !1040, size: 320, offset: 7360)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1004, file: !38, line: 776, baseType: !1040, size: 320, offset: 7680)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1004, file: !38, line: 777, baseType: !1040, size: 320, offset: 8000)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1004, file: !38, line: 778, baseType: !1040, size: 320, offset: 8320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1004, file: !38, line: 779, baseType: !1040, size: 320, offset: 8640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1004, file: !38, line: 781, baseType: !1049, size: 6080, offset: 8960)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 6080, elements: !1050)
!1050 = !{!1036, !784}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1004, file: !38, line: 782, baseType: !1052, size: 2176, offset: 15040)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 2176, elements: !691)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1004, file: !38, line: 783, baseType: !773, size: 128, offset: 17216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1004, file: !38, line: 784, baseType: !1055, size: 8192, offset: 17344)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 8192, elements: !1056)
!1056 = !{!108, !108, !582}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1004, file: !38, line: 785, baseType: !1058, size: 384, offset: 25536)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 384, elements: !488)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1004, file: !38, line: 786, baseType: !1060, size: 3328, offset: 25920)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 3328, elements: !1027)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1004, file: !38, line: 788, baseType: !250, size: 64, offset: 29248)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1004, file: !38, line: 789, baseType: !250, size: 64, offset: 29312)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1004, file: !38, line: 791, baseType: !655, size: 96, offset: 29376)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !144, file: !38, line: 795, baseType: !1065, size: 4096, align: 128, offset: 243200)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 4096, elements: !1066)
!1066 = !{!108, !204}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !144, file: !38, line: 796, baseType: !1068, size: 2048, align: 128, offset: 247296)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2048, elements: !1066)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !144, file: !38, line: 797, baseType: !128, size: 64, offset: 249344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !144, file: !38, line: 800, baseType: !210, size: 64, offset: 249408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !144, file: !38, line: 801, baseType: !1072, size: 384, offset: 249472)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !1073)
!1073 = !{!108, !583}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !144, file: !38, line: 802, baseType: !1075, size: 128, offset: 249856)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 128, elements: !107)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !1078)
!1078 = !{!108, !121, !121}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !144, file: !38, line: 805, baseType: !1080, size: 448, offset: 249984)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 448, elements: !1085)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !74, line: 27, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !338}
!1085 = !{!1086}
!1086 = !DISubrange(count: 7)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !144, file: !38, line: 806, baseType: !1080, size: 448, offset: 250432)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !144, file: !38, line: 807, baseType: !1089, size: 768, offset: 250880)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 768, elements: !1094)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !74, line: 28, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !338, !338}
!1094 = !{!1095}
!1095 = !DISubrange(count: 12)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !144, file: !38, line: 808, baseType: !1097, size: 768, offset: 251648)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 768, elements: !1094)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !144, file: !38, line: 809, baseType: !1099, size: 64, offset: 252416)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !74, line: 29, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !338, !338, !152, !152}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !144, file: !38, line: 811, baseType: !1104, size: 8448, offset: 252480)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1105, line: 110, baseType: !1106)
!1105 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 63, size: 8448, elements: !1107)
!1107 = !{!1108, !1114, !1115, !1116, !1117, !1119, !1120, !1121, !1122, !1128, !1134, !1135, !1139, !1144, !1145, !1151, !1155, !1156, !1157, !1158, !1159, !1164, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1106, file: !1105, line: 65, baseType: !1109, size: 448)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 448, elements: !1085)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1105, line: 26, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!152, !338, !152, !338, !152}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1106, file: !1105, line: 66, baseType: !1109, size: 448, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1106, file: !1105, line: 67, baseType: !1109, size: 448, offset: 896)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1106, file: !1105, line: 68, baseType: !1109, size: 448, offset: 1344)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1106, file: !1105, line: 69, baseType: !1118, size: 256, offset: 1792)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !120)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1106, file: !1105, line: 70, baseType: !1109, size: 448, offset: 2048)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1106, file: !1105, line: 71, baseType: !1109, size: 448, offset: 2496)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1106, file: !1105, line: 72, baseType: !1109, size: 448, offset: 2944)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1106, file: !1105, line: 73, baseType: !1123, size: 448, offset: 3392)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 448, elements: !1085)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1105, line: 27, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !338, !338, !338, !338, !152, !699}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1106, file: !1105, line: 74, baseType: !1129, size: 448, offset: 3840)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 448, elements: !1085)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1105, line: 28, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !338, !338, !338, !338, !338, !152, !699}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1106, file: !1105, line: 75, baseType: !1109, size: 448, offset: 4288)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1106, file: !1105, line: 76, baseType: !1136, size: 64, offset: 4736)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!152, !338, !152, !338, !152, !699}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1106, file: !1105, line: 78, baseType: !1140, size: 256, offset: 4800)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 256, elements: !120)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!89, !338, !152}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1106, file: !1105, line: 79, baseType: !1140, size: 256, offset: 5056)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1106, file: !1105, line: 81, baseType: !1146, size: 64, offset: 5312)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !486, !152, !486, !152, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !120)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1106, file: !1105, line: 83, baseType: !1152, size: 64, offset: 5376)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!246, !1149, !1149, !152}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1106, file: !1105, line: 86, baseType: !1123, size: 448, offset: 5440)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1106, file: !1105, line: 87, baseType: !1129, size: 448, offset: 5888)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1106, file: !1105, line: 88, baseType: !1123, size: 448, offset: 6336)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1106, file: !1105, line: 89, baseType: !1129, size: 448, offset: 6784)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1106, file: !1105, line: 93, baseType: !1160, size: 448, offset: 7232)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 448, elements: !1085)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!152, !699, !516, !152, !516, !853, !152, !152}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1106, file: !1105, line: 98, baseType: !1165, size: 64, offset: 7680)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !338, !338, !699}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1106, file: !1105, line: 99, baseType: !1165, size: 64, offset: 7744)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1106, file: !1105, line: 100, baseType: !1165, size: 64, offset: 7808)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1106, file: !1105, line: 101, baseType: !1165, size: 64, offset: 7872)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1106, file: !1105, line: 102, baseType: !1165, size: 64, offset: 7936)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1106, file: !1105, line: 103, baseType: !1165, size: 64, offset: 8000)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1106, file: !1105, line: 104, baseType: !1165, size: 64, offset: 8064)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1106, file: !1105, line: 105, baseType: !1165, size: 64, offset: 8128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1106, file: !1105, line: 106, baseType: !1165, size: 64, offset: 8192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1106, file: !1105, line: 107, baseType: !1165, size: 64, offset: 8256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1106, file: !1105, line: 108, baseType: !1165, size: 64, offset: 8320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1106, file: !1105, line: 109, baseType: !1165, size: 64, offset: 8384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !144, file: !38, line: 812, baseType: !1180, size: 2368, offset: 260928)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !558, line: 111, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 58, size: 2368, elements: !1182)
!1182 = !{!1183, !1190, !1194, !1198, !1205, !1210, !1211, !1215, !1219, !1220, !1224, !1232, !1236, !1240, !1241, !1245, !1249, !1253, !1254, !1255, !1256, !1261}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1181, file: !558, line: 60, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !338, !152, !1187, !152, !152, !152, !152, !152, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1181, file: !558, line: 65, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!338, !338, !699, !1187, !152, !152, !152, !152, !152, !1188}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1181, file: !558, line: 71, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !338, !152, !338, !152, !152, !152, !152, !152}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1181, file: !558, line: 75, baseType: !1199, size: 640, offset: 192)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 640, elements: !1203)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !338, !152, !338, !152, !338, !152, !152}
!1203 = !{!1204}
!1204 = !DISubrange(count: 10)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1181, file: !558, line: 78, baseType: !1206, size: 448, offset: 832)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 448, elements: !1085)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !338, !152, !338, !152, !152}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1181, file: !558, line: 79, baseType: !1207, size: 64, offset: 1280)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1181, file: !558, line: 81, baseType: !1212, size: 64, offset: 1344)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !338, !152, !338, !152, !152, !152}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1181, file: !558, line: 84, baseType: !1216, size: 64, offset: 1408)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !338, !338, !338, !338, !152, !152, !152, !853}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1181, file: !558, line: 88, baseType: !1207, size: 64, offset: 1472)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1181, file: !558, line: 91, baseType: !1221, size: 64, offset: 1536)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !338, !152, !152}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1181, file: !558, line: 93, baseType: !1225, size: 64, offset: 1600)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!210, !210, !1228, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1231, line: 18, baseType: !93)
!1231 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1181, file: !558, line: 94, baseType: !1233, size: 64, offset: 1664)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !210, !152}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1181, file: !558, line: 97, baseType: !1237, size: 64, offset: 1728)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !516, !338, !152}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1181, file: !558, line: 98, baseType: !1237, size: 64, offset: 1792)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1181, file: !558, line: 99, baseType: !1242, size: 64, offset: 1856)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !516, !516, !152}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1181, file: !558, line: 100, baseType: !1246, size: 64, offset: 1920)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !516, !152}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1181, file: !558, line: 102, baseType: !1250, size: 64, offset: 1984)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !338, !338, !338, !338, !338, !152, !152, !152, !152}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1181, file: !558, line: 104, baseType: !574, size: 64, offset: 2048)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1181, file: !558, line: 105, baseType: !574, size: 64, offset: 2112)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1181, file: !558, line: 106, baseType: !574, size: 64, offset: 2176)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1181, file: !558, line: 107, baseType: !1257, size: 64, offset: 2240)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !141, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1181, file: !558, line: 109, baseType: !1262, size: 64, offset: 2304)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !699, !516, !516, !516, !516, !152}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !144, file: !38, line: 813, baseType: !1266, size: 960, offset: 263296)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1267, line: 115, baseType: !1268)
!1267 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 89, size: 960, elements: !1269)
!1269 = !{!1270, !1274, !1278, !1283, !1284, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1300, !1304, !1308}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1268, file: !1267, line: 94, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !853, !338, !338}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1268, file: !1267, line: 95, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !338, !853}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1268, file: !1267, line: 97, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1282, !338, !338}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1268, file: !1267, line: 98, baseType: !1271, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1268, file: !1267, line: 99, baseType: !1285, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !338, !1282}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1268, file: !1267, line: 100, baseType: !1275, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1268, file: !1267, line: 102, baseType: !1279, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1268, file: !1267, line: 103, baseType: !1285, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1268, file: !1267, line: 104, baseType: !1275, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1268, file: !1267, line: 106, baseType: !1271, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1268, file: !1267, line: 107, baseType: !1275, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1268, file: !1267, line: 109, baseType: !1295, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298, !338, !338}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 1024, elements: !203)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1268, file: !1267, line: 110, baseType: !1301, size: 64, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !338, !1298}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1268, file: !1267, line: 112, baseType: !1305, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !853}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1268, file: !1267, line: 113, baseType: !1305, size: 64, offset: 896)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !144, file: !38, line: 814, baseType: !1310, size: 384, offset: 264256)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1267, line: 126, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 117, size: 384, elements: !1312)
!1312 = !{!1313, !1317, !1318, !1322, !1323, !1327}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1311, file: !1267, line: 119, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !853, !853}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1311, file: !1267, line: 120, baseType: !1314, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1311, file: !1267, line: 121, baseType: !1319, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!152, !853, !486, !338}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1311, file: !1267, line: 122, baseType: !1319, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1311, file: !1267, line: 123, baseType: !1324, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!152, !853, !486, !338, !853}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1311, file: !1267, line: 124, baseType: !1328, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !853, !853, !338}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !144, file: !38, line: 815, baseType: !1332, size: 1408, offset: 264640)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1333, line: 44, baseType: !1334)
!1333 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 26, size: 1408, elements: !1335)
!1335 = !{!1336, !1340, !1341, !1345, !1346, !1350, !1354, !1355, !1360, !1364, !1365, !1366, !1368}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1334, file: !1333, line: 28, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!152, !853, !516, !516}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1334, file: !1333, line: 29, baseType: !1337, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1334, file: !1333, line: 30, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!152, !853, !152, !152}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1334, file: !1333, line: 31, baseType: !1342, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1334, file: !1333, line: 33, baseType: !1347, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !853, !500, !152}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1334, file: !1333, line: 34, baseType: !1351, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !853, !496, !152}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1334, file: !1333, line: 35, baseType: !1351, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1334, file: !1333, line: 37, baseType: !1356, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !853, !1359, !516, !152}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1334, file: !1333, line: 39, baseType: !1361, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!152, !853}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1334, file: !1333, line: 40, baseType: !1361, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1334, file: !1333, line: 41, baseType: !1361, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1334, file: !1333, line: 42, baseType: !1367, size: 384, offset: 704)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 384, elements: !488)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1334, file: !1333, line: 43, baseType: !1369, size: 320, offset: 1088)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 320, elements: !1035)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!152, !853, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !343, line: 63, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 58, size: 416, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1375, file: !343, line: 60, baseType: !152, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1375, file: !343, line: 61, baseType: !795, size: 256, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1375, file: !343, line: 62, baseType: !195, size: 128, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !144, file: !38, line: 816, baseType: !1381, size: 576, offset: 266048)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !624, line: 170, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 161, size: 576, elements: !1383)
!1383 = !{!1384, !1390, !1391, !1397, !1398}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1382, file: !624, line: 163, baseType: !1385, size: 128)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 128, elements: !107)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !624, line: 159, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !338, !152, !152, !152, !679}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1382, file: !624, line: 164, baseType: !1385, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1382, file: !624, line: 165, baseType: !1392, size: 128, offset: 256)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 128, elements: !107)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !624, line: 160, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !338, !152, !152, !152}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1382, file: !624, line: 166, baseType: !1392, size: 128, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1382, file: !624, line: 167, baseType: !1399, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !338, !1402, !1403, !1406, !152, !152}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 1280, elements: !1405)
!1405 = !{!943, !108}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1408)
!1408 = !{!121, !121}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !144, file: !38, line: 821, baseType: !1410, size: 64, offset: 266624)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !38, line: 377, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !38, line: 366, size: 960, elements: !1413)
!1413 = !{!1414, !1416, !1417, !1418, !1419, !1420, !1421, !1431, !1432}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1412, file: !38, line: 368, baseType: !1415, size: 8)
!1415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1412, file: !38, line: 369, baseType: !104, size: 8, offset: 8)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1412, file: !38, line: 370, baseType: !104, size: 8, offset: 16)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1412, file: !38, line: 371, baseType: !152, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1412, file: !38, line: 372, baseType: !152, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1412, file: !38, line: 373, baseType: !622, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1412, file: !38, line: 374, baseType: !1422, size: 256, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !624, line: 157, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 149, size: 256, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1423, file: !624, line: 151, baseType: !621, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1423, file: !624, line: 152, baseType: !152, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1423, file: !624, line: 153, baseType: !152, size: 32, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1423, file: !624, line: 154, baseType: !152, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1423, file: !624, line: 155, baseType: !152, size: 32, offset: 160)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1423, file: !624, line: 156, baseType: !152, size: 32, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1412, file: !38, line: 375, baseType: !1422, size: 256, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1412, file: !38, line: 376, baseType: !1422, size: 256, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1434 = !{!1435, !1436, !1437, !1439, !1442, !1445, !1449}
!1435 = !DILocalVariable(name: "h", arg: 1, scope: !138, file: !3, line: 70, type: !141)
!1436 = !DILocalVariable(name: "cb", arg: 2, scope: !138, file: !3, line: 70, type: !1433)
!1437 = !DILocalVariable(name: "i_mb_type", scope: !138, file: !3, line: 72, type: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1439 = !DILocalVariable(name: "ctx", scope: !1440, file: !3, line: 82, type: !152)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 81, column: 5)
!1441 = distinct !DILexicalBlock(scope: !138, file: !3, line: 80, column: 9)
!1442 = !DILocalVariable(name: "ctx", scope: !1443, file: !3, line: 116, type: !152)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 115, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 90, column: 14)
!1445 = !DILocalVariable(name: "idx", scope: !1446, file: !3, line: 164, type: !1438)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 150, column: 9)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 137, column: 18)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 129, column: 13)
!1449 = !DILocalVariable(name: "bits", scope: !1446, file: !3, line: 165, type: !152)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 216, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 27)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode16x16_fix", scope: !2, file: !74, line: 59, type: !1455, isLocal: true, isDefinition: true)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 56, elements: !1085)
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !38, line: 125, type: !1458, isLocal: true, isDefinition: true)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1438, size: 864, elements: !1451)
!1459 = !DIGlobalVariableExpression(var: !1460, expr: !DIExpression())
!1460 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !2, file: !74, line: 42, type: !1455, isLocal: true, isDefinition: true)
!1461 = !DIGlobalVariableExpression(var: !1462, expr: !DIExpression())
!1462 = distinct !DIGlobalVariable(name: "ctxes", scope: !1463, file: !3, line: 390, type: !1485, isLocal: true, isDefinition: true)
!1463 = distinct !DISubprogram(name: "x264_cabac_mb_mvd_cpn", scope: !3, file: !3, line: 354, type: !1464, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1464 = !DISubroutineType(cc: DW_CC_nocall, types: !1465)
!1465 = !{!152, !141, !1433, !152, !152, !152, !152, !152}
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1482}
!1467 = !DILocalVariable(name: "h", arg: 1, scope: !1463, file: !3, line: 354, type: !141)
!1468 = !DILocalVariable(name: "cb", arg: 2, scope: !1463, file: !3, line: 354, type: !1433)
!1469 = !DILocalVariable(name: "i_list", arg: 3, scope: !1463, file: !3, line: 354, type: !152)
!1470 = !DILocalVariable(name: "idx", arg: 4, scope: !1463, file: !3, line: 354, type: !152)
!1471 = !DILocalVariable(name: "l", arg: 5, scope: !1463, file: !3, line: 354, type: !152)
!1472 = !DILocalVariable(name: "mvd", arg: 6, scope: !1463, file: !3, line: 354, type: !152)
!1473 = !DILocalVariable(name: "ctx", arg: 7, scope: !1463, file: !3, line: 354, type: !152)
!1474 = !DILocalVariable(name: "i_abs", scope: !1463, file: !3, line: 356, type: !1438)
!1475 = !DILocalVariable(name: "ctxbase", scope: !1463, file: !3, line: 357, type: !1438)
!1476 = !DILocalVariable(name: "i", scope: !1477, file: !3, line: 399, type: !152)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 399, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 398, column: 9)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 397, column: 13)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 395, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 392, column: 9)
!1482 = !DILocalVariable(name: "i", scope: !1483, file: !3, line: 405, type: !152)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 405, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 404, column: 9)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 64, elements: !133)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !6, line: 200, type: !1488, isLocal: true, isDefinition: true)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 128, elements: !196)
!1489 = !DIGlobalVariableExpression(var: !1490, expr: !DIExpression())
!1490 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !6, line: 204, type: !1488, isLocal: true, isDefinition: true)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(name: "x264_mb_partition_listX_table", scope: !2, file: !6, line: 145, type: !1493, isLocal: true, isDefinition: true)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 272, elements: !691)
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(name: "x264_mb_type_list_table", scope: !2, file: !6, line: 99, type: !1496, isLocal: true, isDefinition: true)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 608, elements: !1497)
!1497 = !{!784, !108, !108}
!1498 = !DIGlobalVariableExpression(var: !1499, expr: !DIExpression())
!1499 = distinct !DIGlobalVariable(name: "partition_tab", scope: !1500, file: !6, line: 398, type: !1505, isLocal: true, isDefinition: true)
!1500 = distinct !DISubprogram(name: "x264_mb_transform_8x8_allowed", scope: !6, file: !6, line: 393, type: !1501, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!152, !141}
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "h", arg: 1, scope: !1500, file: !6, line: 393, type: !141)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 152, elements: !783)
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(name: "significant_coeff_flag_offset", scope: !2, file: !3, line: 514, type: !1508, isLocal: true, isDefinition: true)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 192, elements: !1510)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1510 = !{!108, !489}
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(name: "last_coeff_flag_offset", scope: !2, file: !3, line: 518, type: !1508, isLocal: true, isDefinition: true)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(name: "coeff_abs_level_m1_offset", scope: !2, file: !3, line: 522, type: !1515, isLocal: true, isDefinition: true)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 96, elements: !488)
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(name: "significant_coeff_flag_offset_8x8", scope: !2, file: !3, line: 524, type: !1518, isLocal: true, isDefinition: true)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 1008, elements: !1519)
!1519 = !{!108, !1520}
!1520 = !DISubrange(count: 63)
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "last_coeff_flag_offset_8x8", scope: !2, file: !3, line: 536, type: !1523, isLocal: true, isDefinition: true)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 504, elements: !1524)
!1524 = !{!1520}
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(name: "count_cat_m1", scope: !2, file: !3, line: 555, type: !1527, isLocal: true, isDefinition: true)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 40, elements: !1035)
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(name: "coeff_abs_level1_ctx", scope: !2, file: !3, line: 546, type: !1485, isLocal: true, isDefinition: true)
!1530 = !DIGlobalVariableExpression(var: !1531, expr: !DIExpression())
!1531 = distinct !DIGlobalVariable(name: "coeff_abs_levelgt1_ctx", scope: !2, file: !3, line: 548, type: !1485, isLocal: true, isDefinition: true)
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "coeff_abs_level_transition", scope: !2, file: !3, line: 549, type: !1534, isLocal: true, isDefinition: true)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 128, elements: !1535)
!1535 = !{!108, !134}
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 104, elements: !1538)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!1538 = !{!1028}
!1539 = !{i32 7, !"Dwarf Version", i32 5}
!1540 = !{i32 2, !"Debug Info Version", i32 3}
!1541 = !{i32 1, !"wchar_size", i32 4}
!1542 = !{i32 8, !"PIC Level", i32 2}
!1543 = !{i32 7, !"PIE Level", i32 2}
!1544 = !{i32 7, !"uwtable", i32 2}
!1545 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1546 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1547 = distinct !DISubprogram(name: "x264_cabac_mb_skip", scope: !3, file: !3, line: 282, type: !1548, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !141, !152}
!1550 = !{!1551, !1552, !1553}
!1551 = !DILocalVariable(name: "h", arg: 1, scope: !1547, file: !3, line: 282, type: !141)
!1552 = !DILocalVariable(name: "b_skip", arg: 2, scope: !1547, file: !3, line: 282, type: !152)
!1553 = !DILocalVariable(name: "ctx", scope: !1547, file: !3, line: 284, type: !152)
!1554 = !DILocation(line: 0, scope: !1547)
!1555 = !DILocation(line: 284, column: 23, scope: !1547)
!1556 = !DILocation(line: 284, column: 35, scope: !1547)
!1557 = !DILocation(line: 284, column: 46, scope: !1547)
!1558 = !DILocation(line: 284, column: 50, scope: !1547)
!1559 = !DILocation(line: 285, column: 35, scope: !1547)
!1560 = !DILocation(line: 285, column: 45, scope: !1547)
!1561 = !DILocation(line: 285, column: 49, scope: !1547)
!1562 = !DILocation(line: 285, column: 13, scope: !1547)
!1563 = !DILocation(line: 286, column: 22, scope: !1547)
!1564 = !DILocation(line: 286, column: 29, scope: !1547)
!1565 = !DILocation(line: 286, column: 16, scope: !1547)
!1566 = !DILocation(line: 286, column: 13, scope: !1547)
!1567 = !DILocation(line: 287, column: 37, scope: !1547)
!1568 = !DILocation(line: 287, column: 5, scope: !1547)
!1569 = !DILocation(line: 288, column: 1, scope: !1547)
!1570 = !DISubprogram(name: "x264_cabac_encode_decision_c", scope: !602, file: !602, line: 56, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1433, !152, !152}
!1573 = distinct !DISubprogram(name: "x264_macroblock_write_cabac", scope: !3, file: !3, line: 755, type: !139, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1585, !1587, !1592, !1594, !1597, !1598, !1604, !1608, !1610, !1613, !1615, !1619, !1621, !1625, !1628, !1631, !1633, !1637, !1639, !1643, !1648, !1656, !1661, !1664, !1668, !1671, !1674, !1678, !1681, !1684, !1688, !1691, !1695, !1699, !1701, !1704}
!1575 = !DILocalVariable(name: "h", arg: 1, scope: !1573, file: !3, line: 755, type: !141)
!1576 = !DILocalVariable(name: "cb", arg: 2, scope: !1573, file: !3, line: 755, type: !1433)
!1577 = !DILocalVariable(name: "i_mb_type", scope: !1573, file: !3, line: 757, type: !1438)
!1578 = !DILocalVariable(name: "i_list", scope: !1573, file: !3, line: 758, type: !152)
!1579 = !DILocalVariable(name: "i_mb_pos_start", scope: !1573, file: !3, line: 761, type: !1438)
!1580 = !DILocalVariable(name: "i_mb_pos_tex", scope: !1573, file: !3, line: 762, type: !152)
!1581 = !DILocalVariable(name: "i", scope: !1582, file: !3, line: 776, type: !152)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 776, column: 9)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 770, column: 5)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 769, column: 9)
!1585 = !DILocalVariable(name: "i", scope: !1586, file: !3, line: 779, type: !152)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 779, column: 9)
!1587 = !DILocalVariable(name: "di", scope: !1588, file: !3, line: 797, type: !152)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 796, column: 9)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 795, column: 13)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 791, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 790, column: 9)
!1592 = !DILocalVariable(name: "i", scope: !1593, file: !3, line: 798, type: !152)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 798, column: 13)
!1594 = !DILocalVariable(name: "i_pred", scope: !1595, file: !3, line: 800, type: !1438)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 799, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 798, column: 13)
!1597 = !DILocalVariable(name: "i_mode", scope: !1595, file: !3, line: 801, type: !1438)
!1598 = !DILocalVariable(name: "mvd", scope: !1599, file: !3, line: 816, type: !99)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 816, column: 13)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 811, column: 9)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 810, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 809, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 808, column: 14)
!1604 = !DILocalVariable(name: "mvd", scope: !1605, file: !3, line: 825, type: !99)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 825, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 819, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 818, column: 18)
!1608 = !DILocalVariable(name: "mvd", scope: !1609, file: !3, line: 826, type: !99)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 826, column: 13)
!1610 = !DILocalVariable(name: "mvd", scope: !1611, file: !3, line: 835, type: !99)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 835, column: 13)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 829, column: 9)
!1613 = !DILocalVariable(name: "mvd", scope: !1614, file: !3, line: 836, type: !99)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 836, column: 13)
!1615 = !DILocalVariable(name: "i", scope: !1616, file: !3, line: 842, type: !152)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 842, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 840, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 839, column: 14)
!1619 = !DILocalVariable(name: "i", scope: !1620, file: !3, line: 854, type: !152)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 854, column: 9)
!1621 = !DILocalVariable(name: "i", scope: !1622, file: !3, line: 860, type: !152)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 860, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 858, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 857, column: 14)
!1625 = !DILocalVariable(name: "i", scope: !1626, file: !3, line: 865, type: !152)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 865, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 864, column: 13)
!1628 = !DILocalVariable(name: "i", scope: !1629, file: !3, line: 870, type: !152)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 870, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 869, column: 13)
!1631 = !DILocalVariable(name: "i", scope: !1632, file: !3, line: 874, type: !152)
!1632 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 874, column: 9)
!1633 = !DILocalVariable(name: "mvd", scope: !1634, file: !3, line: 876, type: !99)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 876, column: 17)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 875, column: 17)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 874, column: 9)
!1637 = !DILocalVariable(name: "i", scope: !1638, file: !3, line: 878, type: !152)
!1638 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 878, column: 9)
!1639 = !DILocalVariable(name: "mvd", scope: !1640, file: !3, line: 880, type: !99)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 880, column: 17)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 879, column: 17)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 878, column: 9)
!1643 = !DILocalVariable(name: "b_list", scope: !1644, file: !3, line: 885, type: !1646)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 883, column: 5)
!1645 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 882, column: 14)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 16, elements: !107)
!1648 = !DILocalVariable(name: "mvd", scope: !1649, file: !3, line: 904, type: !99)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 904, column: 41)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 904, column: 21)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 903, column: 13)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 902, column: 17)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 901, column: 9)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 900, column: 9)
!1655 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 900, column: 9)
!1656 = !DILocalVariable(name: "mvd", scope: !1657, file: !3, line: 908, type: !99)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 908, column: 41)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 908, column: 21)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 907, column: 13)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 906, column: 22)
!1661 = !DILocalVariable(name: "mvd", scope: !1662, file: !3, line: 909, type: !99)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 909, column: 41)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 909, column: 21)
!1664 = !DILocalVariable(name: "mvd", scope: !1665, file: !3, line: 913, type: !99)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 913, column: 41)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 913, column: 21)
!1667 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 912, column: 13)
!1668 = !DILocalVariable(name: "mvd", scope: !1669, file: !3, line: 914, type: !99)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 914, column: 41)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 914, column: 21)
!1671 = !DILocalVariable(name: "b_intra", scope: !1672, file: !3, line: 937, type: !1438)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 936, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 935, column: 9)
!1674 = !DILocalVariable(name: "ctxidxinc", scope: !1675, file: !3, line: 944, type: !152)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 944, column: 13)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 942, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 941, column: 13)
!1678 = !DILocalVariable(name: "i", scope: !1679, file: !3, line: 948, type: !152)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 948, column: 17)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 947, column: 17)
!1681 = !DILocalVariable(name: "ctxidxinc", scope: !1682, file: !3, line: 949, type: !152)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 949, column: 21)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 948, column: 17)
!1684 = !DILocalVariable(name: "i", scope: !1685, file: !3, line: 953, type: !152)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 953, column: 13)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 952, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 951, column: 18)
!1688 = !DILocalVariable(name: "i", scope: !1689, file: !3, line: 959, type: !152)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 959, column: 13)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 958, column: 9)
!1691 = !DILocalVariable(name: "ctxidxinc", scope: !1692, file: !3, line: 961, type: !152)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 961, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 960, column: 21)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 959, column: 13)
!1695 = !DILocalVariable(name: "ctxidxinc", scope: !1696, file: !3, line: 966, type: !152)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 966, column: 13)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 965, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 964, column: 13)
!1699 = !DILocalVariable(name: "ctxidxinc", scope: !1700, file: !3, line: 967, type: !152)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 967, column: 13)
!1701 = !DILocalVariable(name: "i", scope: !1702, file: !3, line: 969, type: !152)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 969, column: 17)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 968, column: 17)
!1704 = !DILocalVariable(name: "ctxidxinc", scope: !1705, file: !3, line: 970, type: !152)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 970, column: 21)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 969, column: 17)
!1707 = distinct !DIAssignID()
!1708 = distinct !DIAssignID()
!1709 = distinct !DIAssignID()
!1710 = distinct !DIAssignID()
!1711 = distinct !DIAssignID()
!1712 = distinct !DIAssignID()
!1713 = distinct !DIAssignID()
!1714 = distinct !DIAssignID()
!1715 = distinct !DIAssignID()
!1716 = distinct !DIAssignID()
!1717 = distinct !DIAssignID()
!1718 = distinct !DIAssignID()
!1719 = distinct !DIAssignID()
!1720 = distinct !DIAssignID()
!1721 = distinct !DIAssignID()
!1722 = distinct !DIAssignID()
!1723 = !DILocation(line: 0, scope: !1573)
!1724 = !DILocation(line: 757, column: 33, scope: !1573)
!1725 = !DILocalVariable(name: "cb", arg: 1, scope: !1726, file: !602, line: 76, type: !1433)
!1726 = distinct !DISubprogram(name: "x264_cabac_pos", scope: !602, file: !602, line: 76, type: !1727, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!152, !1433}
!1729 = !{!1725}
!1730 = !DILocation(line: 0, scope: !1726, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 761, column: 32, scope: !1573)
!1732 = !DILocation(line: 78, column: 17, scope: !1726, inlinedAt: !1731)
!1733 = !DILocation(line: 78, column: 25, scope: !1726, inlinedAt: !1731)
!1734 = !DILocation(line: 78, column: 19, scope: !1726, inlinedAt: !1731)
!1735 = !DILocation(line: 78, column: 39, scope: !1726, inlinedAt: !1731)
!1736 = !DILocation(line: 78, column: 70, scope: !1726, inlinedAt: !1731)
!1737 = !DILocation(line: 78, column: 12, scope: !1726, inlinedAt: !1731)
!1738 = !DILocation(line: 0, scope: !138, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 766, column: 5, scope: !1573)
!1740 = !DILocation(line: 74, column: 15, scope: !1741, inlinedAt: !1739)
!1741 = distinct !DILexicalBlock(scope: !138, file: !3, line: 74, column: 9)
!1742 = !DILocation(line: 74, column: 9, scope: !1741, inlinedAt: !1739)
!1743 = !DILocation(line: 74, column: 23, scope: !1741, inlinedAt: !1739)
!1744 = !DILocation(line: 75, column: 18, scope: !1741, inlinedAt: !1739)
!1745 = !DILocation(line: 75, column: 25, scope: !1741, inlinedAt: !1739)
!1746 = !DILocation(line: 75, column: 30, scope: !1741, inlinedAt: !1739)
!1747 = !DILocation(line: 75, column: 33, scope: !1741, inlinedAt: !1739)
!1748 = !DILocation(line: 77, column: 63, scope: !1749, inlinedAt: !1739)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 76, column: 5)
!1750 = !DILocation(line: 77, column: 49, scope: !1749, inlinedAt: !1739)
!1751 = !DILocation(line: 77, column: 93, scope: !1749, inlinedAt: !1739)
!1752 = !DILocation(line: 77, column: 9, scope: !1749, inlinedAt: !1739)
!1753 = !DILocation(line: 78, column: 5, scope: !1749, inlinedAt: !1739)
!1754 = !DILocation(line: 80, column: 15, scope: !1441, inlinedAt: !1739)
!1755 = !DILocation(line: 80, column: 9, scope: !138, inlinedAt: !1739)
!1756 = !DILocation(line: 0, scope: !1440, inlinedAt: !1739)
!1757 = !DILocation(line: 83, column: 20, scope: !1758, inlinedAt: !1739)
!1758 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 83, column: 13)
!1759 = !DILocation(line: 83, column: 32, scope: !1758, inlinedAt: !1739)
!1760 = !DILocation(line: 83, column: 43, scope: !1758, inlinedAt: !1739)
!1761 = !DILocation(line: 83, column: 52, scope: !1758, inlinedAt: !1739)
!1762 = !DILocation(line: 83, column: 67, scope: !1758, inlinedAt: !1739)
!1763 = !DILocation(line: 83, column: 13, scope: !1440, inlinedAt: !1739)
!1764 = !DILocation(line: 85, column: 32, scope: !1765, inlinedAt: !1739)
!1765 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 85, column: 13)
!1766 = !DILocation(line: 85, column: 42, scope: !1765, inlinedAt: !1739)
!1767 = !DILocation(line: 85, column: 51, scope: !1765, inlinedAt: !1739)
!1768 = !DILocation(line: 85, column: 65, scope: !1765, inlinedAt: !1739)
!1769 = !DILocation(line: 85, column: 13, scope: !1440, inlinedAt: !1739)
!1770 = !DILocation(line: 88, column: 54, scope: !1440, inlinedAt: !1739)
!1771 = !DILocation(line: 88, column: 9, scope: !1440, inlinedAt: !1739)
!1772 = !DILocation(line: 89, column: 5, scope: !1440, inlinedAt: !1739)
!1773 = !DILocation(line: 93, column: 13, scope: !1774, inlinedAt: !1739)
!1774 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 91, column: 5)
!1775 = !DILocation(line: 95, column: 13, scope: !1776, inlinedAt: !1739)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 94, column: 9)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 93, column: 13)
!1778 = !DILocation(line: 96, column: 60, scope: !1776, inlinedAt: !1739)
!1779 = !DILocation(line: 96, column: 72, scope: !1776, inlinedAt: !1739)
!1780 = !DILocation(line: 96, column: 13, scope: !1776, inlinedAt: !1739)
!1781 = !DILocation(line: 97, column: 60, scope: !1776, inlinedAt: !1739)
!1782 = !DILocation(line: 97, column: 72, scope: !1776, inlinedAt: !1739)
!1783 = !DILocation(line: 97, column: 52, scope: !1776, inlinedAt: !1739)
!1784 = !DILocation(line: 97, column: 103, scope: !1776, inlinedAt: !1739)
!1785 = !DILocation(line: 97, column: 13, scope: !1776, inlinedAt: !1739)
!1786 = !DILocation(line: 808, column: 14, scope: !1591)
!1787 = !DILocation(line: 101, column: 13, scope: !1788, inlinedAt: !1739)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 100, column: 9)
!1789 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 99, column: 18)
!1790 = !DILocation(line: 102, column: 13, scope: !1788, inlinedAt: !1739)
!1791 = !DILocation(line: 103, column: 13, scope: !1788, inlinedAt: !1739)
!1792 = !DILocation(line: 108, column: 13, scope: !1793, inlinedAt: !1739)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 106, column: 9)
!1794 = !DILocation(line: 111, column: 13, scope: !1793, inlinedAt: !1739)
!1795 = !DILocation(line: 0, scope: !1443, inlinedAt: !1739)
!1796 = !DILocation(line: 117, column: 20, scope: !1797, inlinedAt: !1739)
!1797 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 117, column: 13)
!1798 = !DILocation(line: 117, column: 32, scope: !1797, inlinedAt: !1739)
!1799 = !DILocation(line: 117, column: 43, scope: !1797, inlinedAt: !1739)
!1800 = !DILocation(line: 117, column: 52, scope: !1797, inlinedAt: !1739)
!1801 = !DILocation(line: 117, column: 77, scope: !1797, inlinedAt: !1739)
!1802 = !DILocation(line: 119, column: 32, scope: !1803, inlinedAt: !1739)
!1803 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 119, column: 13)
!1804 = !DILocation(line: 119, column: 42, scope: !1803, inlinedAt: !1739)
!1805 = !DILocation(line: 119, column: 51, scope: !1803, inlinedAt: !1739)
!1806 = !DILocation(line: 119, column: 75, scope: !1803, inlinedAt: !1739)
!1807 = !DILocation(line: 120, column: 16, scope: !1803, inlinedAt: !1739)
!1808 = !DILocation(line: 120, column: 13, scope: !1803, inlinedAt: !1739)
!1809 = !DILocation(line: 122, column: 23, scope: !1810, inlinedAt: !1739)
!1810 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 122, column: 13)
!1811 = !DILocation(line: 122, column: 13, scope: !1443, inlinedAt: !1739)
!1812 = !DILocation(line: 124, column: 13, scope: !1813, inlinedAt: !1739)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 123, column: 9)
!1814 = !DILocation(line: 127, column: 9, scope: !1443, inlinedAt: !1739)
!1815 = !DILocation(line: 129, column: 23, scope: !1448, inlinedAt: !1739)
!1816 = !DILocation(line: 129, column: 13, scope: !1443, inlinedAt: !1739)
!1817 = !DILocation(line: 131, column: 13, scope: !1818, inlinedAt: !1739)
!1818 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 130, column: 9)
!1819 = !DILocation(line: 132, column: 13, scope: !1818, inlinedAt: !1739)
!1820 = !DILocation(line: 133, column: 13, scope: !1818, inlinedAt: !1739)
!1821 = !DILocation(line: 134, column: 13, scope: !1818, inlinedAt: !1739)
!1822 = !DILocation(line: 135, column: 13, scope: !1818, inlinedAt: !1739)
!1823 = !DILocation(line: 137, column: 18, scope: !1447, inlinedAt: !1739)
!1824 = !DILocation(line: 140, column: 13, scope: !1825, inlinedAt: !1739)
!1825 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 138, column: 9)
!1826 = !DILocation(line: 141, column: 13, scope: !1825, inlinedAt: !1739)
!1827 = !DILocation(line: 142, column: 13, scope: !1825, inlinedAt: !1739)
!1828 = !DILocation(line: 143, column: 13, scope: !1825, inlinedAt: !1739)
!1829 = !DILocation(line: 144, column: 13, scope: !1825, inlinedAt: !1739)
!1830 = !DILocation(line: 147, column: 13, scope: !1825, inlinedAt: !1739)
!1831 = !DILocation(line: 148, column: 9, scope: !1825, inlinedAt: !1739)
!1832 = !DILocation(line: 164, column: 51, scope: !1446, inlinedAt: !1739)
!1833 = !DILocation(line: 164, column: 64, scope: !1446, inlinedAt: !1739)
!1834 = !DILocation(line: 164, column: 55, scope: !1446, inlinedAt: !1739)
!1835 = !DILocation(line: 0, scope: !1446, inlinedAt: !1739)
!1836 = !DILocation(line: 165, column: 24, scope: !1446, inlinedAt: !1739)
!1837 = !DILocation(line: 167, column: 60, scope: !1446, inlinedAt: !1739)
!1838 = !DILocation(line: 167, column: 13, scope: !1446, inlinedAt: !1739)
!1839 = !DILocation(line: 168, column: 49, scope: !1446, inlinedAt: !1739)
!1840 = !DILocation(line: 168, column: 65, scope: !1446, inlinedAt: !1739)
!1841 = !DILocation(line: 168, column: 69, scope: !1446, inlinedAt: !1739)
!1842 = !DILocation(line: 168, column: 13, scope: !1446, inlinedAt: !1739)
!1843 = !DILocation(line: 168, column: 80, scope: !1446, inlinedAt: !1739)
!1844 = !DILocation(line: 169, column: 22, scope: !1845, inlinedAt: !1739)
!1845 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 169, column: 17)
!1846 = !DILocation(line: 169, column: 17, scope: !1446, inlinedAt: !1739)
!1847 = !DILocation(line: 171, column: 59, scope: !1848, inlinedAt: !1739)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 170, column: 13)
!1849 = !DILocation(line: 171, column: 17, scope: !1848, inlinedAt: !1739)
!1850 = !DILocation(line: 171, column: 70, scope: !1848, inlinedAt: !1739)
!1851 = !DILocation(line: 172, column: 59, scope: !1848, inlinedAt: !1739)
!1852 = !DILocation(line: 172, column: 17, scope: !1848, inlinedAt: !1739)
!1853 = !DILocation(line: 172, column: 70, scope: !1848, inlinedAt: !1739)
!1854 = !DILocation(line: 173, column: 59, scope: !1848, inlinedAt: !1739)
!1855 = !DILocation(line: 173, column: 17, scope: !1848, inlinedAt: !1739)
!1856 = !DILocation(line: 173, column: 70, scope: !1848, inlinedAt: !1739)
!1857 = !DILocation(line: 174, column: 26, scope: !1858, inlinedAt: !1739)
!1858 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 174, column: 21)
!1859 = !DILocation(line: 174, column: 21, scope: !1848, inlinedAt: !1739)
!1860 = !DILocation(line: 175, column: 68, scope: !1858, inlinedAt: !1739)
!1861 = !DILocation(line: 175, column: 21, scope: !1858, inlinedAt: !1739)
!1862 = !DILocation(line: 769, column: 19, scope: !1584)
!1863 = !DILocation(line: 769, column: 9, scope: !1573)
!1864 = !DILocation(line: 0, scope: !1726, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 771, column: 24, scope: !1583)
!1866 = !DILocation(line: 78, column: 17, scope: !1726, inlinedAt: !1865)
!1867 = !DILocation(line: 78, column: 25, scope: !1726, inlinedAt: !1865)
!1868 = !DILocation(line: 78, column: 19, scope: !1726, inlinedAt: !1865)
!1869 = !DILocation(line: 78, column: 39, scope: !1726, inlinedAt: !1865)
!1870 = !DILocation(line: 78, column: 70, scope: !1726, inlinedAt: !1865)
!1871 = !DILocation(line: 78, column: 12, scope: !1726, inlinedAt: !1865)
!1872 = !DILocation(line: 772, column: 12, scope: !1583)
!1873 = !DILocation(line: 772, column: 33, scope: !1583)
!1874 = !DILocation(line: 772, column: 49, scope: !1583)
!1875 = !DILocation(line: 774, column: 21, scope: !1583)
!1876 = !DILocation(line: 774, column: 34, scope: !1583)
!1877 = !DILocation(line: 774, column: 24, scope: !1583)
!1878 = !DILocation(line: 774, column: 9, scope: !1583)
!1879 = !DILocation(line: 775, column: 15, scope: !1583)
!1880 = !DILocation(line: 0, scope: !1582)
!1881 = !DILocation(line: 777, column: 34, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 776, column: 9)
!1883 = !DILocation(line: 777, column: 13, scope: !1882)
!1884 = !DILocation(line: 777, column: 25, scope: !1882)
!1885 = !DILocation(line: 777, column: 27, scope: !1882)
!1886 = !DILocation(line: 777, column: 54, scope: !1882)
!1887 = !DILocation(line: 778, column: 15, scope: !1583)
!1888 = !DILocation(line: 0, scope: !1586)
!1889 = !DILocation(line: 780, column: 34, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 779, column: 9)
!1891 = !DILocation(line: 780, column: 13, scope: !1890)
!1892 = !DILocation(line: 780, column: 25, scope: !1890)
!1893 = !DILocation(line: 780, column: 27, scope: !1890)
!1894 = !DILocation(line: 780, column: 54, scope: !1890)
!1895 = !DILocation(line: 781, column: 15, scope: !1583)
!1896 = !DILocation(line: 783, column: 9, scope: !1583)
!1897 = !DILocation(line: 0, scope: !1726, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 785, column: 37, scope: !1583)
!1899 = !DILocation(line: 786, column: 9, scope: !1583)
!1900 = !DILocation(line: 790, column: 9, scope: !1591)
!1901 = !DILocation(line: 792, column: 16, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 792, column: 13)
!1903 = !DILocation(line: 792, column: 21, scope: !1902)
!1904 = !DILocation(line: 792, column: 13, scope: !1902)
!1905 = !DILocation(line: 792, column: 42, scope: !1902)
!1906 = !DILocation(line: 793, column: 13, scope: !1902)
!1907 = !DILocalVariable(name: "h", arg: 1, scope: !1908, file: !3, line: 328, type: !141)
!1908 = distinct !DISubprogram(name: "x264_cabac_mb_transform_size", scope: !3, file: !3, line: 328, type: !139, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1909 = !{!1907, !1910, !1911}
!1910 = !DILocalVariable(name: "cb", arg: 2, scope: !1908, file: !3, line: 328, type: !1433)
!1911 = !DILocalVariable(name: "ctx", scope: !1908, file: !3, line: 330, type: !152)
!1912 = !DILocation(line: 0, scope: !1908, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 793, column: 13, scope: !1902)
!1914 = !DILocation(line: 330, column: 19, scope: !1908, inlinedAt: !1913)
!1915 = !DILocation(line: 331, column: 5, scope: !1908, inlinedAt: !1913)
!1916 = !DILocation(line: 795, column: 13, scope: !1590)
!1917 = !DILocation(line: 797, column: 28, scope: !1588)
!1918 = !DILocation(line: 797, column: 22, scope: !1588)
!1919 = !DILocation(line: 0, scope: !1588)
!1920 = !DILocation(line: 0, scope: !1593)
!1921 = !DILocation(line: 798, column: 13, scope: !1593)
!1922 = !DILocalVariable(name: "h", arg: 1, scope: !1923, file: !6, line: 366, type: !141)
!1923 = distinct !DISubprogram(name: "x264_mb_predict_intra4x4_mode", scope: !6, file: !6, line: 366, type: !1924, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!152, !141, !152}
!1926 = !{!1922, !1927, !1928, !1929, !1930}
!1927 = !DILocalVariable(name: "idx", arg: 2, scope: !1923, file: !6, line: 366, type: !152)
!1928 = !DILocalVariable(name: "ma", scope: !1923, file: !6, line: 368, type: !1438)
!1929 = !DILocalVariable(name: "mb", scope: !1923, file: !6, line: 369, type: !1438)
!1930 = !DILocalVariable(name: "m", scope: !1923, file: !6, line: 370, type: !1438)
!1931 = !DILocation(line: 0, scope: !1923, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 800, column: 36, scope: !1595)
!1933 = !DILocation(line: 368, column: 51, scope: !1923, inlinedAt: !1932)
!1934 = !DILocation(line: 368, column: 67, scope: !1923, inlinedAt: !1932)
!1935 = !DILocation(line: 368, column: 20, scope: !1923, inlinedAt: !1932)
!1936 = !DILocation(line: 369, column: 67, scope: !1923, inlinedAt: !1932)
!1937 = !DILocation(line: 369, column: 20, scope: !1923, inlinedAt: !1932)
!1938 = !DILocation(line: 370, column: 20, scope: !1923, inlinedAt: !1932)
!1939 = !DILocation(line: 373, column: 11, scope: !1940, inlinedAt: !1932)
!1940 = distinct !DILexicalBlock(scope: !1923, file: !6, line: 373, column: 9)
!1941 = !DILocation(line: 373, column: 9, scope: !1923, inlinedAt: !1932)
!1942 = !DILocation(line: 0, scope: !1595)
!1943 = !DILocation(line: 801, column: 36, scope: !1595)
!1944 = !DILocalVariable(name: "cb", arg: 1, scope: !1945, file: !3, line: 181, type: !1433)
!1945 = distinct !DISubprogram(name: "x264_cabac_mb_intra4x4_pred_mode", scope: !3, file: !3, line: 181, type: !1571, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1946 = !{!1944, !1947, !1948}
!1947 = !DILocalVariable(name: "i_pred", arg: 2, scope: !1945, file: !3, line: 181, type: !152)
!1948 = !DILocalVariable(name: "i_mode", arg: 3, scope: !1945, file: !3, line: 181, type: !152)
!1949 = !DILocation(line: 0, scope: !1945, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 802, column: 17, scope: !1595)
!1951 = !DILocation(line: 183, column: 16, scope: !1952, inlinedAt: !1950)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 183, column: 9)
!1953 = !DILocation(line: 183, column: 9, scope: !1945, inlinedAt: !1950)
!1954 = !DILocation(line: 184, column: 9, scope: !1952, inlinedAt: !1950)
!1955 = !DILocation(line: 187, column: 9, scope: !1956, inlinedAt: !1950)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 186, column: 5)
!1957 = !DILocation(line: 188, column: 20, scope: !1958, inlinedAt: !1950)
!1958 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 188, column: 13)
!1959 = !DILocation(line: 188, column: 13, scope: !1956, inlinedAt: !1950)
!1960 = !DILocation(line: 190, column: 58, scope: !1956, inlinedAt: !1950)
!1961 = !DILocation(line: 190, column: 9, scope: !1956, inlinedAt: !1950)
!1962 = !DILocation(line: 191, column: 53, scope: !1956, inlinedAt: !1950)
!1963 = !DILocation(line: 191, column: 58, scope: !1956, inlinedAt: !1950)
!1964 = !DILocation(line: 191, column: 9, scope: !1956, inlinedAt: !1950)
!1965 = !DILocation(line: 192, column: 53, scope: !1956, inlinedAt: !1950)
!1966 = !DILocation(line: 192, column: 9, scope: !1956, inlinedAt: !1950)
!1967 = !DILocation(line: 798, column: 39, scope: !1596)
!1968 = !DILocation(line: 798, column: 31, scope: !1596)
!1969 = distinct !{!1969, !1921, !1970}
!1970 = !DILocation(line: 803, column: 13, scope: !1593)
!1971 = !DILocalVariable(name: "h", arg: 1, scope: !1972, file: !3, line: 196, type: !141)
!1972 = distinct !DISubprogram(name: "x264_cabac_mb_intra_chroma_pred_mode", scope: !3, file: !3, line: 196, type: !139, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1973 = !{!1971, !1974, !1975, !1976}
!1974 = !DILocalVariable(name: "cb", arg: 2, scope: !1972, file: !3, line: 196, type: !1433)
!1975 = !DILocalVariable(name: "i_mode", scope: !1972, file: !3, line: 198, type: !1438)
!1976 = !DILocalVariable(name: "ctx", scope: !1972, file: !3, line: 199, type: !152)
!1977 = !DILocation(line: 0, scope: !1972, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 806, column: 9, scope: !1590)
!1979 = !DILocation(line: 198, column: 56, scope: !1972, inlinedAt: !1978)
!1980 = !DILocation(line: 198, column: 24, scope: !1972, inlinedAt: !1978)
!1981 = !DILocation(line: 202, column: 16, scope: !1982, inlinedAt: !1978)
!1982 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 202, column: 9)
!1983 = !DILocation(line: 202, column: 28, scope: !1982, inlinedAt: !1978)
!1984 = !DILocation(line: 202, column: 39, scope: !1982, inlinedAt: !1978)
!1985 = !DILocation(line: 202, column: 48, scope: !1982, inlinedAt: !1978)
!1986 = !DILocation(line: 202, column: 71, scope: !1982, inlinedAt: !1978)
!1987 = !DILocation(line: 202, column: 42, scope: !1982, inlinedAt: !1978)
!1988 = !DILocation(line: 202, column: 85, scope: !1982, inlinedAt: !1978)
!1989 = !DILocation(line: 202, column: 9, scope: !1972, inlinedAt: !1978)
!1990 = !DILocation(line: 204, column: 28, scope: !1991, inlinedAt: !1978)
!1991 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 204, column: 9)
!1992 = !DILocation(line: 204, column: 38, scope: !1991, inlinedAt: !1978)
!1993 = !DILocation(line: 204, column: 47, scope: !1991, inlinedAt: !1978)
!1994 = !DILocation(line: 204, column: 70, scope: !1991, inlinedAt: !1978)
!1995 = !DILocation(line: 204, column: 41, scope: !1991, inlinedAt: !1978)
!1996 = !DILocation(line: 204, column: 83, scope: !1991, inlinedAt: !1978)
!1997 = !DILocation(line: 204, column: 9, scope: !1972, inlinedAt: !1978)
!1998 = !DILocation(line: 207, column: 45, scope: !1972, inlinedAt: !1978)
!1999 = !DILocation(line: 207, column: 59, scope: !1972, inlinedAt: !1978)
!2000 = !DILocation(line: 207, column: 5, scope: !1972, inlinedAt: !1978)
!2001 = !DILocation(line: 208, column: 9, scope: !1972, inlinedAt: !1978)
!2002 = !DILocation(line: 210, column: 56, scope: !2003, inlinedAt: !1978)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 209, column: 5)
!2004 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 208, column: 9)
!2005 = !DILocation(line: 210, column: 9, scope: !2003, inlinedAt: !1978)
!2006 = !DILocation(line: 211, column: 13, scope: !2003, inlinedAt: !1978)
!2007 = !DILocation(line: 212, column: 65, scope: !2008, inlinedAt: !1978)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 211, column: 13)
!2009 = !DILocation(line: 212, column: 13, scope: !2008, inlinedAt: !1978)
!2010 = !DILocation(line: 0, scope: !1622)
!2011 = !DILocation(line: 861, column: 48, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 860, column: 9)
!2013 = !DILocalVariable(name: "cb", arg: 1, scope: !2014, file: !3, line: 308, type: !1433)
!2014 = distinct !DISubprogram(name: "x264_cabac_mb_sub_b_partition", scope: !3, file: !3, line: 308, type: !2015, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1433, !152}
!2017 = !{!2013, !2018}
!2018 = !DILocalVariable(name: "i_sub", arg: 2, scope: !2014, file: !3, line: 308, type: !152)
!2019 = !DILocation(line: 0, scope: !2014, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 861, column: 13, scope: !2012)
!2021 = !DILocation(line: 310, column: 15, scope: !2022, inlinedAt: !2020)
!2022 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 310, column: 9)
!2023 = !DILocation(line: 310, column: 9, scope: !2014, inlinedAt: !2020)
!2024 = !DILocation(line: 0, scope: !1616)
!2025 = !DILocation(line: 843, column: 48, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 842, column: 9)
!2027 = !DILocalVariable(name: "cb", arg: 1, scope: !2028, file: !3, line: 291, type: !1433)
!2028 = distinct !DISubprogram(name: "x264_cabac_mb_sub_p_partition", scope: !3, file: !3, line: 291, type: !2015, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2029 = !{!2027, !2030}
!2030 = !DILocalVariable(name: "i_sub", arg: 2, scope: !2028, file: !3, line: 291, type: !152)
!2031 = !DILocation(line: 0, scope: !2028, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 843, column: 13, scope: !2026)
!2033 = !DILocation(line: 293, column: 15, scope: !2034, inlinedAt: !2032)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 293, column: 9)
!2035 = !DILocation(line: 293, column: 9, scope: !2028, inlinedAt: !2032)
!2036 = !DILocation(line: 810, column: 19, scope: !1601)
!2037 = !DILocation(line: 0, scope: !1601)
!2038 = !DILocation(line: 810, column: 13, scope: !1602)
!2039 = !DILocation(line: 812, column: 17, scope: !1600)
!2040 = !DILocation(line: 814, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 813, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 812, column: 17)
!2043 = !DILocation(line: 815, column: 13, scope: !2041)
!2044 = !DILocation(line: 816, column: 13, scope: !1599)
!2045 = !DILocation(line: 0, scope: !1599)
!2046 = !DILocalVariable(name: "h", arg: 1, scope: !2047, file: !2048, line: 118, type: !141)
!2047 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd", scope: !2048, file: !2048, line: 118, type: !2049, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2048 = !DIFile(filename: "x264_src/common/rectangle.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !141, !152, !152, !152, !152, !152, !99}
!2051 = !{!2046, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2052 = !DILocalVariable(name: "x", arg: 2, scope: !2047, file: !2048, line: 118, type: !152)
!2053 = !DILocalVariable(name: "y", arg: 3, scope: !2047, file: !2048, line: 118, type: !152)
!2054 = !DILocalVariable(name: "width", arg: 4, scope: !2047, file: !2048, line: 118, type: !152)
!2055 = !DILocalVariable(name: "height", arg: 5, scope: !2047, file: !2048, line: 118, type: !152)
!2056 = !DILocalVariable(name: "i_list", arg: 6, scope: !2047, file: !2048, line: 118, type: !152)
!2057 = !DILocalVariable(name: "mvd", arg: 7, scope: !2047, file: !2048, line: 118, type: !99)
!2058 = !DILocalVariable(name: "mvd_cache", scope: !2047, file: !2048, line: 120, type: !210)
!2059 = !DILocation(line: 0, scope: !2047, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 816, column: 13, scope: !1599)
!2061 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2060)
!2062 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2060)
!2063 = distinct !DILexicalBlock(scope: !2047, file: !2048, line: 121, column: 9)
!2064 = !DILocalVariable(name: "dst", arg: 1, scope: !2065, file: !2048, line: 22, type: !210)
!2065 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !2048, file: !2048, line: 22, type: !2066, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !210, !152, !152, !152, !114}
!2068 = !{!2064, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2069 = !DILocalVariable(name: "w", arg: 2, scope: !2065, file: !2048, line: 22, type: !152)
!2070 = !DILocalVariable(name: "h", arg: 3, scope: !2065, file: !2048, line: 22, type: !152)
!2071 = !DILocalVariable(name: "s", arg: 4, scope: !2065, file: !2048, line: 22, type: !152)
!2072 = !DILocalVariable(name: "v", arg: 5, scope: !2065, file: !2048, line: 22, type: !114)
!2073 = !DILocalVariable(name: "d", scope: !2065, file: !2048, line: 24, type: !338)
!2074 = !DILocalVariable(name: "v2", scope: !2065, file: !2048, line: 25, type: !99)
!2075 = !DILocalVariable(name: "v4", scope: !2065, file: !2048, line: 26, type: !114)
!2076 = !DILocalVariable(name: "v8", scope: !2065, file: !2048, line: 27, type: !89)
!2077 = !DILocation(line: 0, scope: !2065, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2060)
!2079 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !2078)
!2080 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !2078)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !2048, line: 51, column: 9)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !2048, line: 50, column: 13)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2048, line: 49, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2048, line: 48, column: 14)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !2048, line: 39, column: 14)
!2086 = distinct !DILexicalBlock(scope: !2065, file: !2048, line: 30, column: 9)
!2087 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !2078)
!2088 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !2078)
!2089 = !DILocation(line: 56, column: 13, scope: !2081, inlinedAt: !2078)
!2090 = !DILocation(line: 56, column: 26, scope: !2081, inlinedAt: !2078)
!2091 = !DILocation(line: 57, column: 13, scope: !2081, inlinedAt: !2078)
!2092 = !DILocation(line: 57, column: 26, scope: !2081, inlinedAt: !2078)
!2093 = !DILocation(line: 817, column: 9, scope: !1600)
!2094 = !DILocation(line: 820, column: 17, scope: !1606)
!2095 = !DILocation(line: 822, column: 17, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 821, column: 13)
!2097 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 820, column: 17)
!2098 = !DILocation(line: 823, column: 17, scope: !2096)
!2099 = !DILocation(line: 824, column: 13, scope: !2096)
!2100 = !DILocation(line: 825, column: 13, scope: !1605)
!2101 = !DILocation(line: 0, scope: !1605)
!2102 = !DILocation(line: 0, scope: !2047, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 825, column: 13, scope: !1605)
!2104 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2103)
!2105 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2103)
!2106 = !DILocation(line: 0, scope: !2065, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2103)
!2108 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !2107)
!2109 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !2107)
!2110 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !2107)
!2111 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !2107)
!2112 = !DILocation(line: 826, column: 13, scope: !1609)
!2113 = !DILocation(line: 0, scope: !1609)
!2114 = !DILocation(line: 0, scope: !2047, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 826, column: 13, scope: !1609)
!2116 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2115)
!2117 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2115)
!2118 = !DILocation(line: 0, scope: !2065, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2115)
!2120 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !2119)
!2121 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !2119)
!2122 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !2119)
!2123 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !2119)
!2124 = !DILocation(line: 827, column: 9, scope: !1606)
!2125 = !DILocation(line: 830, column: 17, scope: !1612)
!2126 = !DILocation(line: 832, column: 17, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 831, column: 13)
!2128 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 830, column: 17)
!2129 = !DILocation(line: 833, column: 17, scope: !2127)
!2130 = !DILocation(line: 834, column: 13, scope: !2127)
!2131 = !DILocation(line: 835, column: 13, scope: !1611)
!2132 = !DILocation(line: 0, scope: !1611)
!2133 = !DILocation(line: 0, scope: !2047, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 835, column: 13, scope: !1611)
!2135 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2134)
!2136 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2134)
!2137 = !DILocation(line: 0, scope: !2065, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2134)
!2139 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2138)
!2140 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2138)
!2141 = distinct !DILexicalBlock(scope: !2085, file: !2048, line: 40, column: 5)
!2142 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !2138)
!2143 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !2138)
!2144 = !DILocation(line: 45, column: 9, scope: !2141, inlinedAt: !2138)
!2145 = !DILocation(line: 45, column: 22, scope: !2141, inlinedAt: !2138)
!2146 = !DILocation(line: 46, column: 9, scope: !2141, inlinedAt: !2138)
!2147 = !DILocation(line: 46, column: 22, scope: !2141, inlinedAt: !2138)
!2148 = !DILocation(line: 836, column: 13, scope: !1614)
!2149 = !DILocation(line: 0, scope: !1614)
!2150 = !DILocation(line: 0, scope: !2047, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 836, column: 13, scope: !1614)
!2152 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2151)
!2153 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2151)
!2154 = !DILocation(line: 0, scope: !2065, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2151)
!2156 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2155)
!2157 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2155)
!2158 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !2155)
!2159 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !2155)
!2160 = !DILocation(line: 45, column: 9, scope: !2141, inlinedAt: !2155)
!2161 = !DILocation(line: 45, column: 22, scope: !2141, inlinedAt: !2155)
!2162 = !DILocation(line: 46, column: 9, scope: !2141, inlinedAt: !2155)
!2163 = !DILocation(line: 46, column: 22, scope: !2141, inlinedAt: !2155)
!2164 = !DILocation(line: 295, column: 9, scope: !2165, inlinedAt: !2032)
!2165 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 294, column: 5)
!2166 = !DILocation(line: 296, column: 9, scope: !2165, inlinedAt: !2032)
!2167 = !DILocation(line: 298, column: 5, scope: !2028, inlinedAt: !2032)
!2168 = !DILocation(line: 299, column: 15, scope: !2169, inlinedAt: !2032)
!2169 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 299, column: 9)
!2170 = !DILocation(line: 299, column: 9, scope: !2028, inlinedAt: !2032)
!2171 = !DILocation(line: 300, column: 9, scope: !2169, inlinedAt: !2032)
!2172 = !DILocation(line: 303, column: 9, scope: !2173, inlinedAt: !2032)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 302, column: 5)
!2174 = !DILocation(line: 304, column: 51, scope: !2173, inlinedAt: !2032)
!2175 = !DILocation(line: 304, column: 9, scope: !2173, inlinedAt: !2032)
!2176 = !DILocation(line: 846, column: 23, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 846, column: 13)
!2178 = !DILocation(line: 846, column: 13, scope: !2177)
!2179 = !DILocation(line: 846, column: 33, scope: !2177)
!2180 = !DILocation(line: 846, column: 13, scope: !1617)
!2181 = !DILocalVariable(name: "h", arg: 1, scope: !2182, file: !3, line: 334, type: !141)
!2182 = distinct !DISubprogram(name: "x264_cabac_mb_ref", scope: !3, file: !3, line: 334, type: !2183, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !141, !1433, !152, !152}
!2185 = !{!2181, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2186 = !DILocalVariable(name: "cb", arg: 2, scope: !2182, file: !3, line: 334, type: !1433)
!2187 = !DILocalVariable(name: "i_list", arg: 3, scope: !2182, file: !3, line: 334, type: !152)
!2188 = !DILocalVariable(name: "idx", arg: 4, scope: !2182, file: !3, line: 334, type: !152)
!2189 = !DILocalVariable(name: "i8", scope: !2182, file: !3, line: 336, type: !1438)
!2190 = !DILocalVariable(name: "i_refa", scope: !2182, file: !3, line: 337, type: !1438)
!2191 = !DILocalVariable(name: "i_refb", scope: !2182, file: !3, line: 338, type: !1438)
!2192 = !DILocalVariable(name: "ctx", scope: !2182, file: !3, line: 339, type: !152)
!2193 = !DILocalVariable(name: "i_ref", scope: !2194, file: !3, line: 346, type: !152)
!2194 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 346, column: 5)
!2195 = !DILocation(line: 0, scope: !2182, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 848, column: 13, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 847, column: 9)
!2198 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2196)
!2199 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2196)
!2200 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2196)
!2201 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 341, column: 9)
!2202 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2196)
!2203 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2196)
!2204 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2196)
!2205 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2196)
!2206 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 343, column: 9)
!2207 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2196)
!2208 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2196)
!2209 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2196)
!2210 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2196)
!2211 = !DILocation(line: 0, scope: !2194, inlinedAt: !2196)
!2212 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2196)
!2213 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 346, column: 5)
!2214 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2196)
!2215 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2196)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 347, column: 5)
!2217 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2196)
!2218 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2196)
!2219 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2196)
!2220 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2196)
!2221 = distinct !{!2221, !2214, !2222}
!2222 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2196)
!2223 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2196)
!2224 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2196)
!2225 = !DILocation(line: 0, scope: !2182, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 849, column: 13, scope: !2197)
!2227 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2226)
!2228 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2226)
!2229 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2226)
!2230 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2226)
!2231 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2226)
!2232 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2226)
!2233 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2226)
!2234 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2226)
!2235 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2226)
!2236 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2226)
!2237 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2226)
!2238 = !DILocation(line: 0, scope: !2194, inlinedAt: !2226)
!2239 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2226)
!2240 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2226)
!2241 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2226)
!2242 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2226)
!2243 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2226)
!2244 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2226)
!2245 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2226)
!2246 = distinct !{!2246, !2240, !2247}
!2247 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2226)
!2248 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2226)
!2249 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2226)
!2250 = !DILocation(line: 0, scope: !2182, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 850, column: 13, scope: !2197)
!2252 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2251)
!2253 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2251)
!2254 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2251)
!2255 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2251)
!2256 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2251)
!2257 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2251)
!2258 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2251)
!2259 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2251)
!2260 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2251)
!2261 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2251)
!2262 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2251)
!2263 = !DILocation(line: 0, scope: !2194, inlinedAt: !2251)
!2264 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2251)
!2265 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2251)
!2266 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2251)
!2267 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2251)
!2268 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2251)
!2269 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2251)
!2270 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2251)
!2271 = distinct !{!2271, !2265, !2272}
!2272 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2251)
!2273 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2251)
!2274 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2251)
!2275 = !DILocation(line: 0, scope: !2182, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 851, column: 13, scope: !2197)
!2277 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2276)
!2278 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2276)
!2279 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2276)
!2280 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2276)
!2281 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2276)
!2282 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2276)
!2283 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2276)
!2284 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2276)
!2285 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2276)
!2286 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2276)
!2287 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2276)
!2288 = !DILocation(line: 0, scope: !2194, inlinedAt: !2276)
!2289 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2276)
!2290 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2276)
!2291 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2276)
!2292 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2276)
!2293 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2276)
!2294 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2276)
!2295 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2276)
!2296 = distinct !{!2296, !2290, !2297}
!2297 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2276)
!2298 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2276)
!2299 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2276)
!2300 = !DILocation(line: 852, column: 9, scope: !2197)
!2301 = !DILocation(line: 0, scope: !1620)
!2302 = !DILocation(line: 854, column: 9, scope: !1620)
!2303 = !DILocalVariable(name: "h", arg: 1, scope: !2304, file: !3, line: 443, type: !141)
!2304 = distinct !DISubprogram(name: "x264_cabac_mb8x8_mvd", scope: !3, file: !3, line: 443, type: !2305, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !141, !1433, !152}
!2307 = !{!2303, !2308, !2309, !2310, !2313, !2315, !2317, !2319, !2321, !2323, !2325, !2327}
!2308 = !DILocalVariable(name: "cb", arg: 2, scope: !2304, file: !3, line: 443, type: !1433)
!2309 = !DILocalVariable(name: "i", arg: 3, scope: !2304, file: !3, line: 443, type: !152)
!2310 = !DILocalVariable(name: "mvd", scope: !2311, file: !3, line: 448, type: !99)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 448, column: 13)
!2312 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 446, column: 5)
!2313 = !DILocalVariable(name: "mvd", scope: !2314, file: !3, line: 451, type: !99)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 451, column: 13)
!2315 = !DILocalVariable(name: "mvd", scope: !2316, file: !3, line: 452, type: !99)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 452, column: 13)
!2317 = !DILocalVariable(name: "mvd", scope: !2318, file: !3, line: 455, type: !99)
!2318 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 455, column: 13)
!2319 = !DILocalVariable(name: "mvd", scope: !2320, file: !3, line: 456, type: !99)
!2320 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 456, column: 13)
!2321 = !DILocalVariable(name: "mvd", scope: !2322, file: !3, line: 459, type: !99)
!2322 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 459, column: 13)
!2323 = !DILocalVariable(name: "mvd", scope: !2324, file: !3, line: 460, type: !99)
!2324 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 460, column: 13)
!2325 = !DILocalVariable(name: "mvd", scope: !2326, file: !3, line: 461, type: !99)
!2326 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 461, column: 13)
!2327 = !DILocalVariable(name: "mvd", scope: !2328, file: !3, line: 462, type: !99)
!2328 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 462, column: 13)
!2329 = !DILocation(line: 0, scope: !2304, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 855, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 854, column: 9)
!2332 = !DILocation(line: 445, column: 13, scope: !2304, inlinedAt: !2330)
!2333 = !DILocation(line: 445, column: 5, scope: !2304, inlinedAt: !2330)
!2334 = !DILocation(line: 448, column: 13, scope: !2311, inlinedAt: !2330)
!2335 = !DILocalVariable(name: "mvp", scope: !2336, file: !3, line: 419, type: !687, align: 32)
!2336 = distinct !DISubprogram(name: "x264_cabac_mb_mvd", scope: !3, file: !3, line: 417, type: !2337, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!99, !141, !1433, !152, !152, !152}
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2335, !2345, !2346, !2347}
!2340 = !DILocalVariable(name: "h", arg: 1, scope: !2336, file: !3, line: 417, type: !141)
!2341 = !DILocalVariable(name: "cb", arg: 2, scope: !2336, file: !3, line: 417, type: !1433)
!2342 = !DILocalVariable(name: "i_list", arg: 3, scope: !2336, file: !3, line: 417, type: !152)
!2343 = !DILocalVariable(name: "idx", arg: 4, scope: !2336, file: !3, line: 417, type: !152)
!2344 = !DILocalVariable(name: "width", arg: 5, scope: !2336, file: !3, line: 417, type: !152)
!2345 = !DILocalVariable(name: "mdx", scope: !2336, file: !3, line: 420, type: !152)
!2346 = !DILocalVariable(name: "mdy", scope: !2336, file: !3, line: 420, type: !152)
!2347 = !DILocalVariable(name: "amvd", scope: !2336, file: !3, line: 426, type: !99)
!2348 = !DILocation(line: 0, scope: !2336, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 448, column: 13, scope: !2311, inlinedAt: !2330)
!2350 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2349)
!2351 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2349)
!2352 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2349)
!2353 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2349)
!2354 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2349)
!2355 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2349)
!2356 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2349)
!2357 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2349)
!2358 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2349)
!2359 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2349)
!2360 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2349)
!2361 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2349)
!2362 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2349)
!2363 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2349)
!2364 = !DILocalVariable(name: "mvdleft", arg: 1, scope: !2365, file: !38, line: 237, type: !338)
!2365 = distinct !DISubprogram(name: "x264_cabac_mvd_sum", scope: !38, file: !38, line: 237, type: !2366, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!99, !338, !338}
!2368 = !{!2364, !2369, !2370, !2371}
!2369 = !DILocalVariable(name: "mvdtop", arg: 2, scope: !2365, file: !38, line: 237, type: !338)
!2370 = !DILocalVariable(name: "amvd0", scope: !2365, file: !38, line: 239, type: !152)
!2371 = !DILocalVariable(name: "amvd1", scope: !2365, file: !38, line: 240, type: !152)
!2372 = !DILocation(line: 0, scope: !2365, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2349)
!2374 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2373)
!2375 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2373)
!2376 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2373)
!2377 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2373)
!2378 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2373)
!2379 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2373)
!2380 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2373)
!2381 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2373)
!2382 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2373)
!2383 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2373)
!2384 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2373)
!2385 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2373)
!2386 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2349)
!2387 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2349)
!2388 = !DILocalVariable(name: "a", arg: 1, scope: !2389, file: !6, line: 324, type: !152)
!2389 = distinct !DISubprogram(name: "pack8to16", scope: !6, file: !6, line: 324, type: !2390, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!114, !152, !152}
!2392 = !{!2388, !2393}
!2393 = !DILocalVariable(name: "b", arg: 2, scope: !2389, file: !6, line: 324, type: !152)
!2394 = !DILocation(line: 0, scope: !2389, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2349)
!2396 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2395)
!2397 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2395)
!2398 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2349)
!2399 = !DILocation(line: 0, scope: !2311, inlinedAt: !2330)
!2400 = !DILocation(line: 0, scope: !2047, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 448, column: 13, scope: !2311, inlinedAt: !2330)
!2402 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2401)
!2403 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2401)
!2404 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2401)
!2405 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2401)
!2406 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2401)
!2407 = !DILocation(line: 0, scope: !2065, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2401)
!2409 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2408)
!2410 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2408)
!2411 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !2408)
!2412 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !2408)
!2413 = !DILocation(line: 449, column: 13, scope: !2312, inlinedAt: !2330)
!2414 = !DILocation(line: 451, column: 13, scope: !2314, inlinedAt: !2330)
!2415 = !DILocation(line: 0, scope: !2336, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 451, column: 13, scope: !2314, inlinedAt: !2330)
!2417 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2416)
!2418 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2416)
!2419 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2416)
!2420 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2416)
!2421 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2416)
!2422 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2416)
!2423 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2416)
!2424 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2416)
!2425 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2416)
!2426 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2416)
!2427 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2416)
!2428 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2416)
!2429 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2416)
!2430 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2416)
!2431 = !DILocation(line: 0, scope: !2365, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2416)
!2433 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2432)
!2434 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2432)
!2435 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2432)
!2436 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2432)
!2437 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2432)
!2438 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2432)
!2439 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2432)
!2440 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2432)
!2441 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2432)
!2442 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2432)
!2443 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2432)
!2444 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2432)
!2445 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2416)
!2446 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2416)
!2447 = !DILocation(line: 0, scope: !2389, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2416)
!2449 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2448)
!2450 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2448)
!2451 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2416)
!2452 = !DILocation(line: 0, scope: !2314, inlinedAt: !2330)
!2453 = !DILocation(line: 0, scope: !2047, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 451, column: 13, scope: !2314, inlinedAt: !2330)
!2455 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2454)
!2456 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2454)
!2457 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2454)
!2458 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2454)
!2459 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2454)
!2460 = !DILocation(line: 0, scope: !2065, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2454)
!2462 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2461)
!2463 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2461)
!2464 = !DILocation(line: 452, column: 13, scope: !2316, inlinedAt: !2330)
!2465 = !DILocation(line: 0, scope: !2336, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 452, column: 13, scope: !2316, inlinedAt: !2330)
!2467 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2466)
!2468 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2466)
!2469 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2466)
!2470 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2466)
!2471 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2466)
!2472 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2466)
!2473 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2466)
!2474 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2466)
!2475 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2466)
!2476 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2466)
!2477 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2466)
!2478 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2466)
!2479 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2466)
!2480 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2466)
!2481 = !DILocation(line: 0, scope: !2365, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2466)
!2483 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2482)
!2484 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2482)
!2485 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2482)
!2486 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2482)
!2487 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2482)
!2488 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2482)
!2489 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2482)
!2490 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2482)
!2491 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2482)
!2492 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2482)
!2493 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2482)
!2494 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2482)
!2495 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2466)
!2496 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2466)
!2497 = !DILocation(line: 0, scope: !2389, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2466)
!2499 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2498)
!2500 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2498)
!2501 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2466)
!2502 = !DILocation(line: 0, scope: !2316, inlinedAt: !2330)
!2503 = !DILocation(line: 0, scope: !2047, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 452, column: 13, scope: !2316, inlinedAt: !2330)
!2505 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2504)
!2506 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2504)
!2507 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2504)
!2508 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2504)
!2509 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2504)
!2510 = !DILocation(line: 0, scope: !2065, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2504)
!2512 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2511)
!2513 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2511)
!2514 = !DILocation(line: 453, column: 13, scope: !2312, inlinedAt: !2330)
!2515 = !DILocation(line: 455, column: 13, scope: !2318, inlinedAt: !2330)
!2516 = !DILocation(line: 0, scope: !2336, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 455, column: 13, scope: !2318, inlinedAt: !2330)
!2518 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2517)
!2519 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2517)
!2520 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2517)
!2521 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2517)
!2522 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2517)
!2523 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2517)
!2524 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2517)
!2525 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2517)
!2526 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2517)
!2527 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2517)
!2528 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2517)
!2529 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2517)
!2530 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2517)
!2531 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2517)
!2532 = !DILocation(line: 0, scope: !2365, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2517)
!2534 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2533)
!2535 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2533)
!2536 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2533)
!2537 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2533)
!2538 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2533)
!2539 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2533)
!2540 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2533)
!2541 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2533)
!2542 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2533)
!2543 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2533)
!2544 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2533)
!2545 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2533)
!2546 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2517)
!2547 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2517)
!2548 = !DILocation(line: 0, scope: !2389, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2517)
!2550 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2549)
!2551 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2549)
!2552 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2517)
!2553 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2517)
!2554 = !DILocation(line: 0, scope: !2318, inlinedAt: !2330)
!2555 = !DILocation(line: 0, scope: !2047, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 455, column: 13, scope: !2318, inlinedAt: !2330)
!2557 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2556)
!2558 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2556)
!2559 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2556)
!2560 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2556)
!2561 = !DILocation(line: 0, scope: !2065, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2556)
!2563 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2562)
!2564 = distinct !DILexicalBlock(scope: !2086, file: !2048, line: 31, column: 5)
!2565 = !DILocation(line: 34, column: 9, scope: !2564, inlinedAt: !2562)
!2566 = !DILocation(line: 34, column: 22, scope: !2564, inlinedAt: !2562)
!2567 = !DILocation(line: 456, column: 13, scope: !2320, inlinedAt: !2330)
!2568 = !DILocation(line: 0, scope: !2336, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 456, column: 13, scope: !2320, inlinedAt: !2330)
!2570 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2569)
!2571 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2569)
!2572 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2569)
!2573 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2569)
!2574 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2569)
!2575 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2569)
!2576 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2569)
!2577 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2569)
!2578 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2569)
!2579 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2569)
!2580 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2569)
!2581 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2569)
!2582 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2569)
!2583 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2569)
!2584 = !DILocation(line: 0, scope: !2365, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2569)
!2586 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2585)
!2587 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2585)
!2588 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2585)
!2589 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2585)
!2590 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2585)
!2591 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2585)
!2592 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2585)
!2593 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2585)
!2594 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2585)
!2595 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2585)
!2596 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2585)
!2597 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2585)
!2598 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2569)
!2599 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2569)
!2600 = !DILocation(line: 0, scope: !2389, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2569)
!2602 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2601)
!2603 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2601)
!2604 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2569)
!2605 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2569)
!2606 = !DILocation(line: 0, scope: !2320, inlinedAt: !2330)
!2607 = !DILocation(line: 0, scope: !2047, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 456, column: 13, scope: !2320, inlinedAt: !2330)
!2609 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2608)
!2610 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2608)
!2611 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2608)
!2612 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2608)
!2613 = !DILocation(line: 0, scope: !2065, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2608)
!2615 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2614)
!2616 = !DILocation(line: 34, column: 9, scope: !2564, inlinedAt: !2614)
!2617 = !DILocation(line: 34, column: 22, scope: !2564, inlinedAt: !2614)
!2618 = !DILocation(line: 457, column: 13, scope: !2312, inlinedAt: !2330)
!2619 = !DILocation(line: 459, column: 13, scope: !2322, inlinedAt: !2330)
!2620 = !DILocation(line: 0, scope: !2336, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 459, column: 13, scope: !2322, inlinedAt: !2330)
!2622 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2621)
!2623 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2621)
!2624 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2621)
!2625 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2621)
!2626 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2621)
!2627 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2621)
!2628 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2621)
!2629 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2621)
!2630 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2621)
!2631 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2621)
!2632 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2621)
!2633 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2621)
!2634 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2621)
!2635 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2621)
!2636 = !DILocation(line: 0, scope: !2365, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2621)
!2638 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2637)
!2639 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2637)
!2640 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2637)
!2641 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2637)
!2642 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2637)
!2643 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2637)
!2644 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2637)
!2645 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2637)
!2646 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2637)
!2647 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2637)
!2648 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2637)
!2649 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2637)
!2650 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2621)
!2651 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2621)
!2652 = !DILocation(line: 0, scope: !2389, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2621)
!2654 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2653)
!2655 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2653)
!2656 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2621)
!2657 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2621)
!2658 = !DILocation(line: 0, scope: !2322, inlinedAt: !2330)
!2659 = !DILocation(line: 0, scope: !2047, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 459, column: 13, scope: !2322, inlinedAt: !2330)
!2661 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2660)
!2662 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2660)
!2663 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2660)
!2664 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2660)
!2665 = !DILocation(line: 0, scope: !2065, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2660)
!2667 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2666)
!2668 = !DILocation(line: 460, column: 13, scope: !2324, inlinedAt: !2330)
!2669 = !DILocation(line: 0, scope: !2336, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 460, column: 13, scope: !2324, inlinedAt: !2330)
!2671 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2670)
!2672 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2670)
!2673 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2670)
!2674 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2670)
!2675 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2670)
!2676 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2670)
!2677 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2670)
!2678 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2670)
!2679 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2670)
!2680 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2670)
!2681 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2670)
!2682 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2670)
!2683 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2670)
!2684 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2670)
!2685 = !DILocation(line: 0, scope: !2365, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2670)
!2687 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2686)
!2688 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2686)
!2689 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2686)
!2690 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2686)
!2691 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2686)
!2692 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2686)
!2693 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2686)
!2694 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2686)
!2695 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2686)
!2696 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2686)
!2697 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2686)
!2698 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2686)
!2699 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2670)
!2700 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2670)
!2701 = !DILocation(line: 0, scope: !2389, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2670)
!2703 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2702)
!2704 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2702)
!2705 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2670)
!2706 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2670)
!2707 = !DILocation(line: 0, scope: !2324, inlinedAt: !2330)
!2708 = !DILocation(line: 0, scope: !2047, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 460, column: 13, scope: !2324, inlinedAt: !2330)
!2710 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2709)
!2711 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2709)
!2712 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2709)
!2713 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2709)
!2714 = !DILocation(line: 0, scope: !2065, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2709)
!2716 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2715)
!2717 = !DILocation(line: 461, column: 13, scope: !2326, inlinedAt: !2330)
!2718 = !DILocation(line: 0, scope: !2336, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 461, column: 13, scope: !2326, inlinedAt: !2330)
!2720 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2719)
!2721 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2719)
!2722 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2719)
!2723 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2719)
!2724 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2719)
!2725 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2719)
!2726 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2719)
!2727 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2719)
!2728 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2719)
!2729 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2719)
!2730 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2719)
!2731 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2719)
!2732 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2719)
!2733 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2719)
!2734 = !DILocation(line: 0, scope: !2365, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2719)
!2736 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2735)
!2737 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2735)
!2738 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2735)
!2739 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2735)
!2740 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2735)
!2741 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2735)
!2742 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2735)
!2743 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2735)
!2744 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2735)
!2745 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2735)
!2746 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2735)
!2747 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2735)
!2748 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2719)
!2749 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2719)
!2750 = !DILocation(line: 0, scope: !2389, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2719)
!2752 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2751)
!2753 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2751)
!2754 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2719)
!2755 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2719)
!2756 = !DILocation(line: 0, scope: !2326, inlinedAt: !2330)
!2757 = !DILocation(line: 0, scope: !2047, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 461, column: 13, scope: !2326, inlinedAt: !2330)
!2759 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2758)
!2760 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2758)
!2761 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2758)
!2762 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2758)
!2763 = !DILocation(line: 0, scope: !2065, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2758)
!2765 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2764)
!2766 = !DILocation(line: 462, column: 13, scope: !2328, inlinedAt: !2330)
!2767 = !DILocation(line: 0, scope: !2336, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 462, column: 13, scope: !2328, inlinedAt: !2330)
!2769 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2768)
!2770 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2768)
!2771 = !DILocation(line: 424, column: 34, scope: !2336, inlinedAt: !2768)
!2772 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2768)
!2773 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2768)
!2774 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2768)
!2775 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2768)
!2776 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2768)
!2777 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2768)
!2778 = !DILocation(line: 426, column: 80, scope: !2336, inlinedAt: !2768)
!2779 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2768)
!2780 = !DILocation(line: 427, column: 80, scope: !2336, inlinedAt: !2768)
!2781 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2768)
!2782 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2768)
!2783 = !DILocation(line: 0, scope: !2365, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2768)
!2785 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2784)
!2786 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2784)
!2787 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2784)
!2788 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2784)
!2789 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2784)
!2790 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2784)
!2791 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2784)
!2792 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2784)
!2793 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2784)
!2794 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2784)
!2795 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2784)
!2796 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2784)
!2797 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2768)
!2798 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2768)
!2799 = !DILocation(line: 0, scope: !2389, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2768)
!2801 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2800)
!2802 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2800)
!2803 = !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2768)
!2804 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2768)
!2805 = !DILocation(line: 0, scope: !2328, inlinedAt: !2330)
!2806 = !DILocation(line: 0, scope: !2047, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 462, column: 13, scope: !2328, inlinedAt: !2330)
!2808 = !DILocation(line: 120, column: 60, scope: !2047, inlinedAt: !2807)
!2809 = !DILocation(line: 120, column: 64, scope: !2047, inlinedAt: !2807)
!2810 = !DILocation(line: 120, column: 62, scope: !2047, inlinedAt: !2807)
!2811 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2807)
!2812 = !DILocation(line: 0, scope: !2065, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2807)
!2814 = !DILocation(line: 32, column: 22, scope: !2564, inlinedAt: !2813)
!2815 = !DILocation(line: 463, column: 13, scope: !2312, inlinedAt: !2330)
!2816 = !DILocation(line: 854, column: 33, scope: !2331)
!2817 = !DILocation(line: 854, column: 27, scope: !2331)
!2818 = distinct !{!2818, !2302, !2819}
!2819 = !DILocation(line: 855, column: 44, scope: !1620)
!2820 = !DILocation(line: 0, scope: !1626)
!2821 = !DILocation(line: 866, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 866, column: 21)
!2823 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 865, column: 13)
!2824 = !DILocation(line: 866, column: 21, scope: !2823)
!2825 = !DILocation(line: 312, column: 9, scope: !2826, inlinedAt: !2020)
!2826 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 311, column: 5)
!2827 = !DILocation(line: 313, column: 9, scope: !2826, inlinedAt: !2020)
!2828 = !DILocation(line: 315, column: 5, scope: !2014, inlinedAt: !2020)
!2829 = !DILocation(line: 316, column: 15, scope: !2830, inlinedAt: !2020)
!2830 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 316, column: 9)
!2831 = !DILocation(line: 316, column: 9, scope: !2014, inlinedAt: !2020)
!2832 = !DILocation(line: 318, column: 9, scope: !2833, inlinedAt: !2020)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 317, column: 5)
!2834 = !DILocation(line: 319, column: 9, scope: !2833, inlinedAt: !2020)
!2835 = !DILocation(line: 320, column: 9, scope: !2833, inlinedAt: !2020)
!2836 = !DILocation(line: 321, column: 9, scope: !2833, inlinedAt: !2020)
!2837 = !DILocation(line: 322, column: 9, scope: !2833, inlinedAt: !2020)
!2838 = !DILocation(line: 324, column: 5, scope: !2014, inlinedAt: !2020)
!2839 = !DILocation(line: 325, column: 47, scope: !2014, inlinedAt: !2020)
!2840 = !DILocation(line: 325, column: 5, scope: !2014, inlinedAt: !2020)
!2841 = !DILocation(line: 326, column: 1, scope: !2014, inlinedAt: !2020)
!2842 = !DILocation(line: 864, column: 23, scope: !1627)
!2843 = !DILocation(line: 864, column: 13, scope: !1627)
!2844 = !DILocation(line: 864, column: 33, scope: !1627)
!2845 = !DILocation(line: 875, column: 51, scope: !1635)
!2846 = !DILocation(line: 864, column: 13, scope: !1623)
!2847 = !DILocation(line: 0, scope: !2182, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 867, column: 21, scope: !2822)
!2849 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2848)
!2850 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2848)
!2851 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2848)
!2852 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2848)
!2853 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2848)
!2854 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2848)
!2855 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2848)
!2856 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2848)
!2857 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2848)
!2858 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2848)
!2859 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2848)
!2860 = !DILocation(line: 0, scope: !2194, inlinedAt: !2848)
!2861 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2848)
!2862 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2848)
!2863 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2848)
!2864 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2848)
!2865 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2848)
!2866 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2848)
!2867 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2848)
!2868 = distinct !{!2868, !2862, !2869}
!2869 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2848)
!2870 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2848)
!2871 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2848)
!2872 = !DILocation(line: 867, column: 21, scope: !2822)
!2873 = !DILocation(line: 866, column: 55, scope: !2822)
!2874 = !DILocation(line: 869, column: 13, scope: !1630)
!2875 = !DILocation(line: 869, column: 33, scope: !1630)
!2876 = !DILocation(line: 869, column: 13, scope: !1623)
!2877 = !DILocation(line: 0, scope: !1629)
!2878 = !DILocation(line: 871, column: 21, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 871, column: 21)
!2880 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 870, column: 13)
!2881 = !DILocation(line: 871, column: 21, scope: !2880)
!2882 = !DILocation(line: 0, scope: !2182, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 872, column: 21, scope: !2879)
!2884 = !DILocation(line: 337, column: 24, scope: !2182, inlinedAt: !2883)
!2885 = !DILocation(line: 338, column: 24, scope: !2182, inlinedAt: !2883)
!2886 = !DILocation(line: 341, column: 16, scope: !2201, inlinedAt: !2883)
!2887 = !DILocation(line: 341, column: 20, scope: !2201, inlinedAt: !2883)
!2888 = !DILocation(line: 341, column: 24, scope: !2201, inlinedAt: !2883)
!2889 = !DILocation(line: 341, column: 9, scope: !2182, inlinedAt: !2883)
!2890 = !DILocation(line: 343, column: 16, scope: !2206, inlinedAt: !2883)
!2891 = !DILocation(line: 343, column: 20, scope: !2206, inlinedAt: !2883)
!2892 = !DILocation(line: 343, column: 24, scope: !2206, inlinedAt: !2883)
!2893 = !DILocation(line: 343, column: 9, scope: !2182, inlinedAt: !2883)
!2894 = !DILocation(line: 346, column: 22, scope: !2194, inlinedAt: !2883)
!2895 = !DILocation(line: 0, scope: !2194, inlinedAt: !2883)
!2896 = !DILocation(line: 346, column: 57, scope: !2213, inlinedAt: !2883)
!2897 = !DILocation(line: 346, column: 5, scope: !2194, inlinedAt: !2883)
!2898 = !DILocation(line: 348, column: 44, scope: !2216, inlinedAt: !2883)
!2899 = !DILocation(line: 348, column: 9, scope: !2216, inlinedAt: !2883)
!2900 = !DILocation(line: 349, column: 19, scope: !2216, inlinedAt: !2883)
!2901 = !DILocation(line: 349, column: 23, scope: !2216, inlinedAt: !2883)
!2902 = !DILocation(line: 346, column: 67, scope: !2213, inlinedAt: !2883)
!2903 = distinct !{!2903, !2897, !2904}
!2904 = !DILocation(line: 350, column: 5, scope: !2194, inlinedAt: !2883)
!2905 = !DILocation(line: 351, column: 40, scope: !2182, inlinedAt: !2883)
!2906 = !DILocation(line: 351, column: 5, scope: !2182, inlinedAt: !2883)
!2907 = !DILocation(line: 872, column: 21, scope: !2879)
!2908 = !DILocation(line: 871, column: 55, scope: !2879)
!2909 = !DILocation(line: 0, scope: !1632)
!2910 = !DILocation(line: 875, column: 17, scope: !1635)
!2911 = !DILocation(line: 875, column: 17, scope: !1636)
!2912 = !DILocation(line: 0, scope: !2336, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 876, column: 17, scope: !1634)
!2914 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2913)
!2915 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2913)
!2916 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2913)
!2917 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2913)
!2918 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2913)
!2919 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2913)
!2920 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2913)
!2921 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2913)
!2922 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2913)
!2923 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2913)
!2924 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2913)
!2925 = !DILocation(line: 0, scope: !2365, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2913)
!2927 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2926)
!2928 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2926)
!2929 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2926)
!2930 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2926)
!2931 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2926)
!2932 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2926)
!2933 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2926)
!2934 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2926)
!2935 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2926)
!2936 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2926)
!2937 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2926)
!2938 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2926)
!2939 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2913)
!2940 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2913)
!2941 = !DILocation(line: 0, scope: !2389, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2913)
!2943 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2942)
!2944 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2942)
!2945 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2913)
!2946 = !DILocation(line: 0, scope: !1634)
!2947 = !DILocation(line: 0, scope: !2047, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 876, column: 17, scope: !1634)
!2949 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2948)
!2950 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2948)
!2951 = !DILocation(line: 0, scope: !2065, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2948)
!2953 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !2952)
!2954 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !2952)
!2955 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !2952)
!2956 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !2952)
!2957 = !DILocation(line: 876, column: 17, scope: !1634)
!2958 = !DILocation(line: 0, scope: !1638)
!2959 = !DILocation(line: 879, column: 51, scope: !1641)
!2960 = !DILocation(line: 879, column: 17, scope: !1641)
!2961 = !DILocation(line: 879, column: 17, scope: !1642)
!2962 = !DILocation(line: 0, scope: !2336, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 880, column: 17, scope: !1640)
!2964 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !2963)
!2965 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !2963)
!2966 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !2963)
!2967 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !2963)
!2968 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !2963)
!2969 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !2963)
!2970 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !2963)
!2971 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !2963)
!2972 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !2963)
!2973 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !2963)
!2974 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2963)
!2975 = !DILocation(line: 0, scope: !2365, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !2963)
!2977 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !2976)
!2978 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !2976)
!2979 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !2976)
!2980 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !2976)
!2981 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !2976)
!2982 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !2976)
!2983 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !2976)
!2984 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !2976)
!2985 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !2976)
!2986 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !2976)
!2987 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !2976)
!2988 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !2976)
!2989 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !2963)
!2990 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !2963)
!2991 = !DILocation(line: 0, scope: !2389, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !2963)
!2993 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !2992)
!2994 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !2992)
!2995 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !2963)
!2996 = !DILocation(line: 0, scope: !1640)
!2997 = !DILocation(line: 0, scope: !2047, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 880, column: 17, scope: !1640)
!2999 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !2998)
!3000 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !2998)
!3001 = !DILocation(line: 0, scope: !2065, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !2998)
!3003 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3002)
!3004 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !3002)
!3005 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !3002)
!3006 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !3002)
!3007 = !DILocation(line: 880, column: 17, scope: !1640)
!3008 = !DILocation(line: 885, column: 38, scope: !1644)
!3009 = !DILocation(line: 0, scope: !1644)
!3010 = !DILocation(line: 886, column: 23, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 886, column: 13)
!3012 = !DILocation(line: 886, column: 13, scope: !3011)
!3013 = !DILocation(line: 886, column: 33, scope: !3011)
!3014 = !DILocation(line: 886, column: 13, scope: !1644)
!3015 = !DILocation(line: 888, column: 17, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 888, column: 17)
!3017 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 887, column: 9)
!3018 = !DILocation(line: 888, column: 17, scope: !3017)
!3019 = !DILocation(line: 889, column: 17, scope: !3016)
!3020 = !DILocation(line: 890, column: 17, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 890, column: 17)
!3022 = !DILocation(line: 890, column: 30, scope: !3021)
!3023 = !DILocation(line: 890, column: 39, scope: !3021)
!3024 = !DILocation(line: 890, column: 51, scope: !3021)
!3025 = !DILocation(line: 890, column: 17, scope: !3017)
!3026 = !DILocation(line: 891, column: 70, scope: !3021)
!3027 = !DILocation(line: 891, column: 48, scope: !3021)
!3028 = !DILocation(line: 891, column: 17, scope: !3021)
!3029 = !DILocation(line: 893, column: 13, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 893, column: 13)
!3031 = !DILocation(line: 893, column: 33, scope: !3030)
!3032 = !DILocation(line: 893, column: 13, scope: !1644)
!3033 = !DILocation(line: 895, column: 17, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 895, column: 17)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 894, column: 9)
!3036 = !DILocation(line: 895, column: 17, scope: !3035)
!3037 = !DILocation(line: 896, column: 17, scope: !3034)
!3038 = !DILocation(line: 897, column: 17, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 897, column: 17)
!3040 = !DILocation(line: 897, column: 30, scope: !3039)
!3041 = !DILocation(line: 897, column: 39, scope: !3039)
!3042 = !DILocation(line: 897, column: 51, scope: !3039)
!3043 = !DILocation(line: 897, column: 17, scope: !3035)
!3044 = !DILocation(line: 898, column: 70, scope: !3039)
!3045 = !DILocation(line: 898, column: 48, scope: !3039)
!3046 = !DILocation(line: 898, column: 17, scope: !3039)
!3047 = !DILocation(line: 900, column: 9, scope: !1655)
!3048 = !DILocation(line: 902, column: 23, scope: !1652)
!3049 = !DILocation(line: 0, scope: !1652)
!3050 = !DILocation(line: 902, column: 17, scope: !1653)
!3051 = !DILocation(line: 904, column: 21, scope: !1651)
!3052 = !DILocation(line: 0, scope: !2336, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 904, column: 41, scope: !1649)
!3054 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !3053)
!3055 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !3053)
!3056 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !3053)
!3057 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !3053)
!3058 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !3053)
!3059 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !3053)
!3060 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !3053)
!3061 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !3053)
!3062 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !3053)
!3063 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !3053)
!3064 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3053)
!3065 = !DILocation(line: 0, scope: !2365, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3053)
!3067 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3066)
!3068 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3066)
!3069 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3066)
!3070 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3066)
!3071 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3066)
!3072 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3066)
!3073 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3066)
!3074 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3066)
!3075 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3066)
!3076 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3066)
!3077 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3066)
!3078 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3066)
!3079 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !3053)
!3080 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !3053)
!3081 = !DILocation(line: 0, scope: !2389, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !3053)
!3083 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3082)
!3084 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3082)
!3085 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !3053)
!3086 = !DILocation(line: 0, scope: !1649)
!3087 = !DILocation(line: 0, scope: !2047, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 904, column: 41, scope: !1649)
!3089 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !3088)
!3090 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !3088)
!3091 = !DILocation(line: 0, scope: !2065, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !3088)
!3093 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3092)
!3094 = !DILocation(line: 27, column: 19, scope: !2065, inlinedAt: !3092)
!3095 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !3092)
!3096 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !3092)
!3097 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !3092)
!3098 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !3092)
!3099 = !DILocation(line: 56, column: 13, scope: !2081, inlinedAt: !3092)
!3100 = !DILocation(line: 56, column: 26, scope: !2081, inlinedAt: !3092)
!3101 = !DILocation(line: 57, column: 13, scope: !2081, inlinedAt: !3092)
!3102 = !DILocation(line: 57, column: 26, scope: !2081, inlinedAt: !3092)
!3103 = !DILocation(line: 904, column: 41, scope: !1649)
!3104 = !DILocation(line: 908, column: 21, scope: !1659)
!3105 = !DILocation(line: 0, scope: !2336, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 908, column: 41, scope: !1657)
!3107 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !3106)
!3108 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !3106)
!3109 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !3106)
!3110 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !3106)
!3111 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !3106)
!3112 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !3106)
!3113 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !3106)
!3114 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !3106)
!3115 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !3106)
!3116 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !3106)
!3117 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3106)
!3118 = !DILocation(line: 0, scope: !2365, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3106)
!3120 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3119)
!3121 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3119)
!3122 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3119)
!3123 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3119)
!3124 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3119)
!3125 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3119)
!3126 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3119)
!3127 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3119)
!3128 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3119)
!3129 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3119)
!3130 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3119)
!3131 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3119)
!3132 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !3106)
!3133 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !3106)
!3134 = !DILocation(line: 0, scope: !2389, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !3106)
!3136 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3135)
!3137 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3135)
!3138 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !3106)
!3139 = !DILocation(line: 0, scope: !1657)
!3140 = !DILocation(line: 0, scope: !2047, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 908, column: 41, scope: !1657)
!3142 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !3141)
!3143 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !3141)
!3144 = !DILocation(line: 0, scope: !2065, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !3141)
!3146 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3145)
!3147 = !DILocation(line: 27, column: 19, scope: !2065, inlinedAt: !3145)
!3148 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !3145)
!3149 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !3145)
!3150 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !3145)
!3151 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !3145)
!3152 = !DILocation(line: 908, column: 41, scope: !1657)
!3153 = !DILocation(line: 909, column: 21, scope: !1663)
!3154 = !DILocation(line: 909, column: 21, scope: !1659)
!3155 = !DILocation(line: 0, scope: !2336, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 909, column: 41, scope: !1662)
!3157 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !3156)
!3158 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !3156)
!3159 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !3156)
!3160 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !3156)
!3161 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !3156)
!3162 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !3156)
!3163 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !3156)
!3164 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !3156)
!3165 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !3156)
!3166 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !3156)
!3167 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3156)
!3168 = !DILocation(line: 0, scope: !2365, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3156)
!3170 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3169)
!3171 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3169)
!3172 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3169)
!3173 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3169)
!3174 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3169)
!3175 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3169)
!3176 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3169)
!3177 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3169)
!3178 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3169)
!3179 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3169)
!3180 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3169)
!3181 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3169)
!3182 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !3156)
!3183 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !3156)
!3184 = !DILocation(line: 0, scope: !2389, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !3156)
!3186 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3185)
!3187 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3185)
!3188 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !3156)
!3189 = !DILocation(line: 0, scope: !1662)
!3190 = !DILocation(line: 0, scope: !2047, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 909, column: 41, scope: !1662)
!3192 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !3191)
!3193 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !3191)
!3194 = !DILocation(line: 0, scope: !2065, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !3191)
!3196 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3195)
!3197 = !DILocation(line: 27, column: 19, scope: !2065, inlinedAt: !3195)
!3198 = !DILocation(line: 27, column: 22, scope: !2065, inlinedAt: !3195)
!3199 = !DILocation(line: 52, column: 26, scope: !2081, inlinedAt: !3195)
!3200 = !DILocation(line: 54, column: 13, scope: !2081, inlinedAt: !3195)
!3201 = !DILocation(line: 54, column: 26, scope: !2081, inlinedAt: !3195)
!3202 = !DILocation(line: 909, column: 41, scope: !1662)
!3203 = !DILocation(line: 913, column: 21, scope: !1667)
!3204 = !DILocation(line: 0, scope: !2336, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 913, column: 41, scope: !1665)
!3206 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !3205)
!3207 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !3205)
!3208 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !3205)
!3209 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !3205)
!3210 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !3205)
!3211 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !3205)
!3212 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !3205)
!3213 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !3205)
!3214 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !3205)
!3215 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !3205)
!3216 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3205)
!3217 = !DILocation(line: 0, scope: !2365, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3205)
!3219 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3218)
!3220 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3218)
!3221 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3218)
!3222 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3218)
!3223 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3218)
!3224 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3218)
!3225 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3218)
!3226 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3218)
!3227 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3218)
!3228 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3218)
!3229 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3218)
!3230 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3218)
!3231 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !3205)
!3232 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !3205)
!3233 = !DILocation(line: 0, scope: !2389, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !3205)
!3235 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3234)
!3236 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3234)
!3237 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !3205)
!3238 = !DILocation(line: 0, scope: !1665)
!3239 = !DILocation(line: 0, scope: !2047, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 913, column: 41, scope: !1665)
!3241 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !3240)
!3242 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !3240)
!3243 = !DILocation(line: 0, scope: !2065, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !3240)
!3245 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3244)
!3246 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !3244)
!3247 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !3244)
!3248 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !3244)
!3249 = !DILocation(line: 45, column: 9, scope: !2141, inlinedAt: !3244)
!3250 = !DILocation(line: 45, column: 22, scope: !2141, inlinedAt: !3244)
!3251 = !DILocation(line: 46, column: 9, scope: !2141, inlinedAt: !3244)
!3252 = !DILocation(line: 46, column: 22, scope: !2141, inlinedAt: !3244)
!3253 = !DILocation(line: 913, column: 41, scope: !1665)
!3254 = !DILocation(line: 914, column: 21, scope: !1670)
!3255 = !DILocation(line: 914, column: 21, scope: !1667)
!3256 = !DILocation(line: 0, scope: !2336, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 914, column: 41, scope: !1669)
!3258 = !DILocation(line: 419, column: 5, scope: !2336, inlinedAt: !3257)
!3259 = !DILocation(line: 423, column: 5, scope: !2336, inlinedAt: !3257)
!3260 = !DILocation(line: 424, column: 11, scope: !2336, inlinedAt: !3257)
!3261 = !DILocation(line: 424, column: 56, scope: !2336, inlinedAt: !3257)
!3262 = !DILocation(line: 424, column: 54, scope: !2336, inlinedAt: !3257)
!3263 = !DILocation(line: 425, column: 11, scope: !2336, inlinedAt: !3257)
!3264 = !DILocation(line: 425, column: 56, scope: !2336, inlinedAt: !3257)
!3265 = !DILocation(line: 425, column: 54, scope: !2336, inlinedAt: !3257)
!3266 = !DILocation(line: 426, column: 40, scope: !2336, inlinedAt: !3257)
!3267 = !DILocation(line: 427, column: 40, scope: !2336, inlinedAt: !3257)
!3268 = !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3257)
!3269 = !DILocation(line: 0, scope: !2365, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 426, column: 21, scope: !2336, inlinedAt: !3257)
!3271 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3270)
!3272 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3270)
!3273 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3270)
!3274 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3270)
!3275 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3270)
!3276 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3270)
!3277 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3270)
!3278 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3270)
!3279 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3270)
!3280 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3270)
!3281 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3270)
!3282 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3270)
!3283 = !DILocation(line: 430, column: 11, scope: !2336, inlinedAt: !3257)
!3284 = !DILocation(line: 431, column: 11, scope: !2336, inlinedAt: !3257)
!3285 = !DILocation(line: 0, scope: !2389, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 433, column: 12, scope: !2336, inlinedAt: !3257)
!3287 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3286)
!3288 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3286)
!3289 = !DILocation(line: 434, column: 1, scope: !2336, inlinedAt: !3257)
!3290 = !DILocation(line: 0, scope: !1669)
!3291 = !DILocation(line: 0, scope: !2047, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 914, column: 41, scope: !1669)
!3293 = !DILocation(line: 120, column: 24, scope: !2047, inlinedAt: !3292)
!3294 = !DILocation(line: 124, column: 68, scope: !2063, inlinedAt: !3292)
!3295 = !DILocation(line: 0, scope: !2065, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 124, column: 9, scope: !2063, inlinedAt: !3292)
!3297 = !DILocation(line: 26, column: 32, scope: !2065, inlinedAt: !3296)
!3298 = !DILocation(line: 41, column: 22, scope: !2141, inlinedAt: !3296)
!3299 = !DILocation(line: 43, column: 9, scope: !2141, inlinedAt: !3296)
!3300 = !DILocation(line: 43, column: 22, scope: !2141, inlinedAt: !3296)
!3301 = !DILocation(line: 45, column: 9, scope: !2141, inlinedAt: !3296)
!3302 = !DILocation(line: 45, column: 22, scope: !2141, inlinedAt: !3296)
!3303 = !DILocation(line: 46, column: 9, scope: !2141, inlinedAt: !3296)
!3304 = !DILocation(line: 46, column: 22, scope: !2141, inlinedAt: !3296)
!3305 = !DILocation(line: 914, column: 41, scope: !1669)
!3306 = distinct !{!3306, !3047, !3307}
!3307 = !DILocation(line: 916, column: 9, scope: !1655)
!3308 = !DILocation(line: 0, scope: !1726, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 920, column: 20, scope: !1573)
!3310 = !DILocation(line: 78, column: 17, scope: !1726, inlinedAt: !3309)
!3311 = !DILocation(line: 78, column: 25, scope: !1726, inlinedAt: !3309)
!3312 = !DILocation(line: 78, column: 19, scope: !1726, inlinedAt: !3309)
!3313 = !DILocation(line: 78, column: 39, scope: !1726, inlinedAt: !3309)
!3314 = !DILocation(line: 78, column: 70, scope: !1726, inlinedAt: !3309)
!3315 = !DILocation(line: 78, column: 12, scope: !1726, inlinedAt: !3309)
!3316 = !DILocation(line: 921, column: 8, scope: !1573)
!3317 = !DILocation(line: 921, column: 29, scope: !1573)
!3318 = !DILocation(line: 921, column: 45, scope: !1573)
!3319 = !DILocation(line: 924, column: 9, scope: !1573)
!3320 = !DILocalVariable(name: "h", arg: 1, scope: !3321, file: !3, line: 216, type: !141)
!3321 = distinct !DISubprogram(name: "x264_cabac_mb_cbp_luma", scope: !3, file: !3, line: 216, type: !139, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3322 = !{!3320, !3323, !3324, !3325, !3326}
!3323 = !DILocalVariable(name: "cb", arg: 2, scope: !3321, file: !3, line: 216, type: !1433)
!3324 = !DILocalVariable(name: "cbp", scope: !3321, file: !3, line: 218, type: !152)
!3325 = !DILocalVariable(name: "cbp_l", scope: !3321, file: !3, line: 219, type: !152)
!3326 = !DILocalVariable(name: "cbp_t", scope: !3321, file: !3, line: 220, type: !152)
!3327 = !DILocation(line: 0, scope: !3321, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 926, column: 9, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 925, column: 5)
!3330 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 924, column: 9)
!3331 = !DILocation(line: 218, column: 21, scope: !3321, inlinedAt: !3328)
!3332 = !DILocation(line: 219, column: 29, scope: !3321, inlinedAt: !3328)
!3333 = !DILocation(line: 220, column: 29, scope: !3321, inlinedAt: !3328)
!3334 = !DILocation(line: 221, column: 61, scope: !3321, inlinedAt: !3328)
!3335 = !DILocation(line: 221, column: 45, scope: !3321, inlinedAt: !3328)
!3336 = !DILocation(line: 221, column: 76, scope: !3321, inlinedAt: !3328)
!3337 = !DILocation(line: 221, column: 82, scope: !3321, inlinedAt: !3328)
!3338 = !DILocation(line: 221, column: 66, scope: !3321, inlinedAt: !3328)
!3339 = !DILocation(line: 221, column: 99, scope: !3321, inlinedAt: !3328)
!3340 = !DILocation(line: 221, column: 5, scope: !3321, inlinedAt: !3328)
!3341 = !DILocation(line: 222, column: 76, scope: !3321, inlinedAt: !3328)
!3342 = !DILocation(line: 222, column: 82, scope: !3321, inlinedAt: !3328)
!3343 = !DILocation(line: 222, column: 66, scope: !3321, inlinedAt: !3328)
!3344 = !DILocation(line: 222, column: 93, scope: !3321, inlinedAt: !3328)
!3345 = !DILocation(line: 222, column: 99, scope: !3321, inlinedAt: !3328)
!3346 = !DILocation(line: 222, column: 5, scope: !3321, inlinedAt: !3328)
!3347 = !DILocation(line: 223, column: 61, scope: !3321, inlinedAt: !3328)
!3348 = !DILocation(line: 223, column: 76, scope: !3321, inlinedAt: !3328)
!3349 = !DILocation(line: 223, column: 82, scope: !3321, inlinedAt: !3328)
!3350 = !DILocation(line: 223, column: 66, scope: !3321, inlinedAt: !3328)
!3351 = !DILocation(line: 223, column: 93, scope: !3321, inlinedAt: !3328)
!3352 = !DILocation(line: 223, column: 99, scope: !3321, inlinedAt: !3328)
!3353 = !DILocation(line: 223, column: 5, scope: !3321, inlinedAt: !3328)
!3354 = !DILocation(line: 224, column: 82, scope: !3321, inlinedAt: !3328)
!3355 = !DILocation(line: 224, column: 66, scope: !3321, inlinedAt: !3328)
!3356 = !DILocation(line: 224, column: 93, scope: !3321, inlinedAt: !3328)
!3357 = !DILocation(line: 224, column: 99, scope: !3321, inlinedAt: !3328)
!3358 = !DILocation(line: 224, column: 5, scope: !3321, inlinedAt: !3328)
!3359 = !DILocalVariable(name: "h", arg: 1, scope: !3360, file: !3, line: 227, type: !141)
!3360 = distinct !DISubprogram(name: "x264_cabac_mb_cbp_chroma", scope: !3, file: !3, line: 227, type: !139, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3361)
!3361 = !{!3359, !3362, !3363, !3364, !3365}
!3362 = !DILocalVariable(name: "cb", arg: 2, scope: !3360, file: !3, line: 227, type: !1433)
!3363 = !DILocalVariable(name: "cbp_a", scope: !3360, file: !3, line: 229, type: !152)
!3364 = !DILocalVariable(name: "cbp_b", scope: !3360, file: !3, line: 230, type: !152)
!3365 = !DILocalVariable(name: "ctx", scope: !3360, file: !3, line: 231, type: !152)
!3366 = !DILocation(line: 0, scope: !3360, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 927, column: 9, scope: !3329)
!3368 = !DILocation(line: 229, column: 29, scope: !3360, inlinedAt: !3367)
!3369 = !DILocation(line: 229, column: 40, scope: !3360, inlinedAt: !3367)
!3370 = !DILocation(line: 230, column: 29, scope: !3360, inlinedAt: !3367)
!3371 = !DILocation(line: 230, column: 40, scope: !3360, inlinedAt: !3367)
!3372 = !DILocation(line: 233, column: 9, scope: !3373, inlinedAt: !3367)
!3373 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 233, column: 9)
!3374 = !DILocation(line: 233, column: 15, scope: !3373, inlinedAt: !3367)
!3375 = !DILocation(line: 234, column: 9, scope: !3376, inlinedAt: !3367)
!3376 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 234, column: 9)
!3377 = !DILocation(line: 234, column: 15, scope: !3376, inlinedAt: !3367)
!3378 = !DILocation(line: 235, column: 15, scope: !3379, inlinedAt: !3367)
!3379 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 235, column: 9)
!3380 = !DILocation(line: 235, column: 28, scope: !3379, inlinedAt: !3367)
!3381 = !DILocation(line: 0, scope: !3379, inlinedAt: !3367)
!3382 = !DILocation(line: 235, column: 9, scope: !3360, inlinedAt: !3367)
!3383 = !DILocation(line: 236, column: 9, scope: !3379, inlinedAt: !3367)
!3384 = !DILocation(line: 239, column: 9, scope: !3385, inlinedAt: !3367)
!3385 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 238, column: 5)
!3386 = !DILocation(line: 242, column: 19, scope: !3387, inlinedAt: !3367)
!3387 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 242, column: 13)
!3388 = !DILocation(line: 242, column: 13, scope: !3385, inlinedAt: !3367)
!3389 = !DILocation(line: 243, column: 19, scope: !3390, inlinedAt: !3367)
!3390 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 243, column: 13)
!3391 = !DILocation(line: 243, column: 13, scope: !3385, inlinedAt: !3367)
!3392 = !DILocation(line: 244, column: 49, scope: !3385, inlinedAt: !3367)
!3393 = !DILocation(line: 244, column: 62, scope: !3385, inlinedAt: !3367)
!3394 = !DILocation(line: 244, column: 75, scope: !3385, inlinedAt: !3367)
!3395 = !DILocation(line: 244, column: 9, scope: !3385, inlinedAt: !3367)
!3396 = !DILocation(line: 0, scope: !1500, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 930, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 930, column: 9)
!3399 = !DILocation(line: 402, column: 13, scope: !3400, inlinedAt: !3397)
!3400 = distinct !DILexicalBlock(scope: !1500, file: !6, line: 402, column: 9)
!3401 = !DILocation(line: 402, column: 18, scope: !3400, inlinedAt: !3397)
!3402 = !DILocation(line: 402, column: 10, scope: !3400, inlinedAt: !3397)
!3403 = !DILocation(line: 402, column: 9, scope: !1500, inlinedAt: !3397)
!3404 = !DILocation(line: 404, column: 15, scope: !3405, inlinedAt: !3397)
!3405 = distinct !DILexicalBlock(scope: !1500, file: !6, line: 404, column: 9)
!3406 = !DILocation(line: 404, column: 22, scope: !3405, inlinedAt: !3397)
!3407 = !DILocation(line: 404, column: 9, scope: !1500, inlinedAt: !3397)
!3408 = !DILocation(line: 405, column: 16, scope: !3405, inlinedAt: !3397)
!3409 = !DILocation(line: 405, column: 9, scope: !3405, inlinedAt: !3397)
!3410 = !DILocation(line: 406, column: 12, scope: !1500, inlinedAt: !3397)
!3411 = !DILocation(line: 406, column: 41, scope: !1500, inlinedAt: !3397)
!3412 = !DILocation(line: 406, column: 5, scope: !1500, inlinedAt: !3397)
!3413 = !DILocation(line: 930, column: 9, scope: !3398)
!3414 = !DILocation(line: 930, column: 44, scope: !3398)
!3415 = !DILocation(line: 930, column: 53, scope: !3398)
!3416 = !DILocation(line: 930, column: 47, scope: !3398)
!3417 = !DILocation(line: 930, column: 9, scope: !1573)
!3418 = !DILocation(line: 932, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 931, column: 5)
!3420 = !DILocation(line: 0, scope: !1908, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 932, column: 9, scope: !3419)
!3422 = !DILocation(line: 330, column: 19, scope: !1908, inlinedAt: !3421)
!3423 = !DILocation(line: 331, column: 5, scope: !1908, inlinedAt: !3421)
!3424 = !DILocation(line: 933, column: 5, scope: !3419)
!3425 = !DILocation(line: 935, column: 15, scope: !1673)
!3426 = !DILocation(line: 935, column: 26, scope: !1673)
!3427 = !DILocation(line: 935, column: 30, scope: !1673)
!3428 = !DILocation(line: 935, column: 39, scope: !1673)
!3429 = !DILocation(line: 935, column: 52, scope: !1673)
!3430 = !DILocation(line: 935, column: 56, scope: !1673)
!3431 = !DILocation(line: 937, column: 29, scope: !1672)
!3432 = !DILocation(line: 0, scope: !1672)
!3433 = !DILocalVariable(name: "h", arg: 1, scope: !3434, file: !3, line: 248, type: !141)
!3434 = distinct !DISubprogram(name: "x264_cabac_mb_qp_delta", scope: !3, file: !3, line: 248, type: !139, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3435)
!3435 = !{!3433, !3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "cb", arg: 2, scope: !3434, file: !3, line: 248, type: !1433)
!3437 = !DILocalVariable(name: "i_dqp", scope: !3434, file: !3, line: 250, type: !152)
!3438 = !DILocalVariable(name: "ctx", scope: !3434, file: !3, line: 251, type: !152)
!3439 = !DILocalVariable(name: "val", scope: !3440, file: !3, line: 268, type: !152)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 267, column: 5)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 266, column: 9)
!3442 = !DILocation(line: 0, scope: !3434, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 938, column: 9, scope: !1672)
!3444 = !DILocation(line: 250, column: 23, scope: !3434, inlinedAt: !3443)
!3445 = !DILocation(line: 250, column: 36, scope: !3434, inlinedAt: !3443)
!3446 = !DILocation(line: 250, column: 28, scope: !3434, inlinedAt: !3443)
!3447 = !DILocation(line: 254, column: 15, scope: !3448, inlinedAt: !3443)
!3448 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 254, column: 9)
!3449 = !DILocation(line: 254, column: 22, scope: !3448, inlinedAt: !3443)
!3450 = !DILocation(line: 254, column: 33, scope: !3448, inlinedAt: !3443)
!3451 = !DILocation(line: 254, column: 43, scope: !3448, inlinedAt: !3443)
!3452 = !DILocation(line: 254, column: 53, scope: !3448, inlinedAt: !3443)
!3453 = !DILocation(line: 254, column: 37, scope: !3448, inlinedAt: !3443)
!3454 = !DILocation(line: 254, column: 9, scope: !3434, inlinedAt: !3443)
!3455 = !DILocation(line: 257, column: 20, scope: !3456, inlinedAt: !3443)
!3456 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 255, column: 5)
!3457 = !DILocation(line: 260, column: 5, scope: !3456, inlinedAt: !3443)
!3458 = !DILocation(line: 264, column: 17, scope: !3434, inlinedAt: !3443)
!3459 = !DILocation(line: 264, column: 11, scope: !3434, inlinedAt: !3443)
!3460 = !DILocation(line: 264, column: 28, scope: !3434, inlinedAt: !3443)
!3461 = !DILocation(line: 264, column: 37, scope: !3434, inlinedAt: !3443)
!3462 = !DILocation(line: 264, column: 47, scope: !3434, inlinedAt: !3443)
!3463 = !DILocation(line: 264, column: 31, scope: !3434, inlinedAt: !3443)
!3464 = !DILocation(line: 266, column: 15, scope: !3441, inlinedAt: !3443)
!3465 = !DILocation(line: 266, column: 9, scope: !3434, inlinedAt: !3443)
!3466 = !DILocation(line: 268, column: 25, scope: !3440, inlinedAt: !3443)
!3467 = !DILocation(line: 268, column: 19, scope: !3440, inlinedAt: !3443)
!3468 = !DILocation(line: 0, scope: !3440, inlinedAt: !3443)
!3469 = !DILocation(line: 270, column: 17, scope: !3470, inlinedAt: !3443)
!3470 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 270, column: 13)
!3471 = !DILocation(line: 270, column: 23, scope: !3470, inlinedAt: !3443)
!3472 = !DILocation(line: 272, column: 9, scope: !3440, inlinedAt: !3443)
!3473 = !DILocation(line: 274, column: 48, scope: !3474, inlinedAt: !3443)
!3474 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 273, column: 9)
!3475 = !DILocation(line: 274, column: 13, scope: !3474, inlinedAt: !3443)
!3476 = !DILocation(line: 275, column: 25, scope: !3474, inlinedAt: !3443)
!3477 = !DILocation(line: 275, column: 20, scope: !3474, inlinedAt: !3443)
!3478 = !DILocation(line: 276, column: 18, scope: !3440, inlinedAt: !3443)
!3479 = !DILocation(line: 276, column: 9, scope: !3474, inlinedAt: !3443)
!3480 = distinct !{!3480, !3472, !3481}
!3481 = !DILocation(line: 276, column: 24, scope: !3440, inlinedAt: !3443)
!3482 = !DILocation(line: 278, column: 45, scope: !3434, inlinedAt: !3443)
!3483 = !DILocation(line: 278, column: 5, scope: !3434, inlinedAt: !3443)
!3484 = !DILocation(line: 941, column: 13, scope: !1672)
!3485 = !DILocalVariable(name: "h", arg: 1, scope: !3486, file: !3, line: 477, type: !141)
!3486 = distinct !DISubprogram(name: "x264_cabac_mb_cbf_ctxidxinc", scope: !3, file: !3, line: 477, type: !3487, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!152, !141, !152, !152, !152}
!3489 = !{!3485, !3490, !3491, !3492, !3493, !3494}
!3490 = !DILocalVariable(name: "i_cat", arg: 2, scope: !3486, file: !3, line: 477, type: !152)
!3491 = !DILocalVariable(name: "i_idx", arg: 3, scope: !3486, file: !3, line: 477, type: !152)
!3492 = !DILocalVariable(name: "b_intra", arg: 4, scope: !3486, file: !3, line: 477, type: !152)
!3493 = !DILocalVariable(name: "i_nza", scope: !3486, file: !3, line: 479, type: !152)
!3494 = !DILocalVariable(name: "i_nzb", scope: !3486, file: !3, line: 480, type: !152)
!3495 = !DILocation(line: 0, scope: !3486, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 944, column: 13, scope: !1675)
!3497 = !DILocation(line: 499, column: 34, scope: !3498, inlinedAt: !3496)
!3498 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 483, column: 5)
!3499 = !DILocation(line: 499, column: 45, scope: !3498, inlinedAt: !3496)
!3500 = !DILocation(line: 499, column: 51, scope: !3498, inlinedAt: !3496)
!3501 = !DILocation(line: 500, column: 34, scope: !3498, inlinedAt: !3496)
!3502 = !DILocation(line: 501, column: 36, scope: !3498, inlinedAt: !3496)
!3503 = !DILocation(line: 501, column: 33, scope: !3498, inlinedAt: !3496)
!3504 = !DILocation(line: 501, column: 43, scope: !3498, inlinedAt: !3496)
!3505 = !DILocation(line: 0, scope: !1675)
!3506 = !DILocation(line: 944, column: 13, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 944, column: 13)
!3508 = !DILocation(line: 944, column: 13, scope: !1675)
!3509 = !DILocation(line: 944, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 944, column: 13)
!3511 = !DILocation(line: 947, column: 23, scope: !1680)
!3512 = !DILocation(line: 947, column: 34, scope: !1680)
!3513 = !DILocation(line: 947, column: 17, scope: !1676)
!3514 = !DILocation(line: 0, scope: !1679)
!3515 = !DILocation(line: 948, column: 17, scope: !1679)
!3516 = !DILocation(line: 0, scope: !3486, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 949, column: 21, scope: !1682)
!3518 = !DILocation(line: 488, column: 48, scope: !3498, inlinedAt: !3517)
!3519 = !DILocation(line: 488, column: 66, scope: !3498, inlinedAt: !3517)
!3520 = !DILocation(line: 488, column: 21, scope: !3498, inlinedAt: !3517)
!3521 = !DILocation(line: 489, column: 66, scope: !3498, inlinedAt: !3517)
!3522 = !DILocation(line: 489, column: 21, scope: !3498, inlinedAt: !3517)
!3523 = !DILocation(line: 496, column: 42, scope: !3524, inlinedAt: !3517)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 493, column: 13)
!3525 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 490, column: 17)
!3526 = !DILocation(line: 496, column: 40, scope: !3524, inlinedAt: !3517)
!3527 = !DILocation(line: 496, column: 52, scope: !3524, inlinedAt: !3517)
!3528 = !DILocation(line: 496, column: 37, scope: !3524, inlinedAt: !3517)
!3529 = !DILocation(line: 496, column: 49, scope: !3524, inlinedAt: !3517)
!3530 = !DILocation(line: 0, scope: !1682)
!3531 = !DILocation(line: 949, column: 21, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 949, column: 21)
!3533 = !DILocation(line: 949, column: 21, scope: !1682)
!3534 = !DILocation(line: 949, column: 21, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 949, column: 21)
!3536 = !DILocation(line: 948, column: 42, scope: !1683)
!3537 = !DILocation(line: 948, column: 35, scope: !1683)
!3538 = distinct !{!3538, !3515, !3539}
!3539 = !DILocation(line: 949, column: 21, scope: !1679)
!3540 = !DILocation(line: 951, column: 24, scope: !1687)
!3541 = !DILocation(line: 951, column: 18, scope: !1687)
!3542 = !DILocation(line: 951, column: 18, scope: !1677)
!3543 = !DILocation(line: 0, scope: !1685)
!3544 = !DILocation(line: 954, column: 27, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 954, column: 21)
!3546 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 953, column: 13)
!3547 = !DILocation(line: 954, column: 38, scope: !3545)
!3548 = !DILocation(line: 954, column: 21, scope: !3546)
!3549 = !DILocation(line: 0, scope: !1689)
!3550 = !DILocation(line: 959, column: 13, scope: !1689)
!3551 = !DILocation(line: 955, column: 21, scope: !3545)
!3552 = !DILocation(line: 960, column: 27, scope: !1693)
!3553 = !DILocation(line: 960, column: 51, scope: !1693)
!3554 = !DILocation(line: 960, column: 44, scope: !1693)
!3555 = !DILocation(line: 960, column: 38, scope: !1693)
!3556 = !DILocation(line: 960, column: 21, scope: !1694)
!3557 = !DILocation(line: 0, scope: !3486, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 961, column: 21, scope: !1692)
!3559 = !DILocation(line: 488, column: 48, scope: !3498, inlinedAt: !3558)
!3560 = !DILocation(line: 488, column: 66, scope: !3498, inlinedAt: !3558)
!3561 = !DILocation(line: 488, column: 21, scope: !3498, inlinedAt: !3558)
!3562 = !DILocation(line: 489, column: 66, scope: !3498, inlinedAt: !3558)
!3563 = !DILocation(line: 489, column: 21, scope: !3498, inlinedAt: !3558)
!3564 = !DILocation(line: 494, column: 23, scope: !3524, inlinedAt: !3558)
!3565 = !DILocation(line: 495, column: 23, scope: !3524, inlinedAt: !3558)
!3566 = !DILocation(line: 496, column: 42, scope: !3524, inlinedAt: !3558)
!3567 = !DILocation(line: 496, column: 40, scope: !3524, inlinedAt: !3558)
!3568 = !DILocation(line: 496, column: 52, scope: !3524, inlinedAt: !3558)
!3569 = !DILocation(line: 496, column: 37, scope: !3524, inlinedAt: !3558)
!3570 = !DILocation(line: 496, column: 49, scope: !3524, inlinedAt: !3558)
!3571 = !DILocation(line: 0, scope: !1692)
!3572 = !DILocation(line: 961, column: 21, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 961, column: 21)
!3574 = !DILocation(line: 961, column: 21, scope: !1692)
!3575 = !DILocation(line: 961, column: 21, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 961, column: 21)
!3577 = !DILocation(line: 959, column: 38, scope: !1694)
!3578 = !DILocation(line: 959, column: 31, scope: !1694)
!3579 = distinct !{!3579, !3550, !3580}
!3580 = !DILocation(line: 961, column: 21, scope: !1689)
!3581 = !DILocation(line: 964, column: 19, scope: !1698)
!3582 = !DILocation(line: 964, column: 13, scope: !1698)
!3583 = !DILocation(line: 964, column: 13, scope: !1672)
!3584 = !DILocation(line: 0, scope: !3486, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 966, column: 13, scope: !1696)
!3586 = !DILocation(line: 505, column: 33, scope: !3498, inlinedAt: !3585)
!3587 = !DILocation(line: 505, column: 44, scope: !3498, inlinedAt: !3585)
!3588 = !DILocation(line: 505, column: 21, scope: !3498, inlinedAt: !3585)
!3589 = !DILocation(line: 506, column: 33, scope: !3498, inlinedAt: !3585)
!3590 = !DILocation(line: 506, column: 44, scope: !3498, inlinedAt: !3585)
!3591 = !DILocation(line: 506, column: 21, scope: !3498, inlinedAt: !3585)
!3592 = !DILocation(line: 507, column: 36, scope: !3498, inlinedAt: !3585)
!3593 = !DILocation(line: 507, column: 33, scope: !3498, inlinedAt: !3585)
!3594 = !DILocation(line: 507, column: 43, scope: !3498, inlinedAt: !3585)
!3595 = !DILocation(line: 0, scope: !1696)
!3596 = !DILocation(line: 966, column: 13, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 966, column: 13)
!3598 = !DILocation(line: 966, column: 13, scope: !1696)
!3599 = !DILocation(line: 966, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 966, column: 13)
!3601 = !DILocation(line: 0, scope: !3486, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 967, column: 13, scope: !1700)
!3603 = !DILocation(line: 505, column: 33, scope: !3498, inlinedAt: !3602)
!3604 = !DILocation(line: 505, column: 44, scope: !3498, inlinedAt: !3602)
!3605 = !DILocation(line: 505, column: 21, scope: !3498, inlinedAt: !3602)
!3606 = !DILocation(line: 506, column: 33, scope: !3498, inlinedAt: !3602)
!3607 = !DILocation(line: 506, column: 44, scope: !3498, inlinedAt: !3602)
!3608 = !DILocation(line: 506, column: 21, scope: !3498, inlinedAt: !3602)
!3609 = !DILocation(line: 507, column: 36, scope: !3498, inlinedAt: !3602)
!3610 = !DILocation(line: 507, column: 33, scope: !3498, inlinedAt: !3602)
!3611 = !DILocation(line: 507, column: 43, scope: !3498, inlinedAt: !3602)
!3612 = !DILocation(line: 0, scope: !1700)
!3613 = !DILocation(line: 967, column: 13, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 967, column: 13)
!3615 = !DILocation(line: 967, column: 13, scope: !1700)
!3616 = !DILocation(line: 967, column: 13, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 967, column: 13)
!3618 = !DILocation(line: 968, column: 23, scope: !1703)
!3619 = !DILocation(line: 968, column: 35, scope: !1703)
!3620 = !DILocation(line: 968, column: 17, scope: !1697)
!3621 = !DILocation(line: 0, scope: !1702)
!3622 = !DILocation(line: 0, scope: !3486, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 970, column: 21, scope: !1705)
!3624 = !DILocation(line: 488, column: 21, scope: !3498, inlinedAt: !3623)
!3625 = !DILocation(line: 489, column: 21, scope: !3498, inlinedAt: !3623)
!3626 = !DILocation(line: 494, column: 23, scope: !3524, inlinedAt: !3623)
!3627 = !DILocation(line: 495, column: 23, scope: !3524, inlinedAt: !3623)
!3628 = !DILocation(line: 496, column: 42, scope: !3524, inlinedAt: !3623)
!3629 = !DILocation(line: 496, column: 40, scope: !3524, inlinedAt: !3623)
!3630 = !DILocation(line: 496, column: 52, scope: !3524, inlinedAt: !3623)
!3631 = !DILocation(line: 496, column: 37, scope: !3524, inlinedAt: !3623)
!3632 = !DILocation(line: 496, column: 49, scope: !3524, inlinedAt: !3623)
!3633 = !DILocation(line: 0, scope: !1705)
!3634 = !DILocation(line: 970, column: 21, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 970, column: 21)
!3636 = !DILocation(line: 970, column: 21, scope: !1705)
!3637 = !DILocation(line: 970, column: 21, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 970, column: 21)
!3639 = !DILocation(line: 78, column: 17, scope: !1726, inlinedAt: !1723)
!3640 = !DILocation(line: 78, column: 25, scope: !1726, inlinedAt: !1723)
!3641 = !DILocation(line: 78, column: 19, scope: !1726, inlinedAt: !1723)
!3642 = !DILocation(line: 78, column: 39, scope: !1726, inlinedAt: !1723)
!3643 = !DILocation(line: 78, column: 70, scope: !1726, inlinedAt: !1723)
!3644 = !DILocation(line: 78, column: 12, scope: !1726, inlinedAt: !1723)
!3645 = !DILocation(line: 977, column: 1, scope: !1573)
!3646 = !DISubprogram(name: "x264_cabac_encode_init_core", scope: !602, file: !602, line: 54, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !1433}
!3649 = !DILocation(line: 0, scope: !2182)
!3650 = !DILocation(line: 336, column: 20, scope: !2182)
!3651 = !DILocation(line: 337, column: 36, scope: !2182)
!3652 = !DILocation(line: 337, column: 24, scope: !2182)
!3653 = !DILocation(line: 337, column: 51, scope: !2182)
!3654 = !DILocation(line: 338, column: 51, scope: !2182)
!3655 = !DILocation(line: 338, column: 24, scope: !2182)
!3656 = !DILocation(line: 341, column: 16, scope: !2201)
!3657 = !DILocation(line: 341, column: 20, scope: !2201)
!3658 = !DILocation(line: 341, column: 36, scope: !2201)
!3659 = !DILocation(line: 341, column: 24, scope: !2201)
!3660 = !DILocation(line: 341, column: 9, scope: !2182)
!3661 = !DILocation(line: 343, column: 16, scope: !2206)
!3662 = !DILocation(line: 343, column: 20, scope: !2206)
!3663 = !DILocation(line: 343, column: 36, scope: !2206)
!3664 = !DILocation(line: 343, column: 24, scope: !2206)
!3665 = !DILocation(line: 343, column: 9, scope: !2182)
!3666 = !DILocation(line: 346, column: 22, scope: !2194)
!3667 = !DILocation(line: 0, scope: !2194)
!3668 = !DILocation(line: 346, column: 57, scope: !2213)
!3669 = !DILocation(line: 346, column: 5, scope: !2194)
!3670 = !DILocation(line: 351, column: 40, scope: !2182)
!3671 = !DILocation(line: 351, column: 5, scope: !2182)
!3672 = !DILocation(line: 352, column: 1, scope: !2182)
!3673 = !DILocation(line: 348, column: 44, scope: !2216)
!3674 = !DILocation(line: 348, column: 9, scope: !2216)
!3675 = !DILocation(line: 349, column: 19, scope: !2216)
!3676 = !DILocation(line: 349, column: 23, scope: !2216)
!3677 = !DILocation(line: 346, column: 67, scope: !2213)
!3678 = distinct !{!3678, !3669, !3679}
!3679 = !DILocation(line: 350, column: 5, scope: !2194)
!3680 = distinct !DIAssignID()
!3681 = !DILocation(line: 0, scope: !2336)
!3682 = !DILocation(line: 419, column: 5, scope: !2336)
!3683 = !DILocation(line: 423, column: 5, scope: !2336)
!3684 = !DILocation(line: 424, column: 23, scope: !2336)
!3685 = !DILocation(line: 424, column: 11, scope: !2336)
!3686 = !DILocation(line: 424, column: 34, scope: !2336)
!3687 = !DILocation(line: 424, column: 56, scope: !2336)
!3688 = !DILocation(line: 424, column: 54, scope: !2336)
!3689 = !DILocation(line: 425, column: 11, scope: !2336)
!3690 = !DILocation(line: 425, column: 56, scope: !2336)
!3691 = !DILocation(line: 425, column: 54, scope: !2336)
!3692 = !DILocation(line: 426, column: 52, scope: !2336)
!3693 = !DILocation(line: 426, column: 80, scope: !2336)
!3694 = !DILocation(line: 426, column: 40, scope: !2336)
!3695 = !DILocation(line: 427, column: 80, scope: !2336)
!3696 = !DILocation(line: 427, column: 40, scope: !2336)
!3697 = !DILocation(line: 426, column: 21, scope: !2336)
!3698 = !DILocation(line: 0, scope: !2365, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 426, column: 21, scope: !2336)
!3700 = !DILocation(line: 239, column: 21, scope: !2365, inlinedAt: !3699)
!3701 = !DILocation(line: 239, column: 39, scope: !2365, inlinedAt: !3699)
!3702 = !DILocation(line: 239, column: 33, scope: !2365, inlinedAt: !3699)
!3703 = !DILocation(line: 240, column: 21, scope: !2365, inlinedAt: !3699)
!3704 = !DILocation(line: 240, column: 39, scope: !2365, inlinedAt: !3699)
!3705 = !DILocation(line: 240, column: 33, scope: !2365, inlinedAt: !3699)
!3706 = !DILocation(line: 241, column: 20, scope: !2365, inlinedAt: !3699)
!3707 = !DILocation(line: 241, column: 34, scope: !2365, inlinedAt: !3699)
!3708 = !DILocation(line: 241, column: 25, scope: !2365, inlinedAt: !3699)
!3709 = !DILocation(line: 242, column: 20, scope: !2365, inlinedAt: !3699)
!3710 = !DILocation(line: 242, column: 34, scope: !2365, inlinedAt: !3699)
!3711 = !DILocation(line: 242, column: 25, scope: !2365, inlinedAt: !3699)
!3712 = !DILocation(line: 430, column: 11, scope: !2336)
!3713 = !DILocation(line: 431, column: 11, scope: !2336)
!3714 = !DILocation(line: 0, scope: !2389, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 433, column: 12, scope: !2336)
!3716 = !DILocation(line: 329, column: 17, scope: !2389, inlinedAt: !3715)
!3717 = !DILocation(line: 329, column: 13, scope: !2389, inlinedAt: !3715)
!3718 = !DILocation(line: 433, column: 12, scope: !2336)
!3719 = !DILocation(line: 434, column: 1, scope: !2336)
!3720 = !DILocation(line: 433, column: 5, scope: !2336)
!3721 = distinct !DISubprogram(name: "block_residual_write_cabac", scope: !3, file: !3, line: 558, type: !3722, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !141, !1433, !152, !853}
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3742, !3744, !3746}
!3725 = !DILocalVariable(name: "h", arg: 1, scope: !3721, file: !3, line: 558, type: !141)
!3726 = !DILocalVariable(name: "cb", arg: 2, scope: !3721, file: !3, line: 558, type: !1433)
!3727 = !DILocalVariable(name: "i_ctxBlockCat", arg: 3, scope: !3721, file: !3, line: 558, type: !152)
!3728 = !DILocalVariable(name: "l", arg: 4, scope: !3721, file: !3, line: 558, type: !853)
!3729 = !DILocalVariable(name: "i_ctx_sig", scope: !3721, file: !3, line: 560, type: !1438)
!3730 = !DILocalVariable(name: "i_ctx_last", scope: !3721, file: !3, line: 561, type: !1438)
!3731 = !DILocalVariable(name: "i_ctx_level", scope: !3721, file: !3, line: 562, type: !1438)
!3732 = !DILocalVariable(name: "sig_offset", scope: !3721, file: !3, line: 563, type: !486)
!3733 = !DILocalVariable(name: "i_coeff_abs_m1", scope: !3721, file: !3, line: 564, type: !501)
!3734 = !DILocalVariable(name: "i_coeff_sign", scope: !3721, file: !3, line: 565, type: !501)
!3735 = !DILocalVariable(name: "i_coeff", scope: !3721, file: !3, line: 566, type: !152)
!3736 = !DILocalVariable(name: "i_last", scope: !3721, file: !3, line: 567, type: !152)
!3737 = !DILocalVariable(name: "node_ctx", scope: !3721, file: !3, line: 568, type: !152)
!3738 = !DILocalVariable(name: "i", scope: !3721, file: !3, line: 569, type: !152)
!3739 = !DILocalVariable(name: "i_count_m1", scope: !3740, file: !3, line: 604, type: !1438)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 603, column: 5)
!3741 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 602, column: 9)
!3742 = !DILocalVariable(name: "i_count_m1", scope: !3743, file: !3, line: 609, type: !1438)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 608, column: 5)
!3744 = !DILocalVariable(name: "i_prefix", scope: !3745, file: !3, line: 615, type: !152)
!3745 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 614, column: 5)
!3746 = !DILocalVariable(name: "ctx", scope: !3745, file: !3, line: 615, type: !152)
!3747 = distinct !DIAssignID()
!3748 = !DILocation(line: 0, scope: !3721)
!3749 = distinct !DIAssignID()
!3750 = !DILocation(line: 560, column: 63, scope: !3721)
!3751 = !DILocation(line: 560, column: 27, scope: !3721)
!3752 = !DILocation(line: 561, column: 28, scope: !3721)
!3753 = !DILocation(line: 562, column: 29, scope: !3721)
!3754 = !DILocation(line: 563, column: 33, scope: !3721)
!3755 = !DILocation(line: 564, column: 5, scope: !3721)
!3756 = !DILocation(line: 565, column: 5, scope: !3721)
!3757 = !DILocation(line: 571, column: 24, scope: !3721)
!3758 = !DILocation(line: 571, column: 14, scope: !3721)
!3759 = !DILocation(line: 602, column: 23, scope: !3741)
!3760 = !DILocation(line: 602, column: 9, scope: !3721)
!3761 = !DILocation(line: 605, column: 9, scope: !3740)
!3762 = !DILocation(line: 605, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 605, column: 9)
!3764 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 605, column: 9)
!3765 = !DILocation(line: 605, column: 9, scope: !3764)
!3766 = !DILocation(line: 605, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 605, column: 9)
!3768 = !DILocation(line: 605, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 605, column: 9)
!3770 = !DILocation(line: 605, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 605, column: 9)
!3772 = !DILocation(line: 605, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 605, column: 9)
!3774 = distinct !{!3774, !3761, !3761}
!3775 = !DILocation(line: 605, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 605, column: 9)
!3777 = !DILocation(line: 609, column: 32, scope: !3743)
!3778 = !DILocation(line: 0, scope: !3743)
!3779 = !DILocation(line: 610, column: 9, scope: !3743)
!3780 = !DILocation(line: 610, column: 9, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 610, column: 9)
!3782 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 610, column: 9)
!3783 = !DILocation(line: 610, column: 9, scope: !3782)
!3784 = !DILocation(line: 610, column: 9, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 610, column: 9)
!3786 = !DILocation(line: 610, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 610, column: 9)
!3788 = !DILocation(line: 610, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 610, column: 9)
!3790 = !DILocation(line: 610, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 610, column: 9)
!3792 = distinct !{!3792, !3779, !3779}
!3793 = !DILocation(line: 610, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 610, column: 9)
!3795 = !DILocation(line: 0, scope: !3741)
!3796 = !DILocation(line: 613, column: 5, scope: !3721)
!3797 = !DILocation(line: 616, column: 16, scope: !3745)
!3798 = !DILocation(line: 619, column: 20, scope: !3745)
!3799 = !DILocation(line: 0, scope: !3745)
!3800 = !DILocation(line: 620, column: 15, scope: !3745)
!3801 = !DILocation(line: 620, column: 46, scope: !3745)
!3802 = !DILocation(line: 622, column: 13, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 622, column: 13)
!3804 = !DILocation(line: 622, column: 13, scope: !3745)
!3805 = !DILocation(line: 624, column: 13, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 623, column: 9)
!3807 = !DILocation(line: 625, column: 19, scope: !3806)
!3808 = !DILocation(line: 625, column: 52, scope: !3806)
!3809 = !DILocation(line: 626, column: 27, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 626, column: 13)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 626, column: 13)
!3812 = !DILocation(line: 626, column: 13, scope: !3811)
!3813 = !DILocation(line: 627, column: 17, scope: !3810)
!3814 = !DILocation(line: 626, column: 44, scope: !3810)
!3815 = distinct !{!3815, !3812, !3816}
!3816 = !DILocation(line: 627, column: 56, scope: !3811)
!3817 = !DILocation(line: 628, column: 17, scope: !3806)
!3818 = !DILocation(line: 629, column: 17, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 628, column: 17)
!3820 = !DILocation(line: 631, column: 77, scope: !3819)
!3821 = !DILocation(line: 631, column: 17, scope: !3819)
!3822 = !DILocation(line: 637, column: 13, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 636, column: 9)
!3824 = !DILocation(line: 0, scope: !3803)
!3825 = !DILocation(line: 641, column: 39, scope: !3745)
!3826 = !DILocation(line: 641, column: 9, scope: !3745)
!3827 = !DILocation(line: 642, column: 22, scope: !3721)
!3828 = !DILocation(line: 642, column: 5, scope: !3745)
!3829 = distinct !{!3829, !3796, !3830}
!3830 = !DILocation(line: 642, column: 26, scope: !3721)
!3831 = !DILocation(line: 643, column: 1, scope: !3721)
!3832 = distinct !DISubprogram(name: "x264_cabac_mb_type_intra", scope: !3, file: !3, line: 36, type: !3833, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !141, !1433, !152, !152, !152, !152, !152, !152, !152}
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3836 = !DILocalVariable(name: "h", arg: 1, scope: !3832, file: !3, line: 36, type: !141)
!3837 = !DILocalVariable(name: "cb", arg: 2, scope: !3832, file: !3, line: 36, type: !1433)
!3838 = !DILocalVariable(name: "i_mb_type", arg: 3, scope: !3832, file: !3, line: 36, type: !152)
!3839 = !DILocalVariable(name: "ctx0", arg: 4, scope: !3832, file: !3, line: 37, type: !152)
!3840 = !DILocalVariable(name: "ctx1", arg: 5, scope: !3832, file: !3, line: 37, type: !152)
!3841 = !DILocalVariable(name: "ctx2", arg: 6, scope: !3832, file: !3, line: 37, type: !152)
!3842 = !DILocalVariable(name: "ctx3", arg: 7, scope: !3832, file: !3, line: 37, type: !152)
!3843 = !DILocalVariable(name: "ctx4", arg: 8, scope: !3832, file: !3, line: 37, type: !152)
!3844 = !DILocalVariable(name: "ctx5", arg: 9, scope: !3832, file: !3, line: 37, type: !152)
!3845 = !DILocalVariable(name: "i_pred", scope: !3846, file: !3, line: 52, type: !152)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 51, column: 5)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 44, column: 14)
!3848 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 39, column: 9)
!3849 = !DILocation(line: 0, scope: !3832)
!3850 = !DILocation(line: 39, column: 28, scope: !3848)
!3851 = !DILocation(line: 41, column: 9, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 40, column: 5)
!3853 = !DILocation(line: 42, column: 5, scope: !3852)
!3854 = !DILocation(line: 44, column: 24, scope: !3847)
!3855 = !DILocation(line: 44, column: 14, scope: !3848)
!3856 = !DILocation(line: 46, column: 9, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 45, column: 5)
!3858 = !DILocation(line: 47, column: 9, scope: !3857)
!3859 = !DILocation(line: 48, column: 5, scope: !3857)
!3860 = !DILocation(line: 52, column: 55, scope: !3846)
!3861 = !DILocation(line: 52, column: 22, scope: !3846)
!3862 = !DILocation(line: 0, scope: !3846)
!3863 = !DILocation(line: 54, column: 9, scope: !3846)
!3864 = !DILocation(line: 55, column: 9, scope: !3846)
!3865 = !DILocation(line: 57, column: 60, scope: !3846)
!3866 = !DILocation(line: 57, column: 53, scope: !3846)
!3867 = !DILocation(line: 57, column: 52, scope: !3846)
!3868 = !DILocation(line: 57, column: 9, scope: !3846)
!3869 = !DILocation(line: 58, column: 19, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 58, column: 13)
!3871 = !DILocation(line: 58, column: 32, scope: !3870)
!3872 = !DILocation(line: 58, column: 13, scope: !3846)
!3873 = !DILocation(line: 59, column: 13, scope: !3870)
!3874 = !DILocation(line: 62, column: 13, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 61, column: 9)
!3876 = !DILocation(line: 63, column: 62, scope: !3875)
!3877 = !DILocation(line: 63, column: 74, scope: !3875)
!3878 = !DILocation(line: 63, column: 13, scope: !3875)
!3879 = !DILocation(line: 65, column: 53, scope: !3846)
!3880 = !DILocation(line: 65, column: 9, scope: !3846)
!3881 = !DILocation(line: 66, column: 58, scope: !3846)
!3882 = !DILocation(line: 66, column: 9, scope: !3846)
!3883 = !DILocation(line: 68, column: 1, scope: !3832)
!3884 = !DISubprogram(name: "x264_cabac_encode_flush", scope: !602, file: !602, line: 63, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3885 = !DISubprogram(name: "x264_cabac_encode_terminal_c", scope: !602, file: !602, line: 60, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3886 = !DISubprogram(name: "x264_mb_predict_mv", scope: !6, file: !6, line: 299, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !141, !152, !152, !152, !853}
!3889 = !DILocation(line: 0, scope: !1463)
!3890 = !DILocation(line: 356, column: 23, scope: !1463)
!3891 = !DILocation(line: 357, column: 25, scope: !1463)
!3892 = !DILocation(line: 392, column: 15, scope: !1481)
!3893 = !DILocation(line: 0, scope: !1481)
!3894 = !DILocation(line: 392, column: 9, scope: !1463)
!3895 = !DILocation(line: 393, column: 9, scope: !1481)
!3896 = !DILocation(line: 396, column: 9, scope: !1480)
!3897 = !DILocation(line: 397, column: 19, scope: !1479)
!3898 = !DILocation(line: 397, column: 13, scope: !1480)
!3899 = !DILocation(line: 0, scope: !1483)
!3900 = !DILocation(line: 406, column: 57, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 405, column: 13)
!3902 = !DILocation(line: 406, column: 17, scope: !3901)
!3903 = !DILocation(line: 407, column: 55, scope: !1484)
!3904 = !DILocation(line: 407, column: 13, scope: !1484)
!3905 = !DILocation(line: 0, scope: !1477)
!3906 = !DILocation(line: 399, column: 31, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 399, column: 13)
!3908 = !DILocation(line: 399, column: 13, scope: !1477)
!3909 = !DILocation(line: 401, column: 66, scope: !1478)
!3910 = !DILocation(line: 401, column: 55, scope: !1478)
!3911 = !DILocation(line: 401, column: 53, scope: !1478)
!3912 = !DILocation(line: 401, column: 13, scope: !1478)
!3913 = !DILocation(line: 402, column: 9, scope: !1478)
!3914 = !DILocation(line: 400, column: 66, scope: !3907)
!3915 = !DILocation(line: 400, column: 59, scope: !3907)
!3916 = !DILocation(line: 400, column: 57, scope: !3907)
!3917 = !DILocation(line: 400, column: 17, scope: !3907)
!3918 = !DILocation(line: 399, column: 41, scope: !3907)
!3919 = distinct !{!3919, !3908, !3920}
!3920 = !DILocation(line: 400, column: 73, scope: !1477)
!3921 = !DILocation(line: 409, column: 43, scope: !1480)
!3922 = !DILocation(line: 409, column: 9, scope: !1480)
!3923 = !DILocation(line: 414, column: 12, scope: !1463)
!3924 = !DILocation(line: 414, column: 5, scope: !1463)
!3925 = !DISubprogram(name: "x264_cabac_encode_ue_bypass", scope: !602, file: !602, line: 62, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3926 = !DISubprogram(name: "x264_cabac_encode_bypass_c", scope: !602, file: !602, line: 58, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
