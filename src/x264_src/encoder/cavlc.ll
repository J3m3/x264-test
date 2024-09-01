; ModuleID = 'x264_src/encoder/cavlc.c'
source_filename = "x264_src/encoder/cavlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_macroblock_write_cavlc.i_offsets = internal unnamed_addr constant [3 x i8] c"\05\17\00", align 1, !dbg !0
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1, !dbg !1412
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !1417
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1, !dbg !1423
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1, !dbg !1426
@sub_mb_type_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1, !dbg !1428
@sub_mb_type_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1, !dbg !1431
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16, !dbg !1434
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16, !dbg !1437
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 16, !dbg !1441
@intra4x4_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00", align 16, !dbg !1445
@inter_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", align 16, !dbg !1448
@ct_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 16, !dbg !1458
@x264_coeff0_token = external local_unnamed_addr constant [5 x %struct.vlc_t], align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16, !dbg !1409
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16, !dbg !1450
@block_residual_write_cavlc.ctz_index = internal unnamed_addr constant [8 x i8] c"\03\00\01\00\02\00\01\00", align 1, !dbg !1461
@block_residual_write_cavlc.count_cat = internal unnamed_addr constant [5 x i8] c"\10\0F\10\04\0F", align 1, !dbg !1491
@x264_coeff_token = external local_unnamed_addr constant [5 x [16 x [4 x %struct.vlc_t]]], align 16
@x264_level_token = external local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]], align 16
@x264_total_zeros_dc = external local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 16
@x264_total_zeros = external local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 16
@x264_run_before = external local_unnamed_addr constant [7 x [16 x %struct.vlc_t]], align 16
@block_residual_write_cavlc_escape.next_suffix = internal unnamed_addr constant [7 x i16] [i16 0, i16 3, i16 6, i16 12, i16 24, i16 48, i16 -1], align 2, !dbg !1494
@.str = private unnamed_addr constant [55 x i8] c"OVERFLOW levelcode=%d is only allowed in High Profile\0A\00", align 1, !dbg !1510

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %h) local_unnamed_addr #0 !dbg !2 {
entry:
    #dbg_value(ptr %h, !1516, !DIExpression(), !1605)
  %bs = getelementptr inbounds i8, ptr %h, i64 1792, !dbg !1606
    #dbg_value(ptr %bs, !1517, !DIExpression(), !1605)
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384, !dbg !1607
  %0 = load i32, ptr %i_type, align 8, !dbg !1607
    #dbg_value(i32 %0, !1518, !DIExpression(), !1605)
  %i_type1 = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !1608
  %1 = load i32, ptr %i_type1, align 16, !dbg !1608
  %idxprom = sext i32 %1 to i64, !dbg !1609
  %arrayidx = getelementptr inbounds [3 x i8], ptr @x264_macroblock_write_cavlc.i_offsets, i64 0, i64 %idxprom, !dbg !1609
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1609
  %conv = zext i8 %2 to i32, !dbg !1609
    #dbg_value(i32 %conv, !1519, !DIExpression(), !1605)
    #dbg_value(ptr %bs, !1610, !DIExpression(), !1615)
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !1617
  %3 = load ptr, ptr %p.i, align 8, !dbg !1617
  %4 = load ptr, ptr %bs, align 8, !dbg !1618
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i64, !dbg !1619
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64, !dbg !1619
  %sub.ptr.sub.i.neg = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i, !dbg !1619
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824, !dbg !1620
  %5 = load i32, ptr %i_left.i, align 8, !dbg !1620
  %sub.ptr.sub.tr.i.neg = trunc i64 %sub.ptr.sub.i.neg to i32, !dbg !1621
  %.neg2074 = shl i32 %sub.ptr.sub.tr.i.neg, 3, !dbg !1621
  %reass.sub.i.neg2073 = add i32 %.neg2074, %5, !dbg !1621
    #dbg_value(!DIArgList(i64 %sub.ptr.lhs.cast.i, i32 %5, i64 %sub.ptr.rhs.cast.i), !1520, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 64, DW_OP_stack_value), !1605)
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !1622
  %6 = load i32, ptr %b_mbaff, align 4, !dbg !1622
  %tobool.not = icmp eq i32 %6, 0, !dbg !1624
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1625

land.lhs.true:                                    ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1626
  %7 = load i32, ptr %i_mb_y, align 4, !dbg !1626
  %and = and i32 %7, 1, !dbg !1627
  %tobool4.not = icmp eq i32 %and, 0, !dbg !1627
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false, !dbg !1628

lor.lhs.false:                                    ; preds = %land.lhs.true
  %type = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !1629
  %8 = load ptr, ptr %type, align 8, !dbg !1629
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !1629
  %9 = load i32, ptr %i_mb_xy, align 8, !dbg !1629
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !1629
  %10 = load i32, ptr %i_mb_stride, align 4, !dbg !1629
  %sub = sub nsw i32 %9, %10, !dbg !1629
  %idxprom8 = sext i32 %sub to i64, !dbg !1629
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8, !dbg !1629
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !1629
  switch i8 %11, label %if.end [
    i8 6, label %if.then
    i8 18, label %if.then
  ], !dbg !1629

if.then:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %land.lhs.true
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1630
  %12 = load i32, ptr %b_interlaced, align 4, !dbg !1630
    #dbg_value(ptr %bs, !1632, !DIExpression(), !1638)
    #dbg_value(i32 %12, !1637, !DIExpression(), !1638)
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !1640
  %13 = load i64, ptr %cur_bits.i, align 8, !dbg !1641
  %shl.i = shl i64 %13, 1, !dbg !1641
  %conv.i = zext i32 %12 to i64, !dbg !1642
  %or.i = or i64 %shl.i, %conv.i, !dbg !1643
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !1643
  %dec.i = add nsw i32 %5, -1, !dbg !1644
  store i32 %dec.i, ptr %i_left.i, align 8, !dbg !1644
  %cmp.i = icmp eq i32 %dec.i, 32, !dbg !1645
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !1647

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32, !dbg !1648
    #dbg_value(i32 %conv6.i, !1650, !DIExpression(), !1656)
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i), !dbg !1658
  store i32 %add5.i.i, ptr %3, align 4, !dbg !1659
  %14 = load ptr, ptr %p.i, align 8, !dbg !1660
  %add.ptr.i = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1660
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !1660
  store i32 64, ptr %i_left.i, align 8, !dbg !1661
  br label %if.end, !dbg !1662

if.end:                                           ; preds = %if.then.i, %if.then, %lor.lhs.false, %entry
  %15 = phi ptr [ %add.ptr.i, %if.then.i ], [ %3, %if.then ], [ %3, %lor.lhs.false ], [ %3, %entry ]
  %16 = phi i32 [ 64, %if.then.i ], [ %dec.i, %if.then ], [ %5, %lor.lhs.false ], [ %5, %entry ]
  %cmp26 = icmp eq i32 %0, 3, !dbg !1663
  br i1 %cmp26, label %if.then28, label %if.end80, !dbg !1664

if.then28:                                        ; preds = %if.end
  %17 = load ptr, ptr %bs, align 8, !dbg !1665
    #dbg_value(ptr %17, !1522, !DIExpression(), !1666)
    #dbg_value(ptr %bs, !1667, !DIExpression(), !1673)
    #dbg_value(i32 %conv, !1672, !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value), !1673)
  %add.i = add nuw nsw i32 %conv, 26, !dbg !1675
  %idxprom.i = zext nneg i32 %add.i to i64, !dbg !1676
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i, !dbg !1676
  %18 = load i8, ptr %arrayidx.i, align 1, !dbg !1676
  %conv.i1245 = zext i8 %18 to i32, !dbg !1676
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1684)
    #dbg_value(i32 %conv.i1245, !1682, !DIExpression(), !1684)
    #dbg_value(i32 %add.i, !1683, !DIExpression(), !1684)
  %cur_bits.i.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !1686
  %19 = load i64, ptr %cur_bits.i.i, align 8, !dbg !1686
  %sh_prom.i.i = zext nneg i8 %18 to i64, !dbg !1689
  %shl.i.i = shl i64 %19, %sh_prom.i.i, !dbg !1689
  %or.i.i = or i64 %shl.i.i, %idxprom.i, !dbg !1690
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !1691
  %sub.i.i = sub nsw i32 %16, %conv.i1245, !dbg !1692
  store i32 %sub.i.i, ptr %i_left.i, align 8, !dbg !1692
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !1693
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_ue.exit, !dbg !1695

if.then.i.i:                                      ; preds = %if.then28
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64, !dbg !1696
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !1696
    #dbg_value(i64 %shl7.i.i, !1698, !DIExpression(), !1703)
    #dbg_value(i64 %shl7.i.i, !1705, !DIExpression(), !1710)
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i), !dbg !1712
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !1713
  store i32 %conv8.i.i, ptr %15, align 4, !dbg !1714
  %20 = load i32, ptr %i_left.i, align 8, !dbg !1715
  %add.i.i = add nsw i32 %20, 32, !dbg !1715
  %21 = load ptr, ptr %p.i, align 8, !dbg !1716
  %add.ptr.i.i = getelementptr inbounds i8, ptr %21, i64 4, !dbg !1716
  store ptr %add.ptr.i.i, ptr %p.i, align 8, !dbg !1716
  %.pre2127 = load ptr, ptr %bs, align 8, !dbg !1717
  %.pre2128 = load i64, ptr %cur_bits.i.i, align 8, !dbg !1719
  br label %bs_write_ue.exit, !dbg !1727

bs_write_ue.exit:                                 ; preds = %if.then28, %if.then.i.i
  %22 = phi i64 [ %or.i.i, %if.then28 ], [ %.pre2128, %if.then.i.i ], !dbg !1719
  %23 = phi i32 [ %sub.i.i, %if.then28 ], [ %add.i.i, %if.then.i.i ], !dbg !1728
  %24 = phi ptr [ %17, %if.then28 ], [ %.pre2127, %if.then.i.i ], !dbg !1717
  %25 = phi ptr [ %15, %if.then28 ], [ %add.ptr.i.i, %if.then.i.i ], !dbg !1729
    #dbg_value(ptr %bs, !1610, !DIExpression(), !1730)
  %sub.ptr.lhs.cast.i1247 = ptrtoint ptr %25 to i64, !dbg !1731
  %sub.ptr.rhs.cast.i1248 = ptrtoint ptr %24 to i64, !dbg !1731
  %sub.ptr.sub.i1249 = sub i64 %sub.ptr.lhs.cast.i1247, %sub.ptr.rhs.cast.i1248, !dbg !1731
  %sub.ptr.sub.tr.i1251 = trunc i64 %sub.ptr.sub.i1249 to i32, !dbg !1732
  %26 = shl i32 %sub.ptr.sub.tr.i1251, 3, !dbg !1732
  %reass.sub.i1252 = sub i32 %26, %23, !dbg !1732
    #dbg_value(i32 %reass.sub.i1252, !1521, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !1605)
  %stat = getelementptr inbounds i8, ptr %h, i64 26712, !dbg !1733
  %27 = load i32, ptr %stat, align 8, !dbg !1734
  %sub31 = add i32 %27, %reass.sub.i.neg2073, !dbg !1735
  %add32 = add i32 %sub31, %reass.sub.i1252, !dbg !1734
  store i32 %add32, ptr %stat, align 8, !dbg !1734
    #dbg_value(ptr %bs, !1725, !DIExpression(), !1736)
  %and.i = and i32 %23, 7, !dbg !1737
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1738)
    #dbg_value(i32 %and.i, !1682, !DIExpression(), !1738)
    #dbg_value(i32 0, !1683, !DIExpression(), !1738)
  %sh_prom.i.i1256 = zext nneg i32 %and.i to i64, !dbg !1739
  %shl.i.i1257 = shl i64 %22, %sh_prom.i.i1256, !dbg !1739
  store i64 %shl.i.i1257, ptr %cur_bits.i.i, align 8, !dbg !1740
  %sub.i.i1258 = and i32 %23, -8, !dbg !1741
  store i32 %sub.i.i1258, ptr %i_left.i, align 8, !dbg !1741
  %cmp.i.i1259 = icmp slt i32 %sub.i.i1258, 33, !dbg !1742
  br i1 %cmp.i.i1259, label %if.then.i.i1261, label %bs_align_0.exit, !dbg !1743

if.then.i.i1261:                                  ; preds = %bs_write_ue.exit
  %sh_prom6.i.i1262 = zext nneg i32 %sub.i.i1258 to i64, !dbg !1744
    #dbg_value(!DIArgList(i64 %shl.i.i1257, i64 %sh_prom6.i.i1262), !1698, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !1745)
    #dbg_value(!DIArgList(i64 %shl.i.i1257, i64 %sh_prom6.i.i1262), !1705, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !1747)
  %28 = tail call i64 @llvm.bswap.i64(i64 %shl.i.i1257), !dbg !1749
  %add.i.i.i.i1263 = lshr i64 %28, %sh_prom6.i.i1262, !dbg !1749
  %conv8.i.i1264 = trunc i64 %add.i.i.i.i1263 to i32, !dbg !1750
  store i32 %conv8.i.i1264, ptr %25, align 4, !dbg !1751
  %29 = load i32, ptr %i_left.i, align 8, !dbg !1752
  %add.i.i1266 = add nsw i32 %29, 32, !dbg !1752
  store i32 %add.i.i1266, ptr %i_left.i, align 8, !dbg !1752
  %30 = load ptr, ptr %p.i, align 8, !dbg !1753
  %add.ptr.i.i1267 = getelementptr inbounds i8, ptr %30, i64 4, !dbg !1753
  store ptr %add.ptr.i.i1267, ptr %p.i, align 8, !dbg !1753
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8, !dbg !1754
  br label %bs_align_0.exit, !dbg !1759

bs_align_0.exit:                                  ; preds = %bs_write_ue.exit, %if.then.i.i1261
  %31 = phi ptr [ %add.ptr.i.i1267, %if.then.i.i1261 ], [ %25, %bs_write_ue.exit ], !dbg !1760
  %32 = phi i32 [ %add.i.i1266, %if.then.i.i1261 ], [ %sub.i.i1258, %bs_write_ue.exit ], !dbg !1761
  %33 = phi i64 [ %.pre.i, %if.then.i.i1261 ], [ %shl.i.i1257, %bs_write_ue.exit ], !dbg !1754
    #dbg_value(ptr %bs, !1757, !DIExpression(), !1762)
  %and.i.i = and i32 %32, 31, !dbg !1763
  %sh_prom.i5.i = zext nneg i32 %and.i.i to i64, !dbg !1764
  %shl.i6.i = shl i64 %33, %sh_prom.i5.i, !dbg !1764
  %conv.i.i1260 = trunc i64 %shl.i6.i to i32, !dbg !1765
    #dbg_value(i32 %conv.i.i1260, !1650, !DIExpression(), !1766)
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i.i1260), !dbg !1768
  store i32 %add5.i.i.i, ptr %31, align 4, !dbg !1769
  %34 = load i32, ptr %i_left.i, align 8, !dbg !1770
  %div.neg.i.i = sdiv i32 %34, -8, !dbg !1771
  %35 = load ptr, ptr %p.i, align 8, !dbg !1772
  %36 = sext i32 %div.neg.i.i to i64, !dbg !1772
  %37 = getelementptr i8, ptr %35, i64 %36, !dbg !1772
  %add.ptr.i8.i = getelementptr i8, ptr %37, i64 8, !dbg !1772
  store ptr %add.ptr.i8.i, ptr %p.i, align 8, !dbg !1772
  store i32 64, ptr %i_left.i, align 8, !dbg !1773
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !1774
  %38 = load ptr, ptr %p_fenc, align 16, !dbg !1775
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %add.ptr.i8.i, ptr noundef nonnull align 1 dereferenceable(256) %38, i64 256, i1 false), !dbg !1776
  %39 = load ptr, ptr %p.i, align 8, !dbg !1777
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 256, !dbg !1777
  store ptr %add.ptr, ptr %p.i, align 8, !dbg !1777
    #dbg_value(i32 0, !1525, !DIExpression(), !1778)
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 21352
    #dbg_value(i32 0, !1525, !DIExpression(), !1778)
    #dbg_value(i64 0, !1525, !DIExpression(), !1778)
  %40 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %41 = load i64, ptr %40, align 1, !dbg !1781
  store i64 %41, ptr %add.ptr, align 1, !dbg !1781
    #dbg_value(i64 1, !1525, !DIExpression(), !1778)
  %42 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.1 = getelementptr inbounds i8, ptr %42, i64 8, !dbg !1783
  %43 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.1 = getelementptr inbounds i8, ptr %43, i64 16, !dbg !1784
  %44 = load i64, ptr %add.ptr46.1, align 1, !dbg !1781
  store i64 %44, ptr %add.ptr39.1, align 1, !dbg !1781
    #dbg_value(i64 2, !1525, !DIExpression(), !1778)
  %45 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.2 = getelementptr inbounds i8, ptr %45, i64 16, !dbg !1783
  %46 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.2 = getelementptr inbounds i8, ptr %46, i64 32, !dbg !1784
  %47 = load i64, ptr %add.ptr46.2, align 1, !dbg !1781
  store i64 %47, ptr %add.ptr39.2, align 1, !dbg !1781
    #dbg_value(i64 3, !1525, !DIExpression(), !1778)
  %48 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.3 = getelementptr inbounds i8, ptr %48, i64 24, !dbg !1783
  %49 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.3 = getelementptr inbounds i8, ptr %49, i64 48, !dbg !1784
  %50 = load i64, ptr %add.ptr46.3, align 1, !dbg !1781
  store i64 %50, ptr %add.ptr39.3, align 1, !dbg !1781
    #dbg_value(i64 4, !1525, !DIExpression(), !1778)
  %51 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.4 = getelementptr inbounds i8, ptr %51, i64 32, !dbg !1783
  %52 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.4 = getelementptr inbounds i8, ptr %52, i64 64, !dbg !1784
  %53 = load i64, ptr %add.ptr46.4, align 1, !dbg !1781
  store i64 %53, ptr %add.ptr39.4, align 1, !dbg !1781
    #dbg_value(i64 5, !1525, !DIExpression(), !1778)
  %54 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.5 = getelementptr inbounds i8, ptr %54, i64 40, !dbg !1783
  %55 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.5 = getelementptr inbounds i8, ptr %55, i64 80, !dbg !1784
  %56 = load i64, ptr %add.ptr46.5, align 1, !dbg !1781
  store i64 %56, ptr %add.ptr39.5, align 1, !dbg !1781
    #dbg_value(i64 6, !1525, !DIExpression(), !1778)
  %57 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.6 = getelementptr inbounds i8, ptr %57, i64 48, !dbg !1783
  %58 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.6 = getelementptr inbounds i8, ptr %58, i64 96, !dbg !1784
  %59 = load i64, ptr %add.ptr46.6, align 1, !dbg !1781
  store i64 %59, ptr %add.ptr39.6, align 1, !dbg !1781
    #dbg_value(i64 7, !1525, !DIExpression(), !1778)
  %60 = load ptr, ptr %p.i, align 8, !dbg !1782
  %add.ptr39.7 = getelementptr inbounds i8, ptr %60, i64 56, !dbg !1783
  %61 = load ptr, ptr %arrayidx43, align 8, !dbg !1779
  %add.ptr46.7 = getelementptr inbounds i8, ptr %61, i64 112, !dbg !1784
  %62 = load i64, ptr %add.ptr46.7, align 1, !dbg !1781
  store i64 %62, ptr %add.ptr39.7, align 1, !dbg !1781
    #dbg_value(i64 8, !1525, !DIExpression(), !1778)
  %63 = load ptr, ptr %p.i, align 8, !dbg !1785
  %add.ptr48 = getelementptr inbounds i8, ptr %63, i64 64, !dbg !1785
  store ptr %add.ptr48, ptr %p.i, align 8, !dbg !1785
    #dbg_value(i32 0, !1527, !DIExpression(), !1786)
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 21360
    #dbg_value(i64 0, !1527, !DIExpression(), !1786)
  %64 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %65 = load i64, ptr %64, align 1, !dbg !1789
  store i64 %65, ptr %add.ptr48, align 1, !dbg !1789
    #dbg_value(i64 1, !1527, !DIExpression(), !1786)
  %66 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.1 = getelementptr inbounds i8, ptr %66, i64 8, !dbg !1791
  %67 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.1 = getelementptr inbounds i8, ptr %67, i64 16, !dbg !1792
  %68 = load i64, ptr %add.ptr65.1, align 1, !dbg !1789
  store i64 %68, ptr %add.ptr58.1, align 1, !dbg !1789
    #dbg_value(i64 2, !1527, !DIExpression(), !1786)
  %69 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.2 = getelementptr inbounds i8, ptr %69, i64 16, !dbg !1791
  %70 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.2 = getelementptr inbounds i8, ptr %70, i64 32, !dbg !1792
  %71 = load i64, ptr %add.ptr65.2, align 1, !dbg !1789
  store i64 %71, ptr %add.ptr58.2, align 1, !dbg !1789
    #dbg_value(i64 3, !1527, !DIExpression(), !1786)
  %72 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.3 = getelementptr inbounds i8, ptr %72, i64 24, !dbg !1791
  %73 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.3 = getelementptr inbounds i8, ptr %73, i64 48, !dbg !1792
  %74 = load i64, ptr %add.ptr65.3, align 1, !dbg !1789
  store i64 %74, ptr %add.ptr58.3, align 1, !dbg !1789
    #dbg_value(i64 4, !1527, !DIExpression(), !1786)
  %75 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.4 = getelementptr inbounds i8, ptr %75, i64 32, !dbg !1791
  %76 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.4 = getelementptr inbounds i8, ptr %76, i64 64, !dbg !1792
  %77 = load i64, ptr %add.ptr65.4, align 1, !dbg !1789
  store i64 %77, ptr %add.ptr58.4, align 1, !dbg !1789
    #dbg_value(i64 5, !1527, !DIExpression(), !1786)
  %78 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.5 = getelementptr inbounds i8, ptr %78, i64 40, !dbg !1791
  %79 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.5 = getelementptr inbounds i8, ptr %79, i64 80, !dbg !1792
  %80 = load i64, ptr %add.ptr65.5, align 1, !dbg !1789
  store i64 %80, ptr %add.ptr58.5, align 1, !dbg !1789
    #dbg_value(i64 6, !1527, !DIExpression(), !1786)
  %81 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.6 = getelementptr inbounds i8, ptr %81, i64 48, !dbg !1791
  %82 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.6 = getelementptr inbounds i8, ptr %82, i64 96, !dbg !1792
  %83 = load i64, ptr %add.ptr65.6, align 1, !dbg !1789
  store i64 %83, ptr %add.ptr58.6, align 1, !dbg !1789
    #dbg_value(i64 7, !1527, !DIExpression(), !1786)
  %84 = load ptr, ptr %p.i, align 8, !dbg !1790
  %add.ptr58.7 = getelementptr inbounds i8, ptr %84, i64 56, !dbg !1791
  %85 = load ptr, ptr %arrayidx62, align 16, !dbg !1787
  %add.ptr65.7 = getelementptr inbounds i8, ptr %85, i64 112, !dbg !1792
  %86 = load i64, ptr %add.ptr65.7, align 1, !dbg !1789
  store i64 %86, ptr %add.ptr58.7, align 1, !dbg !1789
    #dbg_value(i64 8, !1527, !DIExpression(), !1786)
  %87 = load ptr, ptr %p.i, align 8, !dbg !1793
  %add.ptr70 = getelementptr inbounds i8, ptr %87, i64 64, !dbg !1793
  %p_end = getelementptr inbounds i8, ptr %h, i64 1808, !dbg !1794
  %88 = load ptr, ptr %p_end, align 8, !dbg !1794
  %sub.ptr.lhs.cast = ptrtoint ptr %88 to i64, !dbg !1795
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr70 to i64, !dbg !1795
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1795
    #dbg_value(ptr %bs, !1796, !DIExpression(), !1804)
    #dbg_value(ptr %add.ptr70, !1801, !DIExpression(), !1804)
    #dbg_value(i64 %sub.ptr.sub, !1802, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1804)
    #dbg_value(i64 %sub.ptr.rhs.cast, !1803, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !1804)
  %idx.ext.i = and i64 %sub.ptr.rhs.cast, 3, !dbg !1806
  %idx.neg.i = sub nsw i64 0, %idx.ext.i, !dbg !1806
  %add.ptr.i1268 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg.i, !dbg !1806
  store ptr %add.ptr.i1268, ptr %bs, align 8, !dbg !1807
  store ptr %add.ptr.i1268, ptr %p.i, align 8, !dbg !1808
  %sext = shl i64 %sub.ptr.sub, 32, !dbg !1809
  %idx.ext1.i = ashr exact i64 %sext, 32, !dbg !1809
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext1.i, !dbg !1809
  store ptr %add.ptr2.i, ptr %p_end, align 8, !dbg !1810
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32, !dbg !1811
  %89 = shl nuw nsw i32 %idx.ext.tr.i, 3, !dbg !1811
  %conv4.i = sub nuw nsw i32 64, %89, !dbg !1811
  store i32 %conv4.i, ptr %i_left.i, align 8, !dbg !1812
  %90 = load i32, ptr %add.ptr.i1268, align 4, !dbg !1813
    #dbg_value(i32 %90, !1650, !DIExpression(), !1814)
  %add5.i.i1271 = tail call noundef i32 @llvm.bswap.i32(i32 %90), !dbg !1816
  %conv6.i1272 = zext i32 %add5.i.i1271 to i64, !dbg !1817
  %conv.i1274 = shl i64 %sub.ptr.rhs.cast, 3, !dbg !1818
  %91 = and i64 %conv.i1274, 24, !dbg !1818
  %mul8.i = sub nuw nsw i64 32, %91, !dbg !1818
  %shr.i = lshr i64 %conv6.i1272, %mul8.i, !dbg !1819
  store i64 %shr.i, ptr %cur_bits.i.i, align 8, !dbg !1819
  store ptr %17, ptr %bs, align 8, !dbg !1820
    #dbg_value(ptr %bs, !1610, !DIExpression(), !1821)
  %sub.ptr.lhs.cast.i1276 = ptrtoint ptr %add.ptr.i1268 to i64, !dbg !1823
  %sub.ptr.rhs.cast.i1277 = ptrtoint ptr %17 to i64, !dbg !1823
  %sub.ptr.sub.i1278 = sub i64 %sub.ptr.lhs.cast.i1276, %sub.ptr.rhs.cast.i1277, !dbg !1823
  %sub.ptr.sub.tr.i1280 = trunc i64 %sub.ptr.sub.i1278 to i32, !dbg !1824
  %92 = shl i32 %sub.ptr.sub.tr.i1280, 3, !dbg !1824
  %i_tex_bits = getelementptr inbounds i8, ptr %h, i64 26716, !dbg !1825
  %93 = load i32, ptr %i_tex_bits, align 4, !dbg !1826
  %reass.sub = sub i32 %89, %reass.sub.i1252, !dbg !1827
  %94 = add i32 %reass.sub, -64, !dbg !1827
  %sub76 = add i32 %94, %92, !dbg !1827
  %add79 = add nsw i32 %sub76, %93, !dbg !1826
  store i32 %add79, ptr %i_tex_bits, align 4, !dbg !1826
  br label %cleanup

if.end80:                                         ; preds = %if.end
  %or.cond = icmp ult i32 %0, 2, !dbg !1828
  br i1 %or.cond, label %if.then86, label %if.else125, !dbg !1828

if.then86:                                        ; preds = %if.end80
  %cmp84 = icmp eq i32 %0, 1
  %cond = select i1 %cmp84, i64 4, i64 1, !dbg !1829
    #dbg_value(i32 poison, !1529, !DIExpression(), !1830)
    #dbg_value(ptr %bs, !1667, !DIExpression(), !1831)
    #dbg_value(i32 %conv, !1672, !DIExpression(), !1831)
  %add.i1283 = add nuw nsw i32 %conv, 1, !dbg !1833
  %idxprom.i1284 = zext nneg i32 %add.i1283 to i64, !dbg !1834
  %arrayidx.i1285 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1284, !dbg !1834
  %95 = load i8, ptr %arrayidx.i1285, align 1, !dbg !1834
  %conv.i1286 = zext i8 %95 to i32, !dbg !1834
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1835)
    #dbg_value(i32 %conv.i1286, !1682, !DIExpression(), !1835)
    #dbg_value(i32 %add.i1283, !1683, !DIExpression(), !1835)
  %cur_bits.i.i1287 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !1837
  %96 = load i64, ptr %cur_bits.i.i1287, align 8, !dbg !1837
  %sh_prom.i.i1288 = zext nneg i8 %95 to i64, !dbg !1838
  %shl.i.i1289 = shl i64 %96, %sh_prom.i.i1288, !dbg !1838
  %or.i.i1291 = or i64 %shl.i.i1289, %idxprom.i1284, !dbg !1839
  store i64 %or.i.i1291, ptr %cur_bits.i.i1287, align 8, !dbg !1840
  %sub.i.i1293 = sub nsw i32 %16, %conv.i1286, !dbg !1841
  store i32 %sub.i.i1293, ptr %i_left.i, align 8, !dbg !1841
  %cmp.i.i1294 = icmp slt i32 %sub.i.i1293, 33, !dbg !1842
  br i1 %cmp.i.i1294, label %if.then.i.i1295, label %bs_write_ue.exit1303, !dbg !1843

if.then.i.i1295:                                  ; preds = %if.then86
  %sh_prom6.i.i1296 = zext nneg i32 %sub.i.i1293 to i64, !dbg !1844
  %shl7.i.i1297 = shl i64 %or.i.i1291, %sh_prom6.i.i1296, !dbg !1844
    #dbg_value(i64 %shl7.i.i1297, !1698, !DIExpression(), !1845)
    #dbg_value(i64 %shl7.i.i1297, !1705, !DIExpression(), !1847)
  %add.i.i.i.i1298 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1297), !dbg !1849
  %conv8.i.i1299 = trunc i64 %add.i.i.i.i1298 to i32, !dbg !1850
  store i32 %conv8.i.i1299, ptr %15, align 4, !dbg !1851
  %97 = load i32, ptr %i_left.i, align 8, !dbg !1852
  %add.i.i1301 = add nsw i32 %97, 32, !dbg !1852
  store i32 %add.i.i1301, ptr %i_left.i, align 8, !dbg !1852
  %98 = load ptr, ptr %p.i, align 8, !dbg !1853
  %add.ptr.i.i1302 = getelementptr inbounds i8, ptr %98, i64 4, !dbg !1853
  store ptr %add.ptr.i.i1302, ptr %p.i, align 8, !dbg !1853
  br label %bs_write_ue.exit1303, !dbg !1854

bs_write_ue.exit1303:                             ; preds = %if.then86, %if.then.i.i1295
  %99 = phi ptr [ %15, %if.then86 ], [ %add.ptr.i.i1302, %if.then.i.i1295 ]
  %100 = phi i32 [ %sub.i.i1293, %if.then86 ], [ %add.i.i1301, %if.then.i.i1295 ]
  %pps = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !1855
  %101 = load ptr, ptr %pps, align 16, !dbg !1855
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %101, i64 60, !dbg !1857
  %102 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !1857
  %tobool90.not = icmp eq i32 %102, 0, !dbg !1858
  br i1 %tobool90.not, label %if.end93, label %if.then91, !dbg !1859

if.then91:                                        ; preds = %bs_write_ue.exit1303
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !1860
  %103 = load i32, ptr %b_transform_8x8, align 4, !dbg !1860
    #dbg_value(ptr %bs, !1632, !DIExpression(), !1861)
    #dbg_value(i32 %103, !1637, !DIExpression(), !1861)
  %104 = load i64, ptr %cur_bits.i.i1287, align 8, !dbg !1863
  %shl.i1305 = shl i64 %104, 1, !dbg !1863
  %conv.i1306 = zext i32 %103 to i64, !dbg !1864
  %or.i1307 = or i64 %shl.i1305, %conv.i1306, !dbg !1865
  store i64 %or.i1307, ptr %cur_bits.i.i1287, align 8, !dbg !1865
  %dec.i1309 = add nsw i32 %100, -1, !dbg !1866
  store i32 %dec.i1309, ptr %i_left.i, align 8, !dbg !1866
  %cmp.i1310 = icmp eq i32 %dec.i1309, 32, !dbg !1867
  br i1 %cmp.i1310, label %if.then.i1311, label %if.end93, !dbg !1868

if.then.i1311:                                    ; preds = %if.then91
  %conv6.i1312 = trunc i64 %or.i1307 to i32, !dbg !1869
    #dbg_value(i32 %conv6.i1312, !1650, !DIExpression(), !1870)
  %add5.i.i1313 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1312), !dbg !1872
  store i32 %add5.i.i1313, ptr %99, align 4, !dbg !1873
  %105 = load ptr, ptr %p.i, align 8, !dbg !1874
  %add.ptr.i1315 = getelementptr inbounds i8, ptr %105, i64 4, !dbg !1874
  store ptr %add.ptr.i1315, ptr %p.i, align 8, !dbg !1874
  store i32 64, ptr %i_left.i, align 8, !dbg !1875
  br label %if.end93, !dbg !1876

if.end93:                                         ; preds = %if.then.i1311, %if.then91, %bs_write_ue.exit1303
  %106 = phi ptr [ %add.ptr.i1315, %if.then.i1311 ], [ %99, %if.then91 ], [ %99, %bs_write_ue.exit1303 ]
  %107 = phi i32 [ 64, %if.then.i1311 ], [ %dec.i1309, %if.then91 ], [ %100, %bs_write_ue.exit1303 ]
    #dbg_value(i32 0, !1532, !DIExpression(), !1877)
  %cache.i = getelementptr inbounds i8, ptr %h, i64 25024
    #dbg_value(i32 0, !1532, !DIExpression(), !1877)
  br label %for.body99, !dbg !1878

for.cond.cleanup98:                               ; preds = %if.end117
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412, !dbg !1879
  %108 = load i32, ptr %i_chroma_pred_mode, align 4, !dbg !1879
  %idxprom122 = sext i32 %108 to i64, !dbg !1880
  %arrayidx123 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom122, !dbg !1880
  %109 = load i8, ptr %arrayidx123, align 1, !dbg !1880
  %conv124 = zext i8 %109 to i64, !dbg !1880
    #dbg_value(ptr %bs, !1667, !DIExpression(), !1881)
    #dbg_value(i8 %109, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1881)
  %add.i1317 = add nuw nsw i64 %conv124, 1, !dbg !1883
  %arrayidx.i1319 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1317, !dbg !1884
  %110 = load i8, ptr %arrayidx.i1319, align 1, !dbg !1884
  %conv.i1320 = zext i8 %110 to i32, !dbg !1884
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1885)
    #dbg_value(i32 %conv.i1320, !1682, !DIExpression(), !1885)
    #dbg_value(i64 %add.i1317, !1683, !DIExpression(), !1885)
  %111 = load i64, ptr %cur_bits.i.i1287, align 8, !dbg !1887
  %sh_prom.i.i1322 = zext nneg i8 %110 to i64, !dbg !1888
  %shl.i.i1323 = shl i64 %111, %sh_prom.i.i1322, !dbg !1888
  %or.i.i1325 = or i64 %shl.i.i1323, %add.i1317, !dbg !1889
  store i64 %or.i.i1325, ptr %cur_bits.i.i1287, align 8, !dbg !1890
  %sub.i.i1327 = sub nsw i32 %129, %conv.i1320, !dbg !1891
  store i32 %sub.i.i1327, ptr %i_left.i, align 8, !dbg !1891
  %cmp.i.i1328 = icmp slt i32 %sub.i.i1327, 33, !dbg !1892
  br i1 %cmp.i.i1328, label %if.then.i.i1329, label %if.end697, !dbg !1893

if.then.i.i1329:                                  ; preds = %for.cond.cleanup98
  %sh_prom6.i.i1330 = zext nneg i32 %sub.i.i1327 to i64, !dbg !1894
  %shl7.i.i1331 = shl i64 %or.i.i1325, %sh_prom6.i.i1330, !dbg !1894
    #dbg_value(i64 %shl7.i.i1331, !1698, !DIExpression(), !1895)
    #dbg_value(i64 %shl7.i.i1331, !1705, !DIExpression(), !1897)
  %add.i.i.i.i1332 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1331), !dbg !1899
  %conv8.i.i1333 = trunc i64 %add.i.i.i.i1332 to i32, !dbg !1900
  store i32 %conv8.i.i1333, ptr %128, align 4, !dbg !1901
  %112 = load i32, ptr %i_left.i, align 8, !dbg !1902
  %add.i.i1335 = add nsw i32 %112, 32, !dbg !1902
  store i32 %add.i.i1335, ptr %i_left.i, align 8, !dbg !1902
  %113 = load ptr, ptr %p.i, align 8, !dbg !1903
  %add.ptr.i.i1336 = getelementptr inbounds i8, ptr %113, i64 4, !dbg !1903
  store ptr %add.ptr.i.i1336, ptr %p.i, align 8, !dbg !1903
  br label %if.end697, !dbg !1904

for.body99:                                       ; preds = %if.end93, %if.end117
  %114 = phi ptr [ %106, %if.end93 ], [ %128, %if.end117 ]
  %115 = phi i32 [ %107, %if.end93 ], [ %129, %if.end117 ]
  %indvars.iv = phi i64 [ 0, %if.end93 ], [ %indvars.iv.next, %if.end117 ]
    #dbg_value(i64 %indvars.iv, !1532, !DIExpression(), !1877)
    #dbg_value(ptr %h, !1905, !DIExpression(), !1914)
    #dbg_value(i64 %indvars.iv, !1910, !DIExpression(), !1914)
  %arrayidx.i1339 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv, !dbg !1916
  %116 = load i32, ptr %arrayidx.i1339, align 4, !dbg !1916
  %sub.i = add nsw i32 %116, -1, !dbg !1917
  %idxprom1.i = sext i32 %sub.i to i64, !dbg !1918
  %arrayidx2.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom1.i, !dbg !1918
  %117 = load i8, ptr %arrayidx2.i, align 1, !dbg !1918
  %conv.i1340 = sext i8 %117 to i64, !dbg !1918
    #dbg_value(i8 %117, !1911, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1914)
  %sub9.i = add nsw i32 %116, -8, !dbg !1919
  %idxprom10.i = sext i32 %sub9.i to i64, !dbg !1920
  %arrayidx11.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom10.i, !dbg !1920
  %118 = load i8, ptr %arrayidx11.i, align 1, !dbg !1920
  %conv12.i = sext i8 %118 to i64, !dbg !1920
    #dbg_value(i8 %118, !1912, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1914)
  %add.i1341 = add nsw i64 %conv.i1340, 1, !dbg !1921
  %arrayidx14.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add.i1341, !dbg !1921
  %119 = load i8, ptr %arrayidx14.i, align 1, !dbg !1921
  %add16.i = add nsw i64 %conv12.i, 1, !dbg !1921
  %arrayidx18.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add16.i, !dbg !1921
  %120 = load i8, ptr %arrayidx18.i, align 1, !dbg !1921
  %..i = tail call i8 @llvm.smin.i8(i8 %119, i8 %120), !dbg !1921
    #dbg_value(i8 %..i, !1913, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1914)
  %cmp29.i = icmp slt i8 %..i, 0, !dbg !1922
  %narrow.i = select i1 %cmp29.i, i8 2, i8 %..i, !dbg !1924
    #dbg_value(i8 %narrow.i, !1534, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1925)
  %idxprom104 = sext i32 %116 to i64, !dbg !1926
  %arrayidx105 = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom104, !dbg !1926
  %121 = load i8, ptr %arrayidx105, align 1, !dbg !1926
  %conv106 = sext i8 %121 to i64, !dbg !1926
  %add107 = add nsw i64 %conv106, 1, !dbg !1926
  %arrayidx109 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add107, !dbg !1926
  %122 = load i8, ptr %arrayidx109, align 1, !dbg !1926
    #dbg_value(i8 %122, !1537, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1925)
  %cmp111 = icmp eq i8 %narrow.i, %122, !dbg !1927
  br i1 %cmp111, label %if.then113, label %if.else, !dbg !1929

if.then113:                                       ; preds = %for.body99
    #dbg_value(ptr %bs, !1632, !DIExpression(), !1930)
    #dbg_value(i32 1, !1637, !DIExpression(), !1930)
  %123 = load i64, ptr %cur_bits.i.i1287, align 8, !dbg !1932
  %shl.i1343 = shl i64 %123, 1, !dbg !1932
  %or.i1344 = or disjoint i64 %shl.i1343, 1, !dbg !1933
  store i64 %or.i1344, ptr %cur_bits.i.i1287, align 8, !dbg !1933
  %dec.i1346 = add nsw i32 %115, -1, !dbg !1934
  store i32 %dec.i1346, ptr %i_left.i, align 8, !dbg !1934
  %cmp.i1347 = icmp eq i32 %dec.i1346, 32, !dbg !1935
  br i1 %cmp.i1347, label %if.then.i1348, label %if.end117, !dbg !1936

if.then.i1348:                                    ; preds = %if.then113
  %conv6.i1349 = trunc i64 %or.i1344 to i32, !dbg !1937
    #dbg_value(i32 %conv6.i1349, !1650, !DIExpression(), !1938)
  %add5.i.i1350 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1349), !dbg !1940
  store i32 %add5.i.i1350, ptr %114, align 4, !dbg !1941
  %124 = load ptr, ptr %p.i, align 8, !dbg !1942
  %add.ptr.i1352 = getelementptr inbounds i8, ptr %124, i64 4, !dbg !1942
  store ptr %add.ptr.i1352, ptr %p.i, align 8, !dbg !1942
  store i32 64, ptr %i_left.i, align 8, !dbg !1943
  br label %if.end117, !dbg !1944

if.else:                                          ; preds = %for.body99
  %conv110 = sext i8 %122 to i64, !dbg !1926
    #dbg_value(i8 %122, !1537, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1925)
    #dbg_value(i8 %narrow.i, !1534, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1925)
  %cmp114 = icmp slt i8 %narrow.i, %122, !dbg !1945
  %conv115.neg = sext i1 %cmp114 to i64, !dbg !1945
  %sub116 = add nsw i64 %conv115.neg, %conv110, !dbg !1946
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1947)
    #dbg_value(i32 4, !1682, !DIExpression(), !1947)
    #dbg_value(!DIArgList(i1 %cmp114, i8 %122), !1683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1947)
  %125 = load i64, ptr %cur_bits.i.i1287, align 8, !dbg !1949
  %shl.i1355 = shl i64 %125, 4, !dbg !1950
  %conv.i1356 = and i64 %sub116, 4294967295, !dbg !1951
  %or.i1357 = or i64 %shl.i1355, %conv.i1356, !dbg !1952
  store i64 %or.i1357, ptr %cur_bits.i.i1287, align 8, !dbg !1953
  %sub.i1359 = add nsw i32 %115, -4, !dbg !1954
  store i32 %sub.i1359, ptr %i_left.i, align 8, !dbg !1954
  %cmp.i1360 = icmp slt i32 %115, 37, !dbg !1955
  br i1 %cmp.i1360, label %if.then.i1361, label %if.end117, !dbg !1956

if.then.i1361:                                    ; preds = %if.else
  %sh_prom6.i = zext nneg i32 %sub.i1359 to i64, !dbg !1957
  %shl7.i = shl i64 %or.i1357, %sh_prom6.i, !dbg !1957
    #dbg_value(i64 %shl7.i, !1698, !DIExpression(), !1958)
    #dbg_value(i64 %shl7.i, !1705, !DIExpression(), !1960)
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i), !dbg !1962
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !1963
  store i32 %conv8.i, ptr %114, align 4, !dbg !1964
  %126 = load i32, ptr %i_left.i, align 8, !dbg !1965
  %add.i1363 = add nsw i32 %126, 32, !dbg !1965
  store i32 %add.i1363, ptr %i_left.i, align 8, !dbg !1965
  %127 = load ptr, ptr %p.i, align 8, !dbg !1966
  %add.ptr.i1364 = getelementptr inbounds i8, ptr %127, i64 4, !dbg !1966
  store ptr %add.ptr.i1364, ptr %p.i, align 8, !dbg !1966
  br label %if.end117, !dbg !1967

if.end117:                                        ; preds = %if.then.i1361, %if.else, %if.then.i1348, %if.then113
  %128 = phi ptr [ %add.ptr.i1364, %if.then.i1361 ], [ %114, %if.else ], [ %add.ptr.i1352, %if.then.i1348 ], [ %114, %if.then113 ]
  %129 = phi i32 [ %add.i1363, %if.then.i1361 ], [ %sub.i1359, %if.else ], [ 64, %if.then.i1348 ], [ %dec.i1346, %if.then113 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %cond, !dbg !1968
    #dbg_value(i64 %indvars.iv.next, !1532, !DIExpression(), !1877)
  %cmp96 = icmp ult i64 %indvars.iv.next, 16, !dbg !1969
  br i1 %cmp96, label %for.body99, label %for.cond.cleanup98, !dbg !1878, !llvm.loop !1970

if.else125:                                       ; preds = %if.end80
  switch i32 %0, label %if.then515 [
    i32 2, label %if.then128
    i32 4, label %if.then151
    i32 5, label %if.then256
    i32 17, label %if.then375
    i32 7, label %if.else691
  ], !dbg !1972

if.then128:                                       ; preds = %if.else125
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408, !dbg !1973
  %130 = load i32, ptr %i_intra16x16_pred_mode, align 16, !dbg !1973
  %idxprom131 = sext i32 %130 to i64, !dbg !1975
  %arrayidx132 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %idxprom131, !dbg !1975
  %131 = load i8, ptr %arrayidx132, align 1, !dbg !1975
  %conv133 = zext i8 %131 to i32, !dbg !1975
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !1976
  %132 = load i32, ptr %i_cbp_chroma, align 4, !dbg !1976
  %mul136 = shl nsw i32 %132, 2, !dbg !1977
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !1978
  %133 = load i32, ptr %i_cbp_luma, align 8, !dbg !1978
  %cmp139 = icmp eq i32 %133, 0, !dbg !1979
  %cond141 = select i1 %cmp139, i32 0, i32 12, !dbg !1980
    #dbg_value(ptr %bs, !1667, !DIExpression(), !1981)
    #dbg_value(i32 poison, !1672, !DIExpression(), !1981)
  %add134 = add nuw nsw i32 %conv, 2, !dbg !1983
  %add137 = add nuw nsw i32 %add134, %conv133, !dbg !1984
  %add142 = add i32 %add137, %mul136, !dbg !1985
  %add.i1365 = add i32 %add142, %cond141, !dbg !1986
  %idxprom.i1366 = sext i32 %add.i1365 to i64, !dbg !1987
  %arrayidx.i1367 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1366, !dbg !1987
  %134 = load i8, ptr %arrayidx.i1367, align 1, !dbg !1987
  %conv.i1368 = zext i8 %134 to i32, !dbg !1987
    #dbg_value(ptr %bs, !1677, !DIExpression(), !1988)
    #dbg_value(i32 %conv.i1368, !1682, !DIExpression(), !1988)
    #dbg_value(i32 %add.i1365, !1683, !DIExpression(), !1988)
  %cur_bits.i.i1369 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !1990
  %135 = load i64, ptr %cur_bits.i.i1369, align 8, !dbg !1990
  %sh_prom.i.i1370 = zext nneg i8 %134 to i64, !dbg !1991
  %shl.i.i1371 = shl i64 %135, %sh_prom.i.i1370, !dbg !1991
  %conv.i.i1372 = zext i32 %add.i1365 to i64, !dbg !1992
  %or.i.i1373 = or i64 %shl.i.i1371, %conv.i.i1372, !dbg !1993
  store i64 %or.i.i1373, ptr %cur_bits.i.i1369, align 8, !dbg !1994
  %sub.i.i1375 = sub nsw i32 %16, %conv.i1368, !dbg !1995
  store i32 %sub.i.i1375, ptr %i_left.i, align 8, !dbg !1995
  %cmp.i.i1376 = icmp slt i32 %sub.i.i1375, 33, !dbg !1996
  br i1 %cmp.i.i1376, label %if.then.i.i1377, label %bs_write_ue.exit1385, !dbg !1997

if.then.i.i1377:                                  ; preds = %if.then128
  %sh_prom6.i.i1378 = zext nneg i32 %sub.i.i1375 to i64, !dbg !1998
  %shl7.i.i1379 = shl i64 %or.i.i1373, %sh_prom6.i.i1378, !dbg !1998
    #dbg_value(i64 %shl7.i.i1379, !1698, !DIExpression(), !1999)
    #dbg_value(i64 %shl7.i.i1379, !1705, !DIExpression(), !2001)
  %add.i.i.i.i1380 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1379), !dbg !2003
  %conv8.i.i1381 = trunc i64 %add.i.i.i.i1380 to i32, !dbg !2004
  store i32 %conv8.i.i1381, ptr %15, align 4, !dbg !2005
  %136 = load i32, ptr %i_left.i, align 8, !dbg !2006
  %add.i.i1383 = add nsw i32 %136, 32, !dbg !2006
  %137 = load ptr, ptr %p.i, align 8, !dbg !2007
  %add.ptr.i.i1384 = getelementptr inbounds i8, ptr %137, i64 4, !dbg !2007
  store ptr %add.ptr.i.i1384, ptr %p.i, align 8, !dbg !2007
  %.pre2125 = load i64, ptr %cur_bits.i.i1369, align 8, !dbg !2008
  br label %bs_write_ue.exit1385, !dbg !2011

bs_write_ue.exit1385:                             ; preds = %if.then128, %if.then.i.i1377
  %138 = phi ptr [ %15, %if.then128 ], [ %add.ptr.i.i1384, %if.then.i.i1377 ]
  %139 = phi i32 [ %sub.i.i1375, %if.then128 ], [ %add.i.i1383, %if.then.i.i1377 ], !dbg !2012
  %140 = phi i64 [ %or.i.i1373, %if.then128 ], [ %.pre2125, %if.then.i.i1377 ], !dbg !2008
  %i_chroma_pred_mode144 = getelementptr inbounds i8, ptr %h, i64 17412, !dbg !2013
  %141 = load i32, ptr %i_chroma_pred_mode144, align 4, !dbg !2013
  %idxprom145 = sext i32 %141 to i64, !dbg !2014
  %arrayidx146 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom145, !dbg !2014
  %142 = load i8, ptr %arrayidx146, align 1, !dbg !2014
  %conv147 = zext i8 %142 to i64, !dbg !2014
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2015)
    #dbg_value(i8 %142, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2015)
  %add.i1386 = add nuw nsw i64 %conv147, 1, !dbg !2016
  %arrayidx.i1388 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1386, !dbg !2017
  %143 = load i8, ptr %arrayidx.i1388, align 1, !dbg !2017
  %conv.i1389 = zext i8 %143 to i32, !dbg !2017
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2018)
    #dbg_value(i32 %conv.i1389, !1682, !DIExpression(), !2018)
    #dbg_value(i64 %add.i1386, !1683, !DIExpression(), !2018)
  %sh_prom.i.i1391 = zext nneg i8 %143 to i64, !dbg !2019
  %shl.i.i1392 = shl i64 %140, %sh_prom.i.i1391, !dbg !2019
  %or.i.i1394 = or i64 %shl.i.i1392, %add.i1386, !dbg !2020
  store i64 %or.i.i1394, ptr %cur_bits.i.i1369, align 8, !dbg !2021
  %sub.i.i1396 = sub nsw i32 %139, %conv.i1389, !dbg !2012
  store i32 %sub.i.i1396, ptr %i_left.i, align 8, !dbg !2012
  %cmp.i.i1397 = icmp slt i32 %sub.i.i1396, 33, !dbg !2022
  br i1 %cmp.i.i1397, label %if.then.i.i1398, label %if.end697, !dbg !2023

if.then.i.i1398:                                  ; preds = %bs_write_ue.exit1385
  %sh_prom6.i.i1399 = zext nneg i32 %sub.i.i1396 to i64, !dbg !2024
  %shl7.i.i1400 = shl i64 %or.i.i1394, %sh_prom6.i.i1399, !dbg !2024
    #dbg_value(i64 %shl7.i.i1400, !1698, !DIExpression(), !2025)
    #dbg_value(i64 %shl7.i.i1400, !1705, !DIExpression(), !2027)
  %add.i.i.i.i1401 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1400), !dbg !2029
  %conv8.i.i1402 = trunc i64 %add.i.i.i.i1401 to i32, !dbg !2030
  store i32 %conv8.i.i1402, ptr %138, align 4, !dbg !2031
  %144 = load i32, ptr %i_left.i, align 8, !dbg !2032
  %add.i.i1404 = add nsw i32 %144, 32, !dbg !2032
  store i32 %add.i.i1404, ptr %i_left.i, align 8, !dbg !2032
  %145 = load ptr, ptr %p.i, align 8, !dbg !2033
  %add.ptr.i.i1405 = getelementptr inbounds i8, ptr %145, i64 4, !dbg !2033
  store ptr %add.ptr.i.i1405, ptr %p.i, align 8, !dbg !2033
  br label %if.end697, !dbg !2034

if.then151:                                       ; preds = %if.else125
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !2035
  %146 = load i32, ptr %i_partition, align 4, !dbg !2035
  switch i32 %146, label %if.end697 [
    i32 16, label %if.then155
    i32 14, label %if.then179
    i32 15, label %if.then217
  ], !dbg !2038

if.then155:                                       ; preds = %if.then151
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2039)
    #dbg_value(i32 1, !1637, !DIExpression(), !2039)
  %cur_bits.i1407 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2042
  %147 = load i64, ptr %cur_bits.i1407, align 8, !dbg !2043
  %shl.i1408 = shl i64 %147, 1, !dbg !2043
  %or.i1409 = or disjoint i64 %shl.i1408, 1, !dbg !2044
  store i64 %or.i1409, ptr %cur_bits.i1407, align 8, !dbg !2044
  %dec.i1411 = add nsw i32 %16, -1, !dbg !2045
  store i32 %dec.i1411, ptr %i_left.i, align 8, !dbg !2045
  %cmp.i1412 = icmp eq i32 %dec.i1411, 32, !dbg !2046
  br i1 %cmp.i1412, label %if.then.i1413, label %bs_write1.exit1418, !dbg !2047

if.then.i1413:                                    ; preds = %if.then155
  %conv6.i1414 = trunc i64 %or.i1409 to i32, !dbg !2048
    #dbg_value(i32 %conv6.i1414, !1650, !DIExpression(), !2049)
  %add5.i.i1415 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1414), !dbg !2051
  store i32 %add5.i.i1415, ptr %15, align 4, !dbg !2052
  %148 = load ptr, ptr %p.i, align 8, !dbg !2053
  %add.ptr.i1417 = getelementptr inbounds i8, ptr %148, i64 4, !dbg !2053
  store ptr %add.ptr.i1417, ptr %p.i, align 8, !dbg !2053
  store i32 64, ptr %i_left.i, align 8, !dbg !2054
  br label %bs_write1.exit1418, !dbg !2055

bs_write1.exit1418:                               ; preds = %if.then155, %if.then.i1413
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2056
  %149 = load i32, ptr %i_fref, align 8, !dbg !2058
  %cmp159 = icmp sgt i32 %149, 1, !dbg !2059
  br i1 %cmp159, label %if.then161, label %if.end173, !dbg !2060

if.then161:                                       ; preds = %bs_write1.exit1418
  %sub166 = add nsw i32 %149, -1, !dbg !2061
  %arrayidx171 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2062
  %150 = load i8, ptr %arrayidx171, align 1, !dbg !2062
  %conv172 = sext i8 %150 to i32, !dbg !2062
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub166, i32 noundef %conv172), !dbg !2063
  br label %if.end173, !dbg !2063

if.end173:                                        ; preds = %if.then161, %bs_write1.exit1418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2064
  br label %if.end697, !dbg !2065

if.then179:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 1), !dbg !2066
  %i_fref182 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2069
  %151 = load i32, ptr %i_fref182, align 8, !dbg !2071
  %cmp184 = icmp sgt i32 %151, 1, !dbg !2072
  br i1 %cmp184, label %if.then186, label %if.end211, !dbg !2073

if.then186:                                       ; preds = %if.then179
  %sub191 = add nsw i32 %151, -1, !dbg !2074
  %arrayidx197 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2076
  %152 = load i8, ptr %arrayidx197, align 1, !dbg !2076
  %conv198 = sext i8 %152 to i32, !dbg !2076
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub191, i32 noundef %conv198), !dbg !2077
  %153 = load i32, ptr %i_fref182, align 8, !dbg !2078
  %sub203 = add nsw i32 %153, -1, !dbg !2079
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2080
  %154 = load i8, ptr %arrayidx209, align 1, !dbg !2080
  %conv210 = sext i8 %154 to i32, !dbg !2080
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub203, i32 noundef %conv210), !dbg !2081
  br label %if.end211, !dbg !2082

if.end211:                                        ; preds = %if.then186, %if.then179
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2083
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4), !dbg !2084
  br label %if.end697, !dbg !2085

if.then217:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 2), !dbg !2086
  %i_fref220 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2089
  %155 = load i32, ptr %i_fref220, align 8, !dbg !2091
  %cmp222 = icmp sgt i32 %155, 1, !dbg !2092
  br i1 %cmp222, label %if.then224, label %if.end249, !dbg !2093

if.then224:                                       ; preds = %if.then217
  %sub229 = add nsw i32 %155, -1, !dbg !2094
  %arrayidx235 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2096
  %156 = load i8, ptr %arrayidx235, align 1, !dbg !2096
  %conv236 = sext i8 %156 to i32, !dbg !2096
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub229, i32 noundef %conv236), !dbg !2097
  %157 = load i32, ptr %i_fref220, align 8, !dbg !2098
  %sub241 = add nsw i32 %157, -1, !dbg !2099
  %arrayidx247 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2100
  %158 = load i8, ptr %arrayidx247, align 1, !dbg !2100
  %conv248 = sext i8 %158 to i32, !dbg !2100
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub241, i32 noundef %conv248), !dbg !2101
  br label %if.end249, !dbg !2102

if.end249:                                        ; preds = %if.then224, %if.then217
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2103
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2104
  br label %if.end697, !dbg !2105

if.then256:                                       ; preds = %if.else125
  %arrayidx262 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2106
  %159 = load i8, ptr %arrayidx262, align 1, !dbg !2106
  %arrayidx269 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2108
  %160 = load i8, ptr %arrayidx269, align 1, !dbg !2108
  %or1240 = or i8 %160, %159, !dbg !2109
  %arrayidx276 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2110
  %161 = load i8, ptr %arrayidx276, align 1, !dbg !2110
  %or2781241 = or i8 %or1240, %161, !dbg !2111
  %arrayidx284 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2112
  %162 = load i8, ptr %arrayidx284, align 1, !dbg !2112
  %or2861242 = or i8 %or2781241, %162, !dbg !2113
  %cmp287 = icmp eq i8 %or2861242, 0, !dbg !2114
  br i1 %cmp287, label %if.then289, label %if.else290, !dbg !2115

if.then289:                                       ; preds = %if.then256
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 4), !dbg !2116
    #dbg_value(i32 0, !1538, !DIExpression(), !2118)
  br label %if.end291, !dbg !2119

if.else290:                                       ; preds = %if.then256
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2120)
    #dbg_value(i32 3, !1672, !DIExpression(), !2120)
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2123)
    #dbg_value(i32 5, !1682, !DIExpression(), !2123)
    #dbg_value(i32 4, !1683, !DIExpression(), !2123)
  %cur_bits.i.i1419 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2125
  %163 = load i64, ptr %cur_bits.i.i1419, align 8, !dbg !2125
  %shl.i.i1420 = shl i64 %163, 5, !dbg !2126
  %or.i.i1421 = or disjoint i64 %shl.i.i1420, 4, !dbg !2127
  store i64 %or.i.i1421, ptr %cur_bits.i.i1419, align 8, !dbg !2128
  %sub.i.i1423 = add nsw i32 %16, -5, !dbg !2129
  store i32 %sub.i.i1423, ptr %i_left.i, align 8, !dbg !2129
  %cmp.i.i1424 = icmp slt i32 %16, 38, !dbg !2130
  br i1 %cmp.i.i1424, label %if.then.i.i1425, label %if.end291, !dbg !2131

if.then.i.i1425:                                  ; preds = %if.else290
  %sh_prom6.i.i1426 = zext nneg i32 %sub.i.i1423 to i64, !dbg !2132
  %shl7.i.i1427 = shl i64 %or.i.i1421, %sh_prom6.i.i1426, !dbg !2132
    #dbg_value(i64 %shl7.i.i1427, !1698, !DIExpression(), !2133)
    #dbg_value(i64 %shl7.i.i1427, !1705, !DIExpression(), !2135)
  %add.i.i.i.i1428 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1427), !dbg !2137
  %conv8.i.i1429 = trunc i64 %add.i.i.i.i1428 to i32, !dbg !2138
  store i32 %conv8.i.i1429, ptr %15, align 4, !dbg !2139
  %164 = load i32, ptr %i_left.i, align 8, !dbg !2140
  %add.i.i1431 = add nsw i32 %164, 32, !dbg !2140
  store i32 %add.i.i1431, ptr %i_left.i, align 8, !dbg !2140
  %165 = load ptr, ptr %p.i, align 8, !dbg !2141
  %add.ptr.i.i1432 = getelementptr inbounds i8, ptr %165, i64 4, !dbg !2141
  store ptr %add.ptr.i.i1432, ptr %p.i, align 8, !dbg !2141
  br label %if.end291, !dbg !2142

if.end291:                                        ; preds = %if.then.i.i1425, %if.else290, %if.then289
    #dbg_value(i32 poison, !1538, !DIExpression(), !2118)
  %inter = getelementptr inbounds i8, ptr %h, i64 388, !dbg !2143
  %166 = load i32, ptr %inter, align 4, !dbg !2143
  %and292 = and i32 %166, 32, !dbg !2144
  %tobool293.not = icmp eq i32 %and292, 0, !dbg !2144
  br i1 %tobool293.not, label %if.else310, label %for.cond296.preheader, !dbg !2145

for.cond296.preheader:                            ; preds = %if.end291
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
  %cur_bits.i.i1438 = getelementptr inbounds i8, ptr %h, i64 1816
    #dbg_value(i32 0, !1543, !DIExpression(), !2146)
    #dbg_value(i64 0, !1543, !DIExpression(), !2146)
  %167 = load i8, ptr %i_sub_partition, align 1, !dbg !2147
  %idxprom304 = zext i8 %167 to i64, !dbg !2149
  %arrayidx305 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304, !dbg !2149
  %168 = load i8, ptr %arrayidx305, align 1, !dbg !2149
  %conv306 = zext i8 %168 to i64, !dbg !2149
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2150)
    #dbg_value(i8 %168, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2150)
  %add.i1434 = add nuw nsw i64 %conv306, 1, !dbg !2152
  %arrayidx.i1436 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434, !dbg !2153
  %169 = load i8, ptr %arrayidx.i1436, align 1, !dbg !2153
  %conv.i1437 = zext i8 %169 to i32, !dbg !2153
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2154)
    #dbg_value(i32 %conv.i1437, !1682, !DIExpression(), !2154)
    #dbg_value(i64 %add.i1434, !1683, !DIExpression(), !2154)
  %170 = load i64, ptr %cur_bits.i.i1438, align 8, !dbg !2156
  %sh_prom.i.i1439 = zext nneg i8 %169 to i64, !dbg !2157
  %shl.i.i1440 = shl i64 %170, %sh_prom.i.i1439, !dbg !2157
  %or.i.i1442 = or i64 %shl.i.i1440, %add.i1434, !dbg !2158
  store i64 %or.i.i1442, ptr %cur_bits.i.i1438, align 8, !dbg !2159
  %171 = load i32, ptr %i_left.i, align 8, !dbg !2160
  %sub.i.i1444 = sub nsw i32 %171, %conv.i1437, !dbg !2160
  store i32 %sub.i.i1444, ptr %i_left.i, align 8, !dbg !2160
  %cmp.i.i1445 = icmp slt i32 %sub.i.i1444, 33, !dbg !2161
  br i1 %cmp.i.i1445, label %if.then.i.i1446, label %bs_write_ue.exit1454, !dbg !2162

if.then.i.i1446:                                  ; preds = %for.cond296.preheader
  %sh_prom6.i.i1447 = zext nneg i32 %sub.i.i1444 to i64, !dbg !2163
  %shl7.i.i1448 = shl i64 %or.i.i1442, %sh_prom6.i.i1447, !dbg !2163
    #dbg_value(i64 %shl7.i.i1448, !1698, !DIExpression(), !2164)
    #dbg_value(i64 %shl7.i.i1448, !1705, !DIExpression(), !2166)
  %add.i.i.i.i1449 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448), !dbg !2168
  %conv8.i.i1450 = trunc i64 %add.i.i.i.i1449 to i32, !dbg !2169
  %172 = load ptr, ptr %p.i, align 8, !dbg !2170
  store i32 %conv8.i.i1450, ptr %172, align 4, !dbg !2171
  %173 = load i32, ptr %i_left.i, align 8, !dbg !2172
  %add.i.i1452 = add nsw i32 %173, 32, !dbg !2172
  %174 = load ptr, ptr %p.i, align 8, !dbg !2173
  %add.ptr.i.i1453 = getelementptr inbounds i8, ptr %174, i64 4, !dbg !2173
  store ptr %add.ptr.i.i1453, ptr %p.i, align 8, !dbg !2173
  %.pre2122 = load i64, ptr %cur_bits.i.i1438, align 8, !dbg !2156
  br label %bs_write_ue.exit1454, !dbg !2174

bs_write_ue.exit1454:                             ; preds = %for.cond296.preheader, %if.then.i.i1446
  %175 = phi i32 [ %sub.i.i1444, %for.cond296.preheader ], [ %add.i.i1452, %if.then.i.i1446 ], !dbg !2160
  %176 = phi i64 [ %or.i.i1442, %for.cond296.preheader ], [ %.pre2122, %if.then.i.i1446 ], !dbg !2156
    #dbg_value(i64 1, !1543, !DIExpression(), !2146)
  %arrayidx303.1 = getelementptr inbounds i8, ptr %h, i64 17393, !dbg !2147
  %177 = load i8, ptr %arrayidx303.1, align 1, !dbg !2147
  %idxprom304.1 = zext i8 %177 to i64, !dbg !2149
  %arrayidx305.1 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.1, !dbg !2149
  %178 = load i8, ptr %arrayidx305.1, align 1, !dbg !2149
  %conv306.1 = zext i8 %178 to i64, !dbg !2149
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2150)
    #dbg_value(i8 %178, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2150)
  %add.i1434.1 = add nuw nsw i64 %conv306.1, 1, !dbg !2152
  %arrayidx.i1436.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.1, !dbg !2153
  %179 = load i8, ptr %arrayidx.i1436.1, align 1, !dbg !2153
  %conv.i1437.1 = zext i8 %179 to i32, !dbg !2153
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2154)
    #dbg_value(i32 %conv.i1437.1, !1682, !DIExpression(), !2154)
    #dbg_value(i64 %add.i1434.1, !1683, !DIExpression(), !2154)
  %sh_prom.i.i1439.1 = zext nneg i8 %179 to i64, !dbg !2157
  %shl.i.i1440.1 = shl i64 %176, %sh_prom.i.i1439.1, !dbg !2157
  %or.i.i1442.1 = or i64 %shl.i.i1440.1, %add.i1434.1, !dbg !2158
  store i64 %or.i.i1442.1, ptr %cur_bits.i.i1438, align 8, !dbg !2159
  %sub.i.i1444.1 = sub nsw i32 %175, %conv.i1437.1, !dbg !2160
  store i32 %sub.i.i1444.1, ptr %i_left.i, align 8, !dbg !2160
  %cmp.i.i1445.1 = icmp slt i32 %sub.i.i1444.1, 33, !dbg !2161
  br i1 %cmp.i.i1445.1, label %if.then.i.i1446.1, label %bs_write_ue.exit1454.1, !dbg !2162

if.then.i.i1446.1:                                ; preds = %bs_write_ue.exit1454
  %sh_prom6.i.i1447.1 = zext nneg i32 %sub.i.i1444.1 to i64, !dbg !2163
  %shl7.i.i1448.1 = shl i64 %or.i.i1442.1, %sh_prom6.i.i1447.1, !dbg !2163
    #dbg_value(i64 %shl7.i.i1448.1, !1698, !DIExpression(), !2164)
    #dbg_value(i64 %shl7.i.i1448.1, !1705, !DIExpression(), !2166)
  %add.i.i.i.i1449.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.1), !dbg !2168
  %conv8.i.i1450.1 = trunc i64 %add.i.i.i.i1449.1 to i32, !dbg !2169
  %180 = load ptr, ptr %p.i, align 8, !dbg !2170
  store i32 %conv8.i.i1450.1, ptr %180, align 4, !dbg !2171
  %181 = load i32, ptr %i_left.i, align 8, !dbg !2172
  %add.i.i1452.1 = add nsw i32 %181, 32, !dbg !2172
  %182 = load ptr, ptr %p.i, align 8, !dbg !2173
  %add.ptr.i.i1453.1 = getelementptr inbounds i8, ptr %182, i64 4, !dbg !2173
  store ptr %add.ptr.i.i1453.1, ptr %p.i, align 8, !dbg !2173
  %.pre2123 = load i64, ptr %cur_bits.i.i1438, align 8, !dbg !2156
  br label %bs_write_ue.exit1454.1, !dbg !2174

bs_write_ue.exit1454.1:                           ; preds = %if.then.i.i1446.1, %bs_write_ue.exit1454
  %183 = phi i32 [ %add.i.i1452.1, %if.then.i.i1446.1 ], [ %sub.i.i1444.1, %bs_write_ue.exit1454 ], !dbg !2160
  %184 = phi i64 [ %.pre2123, %if.then.i.i1446.1 ], [ %or.i.i1442.1, %bs_write_ue.exit1454 ], !dbg !2156
    #dbg_value(i64 2, !1543, !DIExpression(), !2146)
  %arrayidx303.2 = getelementptr inbounds i8, ptr %h, i64 17394, !dbg !2147
  %185 = load i8, ptr %arrayidx303.2, align 1, !dbg !2147
  %idxprom304.2 = zext i8 %185 to i64, !dbg !2149
  %arrayidx305.2 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.2, !dbg !2149
  %186 = load i8, ptr %arrayidx305.2, align 1, !dbg !2149
  %conv306.2 = zext i8 %186 to i64, !dbg !2149
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2150)
    #dbg_value(i8 %186, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2150)
  %add.i1434.2 = add nuw nsw i64 %conv306.2, 1, !dbg !2152
  %arrayidx.i1436.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.2, !dbg !2153
  %187 = load i8, ptr %arrayidx.i1436.2, align 1, !dbg !2153
  %conv.i1437.2 = zext i8 %187 to i32, !dbg !2153
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2154)
    #dbg_value(i32 %conv.i1437.2, !1682, !DIExpression(), !2154)
    #dbg_value(i64 %add.i1434.2, !1683, !DIExpression(), !2154)
  %sh_prom.i.i1439.2 = zext nneg i8 %187 to i64, !dbg !2157
  %shl.i.i1440.2 = shl i64 %184, %sh_prom.i.i1439.2, !dbg !2157
  %or.i.i1442.2 = or i64 %shl.i.i1440.2, %add.i1434.2, !dbg !2158
  store i64 %or.i.i1442.2, ptr %cur_bits.i.i1438, align 8, !dbg !2159
  %sub.i.i1444.2 = sub nsw i32 %183, %conv.i1437.2, !dbg !2160
  store i32 %sub.i.i1444.2, ptr %i_left.i, align 8, !dbg !2160
  %cmp.i.i1445.2 = icmp slt i32 %sub.i.i1444.2, 33, !dbg !2161
  br i1 %cmp.i.i1445.2, label %if.then.i.i1446.2, label %bs_write_ue.exit1454.2, !dbg !2162

if.then.i.i1446.2:                                ; preds = %bs_write_ue.exit1454.1
  %sh_prom6.i.i1447.2 = zext nneg i32 %sub.i.i1444.2 to i64, !dbg !2163
  %shl7.i.i1448.2 = shl i64 %or.i.i1442.2, %sh_prom6.i.i1447.2, !dbg !2163
    #dbg_value(i64 %shl7.i.i1448.2, !1698, !DIExpression(), !2164)
    #dbg_value(i64 %shl7.i.i1448.2, !1705, !DIExpression(), !2166)
  %add.i.i.i.i1449.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.2), !dbg !2168
  %conv8.i.i1450.2 = trunc i64 %add.i.i.i.i1449.2 to i32, !dbg !2169
  %188 = load ptr, ptr %p.i, align 8, !dbg !2170
  store i32 %conv8.i.i1450.2, ptr %188, align 4, !dbg !2171
  %189 = load i32, ptr %i_left.i, align 8, !dbg !2172
  %add.i.i1452.2 = add nsw i32 %189, 32, !dbg !2172
  %190 = load ptr, ptr %p.i, align 8, !dbg !2173
  %add.ptr.i.i1453.2 = getelementptr inbounds i8, ptr %190, i64 4, !dbg !2173
  store ptr %add.ptr.i.i1453.2, ptr %p.i, align 8, !dbg !2173
  %.pre2124 = load i64, ptr %cur_bits.i.i1438, align 8, !dbg !2156
  br label %bs_write_ue.exit1454.2, !dbg !2174

bs_write_ue.exit1454.2:                           ; preds = %if.then.i.i1446.2, %bs_write_ue.exit1454.1
  %191 = phi i32 [ %add.i.i1452.2, %if.then.i.i1446.2 ], [ %sub.i.i1444.2, %bs_write_ue.exit1454.1 ], !dbg !2160
  %192 = phi i64 [ %.pre2124, %if.then.i.i1446.2 ], [ %or.i.i1442.2, %bs_write_ue.exit1454.1 ], !dbg !2156
    #dbg_value(i64 3, !1543, !DIExpression(), !2146)
  %arrayidx303.3 = getelementptr inbounds i8, ptr %h, i64 17395, !dbg !2147
  %193 = load i8, ptr %arrayidx303.3, align 1, !dbg !2147
  %idxprom304.3 = zext i8 %193 to i64, !dbg !2149
  %arrayidx305.3 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.3, !dbg !2149
  %194 = load i8, ptr %arrayidx305.3, align 1, !dbg !2149
  %conv306.3 = zext i8 %194 to i64, !dbg !2149
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2150)
    #dbg_value(i8 %194, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2150)
  %add.i1434.3 = add nuw nsw i64 %conv306.3, 1, !dbg !2152
  %arrayidx.i1436.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.3, !dbg !2153
  %195 = load i8, ptr %arrayidx.i1436.3, align 1, !dbg !2153
  %conv.i1437.3 = zext i8 %195 to i32, !dbg !2153
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2154)
    #dbg_value(i32 %conv.i1437.3, !1682, !DIExpression(), !2154)
    #dbg_value(i64 %add.i1434.3, !1683, !DIExpression(), !2154)
  %sh_prom.i.i1439.3 = zext nneg i8 %195 to i64, !dbg !2157
  %shl.i.i1440.3 = shl i64 %192, %sh_prom.i.i1439.3, !dbg !2157
  %or.i.i1442.3 = or i64 %shl.i.i1440.3, %add.i1434.3, !dbg !2158
  store i64 %or.i.i1442.3, ptr %cur_bits.i.i1438, align 8, !dbg !2159
  %sub.i.i1444.3 = sub nsw i32 %191, %conv.i1437.3, !dbg !2160
  store i32 %sub.i.i1444.3, ptr %i_left.i, align 8, !dbg !2160
  %cmp.i.i1445.3 = icmp slt i32 %sub.i.i1444.3, 33, !dbg !2161
  br i1 %cmp.i.i1445.3, label %if.end311.sink.split, label %if.end311, !dbg !2162

if.else310:                                       ; preds = %if.end291
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2175)
    #dbg_value(i32 4, !1682, !DIExpression(), !2175)
    #dbg_value(i32 15, !1683, !DIExpression(), !2175)
  %cur_bits.i1455 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2177
  %196 = load i64, ptr %cur_bits.i1455, align 8, !dbg !2177
  %shl.i1456 = shl i64 %196, 4, !dbg !2178
  %or.i1457 = or disjoint i64 %shl.i1456, 15, !dbg !2179
  store i64 %or.i1457, ptr %cur_bits.i1455, align 8, !dbg !2180
  %197 = load i32, ptr %i_left.i, align 8, !dbg !2181
  %sub.i1459 = add nsw i32 %197, -4, !dbg !2181
  store i32 %sub.i1459, ptr %i_left.i, align 8, !dbg !2181
  %cmp.i1460 = icmp slt i32 %197, 37, !dbg !2182
  br i1 %cmp.i1460, label %if.end311.sink.split, label %if.end311, !dbg !2183

if.end311.sink.split:                             ; preds = %if.else310, %bs_write_ue.exit1454.2
  %sub.i.i1444.3.sink = phi i32 [ %sub.i.i1444.3, %bs_write_ue.exit1454.2 ], [ %sub.i1459, %if.else310 ]
  %or.i.i1442.3.sink = phi i64 [ %or.i.i1442.3, %bs_write_ue.exit1454.2 ], [ %or.i1457, %if.else310 ]
  %sh_prom6.i.i1447.3 = zext nneg i32 %sub.i.i1444.3.sink to i64, !dbg !2184
  %shl7.i.i1448.3 = shl i64 %or.i.i1442.3.sink, %sh_prom6.i.i1447.3, !dbg !2184
  %add.i.i.i.i1449.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.3), !dbg !2184
  %conv8.i.i1450.3 = trunc i64 %add.i.i.i.i1449.3 to i32, !dbg !2184
  %198 = load ptr, ptr %p.i, align 8, !dbg !2184
  store i32 %conv8.i.i1450.3, ptr %198, align 4, !dbg !2184
  %199 = load i32, ptr %i_left.i, align 8, !dbg !2184
  %add.i.i1452.3 = add nsw i32 %199, 32, !dbg !2184
  store i32 %add.i.i1452.3, ptr %i_left.i, align 8, !dbg !2184
  %200 = load ptr, ptr %p.i, align 8, !dbg !2184
  %add.ptr.i.i1453.3 = getelementptr inbounds i8, ptr %200, i64 4, !dbg !2184
  store ptr %add.ptr.i.i1453.3, ptr %p.i, align 8, !dbg !2184
  br label %if.end311, !dbg !2185

if.end311:                                        ; preds = %if.end311.sink.split, %bs_write_ue.exit1454.2, %if.else310
  %201 = phi i32 [ %sub.i1459, %if.else310 ], [ %sub.i.i1444.3, %bs_write_ue.exit1454.2 ], [ %add.i.i1452.3, %if.end311.sink.split ]
  br i1 %cmp287, label %if.end362, label %if.then313, !dbg !2185

if.then313:                                       ; preds = %if.end311
  %i_fref316 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2186
  %202 = load i32, ptr %i_fref316, align 8, !dbg !2189
  %203 = load i8, ptr %arrayidx262, align 1, !dbg !2190
  %conv325 = sext i8 %203 to i32, !dbg !2190
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2198)
    #dbg_value(i32 %202, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2198)
    #dbg_value(i32 %conv325, !2197, !DIExpression(), !2198)
  %cmp.i1470 = icmp eq i32 %202, 2, !dbg !2200
  br i1 %cmp.i1470, label %if.then.i1473, label %if.else.i, !dbg !2202

if.then.i1473:                                    ; preds = %if.then313
  %xor.i = xor i32 %conv325, 1, !dbg !2203
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2204)
    #dbg_value(i32 %xor.i, !1637, !DIExpression(), !2204)
  %cur_bits.i.i1474 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2206
  %204 = load i64, ptr %cur_bits.i.i1474, align 8, !dbg !2207
  %shl.i.i1475 = shl i64 %204, 1, !dbg !2207
  %conv.i.i1476 = zext i32 %xor.i to i64, !dbg !2208
  %or.i.i1477 = or i64 %shl.i.i1475, %conv.i.i1476, !dbg !2209
  store i64 %or.i.i1477, ptr %cur_bits.i.i1474, align 8, !dbg !2209
  %dec.i.i = add nsw i32 %201, -1, !dbg !2210
  %cmp.i.i1479 = icmp eq i32 %dec.i.i, 32, !dbg !2211
  br i1 %cmp.i.i1479, label %if.then.i.i1480, label %bs_write_te.exit, !dbg !2212

if.then.i.i1480:                                  ; preds = %if.then.i1473
  %conv6.i.i = trunc i64 %or.i.i1477 to i32, !dbg !2213
    #dbg_value(i32 %conv6.i.i, !1650, !DIExpression(), !2214)
  %add5.i.i.i1481 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i), !dbg !2216
  %205 = load ptr, ptr %p.i, align 8, !dbg !2217
  store i32 %add5.i.i.i1481, ptr %205, align 4, !dbg !2218
  br label %bs_write_te.exit.sink.split, !dbg !2219

if.else.i:                                        ; preds = %if.then313
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2220)
    #dbg_value(i32 %conv325, !1672, !DIExpression(), !2220)
  %add.i.i1471 = add nsw i32 %conv325, 1, !dbg !2222
  %idxprom.i.i = sext i32 %add.i.i1471 to i64, !dbg !2223
  %arrayidx.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i, !dbg !2223
  %206 = load i8, ptr %arrayidx.i.i, align 1, !dbg !2223
  %conv.i3.i = zext i8 %206 to i32, !dbg !2223
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2224)
    #dbg_value(i32 %conv.i3.i, !1682, !DIExpression(), !2224)
    #dbg_value(i32 %add.i.i1471, !1683, !DIExpression(), !2224)
  %cur_bits.i.i.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2226
  %207 = load i64, ptr %cur_bits.i.i.i, align 8, !dbg !2226
  %sh_prom.i.i.i = zext nneg i8 %206 to i64, !dbg !2227
  %shl.i.i.i = shl i64 %207, %sh_prom.i.i.i, !dbg !2227
  %conv.i.i.i = zext i32 %add.i.i1471 to i64, !dbg !2228
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i, !dbg !2229
  store i64 %or.i.i.i, ptr %cur_bits.i.i.i, align 8, !dbg !2230
  %sub.i.i.i = sub nsw i32 %201, %conv.i3.i, !dbg !2231
  store i32 %sub.i.i.i, ptr %i_left.i, align 8, !dbg !2231
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 33, !dbg !2232
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %bs_write_te.exit, !dbg !2233

if.then.i.i.i:                                    ; preds = %if.else.i
  %sh_prom6.i.i.i = zext nneg i32 %sub.i.i.i to i64, !dbg !2234
  %shl7.i.i.i = shl i64 %or.i.i.i, %sh_prom6.i.i.i, !dbg !2234
    #dbg_value(i64 %shl7.i.i.i, !1698, !DIExpression(), !2235)
    #dbg_value(i64 %shl7.i.i.i, !1705, !DIExpression(), !2237)
  %add.i.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i), !dbg !2239
  %conv8.i.i.i = trunc i64 %add.i.i.i.i.i to i32, !dbg !2240
  %208 = load ptr, ptr %p.i, align 8, !dbg !2241
  store i32 %conv8.i.i.i, ptr %208, align 4, !dbg !2242
  %209 = load i32, ptr %i_left.i, align 8, !dbg !2243
  %add.i.i.i1472 = add nsw i32 %209, 32, !dbg !2243
  br label %bs_write_te.exit.sink.split, !dbg !2244

bs_write_te.exit.sink.split:                      ; preds = %if.then.i.i.i, %if.then.i.i1480
  %.ph = phi i32 [ %add.i.i.i1472, %if.then.i.i.i ], [ 64, %if.then.i.i1480 ]
  %210 = load ptr, ptr %p.i, align 8, !dbg !2245
  %add.ptr.i.i1483 = getelementptr inbounds i8, ptr %210, i64 4, !dbg !2245
  store ptr %add.ptr.i.i1483, ptr %p.i, align 8, !dbg !2245
  br label %bs_write_te.exit, !dbg !2246

bs_write_te.exit:                                 ; preds = %bs_write_te.exit.sink.split, %if.then.i1473, %if.else.i
  %211 = phi i32 [ %dec.i.i, %if.then.i1473 ], [ %sub.i.i.i, %if.else.i ], [ %.ph, %bs_write_te.exit.sink.split ]
  %212 = load i32, ptr %i_fref316, align 8, !dbg !2246
  %213 = load i8, ptr %arrayidx269, align 1, !dbg !2247
  %conv337 = sext i8 %213 to i32, !dbg !2247
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2248)
    #dbg_value(i32 %212, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2248)
    #dbg_value(i32 %conv337, !2197, !DIExpression(), !2248)
  %cmp.i1484 = icmp eq i32 %212, 2, !dbg !2250
  br i1 %cmp.i1484, label %if.then.i1506, label %if.else.i1485, !dbg !2251

if.then.i1506:                                    ; preds = %bs_write_te.exit
  %xor.i1507 = xor i32 %conv337, 1, !dbg !2252
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2253)
    #dbg_value(i32 %xor.i1507, !1637, !DIExpression(), !2253)
  %cur_bits.i.i1508 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2255
  %214 = load i64, ptr %cur_bits.i.i1508, align 8, !dbg !2256
  %shl.i.i1509 = shl i64 %214, 1, !dbg !2256
  %conv.i.i1510 = zext i32 %xor.i1507 to i64, !dbg !2257
  %or.i.i1511 = or i64 %shl.i.i1509, %conv.i.i1510, !dbg !2258
  store i64 %or.i.i1511, ptr %cur_bits.i.i1508, align 8, !dbg !2258
  %dec.i.i1513 = add nsw i32 %211, -1, !dbg !2259
  %cmp.i.i1514 = icmp eq i32 %dec.i.i1513, 32, !dbg !2260
  br i1 %cmp.i.i1514, label %if.then.i.i1515, label %bs_write_te.exit1520, !dbg !2261

if.then.i.i1515:                                  ; preds = %if.then.i1506
  %conv6.i.i1516 = trunc i64 %or.i.i1511 to i32, !dbg !2262
    #dbg_value(i32 %conv6.i.i1516, !1650, !DIExpression(), !2263)
  %add5.i.i.i1517 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1516), !dbg !2265
  %215 = load ptr, ptr %p.i, align 8, !dbg !2266
  store i32 %add5.i.i.i1517, ptr %215, align 4, !dbg !2267
  br label %bs_write_te.exit1520.sink.split, !dbg !2268

if.else.i1485:                                    ; preds = %bs_write_te.exit
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2269)
    #dbg_value(i32 %conv337, !1672, !DIExpression(), !2269)
  %add.i.i1486 = add nsw i32 %conv337, 1, !dbg !2271
  %idxprom.i.i1487 = sext i32 %add.i.i1486 to i64, !dbg !2272
  %arrayidx.i.i1488 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1487, !dbg !2272
  %216 = load i8, ptr %arrayidx.i.i1488, align 1, !dbg !2272
  %conv.i3.i1489 = zext i8 %216 to i32, !dbg !2272
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2273)
    #dbg_value(i32 %conv.i3.i1489, !1682, !DIExpression(), !2273)
    #dbg_value(i32 %add.i.i1486, !1683, !DIExpression(), !2273)
  %cur_bits.i.i.i1490 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2275
  %217 = load i64, ptr %cur_bits.i.i.i1490, align 8, !dbg !2275
  %sh_prom.i.i.i1491 = zext nneg i8 %216 to i64, !dbg !2276
  %shl.i.i.i1492 = shl i64 %217, %sh_prom.i.i.i1491, !dbg !2276
  %conv.i.i.i1493 = zext i32 %add.i.i1486 to i64, !dbg !2277
  %or.i.i.i1494 = or i64 %shl.i.i.i1492, %conv.i.i.i1493, !dbg !2278
  store i64 %or.i.i.i1494, ptr %cur_bits.i.i.i1490, align 8, !dbg !2279
  %sub.i.i.i1496 = sub nsw i32 %211, %conv.i3.i1489, !dbg !2280
  store i32 %sub.i.i.i1496, ptr %i_left.i, align 8, !dbg !2280
  %cmp.i.i.i1497 = icmp slt i32 %sub.i.i.i1496, 33, !dbg !2281
  br i1 %cmp.i.i.i1497, label %if.then.i.i.i1498, label %bs_write_te.exit1520, !dbg !2282

if.then.i.i.i1498:                                ; preds = %if.else.i1485
  %sh_prom6.i.i.i1499 = zext nneg i32 %sub.i.i.i1496 to i64, !dbg !2283
  %shl7.i.i.i1500 = shl i64 %or.i.i.i1494, %sh_prom6.i.i.i1499, !dbg !2283
    #dbg_value(i64 %shl7.i.i.i1500, !1698, !DIExpression(), !2284)
    #dbg_value(i64 %shl7.i.i.i1500, !1705, !DIExpression(), !2286)
  %add.i.i.i.i.i1501 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1500), !dbg !2288
  %conv8.i.i.i1502 = trunc i64 %add.i.i.i.i.i1501 to i32, !dbg !2289
  %218 = load ptr, ptr %p.i, align 8, !dbg !2290
  store i32 %conv8.i.i.i1502, ptr %218, align 4, !dbg !2291
  %219 = load i32, ptr %i_left.i, align 8, !dbg !2292
  %add.i.i.i1504 = add nsw i32 %219, 32, !dbg !2292
  br label %bs_write_te.exit1520.sink.split, !dbg !2293

bs_write_te.exit1520.sink.split:                  ; preds = %if.then.i.i.i1498, %if.then.i.i1515
  %.ph2133 = phi i32 [ %add.i.i.i1504, %if.then.i.i.i1498 ], [ 64, %if.then.i.i1515 ]
  %220 = load ptr, ptr %p.i, align 8, !dbg !2294
  %add.ptr.i.i1519 = getelementptr inbounds i8, ptr %220, i64 4, !dbg !2294
  store ptr %add.ptr.i.i1519, ptr %p.i, align 8, !dbg !2294
  br label %bs_write_te.exit1520, !dbg !2295

bs_write_te.exit1520:                             ; preds = %bs_write_te.exit1520.sink.split, %if.then.i1506, %if.else.i1485
  %221 = phi i32 [ %dec.i.i1513, %if.then.i1506 ], [ %sub.i.i.i1496, %if.else.i1485 ], [ %.ph2133, %bs_write_te.exit1520.sink.split ]
  %222 = load i32, ptr %i_fref316, align 8, !dbg !2295
  %223 = load i8, ptr %arrayidx276, align 1, !dbg !2296
  %conv349 = sext i8 %223 to i32, !dbg !2296
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2297)
    #dbg_value(i32 %222, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
    #dbg_value(i32 %conv349, !2197, !DIExpression(), !2297)
  %cmp.i1521 = icmp eq i32 %222, 2, !dbg !2299
  br i1 %cmp.i1521, label %if.then.i1543, label %if.else.i1522, !dbg !2300

if.then.i1543:                                    ; preds = %bs_write_te.exit1520
  %xor.i1544 = xor i32 %conv349, 1, !dbg !2301
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2302)
    #dbg_value(i32 %xor.i1544, !1637, !DIExpression(), !2302)
  %cur_bits.i.i1545 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2304
  %224 = load i64, ptr %cur_bits.i.i1545, align 8, !dbg !2305
  %shl.i.i1546 = shl i64 %224, 1, !dbg !2305
  %conv.i.i1547 = zext i32 %xor.i1544 to i64, !dbg !2306
  %or.i.i1548 = or i64 %shl.i.i1546, %conv.i.i1547, !dbg !2307
  store i64 %or.i.i1548, ptr %cur_bits.i.i1545, align 8, !dbg !2307
  %dec.i.i1550 = add nsw i32 %221, -1, !dbg !2308
  %cmp.i.i1551 = icmp eq i32 %dec.i.i1550, 32, !dbg !2309
  br i1 %cmp.i.i1551, label %if.then.i.i1552, label %bs_write_te.exit1557, !dbg !2310

if.then.i.i1552:                                  ; preds = %if.then.i1543
  %conv6.i.i1553 = trunc i64 %or.i.i1548 to i32, !dbg !2311
    #dbg_value(i32 %conv6.i.i1553, !1650, !DIExpression(), !2312)
  %add5.i.i.i1554 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1553), !dbg !2314
  %225 = load ptr, ptr %p.i, align 8, !dbg !2315
  store i32 %add5.i.i.i1554, ptr %225, align 4, !dbg !2316
  br label %bs_write_te.exit1557.sink.split, !dbg !2317

if.else.i1522:                                    ; preds = %bs_write_te.exit1520
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2318)
    #dbg_value(i32 %conv349, !1672, !DIExpression(), !2318)
  %add.i.i1523 = add nsw i32 %conv349, 1, !dbg !2320
  %idxprom.i.i1524 = sext i32 %add.i.i1523 to i64, !dbg !2321
  %arrayidx.i.i1525 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1524, !dbg !2321
  %226 = load i8, ptr %arrayidx.i.i1525, align 1, !dbg !2321
  %conv.i3.i1526 = zext i8 %226 to i32, !dbg !2321
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2322)
    #dbg_value(i32 %conv.i3.i1526, !1682, !DIExpression(), !2322)
    #dbg_value(i32 %add.i.i1523, !1683, !DIExpression(), !2322)
  %cur_bits.i.i.i1527 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2324
  %227 = load i64, ptr %cur_bits.i.i.i1527, align 8, !dbg !2324
  %sh_prom.i.i.i1528 = zext nneg i8 %226 to i64, !dbg !2325
  %shl.i.i.i1529 = shl i64 %227, %sh_prom.i.i.i1528, !dbg !2325
  %conv.i.i.i1530 = zext i32 %add.i.i1523 to i64, !dbg !2326
  %or.i.i.i1531 = or i64 %shl.i.i.i1529, %conv.i.i.i1530, !dbg !2327
  store i64 %or.i.i.i1531, ptr %cur_bits.i.i.i1527, align 8, !dbg !2328
  %sub.i.i.i1533 = sub nsw i32 %221, %conv.i3.i1526, !dbg !2329
  store i32 %sub.i.i.i1533, ptr %i_left.i, align 8, !dbg !2329
  %cmp.i.i.i1534 = icmp slt i32 %sub.i.i.i1533, 33, !dbg !2330
  br i1 %cmp.i.i.i1534, label %if.then.i.i.i1535, label %bs_write_te.exit1557, !dbg !2331

if.then.i.i.i1535:                                ; preds = %if.else.i1522
  %sh_prom6.i.i.i1536 = zext nneg i32 %sub.i.i.i1533 to i64, !dbg !2332
  %shl7.i.i.i1537 = shl i64 %or.i.i.i1531, %sh_prom6.i.i.i1536, !dbg !2332
    #dbg_value(i64 %shl7.i.i.i1537, !1698, !DIExpression(), !2333)
    #dbg_value(i64 %shl7.i.i.i1537, !1705, !DIExpression(), !2335)
  %add.i.i.i.i.i1538 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1537), !dbg !2337
  %conv8.i.i.i1539 = trunc i64 %add.i.i.i.i.i1538 to i32, !dbg !2338
  %228 = load ptr, ptr %p.i, align 8, !dbg !2339
  store i32 %conv8.i.i.i1539, ptr %228, align 4, !dbg !2340
  %229 = load i32, ptr %i_left.i, align 8, !dbg !2341
  %add.i.i.i1541 = add nsw i32 %229, 32, !dbg !2341
  br label %bs_write_te.exit1557.sink.split, !dbg !2342

bs_write_te.exit1557.sink.split:                  ; preds = %if.then.i.i.i1535, %if.then.i.i1552
  %.ph2134 = phi i32 [ %add.i.i.i1541, %if.then.i.i.i1535 ], [ 64, %if.then.i.i1552 ]
  %230 = load ptr, ptr %p.i, align 8, !dbg !2343
  %add.ptr.i.i1556 = getelementptr inbounds i8, ptr %230, i64 4, !dbg !2343
  store ptr %add.ptr.i.i1556, ptr %p.i, align 8, !dbg !2343
  br label %bs_write_te.exit1557, !dbg !2344

bs_write_te.exit1557:                             ; preds = %bs_write_te.exit1557.sink.split, %if.then.i1543, %if.else.i1522
  %231 = phi i32 [ %dec.i.i1550, %if.then.i1543 ], [ %sub.i.i.i1533, %if.else.i1522 ], [ %.ph2134, %bs_write_te.exit1557.sink.split ]
  %232 = load i32, ptr %i_fref316, align 8, !dbg !2344
  %233 = load i8, ptr %arrayidx284, align 1, !dbg !2345
  %conv361 = sext i8 %233 to i32, !dbg !2345
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2346)
    #dbg_value(i32 %232, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2346)
    #dbg_value(i32 %conv361, !2197, !DIExpression(), !2346)
  %cmp.i1558 = icmp eq i32 %232, 2, !dbg !2348
  br i1 %cmp.i1558, label %if.then.i1580, label %if.else.i1559, !dbg !2349

if.then.i1580:                                    ; preds = %bs_write_te.exit1557
  %xor.i1581 = xor i32 %conv361, 1, !dbg !2350
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2351)
    #dbg_value(i32 %xor.i1581, !1637, !DIExpression(), !2351)
  %cur_bits.i.i1582 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2353
  %234 = load i64, ptr %cur_bits.i.i1582, align 8, !dbg !2354
  %shl.i.i1583 = shl i64 %234, 1, !dbg !2354
  %conv.i.i1584 = zext i32 %xor.i1581 to i64, !dbg !2355
  %or.i.i1585 = or i64 %shl.i.i1583, %conv.i.i1584, !dbg !2356
  store i64 %or.i.i1585, ptr %cur_bits.i.i1582, align 8, !dbg !2356
  %dec.i.i1587 = add nsw i32 %231, -1, !dbg !2357
  store i32 %dec.i.i1587, ptr %i_left.i, align 8, !dbg !2357
  %cmp.i.i1588 = icmp eq i32 %dec.i.i1587, 32, !dbg !2358
  br i1 %cmp.i.i1588, label %if.then.i.i1589, label %if.end362, !dbg !2359

if.then.i.i1589:                                  ; preds = %if.then.i1580
  %conv6.i.i1590 = trunc i64 %or.i.i1585 to i32, !dbg !2360
    #dbg_value(i32 %conv6.i.i1590, !1650, !DIExpression(), !2361)
  %add5.i.i.i1591 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1590), !dbg !2363
  %235 = load ptr, ptr %p.i, align 8, !dbg !2364
  store i32 %add5.i.i.i1591, ptr %235, align 4, !dbg !2365
  %236 = load ptr, ptr %p.i, align 8, !dbg !2366
  %add.ptr.i.i1593 = getelementptr inbounds i8, ptr %236, i64 4, !dbg !2366
  store ptr %add.ptr.i.i1593, ptr %p.i, align 8, !dbg !2366
  store i32 64, ptr %i_left.i, align 8, !dbg !2367
  br label %if.end362, !dbg !2368

if.else.i1559:                                    ; preds = %bs_write_te.exit1557
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2369)
    #dbg_value(i32 %conv361, !1672, !DIExpression(), !2369)
  %add.i.i1560 = add nsw i32 %conv361, 1, !dbg !2371
  %idxprom.i.i1561 = sext i32 %add.i.i1560 to i64, !dbg !2372
  %arrayidx.i.i1562 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1561, !dbg !2372
  %237 = load i8, ptr %arrayidx.i.i1562, align 1, !dbg !2372
  %conv.i3.i1563 = zext i8 %237 to i32, !dbg !2372
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2373)
    #dbg_value(i32 %conv.i3.i1563, !1682, !DIExpression(), !2373)
    #dbg_value(i32 %add.i.i1560, !1683, !DIExpression(), !2373)
  %cur_bits.i.i.i1564 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2375
  %238 = load i64, ptr %cur_bits.i.i.i1564, align 8, !dbg !2375
  %sh_prom.i.i.i1565 = zext nneg i8 %237 to i64, !dbg !2376
  %shl.i.i.i1566 = shl i64 %238, %sh_prom.i.i.i1565, !dbg !2376
  %conv.i.i.i1567 = zext i32 %add.i.i1560 to i64, !dbg !2377
  %or.i.i.i1568 = or i64 %shl.i.i.i1566, %conv.i.i.i1567, !dbg !2378
  store i64 %or.i.i.i1568, ptr %cur_bits.i.i.i1564, align 8, !dbg !2379
  %sub.i.i.i1570 = sub nsw i32 %231, %conv.i3.i1563, !dbg !2380
  store i32 %sub.i.i.i1570, ptr %i_left.i, align 8, !dbg !2380
  %cmp.i.i.i1571 = icmp slt i32 %sub.i.i.i1570, 33, !dbg !2381
  br i1 %cmp.i.i.i1571, label %if.then.i.i.i1572, label %if.end362, !dbg !2382

if.then.i.i.i1572:                                ; preds = %if.else.i1559
  %sh_prom6.i.i.i1573 = zext nneg i32 %sub.i.i.i1570 to i64, !dbg !2383
  %shl7.i.i.i1574 = shl i64 %or.i.i.i1568, %sh_prom6.i.i.i1573, !dbg !2383
    #dbg_value(i64 %shl7.i.i.i1574, !1698, !DIExpression(), !2384)
    #dbg_value(i64 %shl7.i.i.i1574, !1705, !DIExpression(), !2386)
  %add.i.i.i.i.i1575 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1574), !dbg !2388
  %conv8.i.i.i1576 = trunc i64 %add.i.i.i.i.i1575 to i32, !dbg !2389
  %239 = load ptr, ptr %p.i, align 8, !dbg !2390
  store i32 %conv8.i.i.i1576, ptr %239, align 4, !dbg !2391
  %240 = load i32, ptr %i_left.i, align 8, !dbg !2392
  %add.i.i.i1578 = add nsw i32 %240, 32, !dbg !2392
  store i32 %add.i.i.i1578, ptr %i_left.i, align 8, !dbg !2392
  %241 = load ptr, ptr %p.i, align 8, !dbg !2393
  %add.ptr.i.i.i1579 = getelementptr inbounds i8, ptr %241, i64 4, !dbg !2393
  store ptr %add.ptr.i.i.i1579, ptr %p.i, align 8, !dbg !2393
  br label %if.end362, !dbg !2394

if.end362:                                        ; preds = %if.then.i.i.i1572, %if.else.i1559, %if.then.i.i1589, %if.then.i1580, %if.end311
    #dbg_value(i32 0, !1546, !DIExpression(), !2395)
  %i_sub_partition.i = getelementptr inbounds i8, ptr %h, i64 17392
    #dbg_value(i64 0, !1546, !DIExpression(), !2395)
    #dbg_value(ptr %h, !2396, !DIExpression(), !2402)
    #dbg_value(i64 0, !2401, !DIExpression(), !2402)
  %242 = load i8, ptr %i_sub_partition.i, align 1, !dbg !2405
  switch i8 %242, label %cavlc_mb8x8_mvd.exit [
    i8 3, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb5.i
    i8 0, label %sw.bb10.i
  ], !dbg !2406

sw.bb.i:                                          ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2407
  br label %cavlc_mb8x8_mvd.exit, !dbg !2409

sw.bb1.i:                                         ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2410
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 2), !dbg !2411
  br label %cavlc_mb8x8_mvd.exit, !dbg !2412

sw.bb5.i:                                         ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 1), !dbg !2413
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 1, i32 noundef 1), !dbg !2414
  br label %cavlc_mb8x8_mvd.exit, !dbg !2415

sw.bb10.i:                                        ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 1), !dbg !2416
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 1, i32 noundef 1), !dbg !2417
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 1), !dbg !2418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 3, i32 noundef 1), !dbg !2419
  br label %cavlc_mb8x8_mvd.exit, !dbg !2420

cavlc_mb8x8_mvd.exit:                             ; preds = %if.end362, %sw.bb.i, %sw.bb1.i, %sw.bb5.i, %sw.bb10.i
    #dbg_value(i64 1, !1546, !DIExpression(), !2395)
    #dbg_value(ptr %h, !2396, !DIExpression(), !2402)
    #dbg_value(i64 1, !2401, !DIExpression(), !2402)
  %arrayidx.i1596.1 = getelementptr inbounds i8, ptr %h, i64 17393, !dbg !2405
  %243 = load i8, ptr %arrayidx.i1596.1, align 1, !dbg !2405
  switch i8 %243, label %cavlc_mb8x8_mvd.exit.1 [
    i8 3, label %sw.bb.i.1
    i8 1, label %sw.bb1.i.1
    i8 2, label %sw.bb5.i.1
    i8 0, label %sw.bb10.i.1
  ], !dbg !2406

sw.bb10.i.1:                                      ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 1), !dbg !2416
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 5, i32 noundef 1), !dbg !2417
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 6, i32 noundef 1), !dbg !2418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 7, i32 noundef 1), !dbg !2419
  br label %cavlc_mb8x8_mvd.exit.1, !dbg !2420

sw.bb5.i.1:                                       ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 1), !dbg !2413
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 5, i32 noundef 1), !dbg !2414
  br label %cavlc_mb8x8_mvd.exit.1, !dbg !2415

sw.bb1.i.1:                                       ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2410
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 6, i32 noundef 2), !dbg !2411
  br label %cavlc_mb8x8_mvd.exit.1, !dbg !2412

sw.bb.i.1:                                        ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2407
  br label %cavlc_mb8x8_mvd.exit.1, !dbg !2409

cavlc_mb8x8_mvd.exit.1:                           ; preds = %sw.bb.i.1, %sw.bb1.i.1, %sw.bb5.i.1, %sw.bb10.i.1, %cavlc_mb8x8_mvd.exit
    #dbg_value(i64 2, !1546, !DIExpression(), !2395)
    #dbg_value(ptr %h, !2396, !DIExpression(), !2402)
    #dbg_value(i64 2, !2401, !DIExpression(), !2402)
  %arrayidx.i1596.2 = getelementptr inbounds i8, ptr %h, i64 17394, !dbg !2405
  %244 = load i8, ptr %arrayidx.i1596.2, align 1, !dbg !2405
  switch i8 %244, label %cavlc_mb8x8_mvd.exit.2 [
    i8 3, label %sw.bb.i.2
    i8 1, label %sw.bb1.i.2
    i8 2, label %sw.bb5.i.2
    i8 0, label %sw.bb10.i.2
  ], !dbg !2406

sw.bb10.i.2:                                      ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 1), !dbg !2416
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 9, i32 noundef 1), !dbg !2417
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 10, i32 noundef 1), !dbg !2418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 11, i32 noundef 1), !dbg !2419
  br label %cavlc_mb8x8_mvd.exit.2, !dbg !2420

sw.bb5.i.2:                                       ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 1), !dbg !2413
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 9, i32 noundef 1), !dbg !2414
  br label %cavlc_mb8x8_mvd.exit.2, !dbg !2415

sw.bb1.i.2:                                       ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2), !dbg !2410
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 10, i32 noundef 2), !dbg !2411
  br label %cavlc_mb8x8_mvd.exit.2, !dbg !2412

sw.bb.i.2:                                        ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2), !dbg !2407
  br label %cavlc_mb8x8_mvd.exit.2, !dbg !2409

cavlc_mb8x8_mvd.exit.2:                           ; preds = %sw.bb.i.2, %sw.bb1.i.2, %sw.bb5.i.2, %sw.bb10.i.2, %cavlc_mb8x8_mvd.exit.1
    #dbg_value(i64 3, !1546, !DIExpression(), !2395)
    #dbg_value(ptr %h, !2396, !DIExpression(), !2402)
    #dbg_value(i64 3, !2401, !DIExpression(), !2402)
  %arrayidx.i1596.3 = getelementptr inbounds i8, ptr %h, i64 17395, !dbg !2405
  %245 = load i8, ptr %arrayidx.i1596.3, align 1, !dbg !2405
  switch i8 %245, label %if.end697 [
    i8 3, label %sw.bb.i.3
    i8 1, label %sw.bb1.i.3
    i8 2, label %sw.bb5.i.3
    i8 0, label %sw.bb10.i.3
  ], !dbg !2406

sw.bb10.i.3:                                      ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 1), !dbg !2416
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 13, i32 noundef 1), !dbg !2417
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 14, i32 noundef 1), !dbg !2418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 15, i32 noundef 1), !dbg !2419
  br label %if.end697, !dbg !2420

sw.bb5.i.3:                                       ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 1), !dbg !2413
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 13, i32 noundef 1), !dbg !2414
  br label %if.end697, !dbg !2415

sw.bb1.i.3:                                       ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2), !dbg !2410
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 14, i32 noundef 2), !dbg !2411
  br label %if.end697, !dbg !2412

sw.bb.i.3:                                        ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2), !dbg !2407
  br label %if.end697, !dbg !2409

if.then375:                                       ; preds = %if.else125
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2421)
    #dbg_value(i32 22, !1672, !DIExpression(), !2421)
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2423)
    #dbg_value(i32 9, !1682, !DIExpression(), !2423)
    #dbg_value(i32 23, !1683, !DIExpression(), !2423)
  %cur_bits.i.i1598 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2425
  %246 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2425
  %shl.i.i1599 = shl i64 %246, 9, !dbg !2426
  %or.i.i1600 = or disjoint i64 %shl.i.i1599, 23, !dbg !2427
  store i64 %or.i.i1600, ptr %cur_bits.i.i1598, align 8, !dbg !2428
  %sub.i.i1602 = add nsw i32 %16, -9, !dbg !2429
  store i32 %sub.i.i1602, ptr %i_left.i, align 8, !dbg !2429
  %cmp.i.i1603 = icmp slt i32 %16, 42, !dbg !2430
  br i1 %cmp.i.i1603, label %if.then.i.i1604, label %bs_write_ue.exit1612, !dbg !2431

if.then.i.i1604:                                  ; preds = %if.then375
  %sh_prom6.i.i1605 = zext nneg i32 %sub.i.i1602 to i64, !dbg !2432
  %shl7.i.i1606 = shl i64 %or.i.i1600, %sh_prom6.i.i1605, !dbg !2432
    #dbg_value(i64 %shl7.i.i1606, !1698, !DIExpression(), !2433)
    #dbg_value(i64 %shl7.i.i1606, !1705, !DIExpression(), !2435)
  %add.i.i.i.i1607 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1606), !dbg !2437
  %conv8.i.i1608 = trunc i64 %add.i.i.i.i1607 to i32, !dbg !2438
  store i32 %conv8.i.i1608, ptr %15, align 4, !dbg !2439
  %247 = load i32, ptr %i_left.i, align 8, !dbg !2440
  %add.i.i1610 = add nsw i32 %247, 32, !dbg !2440
  %248 = load ptr, ptr %p.i, align 8, !dbg !2441
  %add.ptr.i.i1611 = getelementptr inbounds i8, ptr %248, i64 4, !dbg !2441
  store ptr %add.ptr.i.i1611, ptr %p.i, align 8, !dbg !2441
  %.pre = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2442
  br label %bs_write_ue.exit1612, !dbg !2446

bs_write_ue.exit1612:                             ; preds = %if.then375, %if.then.i.i1604
  %249 = phi ptr [ %15, %if.then375 ], [ %add.ptr.i.i1611, %if.then.i.i1604 ]
  %250 = phi i32 [ %sub.i.i1602, %if.then375 ], [ %add.i.i1610, %if.then.i.i1604 ], !dbg !2447
  %251 = phi i64 [ %or.i.i1600, %if.then375 ], [ %.pre, %if.then.i.i1604 ], !dbg !2442
    #dbg_value(i32 0, !1548, !DIExpression(), !2448)
  %i_sub_partition383 = getelementptr inbounds i8, ptr %h, i64 17392
    #dbg_value(i64 0, !1548, !DIExpression(), !2448)
  %252 = load i8, ptr %i_sub_partition383, align 1, !dbg !2449
  %idxprom386 = zext i8 %252 to i64, !dbg !2450
  %arrayidx387 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386, !dbg !2450
  %253 = load i8, ptr %arrayidx387, align 1, !dbg !2450
  %conv388 = zext i8 %253 to i64, !dbg !2450
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2451)
    #dbg_value(i8 %253, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2451)
  %add.i1613 = add nuw nsw i64 %conv388, 1, !dbg !2452
  %arrayidx.i1615 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613, !dbg !2453
  %254 = load i8, ptr %arrayidx.i1615, align 1, !dbg !2453
  %conv.i1616 = zext i8 %254 to i32, !dbg !2453
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2454)
    #dbg_value(i32 %conv.i1616, !1682, !DIExpression(), !2454)
    #dbg_value(i64 %add.i1613, !1683, !DIExpression(), !2454)
  %sh_prom.i.i1618 = zext nneg i8 %254 to i64, !dbg !2455
  %shl.i.i1619 = shl i64 %251, %sh_prom.i.i1618, !dbg !2455
  %or.i.i1621 = or i64 %shl.i.i1619, %add.i1613, !dbg !2456
  store i64 %or.i.i1621, ptr %cur_bits.i.i1598, align 8, !dbg !2457
  %sub.i.i1623 = sub nsw i32 %250, %conv.i1616, !dbg !2447
  store i32 %sub.i.i1623, ptr %i_left.i, align 8, !dbg !2447
  %cmp.i.i1624 = icmp slt i32 %sub.i.i1623, 33, !dbg !2458
  br i1 %cmp.i.i1624, label %if.then.i.i1625, label %bs_write_ue.exit1633, !dbg !2459

for.cond400.preheader:                            ; preds = %bs_write_ue.exit1633.3
    #dbg_value(i64 0, !1552, !DIExpression(), !2460)
  %idxprom409 = zext i8 %.pre2121.pre2129 to i64, !dbg !2461
  %arrayidx410 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409, !dbg !2461
  %255 = load i8, ptr %arrayidx410, align 1, !dbg !2461
  %tobool411.not = icmp eq i8 %255, 0, !dbg !2461
  br i1 %tobool411.not, label %for.inc429, label %if.then412, !dbg !2464

if.then.i.i1625:                                  ; preds = %bs_write_ue.exit1612
  %sh_prom6.i.i1626 = zext nneg i32 %sub.i.i1623 to i64, !dbg !2465
  %shl7.i.i1627 = shl i64 %or.i.i1621, %sh_prom6.i.i1626, !dbg !2465
    #dbg_value(i64 %shl7.i.i1627, !1698, !DIExpression(), !2466)
    #dbg_value(i64 %shl7.i.i1627, !1705, !DIExpression(), !2468)
  %add.i.i.i.i1628 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627), !dbg !2470
  %conv8.i.i1629 = trunc i64 %add.i.i.i.i1628 to i32, !dbg !2471
  store i32 %conv8.i.i1629, ptr %249, align 4, !dbg !2472
  %256 = load i32, ptr %i_left.i, align 8, !dbg !2473
  %add.i.i1631 = add nsw i32 %256, 32, !dbg !2473
  %257 = load ptr, ptr %p.i, align 8, !dbg !2474
  %add.ptr.i.i1632 = getelementptr inbounds i8, ptr %257, i64 4, !dbg !2474
  store ptr %add.ptr.i.i1632, ptr %p.i, align 8, !dbg !2474
  %.pre2117 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2442
  br label %bs_write_ue.exit1633, !dbg !2475

bs_write_ue.exit1633:                             ; preds = %bs_write_ue.exit1612, %if.then.i.i1625
  %258 = phi ptr [ %249, %bs_write_ue.exit1612 ], [ %add.ptr.i.i1632, %if.then.i.i1625 ]
  %259 = phi i32 [ %sub.i.i1623, %bs_write_ue.exit1612 ], [ %add.i.i1631, %if.then.i.i1625 ], !dbg !2447
  %260 = phi i64 [ %or.i.i1621, %bs_write_ue.exit1612 ], [ %.pre2117, %if.then.i.i1625 ], !dbg !2442
    #dbg_value(i64 1, !1548, !DIExpression(), !2448)
  %arrayidx385.1 = getelementptr inbounds i8, ptr %h, i64 17393, !dbg !2449
  %261 = load i8, ptr %arrayidx385.1, align 1, !dbg !2449
  %idxprom386.1 = zext i8 %261 to i64, !dbg !2450
  %arrayidx387.1 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.1, !dbg !2450
  %262 = load i8, ptr %arrayidx387.1, align 1, !dbg !2450
  %conv388.1 = zext i8 %262 to i64, !dbg !2450
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2451)
    #dbg_value(i8 %262, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2451)
  %add.i1613.1 = add nuw nsw i64 %conv388.1, 1, !dbg !2452
  %arrayidx.i1615.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.1, !dbg !2453
  %263 = load i8, ptr %arrayidx.i1615.1, align 1, !dbg !2453
  %conv.i1616.1 = zext i8 %263 to i32, !dbg !2453
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2454)
    #dbg_value(i32 %conv.i1616.1, !1682, !DIExpression(), !2454)
    #dbg_value(i64 %add.i1613.1, !1683, !DIExpression(), !2454)
  %sh_prom.i.i1618.1 = zext nneg i8 %263 to i64, !dbg !2455
  %shl.i.i1619.1 = shl i64 %260, %sh_prom.i.i1618.1, !dbg !2455
  %or.i.i1621.1 = or i64 %shl.i.i1619.1, %add.i1613.1, !dbg !2456
  store i64 %or.i.i1621.1, ptr %cur_bits.i.i1598, align 8, !dbg !2457
  %sub.i.i1623.1 = sub nsw i32 %259, %conv.i1616.1, !dbg !2447
  store i32 %sub.i.i1623.1, ptr %i_left.i, align 8, !dbg !2447
  %cmp.i.i1624.1 = icmp slt i32 %sub.i.i1623.1, 33, !dbg !2458
  br i1 %cmp.i.i1624.1, label %if.then.i.i1625.1, label %bs_write_ue.exit1633.1, !dbg !2459

if.then.i.i1625.1:                                ; preds = %bs_write_ue.exit1633
  %sh_prom6.i.i1626.1 = zext nneg i32 %sub.i.i1623.1 to i64, !dbg !2465
  %shl7.i.i1627.1 = shl i64 %or.i.i1621.1, %sh_prom6.i.i1626.1, !dbg !2465
    #dbg_value(i64 %shl7.i.i1627.1, !1698, !DIExpression(), !2466)
    #dbg_value(i64 %shl7.i.i1627.1, !1705, !DIExpression(), !2468)
  %add.i.i.i.i1628.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.1), !dbg !2470
  %conv8.i.i1629.1 = trunc i64 %add.i.i.i.i1628.1 to i32, !dbg !2471
  store i32 %conv8.i.i1629.1, ptr %258, align 4, !dbg !2472
  %264 = load i32, ptr %i_left.i, align 8, !dbg !2473
  %add.i.i1631.1 = add nsw i32 %264, 32, !dbg !2473
  %265 = load ptr, ptr %p.i, align 8, !dbg !2474
  %add.ptr.i.i1632.1 = getelementptr inbounds i8, ptr %265, i64 4, !dbg !2474
  store ptr %add.ptr.i.i1632.1, ptr %p.i, align 8, !dbg !2474
  %.pre2118 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2442
  br label %bs_write_ue.exit1633.1, !dbg !2475

bs_write_ue.exit1633.1:                           ; preds = %if.then.i.i1625.1, %bs_write_ue.exit1633
  %266 = phi ptr [ %add.ptr.i.i1632.1, %if.then.i.i1625.1 ], [ %258, %bs_write_ue.exit1633 ]
  %267 = phi i32 [ %add.i.i1631.1, %if.then.i.i1625.1 ], [ %sub.i.i1623.1, %bs_write_ue.exit1633 ], !dbg !2447
  %268 = phi i64 [ %.pre2118, %if.then.i.i1625.1 ], [ %or.i.i1621.1, %bs_write_ue.exit1633 ], !dbg !2442
    #dbg_value(i64 2, !1548, !DIExpression(), !2448)
  %arrayidx385.2 = getelementptr inbounds i8, ptr %h, i64 17394, !dbg !2449
  %269 = load i8, ptr %arrayidx385.2, align 1, !dbg !2449
  %idxprom386.2 = zext i8 %269 to i64, !dbg !2450
  %arrayidx387.2 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.2, !dbg !2450
  %270 = load i8, ptr %arrayidx387.2, align 1, !dbg !2450
  %conv388.2 = zext i8 %270 to i64, !dbg !2450
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2451)
    #dbg_value(i8 %270, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2451)
  %add.i1613.2 = add nuw nsw i64 %conv388.2, 1, !dbg !2452
  %arrayidx.i1615.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.2, !dbg !2453
  %271 = load i8, ptr %arrayidx.i1615.2, align 1, !dbg !2453
  %conv.i1616.2 = zext i8 %271 to i32, !dbg !2453
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2454)
    #dbg_value(i32 %conv.i1616.2, !1682, !DIExpression(), !2454)
    #dbg_value(i64 %add.i1613.2, !1683, !DIExpression(), !2454)
  %sh_prom.i.i1618.2 = zext nneg i8 %271 to i64, !dbg !2455
  %shl.i.i1619.2 = shl i64 %268, %sh_prom.i.i1618.2, !dbg !2455
  %or.i.i1621.2 = or i64 %shl.i.i1619.2, %add.i1613.2, !dbg !2456
  store i64 %or.i.i1621.2, ptr %cur_bits.i.i1598, align 8, !dbg !2457
  %sub.i.i1623.2 = sub nsw i32 %267, %conv.i1616.2, !dbg !2447
  store i32 %sub.i.i1623.2, ptr %i_left.i, align 8, !dbg !2447
  %cmp.i.i1624.2 = icmp slt i32 %sub.i.i1623.2, 33, !dbg !2458
  br i1 %cmp.i.i1624.2, label %if.then.i.i1625.2, label %bs_write_ue.exit1633.2, !dbg !2459

if.then.i.i1625.2:                                ; preds = %bs_write_ue.exit1633.1
  %sh_prom6.i.i1626.2 = zext nneg i32 %sub.i.i1623.2 to i64, !dbg !2465
  %shl7.i.i1627.2 = shl i64 %or.i.i1621.2, %sh_prom6.i.i1626.2, !dbg !2465
    #dbg_value(i64 %shl7.i.i1627.2, !1698, !DIExpression(), !2466)
    #dbg_value(i64 %shl7.i.i1627.2, !1705, !DIExpression(), !2468)
  %add.i.i.i.i1628.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.2), !dbg !2470
  %conv8.i.i1629.2 = trunc i64 %add.i.i.i.i1628.2 to i32, !dbg !2471
  store i32 %conv8.i.i1629.2, ptr %266, align 4, !dbg !2472
  %272 = load i32, ptr %i_left.i, align 8, !dbg !2473
  %add.i.i1631.2 = add nsw i32 %272, 32, !dbg !2473
  %273 = load ptr, ptr %p.i, align 8, !dbg !2474
  %add.ptr.i.i1632.2 = getelementptr inbounds i8, ptr %273, i64 4, !dbg !2474
  store ptr %add.ptr.i.i1632.2, ptr %p.i, align 8, !dbg !2474
  %.pre2119 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2442
  br label %bs_write_ue.exit1633.2, !dbg !2475

bs_write_ue.exit1633.2:                           ; preds = %if.then.i.i1625.2, %bs_write_ue.exit1633.1
  %274 = phi ptr [ %add.ptr.i.i1632.2, %if.then.i.i1625.2 ], [ %266, %bs_write_ue.exit1633.1 ]
  %275 = phi i32 [ %add.i.i1631.2, %if.then.i.i1625.2 ], [ %sub.i.i1623.2, %bs_write_ue.exit1633.1 ], !dbg !2447
  %276 = phi i64 [ %.pre2119, %if.then.i.i1625.2 ], [ %or.i.i1621.2, %bs_write_ue.exit1633.1 ], !dbg !2442
    #dbg_value(i64 3, !1548, !DIExpression(), !2448)
  %arrayidx385.3 = getelementptr inbounds i8, ptr %h, i64 17395, !dbg !2449
  %277 = load i8, ptr %arrayidx385.3, align 1, !dbg !2449
  %idxprom386.3 = zext i8 %277 to i64, !dbg !2450
  %arrayidx387.3 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.3, !dbg !2450
  %278 = load i8, ptr %arrayidx387.3, align 1, !dbg !2450
  %conv388.3 = zext i8 %278 to i64, !dbg !2450
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2451)
    #dbg_value(i8 %278, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2451)
  %add.i1613.3 = add nuw nsw i64 %conv388.3, 1, !dbg !2452
  %arrayidx.i1615.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.3, !dbg !2453
  %279 = load i8, ptr %arrayidx.i1615.3, align 1, !dbg !2453
  %conv.i1616.3 = zext i8 %279 to i32, !dbg !2453
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2454)
    #dbg_value(i32 %conv.i1616.3, !1682, !DIExpression(), !2454)
    #dbg_value(i64 %add.i1613.3, !1683, !DIExpression(), !2454)
  %sh_prom.i.i1618.3 = zext nneg i8 %279 to i64, !dbg !2455
  %shl.i.i1619.3 = shl i64 %276, %sh_prom.i.i1618.3, !dbg !2455
  %or.i.i1621.3 = or i64 %shl.i.i1619.3, %add.i1613.3, !dbg !2456
  store i64 %or.i.i1621.3, ptr %cur_bits.i.i1598, align 8, !dbg !2457
  %sub.i.i1623.3 = sub nsw i32 %275, %conv.i1616.3, !dbg !2447
  store i32 %sub.i.i1623.3, ptr %i_left.i, align 8, !dbg !2447
  %cmp.i.i1624.3 = icmp slt i32 %sub.i.i1623.3, 33, !dbg !2458
  br i1 %cmp.i.i1624.3, label %if.then.i.i1625.3, label %bs_write_ue.exit1633.3, !dbg !2459

if.then.i.i1625.3:                                ; preds = %bs_write_ue.exit1633.2
  %sh_prom6.i.i1626.3 = zext nneg i32 %sub.i.i1623.3 to i64, !dbg !2465
  %shl7.i.i1627.3 = shl i64 %or.i.i1621.3, %sh_prom6.i.i1626.3, !dbg !2465
    #dbg_value(i64 %shl7.i.i1627.3, !1698, !DIExpression(), !2466)
    #dbg_value(i64 %shl7.i.i1627.3, !1705, !DIExpression(), !2468)
  %add.i.i.i.i1628.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.3), !dbg !2470
  %conv8.i.i1629.3 = trunc i64 %add.i.i.i.i1628.3 to i32, !dbg !2471
  store i32 %conv8.i.i1629.3, ptr %274, align 4, !dbg !2472
  %280 = load i32, ptr %i_left.i, align 8, !dbg !2473
  %add.i.i1631.3 = add nsw i32 %280, 32, !dbg !2473
  store i32 %add.i.i1631.3, ptr %i_left.i, align 8, !dbg !2473
  %281 = load ptr, ptr %p.i, align 8, !dbg !2474
  %add.ptr.i.i1632.3 = getelementptr inbounds i8, ptr %281, i64 4, !dbg !2474
  store ptr %add.ptr.i.i1632.3, ptr %p.i, align 8, !dbg !2474
  br label %bs_write_ue.exit1633.3, !dbg !2475

bs_write_ue.exit1633.3:                           ; preds = %if.then.i.i1625.3, %bs_write_ue.exit1633.2
  %282 = phi ptr [ %add.ptr.i.i1632.3, %if.then.i.i1625.3 ], [ %274, %bs_write_ue.exit1633.2 ]
  %283 = phi i32 [ %add.i.i1631.3, %if.then.i.i1625.3 ], [ %sub.i.i1623.3, %bs_write_ue.exit1633.2 ]
    #dbg_value(i64 4, !1548, !DIExpression(), !2448)
  %i_fref394 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2476
  %284 = load i32, ptr %i_fref394, align 8, !dbg !2477
  %cmp396 = icmp sgt i32 %284, 1, !dbg !2478
  %.pre2121.pre2129 = load i8, ptr %i_sub_partition383, align 1, !dbg !2479
  br i1 %cmp396, label %for.cond400.preheader, label %if.end432, !dbg !2482

if.then412:                                       ; preds = %for.cond400.preheader
  %arrayidx426 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2483
  %285 = load i8, ptr %arrayidx426, align 1, !dbg !2483
  %conv427 = sext i8 %285 to i32, !dbg !2483
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2484)
    #dbg_value(i32 %284, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2484)
    #dbg_value(i32 %conv427, !2197, !DIExpression(), !2484)
  %cmp.i1634 = icmp eq i32 %284, 2, !dbg !2486
  br i1 %cmp.i1634, label %if.then.i1656, label %if.else.i1635, !dbg !2487

if.then.i1656:                                    ; preds = %if.then412
  %xor.i1657 = xor i32 %conv427, 1, !dbg !2488
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2489)
    #dbg_value(i32 %xor.i1657, !1637, !DIExpression(), !2489)
  %286 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2491
  %shl.i.i1659 = shl i64 %286, 1, !dbg !2491
  %conv.i.i1660 = zext i32 %xor.i1657 to i64, !dbg !2492
  %or.i.i1661 = or i64 %shl.i.i1659, %conv.i.i1660, !dbg !2493
  store i64 %or.i.i1661, ptr %cur_bits.i.i1598, align 8, !dbg !2493
  %dec.i.i1663 = add nsw i32 %283, -1, !dbg !2494
  store i32 %dec.i.i1663, ptr %i_left.i, align 8, !dbg !2494
  %cmp.i.i1664 = icmp eq i32 %dec.i.i1663, 32, !dbg !2495
  br i1 %cmp.i.i1664, label %if.then.i.i1665, label %for.inc429, !dbg !2496

if.then.i.i1665:                                  ; preds = %if.then.i1656
  %conv6.i.i1666 = trunc i64 %or.i.i1661 to i32, !dbg !2497
    #dbg_value(i32 %conv6.i.i1666, !1650, !DIExpression(), !2498)
  %add5.i.i.i1667 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666), !dbg !2500
  store i32 %add5.i.i.i1667, ptr %282, align 4, !dbg !2501
  %287 = load ptr, ptr %p.i, align 8, !dbg !2502
  %add.ptr.i.i1669 = getelementptr inbounds i8, ptr %287, i64 4, !dbg !2502
  store ptr %add.ptr.i.i1669, ptr %p.i, align 8, !dbg !2502
  store i32 64, ptr %i_left.i, align 8, !dbg !2503
  br label %for.inc429, !dbg !2504

if.else.i1635:                                    ; preds = %if.then412
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2505)
    #dbg_value(i32 %conv427, !1672, !DIExpression(), !2505)
  %add.i.i1636 = add nsw i32 %conv427, 1, !dbg !2507
  %idxprom.i.i1637 = sext i32 %add.i.i1636 to i64, !dbg !2508
  %arrayidx.i.i1638 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637, !dbg !2508
  %288 = load i8, ptr %arrayidx.i.i1638, align 1, !dbg !2508
  %conv.i3.i1639 = zext i8 %288 to i32, !dbg !2508
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2509)
    #dbg_value(i32 %conv.i3.i1639, !1682, !DIExpression(), !2509)
    #dbg_value(i32 %add.i.i1636, !1683, !DIExpression(), !2509)
  %289 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2511
  %sh_prom.i.i.i1641 = zext nneg i8 %288 to i64, !dbg !2512
  %shl.i.i.i1642 = shl i64 %289, %sh_prom.i.i.i1641, !dbg !2512
  %conv.i.i.i1643 = zext i32 %add.i.i1636 to i64, !dbg !2513
  %or.i.i.i1644 = or i64 %shl.i.i.i1642, %conv.i.i.i1643, !dbg !2514
  store i64 %or.i.i.i1644, ptr %cur_bits.i.i1598, align 8, !dbg !2515
  %sub.i.i.i1646 = sub nsw i32 %283, %conv.i3.i1639, !dbg !2516
  store i32 %sub.i.i.i1646, ptr %i_left.i, align 8, !dbg !2516
  %cmp.i.i.i1647 = icmp slt i32 %sub.i.i.i1646, 33, !dbg !2517
  br i1 %cmp.i.i.i1647, label %if.then.i.i.i1648, label %for.inc429, !dbg !2518

if.then.i.i.i1648:                                ; preds = %if.else.i1635
  %sh_prom6.i.i.i1649 = zext nneg i32 %sub.i.i.i1646 to i64, !dbg !2519
  %shl7.i.i.i1650 = shl i64 %or.i.i.i1644, %sh_prom6.i.i.i1649, !dbg !2519
    #dbg_value(i64 %shl7.i.i.i1650, !1698, !DIExpression(), !2520)
    #dbg_value(i64 %shl7.i.i.i1650, !1705, !DIExpression(), !2522)
  %add.i.i.i.i.i1651 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650), !dbg !2524
  %conv8.i.i.i1652 = trunc i64 %add.i.i.i.i.i1651 to i32, !dbg !2525
  store i32 %conv8.i.i.i1652, ptr %282, align 4, !dbg !2526
  %290 = load i32, ptr %i_left.i, align 8, !dbg !2527
  %add.i.i.i1654 = add nsw i32 %290, 32, !dbg !2527
  store i32 %add.i.i.i1654, ptr %i_left.i, align 8, !dbg !2527
  %291 = load ptr, ptr %p.i, align 8, !dbg !2528
  %add.ptr.i.i.i1655 = getelementptr inbounds i8, ptr %291, i64 4, !dbg !2528
  store ptr %add.ptr.i.i.i1655, ptr %p.i, align 8, !dbg !2528
  br label %for.inc429, !dbg !2529

for.inc429:                                       ; preds = %if.then.i.i.i1648, %if.else.i1635, %if.then.i.i1665, %if.then.i1656, %for.cond400.preheader
  %292 = phi ptr [ %add.ptr.i.i.i1655, %if.then.i.i.i1648 ], [ %282, %if.else.i1635 ], [ %add.ptr.i.i1669, %if.then.i.i1665 ], [ %282, %if.then.i1656 ], [ %282, %for.cond400.preheader ]
  %293 = phi i32 [ %add.i.i.i1654, %if.then.i.i.i1648 ], [ %sub.i.i.i1646, %if.else.i1635 ], [ 64, %if.then.i.i1665 ], [ %dec.i.i1663, %if.then.i1656 ], [ %283, %for.cond400.preheader ]
    #dbg_value(i64 1, !1552, !DIExpression(), !2460)
  %294 = load i8, ptr %arrayidx385.1, align 1, !dbg !2530
  %idxprom409.1 = zext i8 %294 to i64, !dbg !2461
  %arrayidx410.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.1, !dbg !2461
  %295 = load i8, ptr %arrayidx410.1, align 1, !dbg !2461
  %tobool411.not.1 = icmp eq i8 %295, 0, !dbg !2461
  br i1 %tobool411.not.1, label %for.inc429.1, label %if.then412.1, !dbg !2464

if.then412.1:                                     ; preds = %for.inc429
  %296 = load i32, ptr %i_fref394, align 8, !dbg !2531
  %arrayidx426.1 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2483
  %297 = load i8, ptr %arrayidx426.1, align 1, !dbg !2483
  %conv427.1 = sext i8 %297 to i32, !dbg !2483
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2484)
    #dbg_value(i32 %296, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2484)
    #dbg_value(i32 %conv427.1, !2197, !DIExpression(), !2484)
  %cmp.i1634.1 = icmp eq i32 %296, 2, !dbg !2486
  br i1 %cmp.i1634.1, label %if.then.i1656.1, label %if.else.i1635.1, !dbg !2487

if.else.i1635.1:                                  ; preds = %if.then412.1
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2505)
    #dbg_value(i32 %conv427.1, !1672, !DIExpression(), !2505)
  %add.i.i1636.1 = add nsw i32 %conv427.1, 1, !dbg !2507
  %idxprom.i.i1637.1 = sext i32 %add.i.i1636.1 to i64, !dbg !2508
  %arrayidx.i.i1638.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.1, !dbg !2508
  %298 = load i8, ptr %arrayidx.i.i1638.1, align 1, !dbg !2508
  %conv.i3.i1639.1 = zext i8 %298 to i32, !dbg !2508
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2509)
    #dbg_value(i32 %conv.i3.i1639.1, !1682, !DIExpression(), !2509)
    #dbg_value(i32 %add.i.i1636.1, !1683, !DIExpression(), !2509)
  %299 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2511
  %sh_prom.i.i.i1641.1 = zext nneg i8 %298 to i64, !dbg !2512
  %shl.i.i.i1642.1 = shl i64 %299, %sh_prom.i.i.i1641.1, !dbg !2512
  %conv.i.i.i1643.1 = zext i32 %add.i.i1636.1 to i64, !dbg !2513
  %or.i.i.i1644.1 = or i64 %shl.i.i.i1642.1, %conv.i.i.i1643.1, !dbg !2514
  store i64 %or.i.i.i1644.1, ptr %cur_bits.i.i1598, align 8, !dbg !2515
  %sub.i.i.i1646.1 = sub nsw i32 %293, %conv.i3.i1639.1, !dbg !2516
  store i32 %sub.i.i.i1646.1, ptr %i_left.i, align 8, !dbg !2516
  %cmp.i.i.i1647.1 = icmp slt i32 %sub.i.i.i1646.1, 33, !dbg !2517
  br i1 %cmp.i.i.i1647.1, label %if.then.i.i.i1648.1, label %for.inc429.1, !dbg !2518

if.then.i.i.i1648.1:                              ; preds = %if.else.i1635.1
  %sh_prom6.i.i.i1649.1 = zext nneg i32 %sub.i.i.i1646.1 to i64, !dbg !2519
  %shl7.i.i.i1650.1 = shl i64 %or.i.i.i1644.1, %sh_prom6.i.i.i1649.1, !dbg !2519
    #dbg_value(i64 %shl7.i.i.i1650.1, !1698, !DIExpression(), !2520)
    #dbg_value(i64 %shl7.i.i.i1650.1, !1705, !DIExpression(), !2522)
  %add.i.i.i.i.i1651.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.1), !dbg !2524
  %conv8.i.i.i1652.1 = trunc i64 %add.i.i.i.i.i1651.1 to i32, !dbg !2525
  store i32 %conv8.i.i.i1652.1, ptr %292, align 4, !dbg !2526
  %300 = load i32, ptr %i_left.i, align 8, !dbg !2527
  %add.i.i.i1654.1 = add nsw i32 %300, 32, !dbg !2527
  store i32 %add.i.i.i1654.1, ptr %i_left.i, align 8, !dbg !2527
  %301 = load ptr, ptr %p.i, align 8, !dbg !2528
  %add.ptr.i.i.i1655.1 = getelementptr inbounds i8, ptr %301, i64 4, !dbg !2528
  store ptr %add.ptr.i.i.i1655.1, ptr %p.i, align 8, !dbg !2528
  br label %for.inc429.1, !dbg !2529

if.then.i1656.1:                                  ; preds = %if.then412.1
  %xor.i1657.1 = xor i32 %conv427.1, 1, !dbg !2488
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2489)
    #dbg_value(i32 %xor.i1657.1, !1637, !DIExpression(), !2489)
  %302 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2491
  %shl.i.i1659.1 = shl i64 %302, 1, !dbg !2491
  %conv.i.i1660.1 = zext i32 %xor.i1657.1 to i64, !dbg !2492
  %or.i.i1661.1 = or i64 %shl.i.i1659.1, %conv.i.i1660.1, !dbg !2493
  store i64 %or.i.i1661.1, ptr %cur_bits.i.i1598, align 8, !dbg !2493
  %dec.i.i1663.1 = add nsw i32 %293, -1, !dbg !2494
  store i32 %dec.i.i1663.1, ptr %i_left.i, align 8, !dbg !2494
  %cmp.i.i1664.1 = icmp eq i32 %dec.i.i1663.1, 32, !dbg !2495
  br i1 %cmp.i.i1664.1, label %if.then.i.i1665.1, label %for.inc429.1, !dbg !2496

if.then.i.i1665.1:                                ; preds = %if.then.i1656.1
  %conv6.i.i1666.1 = trunc i64 %or.i.i1661.1 to i32, !dbg !2497
    #dbg_value(i32 %conv6.i.i1666.1, !1650, !DIExpression(), !2498)
  %add5.i.i.i1667.1 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.1), !dbg !2500
  store i32 %add5.i.i.i1667.1, ptr %292, align 4, !dbg !2501
  %303 = load ptr, ptr %p.i, align 8, !dbg !2502
  %add.ptr.i.i1669.1 = getelementptr inbounds i8, ptr %303, i64 4, !dbg !2502
  store ptr %add.ptr.i.i1669.1, ptr %p.i, align 8, !dbg !2502
  store i32 64, ptr %i_left.i, align 8, !dbg !2503
  br label %for.inc429.1, !dbg !2504

for.inc429.1:                                     ; preds = %if.then.i.i1665.1, %if.then.i1656.1, %if.then.i.i.i1648.1, %if.else.i1635.1, %for.inc429
  %304 = phi ptr [ %add.ptr.i.i1669.1, %if.then.i.i1665.1 ], [ %292, %if.then.i1656.1 ], [ %add.ptr.i.i.i1655.1, %if.then.i.i.i1648.1 ], [ %292, %if.else.i1635.1 ], [ %292, %for.inc429 ]
  %305 = phi i32 [ 64, %if.then.i.i1665.1 ], [ %dec.i.i1663.1, %if.then.i1656.1 ], [ %add.i.i.i1654.1, %if.then.i.i.i1648.1 ], [ %sub.i.i.i1646.1, %if.else.i1635.1 ], [ %293, %for.inc429 ]
    #dbg_value(i64 2, !1552, !DIExpression(), !2460)
  %306 = load i8, ptr %arrayidx385.2, align 1, !dbg !2530
  %idxprom409.2 = zext i8 %306 to i64, !dbg !2461
  %arrayidx410.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.2, !dbg !2461
  %307 = load i8, ptr %arrayidx410.2, align 1, !dbg !2461
  %tobool411.not.2 = icmp eq i8 %307, 0, !dbg !2461
  br i1 %tobool411.not.2, label %for.inc429.2, label %if.then412.2, !dbg !2464

if.then412.2:                                     ; preds = %for.inc429.1
  %308 = load i32, ptr %i_fref394, align 8, !dbg !2531
  %arrayidx426.2 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2483
  %309 = load i8, ptr %arrayidx426.2, align 1, !dbg !2483
  %conv427.2 = sext i8 %309 to i32, !dbg !2483
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2484)
    #dbg_value(i32 %308, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2484)
    #dbg_value(i32 %conv427.2, !2197, !DIExpression(), !2484)
  %cmp.i1634.2 = icmp eq i32 %308, 2, !dbg !2486
  br i1 %cmp.i1634.2, label %if.then.i1656.2, label %if.else.i1635.2, !dbg !2487

if.else.i1635.2:                                  ; preds = %if.then412.2
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2505)
    #dbg_value(i32 %conv427.2, !1672, !DIExpression(), !2505)
  %add.i.i1636.2 = add nsw i32 %conv427.2, 1, !dbg !2507
  %idxprom.i.i1637.2 = sext i32 %add.i.i1636.2 to i64, !dbg !2508
  %arrayidx.i.i1638.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.2, !dbg !2508
  %310 = load i8, ptr %arrayidx.i.i1638.2, align 1, !dbg !2508
  %conv.i3.i1639.2 = zext i8 %310 to i32, !dbg !2508
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2509)
    #dbg_value(i32 %conv.i3.i1639.2, !1682, !DIExpression(), !2509)
    #dbg_value(i32 %add.i.i1636.2, !1683, !DIExpression(), !2509)
  %311 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2511
  %sh_prom.i.i.i1641.2 = zext nneg i8 %310 to i64, !dbg !2512
  %shl.i.i.i1642.2 = shl i64 %311, %sh_prom.i.i.i1641.2, !dbg !2512
  %conv.i.i.i1643.2 = zext i32 %add.i.i1636.2 to i64, !dbg !2513
  %or.i.i.i1644.2 = or i64 %shl.i.i.i1642.2, %conv.i.i.i1643.2, !dbg !2514
  store i64 %or.i.i.i1644.2, ptr %cur_bits.i.i1598, align 8, !dbg !2515
  %sub.i.i.i1646.2 = sub nsw i32 %305, %conv.i3.i1639.2, !dbg !2516
  store i32 %sub.i.i.i1646.2, ptr %i_left.i, align 8, !dbg !2516
  %cmp.i.i.i1647.2 = icmp slt i32 %sub.i.i.i1646.2, 33, !dbg !2517
  br i1 %cmp.i.i.i1647.2, label %if.then.i.i.i1648.2, label %for.inc429.2, !dbg !2518

if.then.i.i.i1648.2:                              ; preds = %if.else.i1635.2
  %sh_prom6.i.i.i1649.2 = zext nneg i32 %sub.i.i.i1646.2 to i64, !dbg !2519
  %shl7.i.i.i1650.2 = shl i64 %or.i.i.i1644.2, %sh_prom6.i.i.i1649.2, !dbg !2519
    #dbg_value(i64 %shl7.i.i.i1650.2, !1698, !DIExpression(), !2520)
    #dbg_value(i64 %shl7.i.i.i1650.2, !1705, !DIExpression(), !2522)
  %add.i.i.i.i.i1651.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.2), !dbg !2524
  %conv8.i.i.i1652.2 = trunc i64 %add.i.i.i.i.i1651.2 to i32, !dbg !2525
  store i32 %conv8.i.i.i1652.2, ptr %304, align 4, !dbg !2526
  %312 = load i32, ptr %i_left.i, align 8, !dbg !2527
  %add.i.i.i1654.2 = add nsw i32 %312, 32, !dbg !2527
  store i32 %add.i.i.i1654.2, ptr %i_left.i, align 8, !dbg !2527
  %313 = load ptr, ptr %p.i, align 8, !dbg !2528
  %add.ptr.i.i.i1655.2 = getelementptr inbounds i8, ptr %313, i64 4, !dbg !2528
  store ptr %add.ptr.i.i.i1655.2, ptr %p.i, align 8, !dbg !2528
  br label %for.inc429.2, !dbg !2529

if.then.i1656.2:                                  ; preds = %if.then412.2
  %xor.i1657.2 = xor i32 %conv427.2, 1, !dbg !2488
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2489)
    #dbg_value(i32 %xor.i1657.2, !1637, !DIExpression(), !2489)
  %314 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2491
  %shl.i.i1659.2 = shl i64 %314, 1, !dbg !2491
  %conv.i.i1660.2 = zext i32 %xor.i1657.2 to i64, !dbg !2492
  %or.i.i1661.2 = or i64 %shl.i.i1659.2, %conv.i.i1660.2, !dbg !2493
  store i64 %or.i.i1661.2, ptr %cur_bits.i.i1598, align 8, !dbg !2493
  %dec.i.i1663.2 = add nsw i32 %305, -1, !dbg !2494
  store i32 %dec.i.i1663.2, ptr %i_left.i, align 8, !dbg !2494
  %cmp.i.i1664.2 = icmp eq i32 %dec.i.i1663.2, 32, !dbg !2495
  br i1 %cmp.i.i1664.2, label %if.then.i.i1665.2, label %for.inc429.2, !dbg !2496

if.then.i.i1665.2:                                ; preds = %if.then.i1656.2
  %conv6.i.i1666.2 = trunc i64 %or.i.i1661.2 to i32, !dbg !2497
    #dbg_value(i32 %conv6.i.i1666.2, !1650, !DIExpression(), !2498)
  %add5.i.i.i1667.2 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.2), !dbg !2500
  store i32 %add5.i.i.i1667.2, ptr %304, align 4, !dbg !2501
  %315 = load ptr, ptr %p.i, align 8, !dbg !2502
  %add.ptr.i.i1669.2 = getelementptr inbounds i8, ptr %315, i64 4, !dbg !2502
  store ptr %add.ptr.i.i1669.2, ptr %p.i, align 8, !dbg !2502
  store i32 64, ptr %i_left.i, align 8, !dbg !2503
  br label %for.inc429.2, !dbg !2504

for.inc429.2:                                     ; preds = %if.then.i.i1665.2, %if.then.i1656.2, %if.then.i.i.i1648.2, %if.else.i1635.2, %for.inc429.1
  %316 = phi ptr [ %add.ptr.i.i1669.2, %if.then.i.i1665.2 ], [ %304, %if.then.i1656.2 ], [ %add.ptr.i.i.i1655.2, %if.then.i.i.i1648.2 ], [ %304, %if.else.i1635.2 ], [ %304, %for.inc429.1 ]
  %317 = phi i32 [ 64, %if.then.i.i1665.2 ], [ %dec.i.i1663.2, %if.then.i1656.2 ], [ %add.i.i.i1654.2, %if.then.i.i.i1648.2 ], [ %sub.i.i.i1646.2, %if.else.i1635.2 ], [ %305, %for.inc429.1 ]
    #dbg_value(i64 3, !1552, !DIExpression(), !2460)
  %318 = load i8, ptr %arrayidx385.3, align 1, !dbg !2530
  %idxprom409.3 = zext i8 %318 to i64, !dbg !2461
  %arrayidx410.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.3, !dbg !2461
  %319 = load i8, ptr %arrayidx410.3, align 1, !dbg !2461
  %tobool411.not.3 = icmp eq i8 %319, 0, !dbg !2461
  br i1 %tobool411.not.3, label %for.inc429.3, label %if.then412.3, !dbg !2464

if.then412.3:                                     ; preds = %for.inc429.2
  %320 = load i32, ptr %i_fref394, align 8, !dbg !2531
  %arrayidx426.3 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2483
  %321 = load i8, ptr %arrayidx426.3, align 1, !dbg !2483
  %conv427.3 = sext i8 %321 to i32, !dbg !2483
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2484)
    #dbg_value(i32 %320, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2484)
    #dbg_value(i32 %conv427.3, !2197, !DIExpression(), !2484)
  %cmp.i1634.3 = icmp eq i32 %320, 2, !dbg !2486
  br i1 %cmp.i1634.3, label %if.then.i1656.3, label %if.else.i1635.3, !dbg !2487

if.else.i1635.3:                                  ; preds = %if.then412.3
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2505)
    #dbg_value(i32 %conv427.3, !1672, !DIExpression(), !2505)
  %add.i.i1636.3 = add nsw i32 %conv427.3, 1, !dbg !2507
  %idxprom.i.i1637.3 = sext i32 %add.i.i1636.3 to i64, !dbg !2508
  %arrayidx.i.i1638.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.3, !dbg !2508
  %322 = load i8, ptr %arrayidx.i.i1638.3, align 1, !dbg !2508
  %conv.i3.i1639.3 = zext i8 %322 to i32, !dbg !2508
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2509)
    #dbg_value(i32 %conv.i3.i1639.3, !1682, !DIExpression(), !2509)
    #dbg_value(i32 %add.i.i1636.3, !1683, !DIExpression(), !2509)
  %323 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2511
  %sh_prom.i.i.i1641.3 = zext nneg i8 %322 to i64, !dbg !2512
  %shl.i.i.i1642.3 = shl i64 %323, %sh_prom.i.i.i1641.3, !dbg !2512
  %conv.i.i.i1643.3 = zext i32 %add.i.i1636.3 to i64, !dbg !2513
  %or.i.i.i1644.3 = or i64 %shl.i.i.i1642.3, %conv.i.i.i1643.3, !dbg !2514
  store i64 %or.i.i.i1644.3, ptr %cur_bits.i.i1598, align 8, !dbg !2515
  %sub.i.i.i1646.3 = sub nsw i32 %317, %conv.i3.i1639.3, !dbg !2516
  store i32 %sub.i.i.i1646.3, ptr %i_left.i, align 8, !dbg !2516
  %cmp.i.i.i1647.3 = icmp slt i32 %sub.i.i.i1646.3, 33, !dbg !2517
  br i1 %cmp.i.i.i1647.3, label %if.then.i.i.i1648.3, label %for.inc429.3, !dbg !2518

if.then.i.i.i1648.3:                              ; preds = %if.else.i1635.3
  %sh_prom6.i.i.i1649.3 = zext nneg i32 %sub.i.i.i1646.3 to i64, !dbg !2519
  %shl7.i.i.i1650.3 = shl i64 %or.i.i.i1644.3, %sh_prom6.i.i.i1649.3, !dbg !2519
    #dbg_value(i64 %shl7.i.i.i1650.3, !1698, !DIExpression(), !2520)
    #dbg_value(i64 %shl7.i.i.i1650.3, !1705, !DIExpression(), !2522)
  %add.i.i.i.i.i1651.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.3), !dbg !2524
  %conv8.i.i.i1652.3 = trunc i64 %add.i.i.i.i.i1651.3 to i32, !dbg !2525
  store i32 %conv8.i.i.i1652.3, ptr %316, align 4, !dbg !2526
  %324 = load i32, ptr %i_left.i, align 8, !dbg !2527
  %add.i.i.i1654.3 = add nsw i32 %324, 32, !dbg !2527
  store i32 %add.i.i.i1654.3, ptr %i_left.i, align 8, !dbg !2527
  %325 = load ptr, ptr %p.i, align 8, !dbg !2528
  %add.ptr.i.i.i1655.3 = getelementptr inbounds i8, ptr %325, i64 4, !dbg !2528
  store ptr %add.ptr.i.i.i1655.3, ptr %p.i, align 8, !dbg !2528
  br label %for.inc429.3, !dbg !2529

if.then.i1656.3:                                  ; preds = %if.then412.3
  %xor.i1657.3 = xor i32 %conv427.3, 1, !dbg !2488
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2489)
    #dbg_value(i32 %xor.i1657.3, !1637, !DIExpression(), !2489)
  %326 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2491
  %shl.i.i1659.3 = shl i64 %326, 1, !dbg !2491
  %conv.i.i1660.3 = zext i32 %xor.i1657.3 to i64, !dbg !2492
  %or.i.i1661.3 = or i64 %shl.i.i1659.3, %conv.i.i1660.3, !dbg !2493
  store i64 %or.i.i1661.3, ptr %cur_bits.i.i1598, align 8, !dbg !2493
  %dec.i.i1663.3 = add nsw i32 %317, -1, !dbg !2494
  store i32 %dec.i.i1663.3, ptr %i_left.i, align 8, !dbg !2494
  %cmp.i.i1664.3 = icmp eq i32 %dec.i.i1663.3, 32, !dbg !2495
  br i1 %cmp.i.i1664.3, label %if.then.i.i1665.3, label %for.inc429.3, !dbg !2496

if.then.i.i1665.3:                                ; preds = %if.then.i1656.3
  %conv6.i.i1666.3 = trunc i64 %or.i.i1661.3 to i32, !dbg !2497
    #dbg_value(i32 %conv6.i.i1666.3, !1650, !DIExpression(), !2498)
  %add5.i.i.i1667.3 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.3), !dbg !2500
  store i32 %add5.i.i.i1667.3, ptr %316, align 4, !dbg !2501
  %327 = load ptr, ptr %p.i, align 8, !dbg !2502
  %add.ptr.i.i1669.3 = getelementptr inbounds i8, ptr %327, i64 4, !dbg !2502
  store ptr %add.ptr.i.i1669.3, ptr %p.i, align 8, !dbg !2502
  store i32 64, ptr %i_left.i, align 8, !dbg !2503
  br label %for.inc429.3, !dbg !2504

for.inc429.3:                                     ; preds = %if.then.i.i1665.3, %if.then.i1656.3, %if.then.i.i.i1648.3, %if.else.i1635.3, %for.inc429.2
  %328 = phi ptr [ %add.ptr.i.i1669.3, %if.then.i.i1665.3 ], [ %316, %if.then.i1656.3 ], [ %add.ptr.i.i.i1655.3, %if.then.i.i.i1648.3 ], [ %316, %if.else.i1635.3 ], [ %316, %for.inc429.2 ]
  %329 = phi i32 [ 64, %if.then.i.i1665.3 ], [ %dec.i.i1663.3, %if.then.i1656.3 ], [ %add.i.i.i1654.3, %if.then.i.i.i1648.3 ], [ %sub.i.i.i1646.3, %if.else.i1635.3 ], [ %317, %for.inc429.2 ]
    #dbg_value(i64 4, !1552, !DIExpression(), !2460)
  %.pre2121.pre = load i8, ptr %i_sub_partition383, align 1, !dbg !2479
  br label %if.end432, !dbg !2532

if.end432:                                        ; preds = %for.inc429.3, %bs_write_ue.exit1633.3
  %.pre2121 = phi i8 [ %.pre2121.pre, %for.inc429.3 ], [ %.pre2121.pre2129, %bs_write_ue.exit1633.3 ], !dbg !2479
  %330 = phi ptr [ %328, %for.inc429.3 ], [ %282, %bs_write_ue.exit1633.3 ]
  %331 = phi i32 [ %329, %for.inc429.3 ], [ %283, %bs_write_ue.exit1633.3 ]
  %arrayidx436 = getelementptr inbounds i8, ptr %h, i64 21420, !dbg !2532
  %332 = load i32, ptr %arrayidx436, align 4, !dbg !2532
  %cmp437 = icmp sgt i32 %332, 1, !dbg !2533
  br i1 %cmp437, label %for.cond441.preheader, label %if.end473, !dbg !2534

for.cond441.preheader:                            ; preds = %if.end432
    #dbg_value(i64 0, !1555, !DIExpression(), !2535)
  %idxprom450 = zext i8 %.pre2121 to i64, !dbg !2536
  %arrayidx451 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450, !dbg !2536
  %333 = load i8, ptr %arrayidx451, align 1, !dbg !2536
  %tobool452.not = icmp eq i8 %333, 0, !dbg !2536
  br i1 %tobool452.not, label %for.inc470, label %if.then453, !dbg !2539

if.then453:                                       ; preds = %for.cond441.preheader
  %arrayidx467 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2540
  %334 = load i8, ptr %arrayidx467, align 1, !dbg !2540
  %conv468 = sext i8 %334 to i32, !dbg !2540
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2541)
    #dbg_value(i32 %332, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2541)
    #dbg_value(i32 %conv468, !2197, !DIExpression(), !2541)
  %cmp.i1671 = icmp eq i32 %332, 2, !dbg !2543
  br i1 %cmp.i1671, label %if.then.i1693, label %if.else.i1672, !dbg !2544

if.then.i1693:                                    ; preds = %if.then453
  %xor.i1694 = xor i32 %conv468, 1, !dbg !2545
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2546)
    #dbg_value(i32 %xor.i1694, !1637, !DIExpression(), !2546)
  %335 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2548
  %shl.i.i1696 = shl i64 %335, 1, !dbg !2548
  %conv.i.i1697 = zext i32 %xor.i1694 to i64, !dbg !2549
  %or.i.i1698 = or i64 %shl.i.i1696, %conv.i.i1697, !dbg !2550
  store i64 %or.i.i1698, ptr %cur_bits.i.i1598, align 8, !dbg !2550
  %dec.i.i1700 = add nsw i32 %331, -1, !dbg !2551
  store i32 %dec.i.i1700, ptr %i_left.i, align 8, !dbg !2551
  %cmp.i.i1701 = icmp eq i32 %dec.i.i1700, 32, !dbg !2552
  br i1 %cmp.i.i1701, label %if.then.i.i1702, label %for.inc470, !dbg !2553

if.then.i.i1702:                                  ; preds = %if.then.i1693
  %conv6.i.i1703 = trunc i64 %or.i.i1698 to i32, !dbg !2554
    #dbg_value(i32 %conv6.i.i1703, !1650, !DIExpression(), !2555)
  %add5.i.i.i1704 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703), !dbg !2557
  store i32 %add5.i.i.i1704, ptr %330, align 4, !dbg !2558
  %336 = load ptr, ptr %p.i, align 8, !dbg !2559
  %add.ptr.i.i1706 = getelementptr inbounds i8, ptr %336, i64 4, !dbg !2559
  store ptr %add.ptr.i.i1706, ptr %p.i, align 8, !dbg !2559
  store i32 64, ptr %i_left.i, align 8, !dbg !2560
  br label %for.inc470, !dbg !2561

if.else.i1672:                                    ; preds = %if.then453
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2562)
    #dbg_value(i32 %conv468, !1672, !DIExpression(), !2562)
  %add.i.i1673 = add nsw i32 %conv468, 1, !dbg !2564
  %idxprom.i.i1674 = sext i32 %add.i.i1673 to i64, !dbg !2565
  %arrayidx.i.i1675 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674, !dbg !2565
  %337 = load i8, ptr %arrayidx.i.i1675, align 1, !dbg !2565
  %conv.i3.i1676 = zext i8 %337 to i32, !dbg !2565
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2566)
    #dbg_value(i32 %conv.i3.i1676, !1682, !DIExpression(), !2566)
    #dbg_value(i32 %add.i.i1673, !1683, !DIExpression(), !2566)
  %338 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2568
  %sh_prom.i.i.i1678 = zext nneg i8 %337 to i64, !dbg !2569
  %shl.i.i.i1679 = shl i64 %338, %sh_prom.i.i.i1678, !dbg !2569
  %conv.i.i.i1680 = zext i32 %add.i.i1673 to i64, !dbg !2570
  %or.i.i.i1681 = or i64 %shl.i.i.i1679, %conv.i.i.i1680, !dbg !2571
  store i64 %or.i.i.i1681, ptr %cur_bits.i.i1598, align 8, !dbg !2572
  %sub.i.i.i1683 = sub nsw i32 %331, %conv.i3.i1676, !dbg !2573
  store i32 %sub.i.i.i1683, ptr %i_left.i, align 8, !dbg !2573
  %cmp.i.i.i1684 = icmp slt i32 %sub.i.i.i1683, 33, !dbg !2574
  br i1 %cmp.i.i.i1684, label %if.then.i.i.i1685, label %for.inc470, !dbg !2575

if.then.i.i.i1685:                                ; preds = %if.else.i1672
  %sh_prom6.i.i.i1686 = zext nneg i32 %sub.i.i.i1683 to i64, !dbg !2576
  %shl7.i.i.i1687 = shl i64 %or.i.i.i1681, %sh_prom6.i.i.i1686, !dbg !2576
    #dbg_value(i64 %shl7.i.i.i1687, !1698, !DIExpression(), !2577)
    #dbg_value(i64 %shl7.i.i.i1687, !1705, !DIExpression(), !2579)
  %add.i.i.i.i.i1688 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687), !dbg !2581
  %conv8.i.i.i1689 = trunc i64 %add.i.i.i.i.i1688 to i32, !dbg !2582
  store i32 %conv8.i.i.i1689, ptr %330, align 4, !dbg !2583
  %339 = load i32, ptr %i_left.i, align 8, !dbg !2584
  %add.i.i.i1691 = add nsw i32 %339, 32, !dbg !2584
  store i32 %add.i.i.i1691, ptr %i_left.i, align 8, !dbg !2584
  %340 = load ptr, ptr %p.i, align 8, !dbg !2585
  %add.ptr.i.i.i1692 = getelementptr inbounds i8, ptr %340, i64 4, !dbg !2585
  store ptr %add.ptr.i.i.i1692, ptr %p.i, align 8, !dbg !2585
  br label %for.inc470, !dbg !2586

for.inc470:                                       ; preds = %if.then.i.i.i1685, %if.else.i1672, %if.then.i.i1702, %if.then.i1693, %for.cond441.preheader
  %341 = phi ptr [ %add.ptr.i.i.i1692, %if.then.i.i.i1685 ], [ %330, %if.else.i1672 ], [ %add.ptr.i.i1706, %if.then.i.i1702 ], [ %330, %if.then.i1693 ], [ %330, %for.cond441.preheader ]
  %342 = phi i32 [ %add.i.i.i1691, %if.then.i.i.i1685 ], [ %sub.i.i.i1683, %if.else.i1672 ], [ 64, %if.then.i.i1702 ], [ %dec.i.i1700, %if.then.i1693 ], [ %331, %for.cond441.preheader ]
    #dbg_value(i64 1, !1555, !DIExpression(), !2535)
  %343 = load i8, ptr %arrayidx385.1, align 1, !dbg !2587
  %idxprom450.1 = zext i8 %343 to i64, !dbg !2536
  %arrayidx451.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.1, !dbg !2536
  %344 = load i8, ptr %arrayidx451.1, align 1, !dbg !2536
  %tobool452.not.1 = icmp eq i8 %344, 0, !dbg !2536
  br i1 %tobool452.not.1, label %for.inc470.1, label %if.then453.1, !dbg !2539

if.then453.1:                                     ; preds = %for.inc470
  %345 = load i32, ptr %arrayidx436, align 4, !dbg !2588
  %arrayidx467.1 = getelementptr inbounds i8, ptr %h, i64 25174, !dbg !2540
  %346 = load i8, ptr %arrayidx467.1, align 1, !dbg !2540
  %conv468.1 = sext i8 %346 to i32, !dbg !2540
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2541)
    #dbg_value(i32 %345, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2541)
    #dbg_value(i32 %conv468.1, !2197, !DIExpression(), !2541)
  %cmp.i1671.1 = icmp eq i32 %345, 2, !dbg !2543
  br i1 %cmp.i1671.1, label %if.then.i1693.1, label %if.else.i1672.1, !dbg !2544

if.else.i1672.1:                                  ; preds = %if.then453.1
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2562)
    #dbg_value(i32 %conv468.1, !1672, !DIExpression(), !2562)
  %add.i.i1673.1 = add nsw i32 %conv468.1, 1, !dbg !2564
  %idxprom.i.i1674.1 = sext i32 %add.i.i1673.1 to i64, !dbg !2565
  %arrayidx.i.i1675.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.1, !dbg !2565
  %347 = load i8, ptr %arrayidx.i.i1675.1, align 1, !dbg !2565
  %conv.i3.i1676.1 = zext i8 %347 to i32, !dbg !2565
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2566)
    #dbg_value(i32 %conv.i3.i1676.1, !1682, !DIExpression(), !2566)
    #dbg_value(i32 %add.i.i1673.1, !1683, !DIExpression(), !2566)
  %348 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2568
  %sh_prom.i.i.i1678.1 = zext nneg i8 %347 to i64, !dbg !2569
  %shl.i.i.i1679.1 = shl i64 %348, %sh_prom.i.i.i1678.1, !dbg !2569
  %conv.i.i.i1680.1 = zext i32 %add.i.i1673.1 to i64, !dbg !2570
  %or.i.i.i1681.1 = or i64 %shl.i.i.i1679.1, %conv.i.i.i1680.1, !dbg !2571
  store i64 %or.i.i.i1681.1, ptr %cur_bits.i.i1598, align 8, !dbg !2572
  %sub.i.i.i1683.1 = sub nsw i32 %342, %conv.i3.i1676.1, !dbg !2573
  store i32 %sub.i.i.i1683.1, ptr %i_left.i, align 8, !dbg !2573
  %cmp.i.i.i1684.1 = icmp slt i32 %sub.i.i.i1683.1, 33, !dbg !2574
  br i1 %cmp.i.i.i1684.1, label %if.then.i.i.i1685.1, label %for.inc470.1, !dbg !2575

if.then.i.i.i1685.1:                              ; preds = %if.else.i1672.1
  %sh_prom6.i.i.i1686.1 = zext nneg i32 %sub.i.i.i1683.1 to i64, !dbg !2576
  %shl7.i.i.i1687.1 = shl i64 %or.i.i.i1681.1, %sh_prom6.i.i.i1686.1, !dbg !2576
    #dbg_value(i64 %shl7.i.i.i1687.1, !1698, !DIExpression(), !2577)
    #dbg_value(i64 %shl7.i.i.i1687.1, !1705, !DIExpression(), !2579)
  %add.i.i.i.i.i1688.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.1), !dbg !2581
  %conv8.i.i.i1689.1 = trunc i64 %add.i.i.i.i.i1688.1 to i32, !dbg !2582
  store i32 %conv8.i.i.i1689.1, ptr %341, align 4, !dbg !2583
  %349 = load i32, ptr %i_left.i, align 8, !dbg !2584
  %add.i.i.i1691.1 = add nsw i32 %349, 32, !dbg !2584
  store i32 %add.i.i.i1691.1, ptr %i_left.i, align 8, !dbg !2584
  %350 = load ptr, ptr %p.i, align 8, !dbg !2585
  %add.ptr.i.i.i1692.1 = getelementptr inbounds i8, ptr %350, i64 4, !dbg !2585
  store ptr %add.ptr.i.i.i1692.1, ptr %p.i, align 8, !dbg !2585
  br label %for.inc470.1, !dbg !2586

if.then.i1693.1:                                  ; preds = %if.then453.1
  %xor.i1694.1 = xor i32 %conv468.1, 1, !dbg !2545
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2546)
    #dbg_value(i32 %xor.i1694.1, !1637, !DIExpression(), !2546)
  %351 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2548
  %shl.i.i1696.1 = shl i64 %351, 1, !dbg !2548
  %conv.i.i1697.1 = zext i32 %xor.i1694.1 to i64, !dbg !2549
  %or.i.i1698.1 = or i64 %shl.i.i1696.1, %conv.i.i1697.1, !dbg !2550
  store i64 %or.i.i1698.1, ptr %cur_bits.i.i1598, align 8, !dbg !2550
  %dec.i.i1700.1 = add nsw i32 %342, -1, !dbg !2551
  store i32 %dec.i.i1700.1, ptr %i_left.i, align 8, !dbg !2551
  %cmp.i.i1701.1 = icmp eq i32 %dec.i.i1700.1, 32, !dbg !2552
  br i1 %cmp.i.i1701.1, label %if.then.i.i1702.1, label %for.inc470.1, !dbg !2553

if.then.i.i1702.1:                                ; preds = %if.then.i1693.1
  %conv6.i.i1703.1 = trunc i64 %or.i.i1698.1 to i32, !dbg !2554
    #dbg_value(i32 %conv6.i.i1703.1, !1650, !DIExpression(), !2555)
  %add5.i.i.i1704.1 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.1), !dbg !2557
  store i32 %add5.i.i.i1704.1, ptr %341, align 4, !dbg !2558
  %352 = load ptr, ptr %p.i, align 8, !dbg !2559
  %add.ptr.i.i1706.1 = getelementptr inbounds i8, ptr %352, i64 4, !dbg !2559
  store ptr %add.ptr.i.i1706.1, ptr %p.i, align 8, !dbg !2559
  store i32 64, ptr %i_left.i, align 8, !dbg !2560
  br label %for.inc470.1, !dbg !2561

for.inc470.1:                                     ; preds = %if.then.i.i1702.1, %if.then.i1693.1, %if.then.i.i.i1685.1, %if.else.i1672.1, %for.inc470
  %353 = phi ptr [ %add.ptr.i.i1706.1, %if.then.i.i1702.1 ], [ %341, %if.then.i1693.1 ], [ %add.ptr.i.i.i1692.1, %if.then.i.i.i1685.1 ], [ %341, %if.else.i1672.1 ], [ %341, %for.inc470 ]
  %354 = phi i32 [ 64, %if.then.i.i1702.1 ], [ %dec.i.i1700.1, %if.then.i1693.1 ], [ %add.i.i.i1691.1, %if.then.i.i.i1685.1 ], [ %sub.i.i.i1683.1, %if.else.i1672.1 ], [ %342, %for.inc470 ]
    #dbg_value(i64 2, !1555, !DIExpression(), !2535)
  %355 = load i8, ptr %arrayidx385.2, align 1, !dbg !2587
  %idxprom450.2 = zext i8 %355 to i64, !dbg !2536
  %arrayidx451.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.2, !dbg !2536
  %356 = load i8, ptr %arrayidx451.2, align 1, !dbg !2536
  %tobool452.not.2 = icmp eq i8 %356, 0, !dbg !2536
  br i1 %tobool452.not.2, label %for.inc470.2, label %if.then453.2, !dbg !2539

if.then453.2:                                     ; preds = %for.inc470.1
  %357 = load i32, ptr %arrayidx436, align 4, !dbg !2588
  %arrayidx467.2 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !2540
  %358 = load i8, ptr %arrayidx467.2, align 1, !dbg !2540
  %conv468.2 = sext i8 %358 to i32, !dbg !2540
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2541)
    #dbg_value(i32 %357, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2541)
    #dbg_value(i32 %conv468.2, !2197, !DIExpression(), !2541)
  %cmp.i1671.2 = icmp eq i32 %357, 2, !dbg !2543
  br i1 %cmp.i1671.2, label %if.then.i1693.2, label %if.else.i1672.2, !dbg !2544

if.else.i1672.2:                                  ; preds = %if.then453.2
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2562)
    #dbg_value(i32 %conv468.2, !1672, !DIExpression(), !2562)
  %add.i.i1673.2 = add nsw i32 %conv468.2, 1, !dbg !2564
  %idxprom.i.i1674.2 = sext i32 %add.i.i1673.2 to i64, !dbg !2565
  %arrayidx.i.i1675.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.2, !dbg !2565
  %359 = load i8, ptr %arrayidx.i.i1675.2, align 1, !dbg !2565
  %conv.i3.i1676.2 = zext i8 %359 to i32, !dbg !2565
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2566)
    #dbg_value(i32 %conv.i3.i1676.2, !1682, !DIExpression(), !2566)
    #dbg_value(i32 %add.i.i1673.2, !1683, !DIExpression(), !2566)
  %360 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2568
  %sh_prom.i.i.i1678.2 = zext nneg i8 %359 to i64, !dbg !2569
  %shl.i.i.i1679.2 = shl i64 %360, %sh_prom.i.i.i1678.2, !dbg !2569
  %conv.i.i.i1680.2 = zext i32 %add.i.i1673.2 to i64, !dbg !2570
  %or.i.i.i1681.2 = or i64 %shl.i.i.i1679.2, %conv.i.i.i1680.2, !dbg !2571
  store i64 %or.i.i.i1681.2, ptr %cur_bits.i.i1598, align 8, !dbg !2572
  %sub.i.i.i1683.2 = sub nsw i32 %354, %conv.i3.i1676.2, !dbg !2573
  store i32 %sub.i.i.i1683.2, ptr %i_left.i, align 8, !dbg !2573
  %cmp.i.i.i1684.2 = icmp slt i32 %sub.i.i.i1683.2, 33, !dbg !2574
  br i1 %cmp.i.i.i1684.2, label %if.then.i.i.i1685.2, label %for.inc470.2, !dbg !2575

if.then.i.i.i1685.2:                              ; preds = %if.else.i1672.2
  %sh_prom6.i.i.i1686.2 = zext nneg i32 %sub.i.i.i1683.2 to i64, !dbg !2576
  %shl7.i.i.i1687.2 = shl i64 %or.i.i.i1681.2, %sh_prom6.i.i.i1686.2, !dbg !2576
    #dbg_value(i64 %shl7.i.i.i1687.2, !1698, !DIExpression(), !2577)
    #dbg_value(i64 %shl7.i.i.i1687.2, !1705, !DIExpression(), !2579)
  %add.i.i.i.i.i1688.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.2), !dbg !2581
  %conv8.i.i.i1689.2 = trunc i64 %add.i.i.i.i.i1688.2 to i32, !dbg !2582
  store i32 %conv8.i.i.i1689.2, ptr %353, align 4, !dbg !2583
  %361 = load i32, ptr %i_left.i, align 8, !dbg !2584
  %add.i.i.i1691.2 = add nsw i32 %361, 32, !dbg !2584
  store i32 %add.i.i.i1691.2, ptr %i_left.i, align 8, !dbg !2584
  %362 = load ptr, ptr %p.i, align 8, !dbg !2585
  %add.ptr.i.i.i1692.2 = getelementptr inbounds i8, ptr %362, i64 4, !dbg !2585
  store ptr %add.ptr.i.i.i1692.2, ptr %p.i, align 8, !dbg !2585
  br label %for.inc470.2, !dbg !2586

if.then.i1693.2:                                  ; preds = %if.then453.2
  %xor.i1694.2 = xor i32 %conv468.2, 1, !dbg !2545
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2546)
    #dbg_value(i32 %xor.i1694.2, !1637, !DIExpression(), !2546)
  %363 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2548
  %shl.i.i1696.2 = shl i64 %363, 1, !dbg !2548
  %conv.i.i1697.2 = zext i32 %xor.i1694.2 to i64, !dbg !2549
  %or.i.i1698.2 = or i64 %shl.i.i1696.2, %conv.i.i1697.2, !dbg !2550
  store i64 %or.i.i1698.2, ptr %cur_bits.i.i1598, align 8, !dbg !2550
  %dec.i.i1700.2 = add nsw i32 %354, -1, !dbg !2551
  store i32 %dec.i.i1700.2, ptr %i_left.i, align 8, !dbg !2551
  %cmp.i.i1701.2 = icmp eq i32 %dec.i.i1700.2, 32, !dbg !2552
  br i1 %cmp.i.i1701.2, label %if.then.i.i1702.2, label %for.inc470.2, !dbg !2553

if.then.i.i1702.2:                                ; preds = %if.then.i1693.2
  %conv6.i.i1703.2 = trunc i64 %or.i.i1698.2 to i32, !dbg !2554
    #dbg_value(i32 %conv6.i.i1703.2, !1650, !DIExpression(), !2555)
  %add5.i.i.i1704.2 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.2), !dbg !2557
  store i32 %add5.i.i.i1704.2, ptr %353, align 4, !dbg !2558
  %364 = load ptr, ptr %p.i, align 8, !dbg !2559
  %add.ptr.i.i1706.2 = getelementptr inbounds i8, ptr %364, i64 4, !dbg !2559
  store ptr %add.ptr.i.i1706.2, ptr %p.i, align 8, !dbg !2559
  store i32 64, ptr %i_left.i, align 8, !dbg !2560
  br label %for.inc470.2, !dbg !2561

for.inc470.2:                                     ; preds = %if.then.i.i1702.2, %if.then.i1693.2, %if.then.i.i.i1685.2, %if.else.i1672.2, %for.inc470.1
  %365 = phi ptr [ %add.ptr.i.i1706.2, %if.then.i.i1702.2 ], [ %353, %if.then.i1693.2 ], [ %add.ptr.i.i.i1692.2, %if.then.i.i.i1685.2 ], [ %353, %if.else.i1672.2 ], [ %353, %for.inc470.1 ]
  %366 = phi i32 [ 64, %if.then.i.i1702.2 ], [ %dec.i.i1700.2, %if.then.i1693.2 ], [ %add.i.i.i1691.2, %if.then.i.i.i1685.2 ], [ %sub.i.i.i1683.2, %if.else.i1672.2 ], [ %354, %for.inc470.1 ]
    #dbg_value(i64 3, !1555, !DIExpression(), !2535)
  %367 = load i8, ptr %arrayidx385.3, align 1, !dbg !2587
  %idxprom450.3 = zext i8 %367 to i64, !dbg !2536
  %arrayidx451.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.3, !dbg !2536
  %368 = load i8, ptr %arrayidx451.3, align 1, !dbg !2536
  %tobool452.not.3 = icmp eq i8 %368, 0, !dbg !2536
  br i1 %tobool452.not.3, label %for.inc470.3, label %if.then453.3, !dbg !2539

if.then453.3:                                     ; preds = %for.inc470.2
  %369 = load i32, ptr %arrayidx436, align 4, !dbg !2588
  %arrayidx467.3 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !2540
  %370 = load i8, ptr %arrayidx467.3, align 1, !dbg !2540
  %conv468.3 = sext i8 %370 to i32, !dbg !2540
    #dbg_value(ptr %bs, !2191, !DIExpression(), !2541)
    #dbg_value(i32 %369, !2196, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2541)
    #dbg_value(i32 %conv468.3, !2197, !DIExpression(), !2541)
  %cmp.i1671.3 = icmp eq i32 %369, 2, !dbg !2543
  br i1 %cmp.i1671.3, label %if.then.i1693.3, label %if.else.i1672.3, !dbg !2544

if.else.i1672.3:                                  ; preds = %if.then453.3
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2562)
    #dbg_value(i32 %conv468.3, !1672, !DIExpression(), !2562)
  %add.i.i1673.3 = add nsw i32 %conv468.3, 1, !dbg !2564
  %idxprom.i.i1674.3 = sext i32 %add.i.i1673.3 to i64, !dbg !2565
  %arrayidx.i.i1675.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.3, !dbg !2565
  %371 = load i8, ptr %arrayidx.i.i1675.3, align 1, !dbg !2565
  %conv.i3.i1676.3 = zext i8 %371 to i32, !dbg !2565
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2566)
    #dbg_value(i32 %conv.i3.i1676.3, !1682, !DIExpression(), !2566)
    #dbg_value(i32 %add.i.i1673.3, !1683, !DIExpression(), !2566)
  %372 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2568
  %sh_prom.i.i.i1678.3 = zext nneg i8 %371 to i64, !dbg !2569
  %shl.i.i.i1679.3 = shl i64 %372, %sh_prom.i.i.i1678.3, !dbg !2569
  %conv.i.i.i1680.3 = zext i32 %add.i.i1673.3 to i64, !dbg !2570
  %or.i.i.i1681.3 = or i64 %shl.i.i.i1679.3, %conv.i.i.i1680.3, !dbg !2571
  store i64 %or.i.i.i1681.3, ptr %cur_bits.i.i1598, align 8, !dbg !2572
  %sub.i.i.i1683.3 = sub nsw i32 %366, %conv.i3.i1676.3, !dbg !2573
  store i32 %sub.i.i.i1683.3, ptr %i_left.i, align 8, !dbg !2573
  %cmp.i.i.i1684.3 = icmp slt i32 %sub.i.i.i1683.3, 33, !dbg !2574
  br i1 %cmp.i.i.i1684.3, label %if.then.i.i.i1685.3, label %for.inc470.3, !dbg !2575

if.then.i.i.i1685.3:                              ; preds = %if.else.i1672.3
  %sh_prom6.i.i.i1686.3 = zext nneg i32 %sub.i.i.i1683.3 to i64, !dbg !2576
  %shl7.i.i.i1687.3 = shl i64 %or.i.i.i1681.3, %sh_prom6.i.i.i1686.3, !dbg !2576
    #dbg_value(i64 %shl7.i.i.i1687.3, !1698, !DIExpression(), !2577)
    #dbg_value(i64 %shl7.i.i.i1687.3, !1705, !DIExpression(), !2579)
  %add.i.i.i.i.i1688.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.3), !dbg !2581
  %conv8.i.i.i1689.3 = trunc i64 %add.i.i.i.i.i1688.3 to i32, !dbg !2582
  store i32 %conv8.i.i.i1689.3, ptr %365, align 4, !dbg !2583
  %373 = load i32, ptr %i_left.i, align 8, !dbg !2584
  %add.i.i.i1691.3 = add nsw i32 %373, 32, !dbg !2584
  store i32 %add.i.i.i1691.3, ptr %i_left.i, align 8, !dbg !2584
  %374 = load ptr, ptr %p.i, align 8, !dbg !2585
  %add.ptr.i.i.i1692.3 = getelementptr inbounds i8, ptr %374, i64 4, !dbg !2585
  store ptr %add.ptr.i.i.i1692.3, ptr %p.i, align 8, !dbg !2585
  br label %for.inc470.3, !dbg !2586

if.then.i1693.3:                                  ; preds = %if.then453.3
  %xor.i1694.3 = xor i32 %conv468.3, 1, !dbg !2545
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2546)
    #dbg_value(i32 %xor.i1694.3, !1637, !DIExpression(), !2546)
  %375 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2548
  %shl.i.i1696.3 = shl i64 %375, 1, !dbg !2548
  %conv.i.i1697.3 = zext i32 %xor.i1694.3 to i64, !dbg !2549
  %or.i.i1698.3 = or i64 %shl.i.i1696.3, %conv.i.i1697.3, !dbg !2550
  store i64 %or.i.i1698.3, ptr %cur_bits.i.i1598, align 8, !dbg !2550
  %dec.i.i1700.3 = add nsw i32 %366, -1, !dbg !2551
  store i32 %dec.i.i1700.3, ptr %i_left.i, align 8, !dbg !2551
  %cmp.i.i1701.3 = icmp eq i32 %dec.i.i1700.3, 32, !dbg !2552
  br i1 %cmp.i.i1701.3, label %if.then.i.i1702.3, label %for.inc470.3, !dbg !2553

if.then.i.i1702.3:                                ; preds = %if.then.i1693.3
  %conv6.i.i1703.3 = trunc i64 %or.i.i1698.3 to i32, !dbg !2554
    #dbg_value(i32 %conv6.i.i1703.3, !1650, !DIExpression(), !2555)
  %add5.i.i.i1704.3 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.3), !dbg !2557
  store i32 %add5.i.i.i1704.3, ptr %365, align 4, !dbg !2558
  %376 = load ptr, ptr %p.i, align 8, !dbg !2559
  %add.ptr.i.i1706.3 = getelementptr inbounds i8, ptr %376, i64 4, !dbg !2559
  store ptr %add.ptr.i.i1706.3, ptr %p.i, align 8, !dbg !2559
  store i32 64, ptr %i_left.i, align 8, !dbg !2560
  br label %for.inc470.3, !dbg !2561

for.inc470.3:                                     ; preds = %if.then.i.i1702.3, %if.then.i1693.3, %if.then.i.i.i1685.3, %if.else.i1672.3, %for.inc470.2
    #dbg_value(i64 4, !1555, !DIExpression(), !2535)
  %.pre2120 = load i8, ptr %i_sub_partition383, align 1, !dbg !2479
  br label %if.end473

if.end473:                                        ; preds = %for.inc470.3, %if.end432
  %377 = phi i8 [ %.pre2120, %for.inc470.3 ], [ %.pre2121, %if.end432 ], !dbg !2479
    #dbg_value(i64 0, !1558, !DIExpression(), !2589)
  %idxprom484 = zext i8 %377 to i64, !dbg !2590
  %arrayidx485 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484, !dbg !2590
  %378 = load i8, ptr %arrayidx485, align 1, !dbg !2590
  %tobool486.not = icmp eq i8 %378, 0, !dbg !2590
  br i1 %tobool486.not, label %for.inc490, label %if.then487, !dbg !2591

if.then487:                                       ; preds = %if.end473
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2592
  br label %for.inc490, !dbg !2592

for.inc490:                                       ; preds = %if.end473, %if.then487
    #dbg_value(i64 1, !1558, !DIExpression(), !2589)
  %379 = load i8, ptr %arrayidx385.1, align 1, !dbg !2479
  %idxprom484.1 = zext i8 %379 to i64, !dbg !2590
  %arrayidx485.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.1, !dbg !2590
  %380 = load i8, ptr %arrayidx485.1, align 1, !dbg !2590
  %tobool486.not.1 = icmp eq i8 %380, 0, !dbg !2590
  br i1 %tobool486.not.1, label %for.inc490.1, label %if.then487.1, !dbg !2591

if.then487.1:                                     ; preds = %for.inc490
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2592
  br label %for.inc490.1, !dbg !2592

for.inc490.1:                                     ; preds = %if.then487.1, %for.inc490
    #dbg_value(i64 2, !1558, !DIExpression(), !2589)
  %381 = load i8, ptr %arrayidx385.2, align 1, !dbg !2479
  %idxprom484.2 = zext i8 %381 to i64, !dbg !2590
  %arrayidx485.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.2, !dbg !2590
  %382 = load i8, ptr %arrayidx485.2, align 1, !dbg !2590
  %tobool486.not.2 = icmp eq i8 %382, 0, !dbg !2590
  br i1 %tobool486.not.2, label %for.inc490.2, label %if.then487.2, !dbg !2591

if.then487.2:                                     ; preds = %for.inc490.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2), !dbg !2592
  br label %for.inc490.2, !dbg !2592

for.inc490.2:                                     ; preds = %if.then487.2, %for.inc490.1
    #dbg_value(i64 3, !1558, !DIExpression(), !2589)
  %383 = load i8, ptr %arrayidx385.3, align 1, !dbg !2479
  %idxprom484.3 = zext i8 %383 to i64, !dbg !2590
  %arrayidx485.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.3, !dbg !2590
  %384 = load i8, ptr %arrayidx485.3, align 1, !dbg !2590
  %tobool486.not.3 = icmp eq i8 %384, 0, !dbg !2590
  br i1 %tobool486.not.3, label %for.inc490.3, label %if.then487.3, !dbg !2591

if.then487.3:                                     ; preds = %for.inc490.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2), !dbg !2592
  br label %for.inc490.3, !dbg !2592

for.inc490.3:                                     ; preds = %if.then487.3, %for.inc490.2
    #dbg_value(i64 4, !1558, !DIExpression(), !2589)
    #dbg_value(i64 0, !1560, !DIExpression(), !2593)
  %385 = load i8, ptr %i_sub_partition383, align 1, !dbg !2594
  %idxprom503 = zext i8 %385 to i64, !dbg !2597
  %arrayidx504 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503, !dbg !2597
  %386 = load i8, ptr %arrayidx504, align 1, !dbg !2597
  %tobool505.not = icmp eq i8 %386, 0, !dbg !2597
  br i1 %tobool505.not, label %for.inc509, label %if.then506, !dbg !2598

if.then506:                                       ; preds = %for.inc490.3
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2), !dbg !2599
  br label %for.inc509, !dbg !2599

for.inc509:                                       ; preds = %for.inc490.3, %if.then506
    #dbg_value(i64 1, !1560, !DIExpression(), !2593)
  %387 = load i8, ptr %arrayidx385.1, align 1, !dbg !2594
  %idxprom503.1 = zext i8 %387 to i64, !dbg !2597
  %arrayidx504.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.1, !dbg !2597
  %388 = load i8, ptr %arrayidx504.1, align 1, !dbg !2597
  %tobool505.not.1 = icmp eq i8 %388, 0, !dbg !2597
  br i1 %tobool505.not.1, label %for.inc509.1, label %if.then506.1, !dbg !2598

if.then506.1:                                     ; preds = %for.inc509
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2), !dbg !2599
  br label %for.inc509.1, !dbg !2599

for.inc509.1:                                     ; preds = %if.then506.1, %for.inc509
    #dbg_value(i64 2, !1560, !DIExpression(), !2593)
  %389 = load i8, ptr %arrayidx385.2, align 1, !dbg !2594
  %idxprom503.2 = zext i8 %389 to i64, !dbg !2597
  %arrayidx504.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.2, !dbg !2597
  %390 = load i8, ptr %arrayidx504.2, align 1, !dbg !2597
  %tobool505.not.2 = icmp eq i8 %390, 0, !dbg !2597
  br i1 %tobool505.not.2, label %for.inc509.2, label %if.then506.2, !dbg !2598

if.then506.2:                                     ; preds = %for.inc509.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 2), !dbg !2599
  br label %for.inc509.2, !dbg !2599

for.inc509.2:                                     ; preds = %if.then506.2, %for.inc509.1
    #dbg_value(i64 3, !1560, !DIExpression(), !2593)
  %391 = load i8, ptr %arrayidx385.3, align 1, !dbg !2594
  %idxprom503.3 = zext i8 %391 to i64, !dbg !2597
  %arrayidx504.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.3, !dbg !2597
  %392 = load i8, ptr %arrayidx504.3, align 1, !dbg !2597
  %tobool505.not.3 = icmp eq i8 %392, 0, !dbg !2597
  br i1 %tobool505.not.3, label %if.end697, label %if.then506.3, !dbg !2598

if.then506.3:                                     ; preds = %for.inc509.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 12, i32 noundef 2), !dbg !2599
  br label %if.end697, !dbg !2599

if.then515:                                       ; preds = %if.else125
  %idxprom516 = sext i32 %0 to i64, !dbg !2600
  %arrayidx517 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %idxprom516, !dbg !2600
    #dbg_value(ptr %arrayidx517, !1562, !DIExpression(), !2601)
  %i_fref520 = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2602
  %393 = load i32, ptr %i_fref520, align 8, !dbg !2603
  %sub522 = add nsw i32 %393, -1, !dbg !2604
    #dbg_value(i32 %sub522, !1567, !DIExpression(), !2601)
  %arrayidx526 = getelementptr inbounds i8, ptr %h, i64 21420, !dbg !2605
  %394 = load i32, ptr %arrayidx526, align 4, !dbg !2605
  %sub527 = add nsw i32 %394, -1, !dbg !2606
    #dbg_value(i32 %sub527, !1568, !DIExpression(), !2601)
  %i_partition529 = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !2607
  %395 = load i32, ptr %i_partition529, align 4, !dbg !2607
  %sub530 = add nsw i32 %395, -14, !dbg !2608
  %idxprom531 = sext i32 %sub530 to i64, !dbg !2609
  %sub533 = add nsw i32 %0, -8, !dbg !2610
  %idxprom534 = sext i32 %sub533 to i64, !dbg !2609
  %arrayidx535 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %idxprom531, i64 %idxprom534, !dbg !2609
  %396 = load i8, ptr %arrayidx535, align 1, !dbg !2609
  %conv536 = zext i8 %396 to i64, !dbg !2609
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2611)
    #dbg_value(i8 %396, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2611)
  %add.i1708 = add nuw nsw i64 %conv536, 1, !dbg !2613
  %arrayidx.i1710 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1708, !dbg !2614
  %397 = load i8, ptr %arrayidx.i1710, align 1, !dbg !2614
  %conv.i1711 = zext i8 %397 to i32, !dbg !2614
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2615)
    #dbg_value(i32 %conv.i1711, !1682, !DIExpression(), !2615)
    #dbg_value(i64 %add.i1708, !1683, !DIExpression(), !2615)
  %cur_bits.i.i1712 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2617
  %398 = load i64, ptr %cur_bits.i.i1712, align 8, !dbg !2617
  %sh_prom.i.i1713 = zext nneg i8 %397 to i64, !dbg !2618
  %shl.i.i1714 = shl i64 %398, %sh_prom.i.i1713, !dbg !2618
  %or.i.i1716 = or i64 %shl.i.i1714, %add.i1708, !dbg !2619
  store i64 %or.i.i1716, ptr %cur_bits.i.i1712, align 8, !dbg !2620
  %sub.i.i1718 = sub nsw i32 %16, %conv.i1711, !dbg !2621
  store i32 %sub.i.i1718, ptr %i_left.i, align 8, !dbg !2621
  %cmp.i.i1719 = icmp slt i32 %sub.i.i1718, 33, !dbg !2622
  br i1 %cmp.i.i1719, label %if.then.i.i1720, label %bs_write_ue.exit1728, !dbg !2623

if.then.i.i1720:                                  ; preds = %if.then515
  %sh_prom6.i.i1721 = zext nneg i32 %sub.i.i1718 to i64, !dbg !2624
  %shl7.i.i1722 = shl i64 %or.i.i1716, %sh_prom6.i.i1721, !dbg !2624
    #dbg_value(i64 %shl7.i.i1722, !1698, !DIExpression(), !2625)
    #dbg_value(i64 %shl7.i.i1722, !1705, !DIExpression(), !2627)
  %add.i.i.i.i1723 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1722), !dbg !2629
  %conv8.i.i1724 = trunc i64 %add.i.i.i.i1723 to i32, !dbg !2630
  store i32 %conv8.i.i1724, ptr %15, align 4, !dbg !2631
  %399 = load i32, ptr %i_left.i, align 8, !dbg !2632
  %add.i.i1726 = add nsw i32 %399, 32, !dbg !2632
  store i32 %add.i.i1726, ptr %i_left.i, align 8, !dbg !2632
  %400 = load ptr, ptr %p.i, align 8, !dbg !2633
  %add.ptr.i.i1727 = getelementptr inbounds i8, ptr %400, i64 4, !dbg !2633
  store ptr %add.ptr.i.i1727, ptr %p.i, align 8, !dbg !2633
  %.pre2126 = load i32, ptr %i_partition529, align 4, !dbg !2634
  br label %bs_write_ue.exit1728, !dbg !2636

bs_write_ue.exit1728:                             ; preds = %if.then515, %if.then.i.i1720
  %401 = phi i32 [ %395, %if.then515 ], [ %.pre2126, %if.then.i.i1720 ], !dbg !2634
  %cmp539 = icmp eq i32 %401, 16, !dbg !2637
  %tobool542.not = icmp eq i32 %sub522, 0, !dbg !2638
  br i1 %cmp539, label %if.then541, label %if.else582, !dbg !2639

if.then541:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end556, label %land.lhs.true543, !dbg !2640

land.lhs.true543:                                 ; preds = %if.then541
  %402 = load i8, ptr %arrayidx517, align 4, !dbg !2643
  %tobool547.not = icmp eq i8 %402, 0, !dbg !2643
  br i1 %tobool547.not, label %if.end556, label %if.then548, !dbg !2644

if.then548:                                       ; preds = %land.lhs.true543
  %arrayidx554 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2645
  %403 = load i8, ptr %arrayidx554, align 1, !dbg !2645
  %conv555 = sext i8 %403 to i32, !dbg !2645
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv555), !dbg !2646
  br label %if.end556, !dbg !2646

if.end556:                                        ; preds = %if.then548, %land.lhs.true543, %if.then541
  %tobool557.not = icmp eq i32 %sub527, 0, !dbg !2647
  br i1 %tobool557.not, label %if.end571, label %land.lhs.true558, !dbg !2649

land.lhs.true558:                                 ; preds = %if.end556
  %arrayidx559 = getelementptr inbounds i8, ptr %arrayidx517, i64 2, !dbg !2650
  %404 = load i8, ptr %arrayidx559, align 2, !dbg !2650
  %tobool562.not = icmp eq i8 %404, 0, !dbg !2650
  br i1 %tobool562.not, label %if.end571, label %if.then563, !dbg !2651

if.then563:                                       ; preds = %land.lhs.true558
  %arrayidx569 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2652
  %405 = load i8, ptr %arrayidx569, align 1, !dbg !2652
  %conv570 = sext i8 %405 to i32, !dbg !2652
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv570), !dbg !2653
  br label %if.end571, !dbg !2653

if.end571:                                        ; preds = %if.then563, %land.lhs.true558, %if.end556
  %406 = load i8, ptr %arrayidx517, align 4, !dbg !2654
  %tobool574.not = icmp eq i8 %406, 0, !dbg !2654
  br i1 %tobool574.not, label %if.end576, label %if.then575, !dbg !2656

if.then575:                                       ; preds = %if.end571
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2657
  br label %if.end576, !dbg !2657

if.end576:                                        ; preds = %if.then575, %if.end571
  %arrayidx577 = getelementptr inbounds i8, ptr %arrayidx517, i64 2, !dbg !2658
  %407 = load i8, ptr %arrayidx577, align 2, !dbg !2658
  %tobool579.not = icmp eq i8 %407, 0, !dbg !2658
  br i1 %tobool579.not, label %if.end697, label %if.then580, !dbg !2660

if.then580:                                       ; preds = %if.end576
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4), !dbg !2661
  br label %if.end697, !dbg !2661

if.else582:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end612, label %land.lhs.true584, !dbg !2662

land.lhs.true584:                                 ; preds = %if.else582
  %408 = load i8, ptr %arrayidx517, align 4, !dbg !2665
  %tobool588.not = icmp eq i8 %408, 0, !dbg !2665
  br i1 %tobool588.not, label %land.lhs.true599, label %if.then589, !dbg !2666

if.then589:                                       ; preds = %land.lhs.true584
  %arrayidx595 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2667
  %409 = load i8, ptr %arrayidx595, align 1, !dbg !2667
  %conv596 = sext i8 %409 to i32, !dbg !2667
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv596), !dbg !2668
  br label %land.lhs.true599, !dbg !2668

land.lhs.true599:                                 ; preds = %land.lhs.true584, %if.then589
  %arrayidx601 = getelementptr inbounds i8, ptr %arrayidx517, i64 1, !dbg !2669
  %410 = load i8, ptr %arrayidx601, align 1, !dbg !2669
  %tobool603.not = icmp eq i8 %410, 0, !dbg !2669
  br i1 %tobool603.not, label %if.end612, label %if.then604, !dbg !2671

if.then604:                                       ; preds = %land.lhs.true599
  %arrayidx610 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2672
  %411 = load i8, ptr %arrayidx610, align 1, !dbg !2672
  %conv611 = sext i8 %411 to i32, !dbg !2672
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv611), !dbg !2673
  br label %if.end612, !dbg !2673

if.end612:                                        ; preds = %if.else582, %if.then604, %land.lhs.true599
  %tobool613.not = icmp eq i32 %sub527, 0, !dbg !2674
  br i1 %tobool613.not, label %if.end642, label %land.lhs.true614, !dbg !2676

land.lhs.true614:                                 ; preds = %if.end612
  %arrayidx615 = getelementptr inbounds i8, ptr %arrayidx517, i64 2, !dbg !2677
  %412 = load i8, ptr %arrayidx615, align 2, !dbg !2677
  %tobool618.not = icmp eq i8 %412, 0, !dbg !2677
  br i1 %tobool618.not, label %land.lhs.true629, label %if.then619, !dbg !2678

if.then619:                                       ; preds = %land.lhs.true614
  %arrayidx625 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2679
  %413 = load i8, ptr %arrayidx625, align 1, !dbg !2679
  %conv626 = sext i8 %413 to i32, !dbg !2679
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv626), !dbg !2680
  br label %land.lhs.true629, !dbg !2680

land.lhs.true629:                                 ; preds = %land.lhs.true614, %if.then619
  %arrayidx631 = getelementptr inbounds i8, ptr %arrayidx517, i64 3, !dbg !2681
  %414 = load i8, ptr %arrayidx631, align 1, !dbg !2681
  %tobool633.not = icmp eq i8 %414, 0, !dbg !2681
  br i1 %tobool633.not, label %if.end642, label %if.then634, !dbg !2683

if.then634:                                       ; preds = %land.lhs.true629
  %arrayidx640 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !2684
  %415 = load i8, ptr %arrayidx640, align 1, !dbg !2684
  %conv641 = sext i8 %415 to i32, !dbg !2684
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv641), !dbg !2685
  br label %if.end642, !dbg !2685

if.end642:                                        ; preds = %if.end612, %if.then634, %land.lhs.true629
  %416 = load i32, ptr %i_partition529, align 4, !dbg !2686
  %cmp645 = icmp eq i32 %416, 14, !dbg !2688
  %417 = load i8, ptr %arrayidx517, align 4, !dbg !2689
  %tobool650.not = icmp eq i8 %417, 0, !dbg !2689
  br i1 %cmp645, label %if.then647, label %if.else668, !dbg !2690

if.then647:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end652, label %if.then651, !dbg !2691

if.then651:                                       ; preds = %if.then647
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2693
  br label %if.end652, !dbg !2693

if.end652:                                        ; preds = %if.then651, %if.then647
  %arrayidx654 = getelementptr inbounds i8, ptr %arrayidx517, i64 1, !dbg !2695
  %418 = load i8, ptr %arrayidx654, align 1, !dbg !2695
  %tobool655.not = icmp eq i8 %418, 0, !dbg !2695
  br i1 %tobool655.not, label %if.end657, label %if.then656, !dbg !2697

if.then656:                                       ; preds = %if.end652
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4), !dbg !2698
  br label %if.end657, !dbg !2698

if.end657:                                        ; preds = %if.then656, %if.end652
  %arrayidx658 = getelementptr inbounds i8, ptr %arrayidx517, i64 2, !dbg !2699
  %419 = load i8, ptr %arrayidx658, align 2, !dbg !2699
  %tobool660.not = icmp eq i8 %419, 0, !dbg !2699
  br i1 %tobool660.not, label %if.end662, label %if.then661, !dbg !2701

if.then661:                                       ; preds = %if.end657
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4), !dbg !2702
  br label %if.end662, !dbg !2702

if.end662:                                        ; preds = %if.then661, %if.end657
  %arrayidx664 = getelementptr inbounds i8, ptr %arrayidx517, i64 3, !dbg !2703
  %420 = load i8, ptr %arrayidx664, align 1, !dbg !2703
  %tobool665.not = icmp eq i8 %420, 0, !dbg !2703
  br i1 %tobool665.not, label %if.end697, label %if.then666, !dbg !2705

if.then666:                                       ; preds = %if.end662
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 4), !dbg !2706
  br label %if.end697, !dbg !2706

if.else668:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end673, label %if.then672, !dbg !2707

if.then672:                                       ; preds = %if.else668
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2709
  br label %if.end673, !dbg !2709

if.end673:                                        ; preds = %if.then672, %if.else668
  %arrayidx675 = getelementptr inbounds i8, ptr %arrayidx517, i64 1, !dbg !2711
  %421 = load i8, ptr %arrayidx675, align 1, !dbg !2711
  %tobool676.not = icmp eq i8 %421, 0, !dbg !2711
  br i1 %tobool676.not, label %if.end678, label %if.then677, !dbg !2713

if.then677:                                       ; preds = %if.end673
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2714
  br label %if.end678, !dbg !2714

if.end678:                                        ; preds = %if.then677, %if.end673
  %arrayidx679 = getelementptr inbounds i8, ptr %arrayidx517, i64 2, !dbg !2715
  %422 = load i8, ptr %arrayidx679, align 2, !dbg !2715
  %tobool681.not = icmp eq i8 %422, 0, !dbg !2715
  br i1 %tobool681.not, label %if.end683, label %if.then682, !dbg !2717

if.then682:                                       ; preds = %if.end678
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2), !dbg !2718
  br label %if.end683, !dbg !2718

if.end683:                                        ; preds = %if.then682, %if.end678
  %arrayidx685 = getelementptr inbounds i8, ptr %arrayidx517, i64 3, !dbg !2719
  %423 = load i8, ptr %arrayidx685, align 1, !dbg !2719
  %tobool686.not = icmp eq i8 %423, 0, !dbg !2719
  br i1 %tobool686.not, label %if.end697, label %if.then687, !dbg !2721

if.then687:                                       ; preds = %if.end683
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2), !dbg !2722
  br label %if.end697, !dbg !2722

if.else691:                                       ; preds = %if.else125
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2723)
    #dbg_value(i32 1, !1637, !DIExpression(), !2723)
  %cur_bits.i1729 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2725
  %424 = load i64, ptr %cur_bits.i1729, align 8, !dbg !2726
  %shl.i1730 = shl i64 %424, 1, !dbg !2726
  %or.i1731 = or disjoint i64 %shl.i1730, 1, !dbg !2727
  store i64 %or.i1731, ptr %cur_bits.i1729, align 8, !dbg !2727
  %dec.i1733 = add nsw i32 %16, -1, !dbg !2728
  store i32 %dec.i1733, ptr %i_left.i, align 8, !dbg !2728
  %cmp.i1734 = icmp eq i32 %dec.i1733, 32, !dbg !2729
  br i1 %cmp.i1734, label %if.then.i1735, label %if.end697, !dbg !2730

if.then.i1735:                                    ; preds = %if.else691
  %conv6.i1736 = trunc i64 %or.i1731 to i32, !dbg !2731
    #dbg_value(i32 %conv6.i1736, !1650, !DIExpression(), !2732)
  %add5.i.i1737 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1736), !dbg !2734
  store i32 %add5.i.i1737, ptr %15, align 4, !dbg !2735
  %425 = load ptr, ptr %p.i, align 8, !dbg !2736
  %add.ptr.i1739 = getelementptr inbounds i8, ptr %425, i64 4, !dbg !2736
  store ptr %add.ptr.i1739, ptr %p.i, align 8, !dbg !2736
  store i32 64, ptr %i_left.i, align 8, !dbg !2737
  br label %if.end697, !dbg !2738

if.end697:                                        ; preds = %for.inc509.2, %if.then506.3, %cavlc_mb8x8_mvd.exit.2, %sw.bb10.i.3, %sw.bb5.i.3, %sw.bb1.i.3, %sw.bb.i.3, %if.then.i1735, %if.else691, %if.then.i.i1398, %bs_write_ue.exit1385, %if.then.i.i1329, %for.cond.cleanup98, %if.then580, %if.end576, %if.end683, %if.then687, %if.end662, %if.then666, %if.then151, %if.end173, %if.end249, %if.end211
    #dbg_value(ptr %bs, !1610, !DIExpression(), !2739)
  %426 = load ptr, ptr %p.i, align 8, !dbg !2741
  %427 = load ptr, ptr %bs, align 8, !dbg !2742
  %sub.ptr.lhs.cast.i1742 = ptrtoint ptr %426 to i64, !dbg !2743
  %sub.ptr.rhs.cast.i1743 = ptrtoint ptr %427 to i64, !dbg !2743
  %sub.ptr.sub.i1744 = sub i64 %sub.ptr.lhs.cast.i1742, %sub.ptr.rhs.cast.i1743, !dbg !2743
  %428 = load i32, ptr %i_left.i, align 8, !dbg !2744
  %sub.ptr.sub.tr.i1746 = trunc i64 %sub.ptr.sub.i1744 to i32, !dbg !2745
  %429 = shl i32 %sub.ptr.sub.tr.i1746, 3, !dbg !2745
  %reass.sub.i1747 = sub i32 %429, %428, !dbg !2745
    #dbg_value(!DIArgList(i32 0, i32 %reass.sub.i1747), !1521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 64, DW_OP_minus, DW_OP_stack_value), !1605)
  %stat700 = getelementptr inbounds i8, ptr %h, i64 26712, !dbg !2746
  %430 = load i32, ptr %stat700, align 8, !dbg !2747
  %sub699 = add i32 %430, %reass.sub.i.neg2073, !dbg !2748
  %add703 = add i32 %sub699, %reass.sub.i1747, !dbg !2747
  store i32 %add703, ptr %stat700, align 8, !dbg !2747
  br i1 %or.cond, label %if.then709, label %if.else718, !dbg !2749

if.then709:                                       ; preds = %if.end697
  %i_cbp_chroma711 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2751
  %431 = load i32, ptr %i_cbp_chroma711, align 4, !dbg !2751
  %shl = shl i32 %431, 4, !dbg !2752
  %i_cbp_luma713 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2753
  %432 = load i32, ptr %i_cbp_luma713, align 8, !dbg !2753
  %or714 = or i32 %shl, %432, !dbg !2754
  %idxprom715 = sext i32 %or714 to i64, !dbg !2755
  %arrayidx716 = getelementptr inbounds [48 x i8], ptr @intra4x4_cbp_to_golomb, i64 0, i64 %idxprom715, !dbg !2755
  %433 = load i8, ptr %arrayidx716, align 1, !dbg !2755
  %conv717 = zext i8 %433 to i64, !dbg !2755
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2756)
    #dbg_value(i8 %433, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2756)
  %add.i1749 = add nuw nsw i64 %conv717, 1, !dbg !2758
  %arrayidx.i1751 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1749, !dbg !2759
  %434 = load i8, ptr %arrayidx.i1751, align 1, !dbg !2759
  %conv.i1752 = zext i8 %434 to i32, !dbg !2759
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2760)
    #dbg_value(i32 %conv.i1752, !1682, !DIExpression(), !2760)
    #dbg_value(i64 %add.i1749, !1683, !DIExpression(), !2760)
  %cur_bits.i.i1753 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2762
  %435 = load i64, ptr %cur_bits.i.i1753, align 8, !dbg !2762
  %sh_prom.i.i1754 = zext nneg i8 %434 to i64, !dbg !2763
  %shl.i.i1755 = shl i64 %435, %sh_prom.i.i1754, !dbg !2763
  %or.i.i1757 = or i64 %shl.i.i1755, %add.i1749, !dbg !2764
  store i64 %or.i.i1757, ptr %cur_bits.i.i1753, align 8, !dbg !2765
  %sub.i.i1759 = sub nsw i32 %428, %conv.i1752, !dbg !2766
  store i32 %sub.i.i1759, ptr %i_left.i, align 8, !dbg !2766
  %cmp.i.i1760 = icmp slt i32 %sub.i.i1759, 33, !dbg !2767
  br i1 %cmp.i.i1760, label %if.end732.sink.split, label %if.end732, !dbg !2768

if.else718:                                       ; preds = %if.end697
  %cmp719.not = icmp eq i32 %0, 2, !dbg !2769
  br i1 %cmp719.not, label %if.end732, label %if.then721, !dbg !2771

if.then721:                                       ; preds = %if.else718
  %i_cbp_chroma723 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2772
  %436 = load i32, ptr %i_cbp_chroma723, align 4, !dbg !2772
  %shl724 = shl i32 %436, 4, !dbg !2773
  %i_cbp_luma726 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2774
  %437 = load i32, ptr %i_cbp_luma726, align 8, !dbg !2774
  %or727 = or i32 %shl724, %437, !dbg !2775
  %idxprom728 = sext i32 %or727 to i64, !dbg !2776
  %arrayidx729 = getelementptr inbounds [48 x i8], ptr @inter_cbp_to_golomb, i64 0, i64 %idxprom728, !dbg !2776
  %438 = load i8, ptr %arrayidx729, align 1, !dbg !2776
  %conv730 = zext i8 %438 to i64, !dbg !2776
    #dbg_value(ptr %bs, !1667, !DIExpression(), !2777)
    #dbg_value(i8 %438, !1672, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2777)
  %add.i1770 = add nuw nsw i64 %conv730, 1, !dbg !2779
  %arrayidx.i1772 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1770, !dbg !2780
  %439 = load i8, ptr %arrayidx.i1772, align 1, !dbg !2780
  %conv.i1773 = zext i8 %439 to i32, !dbg !2780
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2781)
    #dbg_value(i32 %conv.i1773, !1682, !DIExpression(), !2781)
    #dbg_value(i64 %add.i1770, !1683, !DIExpression(), !2781)
  %cur_bits.i.i1774 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2783
  %440 = load i64, ptr %cur_bits.i.i1774, align 8, !dbg !2783
  %sh_prom.i.i1775 = zext nneg i8 %439 to i64, !dbg !2784
  %shl.i.i1776 = shl i64 %440, %sh_prom.i.i1775, !dbg !2784
  %or.i.i1778 = or i64 %shl.i.i1776, %add.i1770, !dbg !2785
  store i64 %or.i.i1778, ptr %cur_bits.i.i1774, align 8, !dbg !2786
  %sub.i.i1780 = sub nsw i32 %428, %conv.i1773, !dbg !2787
  store i32 %sub.i.i1780, ptr %i_left.i, align 8, !dbg !2787
  %cmp.i.i1781 = icmp slt i32 %sub.i.i1780, 33, !dbg !2788
  br i1 %cmp.i.i1781, label %if.end732.sink.split, label %if.end732, !dbg !2789

if.end732.sink.split:                             ; preds = %if.then721, %if.then709
  %sub.i.i1780.sink = phi i32 [ %sub.i.i1759, %if.then709 ], [ %sub.i.i1780, %if.then721 ]
  %or.i.i1778.sink = phi i64 [ %or.i.i1757, %if.then709 ], [ %or.i.i1778, %if.then721 ]
  %sh_prom6.i.i1783 = zext nneg i32 %sub.i.i1780.sink to i64, !dbg !2790
  %shl7.i.i1784 = shl i64 %or.i.i1778.sink, %sh_prom6.i.i1783, !dbg !2790
  %add.i.i.i.i1785 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1784), !dbg !2793
  %conv8.i.i1786 = trunc i64 %add.i.i.i.i1785 to i32, !dbg !2795
  store i32 %conv8.i.i1786, ptr %426, align 4, !dbg !2796
  %441 = load i32, ptr %i_left.i, align 8, !dbg !2797
  %add.i.i1788 = add nsw i32 %441, 32, !dbg !2797
  store i32 %add.i.i1788, ptr %i_left.i, align 8, !dbg !2797
  %442 = load ptr, ptr %p.i, align 8, !dbg !2798
  %add.ptr.i.i1789 = getelementptr inbounds i8, ptr %442, i64 4, !dbg !2798
  store ptr %add.ptr.i.i1789, ptr %p.i, align 8, !dbg !2798
  br label %if.end732, !dbg !2799

if.end732:                                        ; preds = %if.end732.sink.split, %if.then721, %if.then709, %if.else718
  %443 = phi ptr [ %426, %if.then721 ], [ %426, %if.then709 ], [ %426, %if.else718 ], [ %add.ptr.i.i1789, %if.end732.sink.split ]
  %444 = phi i32 [ %sub.i.i1780, %if.then721 ], [ %sub.i.i1759, %if.then709 ], [ %428, %if.else718 ], [ %add.i.i1788, %if.end732.sink.split ]
    #dbg_value(ptr %h, !1456, !DIExpression(), !2803)
  %pps.i = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !2799
  %445 = load ptr, ptr %pps.i, align 16, !dbg !2799
  %b_transform_8x8_mode.i = getelementptr inbounds i8, ptr %445, i64 60, !dbg !2804
  %446 = load i32, ptr %b_transform_8x8_mode.i, align 4, !dbg !2804
  %tobool.not.i = icmp eq i32 %446, 0, !dbg !2805
  br i1 %tobool.not.i, label %if.end742, label %if.end.i, !dbg !2806

if.end.i:                                         ; preds = %if.end732
  %447 = load i32, ptr %i_type, align 8, !dbg !2807
  %cmp.not.i = icmp eq i32 %447, 5, !dbg !2809
  br i1 %cmp.not.i, label %if.end4.i, label %if.then1.i, !dbg !2810

if.then1.i:                                       ; preds = %if.end.i
  %idxprom.i1791 = sext i32 %447 to i64, !dbg !2811
  %arrayidx.i1792 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %idxprom.i1791, !dbg !2811
  %448 = load i8, ptr %arrayidx.i1792, align 1, !dbg !2811
  %conv.i1793 = zext i8 %448 to i32, !dbg !2811
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !2812

if.end4.i:                                        ; preds = %if.end.i
  %i_sub_partition.i1795 = getelementptr inbounds i8, ptr %h, i64 17392, !dbg !2813
  %449 = load i32, ptr %i_sub_partition.i1795, align 16, !dbg !2813
  %cmp6.i = icmp eq i32 %449, 50529027, !dbg !2814
  %conv7.i = zext i1 %cmp6.i to i32, !dbg !2814
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !2815

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i1794 = phi i32 [ %conv.i1793, %if.then1.i ], [ %conv7.i, %if.end4.i ], !dbg !2803
  %tobool734.not = icmp eq i32 %retval.0.i1794, 0, !dbg !2816
  br i1 %tobool734.not, label %if.end742, label %land.lhs.true735, !dbg !2817

land.lhs.true735:                                 ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma737 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2818
  %450 = load i32, ptr %i_cbp_luma737, align 8, !dbg !2818
  %tobool738.not = icmp eq i32 %450, 0, !dbg !2819
  br i1 %tobool738.not, label %if.end742, label %if.then739, !dbg !2820

if.then739:                                       ; preds = %land.lhs.true735
  %b_transform_8x8741 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !2821
  %451 = load i32, ptr %b_transform_8x8741, align 4, !dbg !2821
    #dbg_value(ptr %bs, !1632, !DIExpression(), !2822)
    #dbg_value(i32 %451, !1637, !DIExpression(), !2822)
  %cur_bits.i1796 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2824
  %452 = load i64, ptr %cur_bits.i1796, align 8, !dbg !2825
  %shl.i1797 = shl i64 %452, 1, !dbg !2825
  %conv.i1798 = zext i32 %451 to i64, !dbg !2826
  %or.i1799 = or i64 %shl.i1797, %conv.i1798, !dbg !2827
  store i64 %or.i1799, ptr %cur_bits.i1796, align 8, !dbg !2827
  %dec.i1801 = add nsw i32 %444, -1, !dbg !2828
  store i32 %dec.i1801, ptr %i_left.i, align 8, !dbg !2828
  %cmp.i1802 = icmp eq i32 %dec.i1801, 32, !dbg !2829
  br i1 %cmp.i1802, label %if.then.i1804, label %if.end742, !dbg !2830

if.then.i1804:                                    ; preds = %if.then739
  %conv6.i1805 = trunc i64 %or.i1799 to i32, !dbg !2831
    #dbg_value(i32 %conv6.i1805, !1650, !DIExpression(), !2832)
  %add5.i.i1806 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1805), !dbg !2834
  store i32 %add5.i.i1806, ptr %443, align 4, !dbg !2835
  %453 = load ptr, ptr %p.i, align 8, !dbg !2836
  %add.ptr.i1808 = getelementptr inbounds i8, ptr %453, i64 4, !dbg !2836
  store ptr %add.ptr.i1808, ptr %p.i, align 8, !dbg !2836
  store i32 64, ptr %i_left.i, align 8, !dbg !2837
  br label %if.end742, !dbg !2838

if.end742:                                        ; preds = %if.end732, %if.then.i1804, %if.then739, %land.lhs.true735, %x264_mb_transform_8x8_allowed.exit
  %454 = phi ptr [ %443, %if.end732 ], [ %add.ptr.i1808, %if.then.i1804 ], [ %443, %if.then739 ], [ %443, %land.lhs.true735 ], [ %443, %x264_mb_transform_8x8_allowed.exit ]
  %455 = phi i32 [ %444, %if.end732 ], [ 64, %if.then.i1804 ], [ %dec.i1801, %if.then739 ], [ %444, %land.lhs.true735 ], [ %444, %x264_mb_transform_8x8_allowed.exit ]
  %cmp743 = icmp eq i32 %0, 2, !dbg !2839
  br i1 %cmp743, label %if.then745, label %if.else817, !dbg !2840

if.then745:                                       ; preds = %if.end742
    #dbg_value(ptr %h, !2841, !DIExpression(), !2846)
    #dbg_value(ptr %h, !2844, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !2846)
  %i_qp.i = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !2848
  %456 = load i32, ptr %i_qp.i, align 16, !dbg !2848
  %i_last_qp.i = getelementptr inbounds i8, ptr %h, i64 25800, !dbg !2849
  %457 = load i32, ptr %i_last_qp.i, align 8, !dbg !2849
  %sub.i1810 = sub nsw i32 %456, %457, !dbg !2850
    #dbg_value(i32 %sub.i1810, !2845, !DIExpression(), !2846)
  %458 = load i32, ptr %i_type, align 8, !dbg !2851
  %cmp.i1812 = icmp eq i32 %458, 2, !dbg !2853
  br i1 %cmp.i1812, label %land.lhs.true.i, label %if.end.i1813, !dbg !2854

land.lhs.true.i:                                  ; preds = %if.then745
  %i_cbp_luma.i = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2855
  %459 = load i32, ptr %i_cbp_luma.i, align 8, !dbg !2855
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2856
  %460 = load i32, ptr %i_cbp_chroma.i, align 4, !dbg !2856
  %or.i1837 = or i32 %460, %459, !dbg !2857
  %tobool.not.i1838 = icmp eq i32 %or.i1837, 0, !dbg !2857
  br i1 %tobool.not.i1838, label %land.lhs.true5.i, label %if.end.i1813, !dbg !2858

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i1839 = getelementptr inbounds i8, ptr %h, i64 25116, !dbg !2859
  %461 = load i8, ptr %arrayidx.i1839, align 1, !dbg !2859
  %tobool7.not.i = icmp eq i8 %461, 0, !dbg !2859
  br i1 %tobool7.not.i, label %if.end.thread.i, label %if.end.i1813, !dbg !2860

if.end.thread.i:                                  ; preds = %land.lhs.true5.i
  store i32 %457, ptr %i_qp.i, align 16, !dbg !2861
    #dbg_value(i32 0, !2845, !DIExpression(), !2846)
  br label %if.end21.thread.i, !dbg !2863

if.end.i1813:                                     ; preds = %land.lhs.true5.i, %land.lhs.true.i, %if.then745
    #dbg_value(i32 %sub.i1810, !2845, !DIExpression(), !2846)
  %tobool12.not.i = icmp eq i32 %456, %457, !dbg !2864
  br i1 %tobool12.not.i, label %if.end21.thread.i, label %if.then13.i, !dbg !2863

if.then13.i:                                      ; preds = %if.end.i1813
  %cmp14.i = icmp slt i32 %sub.i1810, -26, !dbg !2866
  %add.i1814 = add nsw i32 %sub.i1810, 52, !dbg !2869
  %cmp16.i = icmp sgt i32 %sub.i1810, 25, !dbg !2869
  %sub18.i = add nsw i32 %sub.i1810, -52, !dbg !2869
  %spec.select.i = select i1 %cmp16.i, i32 %sub18.i, i32 %sub.i1810, !dbg !2869
  %i_dqp.1.i = select i1 %cmp14.i, i32 %add.i1814, i32 %spec.select.i, !dbg !2869
  %i_dqp.1.fr.i = freeze i32 %i_dqp.1.i, !dbg !2870
    #dbg_value(ptr %h, !2844, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !2846)
    #dbg_value(i32 %i_dqp.1.i, !2845, !DIExpression(), !2846)
    #dbg_value(ptr %h, !2874, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !2879)
    #dbg_value(i32 %i_dqp.1.i, !2875, !DIExpression(), !2879)
    #dbg_value(i32 0, !2876, !DIExpression(), !2879)
  %mul.i.i = shl nsw i32 %i_dqp.1.fr.i, 1, !dbg !2880
  %sub.i.i1815 = sub nsw i32 1, %mul.i.i, !dbg !2881
    #dbg_value(i32 %sub.i.i1815, !2877, !DIExpression(), !2879)
  %cmp.i.i1816 = icmp sgt i32 %i_dqp.1.fr.i, 0, !dbg !2870
  %spec.select44.i = select i1 %cmp.i.i1816, i32 %mul.i.i, i32 %sub.i.i1815, !dbg !2882
  br label %if.end21.thread.i, !dbg !2882

if.end21.thread.i:                                ; preds = %if.then13.i, %if.end.i1813, %if.end.thread.i
  %462 = phi i32 [ %spec.select44.i, %if.then13.i ], [ 1, %if.end.i1813 ], [ 1, %if.end.thread.i ], !dbg !2882
    #dbg_value(i32 %462, !2877, !DIExpression(), !2879)
    #dbg_value(i32 %462, !2875, !DIExpression(), !2879)
  %cmp2.i.i = icmp sgt i32 %462, 255, !dbg !2883
  %shr.i.i = lshr i32 %462, 8, !dbg !2885
  %size.0.i.i = select i1 %cmp2.i.i, i32 16, i32 0, !dbg !2885
  %tmp.1.i.i = select i1 %cmp2.i.i, i32 %shr.i.i, i32 %462, !dbg !2885
    #dbg_value(i32 %tmp.1.i.i, !2877, !DIExpression(), !2879)
    #dbg_value(i32 %size.0.i.i, !2876, !DIExpression(), !2879)
  %idxprom.i.i1817 = sext i32 %tmp.1.i.i to i64, !dbg !2886
  %arrayidx.i.i1818 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1817, !dbg !2886
  %463 = load i8, ptr %arrayidx.i.i1818, align 1, !dbg !2886
  %conv.i.i1819 = zext i8 %463 to i32, !dbg !2886
  %add.i.i1820 = add nuw nsw i32 %size.0.i.i, %conv.i.i1819, !dbg !2887
    #dbg_value(i32 %add.i.i1820, !2876, !DIExpression(), !2879)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !2888)
    #dbg_value(i32 %add.i.i1820, !1682, !DIExpression(), !2888)
    #dbg_value(i32 %462, !1683, !DIExpression(), !2888)
  %cur_bits.i.i.i1821 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !2890
  %464 = load i64, ptr %cur_bits.i.i.i1821, align 8, !dbg !2890
  %sh_prom.i.i.i1822 = zext nneg i32 %add.i.i1820 to i64, !dbg !2891
  %shl.i.i.i1823 = shl i64 %464, %sh_prom.i.i.i1822, !dbg !2891
  %conv.i.i.i1824 = zext i32 %462 to i64, !dbg !2892
  %or.i.i.i1825 = or i64 %shl.i.i.i1823, %conv.i.i.i1824, !dbg !2893
  store i64 %or.i.i.i1825, ptr %cur_bits.i.i.i1821, align 8, !dbg !2894
  %sub.i.i.i1827 = sub nsw i32 %455, %add.i.i1820, !dbg !2895
  store i32 %sub.i.i.i1827, ptr %i_left.i, align 8, !dbg !2895
  %cmp.i.i.i1828 = icmp slt i32 %sub.i.i.i1827, 33, !dbg !2896
  br i1 %cmp.i.i.i1828, label %if.then.i.i.i1829, label %cavlc_qp_delta.exit, !dbg !2897

if.then.i.i.i1829:                                ; preds = %if.end21.thread.i
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !2888)
  %sh_prom6.i.i.i1830 = zext nneg i32 %sub.i.i.i1827 to i64, !dbg !2898
  %shl7.i.i.i1831 = shl i64 %or.i.i.i1825, %sh_prom6.i.i.i1830, !dbg !2898
    #dbg_value(i64 %shl7.i.i.i1831, !1698, !DIExpression(), !2899)
    #dbg_value(i64 %shl7.i.i.i1831, !1705, !DIExpression(), !2901)
  %add.i.i.i.i.i1832 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1831), !dbg !2903
  %conv8.i.i.i1833 = trunc i64 %add.i.i.i.i.i1832 to i32, !dbg !2904
  store i32 %conv8.i.i.i1833, ptr %454, align 4, !dbg !2905
  %465 = load i32, ptr %i_left.i, align 8, !dbg !2906
  %add.i.i.i1835 = add nsw i32 %465, 32, !dbg !2906
  store i32 %add.i.i.i1835, ptr %i_left.i, align 8, !dbg !2906
  %466 = load ptr, ptr %p.i, align 8, !dbg !2907
  %add.ptr.i.i.i1836 = getelementptr inbounds i8, ptr %466, i64 4, !dbg !2907
  store ptr %add.ptr.i.i.i1836, ptr %p.i, align 8, !dbg !2907
  br label %cavlc_qp_delta.exit, !dbg !2908

cavlc_qp_delta.exit:                              ; preds = %if.end21.thread.i, %if.then.i.i.i1829
  %467 = phi ptr [ %454, %if.end21.thread.i ], [ %add.ptr.i.i.i1836, %if.then.i.i.i1829 ]
  %468 = phi i32 [ %sub.i.i.i1827, %if.end21.thread.i ], [ %add.i.i.i1835, %if.then.i.i.i1829 ]
    #dbg_value(ptr %h, !2909, !DIExpression(), !2916)
    #dbg_value(i32 0, !2912, !DIExpression(), !2916)
  %non_zero_count.i = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !2918
  %arrayidx2.i1840 = getelementptr inbounds i8, ptr %h, i64 25083, !dbg !2919
  %469 = load i8, ptr %arrayidx2.i1840, align 1, !dbg !2919
  %conv.i1841 = zext i8 %469 to i32, !dbg !2919
    #dbg_value(i32 %conv.i1841, !2913, !DIExpression(), !2916)
  %arrayidx10.i = getelementptr inbounds i8, ptr %h, i64 25076, !dbg !2920
  %470 = load i8, ptr %arrayidx10.i, align 1, !dbg !2920
  %conv11.i = zext i8 %470 to i32, !dbg !2920
    #dbg_value(i32 %conv11.i, !2914, !DIExpression(), !2916)
  %add.i1842 = add nuw nsw i32 %conv11.i, %conv.i1841, !dbg !2921
    #dbg_value(i32 %add.i1842, !2915, !DIExpression(), !2916)
  %cmp.i1843 = icmp ult i32 %add.i1842, 128, !dbg !2922
  %add13.i = add nuw nsw i32 %add.i1842, 1, !dbg !2924
  %shr.i1844 = lshr i32 %add13.i, 1, !dbg !2924
  %i_ret.0.i = select i1 %cmp.i1843, i32 %shr.i1844, i32 %add.i1842, !dbg !2924
    #dbg_value(i32 %i_ret.0.i, !2915, !DIExpression(), !2916)
  %and.i1845 = and i32 %i_ret.0.i, 127, !dbg !2925
  %idxprom747 = zext nneg i32 %and.i1845 to i64, !dbg !2926
  %arrayidx748 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom747, !dbg !2926
  %471 = load i8, ptr %arrayidx748, align 1, !dbg !2926
    #dbg_value(i8 %471, !1569, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2927)
  %arrayidx753 = getelementptr inbounds i8, ptr %h, i64 25116, !dbg !2926
    #dbg_value(ptr %arrayidx753, !1573, !DIExpression(), !2927)
  %472 = load i8, ptr %arrayidx753, align 1, !dbg !2928
  %tobool754.not = icmp eq i8 %472, 0, !dbg !2928
  br i1 %tobool754.not, label %if.then755, label %if.else764, !dbg !2926

if.then755:                                       ; preds = %cavlc_qp_delta.exit
  %idxprom758 = zext i8 %471 to i64, !dbg !2928
  %arrayidx759 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom758, !dbg !2928
  %i_size = getelementptr inbounds i8, ptr %arrayidx759, i64 1, !dbg !2928
  %473 = load i8, ptr %i_size, align 1, !dbg !2928
  %conv760 = zext i8 %473 to i32, !dbg !2928
  %474 = load i8, ptr %arrayidx759, align 1, !dbg !2928
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2930)
    #dbg_value(i32 %conv760, !1682, !DIExpression(), !2930)
    #dbg_value(i8 %474, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2930)
  %475 = load i64, ptr %cur_bits.i.i.i1821, align 8, !dbg !2932
  %sh_prom.i = zext nneg i8 %473 to i64, !dbg !2933
  %shl.i1847 = shl i64 %475, %sh_prom.i, !dbg !2933
  %conv.i1848 = zext i8 %474 to i64, !dbg !2934
  %or.i1849 = or i64 %shl.i1847, %conv.i1848, !dbg !2935
  store i64 %or.i1849, ptr %cur_bits.i.i.i1821, align 8, !dbg !2936
  %sub.i1851 = sub nsw i32 %468, %conv760, !dbg !2937
  store i32 %sub.i1851, ptr %i_left.i, align 8, !dbg !2937
  %cmp.i1852 = icmp slt i32 %sub.i1851, 33, !dbg !2938
  br i1 %cmp.i1852, label %if.then.i1854, label %if.end768, !dbg !2939

if.then.i1854:                                    ; preds = %if.then755
  %sh_prom6.i1855 = zext nneg i32 %sub.i1851 to i64, !dbg !2940
  %shl7.i1856 = shl i64 %or.i1849, %sh_prom6.i1855, !dbg !2940
    #dbg_value(i64 %shl7.i1856, !1698, !DIExpression(), !2941)
    #dbg_value(i64 %shl7.i1856, !1705, !DIExpression(), !2943)
  %add.i.i.i1857 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1856), !dbg !2945
  %conv8.i1858 = trunc i64 %add.i.i.i1857 to i32, !dbg !2946
  store i32 %conv8.i1858, ptr %467, align 4, !dbg !2947
  %476 = load i32, ptr %i_left.i, align 8, !dbg !2948
  %add.i1860 = add nsw i32 %476, 32, !dbg !2948
  store i32 %add.i1860, ptr %i_left.i, align 8, !dbg !2948
  %477 = load ptr, ptr %p.i, align 8, !dbg !2949
  %add.ptr.i1861 = getelementptr inbounds i8, ptr %477, i64 4, !dbg !2949
  store ptr %add.ptr.i1861, ptr %p.i, align 8, !dbg !2949
  br label %if.end768, !dbg !2950

if.else764:                                       ; preds = %cavlc_qp_delta.exit
  %conv749 = zext i8 %471 to i32, !dbg !2926
    #dbg_value(i32 %conv749, !1569, !DIExpression(), !2927)
  %dct = getelementptr inbounds i8, ptr %h, i64 15040, !dbg !2928
  %call766 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull %dct, i32 noundef %conv749), !dbg !2928
  %conv767 = trunc i32 %call766 to i8, !dbg !2928
  store i8 %conv767, ptr %arrayidx753, align 1, !dbg !2928
  br label %if.end768

if.end768:                                        ; preds = %if.then.i1854, %if.then755, %if.else764
  %i_cbp_luma770 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2951
  %478 = load i32, ptr %i_cbp_luma770, align 8, !dbg !2951
  %tobool771.not = icmp eq i32 %478, 0, !dbg !2952
  br i1 %tobool771.not, label %if.end826, label %for.cond774.preheader, !dbg !2953

for.cond774.preheader:                            ; preds = %if.end768
    #dbg_value(i32 0, !1574, !DIExpression(), !2954)
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body778, !dbg !2955

for.body778:                                      ; preds = %for.cond774.preheader, %if.end812
  %indvars.iv2098 = phi i64 [ 0, %for.cond774.preheader ], [ %indvars.iv.next2099, %if.end812 ]
    #dbg_value(i64 %indvars.iv2098, !1574, !DIExpression(), !2954)
    #dbg_value(ptr %h, !2909, !DIExpression(), !2956)
    #dbg_value(i64 %indvars.iv2098, !2912, !DIExpression(), !2956)
  %arrayidx.i1865 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2098, !dbg !2958
  %479 = load i32, ptr %arrayidx.i1865, align 4, !dbg !2958
  %sub.i1866 = add nsw i32 %479, -1, !dbg !2959
  %idxprom1.i1867 = sext i32 %sub.i1866 to i64, !dbg !2960
  %arrayidx2.i1868 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom1.i1867, !dbg !2960
  %480 = load i8, ptr %arrayidx2.i1868, align 1, !dbg !2960
  %conv.i1869 = zext i8 %480 to i32, !dbg !2960
    #dbg_value(i32 %conv.i1869, !2913, !DIExpression(), !2956)
  %sub8.i = add nsw i32 %479, -8, !dbg !2961
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !2962
  %arrayidx10.i1870 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom9.i, !dbg !2962
  %481 = load i8, ptr %arrayidx10.i1870, align 1, !dbg !2962
  %conv11.i1871 = zext i8 %481 to i32, !dbg !2962
    #dbg_value(i32 %conv11.i1871, !2914, !DIExpression(), !2956)
  %add.i1872 = add nuw nsw i32 %conv11.i1871, %conv.i1869, !dbg !2963
    #dbg_value(i32 %add.i1872, !2915, !DIExpression(), !2956)
  %cmp.i1873 = icmp ult i32 %add.i1872, 128, !dbg !2964
  %add13.i1874 = add nuw nsw i32 %add.i1872, 1, !dbg !2965
  %shr.i1875 = lshr i32 %add13.i1874, 1, !dbg !2965
  %i_ret.0.i1876 = select i1 %cmp.i1873, i32 %shr.i1875, i32 %add.i1872, !dbg !2965
    #dbg_value(i32 %i_ret.0.i1876, !2915, !DIExpression(), !2956)
  %and.i1877 = and i32 %i_ret.0.i1876, 127, !dbg !2966
  %idxprom781 = zext nneg i32 %and.i1877 to i64, !dbg !2967
  %arrayidx782 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom781, !dbg !2967
  %482 = load i8, ptr %arrayidx782, align 1, !dbg !2967
    #dbg_value(i8 %482, !1577, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2968)
  %idxprom790 = sext i32 %479 to i64, !dbg !2967
  %arrayidx791 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom790, !dbg !2967
    #dbg_value(ptr %arrayidx791, !1580, !DIExpression(), !2968)
  %483 = load i8, ptr %arrayidx791, align 1, !dbg !2969
  %tobool792.not = icmp eq i8 %483, 0, !dbg !2969
  br i1 %tobool792.not, label %if.then793, label %if.else804, !dbg !2967

if.then793:                                       ; preds = %for.body778
  %idxprom796 = zext i8 %482 to i64, !dbg !2969
  %arrayidx797 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom796, !dbg !2969
  %i_size798 = getelementptr inbounds i8, ptr %arrayidx797, i64 1, !dbg !2969
  %484 = load i8, ptr %i_size798, align 1, !dbg !2969
  %conv799 = zext i8 %484 to i32, !dbg !2969
  %485 = load i8, ptr %arrayidx797, align 1, !dbg !2969
    #dbg_value(ptr %bs, !1677, !DIExpression(), !2971)
    #dbg_value(i32 %conv799, !1682, !DIExpression(), !2971)
    #dbg_value(i8 %485, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2971)
  %486 = load i64, ptr %cur_bits.i.i.i1821, align 8, !dbg !2973
  %sh_prom.i1879 = zext nneg i8 %484 to i64, !dbg !2974
  %shl.i1880 = shl i64 %486, %sh_prom.i1879, !dbg !2974
  %conv.i1881 = zext i8 %485 to i64, !dbg !2975
  %or.i1882 = or i64 %shl.i1880, %conv.i1881, !dbg !2976
  store i64 %or.i1882, ptr %cur_bits.i.i.i1821, align 8, !dbg !2977
  %487 = load i32, ptr %i_left.i, align 8, !dbg !2978
  %sub.i1884 = sub nsw i32 %487, %conv799, !dbg !2978
  store i32 %sub.i1884, ptr %i_left.i, align 8, !dbg !2978
  %cmp.i1885 = icmp slt i32 %sub.i1884, 33, !dbg !2979
  br i1 %cmp.i1885, label %if.then.i1887, label %if.end812, !dbg !2980

if.then.i1887:                                    ; preds = %if.then793
  %sh_prom6.i1888 = zext nneg i32 %sub.i1884 to i64, !dbg !2981
  %shl7.i1889 = shl i64 %or.i1882, %sh_prom6.i1888, !dbg !2981
    #dbg_value(i64 %shl7.i1889, !1698, !DIExpression(), !2982)
    #dbg_value(i64 %shl7.i1889, !1705, !DIExpression(), !2984)
  %add.i.i.i1890 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1889), !dbg !2986
  %conv8.i1891 = trunc i64 %add.i.i.i1890 to i32, !dbg !2987
  %488 = load ptr, ptr %p.i, align 8, !dbg !2988
  store i32 %conv8.i1891, ptr %488, align 4, !dbg !2989
  %489 = load i32, ptr %i_left.i, align 8, !dbg !2990
  %add.i1893 = add nsw i32 %489, 32, !dbg !2990
  store i32 %add.i1893, ptr %i_left.i, align 8, !dbg !2990
  %490 = load ptr, ptr %p.i, align 8, !dbg !2991
  %add.ptr.i1894 = getelementptr inbounds i8, ptr %490, i64 4, !dbg !2991
  store ptr %add.ptr.i1894, ptr %p.i, align 8, !dbg !2991
  br label %if.end812, !dbg !2992

if.else804:                                       ; preds = %for.body778
  %conv783 = zext i8 %482 to i32, !dbg !2967
    #dbg_value(i32 %conv783, !1577, !DIExpression(), !2968)
  %add.ptr809 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv2098, i64 1, !dbg !2969
  %call810 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull %add.ptr809, i32 noundef %conv783), !dbg !2969
  %conv811 = trunc i32 %call810 to i8, !dbg !2969
  store i8 %conv811, ptr %arrayidx791, align 1, !dbg !2969
  br label %if.end812

if.end812:                                        ; preds = %if.then.i1887, %if.then793, %if.else804
  %indvars.iv.next2099 = add nuw nsw i64 %indvars.iv2098, 1, !dbg !2993
    #dbg_value(i64 %indvars.iv.next2099, !1574, !DIExpression(), !2954)
  %exitcond.not = icmp eq i64 %indvars.iv.next2099, 16, !dbg !2994
  br i1 %exitcond.not, label %if.end826, label %for.body778, !dbg !2955, !llvm.loop !2995

if.else817:                                       ; preds = %if.end742
  %i_cbp_luma819 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2997
  %491 = load i32, ptr %i_cbp_luma819, align 8, !dbg !2997
  %i_cbp_chroma821 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2999
  %492 = load i32, ptr %i_cbp_chroma821, align 4, !dbg !2999
  %or822 = or i32 %492, %491, !dbg !3000
  %tobool823.not = icmp eq i32 %or822, 0, !dbg !3000
  br i1 %tobool823.not, label %if.end826, label %if.then824, !dbg !3001

if.then824:                                       ; preds = %if.else817
    #dbg_value(ptr %h, !2841, !DIExpression(), !3002)
    #dbg_value(ptr %h, !2844, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3002)
  %i_qp.i1896 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3005
  %493 = load i32, ptr %i_qp.i1896, align 16, !dbg !3005
  %i_last_qp.i1897 = getelementptr inbounds i8, ptr %h, i64 25800, !dbg !3006
  %494 = load i32, ptr %i_last_qp.i1897, align 8, !dbg !3006
    #dbg_value(!DIArgList(i32 %493, i32 %494), !2845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3002)
  %tobool12.not.i1902 = icmp eq i32 %493, %494, !dbg !3007
  br i1 %tobool12.not.i1902, label %if.end21.thread.i1915, label %if.then13.i1903, !dbg !3008

if.then13.i1903:                                  ; preds = %if.then824
  %sub.i1898 = sub nsw i32 %493, %494, !dbg !3009
    #dbg_value(i32 %sub.i1898, !2845, !DIExpression(), !3002)
  %cmp14.i1904 = icmp slt i32 %sub.i1898, -26, !dbg !3010
  %add.i1905 = add nsw i32 %sub.i1898, 52, !dbg !3011
  %cmp16.i1906 = icmp sgt i32 %sub.i1898, 25, !dbg !3011
  %sub18.i1907 = add nsw i32 %sub.i1898, -52, !dbg !3011
  %spec.select.i1908 = select i1 %cmp16.i1906, i32 %sub18.i1907, i32 %sub.i1898, !dbg !3011
  %i_dqp.1.i1909 = select i1 %cmp14.i1904, i32 %add.i1905, i32 %spec.select.i1908, !dbg !3011
  %i_dqp.1.fr.i1910 = freeze i32 %i_dqp.1.i1909, !dbg !3012
    #dbg_value(ptr %h, !2844, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3002)
    #dbg_value(i32 %i_dqp.1.i1909, !2845, !DIExpression(), !3002)
    #dbg_value(ptr %h, !2874, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3014)
    #dbg_value(i32 %i_dqp.1.i1909, !2875, !DIExpression(), !3014)
    #dbg_value(i32 0, !2876, !DIExpression(), !3014)
  %mul.i.i1911 = shl nsw i32 %i_dqp.1.fr.i1910, 1, !dbg !3015
  %sub.i.i1912 = sub nsw i32 1, %mul.i.i1911, !dbg !3016
    #dbg_value(i32 %sub.i.i1912, !2877, !DIExpression(), !3014)
  %cmp.i.i1913 = icmp sgt i32 %i_dqp.1.fr.i1910, 0, !dbg !3012
  %spec.select44.i1914 = select i1 %cmp.i.i1913, i32 %mul.i.i1911, i32 %sub.i.i1912, !dbg !3017
  br label %if.end21.thread.i1915, !dbg !3017

if.end21.thread.i1915:                            ; preds = %if.then13.i1903, %if.then824
  %495 = phi i32 [ %spec.select44.i1914, %if.then13.i1903 ], [ 1, %if.then824 ], !dbg !3017
    #dbg_value(i32 %495, !2877, !DIExpression(), !3014)
    #dbg_value(i32 %495, !2875, !DIExpression(), !3014)
  %cmp2.i.i1916 = icmp sgt i32 %495, 255, !dbg !3018
  %shr.i.i1917 = lshr i32 %495, 8, !dbg !3019
  %size.0.i.i1918 = select i1 %cmp2.i.i1916, i32 16, i32 0, !dbg !3019
  %tmp.1.i.i1919 = select i1 %cmp2.i.i1916, i32 %shr.i.i1917, i32 %495, !dbg !3019
    #dbg_value(i32 %tmp.1.i.i1919, !2877, !DIExpression(), !3014)
    #dbg_value(i32 %size.0.i.i1918, !2876, !DIExpression(), !3014)
  %idxprom.i.i1920 = sext i32 %tmp.1.i.i1919 to i64, !dbg !3020
  %arrayidx.i.i1921 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1920, !dbg !3020
  %496 = load i8, ptr %arrayidx.i.i1921, align 1, !dbg !3020
  %conv.i.i1922 = zext i8 %496 to i32, !dbg !3020
  %add.i.i1923 = add nuw nsw i32 %size.0.i.i1918, %conv.i.i1922, !dbg !3021
    #dbg_value(i32 %add.i.i1923, !2876, !DIExpression(), !3014)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3022)
    #dbg_value(i32 %add.i.i1923, !1682, !DIExpression(), !3022)
    #dbg_value(i32 %495, !1683, !DIExpression(), !3022)
  %cur_bits.i.i.i1924 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3024
  %497 = load i64, ptr %cur_bits.i.i.i1924, align 8, !dbg !3024
  %sh_prom.i.i.i1925 = zext nneg i32 %add.i.i1923 to i64, !dbg !3025
  %shl.i.i.i1926 = shl i64 %497, %sh_prom.i.i.i1925, !dbg !3025
  %conv.i.i.i1927 = zext i32 %495 to i64, !dbg !3026
  %or.i.i.i1928 = or i64 %shl.i.i.i1926, %conv.i.i.i1927, !dbg !3027
  store i64 %or.i.i.i1928, ptr %cur_bits.i.i.i1924, align 8, !dbg !3028
  %sub.i.i.i1930 = sub nsw i32 %455, %add.i.i1923, !dbg !3029
  store i32 %sub.i.i.i1930, ptr %i_left.i, align 8, !dbg !3029
  %cmp.i.i.i1931 = icmp slt i32 %sub.i.i.i1930, 33, !dbg !3030
  br i1 %cmp.i.i.i1931, label %if.then.i.i.i1932, label %cavlc_qp_delta.exit1949, !dbg !3031

if.then.i.i.i1932:                                ; preds = %if.end21.thread.i1915
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3022)
  %sh_prom6.i.i.i1933 = zext nneg i32 %sub.i.i.i1930 to i64, !dbg !3032
  %shl7.i.i.i1934 = shl i64 %or.i.i.i1928, %sh_prom6.i.i.i1933, !dbg !3032
    #dbg_value(i64 %shl7.i.i.i1934, !1698, !DIExpression(), !3033)
    #dbg_value(i64 %shl7.i.i.i1934, !1705, !DIExpression(), !3035)
  %add.i.i.i.i.i1935 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1934), !dbg !3037
  %conv8.i.i.i1936 = trunc i64 %add.i.i.i.i.i1935 to i32, !dbg !3038
  store i32 %conv8.i.i.i1936, ptr %454, align 4, !dbg !3039
  %498 = load i32, ptr %i_left.i, align 8, !dbg !3040
  %add.i.i.i1938 = add nsw i32 %498, 32, !dbg !3040
  store i32 %add.i.i.i1938, ptr %i_left.i, align 8, !dbg !3040
  %499 = load ptr, ptr %p.i, align 8, !dbg !3041
  %add.ptr.i.i.i1939 = getelementptr inbounds i8, ptr %499, i64 4, !dbg !3041
  store ptr %add.ptr.i.i.i1939, ptr %p.i, align 8, !dbg !3041
  br label %cavlc_qp_delta.exit1949, !dbg !3042

cavlc_qp_delta.exit1949:                          ; preds = %if.end21.thread.i1915, %if.then.i.i.i1932
    #dbg_value(ptr %h, !3043, !DIExpression(), !3064)
    #dbg_value(i32 0, !3048, !DIExpression(), !3064)
    #dbg_value(i32 3, !3049, !DIExpression(), !3064)
  %b_transform_8x8.i = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3066
  %500 = load i32, ptr %b_transform_8x8.i, align 4, !dbg !3066
  %tobool.not.i1950 = icmp eq i32 %500, 0, !dbg !3067
  br i1 %tobool.not.i1950, label %if.end14.i, label %for.cond.preheader.i, !dbg !3068

for.cond.preheader.i:                             ; preds = %cavlc_qp_delta.exit1949
    #dbg_value(i32 0, !3050, !DIExpression(), !3069)
  %interleave_8x8_cavlc.i = getelementptr inbounds i8, ptr %h, i64 33072
    #dbg_value(i64 0, !3050, !DIExpression(), !3069)
  %501 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3070
  %and.i1952 = and i32 %501, 1, !dbg !3073
  %tobool2.not.i = icmp eq i32 %and.i1952, 0, !dbg !3073
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then3.i, !dbg !3074

if.then3.i:                                       ; preds = %for.cond.preheader.i
  %luma8x8.i = getelementptr inbounds i8, ptr %h, i64 15088
  %luma4x4.i = getelementptr inbounds i8, ptr %h, i64 15600
  %502 = load ptr, ptr %interleave_8x8_cavlc.i, align 8, !dbg !3075
  %arrayidx13.i = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3076
  tail call void %502(ptr noundef nonnull %luma4x4.i, ptr noundef nonnull %luma8x8.i, ptr noundef nonnull %arrayidx13.i) #7, !dbg !3077
  %.pre.i1953 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3070
  br label %for.inc.i, !dbg !3077

for.inc.i:                                        ; preds = %if.then3.i, %for.cond.preheader.i
  %503 = phi i32 [ %501, %for.cond.preheader.i ], [ %.pre.i1953, %if.then3.i ], !dbg !3070
    #dbg_value(i64 1, !3050, !DIExpression(), !3069)
  %and.1.i = and i32 %503, 2, !dbg !3073
  %tobool2.not.1.i = icmp eq i32 %and.1.i, 0, !dbg !3073
  br i1 %tobool2.not.1.i, label %for.inc.1.i, label %if.then3.1.i, !dbg !3074

if.then3.1.i:                                     ; preds = %for.inc.i
  %504 = load ptr, ptr %interleave_8x8_cavlc.i, align 8, !dbg !3075
  %arrayidx.1.i = getelementptr inbounds i8, ptr %h, i64 15728, !dbg !3078
  %arrayidx6.1.i = getelementptr inbounds i8, ptr %h, i64 15216, !dbg !3079
  %arrayidx13.1.i = getelementptr inbounds i8, ptr %h, i64 25086, !dbg !3076
  tail call void %504(ptr noundef nonnull %arrayidx.1.i, ptr noundef nonnull %arrayidx6.1.i, ptr noundef nonnull %arrayidx13.1.i) #7, !dbg !3077
  %.pre110.i = load i32, ptr %i_cbp_luma819, align 8, !dbg !3070
  br label %for.inc.1.i, !dbg !3077

for.inc.1.i:                                      ; preds = %if.then3.1.i, %for.inc.i
  %505 = phi i32 [ %.pre110.i, %if.then3.1.i ], [ %503, %for.inc.i ], !dbg !3070
    #dbg_value(i64 2, !3050, !DIExpression(), !3069)
  %and.2.i = and i32 %505, 4, !dbg !3073
  %tobool2.not.2.i = icmp eq i32 %and.2.i, 0, !dbg !3073
  br i1 %tobool2.not.2.i, label %for.inc.2.i, label %if.then3.2.i, !dbg !3074

if.then3.2.i:                                     ; preds = %for.inc.1.i
  %506 = load ptr, ptr %interleave_8x8_cavlc.i, align 8, !dbg !3075
  %arrayidx.2.i = getelementptr inbounds i8, ptr %h, i64 15856, !dbg !3078
  %arrayidx6.2.i = getelementptr inbounds i8, ptr %h, i64 15344, !dbg !3079
  %arrayidx13.2.i = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3076
  tail call void %506(ptr noundef nonnull %arrayidx.2.i, ptr noundef nonnull %arrayidx6.2.i, ptr noundef nonnull %arrayidx13.2.i) #7, !dbg !3077
  %.pre111.i = load i32, ptr %i_cbp_luma819, align 8, !dbg !3070
  br label %for.inc.2.i, !dbg !3077

for.inc.2.i:                                      ; preds = %if.then3.2.i, %for.inc.1.i
  %507 = phi i32 [ %.pre111.i, %if.then3.2.i ], [ %505, %for.inc.1.i ], !dbg !3070
    #dbg_value(i64 3, !3050, !DIExpression(), !3069)
  %and.3.i = and i32 %507, 8, !dbg !3073
  %tobool2.not.3.i = icmp eq i32 %and.3.i, 0, !dbg !3073
  br i1 %tobool2.not.3.i, label %if.end14.i, label %if.then3.3.i, !dbg !3074

if.then3.3.i:                                     ; preds = %for.inc.2.i
  %508 = load ptr, ptr %interleave_8x8_cavlc.i, align 8, !dbg !3075
  %arrayidx.3.i = getelementptr inbounds i8, ptr %h, i64 15984, !dbg !3078
  %arrayidx6.3.i = getelementptr inbounds i8, ptr %h, i64 15472, !dbg !3079
  %arrayidx13.3.i = getelementptr inbounds i8, ptr %h, i64 25102, !dbg !3076
  tail call void %508(ptr noundef nonnull %arrayidx.3.i, ptr noundef nonnull %arrayidx6.3.i, ptr noundef nonnull %arrayidx13.3.i) #7, !dbg !3077
  br label %if.end14.i, !dbg !3077

if.end14.i:                                       ; preds = %if.then3.3.i, %for.inc.2.i, %cavlc_qp_delta.exit1949
    #dbg_value(i32 0, !3054, !DIExpression(), !3080)
  %non_zero_count.i.i = getelementptr inbounds i8, ptr %h, i64 25072
  %luma4x451.i = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body19.i, !dbg !3081

for.body19.i:                                     ; preds = %for.inc64.i, %if.end14.i
  %indvars.iv.i = phi i64 [ 0, %if.end14.i ], [ %indvars.iv.next.i, %for.inc64.i ]
    #dbg_value(i64 %indvars.iv.i, !3054, !DIExpression(), !3080)
  %509 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3082
  %510 = trunc nuw nsw i64 %indvars.iv.i to i32, !dbg !3083
  %shl22.i = shl nuw nsw i32 1, %510, !dbg !3083
  %and23.i = and i32 %shl22.i, %509, !dbg !3084
  %tobool24.not.i = icmp eq i32 %and23.i, 0, !dbg !3084
  br i1 %tobool24.not.i, label %for.inc64.i, label %for.cond26.preheader.i, !dbg !3085

for.cond26.preheader.i:                           ; preds = %for.body19.i
  %511 = shl nuw nsw i64 %indvars.iv.i, 2
    #dbg_value(i64 0, !3056, !DIExpression(), !3086)
    #dbg_value(ptr %h, !2909, !DIExpression(), !3087)
    #dbg_value(i64 %511, !2912, !DIExpression(), !3087)
  %arrayidx.i.i1957 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %511, !dbg !3089
  %512 = load i32, ptr %arrayidx.i.i1957, align 16, !dbg !3089
  %sub.i.i1958 = add nsw i32 %512, -1, !dbg !3090
  %idxprom1.i.i = sext i32 %sub.i.i1958 to i64, !dbg !3091
  %arrayidx2.i.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.i, !dbg !3091
  %513 = load i8, ptr %arrayidx2.i.i, align 1, !dbg !3091
  %conv.i.i1959 = zext i8 %513 to i32, !dbg !3091
    #dbg_value(i32 %conv.i.i1959, !2913, !DIExpression(), !3087)
  %sub8.i.i = add nsw i32 %512, -8, !dbg !3092
  %idxprom9.i.i = sext i32 %sub8.i.i to i64, !dbg !3093
  %arrayidx10.i.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.i, !dbg !3093
  %514 = load i8, ptr %arrayidx10.i.i, align 1, !dbg !3093
  %conv11.i.i = zext i8 %514 to i32, !dbg !3093
    #dbg_value(i32 %conv11.i.i, !2914, !DIExpression(), !3087)
  %add.i.i1960 = add nuw nsw i32 %conv11.i.i, %conv.i.i1959, !dbg !3094
    #dbg_value(i32 %add.i.i1960, !2915, !DIExpression(), !3087)
  %cmp.i.i1961 = icmp ult i32 %add.i.i1960, 128, !dbg !3095
  %add13.i.i = add nuw nsw i32 %add.i.i1960, 1, !dbg !3096
  %shr.i.i1962 = lshr i32 %add13.i.i, 1, !dbg !3096
  %i_ret.0.i.i = select i1 %cmp.i.i1961, i32 %shr.i.i1962, i32 %add.i.i1960, !dbg !3096
    #dbg_value(i32 %i_ret.0.i.i, !2915, !DIExpression(), !3087)
  %and.i.i1963 = and i32 %i_ret.0.i.i, 127, !dbg !3097
  %idxprom31.i = zext nneg i32 %and.i.i1963 to i64, !dbg !3098
  %arrayidx32.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.i, !dbg !3098
  %515 = load i8, ptr %arrayidx32.i, align 1, !dbg !3098
    #dbg_value(i8 %515, !3060, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3099)
  %idxprom40.i = sext i32 %512 to i64, !dbg !3098
  %arrayidx41.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.i, !dbg !3098
    #dbg_value(ptr %arrayidx41.i, !3063, !DIExpression(), !3099)
  %516 = load i8, ptr %arrayidx41.i, align 1, !dbg !3100
  %tobool42.not.i = icmp eq i8 %516, 0, !dbg !3100
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else.i1964, !dbg !3098

if.then43.i:                                      ; preds = %for.cond26.preheader.i
  %idxprom44.i = zext i8 %515 to i64, !dbg !3100
  %arrayidx45.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.i, !dbg !3100
  %i_size.i = getelementptr inbounds i8, ptr %arrayidx45.i, i64 1, !dbg !3100
  %517 = load i8, ptr %i_size.i, align 1, !dbg !3100
  %conv46.i = zext i8 %517 to i32, !dbg !3100
  %518 = load i8, ptr %arrayidx45.i, align 1, !dbg !3100
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
    #dbg_value(i32 %conv46.i, !1682, !DIExpression(), !3102)
    #dbg_value(i8 %518, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3102)
  %519 = load i64, ptr %cur_bits.i.i.i1924, align 8, !dbg !3104
  %sh_prom.i.i1966 = zext nneg i8 %517 to i64, !dbg !3105
  %shl.i.i1967 = shl i64 %519, %sh_prom.i.i1966, !dbg !3105
  %conv.i97.i = zext i8 %518 to i64, !dbg !3106
  %or.i.i1968 = or i64 %shl.i.i1967, %conv.i97.i, !dbg !3107
  store i64 %or.i.i1968, ptr %cur_bits.i.i.i1924, align 8, !dbg !3108
  %520 = load i32, ptr %i_left.i, align 8, !dbg !3109
  %sub.i98.i = sub nsw i32 %520, %conv46.i, !dbg !3109
  store i32 %sub.i98.i, ptr %i_left.i, align 8, !dbg !3109
  %cmp.i99.i = icmp slt i32 %sub.i98.i, 33, !dbg !3110
  br i1 %cmp.i99.i, label %if.then.i.i1969, label %if.end59.i, !dbg !3111

if.then.i.i1969:                                  ; preds = %if.then43.i
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
  %sh_prom6.i.i1970 = zext nneg i32 %sub.i98.i to i64, !dbg !3112
  %shl7.i.i1971 = shl i64 %or.i.i1968, %sh_prom6.i.i1970, !dbg !3112
    #dbg_value(i64 %shl7.i.i1971, !1698, !DIExpression(), !3113)
    #dbg_value(i64 %shl7.i.i1971, !1705, !DIExpression(), !3115)
  %add.i.i.i.i1972 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1971), !dbg !3117
  %conv8.i.i1973 = trunc i64 %add.i.i.i.i1972 to i32, !dbg !3118
  %521 = load ptr, ptr %p.i, align 8, !dbg !3119
  store i32 %conv8.i.i1973, ptr %521, align 4, !dbg !3120
  %522 = load i32, ptr %i_left.i, align 8, !dbg !3121
  %add.i100.i = add nsw i32 %522, 32, !dbg !3121
  store i32 %add.i100.i, ptr %i_left.i, align 8, !dbg !3121
  %523 = load ptr, ptr %p.i, align 8, !dbg !3122
  %add.ptr.i.i1974 = getelementptr inbounds i8, ptr %523, i64 4, !dbg !3122
  store ptr %add.ptr.i.i1974, ptr %p.i, align 8, !dbg !3122
  br label %if.end59.i, !dbg !3123

if.else.i1964:                                    ; preds = %for.cond26.preheader.i
  %conv.i1965 = zext i8 %515 to i32, !dbg !3098
    #dbg_value(i32 %conv.i1965, !3060, !DIExpression(), !3099)
  %arrayidx55.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %511, !dbg !3100
  %call57.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.i, i32 noundef %conv.i1965), !dbg !3100
  %conv58.i = trunc i32 %call57.i to i8, !dbg !3100
  store i8 %conv58.i, ptr %arrayidx41.i, align 1, !dbg !3100
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i1964, %if.then.i.i1969, %if.then43.i
    #dbg_value(i64 1, !3056, !DIExpression(), !3086)
  %524 = or disjoint i64 %511, 1, !dbg !3098
    #dbg_value(ptr %h, !2909, !DIExpression(), !3087)
    #dbg_value(i64 %524, !2912, !DIExpression(), !3087)
  %arrayidx.i.1.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %524, !dbg !3089
  %525 = load i32, ptr %arrayidx.i.1.i, align 4, !dbg !3089
  %sub.i.1.i = add nsw i32 %525, -1, !dbg !3090
  %idxprom1.i.1.i = sext i32 %sub.i.1.i to i64, !dbg !3091
  %arrayidx2.i.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.1.i, !dbg !3091
  %526 = load i8, ptr %arrayidx2.i.1.i, align 1, !dbg !3091
  %conv.i.1.i = zext i8 %526 to i32, !dbg !3091
    #dbg_value(i32 %conv.i.1.i, !2913, !DIExpression(), !3087)
  %sub8.i.1.i = add nsw i32 %525, -8, !dbg !3092
  %idxprom9.i.1.i = sext i32 %sub8.i.1.i to i64, !dbg !3093
  %arrayidx10.i.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.1.i, !dbg !3093
  %527 = load i8, ptr %arrayidx10.i.1.i, align 1, !dbg !3093
  %conv11.i.1.i = zext i8 %527 to i32, !dbg !3093
    #dbg_value(i32 %conv11.i.1.i, !2914, !DIExpression(), !3087)
  %add.i.1.i = add nuw nsw i32 %conv11.i.1.i, %conv.i.1.i, !dbg !3094
    #dbg_value(i32 %add.i.1.i, !2915, !DIExpression(), !3087)
  %cmp.i.1.i = icmp ult i32 %add.i.1.i, 128, !dbg !3095
  %add13.i.1.i = add nuw nsw i32 %add.i.1.i, 1, !dbg !3096
  %shr.i.1.i = lshr i32 %add13.i.1.i, 1, !dbg !3096
  %i_ret.0.i.1.i = select i1 %cmp.i.1.i, i32 %shr.i.1.i, i32 %add.i.1.i, !dbg !3096
    #dbg_value(i32 %i_ret.0.i.1.i, !2915, !DIExpression(), !3087)
  %and.i.1.i = and i32 %i_ret.0.i.1.i, 127, !dbg !3097
  %idxprom31.1.i = zext nneg i32 %and.i.1.i to i64, !dbg !3098
  %arrayidx32.1.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.1.i, !dbg !3098
  %528 = load i8, ptr %arrayidx32.1.i, align 1, !dbg !3098
    #dbg_value(i8 %528, !3060, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3099)
  %idxprom40.1.i = sext i32 %525 to i64, !dbg !3098
  %arrayidx41.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.1.i, !dbg !3098
    #dbg_value(ptr %arrayidx41.1.i, !3063, !DIExpression(), !3099)
  %529 = load i8, ptr %arrayidx41.1.i, align 1, !dbg !3100
  %tobool42.not.1.i = icmp eq i8 %529, 0, !dbg !3100
  br i1 %tobool42.not.1.i, label %if.then43.1.i, label %if.else.1.i, !dbg !3098

if.else.1.i:                                      ; preds = %if.end59.i
  %conv.1.i = zext i8 %528 to i32, !dbg !3098
    #dbg_value(i32 %conv.1.i, !3060, !DIExpression(), !3099)
  %arrayidx55.1.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %524, !dbg !3100
  %call57.1.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.1.i, i32 noundef %conv.1.i), !dbg !3100
  %conv58.1.i = trunc i32 %call57.1.i to i8, !dbg !3100
  store i8 %conv58.1.i, ptr %arrayidx41.1.i, align 1, !dbg !3100
  br label %if.end59.1.i

if.then43.1.i:                                    ; preds = %if.end59.i
  %idxprom44.1.i = zext i8 %528 to i64, !dbg !3100
  %arrayidx45.1.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.1.i, !dbg !3100
  %i_size.1.i = getelementptr inbounds i8, ptr %arrayidx45.1.i, i64 1, !dbg !3100
  %530 = load i8, ptr %i_size.1.i, align 1, !dbg !3100
  %conv46.1.i = zext i8 %530 to i32, !dbg !3100
  %531 = load i8, ptr %arrayidx45.1.i, align 1, !dbg !3100
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
    #dbg_value(i32 %conv46.1.i, !1682, !DIExpression(), !3102)
    #dbg_value(i8 %531, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3102)
  %532 = load i64, ptr %cur_bits.i.i.i1924, align 8, !dbg !3104
  %sh_prom.i.1.i = zext nneg i8 %530 to i64, !dbg !3105
  %shl.i.1.i = shl i64 %532, %sh_prom.i.1.i, !dbg !3105
  %conv.i97.1.i = zext i8 %531 to i64, !dbg !3106
  %or.i.1.i = or i64 %shl.i.1.i, %conv.i97.1.i, !dbg !3107
  store i64 %or.i.1.i, ptr %cur_bits.i.i.i1924, align 8, !dbg !3108
  %533 = load i32, ptr %i_left.i, align 8, !dbg !3109
  %sub.i98.1.i = sub nsw i32 %533, %conv46.1.i, !dbg !3109
  store i32 %sub.i98.1.i, ptr %i_left.i, align 8, !dbg !3109
  %cmp.i99.1.i = icmp slt i32 %sub.i98.1.i, 33, !dbg !3110
  br i1 %cmp.i99.1.i, label %if.then.i.1.i, label %if.end59.1.i, !dbg !3111

if.then.i.1.i:                                    ; preds = %if.then43.1.i
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
  %sh_prom6.i.1.i = zext nneg i32 %sub.i98.1.i to i64, !dbg !3112
  %shl7.i.1.i = shl i64 %or.i.1.i, %sh_prom6.i.1.i, !dbg !3112
    #dbg_value(i64 %shl7.i.1.i, !1698, !DIExpression(), !3113)
    #dbg_value(i64 %shl7.i.1.i, !1705, !DIExpression(), !3115)
  %add.i.i.i.1.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.1.i), !dbg !3117
  %conv8.i.1.i = trunc i64 %add.i.i.i.1.i to i32, !dbg !3118
  %534 = load ptr, ptr %p.i, align 8, !dbg !3119
  store i32 %conv8.i.1.i, ptr %534, align 4, !dbg !3120
  %535 = load i32, ptr %i_left.i, align 8, !dbg !3121
  %add.i100.1.i = add nsw i32 %535, 32, !dbg !3121
  store i32 %add.i100.1.i, ptr %i_left.i, align 8, !dbg !3121
  %536 = load ptr, ptr %p.i, align 8, !dbg !3122
  %add.ptr.i.1.i = getelementptr inbounds i8, ptr %536, i64 4, !dbg !3122
  store ptr %add.ptr.i.1.i, ptr %p.i, align 8, !dbg !3122
  br label %if.end59.1.i, !dbg !3123

if.end59.1.i:                                     ; preds = %if.then.i.1.i, %if.then43.1.i, %if.else.1.i
    #dbg_value(i64 2, !3056, !DIExpression(), !3086)
  %537 = or disjoint i64 %511, 2, !dbg !3098
    #dbg_value(ptr %h, !2909, !DIExpression(), !3087)
    #dbg_value(i64 %537, !2912, !DIExpression(), !3087)
  %arrayidx.i.2.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %537, !dbg !3089
  %538 = load i32, ptr %arrayidx.i.2.i, align 8, !dbg !3089
  %sub.i.2.i = add nsw i32 %538, -1, !dbg !3090
  %idxprom1.i.2.i = sext i32 %sub.i.2.i to i64, !dbg !3091
  %arrayidx2.i.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.2.i, !dbg !3091
  %539 = load i8, ptr %arrayidx2.i.2.i, align 1, !dbg !3091
  %conv.i.2.i = zext i8 %539 to i32, !dbg !3091
    #dbg_value(i32 %conv.i.2.i, !2913, !DIExpression(), !3087)
  %sub8.i.2.i = add nsw i32 %538, -8, !dbg !3092
  %idxprom9.i.2.i = sext i32 %sub8.i.2.i to i64, !dbg !3093
  %arrayidx10.i.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.2.i, !dbg !3093
  %540 = load i8, ptr %arrayidx10.i.2.i, align 1, !dbg !3093
  %conv11.i.2.i = zext i8 %540 to i32, !dbg !3093
    #dbg_value(i32 %conv11.i.2.i, !2914, !DIExpression(), !3087)
  %add.i.2.i = add nuw nsw i32 %conv11.i.2.i, %conv.i.2.i, !dbg !3094
    #dbg_value(i32 %add.i.2.i, !2915, !DIExpression(), !3087)
  %cmp.i.2.i = icmp ult i32 %add.i.2.i, 128, !dbg !3095
  %add13.i.2.i = add nuw nsw i32 %add.i.2.i, 1, !dbg !3096
  %shr.i.2.i = lshr i32 %add13.i.2.i, 1, !dbg !3096
  %i_ret.0.i.2.i = select i1 %cmp.i.2.i, i32 %shr.i.2.i, i32 %add.i.2.i, !dbg !3096
    #dbg_value(i32 %i_ret.0.i.2.i, !2915, !DIExpression(), !3087)
  %and.i.2.i = and i32 %i_ret.0.i.2.i, 127, !dbg !3097
  %idxprom31.2.i = zext nneg i32 %and.i.2.i to i64, !dbg !3098
  %arrayidx32.2.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.2.i, !dbg !3098
  %541 = load i8, ptr %arrayidx32.2.i, align 1, !dbg !3098
    #dbg_value(i8 %541, !3060, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3099)
  %idxprom40.2.i = sext i32 %538 to i64, !dbg !3098
  %arrayidx41.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.2.i, !dbg !3098
    #dbg_value(ptr %arrayidx41.2.i, !3063, !DIExpression(), !3099)
  %542 = load i8, ptr %arrayidx41.2.i, align 1, !dbg !3100
  %tobool42.not.2.i = icmp eq i8 %542, 0, !dbg !3100
  br i1 %tobool42.not.2.i, label %if.then43.2.i, label %if.else.2.i, !dbg !3098

if.else.2.i:                                      ; preds = %if.end59.1.i
  %conv.2.i = zext i8 %541 to i32, !dbg !3098
    #dbg_value(i32 %conv.2.i, !3060, !DIExpression(), !3099)
  %arrayidx55.2.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %537, !dbg !3100
  %call57.2.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.2.i, i32 noundef %conv.2.i), !dbg !3100
  %conv58.2.i = trunc i32 %call57.2.i to i8, !dbg !3100
  store i8 %conv58.2.i, ptr %arrayidx41.2.i, align 1, !dbg !3100
  br label %if.end59.2.i

if.then43.2.i:                                    ; preds = %if.end59.1.i
  %idxprom44.2.i = zext i8 %541 to i64, !dbg !3100
  %arrayidx45.2.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.2.i, !dbg !3100
  %i_size.2.i = getelementptr inbounds i8, ptr %arrayidx45.2.i, i64 1, !dbg !3100
  %543 = load i8, ptr %i_size.2.i, align 1, !dbg !3100
  %conv46.2.i = zext i8 %543 to i32, !dbg !3100
  %544 = load i8, ptr %arrayidx45.2.i, align 1, !dbg !3100
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
    #dbg_value(i32 %conv46.2.i, !1682, !DIExpression(), !3102)
    #dbg_value(i8 %544, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3102)
  %545 = load i64, ptr %cur_bits.i.i.i1924, align 8, !dbg !3104
  %sh_prom.i.2.i = zext nneg i8 %543 to i64, !dbg !3105
  %shl.i.2.i = shl i64 %545, %sh_prom.i.2.i, !dbg !3105
  %conv.i97.2.i = zext i8 %544 to i64, !dbg !3106
  %or.i.2.i = or i64 %shl.i.2.i, %conv.i97.2.i, !dbg !3107
  store i64 %or.i.2.i, ptr %cur_bits.i.i.i1924, align 8, !dbg !3108
  %546 = load i32, ptr %i_left.i, align 8, !dbg !3109
  %sub.i98.2.i = sub nsw i32 %546, %conv46.2.i, !dbg !3109
  store i32 %sub.i98.2.i, ptr %i_left.i, align 8, !dbg !3109
  %cmp.i99.2.i = icmp slt i32 %sub.i98.2.i, 33, !dbg !3110
  br i1 %cmp.i99.2.i, label %if.then.i.2.i, label %if.end59.2.i, !dbg !3111

if.then.i.2.i:                                    ; preds = %if.then43.2.i
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
  %sh_prom6.i.2.i = zext nneg i32 %sub.i98.2.i to i64, !dbg !3112
  %shl7.i.2.i = shl i64 %or.i.2.i, %sh_prom6.i.2.i, !dbg !3112
    #dbg_value(i64 %shl7.i.2.i, !1698, !DIExpression(), !3113)
    #dbg_value(i64 %shl7.i.2.i, !1705, !DIExpression(), !3115)
  %add.i.i.i.2.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.2.i), !dbg !3117
  %conv8.i.2.i = trunc i64 %add.i.i.i.2.i to i32, !dbg !3118
  %547 = load ptr, ptr %p.i, align 8, !dbg !3119
  store i32 %conv8.i.2.i, ptr %547, align 4, !dbg !3120
  %548 = load i32, ptr %i_left.i, align 8, !dbg !3121
  %add.i100.2.i = add nsw i32 %548, 32, !dbg !3121
  store i32 %add.i100.2.i, ptr %i_left.i, align 8, !dbg !3121
  %549 = load ptr, ptr %p.i, align 8, !dbg !3122
  %add.ptr.i.2.i = getelementptr inbounds i8, ptr %549, i64 4, !dbg !3122
  store ptr %add.ptr.i.2.i, ptr %p.i, align 8, !dbg !3122
  br label %if.end59.2.i, !dbg !3123

if.end59.2.i:                                     ; preds = %if.then.i.2.i, %if.then43.2.i, %if.else.2.i
    #dbg_value(i64 3, !3056, !DIExpression(), !3086)
  %550 = or disjoint i64 %511, 3, !dbg !3098
    #dbg_value(ptr %h, !2909, !DIExpression(), !3087)
    #dbg_value(i64 %550, !2912, !DIExpression(), !3087)
  %arrayidx.i.3.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %550, !dbg !3089
  %551 = load i32, ptr %arrayidx.i.3.i, align 4, !dbg !3089
  %sub.i.3.i = add nsw i32 %551, -1, !dbg !3090
  %idxprom1.i.3.i = sext i32 %sub.i.3.i to i64, !dbg !3091
  %arrayidx2.i.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.3.i, !dbg !3091
  %552 = load i8, ptr %arrayidx2.i.3.i, align 1, !dbg !3091
  %conv.i.3.i = zext i8 %552 to i32, !dbg !3091
    #dbg_value(i32 %conv.i.3.i, !2913, !DIExpression(), !3087)
  %sub8.i.3.i = add nsw i32 %551, -8, !dbg !3092
  %idxprom9.i.3.i = sext i32 %sub8.i.3.i to i64, !dbg !3093
  %arrayidx10.i.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.3.i, !dbg !3093
  %553 = load i8, ptr %arrayidx10.i.3.i, align 1, !dbg !3093
  %conv11.i.3.i = zext i8 %553 to i32, !dbg !3093
    #dbg_value(i32 %conv11.i.3.i, !2914, !DIExpression(), !3087)
  %add.i.3.i = add nuw nsw i32 %conv11.i.3.i, %conv.i.3.i, !dbg !3094
    #dbg_value(i32 %add.i.3.i, !2915, !DIExpression(), !3087)
  %cmp.i.3.i = icmp ult i32 %add.i.3.i, 128, !dbg !3095
  %add13.i.3.i = add nuw nsw i32 %add.i.3.i, 1, !dbg !3096
  %shr.i.3.i = lshr i32 %add13.i.3.i, 1, !dbg !3096
  %i_ret.0.i.3.i = select i1 %cmp.i.3.i, i32 %shr.i.3.i, i32 %add.i.3.i, !dbg !3096
    #dbg_value(i32 %i_ret.0.i.3.i, !2915, !DIExpression(), !3087)
  %and.i.3.i = and i32 %i_ret.0.i.3.i, 127, !dbg !3097
  %idxprom31.3.i = zext nneg i32 %and.i.3.i to i64, !dbg !3098
  %arrayidx32.3.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.3.i, !dbg !3098
  %554 = load i8, ptr %arrayidx32.3.i, align 1, !dbg !3098
    #dbg_value(i8 %554, !3060, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3099)
  %idxprom40.3.i = sext i32 %551 to i64, !dbg !3098
  %arrayidx41.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.3.i, !dbg !3098
    #dbg_value(ptr %arrayidx41.3.i, !3063, !DIExpression(), !3099)
  %555 = load i8, ptr %arrayidx41.3.i, align 1, !dbg !3100
  %tobool42.not.3.i = icmp eq i8 %555, 0, !dbg !3100
  br i1 %tobool42.not.3.i, label %if.then43.3.i, label %if.else.3.i, !dbg !3098

if.else.3.i:                                      ; preds = %if.end59.2.i
  %conv.3.i = zext i8 %554 to i32, !dbg !3098
    #dbg_value(i32 %conv.3.i, !3060, !DIExpression(), !3099)
  %arrayidx55.3.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %550, !dbg !3100
  %call57.3.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.3.i, i32 noundef %conv.3.i), !dbg !3100
  %conv58.3.i = trunc i32 %call57.3.i to i8, !dbg !3100
  store i8 %conv58.3.i, ptr %arrayidx41.3.i, align 1, !dbg !3100
  br label %for.inc64.i

if.then43.3.i:                                    ; preds = %if.end59.2.i
  %idxprom44.3.i = zext i8 %554 to i64, !dbg !3100
  %arrayidx45.3.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.3.i, !dbg !3100
  %i_size.3.i = getelementptr inbounds i8, ptr %arrayidx45.3.i, i64 1, !dbg !3100
  %556 = load i8, ptr %i_size.3.i, align 1, !dbg !3100
  %conv46.3.i = zext i8 %556 to i32, !dbg !3100
  %557 = load i8, ptr %arrayidx45.3.i, align 1, !dbg !3100
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
    #dbg_value(i32 %conv46.3.i, !1682, !DIExpression(), !3102)
    #dbg_value(i8 %557, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3102)
  %558 = load i64, ptr %cur_bits.i.i.i1924, align 8, !dbg !3104
  %sh_prom.i.3.i = zext nneg i8 %556 to i64, !dbg !3105
  %shl.i.3.i = shl i64 %558, %sh_prom.i.3.i, !dbg !3105
  %conv.i97.3.i = zext i8 %557 to i64, !dbg !3106
  %or.i.3.i = or i64 %shl.i.3.i, %conv.i97.3.i, !dbg !3107
  store i64 %or.i.3.i, ptr %cur_bits.i.i.i1924, align 8, !dbg !3108
  %559 = load i32, ptr %i_left.i, align 8, !dbg !3109
  %sub.i98.3.i = sub nsw i32 %559, %conv46.3.i, !dbg !3109
  store i32 %sub.i98.3.i, ptr %i_left.i, align 8, !dbg !3109
  %cmp.i99.3.i = icmp slt i32 %sub.i98.3.i, 33, !dbg !3110
  br i1 %cmp.i99.3.i, label %if.then.i.3.i, label %for.inc64.i, !dbg !3111

if.then.i.3.i:                                    ; preds = %if.then43.3.i
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3102)
  %sh_prom6.i.3.i = zext nneg i32 %sub.i98.3.i to i64, !dbg !3112
  %shl7.i.3.i = shl i64 %or.i.3.i, %sh_prom6.i.3.i, !dbg !3112
    #dbg_value(i64 %shl7.i.3.i, !1698, !DIExpression(), !3113)
    #dbg_value(i64 %shl7.i.3.i, !1705, !DIExpression(), !3115)
  %add.i.i.i.3.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.3.i), !dbg !3117
  %conv8.i.3.i = trunc i64 %add.i.i.i.3.i to i32, !dbg !3118
  %560 = load ptr, ptr %p.i, align 8, !dbg !3119
  store i32 %conv8.i.3.i, ptr %560, align 4, !dbg !3120
  %561 = load i32, ptr %i_left.i, align 8, !dbg !3121
  %add.i100.3.i = add nsw i32 %561, 32, !dbg !3121
  store i32 %add.i100.3.i, ptr %i_left.i, align 8, !dbg !3121
  %562 = load ptr, ptr %p.i, align 8, !dbg !3122
  %add.ptr.i.3.i = getelementptr inbounds i8, ptr %562, i64 4, !dbg !3122
  store ptr %add.ptr.i.3.i, ptr %p.i, align 8, !dbg !3122
  br label %for.inc64.i, !dbg !3123

for.inc64.i:                                      ; preds = %if.then.i.3.i, %if.then43.3.i, %if.else.3.i, %for.body19.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !3124
    #dbg_value(i64 %indvars.iv.next.i, !3054, !DIExpression(), !3080)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !3125
  br i1 %exitcond.not.i, label %if.end826, label %for.body19.i, !dbg !3081, !llvm.loop !3126

if.end826:                                        ; preds = %for.inc64.i, %if.end812, %if.else817, %if.end768
  %i_cbp_chroma828 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3128
  %563 = load i32, ptr %i_cbp_chroma828, align 4, !dbg !3128
  %tobool829.not = icmp eq i32 %563, 0, !dbg !3129
  br i1 %tobool829.not, label %if.end934, label %if.then830, !dbg !3130

if.then830:                                       ; preds = %if.end826
    #dbg_value(i32 4, !1581, !DIExpression(), !3131)
  %non_zero_count835 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3132
  %arrayidx837 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !3132
    #dbg_value(ptr %arrayidx837, !1585, !DIExpression(), !3131)
  %564 = load i8, ptr %arrayidx837, align 1, !dbg !3133
  %tobool838.not = icmp eq i8 %564, 0, !dbg !3133
  br i1 %tobool838.not, label %if.then839, label %if.else850, !dbg !3132

if.then839:                                       ; preds = %if.then830
  %565 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 9), align 1, !dbg !3133
  %conv845 = zext i8 %565 to i32, !dbg !3133
  %566 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 8), align 1, !dbg !3133
    #dbg_value(ptr %bs, !1677, !DIExpression(), !3135)
    #dbg_value(i32 %conv845, !1682, !DIExpression(), !3135)
    #dbg_value(i8 %566, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3135)
  %cur_bits.i1975 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3137
  %567 = load i64, ptr %cur_bits.i1975, align 8, !dbg !3137
  %sh_prom.i1976 = zext nneg i8 %565 to i64, !dbg !3138
  %shl.i1977 = shl i64 %567, %sh_prom.i1976, !dbg !3138
  %conv.i1978 = zext i8 %566 to i64, !dbg !3139
  %or.i1979 = or i64 %shl.i1977, %conv.i1978, !dbg !3140
  store i64 %or.i1979, ptr %cur_bits.i1975, align 8, !dbg !3141
  %568 = load i32, ptr %i_left.i, align 8, !dbg !3142
  %sub.i1981 = sub nsw i32 %568, %conv845, !dbg !3142
  store i32 %sub.i1981, ptr %i_left.i, align 8, !dbg !3142
  %cmp.i1982 = icmp slt i32 %sub.i1981, 33, !dbg !3143
  br i1 %cmp.i1982, label %if.then.i1984, label %if.end856, !dbg !3144

if.then.i1984:                                    ; preds = %if.then839
  %sh_prom6.i1985 = zext nneg i32 %sub.i1981 to i64, !dbg !3145
  %shl7.i1986 = shl i64 %or.i1979, %sh_prom6.i1985, !dbg !3145
    #dbg_value(i64 %shl7.i1986, !1698, !DIExpression(), !3146)
    #dbg_value(i64 %shl7.i1986, !1705, !DIExpression(), !3148)
  %add.i.i.i1987 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1986), !dbg !3150
  %conv8.i1988 = trunc i64 %add.i.i.i1987 to i32, !dbg !3151
  %569 = load ptr, ptr %p.i, align 8, !dbg !3152
  store i32 %conv8.i1988, ptr %569, align 4, !dbg !3153
  %570 = load i32, ptr %i_left.i, align 8, !dbg !3154
  %add.i1990 = add nsw i32 %570, 32, !dbg !3154
  store i32 %add.i1990, ptr %i_left.i, align 8, !dbg !3154
  %571 = load ptr, ptr %p.i, align 8, !dbg !3155
  %add.ptr.i1991 = getelementptr inbounds i8, ptr %571, i64 4, !dbg !3155
  store ptr %add.ptr.i1991, ptr %p.i, align 8, !dbg !3155
  br label %if.end856, !dbg !3156

if.else850:                                       ; preds = %if.then830
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072, !dbg !3133
  %call854 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %chroma_dc, i32 noundef 4), !dbg !3133
  %conv855 = trunc i32 %call854 to i8, !dbg !3133
  store i8 %conv855, ptr %arrayidx837, align 1, !dbg !3133
  br label %if.end856

if.end856:                                        ; preds = %if.then.i1984, %if.then839, %if.else850
    #dbg_value(i32 4, !1586, !DIExpression(), !3157)
  %arrayidx863 = getelementptr inbounds i8, ptr %h, i64 25119, !dbg !3158
    #dbg_value(ptr %arrayidx863, !1588, !DIExpression(), !3157)
  %572 = load i8, ptr %arrayidx863, align 1, !dbg !3159
  %tobool864.not = icmp eq i8 %572, 0, !dbg !3159
  br i1 %tobool864.not, label %if.then865, label %if.else876, !dbg !3158

if.then865:                                       ; preds = %if.end856
  %573 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 9), align 1, !dbg !3159
  %conv871 = zext i8 %573 to i32, !dbg !3159
  %574 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 8), align 1, !dbg !3159
    #dbg_value(ptr %bs, !1677, !DIExpression(), !3161)
    #dbg_value(i32 %conv871, !1682, !DIExpression(), !3161)
    #dbg_value(i8 %574, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3161)
  %cur_bits.i1993 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3163
  %575 = load i64, ptr %cur_bits.i1993, align 8, !dbg !3163
  %sh_prom.i1994 = zext nneg i8 %573 to i64, !dbg !3164
  %shl.i1995 = shl i64 %575, %sh_prom.i1994, !dbg !3164
  %conv.i1996 = zext i8 %574 to i64, !dbg !3165
  %or.i1997 = or i64 %shl.i1995, %conv.i1996, !dbg !3166
  store i64 %or.i1997, ptr %cur_bits.i1993, align 8, !dbg !3167
  %576 = load i32, ptr %i_left.i, align 8, !dbg !3168
  %sub.i1999 = sub nsw i32 %576, %conv871, !dbg !3168
  store i32 %sub.i1999, ptr %i_left.i, align 8, !dbg !3168
  %cmp.i2000 = icmp slt i32 %sub.i1999, 33, !dbg !3169
  br i1 %cmp.i2000, label %if.then.i2002, label %if.end883, !dbg !3170

if.then.i2002:                                    ; preds = %if.then865
  %sh_prom6.i2003 = zext nneg i32 %sub.i1999 to i64, !dbg !3171
  %shl7.i2004 = shl i64 %or.i1997, %sh_prom6.i2003, !dbg !3171
    #dbg_value(i64 %shl7.i2004, !1698, !DIExpression(), !3172)
    #dbg_value(i64 %shl7.i2004, !1705, !DIExpression(), !3174)
  %add.i.i.i2005 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i2004), !dbg !3176
  %conv8.i2006 = trunc i64 %add.i.i.i2005 to i32, !dbg !3177
  %577 = load ptr, ptr %p.i, align 8, !dbg !3178
  store i32 %conv8.i2006, ptr %577, align 4, !dbg !3179
  %578 = load i32, ptr %i_left.i, align 8, !dbg !3180
  %add.i2008 = add nsw i32 %578, 32, !dbg !3180
  store i32 %add.i2008, ptr %i_left.i, align 8, !dbg !3180
  %579 = load ptr, ptr %p.i, align 8, !dbg !3181
  %add.ptr.i2009 = getelementptr inbounds i8, ptr %579, i64 4, !dbg !3181
  store ptr %add.ptr.i2009, ptr %p.i, align 8, !dbg !3181
  br label %if.end883, !dbg !3182

if.else876:                                       ; preds = %if.end856
  %arrayidx879 = getelementptr inbounds i8, ptr %h, i64 15080, !dbg !3159
  %call881 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %arrayidx879, i32 noundef 4), !dbg !3159
  %conv882 = trunc i32 %call881 to i8, !dbg !3159
  store i8 %conv882, ptr %arrayidx863, align 1, !dbg !3159
  br label %if.end883

if.end883:                                        ; preds = %if.then.i2002, %if.then865, %if.else876
  %580 = load i32, ptr %i_cbp_chroma828, align 4, !dbg !3183
  %and886 = and i32 %580, 2, !dbg !3184
  %tobool887.not = icmp eq i32 %and886, 0, !dbg !3184
  br i1 %tobool887.not, label %if.end934, label %for.cond890.preheader, !dbg !3185

for.cond890.preheader:                            ; preds = %if.end883
    #dbg_value(i32 16, !1589, !DIExpression(), !3186)
  %luma4x4922 = getelementptr inbounds i8, ptr %h, i64 15600
  %cur_bits.i2028 = getelementptr inbounds i8, ptr %h, i64 1816
  br label %for.body894, !dbg !3187

for.body894:                                      ; preds = %for.cond890.preheader, %if.end929
  %indvars.iv2101 = phi i64 [ 16, %for.cond890.preheader ], [ %indvars.iv.next2102, %if.end929 ]
    #dbg_value(i64 %indvars.iv2101, !1589, !DIExpression(), !3186)
    #dbg_value(ptr %h, !2909, !DIExpression(), !3188)
    #dbg_value(i64 %indvars.iv2101, !2912, !DIExpression(), !3188)
  %arrayidx.i2013 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2101, !dbg !3190
  %581 = load i32, ptr %arrayidx.i2013, align 4, !dbg !3190
  %sub.i2014 = add nsw i32 %581, -1, !dbg !3191
  %idxprom1.i2015 = sext i32 %sub.i2014 to i64, !dbg !3192
  %arrayidx2.i2016 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom1.i2015, !dbg !3192
  %582 = load i8, ptr %arrayidx2.i2016, align 1, !dbg !3192
  %conv.i2017 = zext i8 %582 to i32, !dbg !3192
    #dbg_value(i32 %conv.i2017, !2913, !DIExpression(), !3188)
  %sub8.i2018 = add nsw i32 %581, -8, !dbg !3193
  %idxprom9.i2019 = sext i32 %sub8.i2018 to i64, !dbg !3194
  %arrayidx10.i2020 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom9.i2019, !dbg !3194
  %583 = load i8, ptr %arrayidx10.i2020, align 1, !dbg !3194
  %conv11.i2021 = zext i8 %583 to i32, !dbg !3194
    #dbg_value(i32 %conv11.i2021, !2914, !DIExpression(), !3188)
  %add.i2022 = add nuw nsw i32 %conv11.i2021, %conv.i2017, !dbg !3195
    #dbg_value(i32 %add.i2022, !2915, !DIExpression(), !3188)
  %cmp.i2023 = icmp ult i32 %add.i2022, 128, !dbg !3196
  %add13.i2024 = add nuw nsw i32 %add.i2022, 1, !dbg !3197
  %shr.i2025 = lshr i32 %add13.i2024, 1, !dbg !3197
  %i_ret.0.i2026 = select i1 %cmp.i2023, i32 %shr.i2025, i32 %add.i2022, !dbg !3197
    #dbg_value(i32 %i_ret.0.i2026, !2915, !DIExpression(), !3188)
  %and.i2027 = and i32 %i_ret.0.i2026, 127, !dbg !3198
  %idxprom897 = zext nneg i32 %and.i2027 to i64, !dbg !3199
  %arrayidx898 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom897, !dbg !3199
  %584 = load i8, ptr %arrayidx898, align 1, !dbg !3199
    #dbg_value(i8 %584, !1592, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3200)
  %idxprom906 = sext i32 %581 to i64, !dbg !3199
  %arrayidx907 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom906, !dbg !3199
    #dbg_value(ptr %arrayidx907, !1595, !DIExpression(), !3200)
  %585 = load i8, ptr %arrayidx907, align 1, !dbg !3201
  %tobool908.not = icmp eq i8 %585, 0, !dbg !3201
  br i1 %tobool908.not, label %if.then909, label %if.else920, !dbg !3199

if.then909:                                       ; preds = %for.body894
  %idxprom912 = zext i8 %584 to i64, !dbg !3201
  %arrayidx913 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom912, !dbg !3201
  %i_size914 = getelementptr inbounds i8, ptr %arrayidx913, i64 1, !dbg !3201
  %586 = load i8, ptr %i_size914, align 1, !dbg !3201
  %conv915 = zext i8 %586 to i32, !dbg !3201
  %587 = load i8, ptr %arrayidx913, align 1, !dbg !3201
    #dbg_value(ptr %bs, !1677, !DIExpression(), !3203)
    #dbg_value(i32 %conv915, !1682, !DIExpression(), !3203)
    #dbg_value(i8 %587, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3203)
  %588 = load i64, ptr %cur_bits.i2028, align 8, !dbg !3205
  %sh_prom.i2029 = zext nneg i8 %586 to i64, !dbg !3206
  %shl.i2030 = shl i64 %588, %sh_prom.i2029, !dbg !3206
  %conv.i2031 = zext i8 %587 to i64, !dbg !3207
  %or.i2032 = or i64 %shl.i2030, %conv.i2031, !dbg !3208
  store i64 %or.i2032, ptr %cur_bits.i2028, align 8, !dbg !3209
  %589 = load i32, ptr %i_left.i, align 8, !dbg !3210
  %sub.i2034 = sub nsw i32 %589, %conv915, !dbg !3210
  store i32 %sub.i2034, ptr %i_left.i, align 8, !dbg !3210
  %cmp.i2035 = icmp slt i32 %sub.i2034, 33, !dbg !3211
  br i1 %cmp.i2035, label %if.then.i2037, label %if.end929, !dbg !3212

if.then.i2037:                                    ; preds = %if.then909
  %sh_prom6.i2038 = zext nneg i32 %sub.i2034 to i64, !dbg !3213
  %shl7.i2039 = shl i64 %or.i2032, %sh_prom6.i2038, !dbg !3213
    #dbg_value(i64 %shl7.i2039, !1698, !DIExpression(), !3214)
    #dbg_value(i64 %shl7.i2039, !1705, !DIExpression(), !3216)
  %add.i.i.i2040 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i2039), !dbg !3218
  %conv8.i2041 = trunc i64 %add.i.i.i2040 to i32, !dbg !3219
  %590 = load ptr, ptr %p.i, align 8, !dbg !3220
  store i32 %conv8.i2041, ptr %590, align 4, !dbg !3221
  %591 = load i32, ptr %i_left.i, align 8, !dbg !3222
  %add.i2043 = add nsw i32 %591, 32, !dbg !3222
  store i32 %add.i2043, ptr %i_left.i, align 8, !dbg !3222
  %592 = load ptr, ptr %p.i, align 8, !dbg !3223
  %add.ptr.i2044 = getelementptr inbounds i8, ptr %592, i64 4, !dbg !3223
  store ptr %add.ptr.i2044, ptr %p.i, align 8, !dbg !3223
  br label %if.end929, !dbg !3224

if.else920:                                       ; preds = %for.body894
  %conv899 = zext i8 %584 to i32, !dbg !3199
    #dbg_value(i32 %conv899, !1592, !DIExpression(), !3200)
  %add.ptr926 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4922, i64 0, i64 %indvars.iv2101, i64 1, !dbg !3201
  %call927 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 4, ptr noundef nonnull %add.ptr926, i32 noundef %conv899), !dbg !3201
  %conv928 = trunc i32 %call927 to i8, !dbg !3201
  store i8 %conv928, ptr %arrayidx907, align 1, !dbg !3201
  br label %if.end929

if.end929:                                        ; preds = %if.then.i2037, %if.then909, %if.else920
  %indvars.iv.next2102 = add nuw nsw i64 %indvars.iv2101, 1, !dbg !3225
    #dbg_value(i64 %indvars.iv.next2102, !1589, !DIExpression(), !3186)
  %exitcond2104.not = icmp eq i64 %indvars.iv.next2102, 24, !dbg !3226
  br i1 %exitcond2104.not, label %if.end934, label %for.body894, !dbg !3187, !llvm.loop !3227

if.end934:                                        ; preds = %if.end929, %if.end883, %if.end826
    #dbg_value(ptr %bs, !1610, !DIExpression(), !3229)
  %593 = load ptr, ptr %p.i, align 8, !dbg !3231
  %594 = load ptr, ptr %bs, align 8, !dbg !3232
  %sub.ptr.lhs.cast.i2047 = ptrtoint ptr %593 to i64, !dbg !3233
  %sub.ptr.rhs.cast.i2048 = ptrtoint ptr %594 to i64, !dbg !3233
  %sub.ptr.sub.i2049 = sub i64 %sub.ptr.lhs.cast.i2047, %sub.ptr.rhs.cast.i2048, !dbg !3233
  %595 = load i32, ptr %i_left.i, align 8, !dbg !3234
  %sub.ptr.sub.tr.i2051 = trunc i64 %sub.ptr.sub.i2049 to i32, !dbg !3235
  %596 = shl i32 %sub.ptr.sub.tr.i2051, 3, !dbg !3235
  %i_tex_bits939 = getelementptr inbounds i8, ptr %h, i64 26716, !dbg !3236
  %597 = load i32, ptr %i_tex_bits939, align 4, !dbg !3237
  %598 = add i32 %595, %reass.sub.i1747, !dbg !3238
  %sub936 = sub i32 %597, %598, !dbg !3238
  %add940 = add i32 %sub936, %596, !dbg !3237
  store i32 %add940, ptr %i_tex_bits939, align 4, !dbg !3237
  br label %cleanup, !dbg !3239

cleanup:                                          ; preds = %if.end934, %bs_align_0.exit
  ret void, !dbg !3239
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue(ptr nocapture noundef %s, i32 noundef %val) unnamed_addr #2 !dbg !1668 {
entry:
    #dbg_value(ptr %s, !1667, !DIExpression(), !3240)
    #dbg_value(i32 %val, !1672, !DIExpression(), !3240)
  %add = add nsw i32 %val, 1, !dbg !3241
  %idxprom = sext i32 %add to i64, !dbg !3242
  %arrayidx = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom, !dbg !3242
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3242
  %conv = zext i8 %0 to i32, !dbg !3242
    #dbg_value(ptr %s, !1677, !DIExpression(), !3243)
    #dbg_value(i32 %conv, !1682, !DIExpression(), !3243)
    #dbg_value(i32 %add, !1683, !DIExpression(), !3243)
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24, !dbg !3245
  %1 = load i64, ptr %cur_bits.i, align 8, !dbg !3245
  %sh_prom.i = zext nneg i8 %0 to i64, !dbg !3246
  %shl.i = shl i64 %1, %sh_prom.i, !dbg !3246
  %conv.i = zext i32 %add to i64, !dbg !3247
  %or.i = or i64 %shl.i, %conv.i, !dbg !3248
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3249
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32, !dbg !3250
  %2 = load i32, ptr %i_left.i, align 8, !dbg !3251
  %sub.i = sub nsw i32 %2, %conv, !dbg !3251
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3251
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3252
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit, !dbg !3253

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext nneg i32 %sub.i to i64, !dbg !3254
  %shl7.i = shl i64 %or.i, %sh_prom6.i, !dbg !3254
    #dbg_value(i64 %shl7.i, !1698, !DIExpression(), !3255)
    #dbg_value(i64 %shl7.i, !1705, !DIExpression(), !3257)
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i), !dbg !3259
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !3260
  %p.i = getelementptr inbounds i8, ptr %s, i64 8, !dbg !3261
  %3 = load ptr, ptr %p.i, align 8, !dbg !3261
  store i32 %conv8.i, ptr %3, align 4, !dbg !3262
  %4 = load i32, ptr %i_left.i, align 8, !dbg !3263
  %add.i = add nsw i32 %4, 32, !dbg !3263
  store i32 %add.i, ptr %i_left.i, align 8, !dbg !3263
  %5 = load ptr, ptr %p.i, align 8, !dbg !3264
  %add.ptr.i = getelementptr inbounds i8, ptr %5, i64 4, !dbg !3264
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3264
  br label %bs_write.exit, !dbg !3265

bs_write.exit:                                    ; preds = %entry, %if.then.i
  ret void, !dbg !3266
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_te(ptr nocapture noundef %s, i32 noundef %x, i32 noundef %val) unnamed_addr #2 !dbg !2192 {
entry:
    #dbg_value(ptr %s, !2191, !DIExpression(), !3267)
    #dbg_value(i32 %x, !2196, !DIExpression(), !3267)
    #dbg_value(i32 %val, !2197, !DIExpression(), !3267)
  %cmp = icmp eq i32 %x, 1, !dbg !3268
  br i1 %cmp, label %if.then, label %if.else, !dbg !3269

if.then:                                          ; preds = %entry
  %xor = xor i32 %val, 1, !dbg !3270
    #dbg_value(ptr %s, !1632, !DIExpression(), !3271)
    #dbg_value(i32 %xor, !1637, !DIExpression(), !3271)
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24, !dbg !3273
  %0 = load i64, ptr %cur_bits.i, align 8, !dbg !3274
  %shl.i = shl i64 %0, 1, !dbg !3274
  %conv.i = zext i32 %xor to i64, !dbg !3275
  %or.i = or i64 %shl.i, %conv.i, !dbg !3276
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3276
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32, !dbg !3277
  %1 = load i32, ptr %i_left.i, align 8, !dbg !3278
  %dec.i = add nsw i32 %1, -1, !dbg !3278
  store i32 %dec.i, ptr %i_left.i, align 8, !dbg !3278
  %cmp.i = icmp eq i32 %dec.i, 32, !dbg !3279
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !3280

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32, !dbg !3281
    #dbg_value(i32 %conv6.i, !1650, !DIExpression(), !3282)
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i), !dbg !3284
  %p.i = getelementptr inbounds i8, ptr %s, i64 8, !dbg !3285
  %2 = load ptr, ptr %p.i, align 8, !dbg !3285
  store i32 %add5.i.i, ptr %2, align 4, !dbg !3286
  %3 = load ptr, ptr %p.i, align 8, !dbg !3287
  %add.ptr.i = getelementptr inbounds i8, ptr %3, i64 4, !dbg !3287
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3287
  store i32 64, ptr %i_left.i, align 8, !dbg !3288
  br label %if.end, !dbg !3289

if.else:                                          ; preds = %entry
    #dbg_value(ptr %s, !1667, !DIExpression(), !3290)
    #dbg_value(i32 %val, !1672, !DIExpression(), !3290)
  %add.i = add nsw i32 %val, 1, !dbg !3292
  %idxprom.i = sext i32 %add.i to i64, !dbg !3293
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i, !dbg !3293
  %4 = load i8, ptr %arrayidx.i, align 1, !dbg !3293
  %conv.i3 = zext i8 %4 to i32, !dbg !3293
    #dbg_value(ptr %s, !1677, !DIExpression(), !3294)
    #dbg_value(i32 %conv.i3, !1682, !DIExpression(), !3294)
    #dbg_value(i32 %add.i, !1683, !DIExpression(), !3294)
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24, !dbg !3296
  %5 = load i64, ptr %cur_bits.i.i, align 8, !dbg !3296
  %sh_prom.i.i = zext nneg i8 %4 to i64, !dbg !3297
  %shl.i.i = shl i64 %5, %sh_prom.i.i, !dbg !3297
  %conv.i.i = zext i32 %add.i to i64, !dbg !3298
  %or.i.i = or i64 %shl.i.i, %conv.i.i, !dbg !3299
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !3300
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32, !dbg !3301
  %6 = load i32, ptr %i_left.i.i, align 8, !dbg !3302
  %sub.i.i = sub nsw i32 %6, %conv.i3, !dbg !3302
  store i32 %sub.i.i, ptr %i_left.i.i, align 8, !dbg !3302
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !3303
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end, !dbg !3304

if.then.i.i:                                      ; preds = %if.else
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64, !dbg !3305
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !3305
    #dbg_value(i64 %shl7.i.i, !1698, !DIExpression(), !3306)
    #dbg_value(i64 %shl7.i.i, !1705, !DIExpression(), !3308)
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i), !dbg !3310
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !3311
  %p.i.i = getelementptr inbounds i8, ptr %s, i64 8, !dbg !3312
  %7 = load ptr, ptr %p.i.i, align 8, !dbg !3312
  store i32 %conv8.i.i, ptr %7, align 4, !dbg !3313
  %8 = load i32, ptr %i_left.i.i, align 8, !dbg !3314
  %add.i.i = add nsw i32 %8, 32, !dbg !3314
  store i32 %add.i.i, ptr %i_left.i.i, align 8, !dbg !3314
  %9 = load ptr, ptr %p.i.i, align 8, !dbg !3315
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 4, !dbg !3315
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8, !dbg !3315
  br label %if.end, !dbg !3316

if.end:                                           ; preds = %if.then.i.i, %if.else, %if.then.i, %if.then
  ret void, !dbg !3317
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width) unnamed_addr #0 !dbg !3318 {
entry:
  %mvp = alloca [2 x i16], align 4, !DIAssignID !3328
    #dbg_assign(i1 undef, !3327, !DIExpression(), !3328, ptr %mvp, !DIExpression(), !3329)
    #dbg_value(ptr %h, !3322, !DIExpression(), !3329)
    #dbg_value(i32 %i_list, !3323, !DIExpression(), !3329)
    #dbg_value(i32 %idx, !3324, !DIExpression(), !3329)
    #dbg_value(i32 %width, !3325, !DIExpression(), !3329)
    #dbg_value(ptr %h, !3326, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3329)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3330
  call void @x264_mb_predict_mv(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width, ptr noundef nonnull %mvp) #7, !dbg !3331
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !3332
  %idxprom = zext nneg i32 %i_list to i64, !dbg !3333
  %idxprom1 = sext i32 %idx to i64, !dbg !3334
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1, !dbg !3334
  %0 = load i32, ptr %arrayidx2, align 4, !dbg !3334
  %idxprom3 = sext i32 %0 to i64, !dbg !3333
  %arrayidx4 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3, !dbg !3333
  %1 = load i16, ptr %arrayidx4, align 4, !dbg !3333
  %conv = sext i16 %1 to i32, !dbg !3333
  %2 = load i16, ptr %mvp, align 4, !dbg !3335
  %conv7 = sext i16 %2 to i32, !dbg !3335
  %sub = sub nsw i32 %conv, %conv7, !dbg !3336
    #dbg_value(ptr %h, !2874, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3337)
    #dbg_value(i32 %sub, !2875, !DIExpression(), !3337)
    #dbg_value(i32 0, !2876, !DIExpression(), !3337)
  %mul.i = shl nsw i32 %sub, 1, !dbg !3339
  %sub.i = sub nsw i32 1, %mul.i, !dbg !3340
    #dbg_value(i32 %sub.i, !2877, !DIExpression(), !3337)
  %cmp.i = icmp sgt i32 %sub, 0, !dbg !3341
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %sub.i, !dbg !3342
    #dbg_value(i32 %spec.select.i, !2877, !DIExpression(), !3337)
    #dbg_value(i32 %spec.select.i, !2875, !DIExpression(), !3337)
  %cmp2.i = icmp sgt i32 %spec.select.i, 255, !dbg !3343
  %shr.i = lshr i32 %spec.select.i, 8, !dbg !3344
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0, !dbg !3344
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i, i32 %spec.select.i, !dbg !3344
    #dbg_value(i32 %tmp.1.i, !2877, !DIExpression(), !3337)
    #dbg_value(i32 %size.0.i, !2876, !DIExpression(), !3337)
  %idxprom.i = sext i32 %tmp.1.i to i64, !dbg !3345
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i, !dbg !3345
  %3 = load i8, ptr %arrayidx.i, align 1, !dbg !3345
  %conv.i = zext i8 %3 to i32, !dbg !3345
  %add.i = add nuw nsw i32 %size.0.i, %conv.i, !dbg !3346
    #dbg_value(i32 %add.i, !2876, !DIExpression(), !3337)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3347)
    #dbg_value(i32 %add.i, !1682, !DIExpression(), !3347)
    #dbg_value(i32 %spec.select.i, !1683, !DIExpression(), !3347)
  %cur_bits.i.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3349
  %4 = load i64, ptr %cur_bits.i.i, align 8, !dbg !3349
  %sh_prom.i.i = zext nneg i32 %add.i to i64, !dbg !3350
  %shl.i.i = shl i64 %4, %sh_prom.i.i, !dbg !3350
  %conv.i.i = zext i32 %spec.select.i to i64, !dbg !3351
  %or.i.i = or i64 %shl.i.i, %conv.i.i, !dbg !3352
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !3353
  %i_left.i.i = getelementptr inbounds i8, ptr %h, i64 1824, !dbg !3354
  %5 = load i32, ptr %i_left.i.i, align 8, !dbg !3355
  %sub.i.i = sub nsw i32 %5, %add.i, !dbg !3355
  store i32 %sub.i.i, ptr %i_left.i.i, align 8, !dbg !3355
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !3356
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_se.exit, !dbg !3357

if.then.i.i:                                      ; preds = %entry
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64, !dbg !3358
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !3358
    #dbg_value(i64 %shl7.i.i, !1698, !DIExpression(), !3359)
    #dbg_value(i64 %shl7.i.i, !1705, !DIExpression(), !3361)
  %add.i.i.i.i = call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i), !dbg !3363
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !3364
  %p.i.i = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3365
  %6 = load ptr, ptr %p.i.i, align 8, !dbg !3365
  store i32 %conv8.i.i, ptr %6, align 4, !dbg !3366
  %7 = load i32, ptr %i_left.i.i, align 8, !dbg !3367
  %add.i.i = add nsw i32 %7, 32, !dbg !3367
  store i32 %add.i.i, ptr %i_left.i.i, align 8, !dbg !3367
  %8 = load ptr, ptr %p.i.i, align 8, !dbg !3368
  %add.ptr.i.i = getelementptr inbounds i8, ptr %8, i64 4, !dbg !3368
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8, !dbg !3368
  %.pre = load i64, ptr %cur_bits.i.i, align 8, !dbg !3369
  br label %bs_write_se.exit, !dbg !3372

bs_write_se.exit:                                 ; preds = %entry, %if.then.i.i
  %9 = phi i32 [ %sub.i.i, %entry ], [ %add.i.i, %if.then.i.i ], !dbg !3373
  %10 = phi i64 [ %or.i.i, %entry ], [ %.pre, %if.then.i.i ], !dbg !3369
  %arrayidx17 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3, i64 1, !dbg !3374
  %11 = load i16, ptr %arrayidx17, align 2, !dbg !3374
  %conv18 = sext i16 %11 to i32, !dbg !3374
  %arrayidx19 = getelementptr inbounds i8, ptr %mvp, i64 2, !dbg !3375
  %12 = load i16, ptr %arrayidx19, align 2, !dbg !3375
  %conv20 = sext i16 %12 to i32, !dbg !3375
  %sub21 = sub nsw i32 %conv18, %conv20, !dbg !3376
    #dbg_value(ptr %h, !2874, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3377)
    #dbg_value(i32 %sub21, !2875, !DIExpression(), !3377)
    #dbg_value(i32 0, !2876, !DIExpression(), !3377)
  %mul.i30 = shl nsw i32 %sub21, 1, !dbg !3378
  %sub.i31 = sub nsw i32 1, %mul.i30, !dbg !3379
    #dbg_value(i32 %sub.i31, !2877, !DIExpression(), !3377)
  %cmp.i32 = icmp sgt i32 %sub21, 0, !dbg !3380
  %spec.select.i33 = select i1 %cmp.i32, i32 %mul.i30, i32 %sub.i31, !dbg !3381
    #dbg_value(i32 %spec.select.i33, !2877, !DIExpression(), !3377)
    #dbg_value(i32 %spec.select.i33, !2875, !DIExpression(), !3377)
  %cmp2.i34 = icmp sgt i32 %spec.select.i33, 255, !dbg !3382
  %shr.i35 = lshr i32 %spec.select.i33, 8, !dbg !3383
  %size.0.i36 = select i1 %cmp2.i34, i32 16, i32 0, !dbg !3383
  %tmp.1.i37 = select i1 %cmp2.i34, i32 %shr.i35, i32 %spec.select.i33, !dbg !3383
    #dbg_value(i32 %tmp.1.i37, !2877, !DIExpression(), !3377)
    #dbg_value(i32 %size.0.i36, !2876, !DIExpression(), !3377)
  %idxprom.i38 = sext i32 %tmp.1.i37 to i64, !dbg !3384
  %arrayidx.i39 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i38, !dbg !3384
  %13 = load i8, ptr %arrayidx.i39, align 1, !dbg !3384
  %conv.i40 = zext i8 %13 to i32, !dbg !3384
  %add.i41 = add nuw nsw i32 %size.0.i36, %conv.i40, !dbg !3385
    #dbg_value(i32 %add.i41, !2876, !DIExpression(), !3377)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3386)
    #dbg_value(i32 %add.i41, !1682, !DIExpression(), !3386)
    #dbg_value(i32 %spec.select.i33, !1683, !DIExpression(), !3386)
  %sh_prom.i.i43 = zext nneg i32 %add.i41 to i64, !dbg !3387
  %shl.i.i44 = shl i64 %10, %sh_prom.i.i43, !dbg !3387
  %conv.i.i45 = zext i32 %spec.select.i33 to i64, !dbg !3388
  %or.i.i46 = or i64 %shl.i.i44, %conv.i.i45, !dbg !3389
  store i64 %or.i.i46, ptr %cur_bits.i.i, align 8, !dbg !3390
  %sub.i.i48 = sub nsw i32 %9, %add.i41, !dbg !3373
  store i32 %sub.i.i48, ptr %i_left.i.i, align 8, !dbg !3373
  %cmp.i.i49 = icmp slt i32 %sub.i.i48, 33, !dbg !3391
  br i1 %cmp.i.i49, label %if.then.i.i50, label %bs_write_se.exit58, !dbg !3392

if.then.i.i50:                                    ; preds = %bs_write_se.exit
  %sh_prom6.i.i51 = zext nneg i32 %sub.i.i48 to i64, !dbg !3393
  %shl7.i.i52 = shl i64 %or.i.i46, %sh_prom6.i.i51, !dbg !3393
    #dbg_value(i64 %shl7.i.i52, !1698, !DIExpression(), !3394)
    #dbg_value(i64 %shl7.i.i52, !1705, !DIExpression(), !3396)
  %add.i.i.i.i53 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i52), !dbg !3398
  %conv8.i.i54 = trunc i64 %add.i.i.i.i53 to i32, !dbg !3399
  %p.i.i55 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3400
  %14 = load ptr, ptr %p.i.i55, align 8, !dbg !3400
  store i32 %conv8.i.i54, ptr %14, align 4, !dbg !3401
  %15 = load i32, ptr %i_left.i.i, align 8, !dbg !3402
  %add.i.i56 = add nsw i32 %15, 32, !dbg !3402
  store i32 %add.i.i56, ptr %i_left.i.i, align 8, !dbg !3402
  %16 = load ptr, ptr %p.i.i55, align 8, !dbg !3403
  %add.ptr.i.i57 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !3403
  store ptr %add.ptr.i.i57, ptr %p.i.i55, align 8, !dbg !3403
  br label %bs_write_se.exit58, !dbg !3404

bs_write_se.exit58:                               ; preds = %bs_write_se.exit, %if.then.i.i50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3405
  ret void, !dbg !3405
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc(ptr noundef %h, i32 noundef %i_ctxBlockCat, ptr noundef %l, i32 noundef %nC) unnamed_addr #0 !dbg !1463 {
entry:
  %runlevel = alloca %struct.x264_run_level_t, align 4, !DIAssignID !3406
    #dbg_assign(i1 undef, !1473, !DIExpression(), !3406, ptr %runlevel, !DIExpression(), !3407)
    #dbg_value(ptr %h, !1467, !DIExpression(), !3407)
    #dbg_value(i32 %i_ctxBlockCat, !1468, !DIExpression(), !3407)
    #dbg_value(ptr %l, !1469, !DIExpression(), !3407)
    #dbg_value(i32 %nC, !1470, !DIExpression(), !3407)
    #dbg_value(ptr %h, !1471, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3407)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %runlevel) #7, !dbg !3408
    #dbg_value(i32 0, !1477, !DIExpression(), !3407)
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4, !dbg !3409
  %arrayidx = getelementptr inbounds i8, ptr %runlevel, i64 6, !dbg !3410
  store i16 2, ptr %arrayidx, align 2, !dbg !3411, !DIAssignID !3412
    #dbg_assign(i16 2, !1473, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !3412, ptr %arrayidx, !DIExpression(), !3407)
  %arrayidx2 = getelementptr inbounds i8, ptr %runlevel, i64 8, !dbg !3413
  store i16 2, ptr %arrayidx2, align 4, !dbg !3414, !DIAssignID !3415
    #dbg_assign(i16 2, !1473, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !3415, ptr %arrayidx2, !DIExpression(), !3407)
  %coeff_level_run = getelementptr inbounds i8, ptr %h, i64 33216, !dbg !3416
  %idxprom = zext nneg i32 %i_ctxBlockCat to i64, !dbg !3417
  %arrayidx3 = getelementptr inbounds [5 x ptr], ptr %coeff_level_run, i64 0, i64 %idxprom, !dbg !3417
  %0 = load ptr, ptr %arrayidx3, align 8, !dbg !3417
  %call = call i32 %0(ptr noundef %l, ptr noundef nonnull %runlevel) #7, !dbg !3417
    #dbg_value(i32 %call, !1477, !DIExpression(), !3407)
  %1 = load i32, ptr %runlevel, align 4, !dbg !3418
  %reass.sub = sub i32 %1, %call, !dbg !3419
  %sub = add i32 %reass.sub, 1, !dbg !3419
    #dbg_value(i32 %sub, !1475, !DIExpression(), !3407)
  %2 = load i16, ptr %level, align 4, !dbg !3420
  %conv = sext i16 %2 to i32, !dbg !3420
  %add6 = add nsw i32 %conv, 1, !dbg !3421
  %sub10 = sub nsw i32 1, %conv, !dbg !3422
  %or = or i32 %add6, %sub10, !dbg !3423
  %shr301 = lshr i32 %or, 31, !dbg !3424
  %3 = load i16, ptr %arrayidx, align 2, !dbg !3425
  %conv13 = sext i16 %3 to i32, !dbg !3425
  %add14 = add nsw i32 %conv13, 1, !dbg !3426
  %sub18 = sub nsw i32 1, %conv13, !dbg !3427
  %or19 = or i32 %add14, %sub18, !dbg !3428
  %4 = lshr i32 %or19, 30, !dbg !3429
  %and21 = and i32 %4, 2, !dbg !3429
  %or22 = or disjoint i32 %and21, %shr301, !dbg !3430
  %5 = load i16, ptr %arrayidx2, align 4, !dbg !3431
  %conv25 = sext i16 %5 to i32, !dbg !3431
  %add26 = add nsw i32 %conv25, 1, !dbg !3432
  %sub30 = sub nsw i32 1, %conv25, !dbg !3433
  %or31 = or i32 %add26, %sub30, !dbg !3434
  %6 = lshr i32 %or31, 29, !dbg !3435
  %and33 = and i32 %6, 4, !dbg !3435
  %or34 = or disjoint i32 %or22, %and33, !dbg !3436
    #dbg_value(i32 %or34, !1474, !DIExpression(), !3407)
  %idxprom35 = zext nneg i32 %or34 to i64, !dbg !3437
  %arrayidx36 = getelementptr inbounds [8 x i8], ptr @block_residual_write_cavlc.ctz_index, i64 0, i64 %idxprom35, !dbg !3437
  %7 = load i8, ptr %arrayidx36, align 1, !dbg !3437
  %conv37 = zext i8 %7 to i32, !dbg !3437
    #dbg_value(i32 %conv37, !1474, !DIExpression(), !3407)
  %shr41302 = lshr i32 %conv25, 31, !dbg !3438
  %8 = lshr i16 %3, 14, !dbg !3439
  %9 = and i16 %8, 2, !dbg !3439
  %10 = lshr i16 %2, 13, !dbg !3440
  %11 = and i16 %10, 4, !dbg !3440
  %or48413 = or disjoint i16 %9, %11, !dbg !3441
  %or48 = zext nneg i16 %or48413 to i32, !dbg !3441
  %or54 = or disjoint i32 %shr41302, %or48, !dbg !3442
    #dbg_value(i32 %or54, !1478, !DIExpression(), !3407)
  %sub55 = sub nsw i32 3, %conv37, !dbg !3443
  %shr56 = lshr i32 %or54, %sub55, !dbg !3444
    #dbg_value(i32 %shr56, !1478, !DIExpression(), !3407)
  %idxprom57 = zext nneg i32 %nC to i64, !dbg !3445
  %sub59 = add nsw i32 %call, -1, !dbg !3445
  %idxprom60 = sext i32 %sub59 to i64, !dbg !3445
  %idxprom62 = zext i8 %7 to i64, !dbg !3445
  %arrayidx63 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %idxprom57, i64 %idxprom60, i64 %idxprom62, !dbg !3445
  %i_size = getelementptr inbounds i8, ptr %arrayidx63, i64 1, !dbg !3445
  %12 = load i8, ptr %i_size, align 1, !dbg !3445
  %conv64 = zext i8 %12 to i32, !dbg !3445
  %13 = load i8, ptr %arrayidx63, align 2, !dbg !3445
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3446)
    #dbg_value(i32 %conv64, !1682, !DIExpression(), !3446)
    #dbg_value(i8 %13, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3446)
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3448
  %14 = load i64, ptr %cur_bits.i, align 8, !dbg !3448
  %sh_prom.i = zext nneg i8 %12 to i64, !dbg !3449
  %shl.i = shl i64 %14, %sh_prom.i, !dbg !3449
  %conv.i = zext i8 %13 to i64, !dbg !3450
  %or.i = or i64 %shl.i, %conv.i, !dbg !3451
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3452
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824, !dbg !3453
  %15 = load i32, ptr %i_left.i, align 8, !dbg !3454
  %sub.i = sub nsw i32 %15, %conv64, !dbg !3454
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3454
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3455
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit, !dbg !3456

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext nneg i32 %sub.i to i64, !dbg !3457
  %shl7.i = shl i64 %or.i, %sh_prom6.i, !dbg !3457
    #dbg_value(i64 %shl7.i, !1698, !DIExpression(), !3458)
    #dbg_value(i64 %shl7.i, !1705, !DIExpression(), !3460)
  %add.i.i.i = call noundef i64 @llvm.bswap.i64(i64 %shl7.i), !dbg !3462
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !3463
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3464
  %16 = load ptr, ptr %p.i, align 8, !dbg !3464
  store i32 %conv8.i, ptr %16, align 4, !dbg !3465
  %17 = load i32, ptr %i_left.i, align 8, !dbg !3466
  %add.i = add nsw i32 %17, 32, !dbg !3466
  %18 = load ptr, ptr %p.i, align 8, !dbg !3467
  %add.ptr.i = getelementptr inbounds i8, ptr %18, i64 4, !dbg !3467
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3467
  %.pre = load i64, ptr %cur_bits.i, align 8, !dbg !3468
  br label %bs_write.exit, !dbg !3470

bs_write.exit:                                    ; preds = %entry, %if.then.i
  %19 = phi i32 [ %sub.i, %entry ], [ %add.i, %if.then.i ], !dbg !3471
  %20 = phi i64 [ %or.i, %entry ], [ %.pre, %if.then.i ], !dbg !3468
  %cmp = icmp sgt i32 %call, 10, !dbg !3472
  %cmp74 = icmp ne i32 %or34, 0, !dbg !3473
  %21 = and i1 %cmp, %cmp74, !dbg !3473
  %land.ext = zext i1 %21 to i32, !dbg !3473
    #dbg_value(i32 %land.ext, !1476, !DIExpression(), !3407)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3474)
    #dbg_value(i32 %conv37, !1682, !DIExpression(), !3474)
    #dbg_value(i32 %shr56, !1683, !DIExpression(), !3474)
  %shl.i305 = shl i64 %20, %idxprom62, !dbg !3475
  %conv.i306 = zext nneg i32 %shr56 to i64, !dbg !3476
  %or.i307 = or i64 %shl.i305, %conv.i306, !dbg !3477
  store i64 %or.i307, ptr %cur_bits.i, align 8, !dbg !3478
  %sub.i309 = sub nsw i32 %19, %conv37, !dbg !3471
  store i32 %sub.i309, ptr %i_left.i, align 8, !dbg !3471
  %cmp.i310 = icmp slt i32 %sub.i309, 33, !dbg !3479
  br i1 %cmp.i310, label %if.then.i311, label %bs_write.exit319, !dbg !3480

if.then.i311:                                     ; preds = %bs_write.exit
  %sh_prom6.i312 = zext nneg i32 %sub.i309 to i64, !dbg !3481
  %shl7.i313 = shl i64 %or.i307, %sh_prom6.i312, !dbg !3481
    #dbg_value(i64 %shl7.i313, !1698, !DIExpression(), !3482)
    #dbg_value(i64 %shl7.i313, !1705, !DIExpression(), !3484)
  %add.i.i.i314 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i313), !dbg !3486
  %conv8.i315 = trunc i64 %add.i.i.i314 to i32, !dbg !3487
  %p.i316 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3488
  %22 = load ptr, ptr %p.i316, align 8, !dbg !3488
  store i32 %conv8.i315, ptr %22, align 4, !dbg !3489
  %23 = load i32, ptr %i_left.i, align 8, !dbg !3490
  %add.i317 = add nsw i32 %23, 32, !dbg !3490
  store i32 %add.i317, ptr %i_left.i, align 8, !dbg !3490
  %24 = load ptr, ptr %p.i316, align 8, !dbg !3491
  %add.ptr.i318 = getelementptr inbounds i8, ptr %24, i64 4, !dbg !3491
  store ptr %add.ptr.i318, ptr %p.i316, align 8, !dbg !3491
  br label %bs_write.exit319, !dbg !3492

bs_write.exit319:                                 ; preds = %bs_write.exit, %if.then.i311
  %25 = phi i32 [ %sub.i309, %bs_write.exit ], [ %add.i317, %if.then.i311 ]
  %cmp76 = icmp sgt i32 %call, %conv37, !dbg !3493
  br i1 %cmp76, label %if.then, label %if.end150, !dbg !3494

if.then:                                          ; preds = %bs_write.exit319
  %arrayidx80 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %idxprom62, !dbg !3495
  %26 = load i16, ptr %arrayidx80, align 2, !dbg !3495
  %conv81 = sext i16 %26 to i32, !dbg !3495
    #dbg_value(i32 %conv81, !1479, !DIExpression(), !3496)
  %add86 = add nsw i32 %conv81, 64, !dbg !3497
    #dbg_value(i32 %add86, !1482, !DIExpression(), !3496)
  %shr87 = ashr i32 %conv81, 31, !dbg !3498
  %or88 = or i32 %shr87, 1, !dbg !3499
  %and92 = select i1 %cmp74, i32 %or88, i32 0, !dbg !3500
  %sub93 = sub nsw i32 %conv81, %and92, !dbg !3501
    #dbg_value(i32 %sub93, !1479, !DIExpression(), !3496)
    #dbg_value(i32 %sub93, !1479, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !3496)
  %cmp95 = icmp ult i32 %add86, 128, !dbg !3502
  br i1 %cmp95, label %if.then97, label %if.else, !dbg !3504

if.then97:                                        ; preds = %if.then
  %add94 = add nsw i32 %sub93, 64, !dbg !3505
    #dbg_value(i32 %add94, !1479, !DIExpression(), !3496)
  %idxprom98 = zext i1 %21 to i64, !dbg !3506
  %idxprom100 = sext i32 %add94 to i64, !dbg !3506
  %arrayidx101 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom98, i64 %idxprom100, !dbg !3506
  %i_size102 = getelementptr inbounds i8, ptr %arrayidx101, i64 2, !dbg !3506
  %27 = load i8, ptr %i_size102, align 2, !dbg !3506
  %conv103 = zext i8 %27 to i32, !dbg !3506
  %28 = load i16, ptr %arrayidx101, align 4, !dbg !3506
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3508)
    #dbg_value(i32 %conv103, !1682, !DIExpression(), !3508)
    #dbg_value(i16 %28, !1683, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3508)
  %29 = load i64, ptr %cur_bits.i, align 8, !dbg !3510
  %sh_prom.i321 = zext nneg i8 %27 to i64, !dbg !3511
  %shl.i322 = shl i64 %29, %sh_prom.i321, !dbg !3511
  %conv.i323 = zext i16 %28 to i64, !dbg !3512
  %or.i324 = or i64 %shl.i322, %conv.i323, !dbg !3513
  store i64 %or.i324, ptr %cur_bits.i, align 8, !dbg !3514
  %sub.i326 = sub nsw i32 %25, %conv103, !dbg !3515
  store i32 %sub.i326, ptr %i_left.i, align 8, !dbg !3515
  %cmp.i327 = icmp slt i32 %sub.i326, 33, !dbg !3516
  br i1 %cmp.i327, label %if.then.i328, label %bs_write.exit336, !dbg !3517

if.then.i328:                                     ; preds = %if.then97
  %sh_prom6.i329 = zext nneg i32 %sub.i326 to i64, !dbg !3518
  %shl7.i330 = shl i64 %or.i324, %sh_prom6.i329, !dbg !3518
    #dbg_value(i64 %shl7.i330, !1698, !DIExpression(), !3519)
    #dbg_value(i64 %shl7.i330, !1705, !DIExpression(), !3521)
  %add.i.i.i331 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i330), !dbg !3523
  %conv8.i332 = trunc i64 %add.i.i.i331 to i32, !dbg !3524
  %p.i333 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3525
  %30 = load ptr, ptr %p.i333, align 8, !dbg !3525
  store i32 %conv8.i332, ptr %30, align 4, !dbg !3526
  %31 = load i32, ptr %i_left.i, align 8, !dbg !3527
  %add.i334 = add nsw i32 %31, 32, !dbg !3527
  store i32 %add.i334, ptr %i_left.i, align 8, !dbg !3527
  %32 = load ptr, ptr %p.i333, align 8, !dbg !3528
  %add.ptr.i335 = getelementptr inbounds i8, ptr %32, i64 4, !dbg !3528
  store ptr %add.ptr.i335, ptr %p.i333, align 8, !dbg !3528
  br label %bs_write.exit336, !dbg !3529

bs_write.exit336:                                 ; preds = %if.then97, %if.then.i328
  %idxprom112 = zext nneg i32 %add86 to i64, !dbg !3530
  %i_next = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom98, i64 %idxprom112, i32 2, !dbg !3531
  %33 = load i8, ptr %i_next, align 1, !dbg !3531
  %conv114 = zext i8 %33 to i32, !dbg !3530
    #dbg_value(i32 %conv114, !1476, !DIExpression(), !3407)
  br label %if.end, !dbg !3532

if.else:                                          ; preds = %if.then
  %call116 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef nonnull %h, i32 noundef %land.ext, i32 noundef %sub93), !dbg !3533
    #dbg_value(i32 %call116, !1476, !DIExpression(), !3407)
  br label %if.end

if.end:                                           ; preds = %if.else, %bs_write.exit336
  %i_suffix_length.0 = phi i32 [ %conv114, %bs_write.exit336 ], [ %call116, %if.else ], !dbg !3534
    #dbg_value(i32 %i_suffix_length.0, !1476, !DIExpression(), !3407)
    #dbg_value(i32 %conv37, !1483, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3535)
  %i.0405 = add nuw nsw i32 %conv37, 1, !dbg !3536
  %cmp118406 = icmp ult i32 %i.0405, %call, !dbg !3537
  br i1 %cmp118406, label %for.body.lr.ph, label %if.end150, !dbg !3539

for.body.lr.ph:                                   ; preds = %if.end
  %p.i350 = getelementptr inbounds i8, ptr %h, i64 1800
  %34 = add nuw nsw i64 %idxprom62, 1, !dbg !3539
  %wide.trip.count = zext nneg i32 %call to i64, !dbg !3537
  br label %for.body, !dbg !3539

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %34, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i_suffix_length.1407 = phi i32 [ %i_suffix_length.0, %for.body.lr.ph ], [ %i_suffix_length.2, %for.inc ]
    #dbg_value(i32 %i_suffix_length.1407, !1476, !DIExpression(), !3407)
  %arrayidx122 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv, !dbg !3540
  %35 = load i16, ptr %arrayidx122, align 2, !dbg !3540
  %conv123 = sext i16 %35 to i32, !dbg !3540
  %add124 = add nsw i32 %conv123, 64, !dbg !3542
    #dbg_value(i32 %add124, !1479, !DIExpression(), !3496)
  %cmp125 = icmp ult i32 %add124, 128, !dbg !3543
  br i1 %cmp125, label %if.then127, label %if.else146, !dbg !3545

if.then127:                                       ; preds = %for.body
  %idxprom128 = sext i32 %i_suffix_length.1407 to i64, !dbg !3546
  %idxprom130 = zext nneg i32 %add124 to i64, !dbg !3546
  %arrayidx131 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom128, i64 %idxprom130, !dbg !3546
  %i_size132 = getelementptr inbounds i8, ptr %arrayidx131, i64 2, !dbg !3546
  %36 = load i8, ptr %i_size132, align 2, !dbg !3546
  %conv133 = zext i8 %36 to i32, !dbg !3546
  %37 = load i16, ptr %arrayidx131, align 4, !dbg !3546
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3548)
    #dbg_value(i32 %conv133, !1682, !DIExpression(), !3548)
    #dbg_value(i16 %37, !1683, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3548)
  %38 = load i64, ptr %cur_bits.i, align 8, !dbg !3550
  %sh_prom.i338 = zext nneg i8 %36 to i64, !dbg !3551
  %shl.i339 = shl i64 %38, %sh_prom.i338, !dbg !3551
  %conv.i340 = zext i16 %37 to i64, !dbg !3552
  %or.i341 = or i64 %shl.i339, %conv.i340, !dbg !3553
  store i64 %or.i341, ptr %cur_bits.i, align 8, !dbg !3554
  %39 = load i32, ptr %i_left.i, align 8, !dbg !3555
  %sub.i343 = sub nsw i32 %39, %conv133, !dbg !3555
  store i32 %sub.i343, ptr %i_left.i, align 8, !dbg !3555
  %cmp.i344 = icmp slt i32 %sub.i343, 33, !dbg !3556
  br i1 %cmp.i344, label %if.then.i345, label %bs_write.exit353, !dbg !3557

if.then.i345:                                     ; preds = %if.then127
  %sh_prom6.i346 = zext nneg i32 %sub.i343 to i64, !dbg !3558
  %shl7.i347 = shl i64 %or.i341, %sh_prom6.i346, !dbg !3558
    #dbg_value(i64 %shl7.i347, !1698, !DIExpression(), !3559)
    #dbg_value(i64 %shl7.i347, !1705, !DIExpression(), !3561)
  %add.i.i.i348 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i347), !dbg !3563
  %conv8.i349 = trunc i64 %add.i.i.i348 to i32, !dbg !3564
  %40 = load ptr, ptr %p.i350, align 8, !dbg !3565
  store i32 %conv8.i349, ptr %40, align 4, !dbg !3566
  %41 = load i32, ptr %i_left.i, align 8, !dbg !3567
  %add.i351 = add nsw i32 %41, 32, !dbg !3567
  store i32 %add.i351, ptr %i_left.i, align 8, !dbg !3567
  %42 = load ptr, ptr %p.i350, align 8, !dbg !3568
  %add.ptr.i352 = getelementptr inbounds i8, ptr %42, i64 4, !dbg !3568
  store ptr %add.ptr.i352, ptr %p.i350, align 8, !dbg !3568
  br label %bs_write.exit353, !dbg !3569

bs_write.exit353:                                 ; preds = %if.then127, %if.then.i345
  %i_next144 = getelementptr inbounds i8, ptr %arrayidx131, i64 3, !dbg !3570
  %43 = load i8, ptr %i_next144, align 1, !dbg !3570
  %conv145 = zext i8 %43 to i32, !dbg !3571
    #dbg_value(i32 %conv145, !1476, !DIExpression(), !3407)
  br label %for.inc, !dbg !3572

if.else146:                                       ; preds = %for.body
  %call148 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length.1407, i32 noundef %conv123), !dbg !3573
    #dbg_value(i32 %call148, !1476, !DIExpression(), !3407)
  br label %for.inc

for.inc:                                          ; preds = %bs_write.exit353, %if.else146
  %i_suffix_length.2 = phi i32 [ %conv145, %bs_write.exit353 ], [ %call148, %if.else146 ], !dbg !3574
    #dbg_value(i32 %i_suffix_length.2, !1476, !DIExpression(), !3407)
    #dbg_value(i64 %indvars.iv, !1483, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3535)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3536
    #dbg_value(i64 %indvars.iv.next, !1483, !DIExpression(), !3535)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3537
  br i1 %exitcond.not, label %if.end150, label %for.body, !dbg !3539, !llvm.loop !3575

if.end150:                                        ; preds = %for.inc, %if.end, %bs_write.exit319
  %conv152 = and i32 %call, 255, !dbg !3577
  %arrayidx154 = getelementptr inbounds [5 x i8], ptr @block_residual_write_cavlc.count_cat, i64 0, i64 %idxprom, !dbg !3579
  %44 = load i8, ptr %arrayidx154, align 1, !dbg !3579
  %conv155 = zext i8 %44 to i32, !dbg !3579
  %cmp156 = icmp ult i32 %conv152, %conv155, !dbg !3580
  br i1 %cmp156, label %if.then158, label %if.end192, !dbg !3581

if.then158:                                       ; preds = %if.end150
  %cmp159 = icmp eq i32 %i_ctxBlockCat, 3, !dbg !3582
  %idxprom165 = sext i32 %sub to i64, !dbg !3585
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3586)
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3588)
  %45 = load i64, ptr %cur_bits.i, align 8, !dbg !3590
  br i1 %cmp159, label %if.then161, label %if.else176, !dbg !3591

if.then161:                                       ; preds = %if.then158
  %arrayidx166 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %idxprom60, i64 %idxprom165, !dbg !3592
  %i_size167 = getelementptr inbounds i8, ptr %arrayidx166, i64 1, !dbg !3592
  %46 = load i8, ptr %i_size167, align 1, !dbg !3592
  %conv168 = zext i8 %46 to i32, !dbg !3592
  %47 = load i8, ptr %arrayidx166, align 2, !dbg !3592
    #dbg_value(i32 %conv168, !1682, !DIExpression(), !3586)
    #dbg_value(i8 %47, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3586)
  %sh_prom.i355 = zext nneg i8 %46 to i64, !dbg !3593
  %shl.i356 = shl i64 %45, %sh_prom.i355, !dbg !3593
  %conv.i357 = zext i8 %47 to i64, !dbg !3594
  %or.i358 = or i64 %shl.i356, %conv.i357, !dbg !3595
  store i64 %or.i358, ptr %cur_bits.i, align 8, !dbg !3596
  %48 = load i32, ptr %i_left.i, align 8, !dbg !3597
  %sub.i360 = sub nsw i32 %48, %conv168, !dbg !3597
  store i32 %sub.i360, ptr %i_left.i, align 8, !dbg !3597
  %cmp.i361 = icmp slt i32 %sub.i360, 33, !dbg !3598
  br i1 %cmp.i361, label %if.end192.sink.split, label %if.end192, !dbg !3599

if.else176:                                       ; preds = %if.then158
  %arrayidx181 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %idxprom60, i64 %idxprom165, !dbg !3600
  %i_size182 = getelementptr inbounds i8, ptr %arrayidx181, i64 1, !dbg !3600
  %49 = load i8, ptr %i_size182, align 1, !dbg !3600
  %conv183 = zext i8 %49 to i32, !dbg !3600
  %50 = load i8, ptr %arrayidx181, align 2, !dbg !3600
    #dbg_value(i32 %conv183, !1682, !DIExpression(), !3588)
    #dbg_value(i8 %50, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3588)
  %sh_prom.i372 = zext nneg i8 %49 to i64, !dbg !3601
  %shl.i373 = shl i64 %45, %sh_prom.i372, !dbg !3601
  %conv.i374 = zext i8 %50 to i64, !dbg !3602
  %or.i375 = or i64 %shl.i373, %conv.i374, !dbg !3603
  store i64 %or.i375, ptr %cur_bits.i, align 8, !dbg !3604
  %51 = load i32, ptr %i_left.i, align 8, !dbg !3605
  %sub.i377 = sub nsw i32 %51, %conv183, !dbg !3605
  store i32 %sub.i377, ptr %i_left.i, align 8, !dbg !3605
  %cmp.i378 = icmp slt i32 %sub.i377, 33, !dbg !3606
  br i1 %cmp.i378, label %if.end192.sink.split, label %if.end192, !dbg !3607

if.end192.sink.split:                             ; preds = %if.else176, %if.then161
  %sub.i377.sink = phi i32 [ %sub.i360, %if.then161 ], [ %sub.i377, %if.else176 ]
  %or.i375.sink = phi i64 [ %or.i358, %if.then161 ], [ %or.i375, %if.else176 ]
  %sh_prom6.i380 = zext nneg i32 %sub.i377.sink to i64, !dbg !3608
  %shl7.i381 = shl i64 %or.i375.sink, %sh_prom6.i380, !dbg !3608
  %add.i.i.i382 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i381), !dbg !3609
  %conv8.i383 = trunc i64 %add.i.i.i382 to i32, !dbg !3611
  %p.i384 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3612
  %52 = load ptr, ptr %p.i384, align 8, !dbg !3612
  store i32 %conv8.i383, ptr %52, align 4, !dbg !3613
  %53 = load i32, ptr %i_left.i, align 8, !dbg !3614
  %add.i385 = add nsw i32 %53, 32, !dbg !3614
  store i32 %add.i385, ptr %i_left.i, align 8, !dbg !3614
  %54 = load ptr, ptr %p.i384, align 8, !dbg !3615
  %add.ptr.i386 = getelementptr inbounds i8, ptr %54, i64 4, !dbg !3615
  store ptr %add.ptr.i386, ptr %p.i384, align 8, !dbg !3615
  br label %if.end192, !dbg !3616

if.end192:                                        ; preds = %if.end192.sink.split, %if.else176, %if.then161, %if.end150
    #dbg_value(i32 0, !1485, !DIExpression(), !3617)
    #dbg_value(i32 %sub, !1475, !DIExpression(), !3407)
  %cmp196409 = icmp sgt i32 %call, 1, !dbg !3616
  %cmp199410 = icmp ult i32 %reass.sub, 2147483647, !dbg !3618
  %55 = select i1 %cmp196409, i1 %cmp199410, i1 false, !dbg !3618
  br i1 %55, label %for.body204.lr.ph, label %for.cond.cleanup203, !dbg !3619

for.body204.lr.ph:                                ; preds = %if.end192
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  %p.i401 = getelementptr inbounds i8, ptr %h, i64 1800
  %.pre418 = load i32, ptr %i_left.i, align 8, !dbg !3620
  br label %for.body204, !dbg !3619

for.cond.cleanup203:                              ; preds = %bs_write.exit404, %if.end192
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %runlevel) #7, !dbg !3622
  ret i32 %call, !dbg !3623

for.body204:                                      ; preds = %for.body204.lr.ph, %bs_write.exit404
  %56 = phi i32 [ %.pre418, %for.body204.lr.ph ], [ %66, %bs_write.exit404 ], !dbg !3620
  %indvars.iv415 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next416, %bs_write.exit404 ]
  %i_total_zero.0411 = phi i32 [ %sub, %for.body204.lr.ph ], [ %sub230, %bs_write.exit404 ]
    #dbg_value(i64 %indvars.iv415, !1485, !DIExpression(), !3617)
    #dbg_value(i32 %i_total_zero.0411, !1475, !DIExpression(), !3407)
  %57 = call i32 @llvm.umin.i32(i32 %i_total_zero.0411, i32 7), !dbg !3624
    #dbg_value(i32 %57, !1487, !DIExpression(), !3625)
  %sub207 = add nsw i32 %57, -1, !dbg !3626
  %idxprom208 = zext nneg i32 %sub207 to i64, !dbg !3626
  %arrayidx211 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv415, !dbg !3626
  %58 = load i8, ptr %arrayidx211, align 1, !dbg !3626
  %idxprom212 = zext i8 %58 to i64, !dbg !3626
  %arrayidx213 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %idxprom208, i64 %idxprom212, !dbg !3626
  %i_size214 = getelementptr inbounds i8, ptr %arrayidx213, i64 1, !dbg !3626
  %59 = load i8, ptr %i_size214, align 1, !dbg !3626
  %conv215 = zext i8 %59 to i32, !dbg !3626
  %60 = load i8, ptr %arrayidx213, align 2, !dbg !3626
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3627)
    #dbg_value(i32 %conv215, !1682, !DIExpression(), !3627)
    #dbg_value(i8 %60, !1683, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3627)
  %61 = load i64, ptr %cur_bits.i, align 8, !dbg !3628
  %sh_prom.i389 = zext nneg i8 %59 to i64, !dbg !3629
  %shl.i390 = shl i64 %61, %sh_prom.i389, !dbg !3629
  %conv.i391 = zext i8 %60 to i64, !dbg !3630
  %or.i392 = or i64 %shl.i390, %conv.i391, !dbg !3631
  store i64 %or.i392, ptr %cur_bits.i, align 8, !dbg !3632
  %sub.i394 = sub nsw i32 %56, %conv215, !dbg !3620
  store i32 %sub.i394, ptr %i_left.i, align 8, !dbg !3620
  %cmp.i395 = icmp slt i32 %sub.i394, 33, !dbg !3633
  br i1 %cmp.i395, label %if.then.i396, label %bs_write.exit404, !dbg !3634

if.then.i396:                                     ; preds = %for.body204
  %sh_prom6.i397 = zext nneg i32 %sub.i394 to i64, !dbg !3635
  %shl7.i398 = shl i64 %or.i392, %sh_prom6.i397, !dbg !3635
    #dbg_value(i64 %shl7.i398, !1698, !DIExpression(), !3636)
    #dbg_value(i64 %shl7.i398, !1705, !DIExpression(), !3638)
  %add.i.i.i399 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i398), !dbg !3640
  %conv8.i400 = trunc i64 %add.i.i.i399 to i32, !dbg !3641
  %62 = load ptr, ptr %p.i401, align 8, !dbg !3642
  store i32 %conv8.i400, ptr %62, align 4, !dbg !3643
  %63 = load i32, ptr %i_left.i, align 8, !dbg !3644
  %add.i402 = add nsw i32 %63, 32, !dbg !3644
  store i32 %add.i402, ptr %i_left.i, align 8, !dbg !3644
  %64 = load ptr, ptr %p.i401, align 8, !dbg !3645
  %add.ptr.i403 = getelementptr inbounds i8, ptr %64, i64 4, !dbg !3645
  store ptr %add.ptr.i403, ptr %p.i401, align 8, !dbg !3645
  %.pre419 = load i8, ptr %arrayidx211, align 1, !dbg !3646
  br label %bs_write.exit404, !dbg !3647

bs_write.exit404:                                 ; preds = %for.body204, %if.then.i396
  %65 = phi i8 [ %58, %for.body204 ], [ %.pre419, %if.then.i396 ], !dbg !3646
  %66 = phi i32 [ %sub.i394, %for.body204 ], [ %add.i402, %if.then.i396 ]
  %conv229 = zext i8 %65 to i32, !dbg !3646
  %sub230 = sub nsw i32 %i_total_zero.0411, %conv229, !dbg !3648
    #dbg_value(i32 %sub230, !1475, !DIExpression(), !3407)
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1, !dbg !3649
    #dbg_value(i64 %indvars.iv.next416, !1485, !DIExpression(), !3617)
  %cmp196 = icmp slt i64 %indvars.iv.next416, %idxprom60, !dbg !3616
  %cmp199 = icmp sgt i32 %sub230, 0, !dbg !3618
  %67 = select i1 %cmp196, i1 %cmp199, i1 false, !dbg !3618
  br i1 %67, label %for.body204, label %for.cond.cleanup203, !dbg !3619, !llvm.loop !3650
}

declare !dbg !3652 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length, i32 noundef %level) unnamed_addr #5 !dbg !1496 {
entry:
    #dbg_value(ptr %h, !1500, !DIExpression(), !3655)
    #dbg_value(i32 %i_suffix_length, !1501, !DIExpression(), !3655)
    #dbg_value(i32 %level, !1502, !DIExpression(), !3655)
    #dbg_value(ptr %h, !1503, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3655)
    #dbg_value(i32 15, !1504, !DIExpression(), !3655)
  %shr = ashr i32 %level, 15, !dbg !3656
    #dbg_value(i32 %shr, !1505, !DIExpression(), !3655)
  %xor = xor i32 %shr, %level, !dbg !3657
  %sub = sub nsw i32 %xor, %shr, !dbg !3658
    #dbg_value(i32 %sub, !1506, !DIExpression(), !3655)
  %mul = shl nsw i32 %sub, 1, !dbg !3659
  %sub1 = sub nsw i32 %mul, %shr, !dbg !3660
  %sub2 = add nsw i32 %sub1, -2, !dbg !3661
    #dbg_value(i32 %sub2, !1507, !DIExpression(), !3655)
  %shr3 = ashr i32 %sub2, %i_suffix_length, !dbg !3662
  %cmp = icmp slt i32 %shr3, 15, !dbg !3664
  br i1 %cmp, label %if.then, label %if.else, !dbg !3665

if.then:                                          ; preds = %entry
  %add = add i32 %i_suffix_length, 1, !dbg !3666
  %add5 = add i32 %add, %shr3, !dbg !3668
  %shl = shl nuw i32 1, %i_suffix_length, !dbg !3669
  %sub7 = add nsw i32 %shl, -1, !dbg !3670
  %and = and i32 %sub2, %sub7, !dbg !3671
  %add8 = add nsw i32 %and, %shl, !dbg !3672
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3673)
    #dbg_value(i32 %add5, !1682, !DIExpression(), !3673)
    #dbg_value(i32 %add8, !1683, !DIExpression(), !3673)
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3675
  %0 = load i64, ptr %cur_bits.i, align 8, !dbg !3675
  %sh_prom.i = zext nneg i32 %add5 to i64, !dbg !3676
  %shl.i = shl i64 %0, %sh_prom.i, !dbg !3676
  %conv.i = zext i32 %add8 to i64, !dbg !3677
  %or.i = or i64 %shl.i, %conv.i, !dbg !3678
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3679
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824, !dbg !3680
  %1 = load i32, ptr %i_left.i, align 8, !dbg !3681
  %sub.i = sub nsw i32 %1, %add5, !dbg !3681
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3681
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3682
  br i1 %cmp.i, label %if.end35.sink.split, label %if.end35, !dbg !3683

if.else:                                          ; preds = %entry
  %shl9.neg = shl i32 -15, %i_suffix_length, !dbg !3684
  %sub10 = add i32 %sub2, %shl9.neg, !dbg !3686
    #dbg_value(i32 %sub10, !1507, !DIExpression(), !3655)
  %cmp11 = icmp eq i32 %i_suffix_length, 0, !dbg !3687
  %sub13 = add nsw i32 %sub10, -15
  %spec.select = select i1 %cmp11, i32 %sub13, i32 %sub10, !dbg !3689
    #dbg_value(i32 %spec.select, !1507, !DIExpression(), !3655)
  %cmp14 = icmp sgt i32 %spec.select, 4095, !dbg !3690
  br i1 %cmp14, label %if.then15, label %if.end28, !dbg !3692

if.then15:                                        ; preds = %if.else
  %sps = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !3693
  %2 = load ptr, ptr %sps, align 16, !dbg !3693
  %i_profile_idc = getelementptr inbounds i8, ptr %2, i64 4, !dbg !3696
  %3 = load i32, ptr %i_profile_idc, align 4, !dbg !3696
  %cmp16 = icmp sgt i32 %3, 99, !dbg !3697
  br i1 %cmp16, label %while.cond.preheader, label %if.else24, !dbg !3698

while.cond.preheader:                             ; preds = %if.then15
    #dbg_value(i32 %spec.select, !1507, !DIExpression(), !3655)
    #dbg_value(i32 15, !1504, !DIExpression(), !3655)
  %cmp20113.not = icmp eq i32 %spec.select, 4096, !dbg !3699
  br i1 %cmp20113.not, label %if.end28, label %while.body, !dbg !3701

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %shl19116 = phi i32 [ %shl19, %while.body ], [ 4096, %while.cond.preheader ]
  %i_level_code.1115 = phi i32 [ %sub23, %while.body ], [ %spec.select, %while.cond.preheader ]
  %i_level_prefix.0114 = phi i32 [ %inc, %while.body ], [ 15, %while.cond.preheader ]
    #dbg_value(i32 %i_level_code.1115, !1507, !DIExpression(), !3655)
    #dbg_value(i32 %i_level_prefix.0114, !1504, !DIExpression(), !3655)
  %sub23 = sub nsw i32 %i_level_code.1115, %shl19116, !dbg !3702
    #dbg_value(i32 %sub23, !1507, !DIExpression(), !3655)
  %inc = add nuw nsw i32 %i_level_prefix.0114, 1, !dbg !3704
    #dbg_value(i32 %inc, !1504, !DIExpression(), !3655)
  %sub18 = add nsw i32 %i_level_prefix.0114, -2, !dbg !3705
  %shl19 = shl nuw i32 1, %sub18, !dbg !3706
  %cmp20 = icmp sgt i32 %sub23, %shl19, !dbg !3699
  br i1 %cmp20, label %while.body, label %if.end28, !dbg !3701, !llvm.loop !3707

if.else24:                                        ; preds = %if.then15
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %spec.select) #7, !dbg !3709
  %and25 = and i32 %spec.select, 1, !dbg !3711
  %add26 = or disjoint i32 %and25, 4094, !dbg !3712
    #dbg_value(i32 %add26, !1507, !DIExpression(), !3655)
  br label %if.end28

if.end28:                                         ; preds = %while.body, %while.cond.preheader, %if.else24, %if.else
  %i_level_prefix.1 = phi i32 [ 15, %if.else24 ], [ 15, %if.else ], [ 15, %while.cond.preheader ], [ %inc, %while.body ], !dbg !3713
  %i_level_code.2 = phi i32 [ %add26, %if.else24 ], [ %spec.select, %if.else ], [ 4096, %while.cond.preheader ], [ %sub23, %while.body ], !dbg !3714
    #dbg_value(i32 %i_level_code.2, !1507, !DIExpression(), !3655)
    #dbg_value(i32 %i_level_prefix.1, !1504, !DIExpression(), !3655)
  %add29 = add nuw nsw i32 %i_level_prefix.1, 1, !dbg !3715
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3716)
    #dbg_value(i32 %add29, !1682, !DIExpression(), !3716)
    #dbg_value(i32 1, !1683, !DIExpression(), !3716)
  %cur_bits.i80 = getelementptr inbounds i8, ptr %h, i64 1816, !dbg !3718
  %4 = load i64, ptr %cur_bits.i80, align 8, !dbg !3718
  %sh_prom.i81 = zext nneg i32 %add29 to i64, !dbg !3719
  %shl.i82 = shl i64 %4, %sh_prom.i81, !dbg !3719
  %or.i83 = or i64 %shl.i82, 1, !dbg !3720
  store i64 %or.i83, ptr %cur_bits.i80, align 8, !dbg !3721
  %i_left.i84 = getelementptr inbounds i8, ptr %h, i64 1824, !dbg !3722
  %5 = load i32, ptr %i_left.i84, align 8, !dbg !3723
  %sub.i85 = sub nsw i32 %5, %add29, !dbg !3723
  store i32 %sub.i85, ptr %i_left.i84, align 8, !dbg !3723
  %cmp.i86 = icmp slt i32 %sub.i85, 33, !dbg !3724
  br i1 %cmp.i86, label %if.then.i87, label %bs_write.exit95, !dbg !3725

if.then.i87:                                      ; preds = %if.end28
  %sh_prom6.i88 = zext nneg i32 %sub.i85 to i64, !dbg !3726
  %shl7.i89 = shl i64 %or.i83, %sh_prom6.i88, !dbg !3726
    #dbg_value(i64 %shl7.i89, !1698, !DIExpression(), !3727)
    #dbg_value(i64 %shl7.i89, !1705, !DIExpression(), !3729)
  %add.i.i.i90 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i89), !dbg !3731
  %conv8.i91 = trunc i64 %add.i.i.i90 to i32, !dbg !3732
  %p.i92 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3733
  %6 = load ptr, ptr %p.i92, align 8, !dbg !3733
  store i32 %conv8.i91, ptr %6, align 4, !dbg !3734
  %7 = load i32, ptr %i_left.i84, align 8, !dbg !3735
  %add.i93 = add nsw i32 %7, 32, !dbg !3735
  %8 = load ptr, ptr %p.i92, align 8, !dbg !3736
  %add.ptr.i94 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !3736
  store ptr %add.ptr.i94, ptr %p.i92, align 8, !dbg !3736
  %.pre = load i64, ptr %cur_bits.i80, align 8, !dbg !3737
  br label %bs_write.exit95, !dbg !3739

bs_write.exit95:                                  ; preds = %if.end28, %if.then.i87
  %9 = phi i32 [ %sub.i85, %if.end28 ], [ %add.i93, %if.then.i87 ], !dbg !3740
  %10 = phi i64 [ %or.i83, %if.end28 ], [ %.pre, %if.then.i87 ], !dbg !3737
  %sub30 = add nsw i32 %i_level_prefix.1, -3, !dbg !3741
  %notmask = shl nsw i32 -1, %sub30, !dbg !3742
  %sub33 = xor i32 %notmask, -1, !dbg !3742
  %and34 = and i32 %i_level_code.2, %sub33, !dbg !3743
    #dbg_value(ptr %h, !1677, !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value), !3744)
    #dbg_value(i32 %sub30, !1682, !DIExpression(), !3744)
    #dbg_value(i32 %and34, !1683, !DIExpression(), !3744)
  %sh_prom.i97 = zext nneg i32 %sub30 to i64, !dbg !3745
  %shl.i98 = shl i64 %10, %sh_prom.i97, !dbg !3745
  %conv.i99 = zext nneg i32 %and34 to i64, !dbg !3746
  %or.i100 = or i64 %shl.i98, %conv.i99, !dbg !3747
  store i64 %or.i100, ptr %cur_bits.i80, align 8, !dbg !3748
  %sub.i102 = sub nsw i32 %9, %sub30, !dbg !3740
  store i32 %sub.i102, ptr %i_left.i84, align 8, !dbg !3740
  %cmp.i103 = icmp slt i32 %sub.i102, 33, !dbg !3749
  br i1 %cmp.i103, label %if.end35.sink.split, label %if.end35, !dbg !3750

if.end35.sink.split:                              ; preds = %bs_write.exit95, %if.then
  %sub.i102.sink = phi i32 [ %sub.i, %if.then ], [ %sub.i102, %bs_write.exit95 ]
  %or.i100.sink = phi i64 [ %or.i, %if.then ], [ %or.i100, %bs_write.exit95 ]
  %i_left.i84.sink119 = phi ptr [ %i_left.i, %if.then ], [ %i_left.i84, %bs_write.exit95 ]
  %sh_prom6.i105 = zext nneg i32 %sub.i102.sink to i64, !dbg !3751
  %shl7.i106 = shl i64 %or.i100.sink, %sh_prom6.i105, !dbg !3751
  %add.i.i.i107 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i106), !dbg !3753
  %conv8.i108 = trunc i64 %add.i.i.i107 to i32, !dbg !3755
  %p.i109 = getelementptr inbounds i8, ptr %h, i64 1800, !dbg !3756
  %11 = load ptr, ptr %p.i109, align 8, !dbg !3756
  store i32 %conv8.i108, ptr %11, align 4, !dbg !3757
  %12 = load i32, ptr %i_left.i84.sink119, align 8, !dbg !3758
  %add.i110 = add nsw i32 %12, 32, !dbg !3758
  store i32 %add.i110, ptr %i_left.i84.sink119, align 8, !dbg !3758
  %13 = load ptr, ptr %p.i109, align 8, !dbg !3759
  %add.ptr.i111 = getelementptr inbounds i8, ptr %13, i64 4, !dbg !3759
  store ptr %add.ptr.i111, ptr %p.i109, align 8, !dbg !3759
  br label %if.end35, !dbg !3760

if.end35:                                         ; preds = %if.end35.sink.split, %bs_write.exit95, %if.then
  %spec.select79 = tail call i32 @llvm.umax.i32(i32 %i_suffix_length, i32 1), !dbg !3760
    #dbg_value(i32 %spec.select79, !1501, !DIExpression(), !3655)
  %idxprom = sext i32 %spec.select79 to i64, !dbg !3761
  %arrayidx = getelementptr inbounds [7 x i16], ptr @block_residual_write_cavlc_escape.next_suffix, i64 0, i64 %idxprom, !dbg !3761
  %14 = load i16, ptr %arrayidx, align 2, !dbg !3761
  %conv = zext i16 %14 to i32, !dbg !3761
  %cmp40 = icmp sgt i32 %sub, %conv, !dbg !3763
  %inc43 = zext i1 %cmp40 to i32, !dbg !3764
  %i_suffix_length.addr.1 = add nsw i32 %spec.select79, %inc43, !dbg !3764
    #dbg_value(i32 %i_suffix_length.addr.1, !1501, !DIExpression(), !3655)
  ret i32 %i_suffix_length.addr.1, !dbg !3765
}

declare !dbg !3766 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!1322}
!llvm.module.flags = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603}
!llvm.ident = !{!1604}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i_offsets", scope: !2, file: !3, line: 294, type: !1596, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "x264_macroblock_write_cavlc", scope: !3, file: !3, line: 290, type: !4, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1515)
!3 = !DIFile(filename: "x264_src/encoder/cavlc.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "75a5da4a09d0be3f3469f38c5a0088f2")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !8, line: 46, baseType: !9)
!8 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !10, line: 381, size: 266752, elements: !11)
!10 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!11 = !{!12, !191, !195, !196, !197, !198, !199, !200, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !336, !338, !366, !368, !369, !370, !376, !380, !381, !382, !389, !393, !394, !395, !400, !403, !404, !483, !500, !664, !665, !666, !667, !671, !672, !673, !674, !675, !676, !677, !692, !886, !890, !951, !954, !956, !958, !959, !962, !967, !976, !977, !985, !987, !992, !1068, !1154, !1198, !1220, !1269, !1298}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !9, file: !10, line: 384, baseType: !13, size: 5632)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !8, line: 376, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !8, line: 176, size: 5632, elements: !15)
!15 = !{!16, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !70, !71, !72, !73, !77, !78, !92, !93, !94, !95, !96, !127, !169, !170, !171, !172, !173, !174, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !14, file: !8, line: 179, baseType: !17, size: 32)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !14, file: !8, line: 180, baseType: !19, size: 32, offset: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !14, file: !8, line: 181, baseType: !19, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !14, file: !8, line: 182, baseType: !19, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !14, file: !8, line: 183, baseType: !19, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !14, file: !8, line: 186, baseType: !19, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !14, file: !8, line: 187, baseType: !19, size: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !14, file: !8, line: 188, baseType: !19, size: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !14, file: !8, line: 189, baseType: !19, size: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !14, file: !8, line: 190, baseType: !19, size: 32, offset: 288)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !14, file: !8, line: 198, baseType: !19, size: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !14, file: !8, line: 215, baseType: !30, size: 288, offset: 352)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 200, size: 288, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !30, file: !8, line: 203, baseType: !19, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !30, file: !8, line: 204, baseType: !19, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !30, file: !8, line: 206, baseType: !19, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !30, file: !8, line: 209, baseType: !19, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !30, file: !8, line: 210, baseType: !19, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !30, file: !8, line: 211, baseType: !19, size: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !30, file: !8, line: 212, baseType: !19, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !30, file: !8, line: 213, baseType: !19, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !30, file: !8, line: 214, baseType: !19, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !14, file: !8, line: 218, baseType: !19, size: 32, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !14, file: !8, line: 219, baseType: !19, size: 32, offset: 672)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !14, file: !8, line: 220, baseType: !19, size: 32, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !14, file: !8, line: 221, baseType: !19, size: 32, offset: 736)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !14, file: !8, line: 222, baseType: !19, size: 32, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !14, file: !8, line: 224, baseType: !19, size: 32, offset: 800)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !14, file: !8, line: 225, baseType: !19, size: 32, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !14, file: !8, line: 226, baseType: !19, size: 32, offset: 864)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !14, file: !8, line: 227, baseType: !19, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !14, file: !8, line: 229, baseType: !19, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !14, file: !8, line: 230, baseType: !19, size: 32, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !14, file: !8, line: 231, baseType: !19, size: 32, offset: 992)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !14, file: !8, line: 233, baseType: !19, size: 32, offset: 1024)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !14, file: !8, line: 234, baseType: !19, size: 32, offset: 1056)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !14, file: !8, line: 236, baseType: !19, size: 32, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !14, file: !8, line: 237, baseType: !19, size: 32, offset: 1120)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !14, file: !8, line: 239, baseType: !19, size: 32, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !14, file: !8, line: 240, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !14, file: !8, line: 241, baseType: !62, size: 128, offset: 1280)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !68)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !64, line: 24, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !66, line: 38, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !{!69}
!69 = !DISubrange(count: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !14, file: !8, line: 242, baseType: !62, size: 128, offset: 1408)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !14, file: !8, line: 243, baseType: !62, size: 128, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !14, file: !8, line: 244, baseType: !62, size: 128, offset: 1664)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !14, file: !8, line: 245, baseType: !74, size: 512, offset: 1792)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 512, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !14, file: !8, line: 246, baseType: !74, size: 512, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !14, file: !8, line: 249, baseType: !79, size: 64, offset: 2816)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !19, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !86, file: !3, baseType: !17, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !86, file: !3, baseType: !17, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !86, file: !3, baseType: !82, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !86, file: !3, baseType: !82, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !14, file: !8, line: 250, baseType: !82, size: 64, offset: 2880)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !14, file: !8, line: 251, baseType: !19, size: 32, offset: 2944)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !14, file: !8, line: 252, baseType: !19, size: 32, offset: 2976)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !14, file: !8, line: 253, baseType: !59, size: 64, offset: 3008)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !14, file: !8, line: 287, baseType: !97, size: 800, offset: 3072)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 256, size: 800, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !121, !125, !126}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !97, file: !8, line: 258, baseType: !17, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !97, file: !8, line: 259, baseType: !17, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !97, file: !8, line: 261, baseType: !19, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !97, file: !8, line: 262, baseType: !19, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !97, file: !8, line: 263, baseType: !19, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !97, file: !8, line: 264, baseType: !19, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !97, file: !8, line: 265, baseType: !19, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !97, file: !8, line: 267, baseType: !19, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !97, file: !8, line: 268, baseType: !19, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !97, file: !8, line: 269, baseType: !19, size: 32, offset: 288)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !97, file: !8, line: 270, baseType: !19, size: 32, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !97, file: !8, line: 271, baseType: !19, size: 32, offset: 352)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !97, file: !8, line: 272, baseType: !19, size: 32, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !97, file: !8, line: 273, baseType: !19, size: 32, offset: 416)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !97, file: !8, line: 274, baseType: !19, size: 32, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !97, file: !8, line: 275, baseType: !19, size: 32, offset: 480)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !97, file: !8, line: 276, baseType: !19, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !97, file: !8, line: 277, baseType: !19, size: 32, offset: 544)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !97, file: !8, line: 278, baseType: !118, size: 32, offset: 576)
!118 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !97, file: !8, line: 279, baseType: !118, size: 32, offset: 608)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !97, file: !8, line: 280, baseType: !19, size: 32, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !97, file: !8, line: 283, baseType: !122, size: 64, offset: 672)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !97, file: !8, line: 285, baseType: !19, size: 32, offset: 736)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !97, file: !8, line: 286, baseType: !19, size: 32, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !14, file: !8, line: 327, baseType: !128, size: 1152, offset: 3904)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 290, size: 1152, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !167, !168}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !128, file: !8, line: 292, baseType: !19, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !128, file: !8, line: 294, baseType: !19, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !128, file: !8, line: 295, baseType: !19, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !128, file: !8, line: 296, baseType: !19, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !128, file: !8, line: 297, baseType: !19, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !128, file: !8, line: 299, baseType: !19, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !128, file: !8, line: 300, baseType: !118, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !128, file: !8, line: 301, baseType: !118, size: 32, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !128, file: !8, line: 302, baseType: !118, size: 32, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !128, file: !8, line: 303, baseType: !19, size: 32, offset: 288)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !128, file: !8, line: 304, baseType: !19, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !128, file: !8, line: 305, baseType: !118, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !128, file: !8, line: 306, baseType: !118, size: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !128, file: !8, line: 307, baseType: !118, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !128, file: !8, line: 309, baseType: !19, size: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !128, file: !8, line: 310, baseType: !118, size: 32, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !128, file: !8, line: 311, baseType: !19, size: 32, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !128, file: !8, line: 312, baseType: !19, size: 32, offset: 544)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !128, file: !8, line: 315, baseType: !19, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !128, file: !8, line: 316, baseType: !59, size: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !128, file: !8, line: 317, baseType: !19, size: 32, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !128, file: !8, line: 318, baseType: !59, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !128, file: !8, line: 321, baseType: !118, size: 32, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !128, file: !8, line: 322, baseType: !118, size: 32, offset: 864)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !128, file: !8, line: 323, baseType: !118, size: 32, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !128, file: !8, line: 324, baseType: !156, size: 64, offset: 960)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !8, line: 174, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 167, size: 256, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !158, file: !8, line: 169, baseType: !19, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !158, file: !8, line: 169, baseType: !19, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !158, file: !8, line: 170, baseType: !19, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !158, file: !8, line: 171, baseType: !19, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !158, file: !8, line: 172, baseType: !118, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !158, file: !8, line: 173, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !128, file: !8, line: 325, baseType: !19, size: 32, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !128, file: !8, line: 326, baseType: !59, size: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !14, file: !8, line: 330, baseType: !19, size: 32, offset: 5056)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !14, file: !8, line: 331, baseType: !19, size: 32, offset: 5088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !14, file: !8, line: 332, baseType: !19, size: 32, offset: 5120)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !14, file: !8, line: 334, baseType: !19, size: 32, offset: 5152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !14, file: !8, line: 335, baseType: !19, size: 32, offset: 5184)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !14, file: !8, line: 336, baseType: !175, size: 32, offset: 5216)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !64, line: 26, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !66, line: 42, baseType: !17)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !14, file: !8, line: 337, baseType: !175, size: 32, offset: 5248)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !14, file: !8, line: 338, baseType: !175, size: 32, offset: 5280)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !14, file: !8, line: 339, baseType: !175, size: 32, offset: 5312)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !14, file: !8, line: 340, baseType: !19, size: 32, offset: 5344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !14, file: !8, line: 344, baseType: !19, size: 32, offset: 5376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !14, file: !8, line: 356, baseType: !19, size: 32, offset: 5408)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !14, file: !8, line: 364, baseType: !19, size: 32, offset: 5440)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !14, file: !8, line: 367, baseType: !19, size: 32, offset: 5472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !14, file: !8, line: 368, baseType: !19, size: 32, offset: 5504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !14, file: !8, line: 369, baseType: !19, size: 32, offset: 5536)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !14, file: !8, line: 375, baseType: !188, size: 64, offset: 5568)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !82}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !9, file: !10, line: 386, baseType: !192, size: 8256, offset: 5632)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8256, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 129)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !9, file: !10, line: 387, baseType: !19, size: 32, offset: 13888)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !9, file: !10, line: 388, baseType: !19, size: 32, offset: 13920)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !9, file: !10, line: 389, baseType: !19, size: 32, offset: 13952)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !9, file: !10, line: 390, baseType: !19, size: 32, offset: 13984)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !9, file: !10, line: 391, baseType: !19, size: 32, offset: 14016)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !9, file: !10, line: 402, baseType: !201, size: 576, offset: 14080)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 394, size: 576, elements: !202)
!202 = !{!203, !204, !205, !215, !216, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !201, file: !10, line: 396, baseType: !19, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !201, file: !10, line: 397, baseType: !19, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !201, file: !10, line: 398, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !8, line: 604, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 593, size: 192, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !208, file: !8, line: 595, baseType: !19, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !208, file: !8, line: 596, baseType: !19, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !208, file: !8, line: 599, baseType: !19, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !208, file: !8, line: 603, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !201, file: !10, line: 399, baseType: !19, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !201, file: !10, line: 400, baseType: !214, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !201, file: !10, line: 401, baseType: !218, size: 320, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !219, line: 56, baseType: !220)
!219 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !219, line: 47, size: 320, elements: !221)
!221 = !{!222, !223, !224, !225, !229, !230}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !220, file: !219, line: 49, baseType: !214, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !220, file: !219, line: 50, baseType: !214, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !220, file: !219, line: 51, baseType: !214, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !220, file: !219, line: 53, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !227, line: 87, baseType: !228)
!227 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!228 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !220, file: !219, line: 54, baseType: !19, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !220, file: !219, line: 55, baseType: !19, size: 32, offset: 288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !9, file: !10, line: 404, baseType: !214, size: 64, offset: 14656)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !9, file: !10, line: 405, baseType: !19, size: 32, offset: 14720)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !9, file: !10, line: 410, baseType: !19, size: 32, offset: 14752)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !9, file: !10, line: 411, baseType: !19, size: 32, offset: 14784)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !9, file: !10, line: 413, baseType: !19, size: 32, offset: 14816)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !9, file: !10, line: 415, baseType: !19, size: 32, offset: 14848)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !9, file: !10, line: 416, baseType: !19, size: 32, offset: 14880)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !9, file: !10, line: 418, baseType: !19, size: 32, offset: 14912)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !9, file: !10, line: 419, baseType: !19, size: 32, offset: 14944)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !9, file: !10, line: 420, baseType: !19, size: 32, offset: 14976)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !9, file: !10, line: 421, baseType: !19, size: 32, offset: 15008)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !9, file: !10, line: 422, baseType: !19, size: 32, offset: 15040)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !9, file: !10, line: 424, baseType: !19, size: 32, offset: 15072)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !9, file: !10, line: 425, baseType: !19, size: 32, offset: 15104)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !9, file: !10, line: 427, baseType: !19, size: 32, offset: 15136)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !9, file: !10, line: 430, baseType: !247, size: 10400, offset: 15168)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 10400, elements: !334)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !249, line: 154, baseType: !250)
!249 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 52, size: 10400, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !269, !270, !271, !272, !273, !274, !275, !276, !277, !284, !285, !333}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !250, file: !249, line: 54, baseType: !19, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !250, file: !249, line: 56, baseType: !19, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !250, file: !249, line: 57, baseType: !19, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !250, file: !249, line: 59, baseType: !19, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !250, file: !249, line: 60, baseType: !19, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !250, file: !249, line: 61, baseType: !19, size: 32, offset: 160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !250, file: !249, line: 63, baseType: !19, size: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !250, file: !249, line: 65, baseType: !19, size: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !250, file: !249, line: 67, baseType: !19, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !250, file: !249, line: 69, baseType: !19, size: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !250, file: !249, line: 70, baseType: !19, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !250, file: !249, line: 71, baseType: !19, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !250, file: !249, line: 72, baseType: !19, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !250, file: !249, line: 73, baseType: !266, size: 8192, offset: 416)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !250, file: !249, line: 75, baseType: !19, size: 32, offset: 8608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !250, file: !249, line: 76, baseType: !19, size: 32, offset: 8640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !250, file: !249, line: 77, baseType: !19, size: 32, offset: 8672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !250, file: !249, line: 78, baseType: !19, size: 32, offset: 8704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !250, file: !249, line: 79, baseType: !19, size: 32, offset: 8736)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !250, file: !249, line: 80, baseType: !19, size: 32, offset: 8768)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !250, file: !249, line: 81, baseType: !19, size: 32, offset: 8800)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !250, file: !249, line: 83, baseType: !19, size: 32, offset: 8832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !250, file: !249, line: 90, baseType: !278, size: 128, offset: 8864)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !249, line: 84, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !278, file: !249, line: 86, baseType: !19, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !278, file: !249, line: 87, baseType: !19, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !278, file: !249, line: 88, baseType: !19, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !278, file: !249, line: 89, baseType: !19, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !250, file: !249, line: 92, baseType: !19, size: 32, offset: 8992)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !250, file: !249, line: 150, baseType: !286, size: 1344, offset: 9024)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !249, line: 93, size: 1344, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !286, file: !249, line: 95, baseType: !19, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !286, file: !249, line: 96, baseType: !19, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !286, file: !249, line: 97, baseType: !19, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !286, file: !249, line: 99, baseType: !19, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !286, file: !249, line: 100, baseType: !19, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !286, file: !249, line: 102, baseType: !19, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !286, file: !249, line: 103, baseType: !19, size: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !286, file: !249, line: 104, baseType: !19, size: 32, offset: 224)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !286, file: !249, line: 105, baseType: !19, size: 32, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !286, file: !249, line: 106, baseType: !19, size: 32, offset: 288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !286, file: !249, line: 107, baseType: !19, size: 32, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !286, file: !249, line: 108, baseType: !19, size: 32, offset: 352)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !286, file: !249, line: 110, baseType: !19, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !286, file: !249, line: 111, baseType: !19, size: 32, offset: 416)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !286, file: !249, line: 112, baseType: !19, size: 32, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !286, file: !249, line: 114, baseType: !19, size: 32, offset: 480)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !286, file: !249, line: 115, baseType: !175, size: 32, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !286, file: !249, line: 116, baseType: !175, size: 32, offset: 544)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !286, file: !249, line: 117, baseType: !19, size: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !286, file: !249, line: 119, baseType: !19, size: 32, offset: 608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !286, file: !249, line: 120, baseType: !19, size: 32, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !286, file: !249, line: 137, baseType: !310, size: 384, offset: 672)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !249, line: 122, size: 384, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !310, file: !249, line: 124, baseType: !19, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !310, file: !249, line: 125, baseType: !19, size: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !310, file: !249, line: 126, baseType: !19, size: 32, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !310, file: !249, line: 127, baseType: !19, size: 32, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !310, file: !249, line: 128, baseType: !19, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !310, file: !249, line: 129, baseType: !19, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !310, file: !249, line: 130, baseType: !19, size: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !310, file: !249, line: 131, baseType: !19, size: 32, offset: 224)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !310, file: !249, line: 133, baseType: !19, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !310, file: !249, line: 134, baseType: !19, size: 32, offset: 288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !310, file: !249, line: 135, baseType: !19, size: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !310, file: !249, line: 136, baseType: !19, size: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !286, file: !249, line: 139, baseType: !19, size: 32, offset: 1056)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !286, file: !249, line: 140, baseType: !19, size: 32, offset: 1088)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !286, file: !249, line: 141, baseType: !19, size: 32, offset: 1120)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !286, file: !249, line: 142, baseType: !19, size: 32, offset: 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !286, file: !249, line: 143, baseType: !19, size: 32, offset: 1184)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !286, file: !249, line: 144, baseType: !19, size: 32, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !286, file: !249, line: 145, baseType: !19, size: 32, offset: 1248)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !286, file: !249, line: 146, baseType: !19, size: 32, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !286, file: !249, line: 147, baseType: !19, size: 32, offset: 1312)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !250, file: !249, line: 152, baseType: !19, size: 32, offset: 10368)
!334 = !{!335}
!335 = !DISubrange(count: 1)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !9, file: !10, line: 431, baseType: !337, size: 64, offset: 25600)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !9, file: !10, line: 432, baseType: !339, size: 960, offset: 25664)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 960, elements: !334)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !249, line: 186, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 156, size: 960, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !341, file: !249, line: 158, baseType: !19, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !341, file: !249, line: 159, baseType: !19, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !341, file: !249, line: 161, baseType: !19, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !341, file: !249, line: 163, baseType: !19, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !341, file: !249, line: 164, baseType: !19, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !341, file: !249, line: 166, baseType: !19, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !341, file: !249, line: 167, baseType: !19, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !341, file: !249, line: 169, baseType: !19, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !341, file: !249, line: 170, baseType: !19, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !341, file: !249, line: 172, baseType: !19, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !341, file: !249, line: 173, baseType: !19, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !341, file: !249, line: 175, baseType: !19, size: 32, offset: 352)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !341, file: !249, line: 177, baseType: !19, size: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !341, file: !249, line: 178, baseType: !19, size: 32, offset: 416)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !341, file: !249, line: 179, baseType: !19, size: 32, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !341, file: !249, line: 181, baseType: !19, size: 32, offset: 480)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !341, file: !249, line: 183, baseType: !19, size: 32, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !341, file: !249, line: 184, baseType: !361, size: 384, offset: 576)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 384, elements: !364)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!364 = !{!365}
!365 = !DISubrange(count: 6)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !9, file: !10, line: 433, baseType: !367, size: 64, offset: 26624)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !9, file: !10, line: 434, baseType: !19, size: 32, offset: 26688)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !9, file: !10, line: 437, baseType: !19, size: 32, offset: 26720)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !9, file: !10, line: 440, baseType: !371, size: 256, offset: 26752)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !374)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !68)
!374 = !{!375}
!375 = !DISubrange(count: 4)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !9, file: !10, line: 441, baseType: !377, size: 128, offset: 27008)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !123)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !75)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !9, file: !10, line: 443, baseType: !371, size: 256, offset: 27136)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !9, file: !10, line: 444, baseType: !377, size: 128, offset: 27392)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !9, file: !10, line: 446, baseType: !383, size: 256, offset: 27520)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !374)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 256, elements: !68)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !64, line: 25, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !66, line: 40, baseType: !388)
!388 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !9, file: !10, line: 447, baseType: !390, size: 128, offset: 27776)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !123)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 1024, elements: !75)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !9, file: !10, line: 448, baseType: !383, size: 256, offset: 27904)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !9, file: !10, line: 449, baseType: !390, size: 128, offset: 28160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !9, file: !10, line: 454, baseType: !396, size: 5888, offset: 28288)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 5888, elements: !398)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!398 = !{!399}
!399 = !DISubrange(count: 92)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !9, file: !10, line: 455, baseType: !401, size: 23552, offset: 34176)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 23552, elements: !402)
!402 = !{!399, !375}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !9, file: !10, line: 457, baseType: !362, size: 64, offset: 57728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !9, file: !10, line: 460, baseType: !405, size: 53376, offset: 57856)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !10, line: 364, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 302, size: 53376, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !436, !467, !468, !469, !475, !476, !477, !478, !479, !480, !481, !482}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !406, file: !10, line: 304, baseType: !337, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !406, file: !10, line: 305, baseType: !367, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !406, file: !10, line: 307, baseType: !19, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !406, file: !10, line: 308, baseType: !19, size: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !406, file: !10, line: 309, baseType: !19, size: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !406, file: !10, line: 311, baseType: !19, size: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !406, file: !10, line: 313, baseType: !19, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !406, file: !10, line: 315, baseType: !19, size: 32, offset: 288)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !406, file: !10, line: 316, baseType: !19, size: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !406, file: !10, line: 317, baseType: !19, size: 32, offset: 352)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !406, file: !10, line: 319, baseType: !19, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !406, file: !10, line: 321, baseType: !19, size: 32, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !406, file: !10, line: 322, baseType: !19, size: 32, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !406, file: !10, line: 324, baseType: !122, size: 64, offset: 480)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !406, file: !10, line: 325, baseType: !19, size: 32, offset: 544)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !406, file: !10, line: 327, baseType: !19, size: 32, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !406, file: !10, line: 329, baseType: !19, size: 32, offset: 608)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !406, file: !10, line: 330, baseType: !19, size: 32, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !406, file: !10, line: 331, baseType: !19, size: 32, offset: 672)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !406, file: !10, line: 333, baseType: !19, size: 32, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !406, file: !10, line: 334, baseType: !19, size: 32, offset: 736)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !406, file: !10, line: 339, baseType: !430, size: 2048, offset: 768)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 2048, elements: !435)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !10, line: 335, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !431, file: !10, line: 337, baseType: !19, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !431, file: !10, line: 338, baseType: !19, size: 32, offset: 32)
!435 = !{!124, !69}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !406, file: !10, line: 342, baseType: !437, size: 49152, align: 128, offset: 2816)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 49152, align: 128, elements: !464)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !439, line: 36, baseType: !440, align: 128)
!439 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !439, line: 26, size: 512, elements: !441)
!441 = !{!442, !450, !451, !454, !455, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !440, file: !439, line: 30, baseType: !443, size: 128, align: 128)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !448)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !445, line: 25, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !66, line: 39, baseType: !447)
!447 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!448 = !{!449}
!449 = !DISubrange(count: 8)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !440, file: !439, line: 31, baseType: !443, size: 128, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !440, file: !439, line: 32, baseType: !452, size: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !445, line: 26, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !66, line: 41, baseType: !19)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !440, file: !439, line: 33, baseType: !452, size: 32, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !440, file: !439, line: 34, baseType: !452, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !440, file: !439, line: 35, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !439, line: 25, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !214, !19, !214, !19, !462, !19}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!464 = !{!465, !466}
!465 = !DISubrange(count: 32)
!466 = !DISubrange(count: 3)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !406, file: !10, line: 344, baseType: !19, size: 32, offset: 51968)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !406, file: !10, line: 345, baseType: !19, size: 32, offset: 52000)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !406, file: !10, line: 350, baseType: !470, size: 1024, offset: 52032)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1024, elements: !68)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !10, line: 346, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !471, file: !10, line: 348, baseType: !19, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !471, file: !10, line: 349, baseType: !19, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !406, file: !10, line: 352, baseType: !19, size: 32, offset: 53056)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !406, file: !10, line: 354, baseType: !19, size: 32, offset: 53088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !406, file: !10, line: 355, baseType: !19, size: 32, offset: 53120)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !406, file: !10, line: 356, baseType: !19, size: 32, offset: 53152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !406, file: !10, line: 357, baseType: !19, size: 32, offset: 53184)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !406, file: !10, line: 360, baseType: !19, size: 32, offset: 53216)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !406, file: !10, line: 361, baseType: !19, size: 32, offset: 53248)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !406, file: !10, line: 362, baseType: !19, size: 32, offset: 53280)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !9, file: !10, line: 463, baseType: !484, size: 4096, offset: 111232)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !485, line: 46, baseType: !486)
!485 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 27, size: 4096, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !486, file: !485, line: 30, baseType: !19, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !486, file: !485, line: 31, baseType: !19, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !486, file: !485, line: 34, baseType: !19, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !486, file: !485, line: 35, baseType: !19, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !486, file: !485, line: 37, baseType: !214, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !486, file: !485, line: 38, baseType: !214, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !486, file: !485, line: 39, baseType: !214, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !486, file: !485, line: 42, baseType: !19, size: 32, align: 128, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !486, file: !485, line: 45, baseType: !497, size: 3680, offset: 416)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3680, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 460)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !9, file: !10, line: 494, baseType: !501, size: 2112, offset: 115328)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 465, size: 2112, elements: !502)
!502 = !{!503, !644, !646, !647, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !660, !661, !662, !663}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !501, file: !10, line: 468, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !507, line: 146, baseType: !508)
!507 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !507, line: 31, size: 125056, elements: !509)
!509 = !{!510, !511, !512, !513, !516, !517, !518, !519, !520, !521, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !540, !541, !542, !543, !544, !545, !547, !549, !550, !551, !552, !553, !556, !558, !559, !561, !566, !567, !571, !572, !576, !580, !583, !585, !586, !588, !589, !591, !592, !593, !596, !598, !599, !600, !602, !603, !604, !605, !606, !607, !608, !609, !611, !612, !616, !625, !629, !631, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !508, file: !507, line: 34, baseType: !19, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !508, file: !507, line: 35, baseType: !19, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !508, file: !507, line: 36, baseType: !19, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !508, file: !507, line: 37, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !445, line: 27, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !66, line: 44, baseType: !228)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !508, file: !507, line: 38, baseType: !514, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !508, file: !507, line: 39, baseType: !19, size: 32, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !508, file: !507, line: 40, baseType: !19, size: 32, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !508, file: !507, line: 41, baseType: !19, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !508, file: !507, line: 42, baseType: !19, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !508, file: !507, line: 43, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !508, file: !507, line: 45, baseType: !19, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !508, file: !507, line: 46, baseType: !19, size: 32, offset: 480)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !508, file: !507, line: 47, baseType: !19, size: 32, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !508, file: !507, line: 48, baseType: !19, size: 32, offset: 544)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !508, file: !507, line: 49, baseType: !19, size: 32, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !508, file: !507, line: 50, baseType: !19, size: 32, offset: 608)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !508, file: !507, line: 51, baseType: !19, size: 32, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !508, file: !507, line: 52, baseType: !63, size: 8, offset: 672)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !508, file: !507, line: 53, baseType: !63, size: 8, offset: 680)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !508, file: !507, line: 54, baseType: !63, size: 8, offset: 688)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !508, file: !507, line: 55, baseType: !118, size: 32, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !508, file: !507, line: 56, baseType: !118, size: 32, offset: 736)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !508, file: !507, line: 57, baseType: !19, size: 32, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !508, file: !507, line: 60, baseType: !19, size: 32, offset: 800)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !508, file: !507, line: 61, baseType: !538, size: 96, offset: 832)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !539)
!539 = !{!466}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !508, file: !507, line: 62, baseType: !538, size: 96, offset: 928)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !508, file: !507, line: 63, baseType: !538, size: 96, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !508, file: !507, line: 64, baseType: !19, size: 32, offset: 1120)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !508, file: !507, line: 65, baseType: !19, size: 32, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !508, file: !507, line: 66, baseType: !19, size: 32, offset: 1184)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !508, file: !507, line: 67, baseType: !546, size: 192, offset: 1216)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 192, elements: !539)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !508, file: !507, line: 68, baseType: !548, size: 256, offset: 1408)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !374)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !508, file: !507, line: 69, baseType: !548, size: 256, offset: 1664)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !508, file: !507, line: 70, baseType: !397, size: 64, offset: 1920)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !508, file: !507, line: 74, baseType: !548, size: 256, offset: 1984)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !508, file: !507, line: 75, baseType: !548, size: 256, offset: 2240)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !508, file: !507, line: 77, baseType: !554, size: 24576, align: 128, offset: 2560)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 24576, align: 128, elements: !555)
!555 = !{!69, !466}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !508, file: !507, line: 78, baseType: !557, size: 1024, offset: 27136)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1024, elements: !68)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !508, file: !507, line: 79, baseType: !19, size: 32, offset: 28160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !508, file: !507, line: 80, baseType: !560, size: 64, offset: 28224)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !508, file: !507, line: 83, baseType: !562, size: 64, offset: 28288)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !445, line: 24, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !66, line: 37, baseType: !565)
!565 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !508, file: !507, line: 84, baseType: !214, size: 64, offset: 28352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !508, file: !507, line: 85, baseType: !568, size: 128, offset: 28416)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 128, elements: !123)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 32, elements: !123)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !508, file: !507, line: 86, baseType: !569, size: 64, offset: 28544)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !508, file: !507, line: 87, baseType: !573, size: 2176, offset: 28608)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 2176, elements: !574)
!574 = !{!124, !575}
!575 = !DISubrange(count: 17)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !508, file: !507, line: 92, baseType: !577, size: 20736, offset: 30784)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 20736, elements: !578)
!578 = !{!579, !579}
!579 = !DISubrange(count: 18)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !508, file: !507, line: 96, baseType: !581, size: 2176, offset: 51520)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 2176, elements: !574)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !508, file: !507, line: 97, baseType: !584, size: 128, offset: 53696)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 128, elements: !123)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !508, file: !507, line: 98, baseType: !122, size: 64, offset: 53824)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !508, file: !507, line: 99, baseType: !587, size: 1024, offset: 53888)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !435)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !508, file: !507, line: 100, baseType: !570, size: 32, offset: 54912)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !508, file: !507, line: 105, baseType: !590, size: 10368, offset: 54944)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 10368, elements: !578)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !508, file: !507, line: 106, baseType: !590, size: 10368, offset: 65312)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !508, file: !507, line: 107, baseType: !19, size: 32, offset: 75680)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !508, file: !507, line: 108, baseType: !594, size: 576, offset: 75712)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 576, elements: !595)
!595 = !{!579}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !508, file: !507, line: 109, baseType: !597, size: 20736, offset: 76288)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 20736, elements: !578)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !508, file: !507, line: 110, baseType: !582, size: 64, offset: 97024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !508, file: !507, line: 111, baseType: !582, size: 64, offset: 97088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !508, file: !507, line: 112, baseType: !601, size: 64, offset: 97152)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !508, file: !507, line: 113, baseType: !601, size: 64, offset: 97216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !508, file: !507, line: 114, baseType: !601, size: 64, offset: 97280)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !508, file: !507, line: 115, baseType: !19, size: 32, offset: 97344)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !508, file: !507, line: 116, baseType: !397, size: 64, offset: 97408)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !508, file: !507, line: 117, baseType: !397, size: 64, offset: 97472)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !508, file: !507, line: 118, baseType: !397, size: 64, offset: 97536)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !508, file: !507, line: 119, baseType: !19, size: 32, offset: 97600)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !508, file: !507, line: 120, baseType: !610, size: 576, offset: 97632)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 576, elements: !595)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !508, file: !507, line: 121, baseType: !175, size: 32, offset: 98208)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !508, file: !507, line: 122, baseType: !613, size: 64, offset: 98240)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !64, line: 27, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !66, line: 45, baseType: !615)
!615 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !508, file: !507, line: 125, baseType: !617, size: 256, offset: 98304)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !8, line: 503, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 496, size: 256, elements: !619)
!619 = !{!620, !622, !623, !624}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !618, file: !8, line: 498, baseType: !621, size: 64)
!621 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !618, file: !8, line: 499, baseType: !621, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !618, file: !8, line: 500, baseType: !621, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !618, file: !8, line: 502, baseType: !621, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !508, file: !507, line: 128, baseType: !626, size: 2008, offset: 98560)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2008, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 251)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !508, file: !507, line: 129, baseType: !630, size: 8032, offset: 100576)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8032, elements: !627)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !508, file: !507, line: 130, baseType: !632, size: 16064, offset: 108608)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 16064, elements: !627)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !508, file: !507, line: 131, baseType: !19, size: 32, offset: 124672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !508, file: !507, line: 132, baseType: !19, size: 32, offset: 124704)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !508, file: !507, line: 135, baseType: !19, size: 32, offset: 124736)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !508, file: !507, line: 136, baseType: !19, size: 32, offset: 124768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !508, file: !507, line: 137, baseType: !19, size: 32, offset: 124800)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !508, file: !507, line: 138, baseType: !19, size: 32, offset: 124832)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !508, file: !507, line: 139, baseType: !19, size: 32, offset: 124864)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !508, file: !507, line: 142, baseType: !118, size: 32, offset: 124896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !508, file: !507, line: 143, baseType: !19, size: 32, offset: 124928)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !508, file: !507, line: 144, baseType: !19, size: 32, offset: 124960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !508, file: !507, line: 145, baseType: !19, size: 32, offset: 124992)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !501, file: !10, line: 470, baseType: !645, size: 128, offset: 64)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 128, elements: !123)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !501, file: !10, line: 473, baseType: !504, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !501, file: !10, line: 476, baseType: !648, size: 1152, offset: 256)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1152, elements: !595)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !501, file: !10, line: 478, baseType: !19, size: 32, offset: 1408)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !501, file: !10, line: 480, baseType: !19, size: 32, offset: 1440)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !501, file: !10, line: 482, baseType: !19, size: 32, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !501, file: !10, line: 483, baseType: !19, size: 32, offset: 1504)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !501, file: !10, line: 484, baseType: !19, size: 32, offset: 1536)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !501, file: !10, line: 485, baseType: !19, size: 32, offset: 1568)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !501, file: !10, line: 486, baseType: !19, size: 32, offset: 1600)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !501, file: !10, line: 487, baseType: !514, size: 64, offset: 1664)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !501, file: !10, line: 488, baseType: !514, size: 64, offset: 1728)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !501, file: !10, line: 489, baseType: !659, size: 128, offset: 1792)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 128, elements: !123)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !501, file: !10, line: 490, baseType: !514, size: 64, offset: 1920)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !501, file: !10, line: 491, baseType: !514, size: 64, offset: 1984)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !501, file: !10, line: 492, baseType: !19, size: 32, offset: 2048)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !501, file: !10, line: 493, baseType: !19, size: 32, offset: 2080)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !9, file: !10, line: 497, baseType: !505, size: 64, offset: 117440)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !9, file: !10, line: 500, baseType: !505, size: 64, offset: 117504)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !9, file: !10, line: 503, baseType: !19, size: 32, offset: 117568)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !9, file: !10, line: 504, baseType: !668, size: 1216, offset: 117632)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1216, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 19)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !9, file: !10, line: 505, baseType: !19, size: 32, offset: 118848)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !9, file: !10, line: 506, baseType: !668, size: 1216, offset: 118912)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !9, file: !10, line: 507, baseType: !122, size: 64, offset: 120128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !9, file: !10, line: 510, baseType: !19, size: 32, offset: 120192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !9, file: !10, line: 511, baseType: !19, size: 32, offset: 120224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !9, file: !10, line: 512, baseType: !514, size: 64, offset: 120256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !9, file: !10, line: 522, baseType: !678, size: 10624, offset: 120320)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 515, size: 10624, elements: !679)
!679 = !{!680, !682, !685, !688}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !678, file: !10, line: 517, baseType: !681, size: 256, align: 128)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !68)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !678, file: !10, line: 518, baseType: !683, size: 128, align: 128, offset: 256)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !684)
!684 = !{!124, !375}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !678, file: !10, line: 520, baseType: !686, size: 4096, align: 128, offset: 384)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !687)
!687 = !{!375, !76}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !678, file: !10, line: 521, baseType: !689, size: 6144, align: 128, offset: 4480)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 6144, elements: !690)
!690 = !{!691, !69}
!691 = !DISubrange(count: 24)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !9, file: !10, line: 732, baseType: !693, size: 82688, offset: 130944)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 525, size: 82688, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !722, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !740, !743, !747, !748, !749, !754, !755, !758, !759, !760, !761, !762, !763, !764, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !824, !855, !856, !857, !858, !859, !860, !861, !862, !863, !866, !867, !868, !871, !874, !876, !879, !881, !882}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !693, file: !10, line: 527, baseType: !19, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !693, file: !10, line: 530, baseType: !19, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !693, file: !10, line: 531, baseType: !19, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !693, file: !10, line: 532, baseType: !19, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !693, file: !10, line: 535, baseType: !19, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !693, file: !10, line: 536, baseType: !19, size: 32, offset: 160)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !693, file: !10, line: 537, baseType: !19, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !693, file: !10, line: 538, baseType: !19, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !693, file: !10, line: 539, baseType: !19, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !693, file: !10, line: 542, baseType: !19, size: 32, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !693, file: !10, line: 543, baseType: !19, size: 32, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !693, file: !10, line: 544, baseType: !19, size: 32, offset: 352)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !693, file: !10, line: 545, baseType: !19, size: 32, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !693, file: !10, line: 546, baseType: !19, size: 32, offset: 416)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !693, file: !10, line: 547, baseType: !19, size: 32, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !693, file: !10, line: 548, baseType: !19, size: 32, offset: 480)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !693, file: !10, line: 549, baseType: !19, size: 32, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !693, file: !10, line: 551, baseType: !19, size: 32, offset: 544)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !693, file: !10, line: 554, baseType: !122, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !693, file: !10, line: 555, baseType: !122, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !693, file: !10, line: 558, baseType: !122, size: 64, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !693, file: !10, line: 559, baseType: !122, size: 64, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !693, file: !10, line: 561, baseType: !122, size: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !693, file: !10, line: 562, baseType: !122, size: 64, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !693, file: !10, line: 565, baseType: !17, size: 32, offset: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !693, file: !10, line: 566, baseType: !721, size: 128, offset: 992)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !374)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !693, file: !10, line: 567, baseType: !723, size: 512, offset: 1120)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !68)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !693, file: !10, line: 568, baseType: !17, size: 32, offset: 1632)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !693, file: !10, line: 569, baseType: !17, size: 32, offset: 1664)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !693, file: !10, line: 570, baseType: !19, size: 32, offset: 1696)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !693, file: !10, line: 571, baseType: !19, size: 32, offset: 1728)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !693, file: !10, line: 572, baseType: !19, size: 32, offset: 1760)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !693, file: !10, line: 573, baseType: !19, size: 32, offset: 1792)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !693, file: !10, line: 574, baseType: !19, size: 32, offset: 1824)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !693, file: !10, line: 575, baseType: !19, size: 32, offset: 1856)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !693, file: !10, line: 576, baseType: !19, size: 32, offset: 1888)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !693, file: !10, line: 577, baseType: !19, size: 32, offset: 1920)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !693, file: !10, line: 578, baseType: !19, size: 32, offset: 1952)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !10, line: 585, baseType: !562, size: 64, offset: 1984)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !693, file: !10, line: 586, baseType: !214, size: 64, offset: 2048)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !693, file: !10, line: 587, baseType: !562, size: 64, offset: 2112)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !693, file: !10, line: 588, baseType: !739, size: 64, offset: 2176)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !693, file: !10, line: 589, baseType: !741, size: 64, offset: 2240)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 64, elements: !448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !693, file: !10, line: 591, baseType: !744, size: 64, offset: 2304)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !746)
!746 = !{!691}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !693, file: !10, line: 592, baseType: !562, size: 64, offset: 2368)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !693, file: !10, line: 593, baseType: !568, size: 128, offset: 2432)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !693, file: !10, line: 594, baseType: !750, size: 128, offset: 2560)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 128, elements: !123)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !753)
!753 = !{!449, !124}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !693, file: !10, line: 595, baseType: !584, size: 128, offset: 2688)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !693, file: !10, line: 596, baseType: !756, size: 4096, offset: 2816)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 4096, elements: !757)
!757 = !{!124, !465}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !693, file: !10, line: 597, baseType: !562, size: 64, offset: 6912)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !693, file: !10, line: 598, baseType: !562, size: 64, offset: 6976)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !693, file: !10, line: 599, baseType: !397, size: 64, offset: 7040)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !693, file: !10, line: 603, baseType: !557, size: 1024, offset: 7104)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !693, file: !10, line: 606, baseType: !19, size: 32, offset: 8128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !693, file: !10, line: 607, baseType: !19, size: 32, offset: 8160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !693, file: !10, line: 608, baseType: !765, size: 32, align: 32, offset: 8192)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !374)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !693, file: !10, line: 609, baseType: !19, size: 32, offset: 8224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !693, file: !10, line: 611, baseType: !19, size: 32, offset: 8256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !693, file: !10, line: 612, baseType: !19, size: 32, offset: 8288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !693, file: !10, line: 614, baseType: !19, size: 32, offset: 8320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !693, file: !10, line: 615, baseType: !19, size: 32, offset: 8352)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !693, file: !10, line: 621, baseType: !19, size: 32, offset: 8384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !693, file: !10, line: 624, baseType: !19, size: 32, offset: 8416)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !693, file: !10, line: 626, baseType: !19, size: 32, offset: 8448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !693, file: !10, line: 627, baseType: !19, size: 32, offset: 8480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !693, file: !10, line: 671, baseType: !776, size: 60672, offset: 8576)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !10, line: 629, size: 60672, elements: !777)
!777 = !{!778, !782, !786, !788, !789, !792, !796, !798, !799, !800, !801, !802, !805, !809, !812, !813, !814, !815, !816, !819, !821, !823}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !776, file: !10, line: 634, baseType: !779, size: 3072, align: 128)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3072, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !776, file: !10, line: 635, baseType: !783, size: 6912, align: 128, offset: 3072)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 6912, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 864)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !776, file: !10, line: 638, baseType: !787, size: 2048, align: 128, offset: 9984)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2048, elements: !267)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !776, file: !10, line: 639, baseType: !787, size: 2048, align: 128, offset: 12032)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !776, file: !10, line: 640, baseType: !790, size: 3072, align: 128, offset: 14080)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 3072, elements: !791)
!791 = !{!466, !76}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !776, file: !10, line: 641, baseType: !793, size: 3840, align: 128, offset: 17152)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 3840, elements: !794)
!794 = !{!795, !69}
!795 = !DISubrange(count: 15)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !776, file: !10, line: 642, baseType: !797, size: 128, offset: 20992)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, elements: !374)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !776, file: !10, line: 643, baseType: !797, size: 128, offset: 21120)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !776, file: !10, line: 644, baseType: !19, size: 32, offset: 21248)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !776, file: !10, line: 645, baseType: !19, size: 32, offset: 21280)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !776, file: !10, line: 648, baseType: !686, size: 4096, align: 128, offset: 21376)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !776, file: !10, line: 649, baseType: !803, size: 4096, align: 128, offset: 25472)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !804)
!804 = !{!69, !69}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !776, file: !10, line: 652, baseType: !806, size: 576, align: 128, offset: 29568)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 576, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 9)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !776, file: !10, line: 653, baseType: !810, size: 1024, align: 128, offset: 30208)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 1024, elements: !811)
!811 = !{!465}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !776, file: !10, line: 656, baseType: !546, size: 192, offset: 31232)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !776, file: !10, line: 658, baseType: !546, size: 192, offset: 31424)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !776, file: !10, line: 661, baseType: !546, size: 192, offset: 31616)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !776, file: !10, line: 664, baseType: !122, size: 64, offset: 31808)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !776, file: !10, line: 665, baseType: !817, size: 24576, offset: 31872)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 24576, elements: !818)
!818 = !{!124, !465, !365}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !776, file: !10, line: 666, baseType: !820, size: 2048, offset: 56448)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 2048, elements: !811)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !776, file: !10, line: 667, baseType: !822, size: 2048, offset: 58496)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 2048, elements: !435)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !776, file: !10, line: 670, baseType: !538, size: 96, offset: 60544)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !693, file: !10, line: 704, baseType: !825, size: 6144, offset: 69248)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !10, line: 674, size: 6144, elements: !826)
!826 = !{!827, !831, !835, !838, !841, !843, !844, !847, !849, !850, !851, !852, !853, !854}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !825, file: !10, line: 677, baseType: !828, size: 320, align: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 320, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 40)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !825, file: !10, line: 680, baseType: !832, size: 384, align: 128, offset: 384)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 384, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 48)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !825, file: !10, line: 683, baseType: !836, size: 640, align: 32, offset: 768)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 640, elements: !837)
!837 = !{!124, !830}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !825, file: !10, line: 686, baseType: !839, size: 2560, align: 128, offset: 1408)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 2560, elements: !840)
!840 = !{!124, !830, !124}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !825, file: !10, line: 687, baseType: !842, size: 1280, align: 64, offset: 3968)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1280, elements: !840)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !825, file: !10, line: 690, baseType: !828, size: 320, align: 32, offset: 5248)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !825, file: !10, line: 692, baseType: !845, size: 256, align: 32, offset: 5568)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !846)
!846 = !{!124, !375, !124}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !825, file: !10, line: 693, baseType: !848, size: 64, align: 32, offset: 5824)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 64, elements: !684)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !825, file: !10, line: 694, baseType: !19, size: 32, offset: 5888)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !825, file: !10, line: 695, baseType: !570, size: 32, align: 32, offset: 5920)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !825, file: !10, line: 698, baseType: !19, size: 32, offset: 5952)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !825, file: !10, line: 699, baseType: !19, size: 32, offset: 5984)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !825, file: !10, line: 702, baseType: !19, size: 32, offset: 6016)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !825, file: !10, line: 703, baseType: !19, size: 32, offset: 6048)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !693, file: !10, line: 707, baseType: !19, size: 32, offset: 75392)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !693, file: !10, line: 708, baseType: !19, size: 32, offset: 75424)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !693, file: !10, line: 709, baseType: !19, size: 32, offset: 75456)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !693, file: !10, line: 710, baseType: !19, size: 32, offset: 75488)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !693, file: !10, line: 711, baseType: !19, size: 32, offset: 75520)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !693, file: !10, line: 712, baseType: !19, size: 32, offset: 75552)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !693, file: !10, line: 713, baseType: !19, size: 32, offset: 75584)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !693, file: !10, line: 714, baseType: !19, size: 32, offset: 75616)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !693, file: !10, line: 717, baseType: !864, size: 128, offset: 75648)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !865)
!865 = !{!124, !124}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !693, file: !10, line: 718, baseType: !19, size: 32, offset: 75776)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !693, file: !10, line: 719, baseType: !19, size: 32, offset: 75808)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !693, file: !10, line: 722, baseType: !869, size: 4096, offset: 75840)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !870)
!870 = !{!124, !465, !375}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !693, file: !10, line: 723, baseType: !872, size: 64, offset: 79936)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !374)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !693, file: !10, line: 724, baseType: !875, size: 2048, offset: 80000)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 2048, elements: !870)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !693, file: !10, line: 725, baseType: !877, size: 64, offset: 82048)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 32, elements: !374)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !693, file: !10, line: 728, baseType: !880, size: 144, offset: 82112)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 144, elements: !595)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !693, file: !10, line: 729, baseType: !19, size: 32, offset: 82272)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !693, file: !10, line: 730, baseType: !883, size: 272, offset: 82304)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 272, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 34)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !9, file: !10, line: 735, baseType: !887, size: 64, offset: 213632)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !10, line: 379, baseType: !889)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !10, line: 379, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !9, file: !10, line: 793, baseType: !891, size: 29504, offset: 213696)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 738, size: 29504, elements: !892)
!892 = !{!893, !920, !924, !926, !928, !929, !930, !931, !932, !933, !934, !935, !938, !940, !941, !944, !946, !948, !949, !950}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !891, file: !10, line: 764, baseType: !894, size: 5632)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !10, line: 741, size: 5632, elements: !895)
!895 = !{!896, !897, !898, !899, !901, !902, !903, !904, !905, !907, !910, !912, !916, !917, !919}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !894, file: !10, line: 744, baseType: !19, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !894, file: !10, line: 746, baseType: !19, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !894, file: !10, line: 748, baseType: !19, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !894, file: !10, line: 750, baseType: !900, size: 608, offset: 96)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 608, elements: !669)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !894, file: !10, line: 751, baseType: !19, size: 32, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !894, file: !10, line: 752, baseType: !19, size: 32, offset: 736)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !894, file: !10, line: 753, baseType: !19, size: 32, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !894, file: !10, line: 754, baseType: !122, size: 64, offset: 800)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !894, file: !10, line: 755, baseType: !906, size: 2048, offset: 864)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !757)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !894, file: !10, line: 756, baseType: !908, size: 544, offset: 2912)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 544, elements: !909)
!909 = !{!575}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !894, file: !10, line: 757, baseType: !911, size: 192, offset: 3456)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, elements: !364)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !894, file: !10, line: 758, baseType: !913, size: 1664, offset: 3648)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1664, elements: !914)
!914 = !{!375, !915}
!915 = !DISubrange(count: 13)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !894, file: !10, line: 760, baseType: !122, size: 64, offset: 5312)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !894, file: !10, line: 762, baseType: !918, size: 192, offset: 5376)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !539)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !894, file: !10, line: 763, baseType: !621, size: 64, offset: 5568)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !891, file: !10, line: 769, baseType: !921, size: 160, offset: 5632)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 5)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !891, file: !10, line: 770, baseType: !925, size: 320, offset: 5824)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 320, elements: !922)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !891, file: !10, line: 771, baseType: !927, size: 320, offset: 6144)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 320, elements: !922)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !891, file: !10, line: 772, baseType: !908, size: 544, offset: 6464)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !891, file: !10, line: 774, baseType: !925, size: 320, offset: 7040)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !891, file: !10, line: 775, baseType: !927, size: 320, offset: 7360)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !891, file: !10, line: 776, baseType: !927, size: 320, offset: 7680)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !891, file: !10, line: 777, baseType: !927, size: 320, offset: 8000)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !891, file: !10, line: 778, baseType: !927, size: 320, offset: 8320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !891, file: !10, line: 779, baseType: !927, size: 320, offset: 8640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !891, file: !10, line: 781, baseType: !936, size: 6080, offset: 8960)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 6080, elements: !937)
!937 = !{!923, !670}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !891, file: !10, line: 782, baseType: !939, size: 2176, offset: 15040)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 2176, elements: !574)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !891, file: !10, line: 783, baseType: !659, size: 128, offset: 17216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !891, file: !10, line: 784, baseType: !942, size: 8192, offset: 17344)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 8192, elements: !943)
!943 = !{!124, !124, !465}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !891, file: !10, line: 785, baseType: !945, size: 384, offset: 25536)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 384, elements: !364)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !891, file: !10, line: 786, baseType: !947, size: 3328, offset: 25920)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 3328, elements: !914)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !891, file: !10, line: 788, baseType: !122, size: 64, offset: 29248)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !891, file: !10, line: 789, baseType: !122, size: 64, offset: 29312)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !891, file: !10, line: 791, baseType: !538, size: 96, offset: 29376)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !9, file: !10, line: 795, baseType: !952, size: 4096, align: 128, offset: 243200)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 4096, elements: !953)
!953 = !{!124, !76}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !9, file: !10, line: 796, baseType: !955, size: 2048, align: 128, offset: 247296)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 2048, elements: !953)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !9, file: !10, line: 797, baseType: !957, size: 64, offset: 249344)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !123)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !9, file: !10, line: 800, baseType: !82, size: 64, offset: 249408)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !9, file: !10, line: 801, baseType: !960, size: 384, offset: 249472)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 384, elements: !961)
!961 = !{!124, !466}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !9, file: !10, line: 802, baseType: !963, size: 128, offset: 249856)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !123)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !966)
!966 = !{!124, !375, !375}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !9, file: !10, line: 805, baseType: !968, size: 448, offset: 249984)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 448, elements: !974)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !970, line: 27, baseType: !971)
!970 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !214}
!974 = !{!975}
!975 = !DISubrange(count: 7)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !9, file: !10, line: 806, baseType: !968, size: 448, offset: 250432)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !9, file: !10, line: 807, baseType: !978, size: 768, offset: 250880)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 768, elements: !983)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !970, line: 28, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !214, !214}
!983 = !{!984}
!984 = !DISubrange(count: 12)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !9, file: !10, line: 808, baseType: !986, size: 768, offset: 251648)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 768, elements: !983)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !9, file: !10, line: 809, baseType: !988, size: 64, offset: 252416)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !970, line: 29, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !214, !214, !19, !19}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !9, file: !10, line: 811, baseType: !993, size: 8448, offset: 252480)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !994, line: 110, baseType: !995)
!994 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 63, size: 8448, elements: !996)
!996 = !{!997, !1003, !1004, !1005, !1006, !1008, !1009, !1010, !1011, !1017, !1023, !1024, !1028, !1033, !1034, !1040, !1044, !1045, !1046, !1047, !1048, !1053, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !995, file: !994, line: 65, baseType: !998, size: 448)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 448, elements: !974)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !994, line: 26, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!19, !214, !19, !214, !19}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !995, file: !994, line: 66, baseType: !998, size: 448, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !995, file: !994, line: 67, baseType: !998, size: 448, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !995, file: !994, line: 68, baseType: !998, size: 448, offset: 1344)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !995, file: !994, line: 69, baseType: !1007, size: 256, offset: 1792)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 256, elements: !374)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !995, file: !994, line: 70, baseType: !998, size: 448, offset: 2048)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !995, file: !994, line: 71, baseType: !998, size: 448, offset: 2496)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !995, file: !994, line: 72, baseType: !998, size: 448, offset: 2944)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !995, file: !994, line: 73, baseType: !1012, size: 448, offset: 3392)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 448, elements: !974)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !994, line: 27, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !214, !214, !214, !214, !19, !582}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !995, file: !994, line: 74, baseType: !1018, size: 448, offset: 3840)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 448, elements: !974)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !994, line: 28, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !214, !214, !214, !214, !214, !19, !582}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !995, file: !994, line: 75, baseType: !998, size: 448, offset: 4288)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !995, file: !994, line: 76, baseType: !1025, size: 64, offset: 4736)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!19, !214, !19, !214, !19, !582}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !995, file: !994, line: 78, baseType: !1029, size: 256, offset: 4800)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 256, elements: !374)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!613, !214, !19}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !995, file: !994, line: 79, baseType: !1029, size: 256, offset: 5056)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !995, file: !994, line: 81, baseType: !1035, size: 64, offset: 5312)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !362, !19, !362, !19, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !374)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !995, file: !994, line: 83, baseType: !1041, size: 64, offset: 5376)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!118, !1038, !1038, !19}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !995, file: !994, line: 86, baseType: !1012, size: 448, offset: 5440)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !995, file: !994, line: 87, baseType: !1018, size: 448, offset: 5888)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !995, file: !994, line: 88, baseType: !1012, size: 448, offset: 6336)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !995, file: !994, line: 89, baseType: !1018, size: 448, offset: 6784)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !995, file: !994, line: 93, baseType: !1049, size: 448, offset: 7232)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 448, elements: !974)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!19, !582, !397, !19, !397, !739, !19, !19}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !995, file: !994, line: 98, baseType: !1054, size: 64, offset: 7680)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !214, !214, !582}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !995, file: !994, line: 99, baseType: !1054, size: 64, offset: 7744)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !995, file: !994, line: 100, baseType: !1054, size: 64, offset: 7808)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !995, file: !994, line: 101, baseType: !1054, size: 64, offset: 7872)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !995, file: !994, line: 102, baseType: !1054, size: 64, offset: 7936)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !995, file: !994, line: 103, baseType: !1054, size: 64, offset: 8000)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !995, file: !994, line: 104, baseType: !1054, size: 64, offset: 8064)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !995, file: !994, line: 105, baseType: !1054, size: 64, offset: 8128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !995, file: !994, line: 106, baseType: !1054, size: 64, offset: 8192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !995, file: !994, line: 107, baseType: !1054, size: 64, offset: 8256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !995, file: !994, line: 108, baseType: !1054, size: 64, offset: 8320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !995, file: !994, line: 109, baseType: !1054, size: 64, offset: 8384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !9, file: !10, line: 812, baseType: !1069, size: 2368, offset: 260928)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !439, line: 111, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 58, size: 2368, elements: !1071)
!1071 = !{!1072, !1079, !1083, !1087, !1094, !1099, !1100, !1104, !1108, !1109, !1113, !1121, !1125, !1129, !1130, !1134, !1138, !1142, !1143, !1144, !1145, !1150}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1070, file: !439, line: 60, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !214, !19, !1076, !19, !19, !19, !19, !19, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1070, file: !439, line: 65, baseType: !1080, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!214, !214, !582, !1076, !19, !19, !19, !19, !19, !1077}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1070, file: !439, line: 71, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !214, !19, !214, !19, !19, !19, !19, !19}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1070, file: !439, line: 75, baseType: !1088, size: 640, offset: 192)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 640, elements: !1092)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !214, !19, !214, !19, !214, !19, !19}
!1092 = !{!1093}
!1093 = !DISubrange(count: 10)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1070, file: !439, line: 78, baseType: !1095, size: 448, offset: 832)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, size: 448, elements: !974)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !214, !19, !214, !19, !19}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1070, file: !439, line: 79, baseType: !1096, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1070, file: !439, line: 81, baseType: !1101, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !214, !19, !214, !19, !19, !19}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1070, file: !439, line: 84, baseType: !1105, size: 64, offset: 1408)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !214, !214, !214, !214, !19, !19, !19, !739}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1070, file: !439, line: 88, baseType: !1096, size: 64, offset: 1472)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1070, file: !439, line: 91, baseType: !1110, size: 64, offset: 1536)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !214, !19, !19}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1070, file: !439, line: 93, baseType: !1114, size: 64, offset: 1600)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!82, !82, !1117, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1120, line: 18, baseType: !615)
!1120 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1070, file: !439, line: 94, baseType: !1122, size: 64, offset: 1664)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !82, !19}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1070, file: !439, line: 97, baseType: !1126, size: 64, offset: 1728)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !397, !214, !19}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1070, file: !439, line: 98, baseType: !1126, size: 64, offset: 1792)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1070, file: !439, line: 99, baseType: !1131, size: 64, offset: 1856)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !397, !397, !19}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1070, file: !439, line: 100, baseType: !1135, size: 64, offset: 1920)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !397, !19}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1070, file: !439, line: 102, baseType: !1139, size: 64, offset: 1984)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !214, !214, !214, !214, !214, !19, !19, !19, !19}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1070, file: !439, line: 104, baseType: !457, size: 64, offset: 2048)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1070, file: !439, line: 105, baseType: !457, size: 64, offset: 2112)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1070, file: !439, line: 106, baseType: !457, size: 64, offset: 2176)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1070, file: !439, line: 107, baseType: !1146, size: 64, offset: 2240)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !6, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1070, file: !439, line: 109, baseType: !1151, size: 64, offset: 2304)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !582, !397, !397, !397, !397, !19}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !9, file: !10, line: 813, baseType: !1155, size: 960, offset: 263296)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1156, line: 115, baseType: !1157)
!1156 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 89, size: 960, elements: !1158)
!1158 = !{!1159, !1163, !1167, !1172, !1173, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1189, !1193, !1197}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1157, file: !1156, line: 94, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !739, !214, !214}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1157, file: !1156, line: 95, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !214, !739}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1157, file: !1156, line: 97, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1171, !214, !214}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1157, file: !1156, line: 98, baseType: !1160, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1157, file: !1156, line: 99, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !214, !1171}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1157, file: !1156, line: 100, baseType: !1164, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1157, file: !1156, line: 102, baseType: !1168, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1157, file: !1156, line: 103, baseType: !1174, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1157, file: !1156, line: 104, baseType: !1164, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1157, file: !1156, line: 106, baseType: !1160, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1157, file: !1156, line: 107, baseType: !1164, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1157, file: !1156, line: 109, baseType: !1184, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !1187, !214, !214}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 1024, elements: !75)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1157, file: !1156, line: 110, baseType: !1190, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !214, !1187}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1157, file: !1156, line: 112, baseType: !1194, size: 64, offset: 832)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !739}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1157, file: !1156, line: 113, baseType: !1194, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !9, file: !10, line: 814, baseType: !1199, size: 384, offset: 264256)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1156, line: 126, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 117, size: 384, elements: !1201)
!1201 = !{!1202, !1206, !1207, !1211, !1212, !1216}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1200, file: !1156, line: 119, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !739, !739}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1200, file: !1156, line: 120, baseType: !1203, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1200, file: !1156, line: 121, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!19, !739, !362, !214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1200, file: !1156, line: 122, baseType: !1208, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1200, file: !1156, line: 123, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!19, !739, !362, !214, !739}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1200, file: !1156, line: 124, baseType: !1217, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !739, !739, !214}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !9, file: !10, line: 815, baseType: !1221, size: 1408, offset: 264640)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1222, line: 44, baseType: !1223)
!1222 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 26, size: 1408, elements: !1224)
!1224 = !{!1225, !1229, !1230, !1234, !1235, !1239, !1243, !1244, !1249, !1253, !1254, !1255, !1257}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1223, file: !1222, line: 28, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!19, !739, !397, !397}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1223, file: !1222, line: 29, baseType: !1226, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1223, file: !1222, line: 30, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!19, !739, !19, !19}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1223, file: !1222, line: 31, baseType: !1231, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1223, file: !1222, line: 33, baseType: !1236, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !739, !378, !19}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1223, file: !1222, line: 34, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !739, !372, !19}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1223, file: !1222, line: 35, baseType: !1240, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1223, file: !1222, line: 37, baseType: !1245, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !739, !1248, !397, !19}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1223, file: !1222, line: 39, baseType: !1250, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!19, !739}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1223, file: !1222, line: 40, baseType: !1250, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1223, file: !1222, line: 41, baseType: !1250, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1223, file: !1222, line: 42, baseType: !1256, size: 384, offset: 704)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 384, elements: !364)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1223, file: !1222, line: 43, baseType: !1258, size: 320, offset: 1088)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1259, size: 320, elements: !922)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!19, !739, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !219, line: 63, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 58, size: 416, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1264, file: !219, line: 60, baseType: !19, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1264, file: !219, line: 61, baseType: !681, size: 256, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1264, file: !219, line: 62, baseType: !62, size: 128, offset: 288)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !9, file: !10, line: 816, baseType: !1270, size: 576, offset: 266048)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !507, line: 170, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 161, size: 576, elements: !1272)
!1272 = !{!1273, !1279, !1280, !1286, !1287}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1271, file: !507, line: 163, baseType: !1274, size: 128)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 128, elements: !123)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !507, line: 159, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !214, !19, !19, !19, !562}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1271, file: !507, line: 164, baseType: !1274, size: 128, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1271, file: !507, line: 165, baseType: !1281, size: 128, offset: 256)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 128, elements: !123)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !507, line: 160, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !214, !19, !19, !19}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1271, file: !507, line: 166, baseType: !1281, size: 128, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1271, file: !507, line: 167, baseType: !1288, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !214, !1291, !1292, !1295, !19, !19}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 1280, elements: !1294)
!1294 = !{!830, !124}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1297)
!1297 = !{!375, !375}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !9, file: !10, line: 821, baseType: !1299, size: 64, offset: 266624)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !10, line: 377, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !10, line: 366, size: 960, elements: !1302)
!1302 = !{!1303, !1305, !1306, !1307, !1308, !1309, !1310, !1320, !1321}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1301, file: !10, line: 368, baseType: !1304, size: 8)
!1304 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1301, file: !10, line: 369, baseType: !63, size: 8, offset: 8)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1301, file: !10, line: 370, baseType: !63, size: 8, offset: 16)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1301, file: !10, line: 371, baseType: !19, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1301, file: !10, line: 372, baseType: !19, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1301, file: !10, line: 373, baseType: !505, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1301, file: !10, line: 374, baseType: !1311, size: 256, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !507, line: 157, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 149, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1312, file: !507, line: 151, baseType: !504, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1312, file: !507, line: 152, baseType: !19, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1312, file: !507, line: 153, baseType: !19, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1312, file: !507, line: 154, baseType: !19, size: 32, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1312, file: !507, line: 155, baseType: !19, size: 32, offset: 160)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1312, file: !507, line: 156, baseType: !19, size: 32, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !10, line: 375, baseType: !1311, size: 256, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1301, file: !10, line: 376, baseType: !1311, size: 256, offset: 704)
!1322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1323, retainedTypes: !1399, globals: !1408, splitDebugInlining: false, nameTableKind: None)
!1323 = !{!1324, !1347, !1367, !1375, !1389}
!1324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !1325, line: 66, baseType: !17, size: 32, elements: !1326)
!1325 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1327 = !DIEnumerator(name: "I_4x4", value: 0)
!1328 = !DIEnumerator(name: "I_8x8", value: 1)
!1329 = !DIEnumerator(name: "I_16x16", value: 2)
!1330 = !DIEnumerator(name: "I_PCM", value: 3)
!1331 = !DIEnumerator(name: "P_L0", value: 4)
!1332 = !DIEnumerator(name: "P_8x8", value: 5)
!1333 = !DIEnumerator(name: "P_SKIP", value: 6)
!1334 = !DIEnumerator(name: "B_DIRECT", value: 7)
!1335 = !DIEnumerator(name: "B_L0_L0", value: 8)
!1336 = !DIEnumerator(name: "B_L0_L1", value: 9)
!1337 = !DIEnumerator(name: "B_L0_BI", value: 10)
!1338 = !DIEnumerator(name: "B_L1_L0", value: 11)
!1339 = !DIEnumerator(name: "B_L1_L1", value: 12)
!1340 = !DIEnumerator(name: "B_L1_BI", value: 13)
!1341 = !DIEnumerator(name: "B_BI_L0", value: 14)
!1342 = !DIEnumerator(name: "B_BI_L1", value: 15)
!1343 = !DIEnumerator(name: "B_BI_BI", value: 16)
!1344 = !DIEnumerator(name: "B_8x8", value: 17)
!1345 = !DIEnumerator(name: "B_SKIP", value: 18)
!1346 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!1347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !1325, line: 117, baseType: !17, size: 32, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1349 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!1350 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!1351 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!1352 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!1353 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!1354 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!1355 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!1356 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!1357 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!1358 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!1359 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!1360 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!1361 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!1362 = !DIEnumerator(name: "D_8x8", value: 13)
!1363 = !DIEnumerator(name: "D_16x8", value: 14)
!1364 = !DIEnumerator(name: "D_8x16", value: 15)
!1365 = !DIEnumerator(name: "D_16x16", value: 16)
!1366 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!1367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !1325, line: 258, baseType: !17, size: 32, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374}
!1369 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!1370 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!1371 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!1372 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!1373 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!1374 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!1375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !970, line: 65, baseType: !17, size: 32, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1377 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!1378 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!1379 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!1380 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!1381 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!1382 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!1383 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!1384 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!1385 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!1386 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!1387 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!1388 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!1389 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_e", file: !249, line: 27, baseType: !17, size: 32, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1391 = !DIEnumerator(name: "PROFILE_BASELINE", value: 66)
!1392 = !DIEnumerator(name: "PROFILE_MAIN", value: 77)
!1393 = !DIEnumerator(name: "PROFILE_EXTENDED", value: 88)
!1394 = !DIEnumerator(name: "PROFILE_HIGH", value: 100)
!1395 = !DIEnumerator(name: "PROFILE_HIGH10", value: 110)
!1396 = !DIEnumerator(name: "PROFILE_HIGH422", value: 122)
!1397 = !DIEnumerator(name: "PROFILE_HIGH444", value: 144)
!1398 = !DIEnumerator(name: "PROFILE_HIGH444_PREDICTIVE", value: 244)
!1399 = !{!1400, !226, !214, !613, !17, !63}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !10, line: 89, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !10, line: 89, size: 32, elements: !1403)
!1403 = !{!1404, !1405, !1407}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1402, file: !10, line: 89, baseType: !175, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1402, file: !10, line: 89, baseType: !1406, size: 32)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 32, elements: !123)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1402, file: !10, line: 89, baseType: !765, size: 32)
!1408 = !{!0, !1409, !1412, !1417, !1423, !1426, !1428, !1431, !1434, !1437, !1441, !1445, !1448, !1450, !1458, !1461, !1491, !1494, !1510}
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(name: "x264_ue_size_tab", scope: !1322, file: !219, line: 188, type: !1411, isLocal: true, isDefinition: true)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 2048, elements: !267)
!1412 = !DIGlobalVariableExpression(var: !1413, expr: !DIExpression())
!1413 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode4x4_fix", scope: !1322, file: !970, line: 81, type: !1414, isLocal: true, isDefinition: true)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 104, elements: !1416)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!1416 = !{!915}
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !1322, file: !10, line: 125, type: !1419, isLocal: true, isDefinition: true)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 864, elements: !1421)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!1421 = !{!1422}
!1422 = !DISubrange(count: 27)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !1322, file: !970, line: 42, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 56, elements: !974)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode16x16_fix", scope: !1322, file: !970, line: 59, type: !1425, isLocal: true, isDefinition: true)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(name: "sub_mb_type_p_to_golomb", scope: !1322, file: !3, line: 58, type: !1430, isLocal: true, isDefinition: true)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 32, elements: !374)
!1431 = !DIGlobalVariableExpression(var: !1432, expr: !DIExpression())
!1432 = distinct !DIGlobalVariable(name: "sub_mb_type_b_to_golomb", scope: !1322, file: !3, line: 62, type: !1433, isLocal: true, isDefinition: true)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 104, elements: !1416)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(name: "x264_mb_partition_listX_table", scope: !1322, file: !1325, line: 145, type: !1436, isLocal: true, isDefinition: true)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 272, elements: !574)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(name: "x264_mb_type_list_table", scope: !1322, file: !1325, line: 99, type: !1439, isLocal: true, isDefinition: true)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 608, elements: !1440)
!1440 = !{!670, !124, !124}
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(name: "mb_type_b_to_golomb", scope: !1322, file: !3, line: 48, type: !1443, isLocal: true, isDefinition: true)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 216, elements: !1444)
!1444 = !{!466, !808}
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(name: "intra4x4_cbp_to_golomb", scope: !1322, file: !3, line: 36, type: !1447, isLocal: true, isDefinition: true)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !833)
!1448 = !DIGlobalVariableExpression(var: !1449, expr: !DIExpression())
!1449 = distinct !DIGlobalVariable(name: "inter_cbp_to_golomb", scope: !1322, file: !3, line: 42, type: !1447, isLocal: true, isDefinition: true)
!1450 = !DIGlobalVariableExpression(var: !1451, expr: !DIExpression())
!1451 = distinct !DIGlobalVariable(name: "partition_tab", scope: !1452, file: !1325, line: 398, type: !1457, isLocal: true, isDefinition: true)
!1452 = distinct !DISubprogram(name: "x264_mb_transform_8x8_allowed", scope: !1325, file: !1325, line: 393, type: !1453, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!19, !6}
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "h", arg: 1, scope: !1452, file: !1325, line: 393, type: !6)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 152, elements: !669)
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(name: "ct_index", scope: !1322, file: !3, line: 201, type: !1460, isLocal: true, isDefinition: true)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 136, elements: !909)
!1461 = !DIGlobalVariableExpression(var: !1462, expr: !DIExpression())
!1462 = distinct !DIGlobalVariable(name: "ctz_index", scope: !1463, file: !3, line: 127, type: !1490, isLocal: true, isDefinition: true)
!1463 = distinct !DISubprogram(name: "block_residual_write_cavlc", scope: !3, file: !3, line: 124, type: !1464, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!19, !6, !19, !739, !19}
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1482, !1483, !1485, !1487}
!1467 = !DILocalVariable(name: "h", arg: 1, scope: !1463, file: !3, line: 124, type: !6)
!1468 = !DILocalVariable(name: "i_ctxBlockCat", arg: 2, scope: !1463, file: !3, line: 124, type: !19)
!1469 = !DILocalVariable(name: "l", arg: 3, scope: !1463, file: !3, line: 124, type: !739)
!1470 = !DILocalVariable(name: "nC", arg: 4, scope: !1463, file: !3, line: 124, type: !19)
!1471 = !DILocalVariable(name: "s", scope: !1463, file: !3, line: 126, type: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1473 = !DILocalVariable(name: "runlevel", scope: !1463, file: !3, line: 129, type: !1263)
!1474 = !DILocalVariable(name: "i_trailing", scope: !1463, file: !3, line: 130, type: !19)
!1475 = !DILocalVariable(name: "i_total_zero", scope: !1463, file: !3, line: 130, type: !19)
!1476 = !DILocalVariable(name: "i_suffix_length", scope: !1463, file: !3, line: 130, type: !19)
!1477 = !DILocalVariable(name: "i_total", scope: !1463, file: !3, line: 131, type: !19)
!1478 = !DILocalVariable(name: "i_sign", scope: !1463, file: !3, line: 132, type: !17)
!1479 = !DILocalVariable(name: "val", scope: !1480, file: !3, line: 158, type: !19)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 157, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 156, column: 9)
!1482 = !DILocalVariable(name: "val_original", scope: !1480, file: !3, line: 159, type: !19)
!1483 = !DILocalVariable(name: "i", scope: !1484, file: !3, line: 170, type: !19)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 170, column: 9)
!1485 = !DILocalVariable(name: "i", scope: !1486, file: !3, line: 191, type: !19)
!1486 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 191, column: 5)
!1487 = !DILocalVariable(name: "i_zl", scope: !1488, file: !3, line: 193, type: !19)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 192, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 191, column: 5)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, elements: !448)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(name: "count_cat", scope: !1463, file: !3, line: 128, type: !1493, isLocal: true, isDefinition: true)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 40, elements: !922)
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(name: "next_suffix", scope: !1496, file: !3, line: 75, type: !1508, isLocal: true, isDefinition: true)
!1496 = distinct !DISubprogram(name: "block_residual_write_cavlc_escape", scope: !3, file: !3, line: 72, type: !1497, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!19, !6, !19, !19}
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1500 = !DILocalVariable(name: "h", arg: 1, scope: !1496, file: !3, line: 72, type: !6)
!1501 = !DILocalVariable(name: "i_suffix_length", arg: 2, scope: !1496, file: !3, line: 72, type: !19)
!1502 = !DILocalVariable(name: "level", arg: 3, scope: !1496, file: !3, line: 72, type: !19)
!1503 = !DILocalVariable(name: "s", scope: !1496, file: !3, line: 74, type: !1472)
!1504 = !DILocalVariable(name: "i_level_prefix", scope: !1496, file: !3, line: 76, type: !19)
!1505 = !DILocalVariable(name: "mask", scope: !1496, file: !3, line: 77, type: !19)
!1506 = !DILocalVariable(name: "abs_level", scope: !1496, file: !3, line: 78, type: !19)
!1507 = !DILocalVariable(name: "i_level_code", scope: !1496, file: !3, line: 79, type: !19)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 112, elements: !974)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!1510 = !DIGlobalVariableExpression(var: !1511, expr: !DIExpression())
!1511 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !1512, isLocal: true, isDefinition: true)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 440, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 55)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1525, !1527, !1529, !1532, !1534, !1537, !1538, !1543, !1546, !1548, !1552, !1555, !1558, !1560, !1562, !1567, !1568, !1569, !1573, !1574, !1577, !1580, !1581, !1585, !1586, !1588, !1589, !1592, !1595}
!1516 = !DILocalVariable(name: "h", arg: 1, scope: !2, file: !3, line: 290, type: !6)
!1517 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 292, type: !1472)
!1518 = !DILocalVariable(name: "i_mb_type", scope: !2, file: !3, line: 293, type: !1420)
!1519 = !DILocalVariable(name: "i_mb_i_offset", scope: !2, file: !3, line: 295, type: !19)
!1520 = !DILocalVariable(name: "i_mb_pos_start", scope: !2, file: !3, line: 300, type: !1420)
!1521 = !DILocalVariable(name: "i_mb_pos_tex", scope: !2, file: !3, line: 301, type: !19)
!1522 = !DILocalVariable(name: "p_start", scope: !1523, file: !3, line: 313, type: !214)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 312, column: 5)
!1524 = distinct !DILexicalBlock(scope: !2, file: !3, line: 311, column: 9)
!1525 = !DILocalVariable(name: "i", scope: !1526, file: !3, line: 322, type: !19)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 322, column: 9)
!1527 = !DILocalVariable(name: "i", scope: !1528, file: !3, line: 325, type: !19)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 325, column: 9)
!1529 = !DILocalVariable(name: "di", scope: !1530, file: !3, line: 343, type: !19)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 342, column: 5)
!1531 = distinct !DILexicalBlock(scope: !2, file: !3, line: 341, column: 9)
!1532 = !DILocalVariable(name: "i", scope: !1533, file: !3, line: 349, type: !19)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 349, column: 9)
!1534 = !DILocalVariable(name: "i_pred", scope: !1535, file: !3, line: 351, type: !19)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 350, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 349, column: 9)
!1537 = !DILocalVariable(name: "i_mode", scope: !1535, file: !3, line: 352, type: !19)
!1538 = !DILocalVariable(name: "b_sub_ref", scope: !1539, file: !3, line: 402, type: !19)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 401, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 400, column: 14)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 367, column: 14)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 361, column: 14)
!1543 = !DILocalVariable(name: "i", scope: !1544, file: !3, line: 417, type: !19)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 417, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 416, column: 13)
!1546 = !DILocalVariable(name: "i", scope: !1547, file: !3, line: 431, type: !19)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 431, column: 9)
!1548 = !DILocalVariable(name: "i", scope: !1549, file: !3, line: 439, type: !19)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 439, column: 9)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 435, column: 5)
!1551 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 434, column: 14)
!1552 = !DILocalVariable(name: "i", scope: !1553, file: !3, line: 444, type: !19)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 444, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 443, column: 13)
!1555 = !DILocalVariable(name: "i", scope: !1556, file: !3, line: 448, type: !19)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 448, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 447, column: 13)
!1558 = !DILocalVariable(name: "i", scope: !1559, file: !3, line: 453, type: !19)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 453, column: 9)
!1560 = !DILocalVariable(name: "i", scope: !1561, file: !3, line: 456, type: !19)
!1561 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 456, column: 9)
!1562 = !DILocalVariable(name: "b_list", scope: !1563, file: !3, line: 464, type: !1565)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 461, column: 5)
!1564 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 460, column: 14)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 16, elements: !123)
!1567 = !DILocalVariable(name: "i_ref0_max", scope: !1563, file: !3, line: 465, type: !1420)
!1568 = !DILocalVariable(name: "i_ref1_max", scope: !1563, file: !3, line: 466, type: !1420)
!1569 = !DILocalVariable(name: "nC", scope: !1570, file: !3, line: 522, type: !19)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 522, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 518, column: 5)
!1572 = distinct !DILexicalBlock(scope: !2, file: !3, line: 517, column: 9)
!1573 = !DILocalVariable(name: "nnz", scope: !1570, file: !3, line: 522, type: !214)
!1574 = !DILocalVariable(name: "i", scope: !1575, file: !3, line: 526, type: !19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 526, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 525, column: 13)
!1577 = !DILocalVariable(name: "nC", scope: !1578, file: !3, line: 527, type: !19)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 527, column: 17)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 526, column: 13)
!1580 = !DILocalVariable(name: "nnz", scope: !1578, file: !3, line: 527, type: !214)
!1581 = !DILocalVariable(name: "nC", scope: !1582, file: !3, line: 537, type: !19)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 537, column: 9)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 535, column: 5)
!1584 = distinct !DILexicalBlock(scope: !2, file: !3, line: 534, column: 9)
!1585 = !DILocalVariable(name: "nnz", scope: !1582, file: !3, line: 537, type: !214)
!1586 = !DILocalVariable(name: "nC", scope: !1587, file: !3, line: 538, type: !19)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 538, column: 9)
!1588 = !DILocalVariable(name: "nnz", scope: !1587, file: !3, line: 538, type: !214)
!1589 = !DILocalVariable(name: "i", scope: !1590, file: !3, line: 540, type: !19)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 540, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 539, column: 13)
!1592 = !DILocalVariable(name: "nC", scope: !1593, file: !3, line: 541, type: !19)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 541, column: 17)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 540, column: 13)
!1595 = !DILocalVariable(name: "nnz", scope: !1593, file: !3, line: 541, type: !214)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 24, elements: !539)
!1597 = !{i32 7, !"Dwarf Version", i32 5}
!1598 = !{i32 2, !"Debug Info Version", i32 3}
!1599 = !{i32 1, !"wchar_size", i32 4}
!1600 = !{i32 8, !"PIC Level", i32 2}
!1601 = !{i32 7, !"PIE Level", i32 2}
!1602 = !{i32 7, !"uwtable", i32 2}
!1603 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1604 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1605 = !DILocation(line: 0, scope: !2)
!1606 = !DILocation(line: 292, column: 23, scope: !2)
!1607 = !DILocation(line: 293, column: 33, scope: !2)
!1608 = !DILocation(line: 295, column: 41, scope: !2)
!1609 = !DILocation(line: 295, column: 25, scope: !2)
!1610 = !DILocalVariable(name: "s", arg: 1, scope: !1611, file: !219, line: 88, type: !1472)
!1611 = distinct !DISubprogram(name: "bs_pos", scope: !219, file: !219, line: 88, type: !1612, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!19, !1472}
!1614 = !{!1610}
!1615 = !DILocation(line: 0, scope: !1611, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 300, column: 32, scope: !2)
!1617 = !DILocation(line: 90, column: 21, scope: !1611, inlinedAt: !1616)
!1618 = !DILocation(line: 90, column: 28, scope: !1611, inlinedAt: !1616)
!1619 = !DILocation(line: 90, column: 23, scope: !1611, inlinedAt: !1616)
!1620 = !DILocation(line: 90, column: 58, scope: !1611, inlinedAt: !1616)
!1621 = !DILocation(line: 90, column: 11, scope: !1611, inlinedAt: !1616)
!1622 = !DILocation(line: 304, column: 15, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !2, file: !3, line: 304, column: 9)
!1624 = !DILocation(line: 304, column: 9, scope: !1623)
!1625 = !DILocation(line: 305, column: 9, scope: !1623)
!1626 = !DILocation(line: 305, column: 21, scope: !1623)
!1627 = !DILocation(line: 305, column: 28, scope: !1623)
!1628 = !DILocation(line: 305, column: 33, scope: !1623)
!1629 = !DILocation(line: 305, column: 36, scope: !1623)
!1630 = !DILocation(line: 307, column: 29, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 306, column: 5)
!1632 = !DILocalVariable(name: "s", arg: 1, scope: !1633, file: !219, line: 157, type: !1472)
!1633 = distinct !DISubprogram(name: "bs_write1", scope: !219, file: !219, line: 157, type: !1634, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1472, !175}
!1636 = !{!1632, !1637}
!1637 = !DILocalVariable(name: "i_bit", arg: 2, scope: !1633, file: !219, line: 157, type: !175)
!1638 = !DILocation(line: 0, scope: !1633, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 307, column: 9, scope: !1631)
!1640 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !1639)
!1641 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !1639)
!1642 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !1639)
!1643 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !1639)
!1644 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !1639)
!1645 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !1639)
!1646 = distinct !DILexicalBlock(scope: !1633, file: !219, line: 162, column: 9)
!1647 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !1639)
!1648 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !1639)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !219, line: 163, column: 5)
!1650 = !DILocalVariable(name: "x", arg: 1, scope: !1651, file: !1652, line: 262, type: !175)
!1651 = distinct !DISubprogram(name: "endian_fix32", scope: !1652, file: !1652, line: 262, type: !1653, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1655)
!1652 = !DIFile(filename: "x264_src/common/osdep.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "abed2b0134391efe02a749d457632ae9")
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!175, !175}
!1655 = !{!1650}
!1656 = !DILocation(line: 0, scope: !1651, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !1639)
!1658 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !1657)
!1659 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !1639)
!1660 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !1639)
!1661 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !1639)
!1662 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !1639)
!1663 = !DILocation(line: 311, column: 19, scope: !1524)
!1664 = !DILocation(line: 311, column: 9, scope: !2)
!1665 = !DILocation(line: 313, column: 31, scope: !1523)
!1666 = !DILocation(line: 0, scope: !1523)
!1667 = !DILocalVariable(name: "s", arg: 1, scope: !1668, file: !219, line: 228, type: !1472)
!1668 = distinct !DISubprogram(name: "bs_write_ue", scope: !219, file: !219, line: 228, type: !1669, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1472, !19}
!1671 = !{!1667, !1672}
!1672 = !DILocalVariable(name: "val", arg: 2, scope: !1668, file: !219, line: 228, type: !19)
!1673 = !DILocation(line: 0, scope: !1668, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 314, column: 9, scope: !1523)
!1675 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !1674)
!1676 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !1674)
!1677 = !DILocalVariable(name: "s", arg: 1, scope: !1678, file: !219, line: 113, type: !1472)
!1678 = distinct !DISubprogram(name: "bs_write", scope: !219, file: !219, line: 113, type: !1679, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1472, !19, !175}
!1681 = !{!1677, !1682, !1683}
!1682 = !DILocalVariable(name: "i_count", arg: 2, scope: !1678, file: !219, line: 113, type: !19)
!1683 = !DILocalVariable(name: "i_bits", arg: 3, scope: !1678, file: !219, line: 113, type: !175)
!1684 = !DILocation(line: 0, scope: !1678, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !1674)
!1686 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1685)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !219, line: 116, column: 5)
!1688 = distinct !DILexicalBlock(scope: !1678, file: !219, line: 115, column: 9)
!1689 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1685)
!1690 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !1685)
!1691 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1685)
!1692 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1685)
!1693 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1685)
!1694 = distinct !DILexicalBlock(scope: !1687, file: !219, line: 119, column: 13)
!1695 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1685)
!1696 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1685)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !219, line: 120, column: 9)
!1698 = !DILocalVariable(name: "x", arg: 1, scope: !1699, file: !1652, line: 280, type: !226)
!1699 = distinct !DISubprogram(name: "endian_fix", scope: !1652, file: !1652, line: 280, type: !1700, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!226, !226}
!1702 = !{!1698}
!1703 = !DILocation(line: 0, scope: !1699, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1685)
!1705 = !DILocalVariable(name: "x", arg: 1, scope: !1706, file: !1652, line: 275, type: !613)
!1706 = distinct !DISubprogram(name: "endian_fix64", scope: !1652, file: !1652, line: 275, type: !1707, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!613, !613}
!1709 = !{!1705}
!1710 = !DILocation(line: 0, scope: !1706, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !1704)
!1712 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !1711)
!1713 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1685)
!1714 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1685)
!1715 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1685)
!1716 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1685)
!1717 = !DILocation(line: 90, column: 28, scope: !1611, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 315, column: 24, scope: !1523)
!1719 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 172, column: 5, scope: !1721, inlinedAt: !1726)
!1721 = distinct !DISubprogram(name: "bs_align_0", scope: !219, file: !219, line: 170, type: !1722, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1472}
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "s", arg: 1, scope: !1721, file: !219, line: 170, type: !1472)
!1726 = distinct !DILocation(line: 318, column: 9, scope: !1523)
!1727 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1685)
!1728 = !DILocation(line: 90, column: 58, scope: !1611, inlinedAt: !1718)
!1729 = !DILocation(line: 90, column: 21, scope: !1611, inlinedAt: !1718)
!1730 = !DILocation(line: 0, scope: !1611, inlinedAt: !1718)
!1731 = !DILocation(line: 90, column: 23, scope: !1611, inlinedAt: !1718)
!1732 = !DILocation(line: 90, column: 11, scope: !1611, inlinedAt: !1718)
!1733 = !DILocation(line: 316, column: 12, scope: !1523)
!1734 = !DILocation(line: 316, column: 33, scope: !1523)
!1735 = !DILocation(line: 316, column: 49, scope: !1523)
!1736 = !DILocation(line: 0, scope: !1721, inlinedAt: !1726)
!1737 = !DILocation(line: 172, column: 27, scope: !1721, inlinedAt: !1726)
!1738 = !DILocation(line: 0, scope: !1678, inlinedAt: !1720)
!1739 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1720)
!1740 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1720)
!1741 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1720)
!1742 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1720)
!1743 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1720)
!1744 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1720)
!1745 = !DILocation(line: 0, scope: !1699, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1720)
!1747 = !DILocation(line: 0, scope: !1706, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !1746)
!1749 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !1748)
!1750 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1720)
!1751 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1720)
!1752 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1720)
!1753 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1720)
!1754 = !DILocation(line: 96, column: 36, scope: !1755, inlinedAt: !1758)
!1755 = distinct !DISubprogram(name: "bs_flush", scope: !219, file: !219, line: 94, type: !1722, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "s", arg: 1, scope: !1755, file: !219, line: 94, type: !1472)
!1758 = distinct !DILocation(line: 173, column: 5, scope: !1721, inlinedAt: !1726)
!1759 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1720)
!1760 = !DILocation(line: 96, column: 5, scope: !1755, inlinedAt: !1758)
!1761 = !DILocation(line: 96, column: 52, scope: !1755, inlinedAt: !1758)
!1762 = !DILocation(line: 0, scope: !1755, inlinedAt: !1758)
!1763 = !DILocation(line: 96, column: 58, scope: !1755, inlinedAt: !1758)
!1764 = !DILocation(line: 96, column: 45, scope: !1755, inlinedAt: !1758)
!1765 = !DILocation(line: 96, column: 33, scope: !1755, inlinedAt: !1758)
!1766 = !DILocation(line: 0, scope: !1651, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 96, column: 19, scope: !1755, inlinedAt: !1758)
!1768 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !1767)
!1769 = !DILocation(line: 96, column: 17, scope: !1755, inlinedAt: !1758)
!1770 = !DILocation(line: 97, column: 28, scope: !1755, inlinedAt: !1758)
!1771 = !DILocation(line: 97, column: 35, scope: !1755, inlinedAt: !1758)
!1772 = !DILocation(line: 97, column: 10, scope: !1755, inlinedAt: !1758)
!1773 = !DILocation(line: 98, column: 15, scope: !1755, inlinedAt: !1758)
!1774 = !DILocation(line: 320, column: 33, scope: !1523)
!1775 = !DILocation(line: 320, column: 23, scope: !1523)
!1776 = !DILocation(line: 320, column: 9, scope: !1523)
!1777 = !DILocation(line: 321, column: 14, scope: !1523)
!1778 = !DILocation(line: 0, scope: !1526)
!1779 = !DILocation(line: 323, column: 33, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 322, column: 9)
!1781 = !DILocation(line: 323, column: 13, scope: !1780)
!1782 = !DILocation(line: 323, column: 24, scope: !1780)
!1783 = !DILocation(line: 323, column: 26, scope: !1780)
!1784 = !DILocation(line: 323, column: 53, scope: !1780)
!1785 = !DILocation(line: 324, column: 14, scope: !1523)
!1786 = !DILocation(line: 0, scope: !1528)
!1787 = !DILocation(line: 326, column: 33, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 325, column: 9)
!1789 = !DILocation(line: 326, column: 13, scope: !1788)
!1790 = !DILocation(line: 326, column: 24, scope: !1788)
!1791 = !DILocation(line: 326, column: 26, scope: !1788)
!1792 = !DILocation(line: 326, column: 53, scope: !1788)
!1793 = !DILocation(line: 327, column: 14, scope: !1523)
!1794 = !DILocation(line: 329, column: 30, scope: !1523)
!1795 = !DILocation(line: 329, column: 36, scope: !1523)
!1796 = !DILocalVariable(name: "s", arg: 1, scope: !1797, file: !219, line: 79, type: !1472)
!1797 = distinct !DISubprogram(name: "bs_init", scope: !219, file: !219, line: 79, type: !1798, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1472, !82, !19}
!1800 = !{!1796, !1801, !1802, !1803}
!1801 = !DILocalVariable(name: "p_data", arg: 2, scope: !1797, file: !219, line: 79, type: !82)
!1802 = !DILocalVariable(name: "i_data", arg: 3, scope: !1797, file: !219, line: 79, type: !19)
!1803 = !DILocalVariable(name: "offset", scope: !1797, file: !219, line: 81, type: !19)
!1804 = !DILocation(line: 0, scope: !1797, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 329, column: 9, scope: !1523)
!1806 = !DILocation(line: 82, column: 48, scope: !1797, inlinedAt: !1805)
!1807 = !DILocation(line: 82, column: 29, scope: !1797, inlinedAt: !1805)
!1808 = !DILocation(line: 82, column: 16, scope: !1797, inlinedAt: !1805)
!1809 = !DILocation(line: 83, column: 35, scope: !1797, inlinedAt: !1805)
!1810 = !DILocation(line: 83, column: 16, scope: !1797, inlinedAt: !1805)
!1811 = !DILocation(line: 84, column: 18, scope: !1797, inlinedAt: !1805)
!1812 = !DILocation(line: 84, column: 16, scope: !1797, inlinedAt: !1805)
!1813 = !DILocation(line: 85, column: 33, scope: !1797, inlinedAt: !1805)
!1814 = !DILocation(line: 0, scope: !1651, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 85, column: 19, scope: !1797, inlinedAt: !1805)
!1816 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !1815)
!1817 = !DILocation(line: 85, column: 19, scope: !1797, inlinedAt: !1805)
!1818 = !DILocation(line: 86, column: 31, scope: !1797, inlinedAt: !1805)
!1819 = !DILocation(line: 86, column: 17, scope: !1797, inlinedAt: !1805)
!1820 = !DILocation(line: 330, column: 20, scope: !1523)
!1821 = !DILocation(line: 0, scope: !1611, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 332, column: 37, scope: !1523)
!1823 = !DILocation(line: 90, column: 23, scope: !1611, inlinedAt: !1822)
!1824 = !DILocation(line: 90, column: 11, scope: !1611, inlinedAt: !1822)
!1825 = !DILocation(line: 332, column: 23, scope: !1523)
!1826 = !DILocation(line: 332, column: 34, scope: !1523)
!1827 = !DILocation(line: 332, column: 47, scope: !1523)
!1828 = !DILocation(line: 341, column: 28, scope: !1531)
!1829 = !DILocation(line: 343, column: 18, scope: !1530)
!1830 = !DILocation(line: 0, scope: !1530)
!1831 = !DILocation(line: 0, scope: !1668, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 344, column: 9, scope: !1530)
!1833 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !1832)
!1834 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !1832)
!1835 = !DILocation(line: 0, scope: !1678, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !1832)
!1837 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1836)
!1838 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1836)
!1839 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !1836)
!1840 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1836)
!1841 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1836)
!1842 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1836)
!1843 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1836)
!1844 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1836)
!1845 = !DILocation(line: 0, scope: !1699, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1836)
!1847 = !DILocation(line: 0, scope: !1706, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !1846)
!1849 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !1848)
!1850 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1836)
!1851 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1836)
!1852 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1836)
!1853 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1836)
!1854 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1836)
!1855 = !DILocation(line: 345, column: 16, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 345, column: 13)
!1857 = !DILocation(line: 345, column: 21, scope: !1856)
!1858 = !DILocation(line: 345, column: 13, scope: !1856)
!1859 = !DILocation(line: 345, column: 13, scope: !1530)
!1860 = !DILocation(line: 346, column: 33, scope: !1856)
!1861 = !DILocation(line: 0, scope: !1633, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 346, column: 13, scope: !1856)
!1863 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !1862)
!1864 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !1862)
!1865 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !1862)
!1866 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !1862)
!1867 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !1862)
!1868 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !1862)
!1869 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !1862)
!1870 = !DILocation(line: 0, scope: !1651, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !1862)
!1872 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !1871)
!1873 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !1862)
!1874 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !1862)
!1875 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !1862)
!1876 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !1862)
!1877 = !DILocation(line: 0, scope: !1533)
!1878 = !DILocation(line: 349, column: 9, scope: !1533)
!1879 = !DILocation(line: 359, column: 58, scope: !1530)
!1880 = !DILocation(line: 359, column: 25, scope: !1530)
!1881 = !DILocation(line: 0, scope: !1668, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 359, column: 9, scope: !1530)
!1883 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !1882)
!1884 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !1882)
!1885 = !DILocation(line: 0, scope: !1678, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !1882)
!1887 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1886)
!1888 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1886)
!1889 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !1886)
!1890 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1886)
!1891 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1886)
!1892 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1886)
!1893 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1886)
!1894 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1886)
!1895 = !DILocation(line: 0, scope: !1699, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1886)
!1897 = !DILocation(line: 0, scope: !1706, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !1896)
!1899 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !1898)
!1900 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1886)
!1901 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1886)
!1902 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1886)
!1903 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1886)
!1904 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1886)
!1905 = !DILocalVariable(name: "h", arg: 1, scope: !1906, file: !1325, line: 366, type: !6)
!1906 = distinct !DISubprogram(name: "x264_mb_predict_intra4x4_mode", scope: !1325, file: !1325, line: 366, type: !1907, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!19, !6, !19}
!1909 = !{!1905, !1910, !1911, !1912, !1913}
!1910 = !DILocalVariable(name: "idx", arg: 2, scope: !1906, file: !1325, line: 366, type: !19)
!1911 = !DILocalVariable(name: "ma", scope: !1906, file: !1325, line: 368, type: !1420)
!1912 = !DILocalVariable(name: "mb", scope: !1906, file: !1325, line: 369, type: !1420)
!1913 = !DILocalVariable(name: "m", scope: !1906, file: !1325, line: 370, type: !1420)
!1914 = !DILocation(line: 0, scope: !1906, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 351, column: 26, scope: !1535)
!1916 = !DILocation(line: 368, column: 51, scope: !1906, inlinedAt: !1915)
!1917 = !DILocation(line: 368, column: 67, scope: !1906, inlinedAt: !1915)
!1918 = !DILocation(line: 368, column: 20, scope: !1906, inlinedAt: !1915)
!1919 = !DILocation(line: 369, column: 67, scope: !1906, inlinedAt: !1915)
!1920 = !DILocation(line: 369, column: 20, scope: !1906, inlinedAt: !1915)
!1921 = !DILocation(line: 370, column: 20, scope: !1906, inlinedAt: !1915)
!1922 = !DILocation(line: 373, column: 11, scope: !1923, inlinedAt: !1915)
!1923 = distinct !DILexicalBlock(scope: !1906, file: !1325, line: 373, column: 9)
!1924 = !DILocation(line: 373, column: 9, scope: !1906, inlinedAt: !1915)
!1925 = !DILocation(line: 0, scope: !1535)
!1926 = !DILocation(line: 352, column: 26, scope: !1535)
!1927 = !DILocation(line: 354, column: 24, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 354, column: 17)
!1929 = !DILocation(line: 354, column: 17, scope: !1535)
!1930 = !DILocation(line: 0, scope: !1633, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 355, column: 17, scope: !1928)
!1932 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !1931)
!1933 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !1931)
!1934 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !1931)
!1935 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !1931)
!1936 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !1931)
!1937 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !1931)
!1938 = !DILocation(line: 0, scope: !1651, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !1931)
!1940 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !1939)
!1941 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !1931)
!1942 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !1931)
!1943 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !1931)
!1944 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !1931)
!1945 = !DILocation(line: 357, column: 50, scope: !1928)
!1946 = !DILocation(line: 357, column: 40, scope: !1928)
!1947 = !DILocation(line: 0, scope: !1678, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 357, column: 17, scope: !1928)
!1949 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1948)
!1950 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1948)
!1951 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !1948)
!1952 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !1948)
!1953 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1948)
!1954 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1948)
!1955 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1948)
!1956 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1948)
!1957 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1948)
!1958 = !DILocation(line: 0, scope: !1699, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1948)
!1960 = !DILocation(line: 0, scope: !1706, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !1959)
!1962 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !1961)
!1963 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1948)
!1964 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1948)
!1965 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1948)
!1966 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1948)
!1967 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1948)
!1968 = !DILocation(line: 349, column: 35, scope: !1536)
!1969 = !DILocation(line: 349, column: 27, scope: !1536)
!1970 = distinct !{!1970, !1878, !1971}
!1971 = !DILocation(line: 358, column: 9, scope: !1533)
!1972 = !DILocation(line: 361, column: 14, scope: !1531)
!1973 = !DILocation(line: 363, column: 78, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 362, column: 5)
!1975 = !DILocation(line: 363, column: 45, scope: !1974)
!1976 = !DILocation(line: 364, column: 31, scope: !1974)
!1977 = !DILocation(line: 364, column: 44, scope: !1974)
!1978 = !DILocation(line: 364, column: 58, scope: !1974)
!1979 = !DILocation(line: 364, column: 69, scope: !1974)
!1980 = !DILocation(line: 364, column: 52, scope: !1974)
!1981 = !DILocation(line: 0, scope: !1668, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 363, column: 9, scope: !1974)
!1983 = !DILocation(line: 363, column: 43, scope: !1974)
!1984 = !DILocation(line: 363, column: 102, scope: !1974)
!1985 = !DILocation(line: 364, column: 48, scope: !1974)
!1986 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !1982)
!1987 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !1982)
!1988 = !DILocation(line: 0, scope: !1678, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !1982)
!1990 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !1989)
!1991 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !1989)
!1992 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !1989)
!1993 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !1989)
!1994 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !1989)
!1995 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !1989)
!1996 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !1989)
!1997 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !1989)
!1998 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !1989)
!1999 = !DILocation(line: 0, scope: !1699, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1989)
!2001 = !DILocation(line: 0, scope: !1706, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2000)
!2003 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2002)
!2004 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !1989)
!2005 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !1989)
!2006 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !1989)
!2007 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !1989)
!2008 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 365, column: 9, scope: !1974)
!2011 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !1989)
!2012 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2009)
!2013 = !DILocation(line: 365, column: 58, scope: !1974)
!2014 = !DILocation(line: 365, column: 25, scope: !1974)
!2015 = !DILocation(line: 0, scope: !1668, inlinedAt: !2010)
!2016 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2010)
!2017 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2010)
!2018 = !DILocation(line: 0, scope: !1678, inlinedAt: !2009)
!2019 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2009)
!2020 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2009)
!2021 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2009)
!2022 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2009)
!2023 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2009)
!2024 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2009)
!2025 = !DILocation(line: 0, scope: !1699, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2009)
!2027 = !DILocation(line: 0, scope: !1706, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2026)
!2029 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2028)
!2030 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2009)
!2031 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2009)
!2032 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2009)
!2033 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2009)
!2034 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2009)
!2035 = !DILocation(line: 369, column: 19, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 369, column: 13)
!2037 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 368, column: 5)
!2038 = !DILocation(line: 369, column: 13, scope: !2037)
!2039 = !DILocation(line: 0, scope: !1633, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 371, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 370, column: 9)
!2042 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2040)
!2043 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2040)
!2044 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2040)
!2045 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2040)
!2046 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2040)
!2047 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2040)
!2048 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2040)
!2049 = !DILocation(line: 0, scope: !1651, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2040)
!2051 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2050)
!2052 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2040)
!2053 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2040)
!2054 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2040)
!2055 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2040)
!2056 = !DILocation(line: 373, column: 27, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 373, column: 17)
!2058 = !DILocation(line: 373, column: 17, scope: !2057)
!2059 = !DILocation(line: 373, column: 37, scope: !2057)
!2060 = !DILocation(line: 373, column: 17, scope: !2041)
!2061 = !DILocation(line: 374, column: 53, scope: !2057)
!2062 = !DILocation(line: 374, column: 58, scope: !2057)
!2063 = !DILocation(line: 374, column: 17, scope: !2057)
!2064 = !DILocation(line: 375, column: 13, scope: !2041)
!2065 = !DILocation(line: 376, column: 9, scope: !2041)
!2066 = !DILocation(line: 379, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 378, column: 9)
!2068 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 377, column: 18)
!2069 = !DILocation(line: 380, column: 27, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 380, column: 17)
!2071 = !DILocation(line: 380, column: 17, scope: !2070)
!2072 = !DILocation(line: 380, column: 37, scope: !2070)
!2073 = !DILocation(line: 380, column: 17, scope: !2067)
!2074 = !DILocation(line: 382, column: 53, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 381, column: 13)
!2076 = !DILocation(line: 382, column: 58, scope: !2075)
!2077 = !DILocation(line: 382, column: 17, scope: !2075)
!2078 = !DILocation(line: 383, column: 33, scope: !2075)
!2079 = !DILocation(line: 383, column: 53, scope: !2075)
!2080 = !DILocation(line: 383, column: 58, scope: !2075)
!2081 = !DILocation(line: 383, column: 17, scope: !2075)
!2082 = !DILocation(line: 384, column: 13, scope: !2075)
!2083 = !DILocation(line: 385, column: 13, scope: !2067)
!2084 = !DILocation(line: 386, column: 13, scope: !2067)
!2085 = !DILocation(line: 387, column: 9, scope: !2067)
!2086 = !DILocation(line: 390, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 389, column: 9)
!2088 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 388, column: 18)
!2089 = !DILocation(line: 391, column: 27, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 391, column: 17)
!2091 = !DILocation(line: 391, column: 17, scope: !2090)
!2092 = !DILocation(line: 391, column: 37, scope: !2090)
!2093 = !DILocation(line: 391, column: 17, scope: !2087)
!2094 = !DILocation(line: 393, column: 53, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 392, column: 13)
!2096 = !DILocation(line: 393, column: 58, scope: !2095)
!2097 = !DILocation(line: 393, column: 17, scope: !2095)
!2098 = !DILocation(line: 394, column: 33, scope: !2095)
!2099 = !DILocation(line: 394, column: 53, scope: !2095)
!2100 = !DILocation(line: 394, column: 58, scope: !2095)
!2101 = !DILocation(line: 394, column: 17, scope: !2095)
!2102 = !DILocation(line: 395, column: 13, scope: !2095)
!2103 = !DILocation(line: 396, column: 13, scope: !2087)
!2104 = !DILocation(line: 397, column: 13, scope: !2087)
!2105 = !DILocation(line: 398, column: 9, scope: !2087)
!2106 = !DILocation(line: 403, column: 14, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 403, column: 13)
!2108 = !DILocation(line: 403, column: 50, scope: !2107)
!2109 = !DILocation(line: 403, column: 48, scope: !2107)
!2110 = !DILocation(line: 404, column: 14, scope: !2107)
!2111 = !DILocation(line: 403, column: 85, scope: !2107)
!2112 = !DILocation(line: 404, column: 50, scope: !2107)
!2113 = !DILocation(line: 404, column: 48, scope: !2107)
!2114 = !DILocation(line: 404, column: 86, scope: !2107)
!2115 = !DILocation(line: 403, column: 13, scope: !1539)
!2116 = !DILocation(line: 406, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 405, column: 9)
!2118 = !DILocation(line: 0, scope: !1539)
!2119 = !DILocation(line: 408, column: 9, scope: !2117)
!2120 = !DILocation(line: 0, scope: !1668, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 411, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 410, column: 9)
!2123 = !DILocation(line: 0, scope: !1678, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2121)
!2125 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2124)
!2126 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2124)
!2127 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2124)
!2128 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2124)
!2129 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2124)
!2130 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2124)
!2131 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2124)
!2132 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2124)
!2133 = !DILocation(line: 0, scope: !1699, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2124)
!2135 = !DILocation(line: 0, scope: !1706, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2134)
!2137 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2136)
!2138 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2124)
!2139 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2124)
!2140 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2124)
!2141 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2124)
!2142 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2124)
!2143 = !DILocation(line: 416, column: 30, scope: !1545)
!2144 = !DILocation(line: 416, column: 36, scope: !1545)
!2145 = !DILocation(line: 416, column: 13, scope: !1539)
!2146 = !DILocation(line: 0, scope: !1544)
!2147 = !DILocation(line: 418, column: 58, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 417, column: 13)
!2149 = !DILocation(line: 418, column: 33, scope: !2148)
!2150 = !DILocation(line: 0, scope: !1668, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 418, column: 17, scope: !2148)
!2152 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2151)
!2153 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2151)
!2154 = !DILocation(line: 0, scope: !1678, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2151)
!2156 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2155)
!2157 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2155)
!2158 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2155)
!2159 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2155)
!2160 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2155)
!2161 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2155)
!2162 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2155)
!2163 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2155)
!2164 = !DILocation(line: 0, scope: !1699, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2155)
!2166 = !DILocation(line: 0, scope: !1706, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2165)
!2168 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2167)
!2169 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2155)
!2170 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2155)
!2171 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2155)
!2172 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2155)
!2173 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2155)
!2174 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2155)
!2175 = !DILocation(line: 0, scope: !1678, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 420, column: 13, scope: !1545)
!2177 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2176)
!2178 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2176)
!2179 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2176)
!2180 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2176)
!2181 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2176)
!2182 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2176)
!2183 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2176)
!2184 = !DILocation(line: 0, scope: !1545)
!2185 = !DILocation(line: 423, column: 13, scope: !1539)
!2186 = !DILocation(line: 425, column: 39, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 424, column: 9)
!2188 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 423, column: 13)
!2189 = !DILocation(line: 425, column: 29, scope: !2187)
!2190 = !DILocation(line: 425, column: 54, scope: !2187)
!2191 = !DILocalVariable(name: "s", arg: 1, scope: !2192, file: !219, line: 251, type: !1472)
!2192 = distinct !DISubprogram(name: "bs_write_te", scope: !219, file: !219, line: 251, type: !2193, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !1472, !19, !19}
!2195 = !{!2191, !2196, !2197}
!2196 = !DILocalVariable(name: "x", arg: 2, scope: !2192, file: !219, line: 251, type: !19)
!2197 = !DILocalVariable(name: "val", arg: 3, scope: !2192, file: !219, line: 251, type: !19)
!2198 = !DILocation(line: 0, scope: !2192, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 425, column: 13, scope: !2187)
!2200 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2199)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !219, line: 253, column: 9)
!2202 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2199)
!2203 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2199)
!2204 = !DILocation(line: 0, scope: !1633, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2199)
!2206 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2205)
!2207 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2205)
!2208 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2205)
!2209 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2205)
!2210 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2205)
!2211 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2205)
!2212 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2205)
!2213 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2205)
!2214 = !DILocation(line: 0, scope: !1651, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2205)
!2216 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2215)
!2217 = !DILocation(line: 164, column: 9, scope: !1649, inlinedAt: !2205)
!2218 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2205)
!2219 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2205)
!2220 = !DILocation(line: 0, scope: !1668, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2199)
!2222 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2221)
!2223 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2221)
!2224 = !DILocation(line: 0, scope: !1678, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2221)
!2226 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2225)
!2227 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2225)
!2228 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2225)
!2229 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2225)
!2230 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2225)
!2231 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2225)
!2232 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2225)
!2233 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2225)
!2234 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2225)
!2235 = !DILocation(line: 0, scope: !1699, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2225)
!2237 = !DILocation(line: 0, scope: !1706, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2236)
!2239 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2238)
!2240 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2225)
!2241 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2225)
!2242 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2225)
!2243 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2225)
!2244 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2225)
!2245 = !DILocation(line: 0, scope: !2201, inlinedAt: !2199)
!2246 = !DILocation(line: 426, column: 29, scope: !2187)
!2247 = !DILocation(line: 426, column: 54, scope: !2187)
!2248 = !DILocation(line: 0, scope: !2192, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 426, column: 13, scope: !2187)
!2250 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2249)
!2251 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2249)
!2252 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2249)
!2253 = !DILocation(line: 0, scope: !1633, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2249)
!2255 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2254)
!2256 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2254)
!2257 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2254)
!2258 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2254)
!2259 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2254)
!2260 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2254)
!2261 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2254)
!2262 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2254)
!2263 = !DILocation(line: 0, scope: !1651, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2254)
!2265 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2264)
!2266 = !DILocation(line: 164, column: 9, scope: !1649, inlinedAt: !2254)
!2267 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2254)
!2268 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2254)
!2269 = !DILocation(line: 0, scope: !1668, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2249)
!2271 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2270)
!2272 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2270)
!2273 = !DILocation(line: 0, scope: !1678, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2270)
!2275 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2274)
!2276 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2274)
!2277 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2274)
!2278 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2274)
!2279 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2274)
!2280 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2274)
!2281 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2274)
!2282 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2274)
!2283 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2274)
!2284 = !DILocation(line: 0, scope: !1699, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2274)
!2286 = !DILocation(line: 0, scope: !1706, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2285)
!2288 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2287)
!2289 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2274)
!2290 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2274)
!2291 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2274)
!2292 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2274)
!2293 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2274)
!2294 = !DILocation(line: 0, scope: !2201, inlinedAt: !2249)
!2295 = !DILocation(line: 427, column: 29, scope: !2187)
!2296 = !DILocation(line: 427, column: 54, scope: !2187)
!2297 = !DILocation(line: 0, scope: !2192, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 427, column: 13, scope: !2187)
!2299 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2298)
!2300 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2298)
!2301 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2298)
!2302 = !DILocation(line: 0, scope: !1633, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2298)
!2304 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2303)
!2305 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2303)
!2306 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2303)
!2307 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2303)
!2308 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2303)
!2309 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2303)
!2310 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2303)
!2311 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2303)
!2312 = !DILocation(line: 0, scope: !1651, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2303)
!2314 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2313)
!2315 = !DILocation(line: 164, column: 9, scope: !1649, inlinedAt: !2303)
!2316 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2303)
!2317 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2303)
!2318 = !DILocation(line: 0, scope: !1668, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2298)
!2320 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2319)
!2321 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2319)
!2322 = !DILocation(line: 0, scope: !1678, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2319)
!2324 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2323)
!2325 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2323)
!2326 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2323)
!2327 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2323)
!2328 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2323)
!2329 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2323)
!2330 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2323)
!2331 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2323)
!2332 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2323)
!2333 = !DILocation(line: 0, scope: !1699, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2323)
!2335 = !DILocation(line: 0, scope: !1706, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2334)
!2337 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2336)
!2338 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2323)
!2339 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2323)
!2340 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2323)
!2341 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2323)
!2342 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2323)
!2343 = !DILocation(line: 0, scope: !2201, inlinedAt: !2298)
!2344 = !DILocation(line: 428, column: 29, scope: !2187)
!2345 = !DILocation(line: 428, column: 54, scope: !2187)
!2346 = !DILocation(line: 0, scope: !2192, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 428, column: 13, scope: !2187)
!2348 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2347)
!2349 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2347)
!2350 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2347)
!2351 = !DILocation(line: 0, scope: !1633, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2347)
!2353 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2352)
!2354 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2352)
!2355 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2352)
!2356 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2352)
!2357 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2352)
!2358 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2352)
!2359 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2352)
!2360 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2352)
!2361 = !DILocation(line: 0, scope: !1651, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2352)
!2363 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2362)
!2364 = !DILocation(line: 164, column: 9, scope: !1649, inlinedAt: !2352)
!2365 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2352)
!2366 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2352)
!2367 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2352)
!2368 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2352)
!2369 = !DILocation(line: 0, scope: !1668, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2347)
!2371 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2370)
!2372 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2370)
!2373 = !DILocation(line: 0, scope: !1678, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2370)
!2375 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2374)
!2376 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2374)
!2377 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2374)
!2378 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2374)
!2379 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2374)
!2380 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2374)
!2381 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2374)
!2382 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2374)
!2383 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2374)
!2384 = !DILocation(line: 0, scope: !1699, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2374)
!2386 = !DILocation(line: 0, scope: !1706, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2385)
!2388 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2387)
!2389 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2374)
!2390 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2374)
!2391 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2374)
!2392 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2374)
!2393 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2374)
!2394 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2374)
!2395 = !DILocation(line: 0, scope: !1547)
!2396 = !DILocalVariable(name: "h", arg: 1, scope: !2397, file: !3, line: 247, type: !6)
!2397 = distinct !DISubprogram(name: "cavlc_mb8x8_mvd", scope: !3, file: !3, line: 247, type: !2398, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !6, !19}
!2400 = !{!2396, !2401}
!2401 = !DILocalVariable(name: "i", arg: 2, scope: !2397, file: !3, line: 247, type: !19)
!2402 = !DILocation(line: 0, scope: !2397, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 432, column: 13, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 431, column: 9)
!2405 = !DILocation(line: 249, column: 13, scope: !2397, inlinedAt: !2403)
!2406 = !DILocation(line: 249, column: 5, scope: !2397, inlinedAt: !2403)
!2407 = !DILocation(line: 252, column: 13, scope: !2408, inlinedAt: !2403)
!2408 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 250, column: 5)
!2409 = !DILocation(line: 253, column: 13, scope: !2408, inlinedAt: !2403)
!2410 = !DILocation(line: 255, column: 13, scope: !2408, inlinedAt: !2403)
!2411 = !DILocation(line: 256, column: 13, scope: !2408, inlinedAt: !2403)
!2412 = !DILocation(line: 257, column: 13, scope: !2408, inlinedAt: !2403)
!2413 = !DILocation(line: 259, column: 13, scope: !2408, inlinedAt: !2403)
!2414 = !DILocation(line: 260, column: 13, scope: !2408, inlinedAt: !2403)
!2415 = !DILocation(line: 261, column: 13, scope: !2408, inlinedAt: !2403)
!2416 = !DILocation(line: 263, column: 13, scope: !2408, inlinedAt: !2403)
!2417 = !DILocation(line: 264, column: 13, scope: !2408, inlinedAt: !2403)
!2418 = !DILocation(line: 265, column: 13, scope: !2408, inlinedAt: !2403)
!2419 = !DILocation(line: 266, column: 13, scope: !2408, inlinedAt: !2403)
!2420 = !DILocation(line: 267, column: 13, scope: !2408, inlinedAt: !2403)
!2421 = !DILocation(line: 0, scope: !1668, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 436, column: 9, scope: !1550)
!2423 = !DILocation(line: 0, scope: !1678, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2422)
!2425 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2424)
!2426 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2424)
!2427 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2424)
!2428 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2424)
!2429 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2424)
!2430 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2424)
!2431 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2424)
!2432 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2424)
!2433 = !DILocation(line: 0, scope: !1699, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2424)
!2435 = !DILocation(line: 0, scope: !1706, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2434)
!2437 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2436)
!2438 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2424)
!2439 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2424)
!2440 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2424)
!2441 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2424)
!2442 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 440, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 439, column: 9)
!2446 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2424)
!2447 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2443)
!2448 = !DILocation(line: 0, scope: !1549)
!2449 = !DILocation(line: 440, column: 54, scope: !2445)
!2450 = !DILocation(line: 440, column: 29, scope: !2445)
!2451 = !DILocation(line: 0, scope: !1668, inlinedAt: !2444)
!2452 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2444)
!2453 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2444)
!2454 = !DILocation(line: 0, scope: !1678, inlinedAt: !2443)
!2455 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2443)
!2456 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2443)
!2457 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2443)
!2458 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2443)
!2459 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2443)
!2460 = !DILocation(line: 0, scope: !1553)
!2461 = !DILocation(line: 445, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 445, column: 21)
!2463 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 444, column: 13)
!2464 = !DILocation(line: 445, column: 21, scope: !2463)
!2465 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2443)
!2466 = !DILocation(line: 0, scope: !1699, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2443)
!2468 = !DILocation(line: 0, scope: !1706, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2467)
!2470 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2469)
!2471 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2443)
!2472 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2443)
!2473 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2443)
!2474 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2443)
!2475 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2443)
!2476 = !DILocation(line: 443, column: 23, scope: !1554)
!2477 = !DILocation(line: 443, column: 13, scope: !1554)
!2478 = !DILocation(line: 443, column: 33, scope: !1554)
!2479 = !DILocation(line: 454, column: 51, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 454, column: 17)
!2481 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 453, column: 9)
!2482 = !DILocation(line: 443, column: 13, scope: !1550)
!2483 = !DILocation(line: 446, column: 62, scope: !2462)
!2484 = !DILocation(line: 0, scope: !2192, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 446, column: 21, scope: !2462)
!2486 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2485)
!2487 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2485)
!2488 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2485)
!2489 = !DILocation(line: 0, scope: !1633, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2485)
!2491 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2490)
!2492 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2490)
!2493 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2490)
!2494 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2490)
!2495 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2490)
!2496 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2490)
!2497 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2490)
!2498 = !DILocation(line: 0, scope: !1651, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2490)
!2500 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2499)
!2501 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2490)
!2502 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2490)
!2503 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2490)
!2504 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2490)
!2505 = !DILocation(line: 0, scope: !1668, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2485)
!2507 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2506)
!2508 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2506)
!2509 = !DILocation(line: 0, scope: !1678, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2506)
!2511 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2510)
!2512 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2510)
!2513 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2510)
!2514 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2510)
!2515 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2510)
!2516 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2510)
!2517 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2510)
!2518 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2510)
!2519 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2510)
!2520 = !DILocation(line: 0, scope: !1699, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2510)
!2522 = !DILocation(line: 0, scope: !1706, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2521)
!2524 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2523)
!2525 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2510)
!2526 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2510)
!2527 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2510)
!2528 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2510)
!2529 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2510)
!2530 = !DILocation(line: 445, column: 55, scope: !2462)
!2531 = !DILocation(line: 446, column: 37, scope: !2462)
!2532 = !DILocation(line: 447, column: 13, scope: !1557)
!2533 = !DILocation(line: 447, column: 33, scope: !1557)
!2534 = !DILocation(line: 447, column: 13, scope: !1550)
!2535 = !DILocation(line: 0, scope: !1556)
!2536 = !DILocation(line: 449, column: 21, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 449, column: 21)
!2538 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 448, column: 13)
!2539 = !DILocation(line: 449, column: 21, scope: !2538)
!2540 = !DILocation(line: 450, column: 62, scope: !2537)
!2541 = !DILocation(line: 0, scope: !2192, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 450, column: 21, scope: !2537)
!2543 = !DILocation(line: 253, column: 11, scope: !2201, inlinedAt: !2542)
!2544 = !DILocation(line: 253, column: 9, scope: !2192, inlinedAt: !2542)
!2545 = !DILocation(line: 254, column: 24, scope: !2201, inlinedAt: !2542)
!2546 = !DILocation(line: 0, scope: !1633, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 254, column: 9, scope: !2201, inlinedAt: !2542)
!2548 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2547)
!2549 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2547)
!2550 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2547)
!2551 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2547)
!2552 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2547)
!2553 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2547)
!2554 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2547)
!2555 = !DILocation(line: 0, scope: !1651, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2547)
!2557 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2556)
!2558 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2547)
!2559 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2547)
!2560 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2547)
!2561 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2547)
!2562 = !DILocation(line: 0, scope: !1668, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 256, column: 9, scope: !2201, inlinedAt: !2542)
!2564 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2563)
!2565 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2563)
!2566 = !DILocation(line: 0, scope: !1678, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2563)
!2568 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2567)
!2569 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2567)
!2570 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2567)
!2571 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2567)
!2572 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2567)
!2573 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2567)
!2574 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2567)
!2575 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2567)
!2576 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2567)
!2577 = !DILocation(line: 0, scope: !1699, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2567)
!2579 = !DILocation(line: 0, scope: !1706, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2578)
!2581 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2580)
!2582 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2567)
!2583 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2567)
!2584 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2567)
!2585 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2567)
!2586 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2567)
!2587 = !DILocation(line: 449, column: 55, scope: !2537)
!2588 = !DILocation(line: 450, column: 37, scope: !2537)
!2589 = !DILocation(line: 0, scope: !1559)
!2590 = !DILocation(line: 454, column: 17, scope: !2480)
!2591 = !DILocation(line: 454, column: 17, scope: !2481)
!2592 = !DILocation(line: 455, column: 17, scope: !2480)
!2593 = !DILocation(line: 0, scope: !1561)
!2594 = !DILocation(line: 457, column: 51, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 457, column: 17)
!2596 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 456, column: 9)
!2597 = !DILocation(line: 457, column: 17, scope: !2595)
!2598 = !DILocation(line: 457, column: 17, scope: !2596)
!2599 = !DILocation(line: 458, column: 17, scope: !2595)
!2600 = !DILocation(line: 464, column: 38, scope: !1563)
!2601 = !DILocation(line: 0, scope: !1563)
!2602 = !DILocation(line: 465, column: 42, scope: !1563)
!2603 = !DILocation(line: 465, column: 32, scope: !1563)
!2604 = !DILocation(line: 465, column: 52, scope: !1563)
!2605 = !DILocation(line: 466, column: 32, scope: !1563)
!2606 = !DILocation(line: 466, column: 52, scope: !1563)
!2607 = !DILocation(line: 468, column: 52, scope: !1563)
!2608 = !DILocation(line: 468, column: 64, scope: !1563)
!2609 = !DILocation(line: 468, column: 25, scope: !1563)
!2610 = !DILocation(line: 468, column: 86, scope: !1563)
!2611 = !DILocation(line: 0, scope: !1668, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 468, column: 9, scope: !1563)
!2613 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2612)
!2614 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2612)
!2615 = !DILocation(line: 0, scope: !1678, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2612)
!2617 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2616)
!2618 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2616)
!2619 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2616)
!2620 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2616)
!2621 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2616)
!2622 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2616)
!2623 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2616)
!2624 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2616)
!2625 = !DILocation(line: 0, scope: !1699, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2616)
!2627 = !DILocation(line: 0, scope: !1706, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2626)
!2629 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2628)
!2630 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2616)
!2631 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2616)
!2632 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2616)
!2633 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2616)
!2634 = !DILocation(line: 469, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 469, column: 13)
!2636 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2616)
!2637 = !DILocation(line: 469, column: 31, scope: !2635)
!2638 = !DILocation(line: 0, scope: !2635)
!2639 = !DILocation(line: 469, column: 13, scope: !1563)
!2640 = !DILocation(line: 471, column: 28, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 471, column: 17)
!2642 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 470, column: 9)
!2643 = !DILocation(line: 471, column: 31, scope: !2641)
!2644 = !DILocation(line: 471, column: 17, scope: !2642)
!2645 = !DILocation(line: 471, column: 74, scope: !2641)
!2646 = !DILocation(line: 471, column: 46, scope: !2641)
!2647 = !DILocation(line: 472, column: 17, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 472, column: 17)
!2649 = !DILocation(line: 472, column: 28, scope: !2648)
!2650 = !DILocation(line: 472, column: 31, scope: !2648)
!2651 = !DILocation(line: 472, column: 17, scope: !2642)
!2652 = !DILocation(line: 472, column: 74, scope: !2648)
!2653 = !DILocation(line: 472, column: 46, scope: !2648)
!2654 = !DILocation(line: 473, column: 17, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 473, column: 17)
!2656 = !DILocation(line: 473, column: 17, scope: !2642)
!2657 = !DILocation(line: 473, column: 32, scope: !2655)
!2658 = !DILocation(line: 474, column: 17, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 474, column: 17)
!2660 = !DILocation(line: 474, column: 17, scope: !2642)
!2661 = !DILocation(line: 474, column: 32, scope: !2659)
!2662 = !DILocation(line: 478, column: 28, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 478, column: 17)
!2664 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 477, column: 9)
!2665 = !DILocation(line: 478, column: 31, scope: !2663)
!2666 = !DILocation(line: 478, column: 17, scope: !2664)
!2667 = !DILocation(line: 478, column: 74, scope: !2663)
!2668 = !DILocation(line: 478, column: 46, scope: !2663)
!2669 = !DILocation(line: 479, column: 31, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 479, column: 17)
!2671 = !DILocation(line: 479, column: 17, scope: !2664)
!2672 = !DILocation(line: 479, column: 74, scope: !2670)
!2673 = !DILocation(line: 479, column: 46, scope: !2670)
!2674 = !DILocation(line: 480, column: 17, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 480, column: 17)
!2676 = !DILocation(line: 480, column: 28, scope: !2675)
!2677 = !DILocation(line: 480, column: 31, scope: !2675)
!2678 = !DILocation(line: 480, column: 17, scope: !2664)
!2679 = !DILocation(line: 480, column: 74, scope: !2675)
!2680 = !DILocation(line: 480, column: 46, scope: !2675)
!2681 = !DILocation(line: 481, column: 31, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 481, column: 17)
!2683 = !DILocation(line: 481, column: 17, scope: !2664)
!2684 = !DILocation(line: 481, column: 74, scope: !2682)
!2685 = !DILocation(line: 481, column: 46, scope: !2682)
!2686 = !DILocation(line: 482, column: 23, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 482, column: 17)
!2688 = !DILocation(line: 482, column: 35, scope: !2687)
!2689 = !DILocation(line: 0, scope: !2687)
!2690 = !DILocation(line: 482, column: 17, scope: !2664)
!2691 = !DILocation(line: 484, column: 21, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 483, column: 13)
!2693 = !DILocation(line: 484, column: 36, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 484, column: 21)
!2695 = !DILocation(line: 485, column: 21, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 485, column: 21)
!2697 = !DILocation(line: 485, column: 21, scope: !2692)
!2698 = !DILocation(line: 485, column: 36, scope: !2696)
!2699 = !DILocation(line: 486, column: 21, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 486, column: 21)
!2701 = !DILocation(line: 486, column: 21, scope: !2692)
!2702 = !DILocation(line: 486, column: 36, scope: !2700)
!2703 = !DILocation(line: 487, column: 21, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 487, column: 21)
!2705 = !DILocation(line: 487, column: 21, scope: !2692)
!2706 = !DILocation(line: 487, column: 36, scope: !2704)
!2707 = !DILocation(line: 491, column: 21, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 490, column: 13)
!2709 = !DILocation(line: 491, column: 36, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 491, column: 21)
!2711 = !DILocation(line: 492, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 492, column: 21)
!2713 = !DILocation(line: 492, column: 21, scope: !2708)
!2714 = !DILocation(line: 492, column: 36, scope: !2712)
!2715 = !DILocation(line: 493, column: 21, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 493, column: 21)
!2717 = !DILocation(line: 493, column: 21, scope: !2708)
!2718 = !DILocation(line: 493, column: 36, scope: !2716)
!2719 = !DILocation(line: 494, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 494, column: 21)
!2721 = !DILocation(line: 494, column: 21, scope: !2708)
!2722 = !DILocation(line: 494, column: 36, scope: !2720)
!2723 = !DILocation(line: 0, scope: !1633, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 499, column: 9, scope: !1564)
!2725 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2724)
!2726 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2724)
!2727 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2724)
!2728 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2724)
!2729 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2724)
!2730 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2724)
!2731 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2724)
!2732 = !DILocation(line: 0, scope: !1651, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2724)
!2734 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2733)
!2735 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2724)
!2736 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2724)
!2737 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2724)
!2738 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2724)
!2739 = !DILocation(line: 0, scope: !1611, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 502, column: 20, scope: !2)
!2741 = !DILocation(line: 90, column: 21, scope: !1611, inlinedAt: !2740)
!2742 = !DILocation(line: 90, column: 28, scope: !1611, inlinedAt: !2740)
!2743 = !DILocation(line: 90, column: 23, scope: !1611, inlinedAt: !2740)
!2744 = !DILocation(line: 90, column: 58, scope: !1611, inlinedAt: !2740)
!2745 = !DILocation(line: 90, column: 11, scope: !1611, inlinedAt: !2740)
!2746 = !DILocation(line: 503, column: 8, scope: !2)
!2747 = !DILocation(line: 503, column: 29, scope: !2)
!2748 = !DILocation(line: 503, column: 45, scope: !2)
!2749 = !DILocation(line: 507, column: 28, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2, file: !3, line: 507, column: 9)
!2751 = !DILocation(line: 508, column: 56, scope: !2750)
!2752 = !DILocation(line: 508, column: 69, scope: !2750)
!2753 = !DILocation(line: 508, column: 82, scope: !2750)
!2754 = !DILocation(line: 508, column: 75, scope: !2750)
!2755 = !DILocation(line: 508, column: 25, scope: !2750)
!2756 = !DILocation(line: 0, scope: !1668, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 508, column: 9, scope: !2750)
!2758 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2757)
!2759 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2757)
!2760 = !DILocation(line: 0, scope: !1678, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2757)
!2762 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2761)
!2763 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2761)
!2764 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2761)
!2765 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2761)
!2766 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2761)
!2767 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2761)
!2768 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2761)
!2769 = !DILocation(line: 509, column: 24, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 509, column: 14)
!2771 = !DILocation(line: 509, column: 14, scope: !2750)
!2772 = !DILocation(line: 510, column: 53, scope: !2770)
!2773 = !DILocation(line: 510, column: 66, scope: !2770)
!2774 = !DILocation(line: 510, column: 79, scope: !2770)
!2775 = !DILocation(line: 510, column: 72, scope: !2770)
!2776 = !DILocation(line: 510, column: 25, scope: !2770)
!2777 = !DILocation(line: 0, scope: !1668, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 510, column: 9, scope: !2770)
!2779 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !2778)
!2780 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !2778)
!2781 = !DILocation(line: 0, scope: !1678, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2778)
!2783 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2782)
!2784 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2782)
!2785 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2782)
!2786 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2782)
!2787 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2782)
!2788 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2782)
!2789 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2782)
!2790 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2791)
!2791 = !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !2792)
!2792 = !DILocation(line: 0, scope: !2750)
!2793 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2794)
!2794 = !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2795)
!2795 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2791)
!2796 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2791)
!2797 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2791)
!2798 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2791)
!2799 = !DILocation(line: 402, column: 13, scope: !2800, inlinedAt: !2801)
!2800 = distinct !DILexicalBlock(scope: !1452, file: !1325, line: 402, column: 9)
!2801 = distinct !DILocation(line: 513, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2, file: !3, line: 513, column: 9)
!2803 = !DILocation(line: 0, scope: !1452, inlinedAt: !2801)
!2804 = !DILocation(line: 402, column: 18, scope: !2800, inlinedAt: !2801)
!2805 = !DILocation(line: 402, column: 10, scope: !2800, inlinedAt: !2801)
!2806 = !DILocation(line: 402, column: 9, scope: !1452, inlinedAt: !2801)
!2807 = !DILocation(line: 404, column: 15, scope: !2808, inlinedAt: !2801)
!2808 = distinct !DILexicalBlock(scope: !1452, file: !1325, line: 404, column: 9)
!2809 = !DILocation(line: 404, column: 22, scope: !2808, inlinedAt: !2801)
!2810 = !DILocation(line: 404, column: 9, scope: !1452, inlinedAt: !2801)
!2811 = !DILocation(line: 405, column: 16, scope: !2808, inlinedAt: !2801)
!2812 = !DILocation(line: 405, column: 9, scope: !2808, inlinedAt: !2801)
!2813 = !DILocation(line: 406, column: 12, scope: !1452, inlinedAt: !2801)
!2814 = !DILocation(line: 406, column: 41, scope: !1452, inlinedAt: !2801)
!2815 = !DILocation(line: 406, column: 5, scope: !1452, inlinedAt: !2801)
!2816 = !DILocation(line: 513, column: 9, scope: !2802)
!2817 = !DILocation(line: 513, column: 44, scope: !2802)
!2818 = !DILocation(line: 513, column: 53, scope: !2802)
!2819 = !DILocation(line: 513, column: 47, scope: !2802)
!2820 = !DILocation(line: 513, column: 9, scope: !2)
!2821 = !DILocation(line: 514, column: 29, scope: !2802)
!2822 = !DILocation(line: 0, scope: !1633, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 514, column: 9, scope: !2802)
!2824 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !2823)
!2825 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !2823)
!2826 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !2823)
!2827 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !2823)
!2828 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !2823)
!2829 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !2823)
!2830 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !2823)
!2831 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !2823)
!2832 = !DILocation(line: 0, scope: !1651, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !2823)
!2834 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !2833)
!2835 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !2823)
!2836 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !2823)
!2837 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !2823)
!2838 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !2823)
!2839 = !DILocation(line: 517, column: 19, scope: !1572)
!2840 = !DILocation(line: 517, column: 9, scope: !2)
!2841 = !DILocalVariable(name: "h", arg: 1, scope: !2842, file: !3, line: 213, type: !6)
!2842 = distinct !DISubprogram(name: "cavlc_qp_delta", scope: !3, file: !3, line: 213, type: !4, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !2843)
!2843 = !{!2841, !2844, !2845}
!2844 = !DILocalVariable(name: "s", scope: !2842, file: !3, line: 215, type: !1472)
!2845 = !DILocalVariable(name: "i_dqp", scope: !2842, file: !3, line: 216, type: !19)
!2846 = !DILocation(line: 0, scope: !2842, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 519, column: 9, scope: !1571)
!2848 = !DILocation(line: 216, column: 23, scope: !2842, inlinedAt: !2847)
!2849 = !DILocation(line: 216, column: 36, scope: !2842, inlinedAt: !2847)
!2850 = !DILocation(line: 216, column: 28, scope: !2842, inlinedAt: !2847)
!2851 = !DILocation(line: 219, column: 15, scope: !2852, inlinedAt: !2847)
!2852 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 219, column: 9)
!2853 = !DILocation(line: 219, column: 22, scope: !2852, inlinedAt: !2847)
!2854 = !DILocation(line: 219, column: 33, scope: !2852, inlinedAt: !2847)
!2855 = !DILocation(line: 219, column: 44, scope: !2852, inlinedAt: !2847)
!2856 = !DILocation(line: 219, column: 63, scope: !2852, inlinedAt: !2847)
!2857 = !DILocation(line: 219, column: 55, scope: !2852, inlinedAt: !2847)
!2858 = !DILocation(line: 220, column: 9, scope: !2852, inlinedAt: !2847)
!2859 = !DILocation(line: 220, column: 13, scope: !2852, inlinedAt: !2847)
!2860 = !DILocation(line: 219, column: 9, scope: !2842, inlinedAt: !2847)
!2861 = !DILocation(line: 223, column: 20, scope: !2862, inlinedAt: !2847)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 221, column: 5)
!2863 = !DILocation(line: 228, column: 9, scope: !2842, inlinedAt: !2847)
!2864 = !DILocation(line: 228, column: 9, scope: !2865, inlinedAt: !2847)
!2865 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 228, column: 9)
!2866 = !DILocation(line: 230, column: 19, scope: !2867, inlinedAt: !2847)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 230, column: 13)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 229, column: 5)
!2869 = !DILocation(line: 230, column: 13, scope: !2868, inlinedAt: !2847)
!2870 = !DILocation(line: 239, column: 13, scope: !2871, inlinedAt: !2878)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !219, line: 239, column: 9)
!2872 = distinct !DISubprogram(name: "bs_write_se", scope: !219, file: !219, line: 233, type: !1669, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !2873)
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2872, file: !219, line: 233, type: !1472)
!2875 = !DILocalVariable(name: "val", arg: 2, scope: !2872, file: !219, line: 233, type: !19)
!2876 = !DILocalVariable(name: "size", scope: !2872, file: !219, line: 235, type: !19)
!2877 = !DILocalVariable(name: "tmp", scope: !2872, file: !219, line: 238, type: !19)
!2878 = distinct !DILocation(line: 235, column: 5, scope: !2842, inlinedAt: !2847)
!2879 = !DILocation(line: 0, scope: !2872, inlinedAt: !2878)
!2880 = !DILocation(line: 238, column: 22, scope: !2872, inlinedAt: !2878)
!2881 = !DILocation(line: 238, column: 17, scope: !2872, inlinedAt: !2878)
!2882 = !DILocation(line: 239, column: 9, scope: !2872, inlinedAt: !2878)
!2883 = !DILocation(line: 242, column: 13, scope: !2884, inlinedAt: !2878)
!2884 = distinct !DILexicalBlock(scope: !2872, file: !219, line: 242, column: 9)
!2885 = !DILocation(line: 242, column: 9, scope: !2872, inlinedAt: !2878)
!2886 = !DILocation(line: 247, column: 13, scope: !2872, inlinedAt: !2878)
!2887 = !DILocation(line: 247, column: 10, scope: !2872, inlinedAt: !2878)
!2888 = !DILocation(line: 0, scope: !1678, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 248, column: 5, scope: !2872, inlinedAt: !2878)
!2890 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2889)
!2891 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2889)
!2892 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2889)
!2893 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2889)
!2894 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2889)
!2895 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2889)
!2896 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2889)
!2897 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2889)
!2898 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2889)
!2899 = !DILocation(line: 0, scope: !1699, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2889)
!2901 = !DILocation(line: 0, scope: !1706, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2900)
!2903 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2902)
!2904 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2889)
!2905 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2889)
!2906 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2889)
!2907 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2889)
!2908 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2889)
!2909 = !DILocalVariable(name: "h", arg: 1, scope: !2910, file: !1325, line: 378, type: !6)
!2910 = distinct !DISubprogram(name: "x264_mb_predict_non_zero_code", scope: !1325, file: !1325, line: 378, type: !1907, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !2911)
!2911 = !{!2909, !2912, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "idx", arg: 2, scope: !2910, file: !1325, line: 378, type: !19)
!2913 = !DILocalVariable(name: "za", scope: !2910, file: !1325, line: 380, type: !1420)
!2914 = !DILocalVariable(name: "zb", scope: !2910, file: !1325, line: 381, type: !1420)
!2915 = !DILocalVariable(name: "i_ret", scope: !2910, file: !1325, line: 383, type: !19)
!2916 = !DILocation(line: 0, scope: !2910, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 522, column: 9, scope: !1570)
!2918 = !DILocation(line: 380, column: 32, scope: !2910, inlinedAt: !2917)
!2919 = !DILocation(line: 380, column: 20, scope: !2910, inlinedAt: !2917)
!2920 = !DILocation(line: 381, column: 20, scope: !2910, inlinedAt: !2917)
!2921 = !DILocation(line: 383, column: 20, scope: !2910, inlinedAt: !2917)
!2922 = !DILocation(line: 385, column: 15, scope: !2923, inlinedAt: !2917)
!2923 = distinct !DILexicalBlock(scope: !2910, file: !1325, line: 385, column: 9)
!2924 = !DILocation(line: 385, column: 9, scope: !2910, inlinedAt: !2917)
!2925 = !DILocation(line: 387, column: 18, scope: !2910, inlinedAt: !2917)
!2926 = !DILocation(line: 522, column: 9, scope: !1570)
!2927 = !DILocation(line: 0, scope: !1570)
!2928 = !DILocation(line: 522, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 522, column: 9)
!2930 = !DILocation(line: 0, scope: !1678, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 522, column: 9, scope: !2929)
!2932 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2931)
!2933 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2931)
!2934 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2931)
!2935 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2931)
!2936 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2931)
!2937 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2931)
!2938 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2931)
!2939 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2931)
!2940 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2931)
!2941 = !DILocation(line: 0, scope: !1699, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2931)
!2943 = !DILocation(line: 0, scope: !1706, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2942)
!2945 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2944)
!2946 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2931)
!2947 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2931)
!2948 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2931)
!2949 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2931)
!2950 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2931)
!2951 = !DILocation(line: 525, column: 19, scope: !1576)
!2952 = !DILocation(line: 525, column: 13, scope: !1576)
!2953 = !DILocation(line: 525, column: 13, scope: !1571)
!2954 = !DILocation(line: 0, scope: !1575)
!2955 = !DILocation(line: 526, column: 13, scope: !1575)
!2956 = !DILocation(line: 0, scope: !2910, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 527, column: 17, scope: !1578)
!2958 = !DILocation(line: 380, column: 47, scope: !2910, inlinedAt: !2957)
!2959 = !DILocation(line: 380, column: 63, scope: !2910, inlinedAt: !2957)
!2960 = !DILocation(line: 380, column: 20, scope: !2910, inlinedAt: !2957)
!2961 = !DILocation(line: 381, column: 63, scope: !2910, inlinedAt: !2957)
!2962 = !DILocation(line: 381, column: 20, scope: !2910, inlinedAt: !2957)
!2963 = !DILocation(line: 383, column: 20, scope: !2910, inlinedAt: !2957)
!2964 = !DILocation(line: 385, column: 15, scope: !2923, inlinedAt: !2957)
!2965 = !DILocation(line: 385, column: 9, scope: !2910, inlinedAt: !2957)
!2966 = !DILocation(line: 387, column: 18, scope: !2910, inlinedAt: !2957)
!2967 = !DILocation(line: 527, column: 17, scope: !1578)
!2968 = !DILocation(line: 0, scope: !1578)
!2969 = !DILocation(line: 527, column: 17, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 527, column: 17)
!2971 = !DILocation(line: 0, scope: !1678, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 527, column: 17, scope: !2970)
!2973 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !2972)
!2974 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !2972)
!2975 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !2972)
!2976 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !2972)
!2977 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !2972)
!2978 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !2972)
!2979 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !2972)
!2980 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !2972)
!2981 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !2972)
!2982 = !DILocation(line: 0, scope: !1699, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2972)
!2984 = !DILocation(line: 0, scope: !1706, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !2983)
!2986 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !2985)
!2987 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !2972)
!2988 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !2972)
!2989 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !2972)
!2990 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !2972)
!2991 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !2972)
!2992 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !2972)
!2993 = !DILocation(line: 526, column: 38, scope: !1579)
!2994 = !DILocation(line: 526, column: 31, scope: !1579)
!2995 = distinct !{!2995, !2955, !2996}
!2996 = !DILocation(line: 527, column: 17, scope: !1575)
!2997 = !DILocation(line: 529, column: 20, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 529, column: 14)
!2999 = !DILocation(line: 529, column: 39, scope: !2998)
!3000 = !DILocation(line: 529, column: 31, scope: !2998)
!3001 = !DILocation(line: 529, column: 14, scope: !1572)
!3002 = !DILocation(line: 0, scope: !2842, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 531, column: 9, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 530, column: 5)
!3005 = !DILocation(line: 216, column: 23, scope: !2842, inlinedAt: !3003)
!3006 = !DILocation(line: 216, column: 36, scope: !2842, inlinedAt: !3003)
!3007 = !DILocation(line: 228, column: 9, scope: !2865, inlinedAt: !3003)
!3008 = !DILocation(line: 228, column: 9, scope: !2842, inlinedAt: !3003)
!3009 = !DILocation(line: 216, column: 28, scope: !2842, inlinedAt: !3003)
!3010 = !DILocation(line: 230, column: 19, scope: !2867, inlinedAt: !3003)
!3011 = !DILocation(line: 230, column: 13, scope: !2868, inlinedAt: !3003)
!3012 = !DILocation(line: 239, column: 13, scope: !2871, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 235, column: 5, scope: !2842, inlinedAt: !3003)
!3014 = !DILocation(line: 0, scope: !2872, inlinedAt: !3013)
!3015 = !DILocation(line: 238, column: 22, scope: !2872, inlinedAt: !3013)
!3016 = !DILocation(line: 238, column: 17, scope: !2872, inlinedAt: !3013)
!3017 = !DILocation(line: 239, column: 9, scope: !2872, inlinedAt: !3013)
!3018 = !DILocation(line: 242, column: 13, scope: !2884, inlinedAt: !3013)
!3019 = !DILocation(line: 242, column: 9, scope: !2872, inlinedAt: !3013)
!3020 = !DILocation(line: 247, column: 13, scope: !2872, inlinedAt: !3013)
!3021 = !DILocation(line: 247, column: 10, scope: !2872, inlinedAt: !3013)
!3022 = !DILocation(line: 0, scope: !1678, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 248, column: 5, scope: !2872, inlinedAt: !3013)
!3024 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3023)
!3025 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3023)
!3026 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3023)
!3027 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3023)
!3028 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3023)
!3029 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3023)
!3030 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3023)
!3031 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3023)
!3032 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3023)
!3033 = !DILocation(line: 0, scope: !1699, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3023)
!3035 = !DILocation(line: 0, scope: !1706, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3034)
!3037 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3036)
!3038 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3023)
!3039 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3023)
!3040 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3023)
!3041 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3023)
!3042 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3023)
!3043 = !DILocalVariable(name: "h", arg: 1, scope: !3044, file: !3, line: 271, type: !6)
!3044 = distinct !DISubprogram(name: "x264_macroblock_luma_write_cavlc", scope: !3, file: !3, line: 271, type: !3045, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !6, !19, !19}
!3047 = !{!3043, !3048, !3049, !3050, !3054, !3056, !3060, !3063}
!3048 = !DILocalVariable(name: "i8start", arg: 2, scope: !3044, file: !3, line: 271, type: !19)
!3049 = !DILocalVariable(name: "i8end", arg: 3, scope: !3044, file: !3, line: 271, type: !19)
!3050 = !DILocalVariable(name: "i8", scope: !3051, file: !3, line: 276, type: !19)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 276, column: 9)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 274, column: 5)
!3053 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 273, column: 9)
!3054 = !DILocalVariable(name: "i8", scope: !3055, file: !3, line: 281, type: !19)
!3055 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 281, column: 5)
!3056 = !DILocalVariable(name: "i4", scope: !3057, file: !3, line: 283, type: !19)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 283, column: 13)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 282, column: 13)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 281, column: 5)
!3060 = !DILocalVariable(name: "nC", scope: !3061, file: !3, line: 284, type: !19)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 284, column: 17)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 283, column: 13)
!3063 = !DILocalVariable(name: "nnz", scope: !3061, file: !3, line: 284, type: !214)
!3064 = !DILocation(line: 0, scope: !3044, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 532, column: 9, scope: !3004)
!3066 = !DILocation(line: 273, column: 15, scope: !3053, inlinedAt: !3065)
!3067 = !DILocation(line: 273, column: 9, scope: !3053, inlinedAt: !3065)
!3068 = !DILocation(line: 273, column: 9, scope: !3044, inlinedAt: !3065)
!3069 = !DILocation(line: 0, scope: !3051, inlinedAt: !3065)
!3070 = !DILocation(line: 277, column: 23, scope: !3071, inlinedAt: !3065)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 277, column: 17)
!3072 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 276, column: 9)
!3073 = !DILocation(line: 277, column: 34, scope: !3071, inlinedAt: !3065)
!3074 = !DILocation(line: 277, column: 17, scope: !3072, inlinedAt: !3065)
!3075 = !DILocation(line: 278, column: 28, scope: !3071, inlinedAt: !3065)
!3076 = !DILocation(line: 278, column: 93, scope: !3071, inlinedAt: !3065)
!3077 = !DILocation(line: 278, column: 17, scope: !3071, inlinedAt: !3065)
!3078 = !DILocation(line: 278, column: 50, scope: !3071, inlinedAt: !3065)
!3079 = !DILocation(line: 278, column: 72, scope: !3071, inlinedAt: !3065)
!3080 = !DILocation(line: 0, scope: !3055, inlinedAt: !3065)
!3081 = !DILocation(line: 281, column: 5, scope: !3055, inlinedAt: !3065)
!3082 = !DILocation(line: 282, column: 19, scope: !3058, inlinedAt: !3065)
!3083 = !DILocation(line: 282, column: 35, scope: !3058, inlinedAt: !3065)
!3084 = !DILocation(line: 282, column: 30, scope: !3058, inlinedAt: !3065)
!3085 = !DILocation(line: 282, column: 13, scope: !3059, inlinedAt: !3065)
!3086 = !DILocation(line: 0, scope: !3057, inlinedAt: !3065)
!3087 = !DILocation(line: 0, scope: !2910, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 284, column: 17, scope: !3061, inlinedAt: !3065)
!3089 = !DILocation(line: 380, column: 47, scope: !2910, inlinedAt: !3088)
!3090 = !DILocation(line: 380, column: 63, scope: !2910, inlinedAt: !3088)
!3091 = !DILocation(line: 380, column: 20, scope: !2910, inlinedAt: !3088)
!3092 = !DILocation(line: 381, column: 63, scope: !2910, inlinedAt: !3088)
!3093 = !DILocation(line: 381, column: 20, scope: !2910, inlinedAt: !3088)
!3094 = !DILocation(line: 383, column: 20, scope: !2910, inlinedAt: !3088)
!3095 = !DILocation(line: 385, column: 15, scope: !2923, inlinedAt: !3088)
!3096 = !DILocation(line: 385, column: 9, scope: !2910, inlinedAt: !3088)
!3097 = !DILocation(line: 387, column: 18, scope: !2910, inlinedAt: !3088)
!3098 = !DILocation(line: 284, column: 17, scope: !3061, inlinedAt: !3065)
!3099 = !DILocation(line: 0, scope: !3061, inlinedAt: !3065)
!3100 = !DILocation(line: 284, column: 17, scope: !3101, inlinedAt: !3065)
!3101 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 284, column: 17)
!3102 = !DILocation(line: 0, scope: !1678, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 284, column: 17, scope: !3101, inlinedAt: !3065)
!3104 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3103)
!3105 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3103)
!3106 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3103)
!3107 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3103)
!3108 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3103)
!3109 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3103)
!3110 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3103)
!3111 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3103)
!3112 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3103)
!3113 = !DILocation(line: 0, scope: !1699, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3103)
!3115 = !DILocation(line: 0, scope: !1706, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3114)
!3117 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3116)
!3118 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3103)
!3119 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3103)
!3120 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3103)
!3121 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3103)
!3122 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3103)
!3123 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3103)
!3124 = !DILocation(line: 281, column: 43, scope: !3059, inlinedAt: !3065)
!3125 = !DILocation(line: 281, column: 31, scope: !3059, inlinedAt: !3065)
!3126 = distinct !{!3126, !3081, !3127}
!3127 = !DILocation(line: 284, column: 17, scope: !3055, inlinedAt: !3065)
!3128 = !DILocation(line: 534, column: 15, scope: !1584)
!3129 = !DILocation(line: 534, column: 9, scope: !1584)
!3130 = !DILocation(line: 534, column: 9, scope: !2)
!3131 = !DILocation(line: 0, scope: !1582)
!3132 = !DILocation(line: 537, column: 9, scope: !1582)
!3133 = !DILocation(line: 537, column: 9, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 537, column: 9)
!3135 = !DILocation(line: 0, scope: !1678, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 537, column: 9, scope: !3134)
!3137 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3136)
!3138 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3136)
!3139 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3136)
!3140 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3136)
!3141 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3136)
!3142 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3136)
!3143 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3136)
!3144 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3136)
!3145 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3136)
!3146 = !DILocation(line: 0, scope: !1699, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3136)
!3148 = !DILocation(line: 0, scope: !1706, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3147)
!3150 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3149)
!3151 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3136)
!3152 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3136)
!3153 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3136)
!3154 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3136)
!3155 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3136)
!3156 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3136)
!3157 = !DILocation(line: 0, scope: !1587)
!3158 = !DILocation(line: 538, column: 9, scope: !1587)
!3159 = !DILocation(line: 538, column: 9, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 538, column: 9)
!3161 = !DILocation(line: 0, scope: !1678, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 538, column: 9, scope: !3160)
!3163 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3162)
!3164 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3162)
!3165 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3162)
!3166 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3162)
!3167 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3162)
!3168 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3162)
!3169 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3162)
!3170 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3162)
!3171 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3162)
!3172 = !DILocation(line: 0, scope: !1699, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3162)
!3174 = !DILocation(line: 0, scope: !1706, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3173)
!3176 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3175)
!3177 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3162)
!3178 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3162)
!3179 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3162)
!3180 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3162)
!3181 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3162)
!3182 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3162)
!3183 = !DILocation(line: 539, column: 19, scope: !1591)
!3184 = !DILocation(line: 539, column: 31, scope: !1591)
!3185 = !DILocation(line: 539, column: 13, scope: !1583)
!3186 = !DILocation(line: 0, scope: !1590)
!3187 = !DILocation(line: 540, column: 13, scope: !1590)
!3188 = !DILocation(line: 0, scope: !2910, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 541, column: 17, scope: !1593)
!3190 = !DILocation(line: 380, column: 47, scope: !2910, inlinedAt: !3189)
!3191 = !DILocation(line: 380, column: 63, scope: !2910, inlinedAt: !3189)
!3192 = !DILocation(line: 380, column: 20, scope: !2910, inlinedAt: !3189)
!3193 = !DILocation(line: 381, column: 63, scope: !2910, inlinedAt: !3189)
!3194 = !DILocation(line: 381, column: 20, scope: !2910, inlinedAt: !3189)
!3195 = !DILocation(line: 383, column: 20, scope: !2910, inlinedAt: !3189)
!3196 = !DILocation(line: 385, column: 15, scope: !2923, inlinedAt: !3189)
!3197 = !DILocation(line: 385, column: 9, scope: !2910, inlinedAt: !3189)
!3198 = !DILocation(line: 387, column: 18, scope: !2910, inlinedAt: !3189)
!3199 = !DILocation(line: 541, column: 17, scope: !1593)
!3200 = !DILocation(line: 0, scope: !1593)
!3201 = !DILocation(line: 541, column: 17, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 541, column: 17)
!3203 = !DILocation(line: 0, scope: !1678, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 541, column: 17, scope: !3202)
!3205 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3204)
!3206 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3204)
!3207 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3204)
!3208 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3204)
!3209 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3204)
!3210 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3204)
!3211 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3204)
!3212 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3204)
!3213 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3204)
!3214 = !DILocation(line: 0, scope: !1699, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3204)
!3216 = !DILocation(line: 0, scope: !1706, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3215)
!3218 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3217)
!3219 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3204)
!3220 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3204)
!3221 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3204)
!3222 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3204)
!3223 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3204)
!3224 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3204)
!3225 = !DILocation(line: 540, column: 39, scope: !1594)
!3226 = !DILocation(line: 540, column: 32, scope: !1594)
!3227 = distinct !{!3227, !3187, !3228}
!3228 = !DILocation(line: 541, column: 17, scope: !1590)
!3229 = !DILocation(line: 0, scope: !1611, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 545, column: 33, scope: !2)
!3231 = !DILocation(line: 90, column: 21, scope: !1611, inlinedAt: !3230)
!3232 = !DILocation(line: 90, column: 28, scope: !1611, inlinedAt: !3230)
!3233 = !DILocation(line: 90, column: 23, scope: !1611, inlinedAt: !3230)
!3234 = !DILocation(line: 90, column: 58, scope: !1611, inlinedAt: !3230)
!3235 = !DILocation(line: 90, column: 11, scope: !1611, inlinedAt: !3230)
!3236 = !DILocation(line: 545, column: 19, scope: !2)
!3237 = !DILocation(line: 545, column: 30, scope: !2)
!3238 = !DILocation(line: 545, column: 43, scope: !2)
!3239 = !DILocation(line: 547, column: 1, scope: !2)
!3240 = !DILocation(line: 0, scope: !1668)
!3241 = !DILocation(line: 230, column: 38, scope: !1668)
!3242 = !DILocation(line: 230, column: 18, scope: !1668)
!3243 = !DILocation(line: 0, scope: !1678, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 230, column: 5, scope: !1668)
!3245 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3244)
!3246 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3244)
!3247 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3244)
!3248 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3244)
!3249 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3244)
!3250 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3244)
!3251 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3244)
!3252 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3244)
!3253 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3244)
!3254 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3244)
!3255 = !DILocation(line: 0, scope: !1699, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3244)
!3257 = !DILocation(line: 0, scope: !1706, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3256)
!3259 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3258)
!3260 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3244)
!3261 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3244)
!3262 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3244)
!3263 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3244)
!3264 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3244)
!3265 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3244)
!3266 = !DILocation(line: 231, column: 1, scope: !1668)
!3267 = !DILocation(line: 0, scope: !2192)
!3268 = !DILocation(line: 253, column: 11, scope: !2201)
!3269 = !DILocation(line: 253, column: 9, scope: !2192)
!3270 = !DILocation(line: 254, column: 24, scope: !2201)
!3271 = !DILocation(line: 0, scope: !1633, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 254, column: 9, scope: !2201)
!3273 = !DILocation(line: 159, column: 8, scope: !1633, inlinedAt: !3272)
!3274 = !DILocation(line: 159, column: 17, scope: !1633, inlinedAt: !3272)
!3275 = !DILocation(line: 160, column: 20, scope: !1633, inlinedAt: !3272)
!3276 = !DILocation(line: 160, column: 17, scope: !1633, inlinedAt: !3272)
!3277 = !DILocation(line: 161, column: 8, scope: !1633, inlinedAt: !3272)
!3278 = !DILocation(line: 161, column: 14, scope: !1633, inlinedAt: !3272)
!3279 = !DILocation(line: 162, column: 19, scope: !1646, inlinedAt: !3272)
!3280 = !DILocation(line: 162, column: 9, scope: !1633, inlinedAt: !3272)
!3281 = !DILocation(line: 164, column: 37, scope: !1649, inlinedAt: !3272)
!3282 = !DILocation(line: 0, scope: !1651, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 164, column: 23, scope: !1649, inlinedAt: !3272)
!3284 = !DILocation(line: 264, column: 58, scope: !1651, inlinedAt: !3283)
!3285 = !DILocation(line: 164, column: 9, scope: !1649, inlinedAt: !3272)
!3286 = !DILocation(line: 164, column: 21, scope: !1649, inlinedAt: !3272)
!3287 = !DILocation(line: 165, column: 14, scope: !1649, inlinedAt: !3272)
!3288 = !DILocation(line: 166, column: 19, scope: !1649, inlinedAt: !3272)
!3289 = !DILocation(line: 167, column: 5, scope: !1649, inlinedAt: !3272)
!3290 = !DILocation(line: 0, scope: !1668, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 256, column: 9, scope: !2201)
!3292 = !DILocation(line: 230, column: 38, scope: !1668, inlinedAt: !3291)
!3293 = !DILocation(line: 230, column: 18, scope: !1668, inlinedAt: !3291)
!3294 = !DILocation(line: 0, scope: !1678, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 230, column: 5, scope: !1668, inlinedAt: !3291)
!3296 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3295)
!3297 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3295)
!3298 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3295)
!3299 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3295)
!3300 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3295)
!3301 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3295)
!3302 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3295)
!3303 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3295)
!3304 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3295)
!3305 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3295)
!3306 = !DILocation(line: 0, scope: !1699, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3295)
!3308 = !DILocation(line: 0, scope: !1706, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3307)
!3310 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3309)
!3311 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3295)
!3312 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3295)
!3313 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3295)
!3314 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3295)
!3315 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3295)
!3316 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3295)
!3317 = !DILocation(line: 257, column: 1, scope: !2192)
!3318 = distinct !DISubprogram(name: "cavlc_mb_mvd", scope: !3, file: !3, line: 238, type: !3319, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1322, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !6, !19, !19, !19}
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327}
!3322 = !DILocalVariable(name: "h", arg: 1, scope: !3318, file: !3, line: 238, type: !6)
!3323 = !DILocalVariable(name: "i_list", arg: 2, scope: !3318, file: !3, line: 238, type: !19)
!3324 = !DILocalVariable(name: "idx", arg: 3, scope: !3318, file: !3, line: 238, type: !19)
!3325 = !DILocalVariable(name: "width", arg: 4, scope: !3318, file: !3, line: 238, type: !19)
!3326 = !DILocalVariable(name: "s", scope: !3318, file: !3, line: 240, type: !1472)
!3327 = !DILocalVariable(name: "mvp", scope: !3318, file: !3, line: 241, type: !570, align: 32)
!3328 = distinct !DIAssignID()
!3329 = !DILocation(line: 0, scope: !3318)
!3330 = !DILocation(line: 241, column: 5, scope: !3318)
!3331 = !DILocation(line: 242, column: 5, scope: !3318)
!3332 = !DILocation(line: 243, column: 33, scope: !3318)
!3333 = !DILocation(line: 243, column: 21, scope: !3318)
!3334 = !DILocation(line: 243, column: 44, scope: !3318)
!3335 = !DILocation(line: 243, column: 66, scope: !3318)
!3336 = !DILocation(line: 243, column: 64, scope: !3318)
!3337 = !DILocation(line: 0, scope: !2872, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 243, column: 5, scope: !3318)
!3339 = !DILocation(line: 238, column: 22, scope: !2872, inlinedAt: !3338)
!3340 = !DILocation(line: 238, column: 17, scope: !2872, inlinedAt: !3338)
!3341 = !DILocation(line: 239, column: 13, scope: !2871, inlinedAt: !3338)
!3342 = !DILocation(line: 239, column: 9, scope: !2872, inlinedAt: !3338)
!3343 = !DILocation(line: 242, column: 13, scope: !2884, inlinedAt: !3338)
!3344 = !DILocation(line: 242, column: 9, scope: !2872, inlinedAt: !3338)
!3345 = !DILocation(line: 247, column: 13, scope: !2872, inlinedAt: !3338)
!3346 = !DILocation(line: 247, column: 10, scope: !2872, inlinedAt: !3338)
!3347 = !DILocation(line: 0, scope: !1678, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 248, column: 5, scope: !2872, inlinedAt: !3338)
!3349 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3348)
!3350 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3348)
!3351 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3348)
!3352 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3348)
!3353 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3348)
!3354 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3348)
!3355 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3348)
!3356 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3348)
!3357 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3348)
!3358 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3348)
!3359 = !DILocation(line: 0, scope: !1699, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3348)
!3361 = !DILocation(line: 0, scope: !1706, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3360)
!3363 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3362)
!3364 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3348)
!3365 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3348)
!3366 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3348)
!3367 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3348)
!3368 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3348)
!3369 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 248, column: 5, scope: !2872, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 244, column: 5, scope: !3318)
!3372 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3348)
!3373 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3370)
!3374 = !DILocation(line: 244, column: 21, scope: !3318)
!3375 = !DILocation(line: 244, column: 66, scope: !3318)
!3376 = !DILocation(line: 244, column: 64, scope: !3318)
!3377 = !DILocation(line: 0, scope: !2872, inlinedAt: !3371)
!3378 = !DILocation(line: 238, column: 22, scope: !2872, inlinedAt: !3371)
!3379 = !DILocation(line: 238, column: 17, scope: !2872, inlinedAt: !3371)
!3380 = !DILocation(line: 239, column: 13, scope: !2871, inlinedAt: !3371)
!3381 = !DILocation(line: 239, column: 9, scope: !2872, inlinedAt: !3371)
!3382 = !DILocation(line: 242, column: 13, scope: !2884, inlinedAt: !3371)
!3383 = !DILocation(line: 242, column: 9, scope: !2872, inlinedAt: !3371)
!3384 = !DILocation(line: 247, column: 13, scope: !2872, inlinedAt: !3371)
!3385 = !DILocation(line: 247, column: 10, scope: !2872, inlinedAt: !3371)
!3386 = !DILocation(line: 0, scope: !1678, inlinedAt: !3370)
!3387 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3370)
!3388 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3370)
!3389 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3370)
!3390 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3370)
!3391 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3370)
!3392 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3370)
!3393 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3370)
!3394 = !DILocation(line: 0, scope: !1699, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3370)
!3396 = !DILocation(line: 0, scope: !1706, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3395)
!3398 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3397)
!3399 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3370)
!3400 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3370)
!3401 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3370)
!3402 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3370)
!3403 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3370)
!3404 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3370)
!3405 = !DILocation(line: 245, column: 1, scope: !3318)
!3406 = distinct !DIAssignID()
!3407 = !DILocation(line: 0, scope: !1463)
!3408 = !DILocation(line: 129, column: 5, scope: !1463)
!3409 = !DILocation(line: 136, column: 14, scope: !1463)
!3410 = !DILocation(line: 136, column: 5, scope: !1463)
!3411 = !DILocation(line: 136, column: 23, scope: !1463)
!3412 = distinct !DIAssignID()
!3413 = !DILocation(line: 137, column: 5, scope: !1463)
!3414 = !DILocation(line: 137, column: 23, scope: !1463)
!3415 = distinct !DIAssignID()
!3416 = !DILocation(line: 138, column: 25, scope: !1463)
!3417 = !DILocation(line: 138, column: 15, scope: !1463)
!3418 = !DILocation(line: 139, column: 29, scope: !1463)
!3419 = !DILocation(line: 139, column: 38, scope: !1463)
!3420 = !DILocation(line: 141, column: 22, scope: !1463)
!3421 = !DILocation(line: 141, column: 39, scope: !1463)
!3422 = !DILocation(line: 141, column: 47, scope: !1463)
!3423 = !DILocation(line: 141, column: 43, scope: !1463)
!3424 = !DILocation(line: 141, column: 68, scope: !1463)
!3425 = !DILocation(line: 142, column: 22, scope: !1463)
!3426 = !DILocation(line: 142, column: 39, scope: !1463)
!3427 = !DILocation(line: 142, column: 47, scope: !1463)
!3428 = !DILocation(line: 142, column: 43, scope: !1463)
!3429 = !DILocation(line: 142, column: 75, scope: !1463)
!3430 = !DILocation(line: 142, column: 16, scope: !1463)
!3431 = !DILocation(line: 143, column: 22, scope: !1463)
!3432 = !DILocation(line: 143, column: 39, scope: !1463)
!3433 = !DILocation(line: 143, column: 47, scope: !1463)
!3434 = !DILocation(line: 143, column: 43, scope: !1463)
!3435 = !DILocation(line: 143, column: 75, scope: !1463)
!3436 = !DILocation(line: 143, column: 16, scope: !1463)
!3437 = !DILocation(line: 144, column: 18, scope: !1463)
!3438 = !DILocation(line: 145, column: 34, scope: !1463)
!3439 = !DILocation(line: 146, column: 41, scope: !1463)
!3440 = !DILocation(line: 147, column: 41, scope: !1463)
!3441 = !DILocation(line: 146, column: 12, scope: !1463)
!3442 = !DILocation(line: 147, column: 12, scope: !1463)
!3443 = !DILocation(line: 148, column: 17, scope: !1463)
!3444 = !DILocation(line: 148, column: 12, scope: !1463)
!3445 = !DILocation(line: 151, column: 5, scope: !1463)
!3446 = !DILocation(line: 0, scope: !1678, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 151, column: 5, scope: !1463)
!3448 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3447)
!3449 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3447)
!3450 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3447)
!3451 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3447)
!3452 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3447)
!3453 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3447)
!3454 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3447)
!3455 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3447)
!3456 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3447)
!3457 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3447)
!3458 = !DILocation(line: 0, scope: !1699, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3447)
!3460 = !DILocation(line: 0, scope: !1706, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3459)
!3462 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3461)
!3463 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3447)
!3464 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3447)
!3465 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3447)
!3466 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3447)
!3467 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3447)
!3468 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 154, column: 5, scope: !1463)
!3470 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3447)
!3471 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3469)
!3472 = !DILocation(line: 153, column: 31, scope: !1463)
!3473 = !DILocation(line: 153, column: 36, scope: !1463)
!3474 = !DILocation(line: 0, scope: !1678, inlinedAt: !3469)
!3475 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3469)
!3476 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3469)
!3477 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3469)
!3478 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3469)
!3479 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3469)
!3480 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3469)
!3481 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3469)
!3482 = !DILocation(line: 0, scope: !1699, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3469)
!3484 = !DILocation(line: 0, scope: !1706, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3483)
!3486 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3485)
!3487 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3469)
!3488 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3469)
!3489 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3469)
!3490 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3469)
!3491 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3469)
!3492 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3469)
!3493 = !DILocation(line: 156, column: 20, scope: !1481)
!3494 = !DILocation(line: 156, column: 9, scope: !1463)
!3495 = !DILocation(line: 158, column: 19, scope: !1480)
!3496 = !DILocation(line: 0, scope: !1480)
!3497 = !DILocation(line: 159, column: 54, scope: !1480)
!3498 = !DILocation(line: 160, column: 21, scope: !1480)
!3499 = !DILocation(line: 160, column: 26, scope: !1480)
!3500 = !DILocation(line: 160, column: 30, scope: !1480)
!3501 = !DILocation(line: 160, column: 13, scope: !1480)
!3502 = !DILocation(line: 163, column: 36, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 163, column: 13)
!3504 = !DILocation(line: 163, column: 13, scope: !1480)
!3505 = !DILocation(line: 161, column: 13, scope: !1480)
!3506 = !DILocation(line: 165, column: 13, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 164, column: 9)
!3508 = !DILocation(line: 0, scope: !1678, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 165, column: 13, scope: !3507)
!3510 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3509)
!3511 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3509)
!3512 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3509)
!3513 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3509)
!3514 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3509)
!3515 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3509)
!3516 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3509)
!3517 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3509)
!3518 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3509)
!3519 = !DILocation(line: 0, scope: !1699, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3509)
!3521 = !DILocation(line: 0, scope: !1706, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3520)
!3523 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3522)
!3524 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3509)
!3525 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3509)
!3526 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3509)
!3527 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3509)
!3528 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3509)
!3529 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3509)
!3530 = !DILocation(line: 166, column: 31, scope: !3507)
!3531 = !DILocation(line: 166, column: 79, scope: !3507)
!3532 = !DILocation(line: 167, column: 9, scope: !3507)
!3533 = !DILocation(line: 169, column: 31, scope: !3503)
!3534 = !DILocation(line: 0, scope: !3503)
!3535 = !DILocation(line: 0, scope: !1484)
!3536 = !DILocation(line: 170, scope: !1484)
!3537 = !DILocation(line: 170, column: 38, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 170, column: 9)
!3539 = !DILocation(line: 170, column: 9, scope: !1484)
!3540 = !DILocation(line: 172, column: 19, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 171, column: 9)
!3542 = !DILocation(line: 172, column: 37, scope: !3541)
!3543 = !DILocation(line: 173, column: 31, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 173, column: 17)
!3545 = !DILocation(line: 173, column: 17, scope: !3541)
!3546 = !DILocation(line: 175, column: 17, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 174, column: 13)
!3548 = !DILocation(line: 0, scope: !1678, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 175, column: 17, scope: !3547)
!3550 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3549)
!3551 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3549)
!3552 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3549)
!3553 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3549)
!3554 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3549)
!3555 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3549)
!3556 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3549)
!3557 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3549)
!3558 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3549)
!3559 = !DILocation(line: 0, scope: !1699, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3549)
!3561 = !DILocation(line: 0, scope: !1706, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3560)
!3563 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3562)
!3564 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3549)
!3565 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3549)
!3566 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3549)
!3567 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3549)
!3568 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3549)
!3569 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3549)
!3570 = !DILocation(line: 176, column: 74, scope: !3547)
!3571 = !DILocation(line: 176, column: 35, scope: !3547)
!3572 = !DILocation(line: 177, column: 13, scope: !3547)
!3573 = !DILocation(line: 179, column: 35, scope: !3544)
!3574 = !DILocation(line: 0, scope: !3544)
!3575 = distinct !{!3575, !3539, !3576}
!3576 = !DILocation(line: 180, column: 9, scope: !1484)
!3577 = !DILocation(line: 183, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 183, column: 9)
!3579 = !DILocation(line: 183, column: 28, scope: !3578)
!3580 = !DILocation(line: 183, column: 26, scope: !3578)
!3581 = !DILocation(line: 183, column: 9, scope: !1463)
!3582 = !DILocation(line: 185, column: 27, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 185, column: 13)
!3584 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 184, column: 5)
!3585 = !DILocation(line: 0, scope: !3583)
!3586 = !DILocation(line: 0, scope: !1678, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 186, column: 13, scope: !3583)
!3588 = !DILocation(line: 0, scope: !1678, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 188, column: 13, scope: !3583)
!3590 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3585)
!3591 = !DILocation(line: 185, column: 13, scope: !3584)
!3592 = !DILocation(line: 186, column: 13, scope: !3583)
!3593 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3587)
!3594 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3587)
!3595 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3587)
!3596 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3587)
!3597 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3587)
!3598 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3587)
!3599 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3587)
!3600 = !DILocation(line: 188, column: 13, scope: !3583)
!3601 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3589)
!3602 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3589)
!3603 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3589)
!3604 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3589)
!3605 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3589)
!3606 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3589)
!3607 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3589)
!3608 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3585)
!3609 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3610)
!3610 = !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3611)
!3611 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3585)
!3612 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3585)
!3613 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3585)
!3614 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3585)
!3615 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3585)
!3616 = !DILocation(line: 191, column: 23, scope: !1489)
!3617 = !DILocation(line: 0, scope: !1486)
!3618 = !DILocation(line: 191, column: 35, scope: !1489)
!3619 = !DILocation(line: 191, column: 5, scope: !1486)
!3620 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 194, column: 9, scope: !1488)
!3622 = !DILocation(line: 199, column: 1, scope: !1463)
!3623 = !DILocation(line: 198, column: 5, scope: !1463)
!3624 = !DILocation(line: 193, column: 20, scope: !1488)
!3625 = !DILocation(line: 0, scope: !1488)
!3626 = !DILocation(line: 194, column: 9, scope: !1488)
!3627 = !DILocation(line: 0, scope: !1678, inlinedAt: !3621)
!3628 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3621)
!3629 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3621)
!3630 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3621)
!3631 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3621)
!3632 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3621)
!3633 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3621)
!3634 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3621)
!3635 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3621)
!3636 = !DILocation(line: 0, scope: !1699, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3621)
!3638 = !DILocation(line: 0, scope: !1706, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3637)
!3640 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3639)
!3641 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3621)
!3642 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3621)
!3643 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3621)
!3644 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3621)
!3645 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3621)
!3646 = !DILocation(line: 195, column: 25, scope: !1488)
!3647 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3621)
!3648 = !DILocation(line: 195, column: 22, scope: !1488)
!3649 = !DILocation(line: 191, column: 57, scope: !1489)
!3650 = distinct !{!3650, !3619, !3651}
!3651 = !DILocation(line: 196, column: 5, scope: !1486)
!3652 = !DISubprogram(name: "x264_mb_predict_mv", scope: !1325, file: !1325, line: 299, type: !3653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !6, !19, !19, !19, !739}
!3655 = !DILocation(line: 0, scope: !1496)
!3656 = !DILocation(line: 77, column: 22, scope: !1496)
!3657 = !DILocation(line: 78, column: 27, scope: !1496)
!3658 = !DILocation(line: 78, column: 33, scope: !1496)
!3659 = !DILocation(line: 79, column: 33, scope: !1496)
!3660 = !DILocation(line: 79, column: 35, scope: !1496)
!3661 = !DILocation(line: 79, column: 40, scope: !1496)
!3662 = !DILocation(line: 80, column: 24, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 80, column: 9)
!3664 = !DILocation(line: 80, column: 45, scope: !3663)
!3665 = !DILocation(line: 80, column: 9, scope: !1496)
!3666 = !DILocation(line: 82, column: 56, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 81, column: 5)
!3668 = !DILocation(line: 82, column: 60, scope: !3667)
!3669 = !DILocation(line: 83, column: 20, scope: !3667)
!3670 = !DILocation(line: 83, column: 78, scope: !3667)
!3671 = !DILocation(line: 83, column: 55, scope: !3667)
!3672 = !DILocation(line: 83, column: 39, scope: !3667)
!3673 = !DILocation(line: 0, scope: !1678, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 82, column: 9, scope: !3667)
!3675 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3674)
!3676 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3674)
!3677 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3674)
!3678 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3674)
!3679 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3674)
!3680 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3674)
!3681 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3674)
!3682 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3674)
!3683 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3674)
!3684 = !DILocation(line: 87, column: 28, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 86, column: 5)
!3686 = !DILocation(line: 87, column: 22, scope: !3685)
!3687 = !DILocation(line: 88, column: 29, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 88, column: 13)
!3689 = !DILocation(line: 88, column: 13, scope: !3685)
!3690 = !DILocation(line: 92, column: 26, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 92, column: 13)
!3692 = !DILocation(line: 92, column: 13, scope: !3685)
!3693 = !DILocation(line: 94, column: 20, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 94, column: 17)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 93, column: 9)
!3696 = !DILocation(line: 94, column: 25, scope: !3694)
!3697 = !DILocation(line: 94, column: 39, scope: !3694)
!3698 = !DILocation(line: 94, column: 17, scope: !3695)
!3699 = !DILocation(line: 96, column: 37, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 95, column: 13)
!3701 = !DILocation(line: 96, column: 17, scope: !3700)
!3702 = !DILocation(line: 98, column: 34, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 97, column: 17)
!3704 = !DILocation(line: 99, column: 35, scope: !3703)
!3705 = !DILocation(line: 96, column: 57, scope: !3700)
!3706 = !DILocation(line: 96, column: 40, scope: !3700)
!3707 = distinct !{!3707, !3701, !3708}
!3708 = !DILocation(line: 100, column: 17, scope: !3700)
!3709 = !DILocation(line: 108, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 103, column: 13)
!3711 = !DILocation(line: 110, column: 60, scope: !3710)
!3712 = !DILocation(line: 110, column: 44, scope: !3710)
!3713 = !DILocation(line: 76, column: 9, scope: !1496)
!3714 = !DILocation(line: 0, scope: !3685)
!3715 = !DILocation(line: 114, column: 37, scope: !3685)
!3716 = !DILocation(line: 0, scope: !1678, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 114, column: 9, scope: !3685)
!3718 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3717)
!3719 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3717)
!3720 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3717)
!3721 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3717)
!3722 = !DILocation(line: 118, column: 12, scope: !1687, inlinedAt: !3717)
!3723 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3717)
!3724 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3717)
!3725 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3717)
!3726 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3717)
!3727 = !DILocation(line: 0, scope: !1699, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3717)
!3729 = !DILocation(line: 0, scope: !1706, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3728)
!3731 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3730)
!3732 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3717)
!3733 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3717)
!3734 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3717)
!3735 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3717)
!3736 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3717)
!3737 = !DILocation(line: 117, column: 27, scope: !1687, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 115, column: 9, scope: !3685)
!3739 = !DILocation(line: 128, column: 9, scope: !1697, inlinedAt: !3717)
!3740 = !DILocation(line: 118, column: 19, scope: !1687, inlinedAt: !3738)
!3741 = !DILocation(line: 115, column: 37, scope: !3685)
!3742 = !DILocation(line: 115, column: 81, scope: !3685)
!3743 = !DILocation(line: 115, column: 55, scope: !3685)
!3744 = !DILocation(line: 0, scope: !1678, inlinedAt: !3738)
!3745 = !DILocation(line: 117, column: 36, scope: !1687, inlinedAt: !3738)
!3746 = !DILocation(line: 117, column: 50, scope: !1687, inlinedAt: !3738)
!3747 = !DILocation(line: 117, column: 48, scope: !1687, inlinedAt: !3738)
!3748 = !DILocation(line: 117, column: 21, scope: !1687, inlinedAt: !3738)
!3749 = !DILocation(line: 119, column: 23, scope: !1694, inlinedAt: !3738)
!3750 = !DILocation(line: 119, column: 13, scope: !1687, inlinedAt: !3738)
!3751 = !DILocation(line: 124, column: 51, scope: !1697, inlinedAt: !3752)
!3752 = !DILocation(line: 0, scope: !3663)
!3753 = !DILocation(line: 277, column: 32, scope: !1706, inlinedAt: !3754)
!3754 = !DILocation(line: 282, column: 29, scope: !1699, inlinedAt: !3755)
!3755 = !DILocation(line: 124, column: 27, scope: !1697, inlinedAt: !3752)
!3756 = !DILocation(line: 124, column: 13, scope: !1697, inlinedAt: !3752)
!3757 = !DILocation(line: 124, column: 25, scope: !1697, inlinedAt: !3752)
!3758 = !DILocation(line: 126, column: 23, scope: !1697, inlinedAt: !3752)
!3759 = !DILocation(line: 127, column: 18, scope: !1697, inlinedAt: !3752)
!3760 = !DILocation(line: 117, column: 9, scope: !1496)
!3761 = !DILocation(line: 119, column: 21, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 119, column: 9)
!3763 = !DILocation(line: 119, column: 19, scope: !3762)
!3764 = !DILocation(line: 119, column: 9, scope: !1496)
!3765 = !DILocation(line: 121, column: 5, scope: !1496)
!3766 = !DISubprogram(name: "x264_log", scope: !10, file: !10, line: 190, type: !3767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !6, !19, !83, null}
