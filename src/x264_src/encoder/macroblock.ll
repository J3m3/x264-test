; ModuleID = 'x264_src/encoder/macroblock.c'
source_filename = "x264_src/encoder/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }

@block_idx_xy_fenc = internal unnamed_addr constant [16 x i8] c"\00\04@D\08\0CHL\80\84\C0\C4\88\8C\C8\CC", align 16, !dbg !0
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16, !dbg !185
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !191
@x264_lambda2_tab = external local_unnamed_addr constant [52 x i32], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !198
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !202
@x264_pred_i4x4_neighbors = internal unnamed_addr constant [12 x i8] c"\02\01\03\06\0B\0B\0B\06\01\01\02\00", align 1, !dbg !208
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16, !dbg !213
@block_idx_yx_1d = internal unnamed_addr constant [16 x i8] c"\00\04\01\05\08\0C\09\0D\02\06\03\07\0A\0E\0B\0F", align 16, !dbg !204
@block_idx_xy_1d = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16, !dbg !206

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i4x4(ptr noundef %h, i32 noundef %idx, i32 noundef %i_qp) local_unnamed_addr #0 !dbg !229 {
entry:
  %dct4x4 = alloca [16 x i16], align 16, !DIAssignID !1521
    #dbg_assign(i1 undef, !1520, !DIExpression(), !1521, ptr %dct4x4, !DIExpression(), !1522)
    #dbg_value(ptr %h, !1514, !DIExpression(), !1522)
    #dbg_value(i32 %idx, !1515, !DIExpression(), !1522)
    #dbg_value(i32 %i_qp, !1516, !DIExpression(), !1522)
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !1523
  %0 = load ptr, ptr %p_fenc, align 16, !dbg !1524
  %idxprom = sext i32 %idx to i64, !dbg !1525
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %idxprom, !dbg !1525
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1525
  %idxprom2 = zext i8 %1 to i64, !dbg !1524
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 %idxprom2, !dbg !1524
    #dbg_value(ptr %arrayidx3, !1518, !DIExpression(), !1522)
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !1526
  %2 = load ptr, ptr %p_fdec, align 16, !dbg !1527
  %arrayidx8 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom, !dbg !1528
  %3 = load i16, ptr %arrayidx8, align 2, !dbg !1528
  %idxprom9 = zext i16 %3 to i64, !dbg !1527
  %arrayidx10 = getelementptr inbounds i8, ptr %2, i64 %idxprom9, !dbg !1527
    #dbg_value(ptr %arrayidx10, !1519, !DIExpression(), !1522)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4) #6, !dbg !1529
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !1530
  %4 = load i32, ptr %b_lossless, align 4, !dbg !1530
  %tobool.not = icmp eq i32 %4, 0, !dbg !1532
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1533

if.then:                                          ; preds = %entry
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056, !dbg !1534
  %5 = load ptr, ptr %sub_4x4, align 8, !dbg !1534
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600, !dbg !1536
  %arrayidx13 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %idxprom, !dbg !1537
  %call = tail call i32 %5(ptr noundef nonnull %arrayidx13, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6, !dbg !1538
    #dbg_value(i32 %call, !1517, !DIExpression(), !1522)
  %conv = trunc i32 %call to i8, !dbg !1539
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !1540
  %arrayidx16 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !1541
  %6 = load i32, ptr %arrayidx16, align 4, !dbg !1541
  %idxprom17 = sext i32 %6 to i64, !dbg !1542
  %arrayidx18 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom17, !dbg !1542
  store i8 %conv, ptr %arrayidx18, align 1, !dbg !1543
  %shr = ashr i32 %idx, 2, !dbg !1544
  %shl = shl i32 %call, %shr, !dbg !1545
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !1546
  %7 = load i32, ptr %i_cbp_luma, align 8, !dbg !1547
  %or = or i32 %7, %shl, !dbg !1547
  store i32 %or, ptr %i_cbp_luma, align 8, !dbg !1547
  br label %cleanup, !dbg !1548

if.end:                                           ; preds = %entry
  %dctf = getelementptr inbounds i8, ptr %h, i64 32912, !dbg !1549
  %8 = load ptr, ptr %dctf, align 16, !dbg !1550
  call void %8(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6, !dbg !1551
    #dbg_value(ptr %h, !1552, !DIExpression(), !1563)
    #dbg_value(ptr %dct4x4, !1557, !DIExpression(), !1563)
    #dbg_value(i32 %i_qp, !1558, !DIExpression(), !1563)
    #dbg_value(i32 2, !1559, !DIExpression(), !1563)
    #dbg_value(i32 1, !1560, !DIExpression(), !1563)
    #dbg_value(i32 %idx, !1561, !DIExpression(), !1563)
    #dbg_value(i1 false, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1563)
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !1565
  %9 = load i32, ptr %b_trellis.i, align 16, !dbg !1565
  %tobool1.not.i = icmp eq i32 %9, 0, !dbg !1567
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i, !dbg !1568

if.then.i:                                        ; preds = %if.end
    #dbg_value(i32 0, !1562, !DIExpression(), !1563)
  %call.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 0, i32 noundef %i_qp, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef %idx) #6, !dbg !1569
  br label %x264_quant_4x4.exit, !dbg !1570

if.else.i:                                        ; preds = %if.end
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088, !dbg !1571
  %10 = load ptr, ptr %quant_4x4.i, align 8, !dbg !1571
  %quant4_mf.i = getelementptr inbounds i8, ptr %h, i64 3440, !dbg !1572
  %11 = load ptr, ptr %quant4_mf.i, align 8, !dbg !1573
  %idxprom2.i = sext i32 %i_qp to i64, !dbg !1573
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %11, i64 %idxprom2.i, !dbg !1573
  %quant4_bias.i = getelementptr inbounds i8, ptr %h, i64 3488, !dbg !1574
  %12 = load ptr, ptr %quant4_bias.i, align 8, !dbg !1575
  %arrayidx7.i = getelementptr inbounds [16 x i16], ptr %12, i64 %idxprom2.i, !dbg !1575
  %call9.i = call i32 %10(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6, !dbg !1576
  br label %x264_quant_4x4.exit, !dbg !1577

x264_quant_4x4.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ], !dbg !1578
    #dbg_value(i32 %retval.0.i, !1517, !DIExpression(), !1522)
  %conv23 = trunc i32 %retval.0.i to i8, !dbg !1579
  %non_zero_count26 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !1580
  %arrayidx28 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !1581
  %13 = load i32, ptr %arrayidx28, align 4, !dbg !1581
  %idxprom29 = sext i32 %13 to i64, !dbg !1582
  %arrayidx30 = getelementptr inbounds [48 x i8], ptr %non_zero_count26, i64 0, i64 %idxprom29, !dbg !1582
  store i8 %conv23, ptr %arrayidx30, align 1, !dbg !1583
  %tobool31.not = icmp eq i32 %retval.0.i, 0, !dbg !1584
  br i1 %tobool31.not, label %cleanup, label %if.then32, !dbg !1586

if.then32:                                        ; preds = %x264_quant_4x4.exit
  %shr33 = ashr i32 %idx, 2, !dbg !1587
  %shl34 = shl nuw i32 1, %shr33, !dbg !1589
  %i_cbp_luma36 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !1590
  %14 = load i32, ptr %i_cbp_luma36, align 8, !dbg !1591
  %or37 = or i32 %14, %shl34, !dbg !1591
  store i32 %or37, ptr %i_cbp_luma36, align 8, !dbg !1591
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040, !dbg !1592
  %15 = load ptr, ptr %scan_4x4, align 8, !dbg !1592
  %luma4x440 = getelementptr inbounds i8, ptr %h, i64 15600, !dbg !1593
  %arrayidx42 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x440, i64 0, i64 %idxprom, !dbg !1594
  call void %15(ptr noundef nonnull %arrayidx42, ptr noundef nonnull %dct4x4) #6, !dbg !1595
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120, !dbg !1596
  %16 = load ptr, ptr %dequant_4x4, align 8, !dbg !1596
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344, !dbg !1597
  %17 = load ptr, ptr %dequant4_mf, align 16, !dbg !1598
  call void %16(ptr noundef nonnull %dct4x4, ptr noundef %17, i32 noundef %i_qp) #6, !dbg !1599
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920, !dbg !1600
  %18 = load ptr, ptr %add4x4_idct, align 8, !dbg !1600
  call void %18(ptr noundef %arrayidx10, ptr noundef nonnull %dct4x4) #6, !dbg !1601
  br label %cleanup, !dbg !1602

cleanup:                                          ; preds = %x264_quant_4x4.exit, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4) #6, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i8x8(ptr noundef %h, i32 noundef %idx, i32 noundef %i_qp) local_unnamed_addr #0 !dbg !1604 {
entry:
  %dct8x8 = alloca [64 x i16], align 16, !DIAssignID !1615
    #dbg_assign(i1 undef, !1614, !DIExpression(), !1615, ptr %dct8x8, !DIExpression(), !1616)
    #dbg_value(ptr %h, !1606, !DIExpression(), !1616)
    #dbg_value(i32 %idx, !1607, !DIExpression(), !1616)
    #dbg_value(i32 %i_qp, !1608, !DIExpression(), !1616)
  %and = shl i32 %idx, 3, !dbg !1617
  %mul = and i32 %and, 8, !dbg !1617
    #dbg_value(i32 %mul, !1609, !DIExpression(), !1616)
  %0 = shl nsw i32 %idx, 2, !dbg !1618
  %mul1 = and i32 %0, -8, !dbg !1618
    #dbg_value(i32 %mul1, !1610, !DIExpression(), !1616)
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !1619
  %1 = load ptr, ptr %p_fenc, align 16, !dbg !1620
  %mul2 = shl nsw i32 %mul1, 4, !dbg !1621
  %add = or disjoint i32 %mul2, %mul, !dbg !1622
  %idxprom = sext i32 %add to i64, !dbg !1620
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !1620
    #dbg_value(ptr %arrayidx3, !1612, !DIExpression(), !1616)
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !1623
  %2 = load ptr, ptr %p_fdec, align 16, !dbg !1624
  %mul7 = shl nsw i32 %mul1, 5, !dbg !1625
  %add8 = or disjoint i32 %mul7, %mul, !dbg !1626
  %idxprom9 = sext i32 %add8 to i64, !dbg !1624
  %arrayidx10 = getelementptr inbounds i8, ptr %2, i64 %idxprom9, !dbg !1624
    #dbg_value(ptr %arrayidx10, !1613, !DIExpression(), !1616)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct8x8) #6, !dbg !1627
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !1628
  %3 = load i32, ptr %b_lossless, align 4, !dbg !1628
  %tobool.not = icmp eq i32 %3, 0, !dbg !1630
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1631

if.then:                                          ; preds = %entry
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048, !dbg !1632
  %4 = load ptr, ptr %sub_8x8, align 8, !dbg !1632
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088, !dbg !1634
  %idxprom12 = sext i32 %idx to i64, !dbg !1635
  %arrayidx13 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8, i64 0, i64 %idxprom12, !dbg !1635
  %call = tail call i32 %4(ptr noundef nonnull %arrayidx13, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6, !dbg !1636
    #dbg_value(i32 %call, !1611, !DIExpression(), !1616)
  %5 = trunc i32 %call to i16, !dbg !1637
  %conv = mul i16 %5, 257, !dbg !1637
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !1637
  %idxprom18 = sext i32 %0 to i64, !dbg !1637
  %arrayidx19 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom18, !dbg !1637
  %6 = load i32, ptr %arrayidx19, align 16, !dbg !1637
  %idxprom20 = sext i32 %6 to i64, !dbg !1637
  %arrayidx21 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom20, !dbg !1637
  store i16 %conv, ptr %arrayidx21, align 1, !dbg !1637
  %add28 = or disjoint i32 %0, 2, !dbg !1637
  %idxprom29 = sext i32 %add28 to i64, !dbg !1637
  %arrayidx30 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom29, !dbg !1637
  %7 = load i32, ptr %arrayidx30, align 8, !dbg !1637
  %idxprom31 = sext i32 %7 to i64, !dbg !1637
  %arrayidx32 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom31, !dbg !1637
  store i16 %conv, ptr %arrayidx32, align 1, !dbg !1637
  %shl = shl i32 %call, %idx, !dbg !1639
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !1640
  %8 = load i32, ptr %i_cbp_luma, align 8, !dbg !1641
  %or = or i32 %8, %shl, !dbg !1641
  store i32 %or, ptr %i_cbp_luma, align 8, !dbg !1641
  br label %cleanup, !dbg !1642

if.end:                                           ; preds = %entry
  %sub8x8_dct8 = getelementptr inbounds i8, ptr %h, i64 32984, !dbg !1643
  %9 = load ptr, ptr %sub8x8_dct8, align 8, !dbg !1643
  call void %9(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6, !dbg !1644
    #dbg_value(ptr %h, !1645, !DIExpression(), !1655)
    #dbg_value(ptr %dct8x8, !1650, !DIExpression(), !1655)
    #dbg_value(i32 %i_qp, !1651, !DIExpression(), !1655)
    #dbg_value(i32 1, !1652, !DIExpression(), !1655)
    #dbg_value(i32 %idx, !1653, !DIExpression(), !1655)
    #dbg_value(i1 false, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1655)
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !1657
  %10 = load i32, ptr %b_trellis.i, align 16, !dbg !1657
  %tobool1.not.i = icmp eq i32 %10, 0, !dbg !1659
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i, !dbg !1660

if.then.i:                                        ; preds = %if.end
    #dbg_value(i32 0, !1654, !DIExpression(), !1655)
  %call.i = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 0, i32 noundef %i_qp, i32 noundef 1, i32 noundef %idx) #6, !dbg !1661
  br label %x264_quant_8x8.exit, !dbg !1662

if.else.i:                                        ; preds = %if.end
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080, !dbg !1663
  %11 = load ptr, ptr %quantf.i, align 8, !dbg !1664
  %quant8_mf.i = getelementptr inbounds i8, ptr %h, i64 3472, !dbg !1665
  %12 = load ptr, ptr %quant8_mf.i, align 8, !dbg !1666
  %idxprom2.i = sext i32 %i_qp to i64, !dbg !1666
  %arrayidx3.i = getelementptr inbounds [64 x i16], ptr %12, i64 %idxprom2.i, !dbg !1666
  %quant8_bias.i = getelementptr inbounds i8, ptr %h, i64 3520, !dbg !1667
  %13 = load ptr, ptr %quant8_bias.i, align 8, !dbg !1668
  %arrayidx7.i = getelementptr inbounds [64 x i16], ptr %13, i64 %idxprom2.i, !dbg !1668
  %call9.i = call i32 %11(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6, !dbg !1669
  br label %x264_quant_8x8.exit, !dbg !1670

x264_quant_8x8.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ], !dbg !1671
    #dbg_value(i32 %retval.0.i, !1611, !DIExpression(), !1616)
  %tobool37.not = icmp eq i32 %retval.0.i, 0, !dbg !1672
  br i1 %tobool37.not, label %if.else, label %if.then38, !dbg !1674

if.then38:                                        ; preds = %x264_quant_8x8.exit
  %shl39 = shl nuw i32 1, %idx, !dbg !1675
  %i_cbp_luma41 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !1677
  %14 = load i32, ptr %i_cbp_luma41, align 8, !dbg !1678
  %or42 = or i32 %14, %shl39, !dbg !1678
  store i32 %or42, ptr %i_cbp_luma41, align 8, !dbg !1678
  %zigzagf43 = getelementptr inbounds i8, ptr %h, i64 33032, !dbg !1679
  %15 = load ptr, ptr %zigzagf43, align 8, !dbg !1680
  %luma8x845 = getelementptr inbounds i8, ptr %h, i64 15088, !dbg !1681
  %idxprom46 = sext i32 %idx to i64, !dbg !1682
  %arrayidx47 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x845, i64 0, i64 %idxprom46, !dbg !1682
  call void %15(ptr noundef nonnull %arrayidx47, ptr noundef nonnull %dct8x8) #6, !dbg !1683
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112, !dbg !1684
  %16 = load ptr, ptr %dequant_8x8, align 8, !dbg !1684
  %dequant8_mf = getelementptr inbounds i8, ptr %h, i64 3376, !dbg !1685
  %17 = load ptr, ptr %dequant8_mf, align 16, !dbg !1686
  call void %16(ptr noundef nonnull %dct8x8, ptr noundef %17, i32 noundef %i_qp) #6, !dbg !1687
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992, !dbg !1688
  %18 = load ptr, ptr %add8x8_idct8, align 16, !dbg !1688
  call void %18(ptr noundef %arrayidx10, ptr noundef nonnull %dct8x8) #6, !dbg !1689
  %non_zero_count56 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !1690
  %idxprom59 = sext i32 %0 to i64, !dbg !1690
  %arrayidx60 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom59, !dbg !1690
  %19 = load i32, ptr %arrayidx60, align 16, !dbg !1690
  %idxprom61 = sext i32 %19 to i64, !dbg !1690
  %arrayidx62 = getelementptr inbounds [48 x i8], ptr %non_zero_count56, i64 0, i64 %idxprom61, !dbg !1690
  store i16 257, ptr %arrayidx62, align 1, !dbg !1690
  %add67 = or disjoint i32 %0, 2, !dbg !1690
  %idxprom68 = sext i32 %add67 to i64, !dbg !1690
  %arrayidx69 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom68, !dbg !1690
  %20 = load i32, ptr %arrayidx69, align 8, !dbg !1690
  %idxprom70 = sext i32 %20 to i64, !dbg !1690
  %arrayidx71 = getelementptr inbounds [48 x i8], ptr %non_zero_count56, i64 0, i64 %idxprom70, !dbg !1690
  store i16 257, ptr %arrayidx71, align 1, !dbg !1690
  br label %cleanup, !dbg !1692

if.else:                                          ; preds = %x264_quant_8x8.exit
  %non_zero_count74 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !1693
  %idxprom77 = sext i32 %0 to i64, !dbg !1693
  %arrayidx78 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom77, !dbg !1693
  %21 = load i32, ptr %arrayidx78, align 16, !dbg !1693
  %idxprom79 = sext i32 %21 to i64, !dbg !1693
  %arrayidx80 = getelementptr inbounds [48 x i8], ptr %non_zero_count74, i64 0, i64 %idxprom79, !dbg !1693
  store i16 0, ptr %arrayidx80, align 1, !dbg !1693
  %add85 = or disjoint i32 %0, 2, !dbg !1693
  %idxprom86 = sext i32 %add85 to i64, !dbg !1693
  %arrayidx87 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom86, !dbg !1693
  %22 = load i32, ptr %arrayidx87, align 8, !dbg !1693
  %idxprom88 = sext i32 %22 to i64, !dbg !1693
  %arrayidx89 = getelementptr inbounds [48 x i8], ptr %non_zero_count74, i64 0, i64 %idxprom88, !dbg !1693
  store i16 0, ptr %arrayidx89, align 1, !dbg !1693
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct8x8) #6, !dbg !1695
  ret void, !dbg !1695
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_8x8_chroma(ptr noundef %h, i32 noundef %b_inter, i32 noundef %i_qp) local_unnamed_addr #0 !dbg !1696 {
entry:
  %dct2x2 = alloca [4 x i16], align 16, !DIAssignID !1735
    #dbg_assign(i1 undef, !1704, !DIExpression(), !1735, ptr %dct2x2, !DIExpression(), !1736)
  %ssd = alloca [2 x i32], align 4, !DIAssignID !1737
    #dbg_assign(i1 undef, !1708, !DIExpression(), !1737, ptr %ssd, !DIExpression(), !1738)
  %dct4x4 = alloca [4 x [16 x i16]], align 16, !DIAssignID !1739
    #dbg_assign(i1 undef, !1722, !DIExpression(), !1739, ptr %dct4x4, !DIExpression(), !1740)
    #dbg_value(ptr %h, !1698, !DIExpression(), !1736)
    #dbg_value(i32 %b_inter, !1699, !DIExpression(), !1736)
    #dbg_value(i32 %i_qp, !1700, !DIExpression(), !1736)
  %tobool.not = icmp eq i32 %b_inter, 0, !dbg !1741
  br i1 %tobool.not, label %land.end.thread, label %land.end, !dbg !1742

land.end.thread:                                  ; preds = %entry
    #dbg_value(i1 false, !1703, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1736)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6, !dbg !1743
  %i_cbp_chroma752 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !1744
  store i32 0, ptr %i_cbp_chroma752, align 4, !dbg !1745
  br label %if.end152, !dbg !1746

land.end:                                         ; preds = %entry
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424, !dbg !1747
  %0 = load i32, ptr %b_dct_decimate, align 8, !dbg !1747
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1742
    #dbg_value(i1 %tobool1.not, !1703, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1736)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6, !dbg !1743
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !1744
  store i32 0, ptr %i_cbp_chroma, align 4, !dbg !1745
  br i1 %tobool1.not, label %if.end152, label %land.lhs.true, !dbg !1746

land.lhs.true:                                    ; preds = %land.end
  %b_trellis = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !1748
  %1 = load i32, ptr %b_trellis, align 16, !dbg !1748
  %tobool5.not = icmp eq i32 %1, 0, !dbg !1749
  %cond = select i1 %tobool5.not, i32 18, i32 12, !dbg !1749
  %cmp.not = icmp sgt i32 %cond, %i_qp, !dbg !1750
  br i1 %cmp.not, label %if.end152, label %if.then, !dbg !1751

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext nneg i32 %i_qp to i64, !dbg !1752
  %arrayidx = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %idxprom, !dbg !1752
  %2 = load i32, ptr %arrayidx, align 4, !dbg !1752
  %add = add nsw i32 %2, 32, !dbg !1753
  %shr = ashr i32 %add, 6, !dbg !1754
    #dbg_value(i32 %shr, !1705, !DIExpression(), !1738)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssd) #6, !dbg !1755
  %var2_8x8 = getelementptr inbounds i8, ptr %h, i64 32152, !dbg !1756
  %3 = load ptr, ptr %var2_8x8, align 8, !dbg !1756
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !1757
  %4 = load ptr, ptr %arrayidx7, align 8, !dbg !1757
  %arrayidx10 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !1758
  %5 = load ptr, ptr %arrayidx10, align 8, !dbg !1758
  %call = call i32 %3(ptr noundef %4, i32 noundef 16, ptr noundef %5, i32 noundef 32, ptr noundef nonnull %ssd) #6, !dbg !1759
    #dbg_value(i32 %call, !1709, !DIExpression(), !1738)
  %mul = shl nsw i32 %shr, 2, !dbg !1760
  %cmp12 = icmp slt i32 %call, %mul, !dbg !1762
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !1763

if.then13:                                        ; preds = %if.then
  %6 = load ptr, ptr %var2_8x8, align 8, !dbg !1764
  %arrayidx19 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !1765
  %7 = load ptr, ptr %arrayidx19, align 16, !dbg !1765
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !1766
  %8 = load ptr, ptr %arrayidx23, align 16, !dbg !1766
  %arrayidx24 = getelementptr inbounds i8, ptr %ssd, i64 4, !dbg !1767
  %call25 = call i32 %6(ptr noundef %7, i32 noundef 16, ptr noundef %8, i32 noundef 32, ptr noundef nonnull %arrayidx24) #6, !dbg !1768
  %add26 = add nsw i32 %call25, %call, !dbg !1769
    #dbg_value(i32 %add26, !1709, !DIExpression(), !1738)
  br label %if.end, !dbg !1770

if.end:                                           ; preds = %if.then13, %if.then
  %score.0 = phi i32 [ %add26, %if.then13 ], [ %call, %if.then ], !dbg !1738
    #dbg_value(i32 %score.0, !1709, !DIExpression(), !1738)
  %cmp28.not = icmp slt i32 %score.0, %mul, !dbg !1771
  br i1 %cmp28.not, label %if.then29, label %if.end152.critedge, !dbg !1772

if.then29:                                        ; preds = %if.end
  %arrayidx32 = getelementptr inbounds i8, ptr %h, i64 25081, !dbg !1773
  store i8 0, ptr %arrayidx32, align 1, !dbg !1774
  %arrayidx37 = getelementptr inbounds i8, ptr %h, i64 25082, !dbg !1775
  store i8 0, ptr %arrayidx37, align 1, !dbg !1776
  %arrayidx42 = getelementptr inbounds i8, ptr %h, i64 25089, !dbg !1777
  store i8 0, ptr %arrayidx42, align 1, !dbg !1778
  %arrayidx47 = getelementptr inbounds i8, ptr %h, i64 25090, !dbg !1779
  store i8 0, ptr %arrayidx47, align 1, !dbg !1780
  %arrayidx52 = getelementptr inbounds i8, ptr %h, i64 25105, !dbg !1781
  store i8 0, ptr %arrayidx52, align 1, !dbg !1782
  %arrayidx57 = getelementptr inbounds i8, ptr %h, i64 25106, !dbg !1783
  store i8 0, ptr %arrayidx57, align 1, !dbg !1784
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25113, !dbg !1785
  store i8 0, ptr %arrayidx62, align 1, !dbg !1786
  %arrayidx67 = getelementptr inbounds i8, ptr %h, i64 25114, !dbg !1787
  store i8 0, ptr %arrayidx67, align 1, !dbg !1788
  %arrayidx72 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !1789
  store i16 0, ptr %arrayidx72, align 1, !dbg !1790
    #dbg_value(i32 0, !1710, !DIExpression(), !1791)
  %sub8x8_dct_dc = getelementptr inbounds i8, ptr %h, i64 32936
  %add95 = add nsw i32 %b_inter, 2
  %quant_2x2_dc = getelementptr inbounds i8, ptr %h, i64 33104
  %quant4_mf = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom100 = sext i32 %add95 to i64
  %arrayidx101 = getelementptr inbounds [4 x ptr], ptr %quant4_mf, i64 0, i64 %idxprom100
  %quant4_bias = getelementptr inbounds i8, ptr %h, i64 3488
  %arrayidx108 = getelementptr inbounds [4 x ptr], ptr %quant4_bias, i64 0, i64 %idxprom100
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %arrayidx136 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf, i64 0, i64 %idxprom100
  %rem.i779 = urem i32 %i_qp, 6
  %idxprom.i = zext nneg i32 %rem.i779 to i64
  %div.i780 = udiv i32 %i_qp, 6
  %add8x8_idct_dc = getelementptr inbounds i8, ptr %h, i64 32952
    #dbg_value(i64 0, !1710, !DIExpression(), !1791)
  %9 = load i32, ptr %ssd, align 4, !dbg !1792
  %cmp76 = icmp sgt i32 %9, %shr, !dbg !1796
  br i1 %cmp76, label %if.then77, label %for.inc, !dbg !1797

if.then77:                                        ; preds = %if.then29
  %10 = load ptr, ptr %sub8x8_dct_dc, align 8, !dbg !1798
  %arrayidx83 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !1800
  %11 = load ptr, ptr %arrayidx83, align 8, !dbg !1800
  %arrayidx89 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !1801
  %12 = load ptr, ptr %arrayidx89, align 8, !dbg !1801
  call void %10(ptr noundef nonnull %dct2x2, ptr noundef %11, ptr noundef %12) #6, !dbg !1802
  %13 = load i32, ptr %b_trellis, align 16, !dbg !1803
  %tobool92.not = icmp eq i32 %13, 0, !dbg !1805
  br i1 %tobool92.not, label %if.else, label %if.then93, !dbg !1806

if.then93:                                        ; preds = %if.then77
  %call97 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add95, i32 noundef %i_qp, i32 noundef 3, i32 noundef 0, i32 noundef 1) #6, !dbg !1807
    #dbg_value(i32 %call97, !1702, !DIExpression(), !1736)
  br label %if.end114, !dbg !1808

if.else:                                          ; preds = %if.then77
  %14 = load ptr, ptr %quant_2x2_dc, align 8, !dbg !1809
  %15 = load ptr, ptr %arrayidx101, align 8, !dbg !1810
  %arrayidx103 = getelementptr inbounds [16 x i16], ptr %15, i64 %idxprom, !dbg !1810
  %16 = load i16, ptr %arrayidx103, align 2, !dbg !1810
  %17 = lshr i16 %16, 1, !dbg !1811
  %shr105 = zext nneg i16 %17 to i32, !dbg !1811
  %18 = load ptr, ptr %arrayidx108, align 8, !dbg !1812
  %arrayidx110 = getelementptr inbounds [16 x i16], ptr %18, i64 %idxprom, !dbg !1812
  %19 = load i16, ptr %arrayidx110, align 2, !dbg !1812
  %conv112 = zext i16 %19 to i32, !dbg !1812
  %shl = shl nuw nsw i32 %conv112, 1, !dbg !1813
  %call113 = call i32 %14(ptr noundef nonnull %dct2x2, i32 noundef %shr105, i32 noundef %shl) #6, !dbg !1814
    #dbg_value(i32 %call113, !1702, !DIExpression(), !1736)
  br label %if.end114

if.end114:                                        ; preds = %if.else, %if.then93
  %nz_dc.0 = phi i32 [ %call97, %if.then93 ], [ %call113, %if.else ], !dbg !1815
    #dbg_value(i32 %nz_dc.0, !1702, !DIExpression(), !1736)
  %tobool115.not = icmp eq i32 %nz_dc.0, 0, !dbg !1816
  br i1 %tobool115.not, label %for.inc, label %if.then116, !dbg !1818

if.then116:                                       ; preds = %if.end114
  %call118 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2), !dbg !1819
  %tobool119.not = icmp eq i32 %call118, 0, !dbg !1819
  br i1 %tobool119.not, label %for.inc, label %if.end121, !dbg !1822

if.end121:                                        ; preds = %if.then116
  %arrayidx127 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !1823
  store i8 1, ptr %arrayidx127, align 1, !dbg !1824
    #dbg_value(ptr %chroma_dc, !1825, !DIExpression(), !1829)
    #dbg_value(ptr %dct2x2, !1828, !DIExpression(), !1829)
  %20 = load <4 x i16>, ptr %dct2x2, align 16, !dbg !1831
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !1831
  store <4 x i16> %21, ptr %chroma_dc, align 2, !dbg !1831
  %22 = load ptr, ptr %arrayidx136, align 8, !dbg !1832
    #dbg_value(ptr %dct2x2, !1833, !DIExpression(), !1846)
    #dbg_value(ptr %dct2x2, !1838, !DIExpression(), !1846)
    #dbg_value(ptr %22, !1839, !DIExpression(), !1846)
    #dbg_value(i32 %i_qp, !1840, !DIExpression(), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !1846)
  %arrayidx17.i = getelementptr inbounds [16 x i32], ptr %22, i64 %idxprom.i, !dbg !1848
  %23 = load i32, ptr %arrayidx17.i, align 4, !dbg !1848
  %shl.i = shl i32 %23, %div.i780, !dbg !1848
  %24 = sext <4 x i16> %20 to <4 x i32>, !dbg !1848
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !1848
  %26 = add nsw <4 x i32> %25, %24, !dbg !1848
  %27 = sub nsw <4 x i32> %25, %24, !dbg !1848
  %28 = shufflevector <4 x i32> %26, <4 x i32> %27, <4 x i32> <i32 2, i32 0, i32 7, i32 5>, !dbg !1848
    #dbg_value(i32 %shl.i, !1845, !DIExpression(), !1846)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1849, ptr %dct2x2, !DIExpression(), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 2), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 4), !1736)
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !1850
  %30 = add nsw <4 x i32> %28, %29, !dbg !1850
  %31 = sub nsw <4 x i32> %28, %29, !dbg !1850
  %32 = shufflevector <4 x i32> %30, <4 x i32> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 7>, !dbg !1850
  %33 = insertelement <4 x i32> poison, i32 %shl.i, i64 0, !dbg !1851
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1851
  %35 = mul nsw <4 x i32> %34, %32, !dbg !1851
  %36 = lshr <4 x i32> %35, <i32 5, i32 5, i32 5, i32 5>, !dbg !1852
  %37 = trunc <4 x i32> %36 to <4 x i16>, !dbg !1853
  store <4 x i16> %37, ptr %dct2x2, align 16, !dbg !1854, !DIAssignID !1849
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 6), !1736)
  %38 = load ptr, ptr %add8x8_idct_dc, align 8, !dbg !1855
  %39 = load ptr, ptr %arrayidx89, align 8, !dbg !1856
  call void %38(ptr noundef %39, ptr noundef nonnull %dct2x2) #6, !dbg !1857
  store i32 1, ptr %i_cbp_chroma, align 4, !dbg !1858
  br label %for.inc, !dbg !1859

for.inc:                                          ; preds = %if.then29, %if.end121, %if.end114, %if.then116
    #dbg_value(i64 1, !1710, !DIExpression(), !1791)
  %arrayidx75.1 = getelementptr inbounds i8, ptr %ssd, i64 4, !dbg !1792
  %40 = load i32, ptr %arrayidx75.1, align 4, !dbg !1792
  %cmp76.1 = icmp sgt i32 %40, %shr, !dbg !1796
  br i1 %cmp76.1, label %if.then77.1, label %for.inc.1, !dbg !1797

if.then77.1:                                      ; preds = %for.inc
  %41 = load ptr, ptr %sub8x8_dct_dc, align 8, !dbg !1798
  %arrayidx83.1 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !1800
  %42 = load ptr, ptr %arrayidx83.1, align 8, !dbg !1800
  %arrayidx89.1 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !1801
  %43 = load ptr, ptr %arrayidx89.1, align 8, !dbg !1801
  call void %41(ptr noundef nonnull %dct2x2, ptr noundef %42, ptr noundef %43) #6, !dbg !1802
  %44 = load i32, ptr %b_trellis, align 16, !dbg !1803
  %tobool92.not.1 = icmp eq i32 %44, 0, !dbg !1805
  br i1 %tobool92.not.1, label %if.else.1, label %if.then93.1, !dbg !1806

if.then93.1:                                      ; preds = %if.then77.1
  %call97.1 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add95, i32 noundef %i_qp, i32 noundef 3, i32 noundef 0, i32 noundef 1) #6, !dbg !1807
    #dbg_value(i32 %call97.1, !1702, !DIExpression(), !1736)
  br label %if.end114.1, !dbg !1808

if.else.1:                                        ; preds = %if.then77.1
  %45 = load ptr, ptr %quant_2x2_dc, align 8, !dbg !1809
  %46 = load ptr, ptr %arrayidx101, align 8, !dbg !1810
  %arrayidx103.1 = getelementptr inbounds [16 x i16], ptr %46, i64 %idxprom, !dbg !1810
  %47 = load i16, ptr %arrayidx103.1, align 2, !dbg !1810
  %48 = lshr i16 %47, 1, !dbg !1811
  %shr105.1 = zext nneg i16 %48 to i32, !dbg !1811
  %49 = load ptr, ptr %arrayidx108, align 8, !dbg !1812
  %arrayidx110.1 = getelementptr inbounds [16 x i16], ptr %49, i64 %idxprom, !dbg !1812
  %50 = load i16, ptr %arrayidx110.1, align 2, !dbg !1812
  %conv112.1 = zext i16 %50 to i32, !dbg !1812
  %shl.1 = shl nuw nsw i32 %conv112.1, 1, !dbg !1813
  %call113.1 = call i32 %45(ptr noundef nonnull %dct2x2, i32 noundef %shr105.1, i32 noundef %shl.1) #6, !dbg !1814
    #dbg_value(i32 %call113.1, !1702, !DIExpression(), !1736)
  br label %if.end114.1

if.end114.1:                                      ; preds = %if.else.1, %if.then93.1
  %nz_dc.0.1 = phi i32 [ %call97.1, %if.then93.1 ], [ %call113.1, %if.else.1 ], !dbg !1815
    #dbg_value(i32 %nz_dc.0.1, !1702, !DIExpression(), !1736)
  %tobool115.not.1 = icmp eq i32 %nz_dc.0.1, 0, !dbg !1816
  br i1 %tobool115.not.1, label %for.inc.1, label %if.then116.1, !dbg !1818

if.then116.1:                                     ; preds = %if.end114.1
  %call118.1 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2), !dbg !1819
  %tobool119.not.1 = icmp eq i32 %call118.1, 0, !dbg !1819
  br i1 %tobool119.not.1, label %for.inc.1, label %if.end121.1, !dbg !1822

if.end121.1:                                      ; preds = %if.then116.1
  %arrayidx127.1 = getelementptr inbounds i8, ptr %h, i64 25119, !dbg !1823
  store i8 1, ptr %arrayidx127.1, align 1, !dbg !1824
  %arrayidx129.1 = getelementptr inbounds i8, ptr %h, i64 15080, !dbg !1860
    #dbg_value(ptr %arrayidx129.1, !1825, !DIExpression(), !1829)
    #dbg_value(ptr %dct2x2, !1828, !DIExpression(), !1829)
  %51 = load <4 x i16>, ptr %dct2x2, align 16, !dbg !1831
  %52 = shufflevector <4 x i16> %51, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !1831
  store <4 x i16> %52, ptr %arrayidx129.1, align 2, !dbg !1831
  %53 = load ptr, ptr %arrayidx136, align 8, !dbg !1832
    #dbg_value(ptr %dct2x2, !1833, !DIExpression(), !1846)
    #dbg_value(ptr %dct2x2, !1838, !DIExpression(), !1846)
    #dbg_value(ptr %53, !1839, !DIExpression(), !1846)
    #dbg_value(i32 %i_qp, !1840, !DIExpression(), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !1846)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !1846)
  %arrayidx17.i.1 = getelementptr inbounds [16 x i32], ptr %53, i64 %idxprom.i, !dbg !1848
  %54 = load i32, ptr %arrayidx17.i.1, align 4, !dbg !1848
  %shl.i.1 = shl i32 %54, %div.i780, !dbg !1848
  %55 = sext <4 x i16> %51 to <4 x i32>, !dbg !1848
  %56 = shufflevector <4 x i32> %55, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !1848
  %57 = add nsw <4 x i32> %56, %55, !dbg !1848
  %58 = sub nsw <4 x i32> %56, %55, !dbg !1848
  %59 = shufflevector <4 x i32> %57, <4 x i32> %58, <4 x i32> <i32 2, i32 0, i32 7, i32 5>, !dbg !1848
    #dbg_value(i32 %shl.i.1, !1845, !DIExpression(), !1846)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1849, ptr %dct2x2, !DIExpression(), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 2), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 4), !1736)
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !1850
  %61 = add nsw <4 x i32> %59, %60, !dbg !1850
  %62 = sub nsw <4 x i32> %59, %60, !dbg !1850
  %63 = shufflevector <4 x i32> %61, <4 x i32> %62, <4 x i32> <i32 0, i32 5, i32 2, i32 7>, !dbg !1850
  %64 = insertelement <4 x i32> poison, i32 %shl.i.1, i64 0, !dbg !1851
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1851
  %66 = mul nsw <4 x i32> %65, %63, !dbg !1851
  %67 = lshr <4 x i32> %66, <i32 5, i32 5, i32 5, i32 5>, !dbg !1852
  %68 = trunc <4 x i32> %67 to <4 x i16>, !dbg !1853
  store <4 x i16> %68, ptr %dct2x2, align 16, !dbg !1854, !DIAssignID !1849
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !1849, ptr %dct2x2, !DIExpression(DW_OP_plus_uconst, 6), !1736)
  %69 = load ptr, ptr %add8x8_idct_dc, align 8, !dbg !1855
  %70 = load ptr, ptr %arrayidx89.1, align 8, !dbg !1856
  call void %69(ptr noundef %70, ptr noundef nonnull %dct2x2) #6, !dbg !1857
  store i32 1, ptr %i_cbp_chroma, align 4, !dbg !1858
  br label %for.inc.1, !dbg !1859

for.inc.1:                                        ; preds = %if.end121.1, %if.then116.1, %if.end114.1, %for.inc
    #dbg_value(i64 2, !1710, !DIExpression(), !1791)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssd) #6, !dbg !1861
  br label %cleanup495

if.end152.critedge:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssd) #6, !dbg !1861
  br label %if.end152

if.end152:                                        ; preds = %land.end.thread, %if.end152.critedge, %land.lhs.true, %land.end
  %i_cbp_chroma753 = phi ptr [ %i_cbp_chroma752, %land.end.thread ], [ %i_cbp_chroma, %if.end152.critedge ], [ %i_cbp_chroma, %land.lhs.true ], [ %i_cbp_chroma, %land.end ]
  %71 = phi i1 [ false, %land.end.thread ], [ true, %if.end152.critedge ], [ true, %land.lhs.true ], [ false, %land.end ]
    #dbg_value(i32 0, !1714, !DIExpression(), !1862)
  %p_fenc161 = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec167 = getelementptr inbounds i8, ptr %h, i64 21392
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
    #dbg_value(i32 0, !1714, !DIExpression(), !1862)
  %sub_4x4ac = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %chroma_dc209 = getelementptr inbounds i8, ptr %h, i64 15072
  %non_zero_count218 = getelementptr inbounds i8, ptr %h, i64 25072
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928
  %arrayidx2.i676 = getelementptr inbounds i8, ptr %dct4x4, i64 32
  %arrayidx5.i678 = getelementptr inbounds i8, ptr %dct4x4, i64 64
  %arrayidx8.i = getelementptr inbounds i8, ptr %dct4x4, i64 96
  %arrayidx30.i = getelementptr inbounds i8, ptr %dct2x2, i64 4
  %arrayidx33.i = getelementptr inbounds i8, ptr %dct2x2, i64 2
  %arrayidx36.i681 = getelementptr inbounds i8, ptr %dct2x2, i64 6
  %b_trellis257 = getelementptr inbounds i8, ptr %h, i64 16416
  %add263 = add nsw i32 %b_inter, 2
  %lnot.ext266 = zext i1 %tobool.not to i32
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %quant4_mf273 = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom275 = sext i32 %add263 to i64
  %arrayidx276 = getelementptr inbounds [4 x ptr], ptr %quant4_mf273, i64 0, i64 %idxprom275
  %idxprom277 = sext i32 %i_qp to i64
  %quant4_bias280 = getelementptr inbounds i8, ptr %h, i64 3488
  %arrayidx283 = getelementptr inbounds [4 x ptr], ptr %quant4_bias280, i64 0, i64 %idxprom275
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %dequant4_mf318 = getelementptr inbounds i8, ptr %h, i64 3344
  %arrayidx321 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf318, i64 0, i64 %idxprom275
  %decimate_score15 = getelementptr inbounds i8, ptr %h, i64 33144
  %quant_2x2_dc353 = getelementptr inbounds i8, ptr %h, i64 33104
  %not. = xor i1 %71, true
  %rem.i699 = srem i32 %i_qp, 6
  %idxprom.i700 = sext i32 %rem.i699 to i64
  %div.i702 = sdiv i32 %i_qp, 6
  %add8x8_idct_dc443 = getelementptr inbounds i8, ptr %h, i64 32952
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944
  br label %for.body158, !dbg !1863

for.cond.cleanup157:                              ; preds = %cleanup466
  %arrayidx481 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !1864
  %72 = load i16, ptr %arrayidx481, align 1, !dbg !1864
  %tobool482 = icmp ne i16 %72, 0, !dbg !1865
  %lnot.ext486 = zext i1 %tobool482 to i32, !dbg !1866
  %73 = load i32, ptr %i_cbp_chroma753, align 4, !dbg !1867
  %or489 = or i32 %73, %lnot.ext486, !dbg !1868
  %add492 = add nsw i32 %or489, %73, !dbg !1869
  store i32 %add492, ptr %i_cbp_chroma753, align 4, !dbg !1870
  br label %cleanup495, !dbg !1871

for.body158:                                      ; preds = %if.end152, %cleanup466
  %cmp155 = phi i1 [ true, %if.end152 ], [ false, %cleanup466 ]
  %indvars.iv = phi i64 [ 0, %if.end152 ], [ 1, %cleanup466 ]
    #dbg_value(i64 %indvars.iv, !1714, !DIExpression(), !1862)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1872
  %arrayidx164 = getelementptr inbounds [3 x ptr], ptr %p_fenc161, i64 0, i64 %indvars.iv.next, !dbg !1873
  %74 = load ptr, ptr %arrayidx164, align 8, !dbg !1873
    #dbg_value(ptr %74, !1716, !DIExpression(), !1740)
  %arrayidx170 = getelementptr inbounds [3 x ptr], ptr %p_fdec167, i64 0, i64 %indvars.iv.next, !dbg !1874
  %75 = load ptr, ptr %arrayidx170, align 8, !dbg !1874
    #dbg_value(ptr %75, !1719, !DIExpression(), !1740)
    #dbg_value(i32 0, !1720, !DIExpression(), !1740)
    #dbg_value(i32 0, !1721, !DIExpression(), !1740)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !1875
  %76 = load i32, ptr %b_lossless, align 4, !dbg !1876
  %tobool172.not = icmp eq i32 %76, 0, !dbg !1877
  br i1 %tobool172.not, label %if.end245, label %for.cond174.preheader, !dbg !1878

for.cond174.preheader:                            ; preds = %for.body158
  %77 = shl nuw nsw i64 %indvars.iv, 2
    #dbg_value(i32 0, !1725, !DIExpression(), !1879)
    #dbg_value(i64 0, !1725, !DIExpression(), !1879)
    #dbg_value(i32 0, !1729, !DIExpression(), !1880)
    #dbg_value(i32 0, !1732, !DIExpression(), !1880)
  %78 = load ptr, ptr %sub_4x4ac, align 8, !dbg !1881
  %79 = or disjoint i64 %77, 16, !dbg !1882
  %arrayidx204 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %79, !dbg !1883
  %arrayidx213 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 0, !dbg !1884
  %call214 = call i32 %78(ptr noundef nonnull %arrayidx204, ptr noundef %74, ptr noundef %75, ptr noundef nonnull %arrayidx213) #6, !dbg !1885
    #dbg_value(i32 %call214, !1701, !DIExpression(), !1736)
  %conv215 = trunc i32 %call214 to i8, !dbg !1886
  %arrayidx223 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %79, !dbg !1887
  %80 = load i32, ptr %arrayidx223, align 16, !dbg !1887
  %idxprom224 = sext i32 %80 to i64, !dbg !1888
  %arrayidx225 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224, !dbg !1888
  store i8 %conv215, ptr %arrayidx225, align 1, !dbg !1889
  %81 = load i32, ptr %i_cbp_chroma753, align 4, !dbg !1890
  %or = or i32 %81, %call214, !dbg !1890
  store i32 %or, ptr %i_cbp_chroma753, align 4, !dbg !1890
    #dbg_value(i64 1, !1725, !DIExpression(), !1879)
    #dbg_value(i32 4, !1729, !DIExpression(), !1880)
    #dbg_value(i32 4, !1732, !DIExpression(), !1880)
  %82 = load ptr, ptr %sub_4x4ac, align 8, !dbg !1881
  %83 = or disjoint i64 %77, 17, !dbg !1882
  %arrayidx204.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %83, !dbg !1883
  %add.ptr.1 = getelementptr inbounds i8, ptr %74, i64 4, !dbg !1891
  %add.ptr207.1 = getelementptr inbounds i8, ptr %75, i64 4, !dbg !1892
  %arrayidx213.1 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 1, !dbg !1884
  %call214.1 = call i32 %82(ptr noundef nonnull %arrayidx204.1, ptr noundef nonnull %add.ptr.1, ptr noundef nonnull %add.ptr207.1, ptr noundef nonnull %arrayidx213.1) #6, !dbg !1885
    #dbg_value(i32 %call214.1, !1701, !DIExpression(), !1736)
  %conv215.1 = trunc i32 %call214.1 to i8, !dbg !1886
  %arrayidx223.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %83, !dbg !1887
  %84 = load i32, ptr %arrayidx223.1, align 4, !dbg !1887
  %idxprom224.1 = sext i32 %84 to i64, !dbg !1888
  %arrayidx225.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.1, !dbg !1888
  store i8 %conv215.1, ptr %arrayidx225.1, align 1, !dbg !1889
  %85 = load i32, ptr %i_cbp_chroma753, align 4, !dbg !1890
  %or.1 = or i32 %85, %call214.1, !dbg !1890
  store i32 %or.1, ptr %i_cbp_chroma753, align 4, !dbg !1890
    #dbg_value(i64 2, !1725, !DIExpression(), !1879)
    #dbg_value(i32 64, !1729, !DIExpression(), !1880)
    #dbg_value(i32 128, !1732, !DIExpression(), !1880)
  %86 = load ptr, ptr %sub_4x4ac, align 8, !dbg !1881
  %87 = or disjoint i64 %77, 18, !dbg !1882
  %arrayidx204.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %87, !dbg !1883
  %add.ptr.2 = getelementptr inbounds i8, ptr %74, i64 64, !dbg !1891
  %add.ptr207.2 = getelementptr inbounds i8, ptr %75, i64 128, !dbg !1892
  %arrayidx213.2 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 2, !dbg !1884
  %call214.2 = call i32 %86(ptr noundef nonnull %arrayidx204.2, ptr noundef nonnull %add.ptr.2, ptr noundef nonnull %add.ptr207.2, ptr noundef nonnull %arrayidx213.2) #6, !dbg !1885
    #dbg_value(i32 %call214.2, !1701, !DIExpression(), !1736)
  %conv215.2 = trunc i32 %call214.2 to i8, !dbg !1886
  %arrayidx223.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %87, !dbg !1887
  %88 = load i32, ptr %arrayidx223.2, align 8, !dbg !1887
  %idxprom224.2 = sext i32 %88 to i64, !dbg !1888
  %arrayidx225.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.2, !dbg !1888
  store i8 %conv215.2, ptr %arrayidx225.2, align 1, !dbg !1889
  %89 = load i32, ptr %i_cbp_chroma753, align 4, !dbg !1890
  %or.2 = or i32 %89, %call214.2, !dbg !1890
  store i32 %or.2, ptr %i_cbp_chroma753, align 4, !dbg !1890
    #dbg_value(i64 3, !1725, !DIExpression(), !1879)
    #dbg_value(i32 68, !1729, !DIExpression(), !1880)
    #dbg_value(i32 132, !1732, !DIExpression(), !1880)
  %90 = load ptr, ptr %sub_4x4ac, align 8, !dbg !1881
  %91 = or disjoint i64 %77, 19, !dbg !1882
  %arrayidx204.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %91, !dbg !1883
  %add.ptr.3 = getelementptr inbounds i8, ptr %74, i64 68, !dbg !1891
  %add.ptr207.3 = getelementptr inbounds i8, ptr %75, i64 132, !dbg !1892
  %arrayidx213.3 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 3, !dbg !1884
  %call214.3 = call i32 %90(ptr noundef nonnull %arrayidx204.3, ptr noundef nonnull %add.ptr.3, ptr noundef nonnull %add.ptr207.3, ptr noundef nonnull %arrayidx213.3) #6, !dbg !1885
    #dbg_value(i32 %call214.3, !1701, !DIExpression(), !1736)
  %conv215.3 = trunc i32 %call214.3 to i8, !dbg !1886
  %arrayidx223.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %91, !dbg !1887
  %92 = load i32, ptr %arrayidx223.3, align 4, !dbg !1887
  %idxprom224.3 = sext i32 %92 to i64, !dbg !1888
  %arrayidx225.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.3, !dbg !1888
  store i8 %conv215.3, ptr %arrayidx225.3, align 1, !dbg !1889
  %93 = load i32, ptr %i_cbp_chroma753, align 4, !dbg !1890
  %or.3 = or i32 %93, %call214.3, !dbg !1890
  store i32 %or.3, ptr %i_cbp_chroma753, align 4, !dbg !1890
    #dbg_value(i64 4, !1725, !DIExpression(), !1879)
    #dbg_value(ptr %arrayidx213, !1893, !DIExpression(), !1905)
    #dbg_value(i32 8, !1898, !DIExpression(), !1905)
  %94 = load i64, ptr %arrayidx213, align 8, !dbg !1907
  %tobool.i = icmp ne i64 %94, 0, !dbg !1908
  %conv238 = zext i1 %tobool.i to i8, !dbg !1909
  %95 = or disjoint i64 %indvars.iv, 46, !dbg !1910
  %arrayidx244 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %95, !dbg !1911
  store i8 %conv238, ptr %arrayidx244, align 1, !dbg !1912
  br label %cleanup466, !dbg !1913

if.end245:                                        ; preds = %for.body158
  %96 = load ptr, ptr %sub8x8_dct, align 16, !dbg !1914
  call void %96(ptr noundef nonnull %dct4x4, ptr noundef %74, ptr noundef %75) #6, !dbg !1915
    #dbg_value(ptr %dct2x2, !1916, !DIExpression(), !1926)
    #dbg_value(ptr %dct4x4, !1921, !DIExpression(), !1926)
  %97 = load i16, ptr %dct4x4, align 16, !dbg !1928
  %conv63.i = zext i16 %97 to i32, !dbg !1928
  %98 = load i16, ptr %arrayidx2.i676, align 16, !dbg !1929
  %conv464.i = zext i16 %98 to i32, !dbg !1929
  %add.i677 = add nuw nsw i32 %conv464.i, %conv63.i, !dbg !1930
    #dbg_value(i32 %add.i677, !1922, !DIExpression(), !1926)
  %99 = load i16, ptr %arrayidx5.i678, align 16, !dbg !1931
  %conv765.i = zext i16 %99 to i32, !dbg !1931
  %100 = load i16, ptr %arrayidx8.i, align 16, !dbg !1932
  %conv1066.i = zext i16 %100 to i32, !dbg !1932
  %add11.i = add nuw nsw i32 %conv1066.i, %conv765.i, !dbg !1933
    #dbg_value(i32 %add11.i, !1923, !DIExpression(), !1926)
  %sub.i679 = sub nsw i32 %conv63.i, %conv464.i, !dbg !1934
    #dbg_value(i32 %sub.i679, !1924, !DIExpression(), !1926)
  %sub24.i = sub nsw i32 %conv765.i, %conv1066.i, !dbg !1935
    #dbg_value(i32 %sub24.i, !1925, !DIExpression(), !1926)
  %add25.i = add nuw nsw i32 %add11.i, %add.i677, !dbg !1936
  %conv26.i = trunc i32 %add25.i to i16, !dbg !1937
  store i16 %conv26.i, ptr %dct2x2, align 16, !dbg !1938, !DIAssignID !1939
    #dbg_assign(i16 %conv26.i, !1704, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1939, ptr %dct2x2, !DIExpression(), !1736)
  %add28.i = add nsw i32 %sub24.i, %sub.i679, !dbg !1940
  %conv29.i = trunc i32 %add28.i to i16, !dbg !1941
  store i16 %conv29.i, ptr %arrayidx30.i, align 4, !dbg !1942, !DIAssignID !1943
    #dbg_assign(i16 %conv29.i, !1704, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !1943, ptr %arrayidx30.i, !DIExpression(), !1736)
  %sub31.i = sub nsw i32 %add.i677, %add11.i, !dbg !1944
  %conv32.i = trunc i32 %sub31.i to i16, !dbg !1945
  store i16 %conv32.i, ptr %arrayidx33.i, align 2, !dbg !1946, !DIAssignID !1947
    #dbg_assign(i16 %conv32.i, !1704, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1947, ptr %arrayidx33.i, !DIExpression(), !1736)
  %sub34.i = sub nsw i32 %sub.i679, %sub24.i, !dbg !1948
  %conv35.i680 = trunc i32 %sub34.i to i16, !dbg !1949
  store i16 %conv35.i680, ptr %arrayidx36.i681, align 2, !dbg !1950, !DIAssignID !1951
    #dbg_assign(i16 %conv35.i680, !1704, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1951, ptr %arrayidx36.i681, !DIExpression(), !1736)
  store i16 0, ptr %dct4x4, align 16, !dbg !1952, !DIAssignID !1953
    #dbg_assign(i16 0, !1722, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1953, ptr %dct4x4, !DIExpression(), !1740)
  store i16 0, ptr %arrayidx2.i676, align 16, !dbg !1954, !DIAssignID !1955
    #dbg_assign(i16 0, !1722, !DIExpression(DW_OP_LLVM_fragment, 256, 16), !1955, ptr %arrayidx2.i676, !DIExpression(), !1740)
  store i16 0, ptr %arrayidx5.i678, align 16, !dbg !1956, !DIAssignID !1957
    #dbg_assign(i16 0, !1722, !DIExpression(DW_OP_LLVM_fragment, 512, 16), !1957, ptr %arrayidx5.i678, !DIExpression(), !1740)
  store i16 0, ptr %arrayidx8.i, align 16, !dbg !1958, !DIAssignID !1959
    #dbg_assign(i16 0, !1722, !DIExpression(DW_OP_LLVM_fragment, 768, 16), !1959, ptr %arrayidx8.i, !DIExpression(), !1740)
    #dbg_value(i32 0, !1733, !DIExpression(), !1960)
    #dbg_value(i32 0, !1733, !DIExpression(), !1960)
    #dbg_value(i32 0, !1721, !DIExpression(), !1740)
    #dbg_value(i32 0, !1720, !DIExpression(), !1740)
  %101 = shl nuw nsw i64 %indvars.iv, 2
    #dbg_value(i64 0, !1733, !DIExpression(), !1960)
    #dbg_value(i32 0, !1721, !DIExpression(), !1740)
    #dbg_value(i32 0, !1720, !DIExpression(), !1740)
  %102 = load i32, ptr %b_trellis257, align 16, !dbg !1961
  %tobool258.not = icmp eq i32 %102, 0, !dbg !1965
  br i1 %tobool258.not, label %if.else268, label %if.then259, !dbg !1966

if.then259:                                       ; preds = %if.end245
  %call267 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6, !dbg !1967
    #dbg_value(i32 %call267, !1701, !DIExpression(), !1736)
  br label %if.end288, !dbg !1968

if.else268:                                       ; preds = %if.end245
  %103 = load ptr, ptr %quant_4x4, align 8, !dbg !1969
  %104 = load ptr, ptr %arrayidx276, align 8, !dbg !1970
  %arrayidx278 = getelementptr inbounds [16 x i16], ptr %104, i64 %idxprom277, !dbg !1970
  %105 = load ptr, ptr %arrayidx283, align 8, !dbg !1971
  %arrayidx285 = getelementptr inbounds [16 x i16], ptr %105, i64 %idxprom277, !dbg !1971
  %call287 = call i32 %103(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx278, ptr noundef %arrayidx285) #6, !dbg !1972
    #dbg_value(i32 %call287, !1701, !DIExpression(), !1736)
  br label %if.end288

if.end288:                                        ; preds = %if.else268, %if.then259
  %nz.0 = phi i32 [ %call267, %if.then259 ], [ %call287, %if.else268 ], !dbg !1973
    #dbg_value(i32 %nz.0, !1701, !DIExpression(), !1736)
  %conv289 = trunc i32 %nz.0 to i8, !dbg !1974
  %106 = or disjoint i64 %101, 16, !dbg !1975
  %arrayidx297 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %106, !dbg !1976
  %107 = load i32, ptr %arrayidx297, align 16, !dbg !1976
  %idxprom298 = sext i32 %107 to i64, !dbg !1977
  %arrayidx299 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298, !dbg !1977
  store i8 %conv289, ptr %arrayidx299, align 1, !dbg !1978
  %tobool300.not = icmp eq i32 %nz.0, 0, !dbg !1979
  br i1 %tobool300.not, label %for.inc337, label %if.then301, !dbg !1981

if.then301:                                       ; preds = %if.end288
    #dbg_value(i32 1, !1721, !DIExpression(), !1740)
  %108 = load ptr, ptr %scan_4x4, align 8, !dbg !1982
  %arrayidx309 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %106, !dbg !1984
  call void %108(ptr noundef nonnull %arrayidx309, ptr noundef nonnull %dct4x4) #6, !dbg !1985
  %109 = load ptr, ptr %dequant_4x4, align 8, !dbg !1986
  %110 = load ptr, ptr %arrayidx321, align 8, !dbg !1987
  call void %109(ptr noundef nonnull %dct4x4, ptr noundef %110, i32 noundef %i_qp) #6, !dbg !1988
  br i1 %71, label %if.then323, label %for.inc337, !dbg !1989

if.then323:                                       ; preds = %if.then301
  %111 = load ptr, ptr %decimate_score15, align 8, !dbg !1990
  %call333 = call i32 %111(ptr noundef nonnull %arrayidx309) #6, !dbg !1992
    #dbg_value(i32 %call333, !1720, !DIExpression(), !1740)
  br label %for.inc337, !dbg !1993

for.inc337:                                       ; preds = %if.end288, %if.then323, %if.then301
  %i_decimate_score.1 = phi i32 [ %call333, %if.then323 ], [ 0, %if.then301 ], [ 0, %if.end288 ], !dbg !1740
  %nz_ac.1 = phi i32 [ 1, %if.then323 ], [ 1, %if.then301 ], [ 0, %if.end288 ], !dbg !1740
    #dbg_value(i32 %nz_ac.1, !1721, !DIExpression(), !1740)
    #dbg_value(i32 %i_decimate_score.1, !1720, !DIExpression(), !1740)
    #dbg_value(i64 1, !1733, !DIExpression(), !1960)
  %112 = load i32, ptr %b_trellis257, align 16, !dbg !1961
  %tobool258.not.1 = icmp eq i32 %112, 0, !dbg !1965
  br i1 %tobool258.not.1, label %if.else268.1, label %if.then259.1, !dbg !1966

if.then259.1:                                     ; preds = %for.inc337
  %call267.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx2.i676, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6, !dbg !1967
    #dbg_value(i32 %call267.1, !1701, !DIExpression(), !1736)
  br label %if.end288.1, !dbg !1968

if.else268.1:                                     ; preds = %for.inc337
  %113 = load ptr, ptr %quant_4x4, align 8, !dbg !1969
  %114 = load ptr, ptr %arrayidx276, align 8, !dbg !1970
  %arrayidx278.1 = getelementptr inbounds [16 x i16], ptr %114, i64 %idxprom277, !dbg !1970
  %115 = load ptr, ptr %arrayidx283, align 8, !dbg !1971
  %arrayidx285.1 = getelementptr inbounds [16 x i16], ptr %115, i64 %idxprom277, !dbg !1971
  %call287.1 = call i32 %113(ptr noundef nonnull %arrayidx2.i676, ptr noundef %arrayidx278.1, ptr noundef %arrayidx285.1) #6, !dbg !1972
    #dbg_value(i32 %call287.1, !1701, !DIExpression(), !1736)
  br label %if.end288.1

if.end288.1:                                      ; preds = %if.else268.1, %if.then259.1
  %nz.0.1 = phi i32 [ %call267.1, %if.then259.1 ], [ %call287.1, %if.else268.1 ], !dbg !1973
    #dbg_value(i32 %nz.0.1, !1701, !DIExpression(), !1736)
  %conv289.1 = trunc i32 %nz.0.1 to i8, !dbg !1974
  %116 = or disjoint i64 %101, 17, !dbg !1975
  %arrayidx297.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %116, !dbg !1976
  %117 = load i32, ptr %arrayidx297.1, align 4, !dbg !1976
  %idxprom298.1 = sext i32 %117 to i64, !dbg !1977
  %arrayidx299.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.1, !dbg !1977
  store i8 %conv289.1, ptr %arrayidx299.1, align 1, !dbg !1978
  %tobool300.not.1 = icmp eq i32 %nz.0.1, 0, !dbg !1979
  br i1 %tobool300.not.1, label %for.inc337.1, label %if.then301.1, !dbg !1981

if.then301.1:                                     ; preds = %if.end288.1
    #dbg_value(i32 1, !1721, !DIExpression(), !1740)
  %118 = load ptr, ptr %scan_4x4, align 8, !dbg !1982
  %arrayidx309.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %116, !dbg !1984
  call void %118(ptr noundef nonnull %arrayidx309.1, ptr noundef nonnull %arrayidx2.i676) #6, !dbg !1985
  %119 = load ptr, ptr %dequant_4x4, align 8, !dbg !1986
  %120 = load ptr, ptr %arrayidx321, align 8, !dbg !1987
  call void %119(ptr noundef nonnull %arrayidx2.i676, ptr noundef %120, i32 noundef %i_qp) #6, !dbg !1988
  br i1 %71, label %if.then323.1, label %for.inc337.1, !dbg !1989

if.then323.1:                                     ; preds = %if.then301.1
  %121 = load ptr, ptr %decimate_score15, align 8, !dbg !1990
  %call333.1 = call i32 %121(ptr noundef nonnull %arrayidx309.1) #6, !dbg !1992
  %add334.1 = add nsw i32 %call333.1, %i_decimate_score.1, !dbg !1994
    #dbg_value(i32 %add334.1, !1720, !DIExpression(), !1740)
  br label %for.inc337.1, !dbg !1993

for.inc337.1:                                     ; preds = %if.then323.1, %if.then301.1, %if.end288.1
  %i_decimate_score.1.1 = phi i32 [ %add334.1, %if.then323.1 ], [ %i_decimate_score.1, %if.then301.1 ], [ %i_decimate_score.1, %if.end288.1 ], !dbg !1740
  %nz_ac.1.1 = phi i32 [ 1, %if.then323.1 ], [ 1, %if.then301.1 ], [ %nz_ac.1, %if.end288.1 ], !dbg !1740
    #dbg_value(i32 %nz_ac.1.1, !1721, !DIExpression(), !1740)
    #dbg_value(i32 %i_decimate_score.1.1, !1720, !DIExpression(), !1740)
    #dbg_value(i64 2, !1733, !DIExpression(), !1960)
  %122 = load i32, ptr %b_trellis257, align 16, !dbg !1961
  %tobool258.not.2 = icmp eq i32 %122, 0, !dbg !1965
  br i1 %tobool258.not.2, label %if.else268.2, label %if.then259.2, !dbg !1966

if.then259.2:                                     ; preds = %for.inc337.1
  %call267.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx5.i678, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6, !dbg !1967
    #dbg_value(i32 %call267.2, !1701, !DIExpression(), !1736)
  br label %if.end288.2, !dbg !1968

if.else268.2:                                     ; preds = %for.inc337.1
  %123 = load ptr, ptr %quant_4x4, align 8, !dbg !1969
  %124 = load ptr, ptr %arrayidx276, align 8, !dbg !1970
  %arrayidx278.2 = getelementptr inbounds [16 x i16], ptr %124, i64 %idxprom277, !dbg !1970
  %125 = load ptr, ptr %arrayidx283, align 8, !dbg !1971
  %arrayidx285.2 = getelementptr inbounds [16 x i16], ptr %125, i64 %idxprom277, !dbg !1971
  %call287.2 = call i32 %123(ptr noundef nonnull %arrayidx5.i678, ptr noundef %arrayidx278.2, ptr noundef %arrayidx285.2) #6, !dbg !1972
    #dbg_value(i32 %call287.2, !1701, !DIExpression(), !1736)
  br label %if.end288.2

if.end288.2:                                      ; preds = %if.else268.2, %if.then259.2
  %nz.0.2 = phi i32 [ %call267.2, %if.then259.2 ], [ %call287.2, %if.else268.2 ], !dbg !1973
    #dbg_value(i32 %nz.0.2, !1701, !DIExpression(), !1736)
  %conv289.2 = trunc i32 %nz.0.2 to i8, !dbg !1974
  %126 = or disjoint i64 %101, 18, !dbg !1975
  %arrayidx297.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %126, !dbg !1976
  %127 = load i32, ptr %arrayidx297.2, align 8, !dbg !1976
  %idxprom298.2 = sext i32 %127 to i64, !dbg !1977
  %arrayidx299.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.2, !dbg !1977
  store i8 %conv289.2, ptr %arrayidx299.2, align 1, !dbg !1978
  %tobool300.not.2 = icmp eq i32 %nz.0.2, 0, !dbg !1979
  br i1 %tobool300.not.2, label %for.inc337.2, label %if.then301.2, !dbg !1981

if.then301.2:                                     ; preds = %if.end288.2
    #dbg_value(i32 1, !1721, !DIExpression(), !1740)
  %128 = load ptr, ptr %scan_4x4, align 8, !dbg !1982
  %arrayidx309.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %126, !dbg !1984
  call void %128(ptr noundef nonnull %arrayidx309.2, ptr noundef nonnull %arrayidx5.i678) #6, !dbg !1985
  %129 = load ptr, ptr %dequant_4x4, align 8, !dbg !1986
  %130 = load ptr, ptr %arrayidx321, align 8, !dbg !1987
  call void %129(ptr noundef nonnull %arrayidx5.i678, ptr noundef %130, i32 noundef %i_qp) #6, !dbg !1988
  br i1 %71, label %if.then323.2, label %for.inc337.2, !dbg !1989

if.then323.2:                                     ; preds = %if.then301.2
  %131 = load ptr, ptr %decimate_score15, align 8, !dbg !1990
  %call333.2 = call i32 %131(ptr noundef nonnull %arrayidx309.2) #6, !dbg !1992
  %add334.2 = add nsw i32 %call333.2, %i_decimate_score.1.1, !dbg !1994
    #dbg_value(i32 %add334.2, !1720, !DIExpression(), !1740)
  br label %for.inc337.2, !dbg !1993

for.inc337.2:                                     ; preds = %if.then323.2, %if.then301.2, %if.end288.2
  %i_decimate_score.1.2 = phi i32 [ %add334.2, %if.then323.2 ], [ %i_decimate_score.1.1, %if.then301.2 ], [ %i_decimate_score.1.1, %if.end288.2 ], !dbg !1740
  %nz_ac.1.2 = phi i32 [ 1, %if.then323.2 ], [ 1, %if.then301.2 ], [ %nz_ac.1.1, %if.end288.2 ], !dbg !1740
    #dbg_value(i32 %nz_ac.1.2, !1721, !DIExpression(), !1740)
    #dbg_value(i32 %i_decimate_score.1.2, !1720, !DIExpression(), !1740)
    #dbg_value(i64 3, !1733, !DIExpression(), !1960)
  %132 = load i32, ptr %b_trellis257, align 16, !dbg !1961
  %tobool258.not.3 = icmp eq i32 %132, 0, !dbg !1965
  br i1 %tobool258.not.3, label %if.else268.3, label %if.then259.3, !dbg !1966

if.then259.3:                                     ; preds = %for.inc337.2
  %call267.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx8.i, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6, !dbg !1967
    #dbg_value(i32 %call267.3, !1701, !DIExpression(), !1736)
  br label %if.end288.3, !dbg !1968

if.else268.3:                                     ; preds = %for.inc337.2
  %133 = load ptr, ptr %quant_4x4, align 8, !dbg !1969
  %134 = load ptr, ptr %arrayidx276, align 8, !dbg !1970
  %arrayidx278.3 = getelementptr inbounds [16 x i16], ptr %134, i64 %idxprom277, !dbg !1970
  %135 = load ptr, ptr %arrayidx283, align 8, !dbg !1971
  %arrayidx285.3 = getelementptr inbounds [16 x i16], ptr %135, i64 %idxprom277, !dbg !1971
  %call287.3 = call i32 %133(ptr noundef nonnull %arrayidx8.i, ptr noundef %arrayidx278.3, ptr noundef %arrayidx285.3) #6, !dbg !1972
    #dbg_value(i32 %call287.3, !1701, !DIExpression(), !1736)
  br label %if.end288.3

if.end288.3:                                      ; preds = %if.else268.3, %if.then259.3
  %nz.0.3 = phi i32 [ %call267.3, %if.then259.3 ], [ %call287.3, %if.else268.3 ], !dbg !1973
    #dbg_value(i32 %nz.0.3, !1701, !DIExpression(), !1736)
  %conv289.3 = trunc i32 %nz.0.3 to i8, !dbg !1974
  %136 = or disjoint i64 %101, 19, !dbg !1975
  %arrayidx297.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %136, !dbg !1976
  %137 = load i32, ptr %arrayidx297.3, align 4, !dbg !1976
  %idxprom298.3 = sext i32 %137 to i64, !dbg !1977
  %arrayidx299.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.3, !dbg !1977
  store i8 %conv289.3, ptr %arrayidx299.3, align 1, !dbg !1978
  %tobool300.not.3 = icmp eq i32 %nz.0.3, 0, !dbg !1979
  br i1 %tobool300.not.3, label %for.inc337.3, label %if.then301.3, !dbg !1981

if.then301.3:                                     ; preds = %if.end288.3
    #dbg_value(i32 1, !1721, !DIExpression(), !1740)
  %138 = load ptr, ptr %scan_4x4, align 8, !dbg !1982
  %arrayidx309.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %136, !dbg !1984
  call void %138(ptr noundef nonnull %arrayidx309.3, ptr noundef nonnull %arrayidx8.i) #6, !dbg !1985
  %139 = load ptr, ptr %dequant_4x4, align 8, !dbg !1986
  %140 = load ptr, ptr %arrayidx321, align 8, !dbg !1987
  call void %139(ptr noundef nonnull %arrayidx8.i, ptr noundef %140, i32 noundef %i_qp) #6, !dbg !1988
  br i1 %71, label %if.then323.3, label %for.inc337.3, !dbg !1989

if.then323.3:                                     ; preds = %if.then301.3
  %141 = load ptr, ptr %decimate_score15, align 8, !dbg !1990
  %call333.3 = call i32 %141(ptr noundef nonnull %arrayidx309.3) #6, !dbg !1992
  %add334.3 = add nsw i32 %call333.3, %i_decimate_score.1.2, !dbg !1994
    #dbg_value(i32 %add334.3, !1720, !DIExpression(), !1740)
  br label %for.inc337.3, !dbg !1993

for.inc337.3:                                     ; preds = %if.then323.3, %if.then301.3, %if.end288.3
  %i_decimate_score.1.3 = phi i32 [ %add334.3, %if.then323.3 ], [ %i_decimate_score.1.2, %if.then301.3 ], [ %i_decimate_score.1.2, %if.end288.3 ], !dbg !1740
  %nz_ac.1.3 = phi i32 [ 1, %if.then323.3 ], [ 1, %if.then301.3 ], [ %nz_ac.1.2, %if.end288.3 ], !dbg !1740
    #dbg_value(i32 %nz_ac.1.3, !1721, !DIExpression(), !1740)
    #dbg_value(i32 %i_decimate_score.1.3, !1720, !DIExpression(), !1740)
    #dbg_value(i64 4, !1733, !DIExpression(), !1960)
  %142 = load i32, ptr %b_trellis257, align 16, !dbg !1995
  %tobool343.not = icmp eq i32 %142, 0, !dbg !1997
  br i1 %tobool343.not, label %if.else351, label %if.then344, !dbg !1998

if.then344:                                       ; preds = %for.inc337.3
  %call350 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 3, i32 noundef %lnot.ext266, i32 noundef 1) #6, !dbg !1999
    #dbg_value(i32 %call350, !1702, !DIExpression(), !1736)
  br label %if.end374, !dbg !2000

if.else351:                                       ; preds = %for.inc337.3
  %143 = load ptr, ptr %quant_2x2_dc353, align 8, !dbg !2001
  %144 = load ptr, ptr %arrayidx276, align 8, !dbg !2002
  %arrayidx360 = getelementptr inbounds [16 x i16], ptr %144, i64 %idxprom277, !dbg !2002
  %145 = load i16, ptr %arrayidx360, align 2, !dbg !2002
  %146 = lshr i16 %145, 1, !dbg !2003
  %shr363 = zext nneg i16 %146 to i32, !dbg !2003
  %147 = load ptr, ptr %arrayidx283, align 8, !dbg !2004
  %arrayidx369 = getelementptr inbounds [16 x i16], ptr %147, i64 %idxprom277, !dbg !2004
  %148 = load i16, ptr %arrayidx369, align 2, !dbg !2004
  %conv371 = zext i16 %148 to i32, !dbg !2004
  %shl372 = shl nuw nsw i32 %conv371, 1, !dbg !2005
  %call373 = call i32 %143(ptr noundef nonnull %dct2x2, i32 noundef %shr363, i32 noundef %shl372) #6, !dbg !2006
    #dbg_value(i32 %call373, !1702, !DIExpression(), !1736)
  br label %if.end374

if.end374:                                        ; preds = %if.else351, %if.then344
  %nz_dc.1 = phi i32 [ %call350, %if.then344 ], [ %call373, %if.else351 ], !dbg !2007
    #dbg_value(i32 %nz_dc.1, !1702, !DIExpression(), !1736)
  %conv375 = trunc i32 %nz_dc.1 to i8, !dbg !2008
  %149 = or disjoint i64 %indvars.iv, 46, !dbg !2009
  %arrayidx381 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %149, !dbg !2010
  store i8 %conv375, ptr %arrayidx381, align 1, !dbg !2011
  %cmp384 = icmp sgt i32 %i_decimate_score.1.3, 6
  %or.cond = select i1 %not., i1 true, i1 %cmp384, !dbg !2012
  %tobool386 = icmp ne i32 %nz_ac.1.3, 0
  %or.cond502 = and i1 %or.cond, %tobool386, !dbg !2012
  br i1 %or.cond502, label %if.else445, label %if.then387, !dbg !2012

if.then387:                                       ; preds = %if.end374
  %150 = mul nuw nsw i64 %indvars.iv, 24, !dbg !2014
  %151 = add nuw nsw i64 %150, 9, !dbg !2016
  %arrayidx394 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %151, !dbg !2017
  store i8 0, ptr %arrayidx394, align 1, !dbg !2018
  %152 = add nuw nsw i64 %150, 10, !dbg !2019
  %arrayidx401 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %152, !dbg !2020
  store i8 0, ptr %arrayidx401, align 1, !dbg !2021
  %153 = add nuw nsw i64 %150, 17, !dbg !2022
  %arrayidx408 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %153, !dbg !2023
  store i8 0, ptr %arrayidx408, align 1, !dbg !2024
  %154 = add nuw nsw i64 %150, 18, !dbg !2025
  %arrayidx415 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %154, !dbg !2026
  store i8 0, ptr %arrayidx415, align 1, !dbg !2027
  %tobool416.not = icmp eq i32 %nz_dc.1, 0, !dbg !2028
  br i1 %tobool416.not, label %cleanup466, label %if.end418, !dbg !2030

if.end418:                                        ; preds = %if.then387
  %call420 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2), !dbg !2031
  %tobool421.not = icmp eq i32 %call420, 0, !dbg !2031
  br i1 %tobool421.not, label %if.then422, label %if.end429, !dbg !2033

if.then422:                                       ; preds = %if.end418
  store i8 0, ptr %arrayidx381, align 1, !dbg !2034
  br label %cleanup466, !dbg !2036

if.end429:                                        ; preds = %if.end418
  %arrayidx433 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, !dbg !2037
    #dbg_value(ptr %arrayidx433, !1825, !DIExpression(), !2038)
    #dbg_value(ptr %dct2x2, !1828, !DIExpression(), !2038)
  %155 = load <4 x i16>, ptr %dct2x2, align 16, !dbg !2040
  %156 = shufflevector <4 x i16> %155, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !2040
  store <4 x i16> %156, ptr %arrayidx433, align 2, !dbg !2040
  %157 = load ptr, ptr %arrayidx321, align 8, !dbg !2041
    #dbg_value(ptr %dct2x2, !1833, !DIExpression(), !2042)
    #dbg_value(ptr %dct2x2, !1838, !DIExpression(), !2042)
    #dbg_value(ptr %157, !1839, !DIExpression(), !2042)
    #dbg_value(i32 %i_qp, !1840, !DIExpression(), !2042)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2042)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2042)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !2042)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !1844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !2042)
  %arrayidx17.i701 = getelementptr inbounds [16 x i32], ptr %157, i64 %idxprom.i700, !dbg !2044
  %158 = load i32, ptr %arrayidx17.i701, align 4, !dbg !2044
  %shl.i703 = shl i32 %158, %div.i702, !dbg !2044
  %159 = sext <4 x i16> %155 to <4 x i32>, !dbg !2044
  %160 = shufflevector <4 x i32> %159, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !2044
  %161 = add nsw <4 x i32> %160, %159, !dbg !2044
  %162 = sub nsw <4 x i32> %160, %159, !dbg !2044
  %163 = shufflevector <4 x i32> %161, <4 x i32> %162, <4 x i32> <i32 2, i32 0, i32 7, i32 5>, !dbg !2044
    #dbg_value(i32 %shl.i703, !1845, !DIExpression(), !2042)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !2045, ptr %dct2x2, !DIExpression(), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !2045, ptr %arrayidx33.i, !DIExpression(), !1736)
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !2045, ptr %arrayidx30.i, !DIExpression(), !1736)
  %164 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !2046
  %165 = add nsw <4 x i32> %163, %164, !dbg !2046
  %166 = sub nsw <4 x i32> %163, %164, !dbg !2046
  %167 = shufflevector <4 x i32> %165, <4 x i32> %166, <4 x i32> <i32 0, i32 5, i32 2, i32 7>, !dbg !2046
  %168 = insertelement <4 x i32> poison, i32 %shl.i703, i64 0, !dbg !2047
  %169 = shufflevector <4 x i32> %168, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2047
  %170 = mul nsw <4 x i32> %169, %167, !dbg !2047
  %171 = lshr <4 x i32> %170, <i32 5, i32 5, i32 5, i32 5>, !dbg !2048
  %172 = trunc <4 x i32> %171 to <4 x i16>, !dbg !2049
  store <4 x i16> %172, ptr %dct2x2, align 16, !dbg !2050, !DIAssignID !2045
    #dbg_assign(!DIArgList(i32 poison, i32 poison), !1704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !2045, ptr %arrayidx36.i681, !DIExpression(), !1736)
  %173 = load ptr, ptr %add8x8_idct_dc443, align 8, !dbg !2051
  call void %173(ptr noundef %75, ptr noundef nonnull %dct2x2) #6, !dbg !2052
  br label %cleanup466, !dbg !2053

if.else445:                                       ; preds = %if.end374
  store i32 1, ptr %i_cbp_chroma753, align 4, !dbg !2054
  %tobool448.not = icmp eq i32 %nz_dc.1, 0, !dbg !2056
  br i1 %tobool448.not, label %if.end462, label %if.then449, !dbg !2058

if.then449:                                       ; preds = %if.else445
  %arrayidx453 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, !dbg !2059
    #dbg_value(ptr %arrayidx453, !1825, !DIExpression(), !2061)
    #dbg_value(ptr %dct2x2, !1828, !DIExpression(), !2061)
  %174 = load <4 x i16>, ptr %dct2x2, align 16, !dbg !2063
  %175 = shufflevector <4 x i16> %174, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !2063
  store <4 x i16> %175, ptr %arrayidx453, align 2, !dbg !2063
  %176 = load ptr, ptr %arrayidx321, align 8, !dbg !2064
    #dbg_value(ptr %dct2x2, !2065, !DIExpression(), !2078)
    #dbg_value(ptr %dct4x4, !2070, !DIExpression(), !2078)
    #dbg_value(ptr %176, !2071, !DIExpression(), !2078)
    #dbg_value(i32 %i_qp, !2072, !DIExpression(), !2078)
  %177 = extractelement <4 x i16> %174, i64 0, !dbg !2080
  %conv.i729 = sext i16 %177 to i32, !dbg !2080
  %178 = extractelement <4 x i16> %174, i64 1, !dbg !2080
  %conv2.i731 = sext i16 %178 to i32, !dbg !2080
  %add.i732 = add nsw i32 %conv2.i731, %conv.i729, !dbg !2080
    #dbg_value(i32 %add.i732, !2073, !DIExpression(), !2078)
  %179 = extractelement <4 x i16> %174, i64 2, !dbg !2080
  %conv4.i734 = sext i16 %179 to i32, !dbg !2080
  %180 = extractelement <4 x i16> %174, i64 3, !dbg !2080
  %conv6.i736 = sext i16 %180 to i32, !dbg !2080
  %add7.i737 = add nsw i32 %conv6.i736, %conv4.i734, !dbg !2080
    #dbg_value(i32 %add7.i737, !2074, !DIExpression(), !2078)
  %sub.i738 = sub nsw i32 %conv.i729, %conv2.i731, !dbg !2080
    #dbg_value(i32 %sub.i738, !2075, !DIExpression(), !2078)
  %sub16.i739 = sub nsw i32 %conv4.i734, %conv6.i736, !dbg !2080
    #dbg_value(i32 %sub16.i739, !2076, !DIExpression(), !2078)
  %arrayidx17.i742 = getelementptr inbounds [16 x i32], ptr %176, i64 %idxprom.i700, !dbg !2080
  %181 = load i32, ptr %arrayidx17.i742, align 4, !dbg !2080
  %shl.i744 = shl i32 %181, %div.i702, !dbg !2080
    #dbg_value(i32 %shl.i744, !2077, !DIExpression(), !2078)
  %add19.i745 = add nsw i32 %add7.i737, %add.i732, !dbg !2081
  %mul.i746 = mul nsw i32 %shl.i744, %add19.i745, !dbg !2082
  %shr.i747 = lshr i32 %mul.i746, 5, !dbg !2083
  %conv20.i748 = trunc i32 %shr.i747 to i16, !dbg !2084
  store i16 %conv20.i748, ptr %dct4x4, align 16, !dbg !2085, !DIAssignID !2086
    #dbg_assign(i16 %conv20.i748, !1722, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2086, ptr %dct4x4, !DIExpression(), !1740)
  %sub23.i = sub nsw i32 %add.i732, %add7.i737, !dbg !2087
  %mul24.i = mul nsw i32 %shl.i744, %sub23.i, !dbg !2088
  %shr25.i = lshr i32 %mul24.i, 5, !dbg !2089
  %conv26.i749 = trunc i32 %shr25.i to i16, !dbg !2090
  store i16 %conv26.i749, ptr %arrayidx2.i676, align 16, !dbg !2091, !DIAssignID !2092
    #dbg_assign(i16 %conv26.i749, !1722, !DIExpression(DW_OP_LLVM_fragment, 256, 16), !2092, ptr %arrayidx2.i676, !DIExpression(), !1740)
  %add29.i = add nsw i32 %sub16.i739, %sub.i738, !dbg !2093
  %mul30.i = mul nsw i32 %shl.i744, %add29.i, !dbg !2094
  %shr31.i = lshr i32 %mul30.i, 5, !dbg !2095
  %conv32.i750 = trunc i32 %shr31.i to i16, !dbg !2096
  store i16 %conv32.i750, ptr %arrayidx5.i678, align 16, !dbg !2097, !DIAssignID !2098
    #dbg_assign(i16 %conv32.i750, !1722, !DIExpression(DW_OP_LLVM_fragment, 512, 16), !2098, ptr %arrayidx5.i678, !DIExpression(), !1740)
  %sub35.i = sub nsw i32 %sub.i738, %sub16.i739, !dbg !2099
  %mul36.i = mul nsw i32 %shl.i744, %sub35.i, !dbg !2100
  %shr37.i = lshr i32 %mul36.i, 5, !dbg !2101
  %conv38.i = trunc i32 %shr37.i to i16, !dbg !2102
  store i16 %conv38.i, ptr %arrayidx8.i, align 16, !dbg !2103, !DIAssignID !2104
    #dbg_assign(i16 %conv38.i, !1722, !DIExpression(DW_OP_LLVM_fragment, 768, 16), !2104, ptr %arrayidx8.i, !DIExpression(), !1740)
  br label %if.end462, !dbg !2105

if.end462:                                        ; preds = %if.then449, %if.else445
  %182 = load ptr, ptr %add8x8_idct, align 16, !dbg !2106
  call void %182(ptr noundef %75, ptr noundef nonnull %dct4x4) #6, !dbg !2107
  br label %cleanup466

cleanup466:                                       ; preds = %if.end429, %if.end462, %if.then387, %if.then422, %for.cond174.preheader
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !2108
    #dbg_value(i64 %indvars.iv.next, !1714, !DIExpression(), !1862)
  br i1 %cmp155, label %for.body158, label %for.cond.cleanup157, !dbg !1863, !llvm.loop !2109

cleanup495:                                       ; preds = %for.inc.1, %for.cond.cleanup157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dct2x2) #6, !dbg !1871
  ret void, !dbg !1871
}

declare !dbg !2111 i32 @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @x264_mb_optimize_chroma_dc(ptr nocapture noundef readonly %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef %dct2x2) unnamed_addr #3 !dbg !2115 {
entry:
    #dbg_value(ptr %h, !2119, !DIExpression(), !2131)
    #dbg_value(i32 %b_inter, !2120, !DIExpression(), !2131)
    #dbg_value(i32 %i_qp, !2121, !DIExpression(), !2131)
    #dbg_value(ptr %dct2x2, !2122, !DIExpression(), !2131)
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344, !dbg !2132
  %add = add nsw i32 %b_inter, 2, !dbg !2134
  %idxprom = sext i32 %add to i64, !dbg !2135
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %dequant4_mf, i64 0, i64 %idxprom, !dbg !2135
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2135
  %rem = srem i32 %i_qp, 6, !dbg !2136
  %idxprom1 = sext i32 %rem to i64, !dbg !2135
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %0, i64 %idxprom1, !dbg !2135
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !2135
  %div = sdiv i32 %i_qp, 6, !dbg !2137
  %shl = shl i32 %1, %div, !dbg !2138
  %cmp = icmp sgt i32 %shl, 2048, !dbg !2139
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2140

if.end:                                           ; preds = %entry
    #dbg_value(ptr undef, !1833, !DIExpression(), !2141)
    #dbg_value(ptr %dct2x2, !1838, !DIExpression(), !2141)
    #dbg_value(ptr %0, !1839, !DIExpression(), !2141)
    #dbg_value(i32 %i_qp, !1840, !DIExpression(), !2141)
  %2 = load i16, ptr %dct2x2, align 2, !dbg !2143
  %conv.i = sext i16 %2 to i32, !dbg !2143
  %arrayidx1.i = getelementptr inbounds i8, ptr %dct2x2, i64 2, !dbg !2143
  %3 = load i16, ptr %arrayidx1.i, align 2, !dbg !2143
  %conv2.i = sext i16 %3 to i32, !dbg !2143
  %add.i = add nsw i32 %conv2.i, %conv.i, !dbg !2143
    #dbg_value(i32 %add.i, !1841, !DIExpression(), !2141)
  %arrayidx3.i = getelementptr inbounds i8, ptr %dct2x2, i64 4, !dbg !2143
  %4 = load i16, ptr %arrayidx3.i, align 2, !dbg !2143
  %conv4.i = sext i16 %4 to i32, !dbg !2143
  %arrayidx5.i = getelementptr inbounds i8, ptr %dct2x2, i64 6, !dbg !2143
  %5 = load i16, ptr %arrayidx5.i, align 2, !dbg !2143
  %conv6.i = sext i16 %5 to i32, !dbg !2143
  %add7.i = add nsw i32 %conv6.i, %conv4.i, !dbg !2143
    #dbg_value(i32 %add7.i, !1842, !DIExpression(), !2141)
  %sub.i = sub nsw i32 %conv.i, %conv2.i, !dbg !2143
    #dbg_value(i32 %sub.i, !1843, !DIExpression(), !2141)
  %sub16.i = sub nsw i32 %conv4.i, %conv6.i, !dbg !2143
    #dbg_value(i32 %sub16.i, !1844, !DIExpression(), !2141)
    #dbg_value(i32 %shl, !1845, !DIExpression(), !2141)
  %add19.i = add nsw i32 %add7.i, %add.i, !dbg !2144
  %mul.i = mul nsw i32 %add19.i, %shl, !dbg !2145
  %shr.i = lshr i32 %mul.i, 5, !dbg !2146
  %conv20.i = trunc i32 %shr.i to i16, !dbg !2147
    #dbg_value(i16 %conv20.i, !2123, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2131)
  %sub22.i = sub nsw i32 %add.i, %add7.i, !dbg !2148
  %mul23.i = mul nsw i32 %sub22.i, %shl, !dbg !2149
  %shr24.i = lshr i32 %mul23.i, 5, !dbg !2150
  %conv25.i = trunc i32 %shr24.i to i16, !dbg !2151
    #dbg_value(i16 %conv25.i, !2123, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !2131)
  %add27.i = add nsw i32 %sub16.i, %sub.i, !dbg !2152
  %mul28.i = mul nsw i32 %add27.i, %shl, !dbg !2153
  %shr29.i = lshr i32 %mul28.i, 5, !dbg !2154
  %conv30.i = trunc i32 %shr29.i to i16, !dbg !2155
    #dbg_value(i16 %conv30.i, !2123, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !2131)
  %sub32.i = sub nsw i32 %sub.i, %sub16.i, !dbg !2156
  %mul33.i = mul nsw i32 %sub32.i, %shl, !dbg !2157
  %shr34.i = lshr i32 %mul33.i, 5, !dbg !2158
  %conv35.i = trunc i32 %shr34.i to i16, !dbg !2159
    #dbg_value(i16 %conv35.i, !2123, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !2131)
  %add9 = add i16 %conv20.i, 32, !dbg !2160
    #dbg_value(i16 %add9, !2123, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2131)
  %add13 = add i16 %conv25.i, 32, !dbg !2161
    #dbg_value(i16 %add13, !2123, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !2131)
  %add17 = add i16 %conv30.i, 32, !dbg !2162
    #dbg_value(i16 %add17, !2123, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !2131)
  %add21 = add i16 %conv35.i, 32, !dbg !2163
    #dbg_value(i16 %add21, !2123, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !2131)
  %or84 = or i16 %add9, %add13, !dbg !2164
  %or2985 = or i16 %or84, %add17, !dbg !2166
  %or3286 = or i16 %or2985, %add21, !dbg !2167
  %tobool.not = icmp ult i16 %or3286, 64, !dbg !2168
  br i1 %tobool.not, label %cleanup, label %if.end34, !dbg !2169

if.end34:                                         ; preds = %if.end
    #dbg_value(i32 0, !2125, !DIExpression(), !2131)
  %arrayidx35 = getelementptr inbounds i8, ptr %h, i64 33192, !dbg !2170
  %6 = load ptr, ptr %arrayidx35, align 8, !dbg !2170
  %call = tail call i32 %6(ptr noundef nonnull %dct2x2) #6, !dbg !2170
    #dbg_value(i32 %call, !2124, !DIExpression(), !2131)
    #dbg_value(i32 0, !2125, !DIExpression(), !2131)
  %cmp36103 = icmp sgt i32 %call, -1, !dbg !2171
  br i1 %cmp36103, label %for.body.lr.ph, label %cleanup, !dbg !2172

for.body.lr.ph:                                   ; preds = %if.end34
  %conv.i87 = sext i16 %add9 to i32
  %conv4.i91 = sext i16 %add13 to i32
  %conv10.i = sext i16 %add17 to i32
  %conv17.i = sext i16 %add21 to i32
  %7 = zext nneg i32 %call to i64, !dbg !2172
  br label %for.body, !dbg !2172

for.body:                                         ; preds = %for.body.lr.ph, %while.end
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %while.end ]
  %nz.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %nz.1, %while.end ]
    #dbg_value(i32 %nz.0105, !2125, !DIExpression(), !2131)
    #dbg_value(i64 %indvars.iv, !2124, !DIExpression(), !2131)
  %arrayidx39 = getelementptr inbounds i16, ptr %dct2x2, i64 %indvars.iv, !dbg !2173
  %8 = load i16, ptr %arrayidx39, align 2, !dbg !2173
  %conv40 = sext i16 %8 to i32, !dbg !2173
    #dbg_value(i32 %conv40, !2126, !DIExpression(), !2174)
  %shr41 = ashr i32 %conv40, 31, !dbg !2175
  %or42 = or i32 %shr41, 1, !dbg !2176
    #dbg_value(i32 %or42, !2130, !DIExpression(), !2174)
  br label %while.cond, !dbg !2177

while.cond:                                       ; preds = %while.body, %for.body
  %level.0 = phi i32 [ %conv40, %for.body ], [ %sub, %while.body ], !dbg !2174
    #dbg_value(i32 %level.0, !2126, !DIExpression(), !2174)
  %tobool43.not = icmp eq i32 %level.0, 0, !dbg !2177
  br i1 %tobool43.not, label %while.end, label %while.body, !dbg !2177

while.body:                                       ; preds = %while.cond
  %sub = sub nsw i32 %level.0, %or42, !dbg !2178
  %conv44 = trunc i32 %sub to i16, !dbg !2180
  store i16 %conv44, ptr %arrayidx39, align 2, !dbg !2181
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !2182
    #dbg_value(ptr undef, !2184, !DIExpression(), !2193)
    #dbg_value(ptr %dct2x2, !2189, !DIExpression(), !2193)
    #dbg_value(ptr %9, !2190, !DIExpression(), !2193)
    #dbg_value(i32 %i_qp, !2191, !DIExpression(), !2193)
    #dbg_value(ptr undef, !1833, !DIExpression(), !2195)
    #dbg_value(ptr %dct2x2, !1838, !DIExpression(), !2195)
    #dbg_value(ptr %9, !1839, !DIExpression(), !2195)
    #dbg_value(i32 %i_qp, !1840, !DIExpression(), !2195)
  %10 = load i16, ptr %dct2x2, align 2, !dbg !2197
  %conv.i.i = sext i16 %10 to i32, !dbg !2197
  %11 = load i16, ptr %arrayidx1.i, align 2, !dbg !2197
  %conv2.i.i = sext i16 %11 to i32, !dbg !2197
  %add.i.i = add nsw i32 %conv2.i.i, %conv.i.i, !dbg !2197
    #dbg_value(i32 %add.i.i, !1841, !DIExpression(), !2195)
  %12 = load i16, ptr %arrayidx3.i, align 2, !dbg !2197
  %conv4.i.i = sext i16 %12 to i32, !dbg !2197
  %13 = load i16, ptr %arrayidx5.i, align 2, !dbg !2197
  %conv6.i.i = sext i16 %13 to i32, !dbg !2197
  %add7.i.i = add nsw i32 %conv6.i.i, %conv4.i.i, !dbg !2197
    #dbg_value(i32 %add7.i.i, !1842, !DIExpression(), !2195)
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i, !dbg !2197
    #dbg_value(i32 %sub.i.i, !1843, !DIExpression(), !2195)
  %sub16.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i, !dbg !2197
    #dbg_value(i32 %sub16.i.i, !1844, !DIExpression(), !2195)
  %arrayidx17.i.i = getelementptr inbounds [16 x i32], ptr %9, i64 %idxprom1, !dbg !2197
  %14 = load i32, ptr %arrayidx17.i.i, align 4, !dbg !2197
  %shl.i.i = shl i32 %14, %div, !dbg !2197
    #dbg_value(i32 %shl.i.i, !1845, !DIExpression(), !2195)
  %add19.i.i = add nsw i32 %add7.i.i, %add.i.i, !dbg !2198
    #dbg_value(i32 poison, !2192, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !2193)
  %sub22.i.i = sub nsw i32 %add.i.i, %add7.i.i, !dbg !2199
    #dbg_value(i32 poison, !2192, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !2193)
  %add27.i.i = add nsw i32 %sub16.i.i, %sub.i.i, !dbg !2200
    #dbg_value(i32 poison, !2192, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !2193)
  %sub32.i.i = sub nsw i32 %sub.i.i, %sub16.i.i, !dbg !2201
    #dbg_value(i32 poison, !2192, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16), !2193)
  %mul.i.i = shl i32 %shl.i.i, 11, !dbg !2202
  %15 = mul i32 %mul.i.i, %add19.i.i, !dbg !2203
  %conv2.i88 = ashr i32 %15, 16, !dbg !2203
  %add.i89 = add nsw i32 %conv2.i88, 32, !dbg !2204
  %xor.i = xor i32 %add.i89, %conv.i87, !dbg !2205
  %16 = mul i32 %mul.i.i, %sub22.i.i, !dbg !2206
  %conv6.i92 = ashr i32 %16, 16, !dbg !2206
  %add7.i93 = add nsw i32 %conv6.i92, 32, !dbg !2207
  %xor8.i = xor i32 %add7.i93, %conv4.i91, !dbg !2208
  %or.i = or i32 %xor.i, %xor8.i, !dbg !2209
  %17 = mul i32 %mul.i.i, %add27.i.i, !dbg !2210
  %conv12.i = ashr i32 %17, 16, !dbg !2210
  %add13.i = add nsw i32 %conv12.i, 32, !dbg !2211
  %xor14.i = xor i32 %add13.i, %conv10.i, !dbg !2212
  %or15.i = or i32 %or.i, %xor14.i, !dbg !2213
  %18 = mul i32 %mul.i.i, %sub32.i.i, !dbg !2214
  %conv19.i = ashr i32 %18, 16, !dbg !2214
  %add20.i = add nsw i32 %conv19.i, 32, !dbg !2215
  %xor21.i = xor i32 %add20.i, %conv17.i, !dbg !2216
  %or22.i = or i32 %or15.i, %xor21.i, !dbg !2217
  %tobool53.not = icmp ult i32 %or22.i, 64, !dbg !2218
  br i1 %tobool53.not, label %while.cond, label %if.then54, !dbg !2219, !llvm.loop !2220

if.then54:                                        ; preds = %while.body
    #dbg_value(i32 1, !2125, !DIExpression(), !2131)
  %conv55 = trunc i32 %level.0 to i16, !dbg !2222
  store i16 %conv55, ptr %arrayidx39, align 2, !dbg !2224
  br label %while.end, !dbg !2225

while.end:                                        ; preds = %while.cond, %if.then54
  %nz.1 = phi i32 [ 1, %if.then54 ], [ %nz.0105, %while.cond ], !dbg !2226
    #dbg_value(i32 %nz.1, !2125, !DIExpression(), !2131)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2227
    #dbg_value(i64 %indvars.iv.next, !2124, !DIExpression(), !2131)
  %cmp36 = icmp sgt i64 %indvars.iv, 0, !dbg !2171
  br i1 %cmp36, label %for.body, label %cleanup, !dbg !2172, !llvm.loop !2228

cleanup:                                          ; preds = %while.end, %if.end34, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end34 ], [ %nz.1, %while.end ], !dbg !2131
  ret i32 %retval.0, !dbg !2230
}

declare !dbg !2231 i32 @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %h, i32 noundef %i_mode) local_unnamed_addr #0 !dbg !2234 {
entry:
    #dbg_value(ptr %h, !2238, !DIExpression(), !2241)
    #dbg_value(i32 %i_mode, !2239, !DIExpression(), !2241)
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2242
  %0 = load ptr, ptr %fenc, align 8, !dbg !2242
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 108, !dbg !2243
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2243
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2244
  %2 = load i32, ptr %b_interlaced, align 4, !dbg !2244
  %shl = shl i32 %1, %2, !dbg !2245
    #dbg_value(i32 %shl, !2240, !DIExpression(), !2241)
  switch i32 %i_mode, label %if.else47 [
    i32 2, label %if.then
    i32 1, label %if.then22
  ], !dbg !2246

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2247
  %3 = load ptr, ptr %arrayidx1, align 8, !dbg !2247
  %arrayidx3 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2250
  %4 = load ptr, ptr %arrayidx3, align 8, !dbg !2250
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 21376, !dbg !2251
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !2251
  %idx.ext = sext i32 %shl to i64, !dbg !2252
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !2252
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.neg, !dbg !2252
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %add.ptr, i32 noundef %shl, i32 noundef 8) #6, !dbg !2247
  %6 = load ptr, ptr %arrayidx1, align 8, !dbg !2253
  %arrayidx13 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2254
  %7 = load ptr, ptr %arrayidx13, align 16, !dbg !2254
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 21384, !dbg !2255
  %8 = load ptr, ptr %arrayidx17, align 8, !dbg !2255
  %add.ptr20 = getelementptr inbounds i8, ptr %8, i64 %idx.neg, !dbg !2256
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef %add.ptr20, i32 noundef %shl, i32 noundef 8) #6, !dbg !2253
  br label %if.end60, !dbg !2257

if.then22:                                        ; preds = %entry
  %arrayidx25 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2258
  %9 = load ptr, ptr %arrayidx25, align 8, !dbg !2258
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2261
  %10 = load ptr, ptr %arrayidx29, align 8, !dbg !2261
  %arrayidx33 = getelementptr inbounds i8, ptr %h, i64 21376, !dbg !2262
  %11 = load ptr, ptr %arrayidx33, align 8, !dbg !2262
  %add.ptr34 = getelementptr inbounds i8, ptr %11, i64 -1, !dbg !2263
  tail call void %9(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %add.ptr34, i32 noundef %shl, i32 noundef 8) #6, !dbg !2258
  %12 = load ptr, ptr %arrayidx25, align 8, !dbg !2264
  %arrayidx41 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2265
  %13 = load ptr, ptr %arrayidx41, align 16, !dbg !2265
  %arrayidx45 = getelementptr inbounds i8, ptr %h, i64 21384, !dbg !2266
  %14 = load ptr, ptr %arrayidx45, align 8, !dbg !2266
  %add.ptr46 = getelementptr inbounds i8, ptr %14, i64 -1, !dbg !2267
  tail call void %12(ptr noundef %13, i32 noundef 32, ptr noundef nonnull %add.ptr46, i32 noundef %shl, i32 noundef 8) #6, !dbg !2264
  br label %if.end60, !dbg !2268

if.else47:                                        ; preds = %entry
  %predict_8x8c = getelementptr inbounds i8, ptr %h, i64 31304, !dbg !2269
  %idxprom = sext i32 %i_mode to i64, !dbg !2271
  %arrayidx48 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c, i64 0, i64 %idxprom, !dbg !2271
  %15 = load ptr, ptr %arrayidx48, align 8, !dbg !2271
  %arrayidx52 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2272
  %16 = load ptr, ptr %arrayidx52, align 8, !dbg !2272
  tail call void %15(ptr noundef %16) #6, !dbg !2271
  %17 = load ptr, ptr %arrayidx48, align 8, !dbg !2273
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2274
  %18 = load ptr, ptr %arrayidx59, align 16, !dbg !2274
  tail call void %17(ptr noundef %18) #6, !dbg !2273
  br label %if.end60

if.end60:                                         ; preds = %if.then22, %if.else47, %if.then
  ret void, !dbg !2275
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %h, ptr noundef %p_dst, i32 noundef %idx, i32 noundef %i_mode) local_unnamed_addr #0 !dbg !2276 {
entry:
    #dbg_value(ptr %h, !2280, !DIExpression(), !2286)
    #dbg_value(ptr %p_dst, !2281, !DIExpression(), !2286)
    #dbg_value(i32 %idx, !2282, !DIExpression(), !2286)
    #dbg_value(i32 %i_mode, !2283, !DIExpression(), !2286)
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2287
  %0 = load ptr, ptr %fenc, align 8, !dbg !2287
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104, !dbg !2288
  %1 = load i32, ptr %i_stride, align 8, !dbg !2289
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2290
  %2 = load i32, ptr %b_interlaced, align 4, !dbg !2290
  %shl = shl i32 %1, %2, !dbg !2291
    #dbg_value(i32 %shl, !2284, !DIExpression(), !2286)
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2292
  %3 = load ptr, ptr %p_fenc_plane, align 8, !dbg !2293
  %idxprom = sext i32 %idx to i64, !dbg !2294
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %idxprom, !dbg !2294
  %4 = load i8, ptr %arrayidx3, align 1, !dbg !2294
  %conv = zext i8 %4 to i64, !dbg !2294
  %mul = shl nuw nsw i64 %conv, 2, !dbg !2295
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul, !dbg !2296
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %idxprom, !dbg !2297
  %5 = load i8, ptr %arrayidx5, align 1, !dbg !2297
  %conv6 = zext i8 %5 to i32, !dbg !2297
  %mul7 = shl i32 %shl, 2, !dbg !2298
  %mul8 = mul i32 %mul7, %conv6, !dbg !2299
  %idx.ext9 = sext i32 %mul8 to i64, !dbg !2300
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext9, !dbg !2300
    #dbg_value(ptr %add.ptr10, !2285, !DIExpression(), !2286)
  switch i32 %i_mode, label %if.else22 [
    i32 0, label %if.then
    i32 1, label %if.then17
  ], !dbg !2301

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 32768, !dbg !2302
  %6 = load ptr, ptr %arrayidx12, align 8, !dbg !2302
  %idx.ext13 = sext i32 %shl to i64, !dbg !2304
  %idx.neg = sub nsw i64 0, %idx.ext13, !dbg !2304
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr10, i64 %idx.neg, !dbg !2304
  tail call void %6(ptr noundef %p_dst, i32 noundef 32, ptr noundef %add.ptr14, i32 noundef %shl, i32 noundef 4) #6, !dbg !2302
  br label %if.end25, !dbg !2302

if.then17:                                        ; preds = %entry
  %arrayidx20 = getelementptr inbounds i8, ptr %h, i64 32768, !dbg !2305
  %7 = load ptr, ptr %arrayidx20, align 8, !dbg !2305
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr10, i64 -1, !dbg !2307
  tail call void %7(ptr noundef %p_dst, i32 noundef 32, ptr noundef nonnull %add.ptr21, i32 noundef %shl, i32 noundef 4) #6, !dbg !2305
  br label %if.end25, !dbg !2305

if.else22:                                        ; preds = %entry
  %predict_4x4 = getelementptr inbounds i8, ptr %h, i64 31456, !dbg !2308
  %idxprom23 = sext i32 %i_mode to i64, !dbg !2309
  %arrayidx24 = getelementptr inbounds [12 x ptr], ptr %predict_4x4, i64 0, i64 %idxprom23, !dbg !2309
  %8 = load ptr, ptr %arrayidx24, align 8, !dbg !2309
  tail call void %8(ptr noundef %p_dst) #6, !dbg !2309
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.else22, %if.then
  ret void, !dbg !2310
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %h, ptr noundef %p_dst, i32 noundef %idx, i32 noundef %i_mode, ptr noundef %edge) local_unnamed_addr #0 !dbg !2311 {
entry:
    #dbg_value(ptr %h, !2315, !DIExpression(), !2322)
    #dbg_value(ptr %p_dst, !2316, !DIExpression(), !2322)
    #dbg_value(i32 %idx, !2317, !DIExpression(), !2322)
    #dbg_value(i32 %i_mode, !2318, !DIExpression(), !2322)
    #dbg_value(ptr %edge, !2319, !DIExpression(), !2322)
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2323
  %0 = load ptr, ptr %fenc, align 8, !dbg !2323
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104, !dbg !2324
  %1 = load i32, ptr %i_stride, align 8, !dbg !2325
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2326
  %2 = load i32, ptr %b_interlaced, align 4, !dbg !2326
  %shl = shl i32 %1, %2, !dbg !2327
    #dbg_value(i32 %shl, !2320, !DIExpression(), !2322)
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2328
  %3 = load ptr, ptr %p_fenc_plane, align 8, !dbg !2329
  %and = shl i32 %idx, 3, !dbg !2330
  %mul = and i32 %and, 8, !dbg !2330
  %idx.ext = zext nneg i32 %mul to i64, !dbg !2331
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext, !dbg !2331
  %4 = shl nsw i32 %idx, 2, !dbg !2332
  %mul3 = and i32 %4, -8, !dbg !2332
  %mul4 = mul nsw i32 %shl, %mul3, !dbg !2333
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !2334
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext5, !dbg !2334
    #dbg_value(ptr %add.ptr6, !2321, !DIExpression(), !2322)
  switch i32 %i_mode, label %if.else16 [
    i32 0, label %if.then
    i32 1, label %if.then11
  ], !dbg !2335

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2336
  %5 = load ptr, ptr %arrayidx7, align 8, !dbg !2336
  %idx.ext8 = sext i32 %shl to i64, !dbg !2338
  %idx.neg = sub nsw i64 0, %idx.ext8, !dbg !2338
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.neg, !dbg !2338
  tail call void %5(ptr noundef %p_dst, i32 noundef 32, ptr noundef %add.ptr9, i32 noundef %shl, i32 noundef 8) #6, !dbg !2336
  br label %if.end18, !dbg !2336

if.then11:                                        ; preds = %entry
  %arrayidx14 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2339
  %6 = load ptr, ptr %arrayidx14, align 8, !dbg !2339
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr6, i64 -1, !dbg !2341
  tail call void %6(ptr noundef %p_dst, i32 noundef 32, ptr noundef nonnull %add.ptr15, i32 noundef %shl, i32 noundef 8) #6, !dbg !2339
  br label %if.end18, !dbg !2339

if.else16:                                        ; preds = %entry
  %predict_8x8 = getelementptr inbounds i8, ptr %h, i64 31360, !dbg !2342
  %idxprom = sext i32 %i_mode to i64, !dbg !2343
  %arrayidx17 = getelementptr inbounds [12 x ptr], ptr %predict_8x8, i64 0, i64 %idxprom, !dbg !2343
  %7 = load ptr, ptr %arrayidx17, align 8, !dbg !2343
  tail call void %7(ptr noundef %p_dst, ptr noundef %edge) #6, !dbg !2343
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.else16, %if.then
  ret void, !dbg !2344
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %h, i32 noundef %i_mode) local_unnamed_addr #0 !dbg !2345 {
entry:
    #dbg_value(ptr %h, !2347, !DIExpression(), !2350)
    #dbg_value(i32 %i_mode, !2348, !DIExpression(), !2350)
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2351
  %0 = load ptr, ptr %fenc, align 8, !dbg !2351
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104, !dbg !2352
  %1 = load i32, ptr %i_stride, align 8, !dbg !2353
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2354
  %2 = load i32, ptr %b_interlaced, align 4, !dbg !2354
  %shl = shl i32 %1, %2, !dbg !2355
    #dbg_value(i32 %shl, !2349, !DIExpression(), !2350)
  switch i32 %i_mode, label %if.else19 [
    i32 0, label %if.then
    i32 1, label %if.then8
  ], !dbg !2356

if.then:                                          ; preds = %entry
  %copy = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !2357
  %3 = load ptr, ptr %copy, align 8, !dbg !2359
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2360
  %4 = load ptr, ptr %p_fdec, align 16, !dbg !2361
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2362
  %5 = load ptr, ptr %p_fenc_plane, align 8, !dbg !2363
  %idx.ext = sext i32 %shl to i64, !dbg !2364
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !2364
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.neg, !dbg !2364
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %add.ptr, i32 noundef %shl, i32 noundef 16) #6, !dbg !2359
  br label %if.end25, !dbg !2359

if.then8:                                         ; preds = %entry
  %copy_16x16_unaligned = getelementptr inbounds i8, ptr %h, i64 32776, !dbg !2365
  %6 = load ptr, ptr %copy_16x16_unaligned, align 8, !dbg !2365
  %p_fdec12 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2367
  %7 = load ptr, ptr %p_fdec12, align 16, !dbg !2368
  %p_fenc_plane16 = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2369
  %8 = load ptr, ptr %p_fenc_plane16, align 8, !dbg !2370
  %add.ptr18 = getelementptr inbounds i8, ptr %8, i64 -1, !dbg !2371
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %add.ptr18, i32 noundef %shl, i32 noundef 16) #6, !dbg !2372
  br label %if.end25, !dbg !2372

if.else19:                                        ; preds = %entry
  %predict_16x16 = getelementptr inbounds i8, ptr %h, i64 31248, !dbg !2373
  %idxprom = sext i32 %i_mode to i64, !dbg !2374
  %arrayidx20 = getelementptr inbounds [7 x ptr], ptr %predict_16x16, i64 0, i64 %idxprom, !dbg !2374
  %9 = load ptr, ptr %arrayidx20, align 8, !dbg !2374
  %p_fdec23 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2375
  %10 = load ptr, ptr %p_fdec23, align 16, !dbg !2376
  tail call void %9(ptr noundef %10) #6, !dbg !2374
  br label %if.end25

if.end25:                                         ; preds = %if.then8, %if.else19, %if.then
  ret void, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode(ptr noundef %h) local_unnamed_addr #0 !dbg !2378 {
entry:
  %dct4x4.i = alloca [16 x [16 x i16]], align 16, !DIAssignID !2462
    #dbg_assign(i1 undef, !2463, !DIExpression(), !2462, ptr %dct4x4.i, !DIExpression(), !2488)
  %dct_dc4x4.i = alloca [16 x i16], align 16, !DIAssignID !2490
  %edge = alloca [33 x i8], align 16, !DIAssignID !2491
    #dbg_assign(i1 undef, !2390, !DIExpression(), !2491, ptr %edge, !DIExpression(), !2492)
  %dct8x8 = alloca [4 x [64 x i16]], align 16, !DIAssignID !2493
    #dbg_assign(i1 undef, !2423, !DIExpression(), !2493, ptr %dct8x8, !DIExpression(), !2494)
  %dct4x4 = alloca [16 x [16 x i16]], align 16, !DIAssignID !2495
    #dbg_assign(i1 undef, !2439, !DIExpression(), !2495, ptr %dct4x4, !DIExpression(), !2496)
    #dbg_value(ptr %h, !2382, !DIExpression(), !2497)
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !2498
  %0 = load i32, ptr %i_qp1, align 16, !dbg !2498
    #dbg_value(i32 %0, !2383, !DIExpression(), !2497)
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424, !dbg !2499
  %1 = load i32, ptr %b_dct_decimate, align 8, !dbg !2499
    #dbg_value(i32 %1, !2384, !DIExpression(), !2497)
    #dbg_value(i32 0, !2385, !DIExpression(), !2497)
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !2500
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !2501
  %cache = getelementptr inbounds i8, ptr %h, i64 25024, !dbg !2502
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !2503
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 25116, !dbg !2504
  store i8 0, ptr %arrayidx, align 1, !dbg !2505
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384, !dbg !2506
  %2 = load i32, ptr %i_type, align 8, !dbg !2506
  %cmp = icmp eq i32 %2, 3, !dbg !2508
  br i1 %cmp, label %if.then, label %if.end, !dbg !2509

if.then:                                          ; preds = %entry
  %copy = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !2510
  %3 = load ptr, ptr %copy, align 8, !dbg !2512
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2513
  %4 = load ptr, ptr %p_fdec, align 16, !dbg !2514
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !2515
  %5 = load ptr, ptr %p_fenc, align 16, !dbg !2516
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %5, i32 noundef 16, i32 noundef 16) #6, !dbg !2512
  %arrayidx14 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2517
  %6 = load ptr, ptr %arrayidx14, align 8, !dbg !2517
  %arrayidx18 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2518
  %7 = load ptr, ptr %arrayidx18, align 8, !dbg !2518
  %arrayidx22 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !2519
  %8 = load ptr, ptr %arrayidx22, align 8, !dbg !2519
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef %8, i32 noundef 16, i32 noundef 8) #6, !dbg !2517
  %9 = load ptr, ptr %arrayidx14, align 8, !dbg !2520
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2521
  %10 = load ptr, ptr %arrayidx29, align 16, !dbg !2521
  %arrayidx33 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !2522
  %11 = load ptr, ptr %arrayidx33, align 16, !dbg !2522
  tail call void %9(ptr noundef %10, i32 noundef 32, ptr noundef %11, i32 noundef 16, i32 noundef 8) #6, !dbg !2520
  br label %cleanup, !dbg !2523

if.end:                                           ; preds = %entry
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !2524
  %12 = load i32, ptr %b_mbaff, align 4, !dbg !2524
  %tobool.not = icmp eq i32 %12, 0, !dbg !2526
  br i1 %tobool.not, label %if.end83, label %land.lhs.true, !dbg !2527

land.lhs.true:                                    ; preds = %if.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2528
  %13 = load i32, ptr %i_mb_xy, align 8, !dbg !2528
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !2529
  %14 = load i32, ptr %i_first_mb, align 4, !dbg !2529
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !2530
  %15 = load i32, ptr %i_mb_stride, align 4, !dbg !2530
  %add = add nsw i32 %15, %14, !dbg !2531
  %cmp37 = icmp eq i32 %13, %add, !dbg !2532
  br i1 %cmp37, label %land.lhs.true38, label %if.end83, !dbg !2533

land.lhs.true38:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !2534
  %16 = load ptr, ptr %type, align 8, !dbg !2534
  %idxprom42 = sext i32 %14 to i64, !dbg !2534
  %arrayidx43 = getelementptr inbounds i8, ptr %16, i64 %idxprom42, !dbg !2534
  %17 = load i8, ptr %arrayidx43, align 1, !dbg !2534
  switch i8 %17, label %if.end83 [
    i8 6, label %if.then55
    i8 18, label %if.then55
  ], !dbg !2534

if.then55:                                        ; preds = %land.lhs.true38, %land.lhs.true38
    #dbg_value(i32 1, !2385, !DIExpression(), !2497)
  switch i32 %2, label %if.end83 [
    i32 6, label %if.else356.sink.split
    i32 18, label %if.then77
  ], !dbg !2535

if.then77:                                        ; preds = %if.then55
  br label %if.else356.sink.split, !dbg !2538

if.end83:                                         ; preds = %if.then55, %land.lhs.true38, %land.lhs.true, %if.end
  %tobool984.not.ph = phi i1 [ false, %if.then55 ], [ true, %land.lhs.true38 ], [ true, %if.end ], [ true, %land.lhs.true ]
    #dbg_value(i32 poison, !2385, !DIExpression(), !2497)
  switch i32 %2, label %if.else356 [
    i32 6, label %if.then88
    i32 18, label %if.then94
    i32 2, label %if.then104
    i32 1, label %if.then123
    i32 0, label %if.then234
  ], !dbg !2542

if.then88:                                        ; preds = %if.end83
    #dbg_value(ptr %h, !2543, !DIExpression(), !2550)
  %b_skip_mc.i = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !2554
  %18 = load i32, ptr %b_skip_mc.i, align 4, !dbg !2554
  %tobool.not.i = icmp eq i32 %18, 0, !dbg !2555
  br i1 %tobool.not.i, label %if.then.i, label %x264_macroblock_encode_pskip.exit, !dbg !2556

if.then.i:                                        ; preds = %if.then88
  %arrayidx2.i = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !2557
  %mv_min.i = getelementptr inbounds i8, ptr %h, i64 16440, !dbg !2558
  %mv_max.i = getelementptr inbounds i8, ptr %h, i64 16448, !dbg !2559
    #dbg_value(i16 poison, !2560, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2567)
    #dbg_value(i32 poison, !2565, !DIExpression(), !2567)
    #dbg_value(i32 poison, !2566, !DIExpression(), !2567)
    #dbg_value(i32 poison, !2546, !DIExpression(), !2569)
  %19 = load <2 x i16>, ptr %arrayidx2.i, align 4, !dbg !2557
  %20 = load <2 x i32>, ptr %mv_min.i, align 8, !dbg !2570
  %21 = load <2 x i32>, ptr %mv_max.i, align 16, !dbg !2571
    #dbg_value(i16 poison, !2560, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2572)
    #dbg_value(i32 poison, !2565, !DIExpression(), !2572)
    #dbg_value(i32 poison, !2566, !DIExpression(), !2572)
  %22 = sext <2 x i16> %19 to <2 x i32>, !dbg !2574
  %23 = icmp sgt <2 x i32> %20, %22, !dbg !2574
  %24 = sext <2 x i16> %19 to <2 x i32>, !dbg !2575
  %25 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %24, <2 x i32> %21), !dbg !2575
  %26 = select <2 x i1> %23, <2 x i32> %20, <2 x i32> %25, !dbg !2575
    #dbg_value(i32 poison, !2549, !DIExpression(), !2569)
  %mc.i = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !2576
  %27 = load ptr, ptr %mc.i, align 8, !dbg !2577
  %p_fdec.i = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2578
  %28 = load ptr, ptr %p_fdec.i, align 16, !dbg !2579
  %p_fref.i = getelementptr inbounds i8, ptr %h, i64 21424, !dbg !2580
  %i_stride.i = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !2581
  %29 = load i32, ptr %i_stride.i, align 16, !dbg !2582
  %weight.i = getelementptr inbounds i8, ptr %h, i64 7584, !dbg !2583
  %30 = extractelement <2 x i32> %26, i64 0, !dbg !2584
  %31 = extractelement <2 x i32> %26, i64 1, !dbg !2584
  tail call void %27(ptr noundef %28, i32 noundef 32, ptr noundef nonnull %p_fref.i, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %weight.i) #6, !dbg !2586
  %or.i = or i32 %31, %30, !dbg !2584
  %tobool34.not.i = icmp eq i32 %or.i, 0, !dbg !2584
  %arrayidx72.i = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2587
  %32 = load ptr, ptr %arrayidx72.i, align 8, !dbg !2587
  %arrayidx78.i = getelementptr inbounds i8, ptr %h, i64 21456, !dbg !2587
  %33 = load ptr, ptr %arrayidx78.i, align 16, !dbg !2587
  %arrayidx82.i = getelementptr inbounds i8, ptr %h, i64 25012, !dbg !2587
  %34 = load i32, ptr %arrayidx82.i, align 4, !dbg !2587
  %arrayidx89.i = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2587
  %arrayidx95.i = getelementptr inbounds i8, ptr %h, i64 21464, !dbg !2587
  %arrayidx99.i = getelementptr inbounds i8, ptr %h, i64 25016, !dbg !2587
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i, !dbg !2588

if.then35.i:                                      ; preds = %if.then.i
  %mc_chroma.i = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !2589
  %35 = load ptr, ptr %mc_chroma.i, align 8, !dbg !2589
  tail call void %35(ptr noundef %32, i32 noundef 32, ptr noundef %33, i32 noundef %34, i32 noundef %30, i32 noundef %31, i32 noundef 8, i32 noundef 8) #6, !dbg !2591
  %36 = load ptr, ptr %mc_chroma.i, align 8, !dbg !2592
  %37 = load ptr, ptr %arrayidx89.i, align 16, !dbg !2593
  %38 = load ptr, ptr %arrayidx95.i, align 8, !dbg !2594
  %39 = load i32, ptr %arrayidx99.i, align 8, !dbg !2595
  tail call void %36(ptr noundef %37, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef %30, i32 noundef %31, i32 noundef 8, i32 noundef 8) #6, !dbg !2596
  br label %if.end.i, !dbg !2597

if.else.i:                                        ; preds = %if.then.i
  %arrayidx68.i = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !2598
  %40 = load ptr, ptr %arrayidx68.i, align 8, !dbg !2598
  tail call void %40(ptr noundef %32, i32 noundef 32, ptr noundef %33, i32 noundef %34, i32 noundef 8) #6, !dbg !2598
  %41 = load ptr, ptr %arrayidx68.i, align 8, !dbg !2600
  %42 = load ptr, ptr %arrayidx89.i, align 16, !dbg !2601
  %43 = load ptr, ptr %arrayidx95.i, align 8, !dbg !2602
  %44 = load i32, ptr %arrayidx99.i, align 8, !dbg !2603
  tail call void %41(ptr noundef %42, i32 noundef 32, ptr noundef %43, i32 noundef %44, i32 noundef 8) #6, !dbg !2600
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then35.i
  %weightfn.i = getelementptr inbounds i8, ptr %h, i64 7696, !dbg !2604
  %45 = load ptr, ptr %weightfn.i, align 16, !dbg !2604
  %tobool104.not.i = icmp eq ptr %45, null, !dbg !2606
  br i1 %tobool104.not.i, label %if.end124.i, label %if.then105.i, !dbg !2607

if.then105.i:                                     ; preds = %if.end.i
  %arrayidx103.i = getelementptr inbounds i8, ptr %h, i64 7648, !dbg !2606
  %arrayidx111.i = getelementptr inbounds i8, ptr %45, i64 16, !dbg !2608
  %46 = load ptr, ptr %arrayidx111.i, align 8, !dbg !2608
  %47 = load ptr, ptr %arrayidx72.i, align 8, !dbg !2609
  tail call void %46(ptr noundef %47, i32 noundef 32, ptr noundef %47, i32 noundef 32, ptr noundef nonnull %arrayidx103.i, i32 noundef 8) #6, !dbg !2608
  br label %if.end124.i, !dbg !2608

if.end124.i:                                      ; preds = %if.then105.i, %if.end.i
  %weightfn129.i = getelementptr inbounds i8, ptr %h, i64 7760, !dbg !2610
  %48 = load ptr, ptr %weightfn129.i, align 16, !dbg !2610
  %tobool130.not.i = icmp eq ptr %48, null, !dbg !2612
  br i1 %tobool130.not.i, label %x264_macroblock_encode_pskip.exit, label %if.then131.i, !dbg !2613

if.then131.i:                                     ; preds = %if.end124.i
  %arrayidx128.i = getelementptr inbounds i8, ptr %h, i64 7712, !dbg !2612
  %arrayidx137.i = getelementptr inbounds i8, ptr %48, i64 16, !dbg !2614
  %49 = load ptr, ptr %arrayidx137.i, align 8, !dbg !2614
  %50 = load ptr, ptr %arrayidx89.i, align 16, !dbg !2615
  tail call void %49(ptr noundef %50, i32 noundef 32, ptr noundef %50, i32 noundef 32, ptr noundef nonnull %arrayidx128.i, i32 noundef 8) #6, !dbg !2614
  br label %x264_macroblock_encode_pskip.exit, !dbg !2614

x264_macroblock_encode_pskip.exit:                ; preds = %if.then88, %if.end124.i, %if.then131.i
    #dbg_value(ptr %h, !2616, !DIExpression(), !2621)
  %arrayidx.i.i = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !2623
  store i32 0, ptr %arrayidx.i.i, align 1, !dbg !2624
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !2625
  store i32 0, ptr %arrayidx6.i.i, align 1, !dbg !2626
  %arrayidx12.i.i = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !2627
  store i32 0, ptr %arrayidx12.i.i, align 1, !dbg !2628
  %arrayidx18.i.i = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !2629
  store i32 0, ptr %arrayidx18.i.i, align 1, !dbg !2630
    #dbg_value(i64 16, !2619, !DIExpression(), !2631)
  %arrayidx25.i.i = getelementptr inbounds i8, ptr %h, i64 25081, !dbg !2632
  store i8 0, ptr %arrayidx25.i.i, align 1, !dbg !2634
    #dbg_value(i64 17, !2619, !DIExpression(), !2631)
  %arrayidx25.1.i.i = getelementptr inbounds i8, ptr %h, i64 25082, !dbg !2632
  store i8 0, ptr %arrayidx25.1.i.i, align 1, !dbg !2634
    #dbg_value(i64 18, !2619, !DIExpression(), !2631)
  %arrayidx25.2.i.i = getelementptr inbounds i8, ptr %h, i64 25089, !dbg !2632
  store i8 0, ptr %arrayidx25.2.i.i, align 1, !dbg !2634
    #dbg_value(i64 19, !2619, !DIExpression(), !2631)
  %arrayidx25.3.i.i = getelementptr inbounds i8, ptr %h, i64 25090, !dbg !2632
  store i8 0, ptr %arrayidx25.3.i.i, align 1, !dbg !2634
    #dbg_value(i64 20, !2619, !DIExpression(), !2631)
  %arrayidx25.4.i.i = getelementptr inbounds i8, ptr %h, i64 25105, !dbg !2632
  store i8 0, ptr %arrayidx25.4.i.i, align 1, !dbg !2634
    #dbg_value(i64 21, !2619, !DIExpression(), !2631)
  %arrayidx25.5.i.i = getelementptr inbounds i8, ptr %h, i64 25106, !dbg !2632
  store i8 0, ptr %arrayidx25.5.i.i, align 1, !dbg !2634
    #dbg_value(i64 22, !2619, !DIExpression(), !2631)
  %arrayidx25.6.i.i = getelementptr inbounds i8, ptr %h, i64 25113, !dbg !2632
  store i8 0, ptr %arrayidx25.6.i.i, align 1, !dbg !2634
    #dbg_value(i64 23, !2619, !DIExpression(), !2631)
  %arrayidx25.7.i.i = getelementptr inbounds i8, ptr %h, i64 25114, !dbg !2632
  store i8 0, ptr %arrayidx25.7.i.i, align 1, !dbg !2634
    #dbg_value(i64 24, !2619, !DIExpression(), !2631)
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !2635
  %i_cbp_chroma.i.i = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2636
  store i32 0, ptr %i_cbp_chroma.i.i, align 4, !dbg !2637
  %cbp.i.i = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !2638
  %51 = load ptr, ptr %cbp.i.i, align 16, !dbg !2638
  %i_mb_xy.i.i = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2639
  %52 = load i32, ptr %i_mb_xy.i.i, align 8, !dbg !2639
  %idxprom30.i.i = sext i32 %52 to i64, !dbg !2640
  %arrayidx31.i.i = getelementptr inbounds i16, ptr %51, i64 %idxprom30.i.i, !dbg !2640
  store i16 0, ptr %arrayidx31.i.i, align 2, !dbg !2641
  br label %cleanup, !dbg !2642

if.then94:                                        ; preds = %if.end83
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !2643
  %53 = load i32, ptr %b_skip_mc, align 4, !dbg !2643
  %tobool96.not = icmp eq i32 %53, 0, !dbg !2647
  br i1 %tobool96.not, label %if.then97, label %if.end98, !dbg !2648

if.then97:                                        ; preds = %if.then94
  tail call void @x264_mb_mc(ptr noundef nonnull %h) #6, !dbg !2649
  br label %if.end98, !dbg !2649

if.end98:                                         ; preds = %if.then97, %if.then94
    #dbg_value(ptr %h, !2616, !DIExpression(), !2650)
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !2652
  store i32 0, ptr %arrayidx.i, align 1, !dbg !2653
  %arrayidx6.i = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !2654
  store i32 0, ptr %arrayidx6.i, align 1, !dbg !2655
  %arrayidx12.i = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !2656
  store i32 0, ptr %arrayidx12.i, align 1, !dbg !2657
  %arrayidx18.i1373 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !2658
  store i32 0, ptr %arrayidx18.i1373, align 1, !dbg !2659
    #dbg_value(i64 16, !2619, !DIExpression(), !2660)
  %arrayidx25.i = getelementptr inbounds i8, ptr %h, i64 25081, !dbg !2661
  store i8 0, ptr %arrayidx25.i, align 1, !dbg !2662
    #dbg_value(i64 17, !2619, !DIExpression(), !2660)
  %arrayidx25.1.i = getelementptr inbounds i8, ptr %h, i64 25082, !dbg !2661
  store i8 0, ptr %arrayidx25.1.i, align 1, !dbg !2662
    #dbg_value(i64 18, !2619, !DIExpression(), !2660)
  %arrayidx25.2.i = getelementptr inbounds i8, ptr %h, i64 25089, !dbg !2661
  store i8 0, ptr %arrayidx25.2.i, align 1, !dbg !2662
    #dbg_value(i64 19, !2619, !DIExpression(), !2660)
  %arrayidx25.3.i = getelementptr inbounds i8, ptr %h, i64 25090, !dbg !2661
  store i8 0, ptr %arrayidx25.3.i, align 1, !dbg !2662
    #dbg_value(i64 20, !2619, !DIExpression(), !2660)
  %arrayidx25.4.i = getelementptr inbounds i8, ptr %h, i64 25105, !dbg !2661
  store i8 0, ptr %arrayidx25.4.i, align 1, !dbg !2662
    #dbg_value(i64 21, !2619, !DIExpression(), !2660)
  %arrayidx25.5.i = getelementptr inbounds i8, ptr %h, i64 25106, !dbg !2661
  store i8 0, ptr %arrayidx25.5.i, align 1, !dbg !2662
    #dbg_value(i64 22, !2619, !DIExpression(), !2660)
  %arrayidx25.6.i = getelementptr inbounds i8, ptr %h, i64 25113, !dbg !2661
  store i8 0, ptr %arrayidx25.6.i, align 1, !dbg !2662
    #dbg_value(i64 23, !2619, !DIExpression(), !2660)
  %arrayidx25.7.i = getelementptr inbounds i8, ptr %h, i64 25114, !dbg !2661
  store i8 0, ptr %arrayidx25.7.i, align 1, !dbg !2662
    #dbg_value(i64 24, !2619, !DIExpression(), !2660)
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !2663
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !2664
  store i32 0, ptr %i_cbp_chroma.i, align 4, !dbg !2665
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !2666
  %54 = load ptr, ptr %cbp.i, align 16, !dbg !2666
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2667
  %55 = load i32, ptr %i_mb_xy.i, align 8, !dbg !2667
  %idxprom30.i = sext i32 %55 to i64, !dbg !2668
  %arrayidx31.i = getelementptr inbounds i16, ptr %54, i64 %idxprom30.i, !dbg !2668
  store i16 0, ptr %arrayidx31.i, align 2, !dbg !2669
  br label %cleanup, !dbg !2670

if.then104:                                       ; preds = %if.end83
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408, !dbg !2671
  %56 = load i32, ptr %i_intra16x16_pred_mode, align 16, !dbg !2671
    #dbg_value(i32 %56, !2387, !DIExpression(), !2672)
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !2673
  store i32 0, ptr %b_transform_8x8, align 4, !dbg !2674
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !2675
  %57 = load i32, ptr %b_lossless, align 4, !dbg !2675
  %tobool108.not = icmp eq i32 %57, 0, !dbg !2677
  br i1 %tobool108.not, label %if.else110, label %if.then109, !dbg !2678

if.then109:                                       ; preds = %if.then104
    #dbg_value(ptr %h, !2347, !DIExpression(), !2679)
    #dbg_value(i32 %56, !2348, !DIExpression(), !2679)
  %fenc.i = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2681
  %58 = load ptr, ptr %fenc.i, align 8, !dbg !2681
  %i_stride.i1374 = getelementptr inbounds i8, ptr %58, i64 104, !dbg !2682
  %59 = load i32, ptr %i_stride.i1374, align 8, !dbg !2683
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2684
  %60 = load i32, ptr %b_interlaced.i, align 4, !dbg !2684
  %shl.i = shl i32 %59, %60, !dbg !2685
    #dbg_value(i32 %shl.i, !2349, !DIExpression(), !2679)
  switch i32 %56, label %if.else19.i [
    i32 0, label %if.then.i1375
    i32 1, label %if.then8.i
  ], !dbg !2686

if.then.i1375:                                    ; preds = %if.then109
  %copy.i = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !2687
  %61 = load ptr, ptr %copy.i, align 8, !dbg !2688
  %p_fdec.i1376 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2689
  %62 = load ptr, ptr %p_fdec.i1376, align 16, !dbg !2690
  %p_fenc_plane.i = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2691
  %63 = load ptr, ptr %p_fenc_plane.i, align 8, !dbg !2692
  %idx.ext.i = sext i32 %shl.i to i64, !dbg !2693
  %idx.neg.i = sub nsw i64 0, %idx.ext.i, !dbg !2693
  %add.ptr.i = getelementptr inbounds i8, ptr %63, i64 %idx.neg.i, !dbg !2693
  tail call void %61(ptr noundef %62, i32 noundef 32, ptr noundef %add.ptr.i, i32 noundef %shl.i, i32 noundef 16) #6, !dbg !2688
  br label %if.end117, !dbg !2688

if.then8.i:                                       ; preds = %if.then109
  %copy_16x16_unaligned.i = getelementptr inbounds i8, ptr %h, i64 32776, !dbg !2694
  %64 = load ptr, ptr %copy_16x16_unaligned.i, align 8, !dbg !2694
  %p_fdec12.i = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2695
  %65 = load ptr, ptr %p_fdec12.i, align 16, !dbg !2696
  %p_fenc_plane16.i = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !2697
  %66 = load ptr, ptr %p_fenc_plane16.i, align 8, !dbg !2698
  %add.ptr18.i = getelementptr inbounds i8, ptr %66, i64 -1, !dbg !2699
  tail call void %64(ptr noundef %65, i32 noundef 32, ptr noundef nonnull %add.ptr18.i, i32 noundef %shl.i, i32 noundef 16) #6, !dbg !2700
  br label %if.end117, !dbg !2700

if.else19.i:                                      ; preds = %if.then109
  %predict_16x16.i = getelementptr inbounds i8, ptr %h, i64 31248, !dbg !2701
  %idxprom.i = sext i32 %56 to i64, !dbg !2702
  %arrayidx20.i = getelementptr inbounds [7 x ptr], ptr %predict_16x16.i, i64 0, i64 %idxprom.i, !dbg !2702
  %67 = load ptr, ptr %arrayidx20.i, align 8, !dbg !2702
  %p_fdec23.i = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2703
  %68 = load ptr, ptr %p_fdec23.i, align 16, !dbg !2704
  tail call void %67(ptr noundef %68) #6, !dbg !2702
  br label %if.end117

if.else110:                                       ; preds = %if.then104
  %predict_16x16 = getelementptr inbounds i8, ptr %h, i64 31248, !dbg !2705
  %idxprom111 = sext i32 %56 to i64, !dbg !2706
  %arrayidx112 = getelementptr inbounds [7 x ptr], ptr %predict_16x16, i64 0, i64 %idxprom111, !dbg !2706
  %69 = load ptr, ptr %arrayidx112, align 8, !dbg !2706
  %p_fdec115 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2707
  %70 = load ptr, ptr %p_fdec115, align 16, !dbg !2708
  tail call void %69(ptr noundef %70) #6, !dbg !2706
  br label %if.end117

if.end117:                                        ; preds = %if.else19.i, %if.then8.i, %if.then.i1375, %if.else110
    #dbg_assign(i1 undef, !2470, !DIExpression(), !2490, ptr %dct_dc4x4.i, !DIExpression(), !2488)
    #dbg_value(ptr %h, !2466, !DIExpression(), !2488)
    #dbg_value(i32 %0, !2467, !DIExpression(), !2488)
  %p_fenc.i = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !2709
  %71 = load ptr, ptr %p_fenc.i, align 16, !dbg !2710
    #dbg_value(ptr %71, !2468, !DIExpression(), !2488)
  %p_fdec.i1377 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2711
  %72 = load ptr, ptr %p_fdec.i1377, align 16, !dbg !2712
    #dbg_value(ptr %72, !2469, !DIExpression(), !2488)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct4x4.i) #6, !dbg !2713
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct_dc4x4.i) #6, !dbg !2714
    #dbg_value(i32 poison, !2472, !DIExpression(), !2488)
  %73 = load i32, ptr %b_lossless, align 4, !dbg !2715
  %tobool6.not.i = icmp eq i32 %73, 0, !dbg !2716
  br i1 %tobool6.not.i, label %if.end.i1384, label %for.cond.preheader.i, !dbg !2717

for.cond.preheader.i:                             ; preds = %if.end117
  %sub_4x4ac.i = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4.i = getelementptr inbounds i8, ptr %h, i64 15600
    #dbg_value(i32 0, !2473, !DIExpression(), !2718)
  br label %for.body.i, !dbg !2719

for.cond.cleanup.i:                               ; preds = %for.body.i
  %mul.i = mul nsw i32 %or.i1383, 15, !dbg !2720
  store i32 %mul.i, ptr %i_cbp_luma, align 8, !dbg !2720
    #dbg_value(ptr %dct_dc4x4.i, !1893, !DIExpression(), !2721)
    #dbg_value(i32 32, !1898, !DIExpression(), !2721)
  %74 = load <4 x i64>, ptr %dct_dc4x4.i, align 16, !dbg !2723
  %75 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %74), !dbg !2724
  %tobool21.i.i = icmp ne i64 %75, 0, !dbg !2725
  %conv30.i = zext i1 %tobool21.i.i to i8, !dbg !2726
  store i8 %conv30.i, ptr %arrayidx, align 1, !dbg !2727
  %scan_4x4.i = getelementptr inbounds i8, ptr %h, i64 33040, !dbg !2728
  %76 = load ptr, ptr %scan_4x4.i, align 8, !dbg !2728
  %dct37.i = getelementptr inbounds i8, ptr %h, i64 15040, !dbg !2729
  call void %76(ptr noundef nonnull %dct37.i, ptr noundef nonnull %dct_dc4x4.i) #6, !dbg !2730
  br label %x264_mb_encode_i16x16.exit, !dbg !2731

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
    #dbg_value(i64 %indvars.iv.i, !2473, !DIExpression(), !2718)
  %arrayidx7.i = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.i, !dbg !2732
  %77 = load i8, ptr %arrayidx7.i, align 1, !dbg !2732
    #dbg_value(i8 %77, !2477, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2733)
  %arrayidx9.i = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.i, !dbg !2734
  %78 = load i16, ptr %arrayidx9.i, align 2, !dbg !2734
    #dbg_value(i16 %78, !2480, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2733)
  %79 = load ptr, ptr %sub_4x4ac.i, align 8, !dbg !2735
  %arrayidx12.i1379 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4.i, i64 0, i64 %indvars.iv.i, !dbg !2736
  %idx.ext.i1380 = zext i8 %77 to i64, !dbg !2737
  %add.ptr.i1381 = getelementptr inbounds i8, ptr %71, i64 %idx.ext.i1380, !dbg !2737
  %idx.ext13.i = zext i16 %78 to i64, !dbg !2738
  %add.ptr14.i = getelementptr inbounds i8, ptr %72, i64 %idx.ext13.i, !dbg !2738
  %arrayidx16.i = getelementptr inbounds [16 x i8], ptr @block_idx_yx_1d, i64 0, i64 %indvars.iv.i, !dbg !2739
  %80 = load i8, ptr %arrayidx16.i, align 1, !dbg !2739
  %idxprom17.i = zext i8 %80 to i64, !dbg !2740
  %arrayidx18.i1382 = getelementptr inbounds [16 x i16], ptr %dct_dc4x4.i, i64 0, i64 %idxprom17.i, !dbg !2740
  %call.i = call i32 %79(ptr noundef nonnull %arrayidx12.i1379, ptr noundef %add.ptr.i1381, ptr noundef %add.ptr14.i, ptr noundef nonnull %arrayidx18.i1382) #6, !dbg !2741
    #dbg_value(i32 %call.i, !2471, !DIExpression(), !2488)
  %conv19.i = trunc i32 %call.i to i8, !dbg !2742
  %arrayidx22.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.i, !dbg !2743
  %81 = load i32, ptr %arrayidx22.i, align 4, !dbg !2743
  %idxprom23.i = sext i32 %81 to i64, !dbg !2744
  %arrayidx24.i = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom23.i, !dbg !2744
  store i8 %conv19.i, ptr %arrayidx24.i, align 1, !dbg !2745
  %82 = load i32, ptr %i_cbp_luma, align 8, !dbg !2746
  %or.i1383 = or i32 %82, %call.i, !dbg !2746
  store i32 %or.i1383, ptr %i_cbp_luma, align 8, !dbg !2746
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2747
    #dbg_value(i64 %indvars.iv.next.i, !2473, !DIExpression(), !2718)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16, !dbg !2748
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !2719, !llvm.loop !2749

if.end.i1384:                                     ; preds = %if.end117
  %83 = load i32, ptr %b_dct_decimate, align 8, !dbg !2751
  %tobool.not.i1385 = icmp eq i32 %83, 0, !dbg !2752
  %cond.i = select i1 %tobool.not.i1385, i32 9, i32 0, !dbg !2752
    #dbg_value(i32 %cond.i, !2472, !DIExpression(), !2488)
  %sub16x16_dct.i = getelementptr inbounds i8, ptr %h, i64 32960, !dbg !2753
  %84 = load ptr, ptr %sub16x16_dct.i, align 16, !dbg !2753
  call void %84(ptr noundef nonnull %dct4x4.i, ptr noundef %71, ptr noundef %72) #6, !dbg !2754
    #dbg_value(i32 0, !2481, !DIExpression(), !2755)
  %b_trellis.i.i = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4.i.i = getelementptr inbounds i8, ptr %h, i64 33088
  %quant4_mf.i.i = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom2.i.i = sext i32 %0 to i64
  %quant4_bias.i.i = getelementptr inbounds i8, ptr %h, i64 3488
  %scan_4x472.i = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x474.i = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33120
  %dequant4_mf.i = getelementptr inbounds i8, ptr %h, i64 3344
  %decimate_score15.i = getelementptr inbounds i8, ptr %h, i64 33144
  br label %for.body46.i, !dbg !2756

for.cond.cleanup45.i:                             ; preds = %for.inc99.i
  %cmp102.i = icmp slt i32 %decimate_score.2.i, 6, !dbg !2757
  br i1 %cmp102.i, label %if.then104.i, label %if.end127.i, !dbg !2759

for.body46.i:                                     ; preds = %for.inc99.i, %if.end.i1384
  %indvars.iv299.i = phi i64 [ 0, %if.end.i1384 ], [ %indvars.iv.next300.i, %for.inc99.i ]
  %decimate_score.0295.i = phi i32 [ %cond.i, %if.end.i1384 ], [ %decimate_score.2.i, %for.inc99.i ]
    #dbg_value(i64 %indvars.iv299.i, !2481, !DIExpression(), !2755)
    #dbg_value(i32 %decimate_score.0295.i, !2472, !DIExpression(), !2488)
  %arrayidx48.i = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4.i, i64 0, i64 %indvars.iv299.i, !dbg !2760
  %85 = load i16, ptr %arrayidx48.i, align 16, !dbg !2760
  %arrayidx51.i = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %indvars.iv299.i, !dbg !2763
  %86 = load i8, ptr %arrayidx51.i, align 1, !dbg !2763
  %idxprom52.i = zext i8 %86 to i64, !dbg !2764
  %arrayidx53.i = getelementptr inbounds [16 x i16], ptr %dct_dc4x4.i, i64 0, i64 %idxprom52.i, !dbg !2764
  store i16 %85, ptr %arrayidx53.i, align 2, !dbg !2765
  store i16 0, ptr %arrayidx48.i, align 16, !dbg !2766
    #dbg_value(ptr %h, !1552, !DIExpression(), !2767)
    #dbg_value(ptr %arrayidx48.i, !1557, !DIExpression(), !2767)
    #dbg_value(i32 %0, !1558, !DIExpression(), !2767)
    #dbg_value(i32 1, !1559, !DIExpression(), !2767)
    #dbg_value(i32 1, !1560, !DIExpression(), !2767)
    #dbg_value(i64 %indvars.iv299.i, !1561, !DIExpression(), !2767)
    #dbg_value(i1 false, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2767)
  %87 = load i32, ptr %b_trellis.i.i, align 16, !dbg !2769
  %tobool1.not.i.i = icmp eq i32 %87, 0, !dbg !2770
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !2771

if.then.i.i:                                      ; preds = %for.body46.i
    #dbg_value(i32 0, !1562, !DIExpression(), !2767)
  %88 = trunc nuw nsw i64 %indvars.iv299.i to i32, !dbg !2772
  %call.i.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx48.i, i32 noundef 0, i32 noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %88) #6, !dbg !2772
  br label %x264_quant_4x4.exit.i, !dbg !2773

if.else.i.i:                                      ; preds = %for.body46.i
  %89 = load ptr, ptr %quant_4x4.i.i, align 8, !dbg !2774
  %90 = load ptr, ptr %quant4_mf.i.i, align 8, !dbg !2775
  %arrayidx3.i.i = getelementptr inbounds [16 x i16], ptr %90, i64 %idxprom2.i.i, !dbg !2775
  %91 = load ptr, ptr %quant4_bias.i.i, align 8, !dbg !2776
  %arrayidx7.i.i = getelementptr inbounds [16 x i16], ptr %91, i64 %idxprom2.i.i, !dbg !2776
  %call9.i.i = call i32 %89(ptr noundef nonnull %arrayidx48.i, ptr noundef %arrayidx3.i.i, ptr noundef %arrayidx7.i.i) #6, !dbg !2777
  br label %x264_quant_4x4.exit.i, !dbg !2778

x264_quant_4x4.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call9.i.i, %if.else.i.i ], !dbg !2779
    #dbg_value(i32 %retval.0.i.i, !2471, !DIExpression(), !2488)
  %conv61.i = trunc i32 %retval.0.i.i to i8, !dbg !2780
  %arrayidx66.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv299.i, !dbg !2781
  %92 = load i32, ptr %arrayidx66.i, align 4, !dbg !2781
  %idxprom67.i = sext i32 %92 to i64, !dbg !2782
  %arrayidx68.i1386 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom67.i, !dbg !2782
  store i8 %conv61.i, ptr %arrayidx68.i1386, align 1, !dbg !2783
  %tobool69.not.i = icmp eq i32 %retval.0.i.i, 0, !dbg !2784
  br i1 %tobool69.not.i, label %for.inc99.i, label %if.then70.i, !dbg !2786

if.then70.i:                                      ; preds = %x264_quant_4x4.exit.i
  %93 = load ptr, ptr %scan_4x472.i, align 8, !dbg !2787
  %arrayidx76.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x474.i, i64 0, i64 %indvars.iv299.i, !dbg !2789
  call void %93(ptr noundef nonnull %arrayidx76.i, ptr noundef nonnull %arrayidx48.i) #6, !dbg !2790
  %94 = load ptr, ptr %dequant_4x4.i, align 8, !dbg !2791
  %95 = load ptr, ptr %dequant4_mf.i, align 16, !dbg !2792
  call void %94(ptr noundef nonnull %arrayidx48.i, ptr noundef %95, i32 noundef %0) #6, !dbg !2793
  %cmp85.i = icmp slt i32 %decimate_score.0295.i, 6, !dbg !2794
  br i1 %cmp85.i, label %if.then87.i, label %if.end95.i, !dbg !2796

if.then87.i:                                      ; preds = %if.then70.i
  %96 = load ptr, ptr %decimate_score15.i, align 8, !dbg !2797
  %call94.i = call i32 %96(ptr noundef nonnull %arrayidx76.i) #6, !dbg !2798
  %add.i = add nsw i32 %call94.i, %decimate_score.0295.i, !dbg !2799
    #dbg_value(i32 %add.i, !2472, !DIExpression(), !2488)
  br label %if.end95.i, !dbg !2800

if.end95.i:                                       ; preds = %if.then87.i, %if.then70.i
  %decimate_score.1.i = phi i32 [ %add.i, %if.then87.i ], [ %decimate_score.0295.i, %if.then70.i ], !dbg !2488
    #dbg_value(i32 %decimate_score.1.i, !2472, !DIExpression(), !2488)
  store i32 15, ptr %i_cbp_luma, align 8, !dbg !2801
  br label %for.inc99.i, !dbg !2802

for.inc99.i:                                      ; preds = %if.end95.i, %x264_quant_4x4.exit.i
  %decimate_score.2.i = phi i32 [ %decimate_score.1.i, %if.end95.i ], [ %decimate_score.0295.i, %x264_quant_4x4.exit.i ], !dbg !2488
    #dbg_value(i32 %decimate_score.2.i, !2472, !DIExpression(), !2488)
  %indvars.iv.next300.i = add nuw nsw i64 %indvars.iv299.i, 1, !dbg !2803
    #dbg_value(i64 %indvars.iv.next300.i, !2481, !DIExpression(), !2755)
  %exitcond302.not.i = icmp eq i64 %indvars.iv.next300.i, 16, !dbg !2804
  br i1 %exitcond302.not.i, label %for.cond.cleanup45.i, label %for.body46.i, !dbg !2756, !llvm.loop !2805

if.then104.i:                                     ; preds = %for.cond.cleanup45.i
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !2807
  %arrayidx111.i1389 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !2809
  store i32 0, ptr %arrayidx111.i1389, align 1, !dbg !2809
  %arrayidx116.i = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !2809
  store i32 0, ptr %arrayidx116.i, align 1, !dbg !2809
  %arrayidx121.i = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !2809
  store i32 0, ptr %arrayidx121.i, align 1, !dbg !2809
  %arrayidx126.i = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !2809
  store i32 0, ptr %arrayidx126.i, align 1, !dbg !2809
  br label %if.end127.i, !dbg !2811

if.end127.i:                                      ; preds = %if.then104.i, %for.cond.cleanup45.i
  %dct4x4dc.i = getelementptr inbounds i8, ptr %h, i64 33016, !dbg !2812
  %97 = load ptr, ptr %dct4x4dc.i, align 8, !dbg !2812
  call void %97(ptr noundef nonnull %dct_dc4x4.i) #6, !dbg !2813
  %98 = load i32, ptr %b_trellis.i.i, align 16, !dbg !2814
  %tobool131.not.i = icmp eq i32 %98, 0, !dbg !2816
  br i1 %tobool131.not.i, label %if.else.i1387, label %if.then132.i, !dbg !2817

if.then132.i:                                     ; preds = %if.end127.i
  %call134.i = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct_dc4x4.i, i32 noundef 0, i32 noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6, !dbg !2818
    #dbg_value(i32 %call134.i, !2471, !DIExpression(), !2488)
  br label %if.end148.i, !dbg !2819

if.else.i1387:                                    ; preds = %if.end127.i
  %quant_4x4_dc.i = getelementptr inbounds i8, ptr %h, i64 33096, !dbg !2820
  %99 = load ptr, ptr %quant_4x4_dc.i, align 8, !dbg !2820
  %100 = load ptr, ptr %quant4_mf.i.i, align 16, !dbg !2821
  %arrayidx139.i = getelementptr inbounds [16 x i16], ptr %100, i64 %idxprom2.i.i, !dbg !2821
  %101 = load i16, ptr %arrayidx139.i, align 2, !dbg !2821
  %102 = lshr i16 %101, 1, !dbg !2822
  %shr.i = zext nneg i16 %102 to i32, !dbg !2822
  %103 = load ptr, ptr %quant4_bias.i.i, align 16, !dbg !2823
  %arrayidx144.i = getelementptr inbounds [16 x i16], ptr %103, i64 %idxprom2.i.i, !dbg !2823
  %104 = load i16, ptr %arrayidx144.i, align 2, !dbg !2823
  %conv146.i = zext i16 %104 to i32, !dbg !2823
  %shl.i1388 = shl nuw nsw i32 %conv146.i, 1, !dbg !2824
  %call147.i = call i32 %99(ptr noundef nonnull %dct_dc4x4.i, i32 noundef %shr.i, i32 noundef %shl.i1388) #6, !dbg !2825
    #dbg_value(i32 %call147.i, !2471, !DIExpression(), !2488)
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else.i1387, %if.then132.i
  %nz.0.i = phi i32 [ %call134.i, %if.then132.i ], [ %call147.i, %if.else.i1387 ], !dbg !2826
    #dbg_value(i32 %nz.0.i, !2471, !DIExpression(), !2488)
  %conv149.i = trunc i32 %nz.0.i to i8, !dbg !2827
  store i8 %conv149.i, ptr %arrayidx, align 1, !dbg !2828
  %tobool155.not.i = icmp eq i32 %nz.0.i, 0, !dbg !2829
  br i1 %tobool155.not.i, label %if.end190.thread290.i, label %if.then156.i, !dbg !2830

if.then156.i:                                     ; preds = %if.end148.i
  %105 = load ptr, ptr %scan_4x472.i, align 8, !dbg !2831
  %dct159.i = getelementptr inbounds i8, ptr %h, i64 15040, !dbg !2832
  call void %105(ptr noundef nonnull %dct159.i, ptr noundef nonnull %dct_dc4x4.i) #6, !dbg !2833
  %idct4x4dc.i = getelementptr inbounds i8, ptr %h, i64 33024, !dbg !2834
  %106 = load ptr, ptr %idct4x4dc.i, align 16, !dbg !2834
  call void %106(ptr noundef nonnull %dct_dc4x4.i) #6, !dbg !2835
  %dequant_4x4_dc.i = getelementptr inbounds i8, ptr %h, i64 33128, !dbg !2836
  %107 = load ptr, ptr %dequant_4x4_dc.i, align 8, !dbg !2836
  %108 = load ptr, ptr %dequant4_mf.i, align 16, !dbg !2837
  call void %107(ptr noundef nonnull %dct_dc4x4.i, ptr noundef %108, i32 noundef %0) #6, !dbg !2838
  %109 = load i32, ptr %i_cbp_luma, align 8, !dbg !2839
  %tobool171.not.i = icmp eq i32 %109, 0, !dbg !2840
  br i1 %tobool171.not.i, label %if.then199.i, label %for.body178.preheader.i, !dbg !2841

for.body178.preheader.i:                          ; preds = %if.then156.i
    #dbg_value(i64 0, !2483, !DIExpression(), !2842)
  %110 = load i16, ptr %dct_dc4x4.i, align 16, !dbg !2843
  store i16 %110, ptr %dct4x4.i, align 16, !dbg !2845
    #dbg_value(i64 1, !2483, !DIExpression(), !2842)
  %arrayidx182.1.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 2, !dbg !2843
  %111 = load i16, ptr %arrayidx182.1.i, align 2, !dbg !2843
  %arrayidx184.1.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 32, !dbg !2846
  store i16 %111, ptr %arrayidx184.1.i, align 16, !dbg !2845
    #dbg_value(i64 2, !2483, !DIExpression(), !2842)
  %arrayidx182.2.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 8, !dbg !2843
  %112 = load i16, ptr %arrayidx182.2.i, align 8, !dbg !2843
  %arrayidx184.2.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 64, !dbg !2846
  store i16 %112, ptr %arrayidx184.2.i, align 16, !dbg !2845
    #dbg_value(i64 3, !2483, !DIExpression(), !2842)
  %arrayidx182.3.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 10, !dbg !2843
  %113 = load i16, ptr %arrayidx182.3.i, align 2, !dbg !2843
  %arrayidx184.3.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 96, !dbg !2846
  store i16 %113, ptr %arrayidx184.3.i, align 16, !dbg !2845
    #dbg_value(i64 4, !2483, !DIExpression(), !2842)
  %arrayidx182.4.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 4, !dbg !2843
  %114 = load i16, ptr %arrayidx182.4.i, align 4, !dbg !2843
  %arrayidx184.4.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 128, !dbg !2846
  store i16 %114, ptr %arrayidx184.4.i, align 16, !dbg !2845
    #dbg_value(i64 5, !2483, !DIExpression(), !2842)
  %arrayidx182.5.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 6, !dbg !2843
  %115 = load i16, ptr %arrayidx182.5.i, align 2, !dbg !2843
  %arrayidx184.5.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 160, !dbg !2846
  store i16 %115, ptr %arrayidx184.5.i, align 16, !dbg !2845
    #dbg_value(i64 6, !2483, !DIExpression(), !2842)
  %arrayidx182.6.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 12, !dbg !2843
  %116 = load i16, ptr %arrayidx182.6.i, align 4, !dbg !2843
  %arrayidx184.6.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 192, !dbg !2846
  store i16 %116, ptr %arrayidx184.6.i, align 16, !dbg !2845
    #dbg_value(i64 7, !2483, !DIExpression(), !2842)
  %arrayidx182.7.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 14, !dbg !2843
  %117 = load i16, ptr %arrayidx182.7.i, align 2, !dbg !2843
  %arrayidx184.7.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 224, !dbg !2846
  store i16 %117, ptr %arrayidx184.7.i, align 16, !dbg !2845
    #dbg_value(i64 8, !2483, !DIExpression(), !2842)
  %arrayidx182.8.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 16, !dbg !2843
  %118 = load i16, ptr %arrayidx182.8.i, align 16, !dbg !2843
  %arrayidx184.8.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 256, !dbg !2846
  store i16 %118, ptr %arrayidx184.8.i, align 16, !dbg !2845
    #dbg_value(i64 9, !2483, !DIExpression(), !2842)
  %arrayidx182.9.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 18, !dbg !2843
  %119 = load i16, ptr %arrayidx182.9.i, align 2, !dbg !2843
  %arrayidx184.9.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 288, !dbg !2846
  store i16 %119, ptr %arrayidx184.9.i, align 16, !dbg !2845
    #dbg_value(i64 10, !2483, !DIExpression(), !2842)
  %arrayidx182.10.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 24, !dbg !2843
  %120 = load i16, ptr %arrayidx182.10.i, align 8, !dbg !2843
  %arrayidx184.10.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 320, !dbg !2846
  store i16 %120, ptr %arrayidx184.10.i, align 16, !dbg !2845
    #dbg_value(i64 11, !2483, !DIExpression(), !2842)
  %arrayidx182.11.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 26, !dbg !2843
  %121 = load i16, ptr %arrayidx182.11.i, align 2, !dbg !2843
  %arrayidx184.11.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 352, !dbg !2846
  store i16 %121, ptr %arrayidx184.11.i, align 16, !dbg !2845
    #dbg_value(i64 12, !2483, !DIExpression(), !2842)
  %arrayidx182.12.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 20, !dbg !2843
  %122 = load i16, ptr %arrayidx182.12.i, align 4, !dbg !2843
  %arrayidx184.12.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 384, !dbg !2846
  store i16 %122, ptr %arrayidx184.12.i, align 16, !dbg !2845
    #dbg_value(i64 13, !2483, !DIExpression(), !2842)
  %arrayidx182.13.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 22, !dbg !2843
  %123 = load i16, ptr %arrayidx182.13.i, align 2, !dbg !2843
  %arrayidx184.13.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 416, !dbg !2846
  store i16 %123, ptr %arrayidx184.13.i, align 16, !dbg !2845
    #dbg_value(i64 14, !2483, !DIExpression(), !2842)
  %arrayidx182.14.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 28, !dbg !2843
  %124 = load i16, ptr %arrayidx182.14.i, align 4, !dbg !2843
  %arrayidx184.14.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 448, !dbg !2846
  store i16 %124, ptr %arrayidx184.14.i, align 16, !dbg !2845
    #dbg_value(i64 15, !2483, !DIExpression(), !2842)
  %arrayidx182.15.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 30, !dbg !2843
  %125 = load i16, ptr %arrayidx182.15.i, align 2, !dbg !2843
  %arrayidx184.15.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 480, !dbg !2846
  store i16 %125, ptr %arrayidx184.15.i, align 16, !dbg !2845
    #dbg_value(i64 16, !2483, !DIExpression(), !2842)
  br label %if.then194.i, !dbg !2847

if.end190.thread290.i:                            ; preds = %if.end148.i
  %126 = load i32, ptr %i_cbp_luma, align 8, !dbg !2848
  %tobool193.not292.i = icmp eq i32 %126, 0, !dbg !2850
  br i1 %tobool193.not292.i, label %x264_mb_encode_i16x16.exit, label %if.then194.i, !dbg !2847

if.then194.i:                                     ; preds = %if.end190.thread290.i, %for.body178.preheader.i
  %add16x16_idct.i = getelementptr inbounds i8, ptr %h, i64 32968, !dbg !2851
  %127 = load ptr, ptr %add16x16_idct.i, align 8, !dbg !2851
  call void %127(ptr noundef %72, ptr noundef nonnull %dct4x4.i) #6, !dbg !2852
  br label %x264_mb_encode_i16x16.exit, !dbg !2852

if.then199.i:                                     ; preds = %if.then156.i
  %add16x16_idct_dc.i = getelementptr inbounds i8, ptr %h, i64 32976, !dbg !2853
  %128 = load ptr, ptr %add16x16_idct_dc.i, align 16, !dbg !2853
  call void %128(ptr noundef %72, ptr noundef nonnull %dct_dc4x4.i) #6, !dbg !2855
  br label %x264_mb_encode_i16x16.exit, !dbg !2855

x264_mb_encode_i16x16.exit:                       ; preds = %for.cond.cleanup.i, %if.end190.thread290.i, %if.then194.i, %if.then199.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct_dc4x4.i) #6, !dbg !2856
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct4x4.i) #6, !dbg !2856
  br label %if.end880, !dbg !2857

if.then123:                                       ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %edge) #6, !dbg !2858
  %b_transform_8x8125 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !2859
  store i32 1, ptr %b_transform_8x8125, align 4, !dbg !2860
  %i_skip_intra = getelementptr inbounds i8, ptr %h, i64 17416, !dbg !2861
  %129 = load i32, ptr %i_skip_intra, align 8, !dbg !2861
  %tobool127.not = icmp eq i32 %129, 0, !dbg !2863
  br i1 %tobool127.not, label %if.end188.thread, label %if.then128, !dbg !2864

if.then128:                                       ; preds = %if.then123
  %copy130 = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !2865
  %130 = load ptr, ptr %copy130, align 8, !dbg !2867
  %p_fdec134 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2868
  %131 = load ptr, ptr %p_fdec134, align 16, !dbg !2869
  %i8x8_fdec_buf = getelementptr inbounds i8, ptr %h, i64 18944, !dbg !2870
  tail call void %130(ptr noundef %131, i32 noundef 32, ptr noundef nonnull %i8x8_fdec_buf, i32 noundef 16, i32 noundef 16) #6, !dbg !2867
  %i8x8_nnz_buf = getelementptr inbounds i8, ptr %h, i64 20080, !dbg !2871
  %132 = load i32, ptr %i8x8_nnz_buf, align 16, !dbg !2872
  %arrayidx145 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !2873
  store i32 %132, ptr %arrayidx145, align 1, !dbg !2874
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 20084, !dbg !2875
  %133 = load i32, ptr %arrayidx149, align 4, !dbg !2875
  %arrayidx154 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !2876
  store i32 %133, ptr %arrayidx154, align 1, !dbg !2877
  %arrayidx158 = getelementptr inbounds i8, ptr %h, i64 20088, !dbg !2878
  %134 = load i32, ptr %arrayidx158, align 8, !dbg !2878
  %arrayidx163 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !2879
  store i32 %134, ptr %arrayidx163, align 1, !dbg !2880
  %arrayidx167 = getelementptr inbounds i8, ptr %h, i64 20092, !dbg !2881
  %135 = load i32, ptr %arrayidx167, align 4, !dbg !2881
  %arrayidx172 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !2882
  store i32 %135, ptr %arrayidx172, align 1, !dbg !2883
  %i8x8_cbp = getelementptr inbounds i8, ptr %h, i64 20100, !dbg !2884
  %136 = load i32, ptr %i8x8_cbp, align 4, !dbg !2884
  store i32 %136, ptr %i_cbp_luma, align 8, !dbg !2885
  %137 = load i32, ptr %i_skip_intra, align 8, !dbg !2886
  %cmp179 = icmp eq i32 %137, 2, !dbg !2888
  br i1 %cmp179, label %if.then181, label %if.end188, !dbg !2889

if.then181:                                       ; preds = %if.then128
  %memcpy_aligned = getelementptr inbounds i8, ptr %h, i64 32816, !dbg !2890
  %138 = load ptr, ptr %memcpy_aligned, align 8, !dbg !2890
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088, !dbg !2891
  %i8x8_dct_buf = getelementptr inbounds i8, ptr %h, i64 19200, !dbg !2892
  %call = tail call ptr %138(ptr noundef nonnull %luma8x8, ptr noundef nonnull %i8x8_dct_buf, i64 noundef 384) #6, !dbg !2893
  %.pre1532 = load i32, ptr %i_skip_intra, align 8, !dbg !2894
  br label %if.end188, !dbg !2893

if.end188:                                        ; preds = %if.then128, %if.then181
  %139 = phi i32 [ %137, %if.then128 ], [ %.pre1532, %if.then181 ], !dbg !2894
  %.fr1572 = freeze i32 %139, !dbg !2895
  %tobool191.not = icmp eq i32 %.fr1572, 0, !dbg !2895
  br i1 %tobool191.not, label %if.end188.thread, label %140, !dbg !2895

if.end188.thread:                                 ; preds = %if.then123, %if.end188
  br label %140, !dbg !2895

140:                                              ; preds = %if.end188, %if.end188.thread
  %141 = phi i64 [ 0, %if.end188.thread ], [ 3, %if.end188 ], !dbg !2895
    #dbg_value(i32 poison, !2396, !DIExpression(), !2896)
  %p_fdec196 = getelementptr inbounds i8, ptr %h, i64 21392
  %predict_8x8_filter = getelementptr inbounds i8, ptr %h, i64 31552
  %i_neighbour8 = getelementptr inbounds i8, ptr %h, i64 16492
  %b_lossless220 = getelementptr inbounds i8, ptr %h, i64 25812
  %fenc.i1390 = getelementptr inbounds i8, ptr %h, i64 14680
  %b_interlaced.i1392 = getelementptr inbounds i8, ptr %h, i64 16436
  %p_fenc_plane.i1394 = getelementptr inbounds i8, ptr %h, i64 21368
  %arrayidx14.i1398 = getelementptr inbounds i8, ptr %h, i64 32744
  %predict_8x8.i = getelementptr inbounds i8, ptr %h, i64 31360
  br label %for.body, !dbg !2897

for.cond.cleanup:                                 ; preds = %if.end228
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %edge) #6, !dbg !2898
  br label %if.end880, !dbg !2899

for.body:                                         ; preds = %140, %if.end228
  %indvars.iv1476 = phi i64 [ %141, %140 ], [ %indvars.iv.next1477, %if.end228 ]
    #dbg_value(i64 %indvars.iv1476, !2396, !DIExpression(), !2896)
  %142 = load ptr, ptr %p_fdec196, align 16, !dbg !2900
  %indvars.iv1476.tr = trunc i64 %indvars.iv1476 to i32, !dbg !2901
  %143 = shl i32 %indvars.iv1476.tr, 3, !dbg !2901
  %mul = and i32 %143, 8, !dbg !2901
  %indvars.iv1476.tr1539 = trunc i64 %indvars.iv1476 to i32, !dbg !2902
  %144 = shl i32 %indvars.iv1476.tr1539, 7, !dbg !2902
  %mul198 = and i32 %144, 256, !dbg !2902
  %add200 = or disjoint i32 %mul, %mul198, !dbg !2903
  %idxprom201 = zext nneg i32 %add200 to i64, !dbg !2900
  %arrayidx202 = getelementptr inbounds i8, ptr %142, i64 %idxprom201, !dbg !2900
    #dbg_value(ptr %arrayidx202, !2398, !DIExpression(), !2904)
  %145 = shl nuw nsw i64 %indvars.iv1476, 2, !dbg !2905
  %arrayidx208 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %145, !dbg !2906
  %146 = load i32, ptr %arrayidx208, align 16, !dbg !2906
  %idxprom209 = sext i32 %146 to i64, !dbg !2907
  %arrayidx210 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 %idxprom209, !dbg !2907
  %147 = load i8, ptr %arrayidx210, align 1, !dbg !2907
    #dbg_value(i8 %147, !2401, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2904)
  %148 = load ptr, ptr %predict_8x8_filter, align 16, !dbg !2908
  %arrayidx215 = getelementptr inbounds [4 x i32], ptr %i_neighbour8, i64 0, i64 %indvars.iv1476, !dbg !2909
  %149 = load i32, ptr %arrayidx215, align 4, !dbg !2909
  %idxprom216 = sext i8 %147 to i64, !dbg !2910
  %arrayidx217 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %idxprom216, !dbg !2910
  %150 = load i8, ptr %arrayidx217, align 1, !dbg !2910
  %conv218 = zext i8 %150 to i32, !dbg !2910
  call void %148(ptr noundef %arrayidx202, ptr noundef nonnull %edge, i32 noundef %149, i32 noundef %conv218) #6, !dbg !2911
  %151 = load i32, ptr %b_lossless220, align 4, !dbg !2912
  %tobool221.not = icmp eq i32 %151, 0, !dbg !2914
  br i1 %tobool221.not, label %if.else224, label %if.then222, !dbg !2915

if.then222:                                       ; preds = %for.body
    #dbg_value(i8 %147, !2401, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2904)
    #dbg_value(ptr %h, !2315, !DIExpression(), !2916)
    #dbg_value(ptr %arrayidx202, !2316, !DIExpression(), !2916)
    #dbg_value(i64 %indvars.iv1476, !2317, !DIExpression(), !2916)
    #dbg_value(i8 %147, !2318, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2916)
    #dbg_value(ptr %edge, !2319, !DIExpression(), !2916)
  %152 = load ptr, ptr %fenc.i1390, align 8, !dbg !2918
  %i_stride.i1391 = getelementptr inbounds i8, ptr %152, i64 104, !dbg !2919
  %153 = load i32, ptr %i_stride.i1391, align 8, !dbg !2920
  %154 = load i32, ptr %b_interlaced.i1392, align 4, !dbg !2921
  %shl.i1393 = shl i32 %153, %154, !dbg !2922
    #dbg_value(i32 %shl.i1393, !2320, !DIExpression(), !2916)
  %155 = load ptr, ptr %p_fenc_plane.i1394, align 8, !dbg !2923
  %idx.ext.i1396 = zext nneg i32 %mul to i64, !dbg !2924
  %add.ptr.i1397 = getelementptr inbounds i8, ptr %155, i64 %idx.ext.i1396, !dbg !2924
  %156 = trunc nuw nsw i64 %145 to i32, !dbg !2925
  %mul3.i = and i32 %156, 8, !dbg !2925
  %mul4.i = mul nsw i32 %shl.i1393, %mul3.i, !dbg !2926
  %idx.ext5.i = sext i32 %mul4.i to i64, !dbg !2927
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr.i1397, i64 %idx.ext5.i, !dbg !2927
    #dbg_value(ptr %add.ptr6.i, !2321, !DIExpression(), !2916)
  switch i8 %147, label %if.else16.i [
    i8 0, label %if.then.i1399
    i8 1, label %if.then11.i
  ], !dbg !2928

if.then.i1399:                                    ; preds = %if.then222
  %157 = load ptr, ptr %arrayidx14.i1398, align 8, !dbg !2929
  %idx.ext8.i = sext i32 %shl.i1393 to i64, !dbg !2930
  %idx.neg.i1401 = sub nsw i64 0, %idx.ext8.i, !dbg !2930
  %add.ptr9.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %idx.neg.i1401, !dbg !2930
  call void %157(ptr noundef %arrayidx202, i32 noundef 32, ptr noundef %add.ptr9.i, i32 noundef %shl.i1393, i32 noundef 8) #6, !dbg !2929
  br label %if.end228, !dbg !2929

if.then11.i:                                      ; preds = %if.then222
  %158 = load ptr, ptr %arrayidx14.i1398, align 8, !dbg !2931
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 -1, !dbg !2932
  call void %158(ptr noundef %arrayidx202, i32 noundef 32, ptr noundef nonnull %add.ptr15.i, i32 noundef %shl.i1393, i32 noundef 8) #6, !dbg !2931
  br label %if.end228, !dbg !2931

if.else16.i:                                      ; preds = %if.then222
    #dbg_value(i8 %147, !2401, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2904)
    #dbg_value(i8 %147, !2318, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2916)
  %arrayidx17.i = getelementptr inbounds [12 x ptr], ptr %predict_8x8.i, i64 0, i64 %idxprom216, !dbg !2933
  %159 = load ptr, ptr %arrayidx17.i, align 8, !dbg !2933
  call void %159(ptr noundef %arrayidx202, ptr noundef nonnull %edge) #6, !dbg !2933
  br label %if.end228

if.else224:                                       ; preds = %for.body
  %arrayidx226 = getelementptr inbounds [12 x ptr], ptr %predict_8x8.i, i64 0, i64 %idxprom216, !dbg !2934
  %160 = load ptr, ptr %arrayidx226, align 8, !dbg !2934
  call void %160(ptr noundef %arrayidx202, ptr noundef nonnull %edge) #6, !dbg !2934
  br label %if.end228

if.end228:                                        ; preds = %if.else16.i, %if.then11.i, %if.then.i1399, %if.else224
  %161 = trunc nuw nsw i64 %indvars.iv1476 to i32, !dbg !2935
  call void @x264_mb_encode_i8x8(ptr noundef nonnull %h, i32 noundef %161, i32 noundef %0), !dbg !2935
  %indvars.iv.next1477 = add nuw nsw i64 %indvars.iv1476, 1, !dbg !2936
    #dbg_value(i64 %indvars.iv.next1477, !2396, !DIExpression(), !2896)
  %exitcond1481.not = icmp eq i64 %indvars.iv.next1477, 4, !dbg !2937
  br i1 %exitcond1481.not, label %for.cond.cleanup, label %for.body, !dbg !2897, !llvm.loop !2938

if.then234:                                       ; preds = %if.end83
  %b_transform_8x8236 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !2940
  store i32 0, ptr %b_transform_8x8236, align 4, !dbg !2941
  %i_skip_intra238 = getelementptr inbounds i8, ptr %h, i64 17416, !dbg !2942
  %162 = load i32, ptr %i_skip_intra238, align 8, !dbg !2942
  %tobool239.not = icmp eq i32 %162, 0, !dbg !2944
  br i1 %tobool239.not, label %if.end304.thread, label %if.then240, !dbg !2945

if.then240:                                       ; preds = %if.then234
  %copy242 = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !2946
  %163 = load ptr, ptr %copy242, align 8, !dbg !2948
  %p_fdec246 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2949
  %164 = load ptr, ptr %p_fdec246, align 16, !dbg !2950
  %i4x4_fdec_buf = getelementptr inbounds i8, ptr %h, i64 18688, !dbg !2951
  tail call void %163(ptr noundef %164, i32 noundef 32, ptr noundef nonnull %i4x4_fdec_buf, i32 noundef 16, i32 noundef 16) #6, !dbg !2948
  %i4x4_nnz_buf = getelementptr inbounds i8, ptr %h, i64 20064, !dbg !2952
  %165 = load i32, ptr %i4x4_nnz_buf, align 16, !dbg !2953
  %arrayidx258 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !2954
  store i32 %165, ptr %arrayidx258, align 1, !dbg !2955
  %arrayidx262 = getelementptr inbounds i8, ptr %h, i64 20068, !dbg !2956
  %166 = load i32, ptr %arrayidx262, align 4, !dbg !2956
  %arrayidx267 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !2957
  store i32 %166, ptr %arrayidx267, align 1, !dbg !2958
  %arrayidx271 = getelementptr inbounds i8, ptr %h, i64 20072, !dbg !2959
  %167 = load i32, ptr %arrayidx271, align 8, !dbg !2959
  %arrayidx276 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !2960
  store i32 %167, ptr %arrayidx276, align 1, !dbg !2961
  %arrayidx280 = getelementptr inbounds i8, ptr %h, i64 20076, !dbg !2962
  %168 = load i32, ptr %arrayidx280, align 4, !dbg !2962
  %arrayidx285 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !2963
  store i32 %168, ptr %arrayidx285, align 1, !dbg !2964
  %i4x4_cbp = getelementptr inbounds i8, ptr %h, i64 20096, !dbg !2965
  %169 = load i32, ptr %i4x4_cbp, align 16, !dbg !2965
  store i32 %169, ptr %i_cbp_luma, align 8, !dbg !2966
  %170 = load i32, ptr %i_skip_intra238, align 8, !dbg !2967
  %cmp292 = icmp eq i32 %170, 2, !dbg !2969
  br i1 %cmp292, label %if.then294, label %if.end304, !dbg !2970

if.then294:                                       ; preds = %if.then240
  %memcpy_aligned296 = getelementptr inbounds i8, ptr %h, i64 32816, !dbg !2971
  %171 = load ptr, ptr %memcpy_aligned296, align 8, !dbg !2971
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600, !dbg !2972
  %i4x4_dct_buf = getelementptr inbounds i8, ptr %h, i64 19584, !dbg !2973
  %call302 = tail call ptr %171(ptr noundef nonnull %luma4x4, ptr noundef nonnull %i4x4_dct_buf, i64 noundef 480) #6, !dbg !2974
  %.pre = load i32, ptr %i_skip_intra238, align 8, !dbg !2975
  br label %if.end304, !dbg !2974

if.end304:                                        ; preds = %if.then240, %if.then294
  %172 = phi i32 [ %170, %if.then240 ], [ %.pre, %if.then294 ], !dbg !2975
  %.fr = freeze i32 %172, !dbg !2976
  %tobool308.not = icmp eq i32 %.fr, 0, !dbg !2976
  br i1 %tobool308.not, label %if.end304.thread, label %173, !dbg !2976

if.end304.thread:                                 ; preds = %if.then234, %if.end304
  br label %173, !dbg !2976

173:                                              ; preds = %if.end304, %if.end304.thread
  %174 = phi i64 [ 0, %if.end304.thread ], [ 15, %if.end304 ], !dbg !2976
    #dbg_value(i32 poison, !2402, !DIExpression(), !2977)
  %p_fdec318 = getelementptr inbounds i8, ptr %h, i64 21392
  %i_neighbour4 = getelementptr inbounds i8, ptr %h, i64 16508
  %b_lossless346 = getelementptr inbounds i8, ptr %h, i64 25812
  %fenc.i1403 = getelementptr inbounds i8, ptr %h, i64 14680
  %b_interlaced.i1405 = getelementptr inbounds i8, ptr %h, i64 16436
  %p_fenc_plane.i1407 = getelementptr inbounds i8, ptr %h, i64 21368
  %arrayidx20.i1412 = getelementptr inbounds i8, ptr %h, i64 32768
  %predict_4x4.i = getelementptr inbounds i8, ptr %h, i64 31456
  br label %for.body314, !dbg !2978

for.body314:                                      ; preds = %173, %if.end352
  %indvars.iv = phi i64 [ %174, %173 ], [ %indvars.iv.next, %if.end352 ]
    #dbg_value(i64 %indvars.iv, !2402, !DIExpression(), !2977)
  %175 = load ptr, ptr %p_fdec318, align 16, !dbg !2979
  %arrayidx321 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv, !dbg !2980
  %176 = load i16, ptr %arrayidx321, align 2, !dbg !2980
  %idxprom322 = zext i16 %176 to i64, !dbg !2979
  %arrayidx323 = getelementptr inbounds i8, ptr %175, i64 %idxprom322, !dbg !2979
    #dbg_value(ptr %arrayidx323, !2406, !DIExpression(), !2981)
  %arrayidx329 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv, !dbg !2982
  %177 = load i32, ptr %arrayidx329, align 4, !dbg !2982
  %idxprom330 = sext i32 %177 to i64, !dbg !2983
  %arrayidx331 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 %idxprom330, !dbg !2983
  %178 = load i8, ptr %arrayidx331, align 1, !dbg !2983
    #dbg_value(i8 %178, !2409, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2981)
  %arrayidx335 = getelementptr inbounds [16 x i32], ptr %i_neighbour4, i64 0, i64 %indvars.iv, !dbg !2984
  %179 = load i32, ptr %arrayidx335, align 4, !dbg !2984
  %and336 = and i32 %179, 6, !dbg !2986
  %cmp337 = icmp eq i32 %and336, 2, !dbg !2987
  br i1 %cmp337, label %if.then339, label %if.end344, !dbg !2988

if.then339:                                       ; preds = %for.body314
  %arrayidx340 = getelementptr inbounds i8, ptr %arrayidx323, i64 -29, !dbg !2989
  %180 = load i8, ptr %arrayidx340, align 1, !dbg !2989
  %conv341 = zext i8 %180 to i32, !dbg !2989
  %mul342 = mul nuw i32 %conv341, 16843009, !dbg !2990
  %arrayidx343 = getelementptr inbounds i8, ptr %arrayidx323, i64 -28, !dbg !2991
  store i32 %mul342, ptr %arrayidx343, align 4, !dbg !2992
  br label %if.end344, !dbg !2991

if.end344:                                        ; preds = %if.then339, %for.body314
  %181 = load i32, ptr %b_lossless346, align 4, !dbg !2993
  %tobool347.not = icmp eq i32 %181, 0, !dbg !2995
  br i1 %tobool347.not, label %if.else349, label %if.then348, !dbg !2996

if.then348:                                       ; preds = %if.end344
    #dbg_value(ptr %h, !2280, !DIExpression(), !2997)
    #dbg_value(ptr %arrayidx323, !2281, !DIExpression(), !2997)
    #dbg_value(i64 %indvars.iv, !2282, !DIExpression(), !2997)
    #dbg_value(i8 %178, !2283, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2997)
  %182 = load ptr, ptr %fenc.i1403, align 8, !dbg !2999
  %i_stride.i1404 = getelementptr inbounds i8, ptr %182, i64 104, !dbg !3000
  %183 = load i32, ptr %i_stride.i1404, align 8, !dbg !3001
  %184 = load i32, ptr %b_interlaced.i1405, align 4, !dbg !3002
  %shl.i1406 = shl i32 %183, %184, !dbg !3003
    #dbg_value(i32 %shl.i1406, !2284, !DIExpression(), !2997)
  %185 = load ptr, ptr %p_fenc_plane.i1407, align 8, !dbg !3004
  %arrayidx3.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %indvars.iv, !dbg !3005
  %186 = load i8, ptr %arrayidx3.i, align 1, !dbg !3005
  %conv.i1409 = zext i8 %186 to i64, !dbg !3005
  %mul.i1410 = shl nuw nsw i64 %conv.i1409, 2, !dbg !3006
  %add.ptr.i1411 = getelementptr inbounds i8, ptr %185, i64 %mul.i1410, !dbg !3007
  %arrayidx5.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %indvars.iv, !dbg !3008
  %187 = load i8, ptr %arrayidx5.i, align 1, !dbg !3008
  %conv6.i = zext i8 %187 to i32, !dbg !3008
  %mul7.i = shl i32 %shl.i1406, 2, !dbg !3009
  %mul8.i = mul i32 %mul7.i, %conv6.i, !dbg !3010
  %idx.ext9.i = sext i32 %mul8.i to i64, !dbg !3011
  %add.ptr10.i = getelementptr inbounds i8, ptr %add.ptr.i1411, i64 %idx.ext9.i, !dbg !3011
    #dbg_value(ptr %add.ptr10.i, !2285, !DIExpression(), !2997)
  switch i8 %178, label %if.else22.i [
    i8 0, label %if.then.i1413
    i8 1, label %if.then17.i
  ], !dbg !3012

if.then.i1413:                                    ; preds = %if.then348
  %188 = load ptr, ptr %arrayidx20.i1412, align 8, !dbg !3013
  %idx.ext13.i1415 = sext i32 %shl.i1406 to i64, !dbg !3014
  %idx.neg.i1416 = sub nsw i64 0, %idx.ext13.i1415, !dbg !3014
  %add.ptr14.i1417 = getelementptr inbounds i8, ptr %add.ptr10.i, i64 %idx.neg.i1416, !dbg !3014
  tail call void %188(ptr noundef %arrayidx323, i32 noundef 32, ptr noundef %add.ptr14.i1417, i32 noundef %shl.i1406, i32 noundef 4) #6, !dbg !3013
  br label %if.end352, !dbg !3013

if.then17.i:                                      ; preds = %if.then348
  %189 = load ptr, ptr %arrayidx20.i1412, align 8, !dbg !3015
  %add.ptr21.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 -1, !dbg !3016
  tail call void %189(ptr noundef %arrayidx323, i32 noundef 32, ptr noundef nonnull %add.ptr21.i, i32 noundef %shl.i1406, i32 noundef 4) #6, !dbg !3015
  br label %if.end352, !dbg !3015

if.else22.i:                                      ; preds = %if.then348
  %idxprom23.i1418 = sext i8 %178 to i64, !dbg !3017
  %arrayidx24.i1419 = getelementptr inbounds [12 x ptr], ptr %predict_4x4.i, i64 0, i64 %idxprom23.i1418, !dbg !3017
  %190 = load ptr, ptr %arrayidx24.i1419, align 8, !dbg !3017
  tail call void %190(ptr noundef %arrayidx323) #6, !dbg !3017
  br label %if.end352

if.else349:                                       ; preds = %if.end344
  %idxprom350 = sext i8 %178 to i64, !dbg !3018
  %arrayidx351 = getelementptr inbounds [12 x ptr], ptr %predict_4x4.i, i64 0, i64 %idxprom350, !dbg !3018
  %191 = load ptr, ptr %arrayidx351, align 8, !dbg !3018
  tail call void %191(ptr noundef %arrayidx323) #6, !dbg !3018
  br label %if.end352

if.end352:                                        ; preds = %if.else22.i, %if.then17.i, %if.then.i1413, %if.else349
  %192 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !3019
  tail call void @x264_mb_encode_i4x4(ptr noundef nonnull %h, i32 noundef %192, i32 noundef %0), !dbg !3019
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3020
    #dbg_value(i64 %indvars.iv.next, !2402, !DIExpression(), !2977)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !3021
  br i1 %exitcond.not, label %if.end880, label %for.body314, !dbg !2978, !llvm.loop !3022

if.else356.sink.split:                            ; preds = %if.then55, %if.then77
  %.sink = phi i32 [ 7, %if.then77 ], [ 4, %if.then55 ]
  store i32 %.sink, ptr %i_type, align 8, !dbg !3024
  br label %if.else356, !dbg !3025

if.else356:                                       ; preds = %if.else356.sink.split, %if.end83
  %tobool984.not1455 = phi i1 [ %tobool984.not.ph, %if.end83 ], [ false, %if.else356.sink.split ]
    #dbg_value(i32 0, !2410, !DIExpression(), !3027)
  %b_skip_mc358 = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !3025
  %193 = load i32, ptr %b_skip_mc358, align 4, !dbg !3025
  %tobool359.not = icmp eq i32 %193, 0, !dbg !3028
  br i1 %tobool359.not, label %if.then360, label %if.end361, !dbg !3029

if.then360:                                       ; preds = %if.else356
  tail call void @x264_mb_mc(ptr noundef nonnull %h) #6, !dbg !3030
  br label %if.end361, !dbg !3030

if.end361:                                        ; preds = %if.then360, %if.else356
  %b_lossless363 = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !3031
  %194 = load i32, ptr %b_lossless363, align 4, !dbg !3031
  %tobool364.not = icmp eq i32 %194, 0, !dbg !3032
  %b_transform_8x8478 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3033
  %195 = load i32, ptr %b_transform_8x8478, align 4, !dbg !3033
  %tobool479.not = icmp eq i32 %195, 0, !dbg !3033
  br i1 %tobool364.not, label %if.else476, label %if.then365, !dbg !3034

if.then365:                                       ; preds = %if.end361
  %p_fenc442 = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec451 = getelementptr inbounds i8, ptr %h, i64 21392
  br i1 %tobool479.not, label %for.cond429.preheader, label %for.cond370.preheader, !dbg !3035

for.cond370.preheader:                            ; preds = %if.then365
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048
  %luma8x8380 = getelementptr inbounds i8, ptr %h, i64 15088
    #dbg_value(i64 0, !2412, !DIExpression(), !3036)
    #dbg_value(i32 0, !2417, !DIExpression(), !3037)
    #dbg_value(i32 0, !2420, !DIExpression(), !3037)
  %196 = load ptr, ptr %sub_8x8, align 8, !dbg !3038
  %197 = load ptr, ptr %p_fenc442, align 16, !dbg !3039
  %198 = load ptr, ptr %p_fdec451, align 16, !dbg !3040
  %call400 = tail call i32 %196(ptr noundef nonnull %luma8x8380, ptr noundef %197, ptr noundef %198) #6, !dbg !3041
    #dbg_value(i32 %call400, !2386, !DIExpression(), !2497)
  %199 = trunc i32 %call400 to i16, !dbg !3042
  %conv402 = mul i16 %199, 257, !dbg !3042
  %arrayidx411 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3042
  store i16 %conv402, ptr %arrayidx411, align 1, !dbg !3042
  %arrayidx422 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3042
  store i16 %conv402, ptr %arrayidx422, align 1, !dbg !3042
  %200 = load i32, ptr %i_cbp_luma, align 8, !dbg !3044
  %or = or i32 %200, %call400, !dbg !3044
  store i32 %or, ptr %i_cbp_luma, align 8, !dbg !3044
    #dbg_value(i64 1, !2412, !DIExpression(), !3036)
    #dbg_value(i32 8, !2417, !DIExpression(), !3037)
  %201 = load ptr, ptr %sub_8x8, align 8, !dbg !3038
  %arrayidx382.1 = getelementptr inbounds i8, ptr %h, i64 15216, !dbg !3045
  %202 = load ptr, ptr %p_fenc442, align 16, !dbg !3039
  %add.ptr.1 = getelementptr inbounds i8, ptr %202, i64 8, !dbg !3046
  %203 = load ptr, ptr %p_fdec451, align 16, !dbg !3040
  %add.ptr396.1 = getelementptr inbounds i8, ptr %203, i64 8, !dbg !3047
  %call400.1 = tail call i32 %201(ptr noundef nonnull %arrayidx382.1, ptr noundef nonnull %add.ptr.1, ptr noundef nonnull %add.ptr396.1) #6, !dbg !3041
    #dbg_value(i32 %call400.1, !2386, !DIExpression(), !2497)
  %204 = trunc i32 %call400.1 to i16, !dbg !3042
  %conv402.1 = mul i16 %204, 257, !dbg !3042
  %arrayidx411.1 = getelementptr inbounds i8, ptr %h, i64 25086, !dbg !3042
  store i16 %conv402.1, ptr %arrayidx411.1, align 1, !dbg !3042
  %arrayidx422.1 = getelementptr inbounds i8, ptr %h, i64 25094, !dbg !3042
  store i16 %conv402.1, ptr %arrayidx422.1, align 1, !dbg !3042
  %shl.1 = shl i32 %call400.1, 1, !dbg !3048
  %205 = load i32, ptr %i_cbp_luma, align 8, !dbg !3044
  %or.1 = or i32 %205, %shl.1, !dbg !3044
  store i32 %or.1, ptr %i_cbp_luma, align 8, !dbg !3044
    #dbg_value(i64 2, !2412, !DIExpression(), !3036)
    #dbg_value(i32 0, !2417, !DIExpression(), !3037)
    #dbg_value(i32 8, !2420, !DIExpression(), !3037)
  %206 = load ptr, ptr %sub_8x8, align 8, !dbg !3038
  %arrayidx382.2 = getelementptr inbounds i8, ptr %h, i64 15344, !dbg !3045
  %207 = load ptr, ptr %p_fenc442, align 16, !dbg !3039
  %add.ptr390.2 = getelementptr inbounds i8, ptr %207, i64 128, !dbg !3049
  %208 = load ptr, ptr %p_fdec451, align 16, !dbg !3040
  %add.ptr399.2 = getelementptr inbounds i8, ptr %208, i64 256, !dbg !3050
  %call400.2 = tail call i32 %206(ptr noundef nonnull %arrayidx382.2, ptr noundef nonnull %add.ptr390.2, ptr noundef nonnull %add.ptr399.2) #6, !dbg !3041
    #dbg_value(i32 %call400.2, !2386, !DIExpression(), !2497)
  %209 = trunc i32 %call400.2 to i16, !dbg !3042
  %conv402.2 = mul i16 %209, 257, !dbg !3042
  %arrayidx411.2 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3042
  store i16 %conv402.2, ptr %arrayidx411.2, align 1, !dbg !3042
  %arrayidx422.2 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3042
  store i16 %conv402.2, ptr %arrayidx422.2, align 1, !dbg !3042
  %shl.2 = shl i32 %call400.2, 2, !dbg !3048
  %210 = load i32, ptr %i_cbp_luma, align 8, !dbg !3044
  %or.2 = or i32 %210, %shl.2, !dbg !3044
  store i32 %or.2, ptr %i_cbp_luma, align 8, !dbg !3044
    #dbg_value(i64 3, !2412, !DIExpression(), !3036)
    #dbg_value(i32 8, !2417, !DIExpression(), !3037)
  %211 = load ptr, ptr %sub_8x8, align 8, !dbg !3038
  %arrayidx382.3 = getelementptr inbounds i8, ptr %h, i64 15472, !dbg !3045
  %212 = load ptr, ptr %p_fenc442, align 16, !dbg !3039
  %add.ptr390.3 = getelementptr inbounds i8, ptr %212, i64 136, !dbg !3049
  %213 = load ptr, ptr %p_fdec451, align 16, !dbg !3040
  %add.ptr399.3 = getelementptr inbounds i8, ptr %213, i64 264, !dbg !3050
  %call400.3 = tail call i32 %211(ptr noundef nonnull %arrayidx382.3, ptr noundef nonnull %add.ptr390.3, ptr noundef nonnull %add.ptr399.3) #6, !dbg !3041
    #dbg_value(i32 %call400.3, !2386, !DIExpression(), !2497)
  %214 = trunc i32 %call400.3 to i16, !dbg !3042
  %conv402.3 = mul i16 %214, 257, !dbg !3042
  %arrayidx411.3 = getelementptr inbounds i8, ptr %h, i64 25102, !dbg !3042
  store i16 %conv402.3, ptr %arrayidx411.3, align 1, !dbg !3042
  %arrayidx422.3 = getelementptr inbounds i8, ptr %h, i64 25110, !dbg !3042
  store i16 %conv402.3, ptr %arrayidx422.3, align 1, !dbg !3042
  %shl.3 = shl i32 %call400.3, 3, !dbg !3048
  %215 = load i32, ptr %i_cbp_luma, align 8, !dbg !3044
  %or.3 = or i32 %215, %shl.3, !dbg !3044
  store i32 %or.3, ptr %i_cbp_luma, align 8, !dbg !3044
    #dbg_value(i64 4, !2412, !DIExpression(), !3036)
  br label %if.end880, !dbg !3051

for.cond429.preheader:                            ; preds = %if.then365
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %luma4x4436 = getelementptr inbounds i8, ptr %h, i64 15600
    #dbg_value(i32 0, !2421, !DIExpression(), !3052)
  br label %for.body433, !dbg !3053

for.body433:                                      ; preds = %for.cond429.preheader, %for.body433
  %indvars.iv1488 = phi i64 [ 0, %for.cond429.preheader ], [ %indvars.iv.next1489, %for.body433 ]
    #dbg_value(i64 %indvars.iv1488, !2421, !DIExpression(), !3052)
  %216 = load ptr, ptr %sub_4x4, align 8, !dbg !3054
  %arrayidx438 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4436, i64 0, i64 %indvars.iv1488, !dbg !3057
  %217 = load ptr, ptr %p_fenc442, align 16, !dbg !3058
  %arrayidx445 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv1488, !dbg !3059
  %218 = load i8, ptr %arrayidx445, align 1, !dbg !3059
  %idx.ext447 = zext i8 %218 to i64, !dbg !3060
  %add.ptr448 = getelementptr inbounds i8, ptr %217, i64 %idx.ext447, !dbg !3060
  %219 = load ptr, ptr %p_fdec451, align 16, !dbg !3061
  %arrayidx454 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv1488, !dbg !3062
  %220 = load i16, ptr %arrayidx454, align 2, !dbg !3062
  %idx.ext456 = zext i16 %220 to i64, !dbg !3063
  %add.ptr457 = getelementptr inbounds i8, ptr %219, i64 %idx.ext456, !dbg !3063
  %call458 = tail call i32 %216(ptr noundef nonnull %arrayidx438, ptr noundef %add.ptr448, ptr noundef %add.ptr457) #6, !dbg !3064
    #dbg_value(i32 %call458, !2386, !DIExpression(), !2497)
  %conv459 = trunc i32 %call458 to i8, !dbg !3065
  %arrayidx464 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1488, !dbg !3066
  %221 = load i32, ptr %arrayidx464, align 4, !dbg !3066
  %idxprom465 = sext i32 %221 to i64, !dbg !3067
  %arrayidx466 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom465, !dbg !3067
  store i8 %conv459, ptr %arrayidx466, align 1, !dbg !3068
  %222 = trunc nuw nsw i64 %indvars.iv1488 to i32, !dbg !3069
  %shr467 = lshr i32 %222, 2, !dbg !3069
  %shl468 = shl i32 %call458, %shr467, !dbg !3070
  %223 = load i32, ptr %i_cbp_luma, align 8, !dbg !3071
  %or471 = or i32 %223, %shl468, !dbg !3071
  store i32 %or471, ptr %i_cbp_luma, align 8, !dbg !3071
  %indvars.iv.next1489 = add nuw nsw i64 %indvars.iv1488, 1, !dbg !3072
    #dbg_value(i64 %indvars.iv.next1489, !2421, !DIExpression(), !3052)
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1489, 16, !dbg !3073
  br i1 %exitcond1491.not, label %if.end880, label %for.body433, !dbg !3053, !llvm.loop !3074

if.else476:                                       ; preds = %if.end361
  br i1 %tobool479.not, label %if.else660, label %if.then480, !dbg !3076

if.then480:                                       ; preds = %if.else476
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct8x8) #6, !dbg !3077
  %b_trellis = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !3078
  %224 = load i32, ptr %b_trellis, align 16, !dbg !3078
  %tobool482.not = icmp eq i32 %224, 0, !dbg !3079
  %225 = and i32 %1, 1, !dbg !3080
  %and483 = select i1 %tobool482.not, i32 %225, i32 0, !dbg !3080
    #dbg_value(i32 %and483, !2384, !DIExpression(), !2497)
  %sub16x16_dct8 = getelementptr inbounds i8, ptr %h, i64 33000, !dbg !3081
  %226 = load ptr, ptr %sub16x16_dct8, align 8, !dbg !3081
  %p_fenc487 = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !3082
  %227 = load ptr, ptr %p_fenc487, align 16, !dbg !3083
  %p_fdec491 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3084
  %228 = load ptr, ptr %p_fdec491, align 16, !dbg !3085
  call void %226(ptr noundef nonnull %dct8x8, ptr noundef %227, ptr noundef %228) #6, !dbg !3086
  %b_noise_reduction = getelementptr inbounds i8, ptr %h, i64 16420, !dbg !3087
  %229 = load i32, ptr %b_noise_reduction, align 4, !dbg !3087
  %mul494 = shl nsw i32 %229, 2, !dbg !3088
  %arrayidx495 = getelementptr inbounds i8, ptr %h, i64 31172, !dbg !3089
  %230 = load i32, ptr %arrayidx495, align 4, !dbg !3090
  %add496 = add i32 %230, %mul494, !dbg !3090
  store i32 %add496, ptr %arrayidx495, align 4, !dbg !3090
    #dbg_value(i32 0, !2426, !DIExpression(), !3091)
    #dbg_value(i32 0, !2410, !DIExpression(), !3027)
  %denoise_dct = getelementptr inbounds i8, ptr %h, i64 33136
  %arrayidx509 = getelementptr inbounds i8, ptr %h, i64 30656
  %arrayidx511 = getelementptr inbounds i8, ptr %h, i64 31040
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080
  %arrayidx.i1423 = getelementptr inbounds i8, ptr %h, i64 3480
  %idxprom2.i = sext i32 %0 to i64
  %arrayidx5.i1425 = getelementptr inbounds i8, ptr %h, i64 3528
  %zigzagf520 = getelementptr inbounds i8, ptr %h, i64 33032
  %luma8x8522 = getelementptr inbounds i8, ptr %h, i64 15088
  %tobool529.not = icmp eq i32 %and483, 0
  %decimate_score64 = getelementptr inbounds i8, ptr %h, i64 33160
    #dbg_value(i64 0, !2426, !DIExpression(), !3091)
  %tobool504.not = icmp eq i32 %229, 0, !dbg !3092
  br i1 %tobool504.not, label %if.end513, label %if.then505, !dbg !3094

for.cond586.preheader:                            ; preds = %for.inc554.3.thread, %for.inc554.3
    #dbg_value(i32 0, !2435, !DIExpression(), !3095)
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112
  %arrayidx601 = getelementptr inbounds i8, ptr %h, i64 3384
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992
    #dbg_value(i64 0, !2435, !DIExpression(), !3095)
  %231 = load i32, ptr %i_cbp_luma, align 8, !dbg !3096
  %and594 = and i32 %231, 1, !dbg !3100
  %tobool595.not = icmp eq i32 %and594, 0, !dbg !3100
  br i1 %tobool595.not, label %for.inc656, label %if.then596, !dbg !3101

if.then505:                                       ; preds = %if.then480
  %232 = load ptr, ptr %denoise_dct, align 8, !dbg !3102
  call void %232(ptr noundef nonnull %dct8x8, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6, !dbg !3103
  br label %if.end513, !dbg !3103

if.end513:                                        ; preds = %if.then505, %if.then480
    #dbg_value(ptr %h, !1645, !DIExpression(), !3104)
    #dbg_value(ptr %dct8x8, !1650, !DIExpression(), !3104)
    #dbg_value(i32 %0, !1651, !DIExpression(), !3104)
    #dbg_value(i32 0, !1652, !DIExpression(), !3104)
    #dbg_value(i64 0, !1653, !DIExpression(), !3104)
    #dbg_value(i1 true, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3104)
  %233 = load i32, ptr %b_trellis, align 16, !dbg !3106
  %tobool1.not.i = icmp eq i32 %233, 0, !dbg !3107
  br i1 %tobool1.not.i, label %if.else.i1422, label %if.then.i1420, !dbg !3108

if.then.i1420:                                    ; preds = %if.end513
    #dbg_value(i32 1, !1654, !DIExpression(), !3104)
  %call.i1421 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 0) #6, !dbg !3109
  br label %x264_quant_8x8.exit, !dbg !3110

if.else.i1422:                                    ; preds = %if.end513
  %234 = load ptr, ptr %quantf.i, align 8, !dbg !3111
  %235 = load ptr, ptr %arrayidx.i1423, align 8, !dbg !3112
  %arrayidx3.i1424 = getelementptr inbounds [64 x i16], ptr %235, i64 %idxprom2.i, !dbg !3112
  %236 = load ptr, ptr %arrayidx5.i1425, align 8, !dbg !3113
  %arrayidx7.i1426 = getelementptr inbounds [64 x i16], ptr %236, i64 %idxprom2.i, !dbg !3113
  %call9.i = call i32 %234(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i1424, ptr noundef %arrayidx7.i1426) #6, !dbg !3114
  br label %x264_quant_8x8.exit, !dbg !3115

x264_quant_8x8.exit:                              ; preds = %if.then.i1420, %if.else.i1422
  %retval.0.i = phi i32 [ %call.i1421, %if.then.i1420 ], [ %call9.i, %if.else.i1422 ], !dbg !3116
    #dbg_value(i32 %retval.0.i, !2386, !DIExpression(), !2497)
  %tobool518.not = icmp eq i32 %retval.0.i, 0, !dbg !3117
  br i1 %tobool518.not, label %for.inc554, label %if.then519, !dbg !3118

if.then519:                                       ; preds = %x264_quant_8x8.exit
  %237 = load ptr, ptr %zigzagf520, align 8, !dbg !3119
  call void %237(ptr noundef nonnull %luma8x8522, ptr noundef nonnull %dct8x8) #6, !dbg !3120
  br i1 %tobool529.not, label %for.inc554.sink.split, label %if.then530, !dbg !3121

if.then530:                                       ; preds = %if.then519
  %238 = load ptr, ptr %decimate_score64, align 8, !dbg !3122
  %call537 = call i32 %238(ptr noundef nonnull %luma8x8522) #6, !dbg !3123
    #dbg_value(i32 %call537, !2428, !DIExpression(), !3124)
    #dbg_value(i32 %call537, !2410, !DIExpression(), !3027)
  %cmp539 = icmp sgt i32 %call537, 3, !dbg !3125
  br i1 %cmp539, label %for.inc554.sink.split, label %for.inc554, !dbg !3127

for.inc554.sink.split:                            ; preds = %if.then519, %if.then530
  %i_decimate_mb.1.ph = phi i32 [ %call537, %if.then530 ], [ 0, %if.then519 ]
  %239 = load i32, ptr %i_cbp_luma, align 8, !dbg !3128
  %or545 = or i32 %239, 1, !dbg !3128
  store i32 %or545, ptr %i_cbp_luma, align 8, !dbg !3128
  br label %for.inc554, !dbg !3129

for.inc554:                                       ; preds = %for.inc554.sink.split, %if.then530, %x264_quant_8x8.exit
  %i_decimate_mb.1 = phi i32 [ 0, %x264_quant_8x8.exit ], [ %call537, %if.then530 ], [ %i_decimate_mb.1.ph, %for.inc554.sink.split ], !dbg !3027
    #dbg_value(i32 %i_decimate_mb.1, !2410, !DIExpression(), !3027)
    #dbg_value(i64 1, !2426, !DIExpression(), !3091)
  %240 = load i32, ptr %b_noise_reduction, align 4, !dbg !3129
  %tobool504.not.1 = icmp eq i32 %240, 0, !dbg !3092
  br i1 %tobool504.not.1, label %if.end513.1, label %if.then505.1, !dbg !3094

if.then505.1:                                     ; preds = %for.inc554
  %241 = load ptr, ptr %denoise_dct, align 8, !dbg !3102
  %arrayidx507.1 = getelementptr inbounds i8, ptr %dct8x8, i64 128, !dbg !3130
  call void %241(ptr noundef nonnull %arrayidx507.1, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6, !dbg !3103
  br label %if.end513.1, !dbg !3103

if.end513.1:                                      ; preds = %if.then505.1, %for.inc554
  %arrayidx515.1 = getelementptr inbounds i8, ptr %dct8x8, i64 128, !dbg !3131
    #dbg_value(ptr %h, !1645, !DIExpression(), !3104)
    #dbg_value(ptr %arrayidx515.1, !1650, !DIExpression(), !3104)
    #dbg_value(i32 %0, !1651, !DIExpression(), !3104)
    #dbg_value(i32 0, !1652, !DIExpression(), !3104)
    #dbg_value(i64 1, !1653, !DIExpression(), !3104)
    #dbg_value(i1 true, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3104)
  %242 = load i32, ptr %b_trellis, align 16, !dbg !3106
  %tobool1.not.i.1 = icmp eq i32 %242, 0, !dbg !3107
  br i1 %tobool1.not.i.1, label %if.else.i1422.1, label %if.then.i1420.1, !dbg !3108

if.then.i1420.1:                                  ; preds = %if.end513.1
    #dbg_value(i32 1, !1654, !DIExpression(), !3104)
  %call.i1421.1 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.1, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 1) #6, !dbg !3109
  br label %x264_quant_8x8.exit.1, !dbg !3110

if.else.i1422.1:                                  ; preds = %if.end513.1
  %243 = load ptr, ptr %quantf.i, align 8, !dbg !3111
  %244 = load ptr, ptr %arrayidx.i1423, align 8, !dbg !3112
  %arrayidx3.i1424.1 = getelementptr inbounds [64 x i16], ptr %244, i64 %idxprom2.i, !dbg !3112
  %245 = load ptr, ptr %arrayidx5.i1425, align 8, !dbg !3113
  %arrayidx7.i1426.1 = getelementptr inbounds [64 x i16], ptr %245, i64 %idxprom2.i, !dbg !3113
  %call9.i.1 = call i32 %243(ptr noundef nonnull %arrayidx515.1, ptr noundef %arrayidx3.i1424.1, ptr noundef %arrayidx7.i1426.1) #6, !dbg !3114
  br label %x264_quant_8x8.exit.1, !dbg !3115

x264_quant_8x8.exit.1:                            ; preds = %if.else.i1422.1, %if.then.i1420.1
  %retval.0.i.1 = phi i32 [ %call.i1421.1, %if.then.i1420.1 ], [ %call9.i.1, %if.else.i1422.1 ], !dbg !3116
    #dbg_value(i32 %retval.0.i.1, !2386, !DIExpression(), !2497)
  %tobool518.not.1 = icmp eq i32 %retval.0.i.1, 0, !dbg !3117
  br i1 %tobool518.not.1, label %for.inc554.1, label %if.then519.1, !dbg !3118

if.then519.1:                                     ; preds = %x264_quant_8x8.exit.1
  %246 = load ptr, ptr %zigzagf520, align 8, !dbg !3119
  %arrayidx524.1 = getelementptr inbounds i8, ptr %h, i64 15216, !dbg !3132
  call void %246(ptr noundef nonnull %arrayidx524.1, ptr noundef nonnull %arrayidx515.1) #6, !dbg !3120
  br i1 %tobool529.not, label %for.inc554.1.sink.split, label %if.then530.1, !dbg !3121

if.then530.1:                                     ; preds = %if.then519.1
  %247 = load ptr, ptr %decimate_score64, align 8, !dbg !3122
  %call537.1 = call i32 %247(ptr noundef nonnull %arrayidx524.1) #6, !dbg !3123
    #dbg_value(i32 %call537.1, !2428, !DIExpression(), !3124)
  %add538.1 = add nsw i32 %call537.1, %i_decimate_mb.1, !dbg !3133
    #dbg_value(i32 %add538.1, !2410, !DIExpression(), !3027)
  %cmp539.1 = icmp sgt i32 %call537.1, 3, !dbg !3125
  br i1 %cmp539.1, label %for.inc554.1.sink.split, label %for.inc554.1, !dbg !3127

for.inc554.1.sink.split:                          ; preds = %if.then519.1, %if.then530.1
  %i_decimate_mb.1.1.ph = phi i32 [ %add538.1, %if.then530.1 ], [ %i_decimate_mb.1, %if.then519.1 ]
  %248 = load i32, ptr %i_cbp_luma, align 8, !dbg !3128
  %or551.1 = or i32 %248, 2, !dbg !3128
  store i32 %or551.1, ptr %i_cbp_luma, align 8, !dbg !3128
  br label %for.inc554.1, !dbg !3129

for.inc554.1:                                     ; preds = %for.inc554.1.sink.split, %if.then530.1, %x264_quant_8x8.exit.1
  %i_decimate_mb.1.1 = phi i32 [ %i_decimate_mb.1, %x264_quant_8x8.exit.1 ], [ %add538.1, %if.then530.1 ], [ %i_decimate_mb.1.1.ph, %for.inc554.1.sink.split ], !dbg !3027
    #dbg_value(i32 %i_decimate_mb.1.1, !2410, !DIExpression(), !3027)
    #dbg_value(i64 2, !2426, !DIExpression(), !3091)
  %249 = load i32, ptr %b_noise_reduction, align 4, !dbg !3129
  %tobool504.not.2 = icmp eq i32 %249, 0, !dbg !3092
  br i1 %tobool504.not.2, label %if.end513.2, label %if.then505.2, !dbg !3094

if.then505.2:                                     ; preds = %for.inc554.1
  %250 = load ptr, ptr %denoise_dct, align 8, !dbg !3102
  %arrayidx507.2 = getelementptr inbounds i8, ptr %dct8x8, i64 256, !dbg !3130
  call void %250(ptr noundef nonnull %arrayidx507.2, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6, !dbg !3103
  br label %if.end513.2, !dbg !3103

if.end513.2:                                      ; preds = %if.then505.2, %for.inc554.1
  %arrayidx515.2 = getelementptr inbounds i8, ptr %dct8x8, i64 256, !dbg !3131
    #dbg_value(ptr %h, !1645, !DIExpression(), !3104)
    #dbg_value(ptr %arrayidx515.2, !1650, !DIExpression(), !3104)
    #dbg_value(i32 %0, !1651, !DIExpression(), !3104)
    #dbg_value(i32 0, !1652, !DIExpression(), !3104)
    #dbg_value(i64 2, !1653, !DIExpression(), !3104)
    #dbg_value(i1 true, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3104)
  %251 = load i32, ptr %b_trellis, align 16, !dbg !3106
  %tobool1.not.i.2 = icmp eq i32 %251, 0, !dbg !3107
  br i1 %tobool1.not.i.2, label %if.else.i1422.2, label %if.then.i1420.2, !dbg !3108

if.then.i1420.2:                                  ; preds = %if.end513.2
    #dbg_value(i32 1, !1654, !DIExpression(), !3104)
  %call.i1421.2 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.2, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 2) #6, !dbg !3109
  br label %x264_quant_8x8.exit.2, !dbg !3110

if.else.i1422.2:                                  ; preds = %if.end513.2
  %252 = load ptr, ptr %quantf.i, align 8, !dbg !3111
  %253 = load ptr, ptr %arrayidx.i1423, align 8, !dbg !3112
  %arrayidx3.i1424.2 = getelementptr inbounds [64 x i16], ptr %253, i64 %idxprom2.i, !dbg !3112
  %254 = load ptr, ptr %arrayidx5.i1425, align 8, !dbg !3113
  %arrayidx7.i1426.2 = getelementptr inbounds [64 x i16], ptr %254, i64 %idxprom2.i, !dbg !3113
  %call9.i.2 = call i32 %252(ptr noundef nonnull %arrayidx515.2, ptr noundef %arrayidx3.i1424.2, ptr noundef %arrayidx7.i1426.2) #6, !dbg !3114
  br label %x264_quant_8x8.exit.2, !dbg !3115

x264_quant_8x8.exit.2:                            ; preds = %if.else.i1422.2, %if.then.i1420.2
  %retval.0.i.2 = phi i32 [ %call.i1421.2, %if.then.i1420.2 ], [ %call9.i.2, %if.else.i1422.2 ], !dbg !3116
    #dbg_value(i32 %retval.0.i.2, !2386, !DIExpression(), !2497)
  %tobool518.not.2 = icmp eq i32 %retval.0.i.2, 0, !dbg !3117
  br i1 %tobool518.not.2, label %for.inc554.2, label %if.then519.2, !dbg !3118

if.then519.2:                                     ; preds = %x264_quant_8x8.exit.2
  %255 = load ptr, ptr %zigzagf520, align 8, !dbg !3119
  %arrayidx524.2 = getelementptr inbounds i8, ptr %h, i64 15344, !dbg !3132
  call void %255(ptr noundef nonnull %arrayidx524.2, ptr noundef nonnull %arrayidx515.2) #6, !dbg !3120
  br i1 %tobool529.not, label %for.inc554.2.sink.split, label %if.then530.2, !dbg !3121

if.then530.2:                                     ; preds = %if.then519.2
  %256 = load ptr, ptr %decimate_score64, align 8, !dbg !3122
  %call537.2 = call i32 %256(ptr noundef nonnull %arrayidx524.2) #6, !dbg !3123
    #dbg_value(i32 %call537.2, !2428, !DIExpression(), !3124)
  %add538.2 = add nsw i32 %call537.2, %i_decimate_mb.1.1, !dbg !3133
    #dbg_value(i32 %add538.2, !2410, !DIExpression(), !3027)
  %cmp539.2 = icmp sgt i32 %call537.2, 3, !dbg !3125
  br i1 %cmp539.2, label %for.inc554.2.sink.split, label %for.inc554.2, !dbg !3127

for.inc554.2.sink.split:                          ; preds = %if.then519.2, %if.then530.2
  %i_decimate_mb.1.2.ph = phi i32 [ %add538.2, %if.then530.2 ], [ %i_decimate_mb.1.1, %if.then519.2 ]
  %257 = load i32, ptr %i_cbp_luma, align 8, !dbg !3128
  %or551.2 = or i32 %257, 4, !dbg !3128
  store i32 %or551.2, ptr %i_cbp_luma, align 8, !dbg !3128
  br label %for.inc554.2, !dbg !3129

for.inc554.2:                                     ; preds = %for.inc554.2.sink.split, %if.then530.2, %x264_quant_8x8.exit.2
  %i_decimate_mb.1.2 = phi i32 [ %i_decimate_mb.1.1, %x264_quant_8x8.exit.2 ], [ %add538.2, %if.then530.2 ], [ %i_decimate_mb.1.2.ph, %for.inc554.2.sink.split ], !dbg !3027
    #dbg_value(i32 %i_decimate_mb.1.2, !2410, !DIExpression(), !3027)
    #dbg_value(i64 3, !2426, !DIExpression(), !3091)
  %258 = load i32, ptr %b_noise_reduction, align 4, !dbg !3129
  %tobool504.not.3 = icmp eq i32 %258, 0, !dbg !3092
  br i1 %tobool504.not.3, label %if.end513.3, label %if.then505.3, !dbg !3094

if.then505.3:                                     ; preds = %for.inc554.2
  %259 = load ptr, ptr %denoise_dct, align 8, !dbg !3102
  %arrayidx507.3 = getelementptr inbounds i8, ptr %dct8x8, i64 384, !dbg !3130
  call void %259(ptr noundef nonnull %arrayidx507.3, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6, !dbg !3103
  br label %if.end513.3, !dbg !3103

if.end513.3:                                      ; preds = %if.then505.3, %for.inc554.2
  %arrayidx515.3 = getelementptr inbounds i8, ptr %dct8x8, i64 384, !dbg !3131
    #dbg_value(ptr %h, !1645, !DIExpression(), !3104)
    #dbg_value(ptr %arrayidx515.3, !1650, !DIExpression(), !3104)
    #dbg_value(i32 %0, !1651, !DIExpression(), !3104)
    #dbg_value(i32 0, !1652, !DIExpression(), !3104)
    #dbg_value(i64 3, !1653, !DIExpression(), !3104)
    #dbg_value(i1 true, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3104)
  %260 = load i32, ptr %b_trellis, align 16, !dbg !3106
  %tobool1.not.i.3 = icmp eq i32 %260, 0, !dbg !3107
  br i1 %tobool1.not.i.3, label %if.else.i1422.3, label %if.then.i1420.3, !dbg !3108

if.then.i1420.3:                                  ; preds = %if.end513.3
    #dbg_value(i32 1, !1654, !DIExpression(), !3104)
  %call.i1421.3 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.3, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 3) #6, !dbg !3109
  br label %x264_quant_8x8.exit.3, !dbg !3110

if.else.i1422.3:                                  ; preds = %if.end513.3
  %261 = load ptr, ptr %quantf.i, align 8, !dbg !3111
  %262 = load ptr, ptr %arrayidx.i1423, align 8, !dbg !3112
  %arrayidx3.i1424.3 = getelementptr inbounds [64 x i16], ptr %262, i64 %idxprom2.i, !dbg !3112
  %263 = load ptr, ptr %arrayidx5.i1425, align 8, !dbg !3113
  %arrayidx7.i1426.3 = getelementptr inbounds [64 x i16], ptr %263, i64 %idxprom2.i, !dbg !3113
  %call9.i.3 = call i32 %261(ptr noundef nonnull %arrayidx515.3, ptr noundef %arrayidx3.i1424.3, ptr noundef %arrayidx7.i1426.3) #6, !dbg !3114
  br label %x264_quant_8x8.exit.3, !dbg !3115

x264_quant_8x8.exit.3:                            ; preds = %if.else.i1422.3, %if.then.i1420.3
  %retval.0.i.3 = phi i32 [ %call.i1421.3, %if.then.i1420.3 ], [ %call9.i.3, %if.else.i1422.3 ], !dbg !3116
    #dbg_value(i32 %retval.0.i.3, !2386, !DIExpression(), !2497)
  %tobool518.not.3 = icmp eq i32 %retval.0.i.3, 0, !dbg !3117
  br i1 %tobool518.not.3, label %for.inc554.3, label %if.then519.3, !dbg !3118

if.then519.3:                                     ; preds = %x264_quant_8x8.exit.3
  %264 = load ptr, ptr %zigzagf520, align 8, !dbg !3119
  %arrayidx524.3 = getelementptr inbounds i8, ptr %h, i64 15472, !dbg !3132
  call void %264(ptr noundef nonnull %arrayidx524.3, ptr noundef nonnull %arrayidx515.3) #6, !dbg !3120
  br i1 %tobool529.not, label %for.inc554.3.thread, label %if.then530.3, !dbg !3121

if.then530.3:                                     ; preds = %if.then519.3
  %265 = load ptr, ptr %decimate_score64, align 8, !dbg !3122
  %call537.3 = call i32 %265(ptr noundef nonnull %arrayidx524.3) #6, !dbg !3123
    #dbg_value(i32 %call537.3, !2428, !DIExpression(), !3124)
  %add538.3 = add nsw i32 %call537.3, %i_decimate_mb.1.2, !dbg !3133
    #dbg_value(i32 %add538.3, !2410, !DIExpression(), !3027)
  %cmp539.3 = icmp sgt i32 %call537.3, 3, !dbg !3125
  br i1 %cmp539.3, label %if.then541.3, label %for.inc554.3, !dbg !3127

if.then541.3:                                     ; preds = %if.then530.3
  %266 = load i32, ptr %i_cbp_luma, align 8, !dbg !3134
  %or545.3 = or i32 %266, 8, !dbg !3134
  store i32 %or545.3, ptr %i_cbp_luma, align 8, !dbg !3134
  br label %for.inc554.3, !dbg !3135

for.inc554.3.thread:                              ; preds = %if.then519.3
  %267 = load i32, ptr %i_cbp_luma, align 8, !dbg !3136
  %or551.3 = or i32 %267, 8, !dbg !3136
  store i32 %or551.3, ptr %i_cbp_luma, align 8, !dbg !3136
    #dbg_value(i32 %i_decimate_mb.1.2, !2410, !DIExpression(), !3027)
    #dbg_value(i64 4, !2426, !DIExpression(), !3091)
  br label %for.cond586.preheader, !dbg !3137

for.inc554.3:                                     ; preds = %if.then541.3, %if.then530.3, %x264_quant_8x8.exit.3
  %i_decimate_mb.1.3 = phi i32 [ %i_decimate_mb.1.2, %x264_quant_8x8.exit.3 ], [ %add538.3, %if.then541.3 ], [ %add538.3, %if.then530.3 ], !dbg !3027
    #dbg_value(i32 %i_decimate_mb.1.3, !2410, !DIExpression(), !3027)
    #dbg_value(i64 4, !2426, !DIExpression(), !3091)
  %cmp557 = icmp slt i32 %i_decimate_mb.1.3, 6, !dbg !3138
  %tobool560 = icmp ne i32 %and483, 0
  %or.cond = select i1 %cmp557, i1 %tobool560, i1 false, !dbg !3137
  br i1 %or.cond, label %if.then561, label %for.cond586.preheader, !dbg !3137

if.then561:                                       ; preds = %for.inc554.3
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !3139
  %arrayidx568 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3141
  store i32 0, ptr %arrayidx568, align 1, !dbg !3141
  %arrayidx573 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3141
  store i32 0, ptr %arrayidx573, align 1, !dbg !3141
  %arrayidx578 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3141
  store i32 0, ptr %arrayidx578, align 1, !dbg !3141
  %arrayidx583 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3141
  store i32 0, ptr %arrayidx583, align 1, !dbg !3141
  br label %if.end659, !dbg !3143

if.then596:                                       ; preds = %for.cond586.preheader
  %268 = load ptr, ptr %dequant_8x8, align 8, !dbg !3144
  %269 = load ptr, ptr %arrayidx601, align 8, !dbg !3146
  call void %268(ptr noundef nonnull %dct8x8, ptr noundef %269, i32 noundef %0) #6, !dbg !3147
  %270 = load ptr, ptr %add8x8_idct8, align 16, !dbg !3148
  %271 = load ptr, ptr %p_fdec491, align 16, !dbg !3149
  call void %270(ptr noundef %271, ptr noundef nonnull %dct8x8) #6, !dbg !3150
  %.pre1533 = load i32, ptr %i_cbp_luma, align 8, !dbg !3096
  br label %for.inc656, !dbg !3151

for.inc656:                                       ; preds = %for.cond586.preheader, %if.then596
  %272 = phi i32 [ %.pre1533, %if.then596 ], [ %231, %for.cond586.preheader ], !dbg !3096
  %.sink1525 = phi i16 [ 257, %if.then596 ], [ 0, %for.cond586.preheader ], !dbg !3152
  %273 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3152
  store i16 %.sink1525, ptr %273, align 1, !dbg !3152
  %274 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3152
  store i16 %.sink1525, ptr %274, align 1, !dbg !3152
    #dbg_value(i64 1, !2435, !DIExpression(), !3095)
  %and594.1 = and i32 %272, 2, !dbg !3100
  %tobool595.not.1 = icmp eq i32 %and594.1, 0, !dbg !3100
  br i1 %tobool595.not.1, label %for.inc656.1, label %if.then596.1, !dbg !3101

if.then596.1:                                     ; preds = %for.inc656
  %275 = load ptr, ptr %dequant_8x8, align 8, !dbg !3144
  %276 = load ptr, ptr %arrayidx601, align 8, !dbg !3146
  call void %275(ptr noundef nonnull %arrayidx515.1, ptr noundef %276, i32 noundef %0) #6, !dbg !3147
  %277 = load ptr, ptr %add8x8_idct8, align 16, !dbg !3148
  %278 = load ptr, ptr %p_fdec491, align 16, !dbg !3149
  %arrayidx614.1 = getelementptr inbounds i8, ptr %278, i64 8, !dbg !3149
  call void %277(ptr noundef nonnull %arrayidx614.1, ptr noundef nonnull %arrayidx515.1) #6, !dbg !3150
  %.pre1534 = load i32, ptr %i_cbp_luma, align 8, !dbg !3096
  br label %for.inc656.1, !dbg !3151

for.inc656.1:                                     ; preds = %for.inc656, %if.then596.1
  %279 = phi i32 [ %.pre1534, %if.then596.1 ], [ %272, %for.inc656 ], !dbg !3096
  %.sink1527 = phi i16 [ 257, %if.then596.1 ], [ 0, %for.inc656 ], !dbg !3152
  %280 = getelementptr inbounds i8, ptr %h, i64 25086, !dbg !3152
  store i16 %.sink1527, ptr %280, align 1, !dbg !3152
  %281 = getelementptr inbounds i8, ptr %h, i64 25094, !dbg !3152
  store i16 %.sink1527, ptr %281, align 1, !dbg !3152
    #dbg_value(i64 2, !2435, !DIExpression(), !3095)
  %and594.2 = and i32 %279, 4, !dbg !3100
  %tobool595.not.2 = icmp eq i32 %and594.2, 0, !dbg !3100
  br i1 %tobool595.not.2, label %for.inc656.2, label %if.then596.2, !dbg !3101

if.then596.2:                                     ; preds = %for.inc656.1
  %282 = load ptr, ptr %dequant_8x8, align 8, !dbg !3144
  %283 = load ptr, ptr %arrayidx601, align 8, !dbg !3146
  call void %282(ptr noundef nonnull %arrayidx515.2, ptr noundef %283, i32 noundef %0) #6, !dbg !3147
  %284 = load ptr, ptr %add8x8_idct8, align 16, !dbg !3148
  %285 = load ptr, ptr %p_fdec491, align 16, !dbg !3149
  %arrayidx614.2 = getelementptr inbounds i8, ptr %285, i64 256, !dbg !3149
  call void %284(ptr noundef nonnull %arrayidx614.2, ptr noundef nonnull %arrayidx515.2) #6, !dbg !3150
  %.pre1535 = load i32, ptr %i_cbp_luma, align 8, !dbg !3096
  br label %for.inc656.2, !dbg !3151

for.inc656.2:                                     ; preds = %for.inc656.1, %if.then596.2
  %286 = phi i32 [ %.pre1535, %if.then596.2 ], [ %279, %for.inc656.1 ], !dbg !3096
  %.sink1529 = phi i16 [ 257, %if.then596.2 ], [ 0, %for.inc656.1 ], !dbg !3152
  %287 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3152
  store i16 %.sink1529, ptr %287, align 1, !dbg !3152
  %288 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3152
  store i16 %.sink1529, ptr %288, align 1, !dbg !3152
    #dbg_value(i64 3, !2435, !DIExpression(), !3095)
  %and594.3 = and i32 %286, 8, !dbg !3100
  %tobool595.not.3 = icmp eq i32 %and594.3, 0, !dbg !3100
  br i1 %tobool595.not.3, label %for.inc656.3, label %if.then596.3, !dbg !3101

if.then596.3:                                     ; preds = %for.inc656.2
  %289 = load ptr, ptr %dequant_8x8, align 8, !dbg !3144
  %290 = load ptr, ptr %arrayidx601, align 8, !dbg !3146
  call void %289(ptr noundef nonnull %arrayidx515.3, ptr noundef %290, i32 noundef %0) #6, !dbg !3147
  %291 = load ptr, ptr %add8x8_idct8, align 16, !dbg !3148
  %292 = load ptr, ptr %p_fdec491, align 16, !dbg !3149
  %arrayidx614.3 = getelementptr inbounds i8, ptr %292, i64 264, !dbg !3149
  call void %291(ptr noundef nonnull %arrayidx614.3, ptr noundef nonnull %arrayidx515.3) #6, !dbg !3150
  br label %for.inc656.3, !dbg !3151

for.inc656.3:                                     ; preds = %for.inc656.2, %if.then596.3
  %.sink1531 = phi i16 [ 257, %if.then596.3 ], [ 0, %for.inc656.2 ], !dbg !3152
  %293 = getelementptr inbounds i8, ptr %h, i64 25102, !dbg !3152
  store i16 %.sink1531, ptr %293, align 1, !dbg !3152
  %294 = getelementptr inbounds i8, ptr %h, i64 25110, !dbg !3152
  store i16 %.sink1531, ptr %294, align 1, !dbg !3152
    #dbg_value(i64 4, !2435, !DIExpression(), !3095)
  br label %if.end659, !dbg !3153

if.end659:                                        ; preds = %for.inc656.3, %if.then561
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct8x8) #6, !dbg !3153
  br label %if.end880, !dbg !3154

if.else660:                                       ; preds = %if.else476
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct4x4) #6, !dbg !3155
  %sub16x16_dct = getelementptr inbounds i8, ptr %h, i64 32960, !dbg !3156
  %295 = load ptr, ptr %sub16x16_dct, align 16, !dbg !3156
  %p_fenc665 = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !3157
  %296 = load ptr, ptr %p_fenc665, align 16, !dbg !3158
  %p_fdec669 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3159
  %297 = load ptr, ptr %p_fdec669, align 16, !dbg !3160
  call void %295(ptr noundef nonnull %dct4x4, ptr noundef %296, ptr noundef %297) #6, !dbg !3161
  %b_noise_reduction672 = getelementptr inbounds i8, ptr %h, i64 16420, !dbg !3162
  %298 = load i32, ptr %b_noise_reduction672, align 4, !dbg !3162
  %mul673 = shl nsw i32 %298, 4, !dbg !3163
  %nr_count674 = getelementptr inbounds i8, ptr %h, i64 31168, !dbg !3164
  %299 = load i32, ptr %nr_count674, align 16, !dbg !3165
  %add676 = add i32 %299, %mul673, !dbg !3165
  store i32 %add676, ptr %nr_count674, align 16, !dbg !3165
    #dbg_value(i32 0, !2441, !DIExpression(), !3166)
  %denoise_dct698 = getelementptr inbounds i8, ptr %h, i64 33136
  %nr_residual_sum702 = getelementptr inbounds i8, ptr %h, i64 30400
  %nr_offset705 = getelementptr inbounds i8, ptr %h, i64 30912
  %b_trellis.i1427 = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx.i1433 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom2.i1434 = sext i32 %0 to i64
  %arrayidx5.i1436 = getelementptr inbounds i8, ptr %h, i64 3496
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4725 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx736 = getelementptr inbounds i8, ptr %h, i64 3352
  %tobool737 = icmp ne i32 %1, 0
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
    #dbg_value(i32 0, !2410, !DIExpression(), !3027)
  %tobool756.not = icmp eq i32 %1, 0
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944
  br label %for.cond685.preheader, !dbg !3167

for.cond685.preheader:                            ; preds = %if.else660, %if.end809
  %indvars.iv1510 = phi i64 [ 0, %if.else660 ], [ %indvars.iv.next1511, %if.end809 ]
  %i_decimate_mb.21470 = phi i32 [ 0, %if.else660 ], [ %add7551554, %if.end809 ]
    #dbg_value(i64 %indvars.iv1510, !2441, !DIExpression(), !3166)
    #dbg_value(i32 %i_decimate_mb.21470, !2410, !DIExpression(), !3027)
  %300 = shl nuw nsw i64 %indvars.iv1510, 2
    #dbg_value(i64 0, !2447, !DIExpression(), !3168)
    #dbg_value(i32 0, !2446, !DIExpression(), !3169)
    #dbg_value(i32 0, !2443, !DIExpression(), !3169)
    #dbg_value(i64 %300, !2449, !DIExpression(), !3170)
  %301 = load i32, ptr %b_noise_reduction672, align 4, !dbg !3171
  %tobool695.not = icmp eq i32 %301, 0, !dbg !3173
  br i1 %tobool695.not, label %if.end708, label %if.then696, !dbg !3174

for.cond.cleanup681:                              ; preds = %if.end809
  br i1 %tobool756.not, label %if.end875, label %if.then814, !dbg !3175

if.then696:                                       ; preds = %for.cond685.preheader
  %302 = load ptr, ptr %denoise_dct698, align 8, !dbg !3176
  %arrayidx700 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %300, !dbg !3177
  call void %302(ptr noundef nonnull %arrayidx700, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6, !dbg !3178
  br label %if.end708, !dbg !3178

if.end708:                                        ; preds = %if.then696, %for.cond685.preheader
  %arrayidx710 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %300, !dbg !3179
    #dbg_value(ptr %h, !1552, !DIExpression(), !3180)
    #dbg_value(ptr %arrayidx710, !1557, !DIExpression(), !3180)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3180)
    #dbg_value(i32 2, !1559, !DIExpression(), !3180)
    #dbg_value(i32 0, !1560, !DIExpression(), !3180)
    #dbg_value(i64 %300, !1561, !DIExpression(), !3180)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3180)
  %303 = load i32, ptr %b_trellis.i1427, align 16, !dbg !3182
  %tobool1.not.i1428 = icmp eq i32 %303, 0, !dbg !3183
  br i1 %tobool1.not.i1428, label %if.else.i1432, label %if.then.i1429, !dbg !3184

if.then.i1429:                                    ; preds = %if.end708
    #dbg_value(i32 1, !1562, !DIExpression(), !3180)
  %304 = trunc nuw nsw i64 %300 to i32, !dbg !3185
  %call.i1430 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %304) #6, !dbg !3185
  br label %x264_quant_4x4.exit, !dbg !3186

if.else.i1432:                                    ; preds = %if.end708
  %305 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3187
  %306 = load ptr, ptr %arrayidx.i1433, align 8, !dbg !3188
  %arrayidx3.i1435 = getelementptr inbounds [16 x i16], ptr %306, i64 %idxprom2.i1434, !dbg !3188
  %307 = load ptr, ptr %arrayidx5.i1436, align 8, !dbg !3189
  %arrayidx7.i1437 = getelementptr inbounds [16 x i16], ptr %307, i64 %idxprom2.i1434, !dbg !3189
  %call9.i1438 = call i32 %305(ptr noundef nonnull %arrayidx710, ptr noundef %arrayidx3.i1435, ptr noundef %arrayidx7.i1437) #6, !dbg !3190
  br label %x264_quant_4x4.exit, !dbg !3191

x264_quant_4x4.exit:                              ; preds = %if.then.i1429, %if.else.i1432
  %retval.0.i1431 = phi i32 [ %call.i1430, %if.then.i1429 ], [ %call9.i1438, %if.else.i1432 ], !dbg !3192
    #dbg_value(i32 %retval.0.i1431, !2386, !DIExpression(), !2497)
  %conv713 = trunc i32 %retval.0.i1431 to i8, !dbg !3193
  %arrayidx718 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %300, !dbg !3194
  %308 = load i32, ptr %arrayidx718, align 16, !dbg !3194
  %idxprom719 = sext i32 %308 to i64, !dbg !3195
  %arrayidx720 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719, !dbg !3195
  store i8 %conv713, ptr %arrayidx720, align 1, !dbg !3196
  %tobool721.not = icmp eq i32 %retval.0.i1431, 0, !dbg !3197
  br i1 %tobool721.not, label %if.end751, label %if.then722, !dbg !3199

if.then722:                                       ; preds = %x264_quant_4x4.exit
  %309 = load ptr, ptr %scan_4x4, align 8, !dbg !3200
  %arrayidx727 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %300, !dbg !3202
  call void %309(ptr noundef nonnull %arrayidx727, ptr noundef nonnull %arrayidx710) #6, !dbg !3203
  %310 = load ptr, ptr %dequant_4x4, align 8, !dbg !3204
  %311 = load ptr, ptr %arrayidx736, align 8, !dbg !3205
  call void %310(ptr noundef nonnull %arrayidx710, ptr noundef %311, i32 noundef %0) #6, !dbg !3206
  br i1 %tobool737, label %if.then741, label %if.end751, !dbg !3207

if.then741:                                       ; preds = %if.then722
  %312 = load ptr, ptr %decimate_score16, align 8, !dbg !3209
  %call748 = call i32 %312(ptr noundef nonnull %arrayidx727) #6, !dbg !3210
    #dbg_value(i32 %call748, !2443, !DIExpression(), !3169)
  br label %if.end751, !dbg !3211

if.end751:                                        ; preds = %if.then722, %if.then741, %x264_quant_4x4.exit
  %i_decimate_8x8683.2 = phi i32 [ 0, %x264_quant_4x4.exit ], [ %call748, %if.then741 ], [ 0, %if.then722 ], !dbg !3169
  %cbp.1 = phi i32 [ 0, %x264_quant_4x4.exit ], [ 1, %if.then741 ], [ 1, %if.then722 ], !dbg !3169
    #dbg_value(i32 %cbp.1, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %i_decimate_8x8683.2, !2443, !DIExpression(), !3169)
    #dbg_value(i64 1, !2447, !DIExpression(), !3168)
  %313 = or disjoint i64 %300, 1, !dbg !3212
    #dbg_value(i64 %313, !2449, !DIExpression(), !3170)
  %314 = load i32, ptr %b_noise_reduction672, align 4, !dbg !3171
  %tobool695.not.1 = icmp eq i32 %314, 0, !dbg !3173
  br i1 %tobool695.not.1, label %if.end708.1, label %if.then696.1, !dbg !3174

if.then696.1:                                     ; preds = %if.end751
  %315 = load ptr, ptr %denoise_dct698, align 8, !dbg !3176
  %arrayidx700.1 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %313, !dbg !3177
  call void %315(ptr noundef nonnull %arrayidx700.1, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6, !dbg !3178
  br label %if.end708.1, !dbg !3178

if.end708.1:                                      ; preds = %if.then696.1, %if.end751
  %arrayidx710.1 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %313, !dbg !3179
    #dbg_value(ptr %h, !1552, !DIExpression(), !3180)
    #dbg_value(ptr %arrayidx710.1, !1557, !DIExpression(), !3180)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3180)
    #dbg_value(i32 2, !1559, !DIExpression(), !3180)
    #dbg_value(i32 0, !1560, !DIExpression(), !3180)
    #dbg_value(i64 %313, !1561, !DIExpression(), !3180)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3180)
  %316 = load i32, ptr %b_trellis.i1427, align 16, !dbg !3182
  %tobool1.not.i1428.1 = icmp eq i32 %316, 0, !dbg !3183
  br i1 %tobool1.not.i1428.1, label %if.else.i1432.1, label %if.then.i1429.1, !dbg !3184

if.then.i1429.1:                                  ; preds = %if.end708.1
    #dbg_value(i32 1, !1562, !DIExpression(), !3180)
  %317 = trunc nuw nsw i64 %313 to i32, !dbg !3185
  %call.i1430.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.1, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %317) #6, !dbg !3185
  br label %x264_quant_4x4.exit.1, !dbg !3186

if.else.i1432.1:                                  ; preds = %if.end708.1
  %318 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3187
  %319 = load ptr, ptr %arrayidx.i1433, align 8, !dbg !3188
  %arrayidx3.i1435.1 = getelementptr inbounds [16 x i16], ptr %319, i64 %idxprom2.i1434, !dbg !3188
  %320 = load ptr, ptr %arrayidx5.i1436, align 8, !dbg !3189
  %arrayidx7.i1437.1 = getelementptr inbounds [16 x i16], ptr %320, i64 %idxprom2.i1434, !dbg !3189
  %call9.i1438.1 = call i32 %318(ptr noundef nonnull %arrayidx710.1, ptr noundef %arrayidx3.i1435.1, ptr noundef %arrayidx7.i1437.1) #6, !dbg !3190
  br label %x264_quant_4x4.exit.1, !dbg !3191

x264_quant_4x4.exit.1:                            ; preds = %if.else.i1432.1, %if.then.i1429.1
  %retval.0.i1431.1 = phi i32 [ %call.i1430.1, %if.then.i1429.1 ], [ %call9.i1438.1, %if.else.i1432.1 ], !dbg !3192
    #dbg_value(i32 %retval.0.i1431.1, !2386, !DIExpression(), !2497)
  %conv713.1 = trunc i32 %retval.0.i1431.1 to i8, !dbg !3193
  %arrayidx718.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %313, !dbg !3194
  %321 = load i32, ptr %arrayidx718.1, align 4, !dbg !3194
  %idxprom719.1 = sext i32 %321 to i64, !dbg !3195
  %arrayidx720.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.1, !dbg !3195
  store i8 %conv713.1, ptr %arrayidx720.1, align 1, !dbg !3196
  %tobool721.not.1 = icmp eq i32 %retval.0.i1431.1, 0, !dbg !3197
  br i1 %tobool721.not.1, label %if.end751.1, label %if.then722.1, !dbg !3199

if.then722.1:                                     ; preds = %x264_quant_4x4.exit.1
  %322 = load ptr, ptr %scan_4x4, align 8, !dbg !3200
  %arrayidx727.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %313, !dbg !3202
  call void %322(ptr noundef nonnull %arrayidx727.1, ptr noundef nonnull %arrayidx710.1) #6, !dbg !3203
  %323 = load ptr, ptr %dequant_4x4, align 8, !dbg !3204
  %324 = load ptr, ptr %arrayidx736, align 8, !dbg !3205
  call void %323(ptr noundef nonnull %arrayidx710.1, ptr noundef %324, i32 noundef %0) #6, !dbg !3206
  %cmp739.1 = icmp slt i32 %i_decimate_8x8683.2, 6
  %or.cond1045.1 = select i1 %tobool737, i1 %cmp739.1, i1 false, !dbg !3207
  br i1 %or.cond1045.1, label %if.then741.1, label %if.end751.1, !dbg !3207

if.then741.1:                                     ; preds = %if.then722.1
  %325 = load ptr, ptr %decimate_score16, align 8, !dbg !3209
  %call748.1 = call i32 %325(ptr noundef nonnull %arrayidx727.1) #6, !dbg !3210
  %add749.1 = add nsw i32 %call748.1, %i_decimate_8x8683.2, !dbg !3213
    #dbg_value(i32 %add749.1, !2443, !DIExpression(), !3169)
  br label %if.end751.1, !dbg !3211

if.end751.1:                                      ; preds = %if.then741.1, %if.then722.1, %x264_quant_4x4.exit.1
  %i_decimate_8x8683.2.1 = phi i32 [ %i_decimate_8x8683.2, %x264_quant_4x4.exit.1 ], [ %add749.1, %if.then741.1 ], [ %i_decimate_8x8683.2, %if.then722.1 ], !dbg !3169
  %cbp.1.1 = phi i32 [ %cbp.1, %x264_quant_4x4.exit.1 ], [ 1, %if.then741.1 ], [ 1, %if.then722.1 ], !dbg !3169
    #dbg_value(i32 %cbp.1.1, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %i_decimate_8x8683.2.1, !2443, !DIExpression(), !3169)
    #dbg_value(i64 2, !2447, !DIExpression(), !3168)
  %326 = or disjoint i64 %300, 2, !dbg !3212
    #dbg_value(i64 %326, !2449, !DIExpression(), !3170)
  %327 = load i32, ptr %b_noise_reduction672, align 4, !dbg !3171
  %tobool695.not.2 = icmp eq i32 %327, 0, !dbg !3173
  br i1 %tobool695.not.2, label %if.end708.2, label %if.then696.2, !dbg !3174

if.then696.2:                                     ; preds = %if.end751.1
  %328 = load ptr, ptr %denoise_dct698, align 8, !dbg !3176
  %arrayidx700.2 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %326, !dbg !3177
  call void %328(ptr noundef nonnull %arrayidx700.2, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6, !dbg !3178
  br label %if.end708.2, !dbg !3178

if.end708.2:                                      ; preds = %if.then696.2, %if.end751.1
  %arrayidx710.2 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %326, !dbg !3179
    #dbg_value(ptr %h, !1552, !DIExpression(), !3180)
    #dbg_value(ptr %arrayidx710.2, !1557, !DIExpression(), !3180)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3180)
    #dbg_value(i32 2, !1559, !DIExpression(), !3180)
    #dbg_value(i32 0, !1560, !DIExpression(), !3180)
    #dbg_value(i64 %326, !1561, !DIExpression(), !3180)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3180)
  %329 = load i32, ptr %b_trellis.i1427, align 16, !dbg !3182
  %tobool1.not.i1428.2 = icmp eq i32 %329, 0, !dbg !3183
  br i1 %tobool1.not.i1428.2, label %if.else.i1432.2, label %if.then.i1429.2, !dbg !3184

if.then.i1429.2:                                  ; preds = %if.end708.2
    #dbg_value(i32 1, !1562, !DIExpression(), !3180)
  %330 = trunc nuw nsw i64 %326 to i32, !dbg !3185
  %call.i1430.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.2, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %330) #6, !dbg !3185
  br label %x264_quant_4x4.exit.2, !dbg !3186

if.else.i1432.2:                                  ; preds = %if.end708.2
  %331 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3187
  %332 = load ptr, ptr %arrayidx.i1433, align 8, !dbg !3188
  %arrayidx3.i1435.2 = getelementptr inbounds [16 x i16], ptr %332, i64 %idxprom2.i1434, !dbg !3188
  %333 = load ptr, ptr %arrayidx5.i1436, align 8, !dbg !3189
  %arrayidx7.i1437.2 = getelementptr inbounds [16 x i16], ptr %333, i64 %idxprom2.i1434, !dbg !3189
  %call9.i1438.2 = call i32 %331(ptr noundef nonnull %arrayidx710.2, ptr noundef %arrayidx3.i1435.2, ptr noundef %arrayidx7.i1437.2) #6, !dbg !3190
  br label %x264_quant_4x4.exit.2, !dbg !3191

x264_quant_4x4.exit.2:                            ; preds = %if.else.i1432.2, %if.then.i1429.2
  %retval.0.i1431.2 = phi i32 [ %call.i1430.2, %if.then.i1429.2 ], [ %call9.i1438.2, %if.else.i1432.2 ], !dbg !3192
    #dbg_value(i32 %retval.0.i1431.2, !2386, !DIExpression(), !2497)
  %conv713.2 = trunc i32 %retval.0.i1431.2 to i8, !dbg !3193
  %arrayidx718.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %326, !dbg !3194
  %334 = load i32, ptr %arrayidx718.2, align 8, !dbg !3194
  %idxprom719.2 = sext i32 %334 to i64, !dbg !3195
  %arrayidx720.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.2, !dbg !3195
  store i8 %conv713.2, ptr %arrayidx720.2, align 1, !dbg !3196
  %tobool721.not.2 = icmp eq i32 %retval.0.i1431.2, 0, !dbg !3197
  br i1 %tobool721.not.2, label %if.end751.2, label %if.then722.2, !dbg !3199

if.then722.2:                                     ; preds = %x264_quant_4x4.exit.2
  %335 = load ptr, ptr %scan_4x4, align 8, !dbg !3200
  %arrayidx727.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %326, !dbg !3202
  call void %335(ptr noundef nonnull %arrayidx727.2, ptr noundef nonnull %arrayidx710.2) #6, !dbg !3203
  %336 = load ptr, ptr %dequant_4x4, align 8, !dbg !3204
  %337 = load ptr, ptr %arrayidx736, align 8, !dbg !3205
  call void %336(ptr noundef nonnull %arrayidx710.2, ptr noundef %337, i32 noundef %0) #6, !dbg !3206
  %cmp739.2 = icmp slt i32 %i_decimate_8x8683.2.1, 6
  %or.cond1045.2 = select i1 %tobool737, i1 %cmp739.2, i1 false, !dbg !3207
  br i1 %or.cond1045.2, label %if.then741.2, label %if.end751.2, !dbg !3207

if.then741.2:                                     ; preds = %if.then722.2
  %338 = load ptr, ptr %decimate_score16, align 8, !dbg !3209
  %call748.2 = call i32 %338(ptr noundef nonnull %arrayidx727.2) #6, !dbg !3210
  %add749.2 = add nsw i32 %call748.2, %i_decimate_8x8683.2.1, !dbg !3213
    #dbg_value(i32 %add749.2, !2443, !DIExpression(), !3169)
  br label %if.end751.2, !dbg !3211

if.end751.2:                                      ; preds = %if.then741.2, %if.then722.2, %x264_quant_4x4.exit.2
  %i_decimate_8x8683.2.2 = phi i32 [ %i_decimate_8x8683.2.1, %x264_quant_4x4.exit.2 ], [ %add749.2, %if.then741.2 ], [ %i_decimate_8x8683.2.1, %if.then722.2 ], !dbg !3169
  %cbp.1.2 = phi i32 [ %cbp.1.1, %x264_quant_4x4.exit.2 ], [ 1, %if.then741.2 ], [ 1, %if.then722.2 ], !dbg !3169
    #dbg_value(i32 %cbp.1.2, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %i_decimate_8x8683.2.2, !2443, !DIExpression(), !3169)
    #dbg_value(i64 3, !2447, !DIExpression(), !3168)
  %339 = or disjoint i64 %300, 3, !dbg !3212
    #dbg_value(i64 %339, !2449, !DIExpression(), !3170)
  %340 = load i32, ptr %b_noise_reduction672, align 4, !dbg !3171
  %tobool695.not.3 = icmp eq i32 %340, 0, !dbg !3173
  br i1 %tobool695.not.3, label %if.end708.3, label %if.then696.3, !dbg !3174

if.then696.3:                                     ; preds = %if.end751.2
  %341 = load ptr, ptr %denoise_dct698, align 8, !dbg !3176
  %arrayidx700.3 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %339, !dbg !3177
  call void %341(ptr noundef nonnull %arrayidx700.3, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6, !dbg !3178
  br label %if.end708.3, !dbg !3178

if.end708.3:                                      ; preds = %if.then696.3, %if.end751.2
  %arrayidx710.3 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %339, !dbg !3179
    #dbg_value(ptr %h, !1552, !DIExpression(), !3180)
    #dbg_value(ptr %arrayidx710.3, !1557, !DIExpression(), !3180)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3180)
    #dbg_value(i32 2, !1559, !DIExpression(), !3180)
    #dbg_value(i32 0, !1560, !DIExpression(), !3180)
    #dbg_value(i64 %339, !1561, !DIExpression(), !3180)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3180)
  %342 = load i32, ptr %b_trellis.i1427, align 16, !dbg !3182
  %tobool1.not.i1428.3 = icmp eq i32 %342, 0, !dbg !3183
  br i1 %tobool1.not.i1428.3, label %if.else.i1432.3, label %if.then.i1429.3, !dbg !3184

if.then.i1429.3:                                  ; preds = %if.end708.3
    #dbg_value(i32 1, !1562, !DIExpression(), !3180)
  %343 = trunc nuw nsw i64 %339 to i32, !dbg !3185
  %call.i1430.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.3, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %343) #6, !dbg !3185
  br label %x264_quant_4x4.exit.3, !dbg !3186

if.else.i1432.3:                                  ; preds = %if.end708.3
  %344 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3187
  %345 = load ptr, ptr %arrayidx.i1433, align 8, !dbg !3188
  %arrayidx3.i1435.3 = getelementptr inbounds [16 x i16], ptr %345, i64 %idxprom2.i1434, !dbg !3188
  %346 = load ptr, ptr %arrayidx5.i1436, align 8, !dbg !3189
  %arrayidx7.i1437.3 = getelementptr inbounds [16 x i16], ptr %346, i64 %idxprom2.i1434, !dbg !3189
  %call9.i1438.3 = call i32 %344(ptr noundef nonnull %arrayidx710.3, ptr noundef %arrayidx3.i1435.3, ptr noundef %arrayidx7.i1437.3) #6, !dbg !3190
  br label %x264_quant_4x4.exit.3, !dbg !3191

x264_quant_4x4.exit.3:                            ; preds = %if.else.i1432.3, %if.then.i1429.3
  %retval.0.i1431.3 = phi i32 [ %call.i1430.3, %if.then.i1429.3 ], [ %call9.i1438.3, %if.else.i1432.3 ], !dbg !3192
    #dbg_value(i32 %retval.0.i1431.3, !2386, !DIExpression(), !2497)
  %conv713.3 = trunc i32 %retval.0.i1431.3 to i8, !dbg !3193
  %arrayidx718.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %339, !dbg !3194
  %347 = load i32, ptr %arrayidx718.3, align 4, !dbg !3194
  %idxprom719.3 = sext i32 %347 to i64, !dbg !3195
  %arrayidx720.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.3, !dbg !3195
  store i8 %conv713.3, ptr %arrayidx720.3, align 1, !dbg !3196
  %tobool721.not.3 = icmp eq i32 %retval.0.i1431.3, 0, !dbg !3197
  br i1 %tobool721.not.3, label %if.end751.3, label %if.then722.3, !dbg !3199

if.then722.3:                                     ; preds = %x264_quant_4x4.exit.3
  %348 = load ptr, ptr %scan_4x4, align 8, !dbg !3200
  %arrayidx727.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %339, !dbg !3202
  call void %348(ptr noundef nonnull %arrayidx727.3, ptr noundef nonnull %arrayidx710.3) #6, !dbg !3203
  %349 = load ptr, ptr %dequant_4x4, align 8, !dbg !3204
  %350 = load ptr, ptr %arrayidx736, align 8, !dbg !3205
  call void %349(ptr noundef nonnull %arrayidx710.3, ptr noundef %350, i32 noundef %0) #6, !dbg !3206
  %cmp739.3 = icmp slt i32 %i_decimate_8x8683.2.2, 6
  %or.cond1045.3 = select i1 %tobool737, i1 %cmp739.3, i1 false, !dbg !3207
  br i1 %or.cond1045.3, label %if.end751.3.thread, label %if.end751.3.thread1556, !dbg !3207

if.end751.3.thread:                               ; preds = %if.then722.3
  %351 = load ptr, ptr %decimate_score16, align 8, !dbg !3209
  %call748.3 = call i32 %351(ptr noundef nonnull %arrayidx727.3) #6, !dbg !3210
  %add749.3 = add nsw i32 %call748.3, %i_decimate_8x8683.2.2, !dbg !3213
    #dbg_value(i32 poison, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %add749.3, !2443, !DIExpression(), !3169)
    #dbg_value(i64 4, !2447, !DIExpression(), !3168)
  %add7551552 = add nsw i32 %add749.3, %i_decimate_mb.21470, !dbg !3214
    #dbg_value(i32 %add7551552, !2410, !DIExpression(), !3027)
  br label %if.then757, !dbg !3215

if.end751.3:                                      ; preds = %x264_quant_4x4.exit.3
    #dbg_value(i32 %cbp.1.2, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %i_decimate_8x8683.2.2, !2443, !DIExpression(), !3169)
    #dbg_value(i64 4, !2447, !DIExpression(), !3168)
  %add755 = add nsw i32 %i_decimate_8x8683.2.2, %i_decimate_mb.21470, !dbg !3214
    #dbg_value(i32 %add755, !2410, !DIExpression(), !3027)
  br i1 %tobool756.not, label %if.else785, label %if.then757, !dbg !3215

if.end751.3.thread1556:                           ; preds = %if.then722.3
    #dbg_value(i32 1, !2446, !DIExpression(), !3169)
    #dbg_value(i32 %i_decimate_8x8683.2.2, !2443, !DIExpression(), !3169)
    #dbg_value(i64 4, !2447, !DIExpression(), !3168)
  %add7551559 = add nsw i32 %i_decimate_8x8683.2.2, %i_decimate_mb.21470, !dbg !3214
    #dbg_value(i32 %add7551559, !2410, !DIExpression(), !3027)
  br i1 %tobool756.not, label %if.then787, label %if.then757, !dbg !3215

if.then757:                                       ; preds = %if.end751.3.thread1556, %if.end751.3.thread, %if.end751.3
  %add7551555 = phi i32 [ %add7551552, %if.end751.3.thread ], [ %add755, %if.end751.3 ], [ %add7551559, %if.end751.3.thread1556 ]
  %i_decimate_8x8683.2.31553 = phi i32 [ %add749.3, %if.end751.3.thread ], [ %i_decimate_8x8683.2.2, %if.end751.3 ], [ %i_decimate_8x8683.2.2, %if.end751.3.thread1556 ]
  %cmp758 = icmp slt i32 %i_decimate_8x8683.2.31553, 4, !dbg !3216
  br i1 %cmp758, label %if.then760, label %if.else779, !dbg !3220

if.then760:                                       ; preds = %if.then757
  store i16 0, ptr %arrayidx720, align 1, !dbg !3221
  %352 = or disjoint i64 %300, 2, !dbg !3221
  %arrayidx776 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %352, !dbg !3221
  %353 = load i32, ptr %arrayidx776, align 8, !dbg !3221
  %idxprom777 = sext i32 %353 to i64, !dbg !3221
  %arrayidx778 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom777, !dbg !3221
  store i16 0, ptr %arrayidx778, align 1, !dbg !3221
  br label %if.end809, !dbg !3221

if.else779:                                       ; preds = %if.then757
  %354 = trunc nuw nsw i64 %indvars.iv1510 to i32, !dbg !3223
  %shl780 = shl nuw nsw i32 1, %354, !dbg !3223
  %355 = load i32, ptr %i_cbp_luma, align 8, !dbg !3224
  %or783 = or i32 %355, %shl780, !dbg !3224
  store i32 %or783, ptr %i_cbp_luma, align 8, !dbg !3224
  br label %if.end809

if.else785:                                       ; preds = %if.end751.3
  %tobool786.not = icmp eq i32 %cbp.1.2, 0, !dbg !3225
  br i1 %tobool786.not, label %if.end809, label %if.then787, !dbg !3227

if.then787:                                       ; preds = %if.end751.3.thread1556, %if.else785
  %add75515611565 = phi i32 [ %add755, %if.else785 ], [ %add7551559, %if.end751.3.thread1556 ]
  %356 = load ptr, ptr %add8x8_idct, align 16, !dbg !3228
  %357 = load ptr, ptr %p_fdec669, align 16, !dbg !3230
  %358 = shl i64 %indvars.iv1510, 3, !dbg !3231
  %mul794 = and i64 %358, 8, !dbg !3231
  %359 = shl i64 %indvars.iv1510, 7, !dbg !3232
  %mul796 = and i64 %359, 256, !dbg !3232
  %add798 = or disjoint i64 %mul794, %mul796, !dbg !3233
  %arrayidx800 = getelementptr inbounds i8, ptr %357, i64 %add798, !dbg !3230
  call void %356(ptr noundef %arrayidx800, ptr noundef nonnull %arrayidx710) #6, !dbg !3234
  %360 = trunc nuw nsw i64 %indvars.iv1510 to i32, !dbg !3235
  %shl804 = shl nuw nsw i32 1, %360, !dbg !3235
  %361 = load i32, ptr %i_cbp_luma, align 8, !dbg !3236
  %or807 = or i32 %361, %shl804, !dbg !3236
  store i32 %or807, ptr %i_cbp_luma, align 8, !dbg !3236
  br label %if.end809, !dbg !3237

if.end809:                                        ; preds = %if.else785, %if.then787, %if.then760, %if.else779
  %add7551554 = phi i32 [ %add755, %if.else785 ], [ %add75515611565, %if.then787 ], [ %add7551555, %if.then760 ], [ %add7551555, %if.else779 ]
  %indvars.iv.next1511 = add nuw nsw i64 %indvars.iv1510, 1, !dbg !3238
    #dbg_value(i64 %indvars.iv.next1511, !2441, !DIExpression(), !3166)
    #dbg_value(i32 %add7551554, !2410, !DIExpression(), !3027)
  %exitcond1518.not = icmp eq i64 %indvars.iv.next1511, 4, !dbg !3239
  br i1 %exitcond1518.not, label %for.cond.cleanup681, label %for.cond685.preheader, !dbg !3167, !llvm.loop !3240

if.then814:                                       ; preds = %for.cond.cleanup681
  %cmp815 = icmp slt i32 %add7551554, 6, !dbg !3242
  br i1 %cmp815, label %if.then817, label %for.cond842.preheader, !dbg !3243

for.cond842.preheader:                            ; preds = %if.then814
    #dbg_value(i64 0, !2452, !DIExpression(), !3244)
  %362 = load i32, ptr %i_cbp_luma, align 8, !dbg !3245
  %and850 = and i32 %362, 1, !dbg !3248
  %tobool851.not = icmp eq i32 %and850, 0, !dbg !3248
  br i1 %tobool851.not, label %for.inc871, label %if.then852, !dbg !3249

if.then817:                                       ; preds = %if.then814
  store i32 0, ptr %i_cbp_luma, align 8, !dbg !3250
  %arrayidx824 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3252
  store i32 0, ptr %arrayidx824, align 1, !dbg !3252
  %arrayidx829 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3252
  store i32 0, ptr %arrayidx829, align 1, !dbg !3252
  %arrayidx834 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3252
  store i32 0, ptr %arrayidx834, align 1, !dbg !3252
  %arrayidx839 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3252
  store i32 0, ptr %arrayidx839, align 1, !dbg !3252
  br label %if.end875, !dbg !3254

if.then852:                                       ; preds = %for.cond842.preheader
  %363 = load ptr, ptr %add8x8_idct, align 16, !dbg !3255
  %364 = load ptr, ptr %p_fdec669, align 16, !dbg !3256
  call void %363(ptr noundef %364, ptr noundef nonnull %dct4x4) #6, !dbg !3257
  %.pre1536 = load i32, ptr %i_cbp_luma, align 8, !dbg !3245
  br label %for.inc871, !dbg !3257

for.inc871:                                       ; preds = %for.cond842.preheader, %if.then852
  %365 = phi i32 [ %362, %for.cond842.preheader ], [ %.pre1536, %if.then852 ], !dbg !3245
    #dbg_value(i64 1, !2452, !DIExpression(), !3244)
  %and850.1 = and i32 %365, 2, !dbg !3248
  %tobool851.not.1 = icmp eq i32 %and850.1, 0, !dbg !3248
  br i1 %tobool851.not.1, label %for.inc871.1, label %if.then852.1, !dbg !3249

if.then852.1:                                     ; preds = %for.inc871
  %366 = load ptr, ptr %add8x8_idct, align 16, !dbg !3255
  %367 = load ptr, ptr %p_fdec669, align 16, !dbg !3256
  %arrayidx866.1 = getelementptr inbounds i8, ptr %367, i64 8, !dbg !3256
  %arrayidx869.1 = getelementptr inbounds i8, ptr %dct4x4, i64 128, !dbg !3258
  call void %366(ptr noundef nonnull %arrayidx866.1, ptr noundef nonnull %arrayidx869.1) #6, !dbg !3257
  %.pre1537 = load i32, ptr %i_cbp_luma, align 8, !dbg !3245
  br label %for.inc871.1, !dbg !3257

for.inc871.1:                                     ; preds = %if.then852.1, %for.inc871
  %368 = phi i32 [ %.pre1537, %if.then852.1 ], [ %365, %for.inc871 ], !dbg !3245
    #dbg_value(i64 2, !2452, !DIExpression(), !3244)
  %and850.2 = and i32 %368, 4, !dbg !3248
  %tobool851.not.2 = icmp eq i32 %and850.2, 0, !dbg !3248
  br i1 %tobool851.not.2, label %for.inc871.2, label %if.then852.2, !dbg !3249

if.then852.2:                                     ; preds = %for.inc871.1
  %369 = load ptr, ptr %add8x8_idct, align 16, !dbg !3255
  %370 = load ptr, ptr %p_fdec669, align 16, !dbg !3256
  %arrayidx866.2 = getelementptr inbounds i8, ptr %370, i64 256, !dbg !3256
  %arrayidx869.2 = getelementptr inbounds i8, ptr %dct4x4, i64 256, !dbg !3258
  call void %369(ptr noundef nonnull %arrayidx866.2, ptr noundef nonnull %arrayidx869.2) #6, !dbg !3257
  %.pre1538 = load i32, ptr %i_cbp_luma, align 8, !dbg !3245
  br label %for.inc871.2, !dbg !3257

for.inc871.2:                                     ; preds = %if.then852.2, %for.inc871.1
  %371 = phi i32 [ %.pre1538, %if.then852.2 ], [ %368, %for.inc871.1 ], !dbg !3245
    #dbg_value(i64 3, !2452, !DIExpression(), !3244)
  %and850.3 = and i32 %371, 8, !dbg !3248
  %tobool851.not.3 = icmp eq i32 %and850.3, 0, !dbg !3248
  br i1 %tobool851.not.3, label %if.end875, label %if.then852.3, !dbg !3249

if.then852.3:                                     ; preds = %for.inc871.2
  %372 = load ptr, ptr %add8x8_idct, align 16, !dbg !3255
  %373 = load ptr, ptr %p_fdec669, align 16, !dbg !3256
  %arrayidx866.3 = getelementptr inbounds i8, ptr %373, i64 264, !dbg !3256
  %arrayidx869.3 = getelementptr inbounds i8, ptr %dct4x4, i64 384, !dbg !3258
  call void %372(ptr noundef nonnull %arrayidx866.3, ptr noundef nonnull %arrayidx869.3) #6, !dbg !3257
  br label %if.end875, !dbg !3257

if.end875:                                        ; preds = %for.inc871.2, %if.then852.3, %if.then817, %for.cond.cleanup681
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct4x4) #6, !dbg !3259
  br label %if.end880

if.end880:                                        ; preds = %if.end352, %for.body433, %for.cond370.preheader, %if.end875, %if.end659, %for.cond.cleanup, %x264_mb_encode_i16x16.exit
  %tobool984.not1454 = phi i1 [ %tobool984.not1455, %if.end875 ], [ %tobool984.not1455, %if.end659 ], [ %tobool984.not.ph, %for.cond.cleanup ], [ %tobool984.not.ph, %x264_mb_encode_i16x16.exit ], [ %tobool984.not1455, %for.cond370.preheader ], [ %tobool984.not1455, %for.body433 ], [ %tobool984.not.ph, %if.end352 ]
  %374 = load i32, ptr %i_type, align 8, !dbg !3051
  %switch = icmp ult i32 %374, 4, !dbg !3051
  br i1 %switch, label %if.then900, label %if.end922, !dbg !3051

if.then900:                                       ; preds = %if.end880
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412, !dbg !3260
  %375 = load i32, ptr %i_chroma_pred_mode, align 4, !dbg !3260
    #dbg_value(i32 %375, !2458, !DIExpression(), !3261)
  %b_lossless904 = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !3262
  %376 = load i32, ptr %b_lossless904, align 4, !dbg !3262
  %tobool905.not = icmp eq i32 %376, 0, !dbg !3264
  br i1 %tobool905.not, label %if.else907, label %if.then906, !dbg !3265

if.then906:                                       ; preds = %if.then900
    #dbg_value(ptr %h, !2238, !DIExpression(), !3266)
    #dbg_value(i32 %375, !2239, !DIExpression(), !3266)
  %fenc.i1439 = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !3268
  %377 = load ptr, ptr %fenc.i1439, align 8, !dbg !3268
  %arrayidx.i1440 = getelementptr inbounds i8, ptr %377, i64 108, !dbg !3269
  %378 = load i32, ptr %arrayidx.i1440, align 4, !dbg !3269
  %b_interlaced.i1441 = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3270
  %379 = load i32, ptr %b_interlaced.i1441, align 4, !dbg !3270
  %shl.i1442 = shl i32 %378, %379, !dbg !3271
    #dbg_value(i32 %shl.i1442, !2240, !DIExpression(), !3266)
  switch i32 %375, label %if.else47.i [
    i32 2, label %if.then.i1444
    i32 1, label %if.then22.i
  ], !dbg !3272

if.then.i1444:                                    ; preds = %if.then906
  %arrayidx1.i = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !3273
  %380 = load ptr, ptr %arrayidx1.i, align 8, !dbg !3273
  %arrayidx3.i1445 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3274
  %381 = load ptr, ptr %arrayidx3.i1445, align 8, !dbg !3274
  %arrayidx6.i1446 = getelementptr inbounds i8, ptr %h, i64 21376, !dbg !3275
  %382 = load ptr, ptr %arrayidx6.i1446, align 8, !dbg !3275
  %idx.ext.i1447 = sext i32 %shl.i1442 to i64, !dbg !3276
  %idx.neg.i1448 = sub nsw i64 0, %idx.ext.i1447, !dbg !3276
  %add.ptr.i1449 = getelementptr inbounds i8, ptr %382, i64 %idx.neg.i1448, !dbg !3276
  call void %380(ptr noundef %381, i32 noundef 32, ptr noundef %add.ptr.i1449, i32 noundef %shl.i1442, i32 noundef 8) #6, !dbg !3273
  %383 = load ptr, ptr %arrayidx1.i, align 8, !dbg !3277
  %arrayidx13.i = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3278
  %384 = load ptr, ptr %arrayidx13.i, align 16, !dbg !3278
  %arrayidx17.i1450 = getelementptr inbounds i8, ptr %h, i64 21384, !dbg !3279
  %385 = load ptr, ptr %arrayidx17.i1450, align 8, !dbg !3279
  %add.ptr20.i = getelementptr inbounds i8, ptr %385, i64 %idx.neg.i1448, !dbg !3280
  call void %383(ptr noundef %384, i32 noundef 32, ptr noundef %add.ptr20.i, i32 noundef %shl.i1442, i32 noundef 8) #6, !dbg !3277
  br label %if.end922, !dbg !3281

if.then22.i:                                      ; preds = %if.then906
  %arrayidx25.i1443 = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !3282
  %386 = load ptr, ptr %arrayidx25.i1443, align 8, !dbg !3282
  %arrayidx29.i = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3283
  %387 = load ptr, ptr %arrayidx29.i, align 8, !dbg !3283
  %arrayidx33.i = getelementptr inbounds i8, ptr %h, i64 21376, !dbg !3284
  %388 = load ptr, ptr %arrayidx33.i, align 8, !dbg !3284
  %add.ptr34.i = getelementptr inbounds i8, ptr %388, i64 -1, !dbg !3285
  call void %386(ptr noundef %387, i32 noundef 32, ptr noundef nonnull %add.ptr34.i, i32 noundef %shl.i1442, i32 noundef 8) #6, !dbg !3282
  %389 = load ptr, ptr %arrayidx25.i1443, align 8, !dbg !3286
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3287
  %390 = load ptr, ptr %arrayidx41.i, align 16, !dbg !3287
  %arrayidx45.i = getelementptr inbounds i8, ptr %h, i64 21384, !dbg !3288
  %391 = load ptr, ptr %arrayidx45.i, align 8, !dbg !3288
  %add.ptr46.i = getelementptr inbounds i8, ptr %391, i64 -1, !dbg !3289
  call void %389(ptr noundef %390, i32 noundef 32, ptr noundef nonnull %add.ptr46.i, i32 noundef %shl.i1442, i32 noundef 8) #6, !dbg !3286
  br label %if.end922, !dbg !3290

if.else47.i:                                      ; preds = %if.then906
  %predict_8x8c.i = getelementptr inbounds i8, ptr %h, i64 31304, !dbg !3291
  %idxprom.i1451 = sext i32 %375 to i64, !dbg !3292
  %arrayidx48.i1452 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c.i, i64 0, i64 %idxprom.i1451, !dbg !3292
  %392 = load ptr, ptr %arrayidx48.i1452, align 8, !dbg !3292
  %arrayidx52.i = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3293
  %393 = load ptr, ptr %arrayidx52.i, align 8, !dbg !3293
  call void %392(ptr noundef %393) #6, !dbg !3292
  %394 = load ptr, ptr %arrayidx48.i1452, align 8, !dbg !3294
  %arrayidx59.i = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3295
  %395 = load ptr, ptr %arrayidx59.i, align 16, !dbg !3295
  call void %394(ptr noundef %395) #6, !dbg !3294
  br label %if.end922

if.else907:                                       ; preds = %if.then900
  %predict_8x8c = getelementptr inbounds i8, ptr %h, i64 31304, !dbg !3296
  %idxprom908 = sext i32 %375 to i64, !dbg !3298
  %arrayidx909 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c, i64 0, i64 %idxprom908, !dbg !3298
  %396 = load ptr, ptr %arrayidx909, align 8, !dbg !3298
  %arrayidx913 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3299
  %397 = load ptr, ptr %arrayidx913, align 8, !dbg !3299
  call void %396(ptr noundef %397) #6, !dbg !3298
  %398 = load ptr, ptr %arrayidx909, align 8, !dbg !3300
  %arrayidx920 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3301
  %399 = load ptr, ptr %arrayidx920, align 16, !dbg !3301
  call void %398(ptr noundef %399) #6, !dbg !3300
  br label %if.end922

if.end922:                                        ; preds = %if.else47.i, %if.then22.i, %if.then.i1444, %if.end880, %if.else907
  %400 = load i32, ptr %i_type, align 8, !dbg !3302
  %narrow = icmp ugt i32 %400, 3, !dbg !3302
  %lnot941 = zext i1 %narrow to i32, !dbg !3302
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796, !dbg !3303
  %401 = load i32, ptr %i_chroma_qp, align 4, !dbg !3303
  call void @x264_mb_encode_8x8_chroma(ptr noundef nonnull %h, i32 noundef %lnot941, i32 noundef %401), !dbg !3304
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3305
  %402 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3305
  %shl946 = shl i32 %402, 4, !dbg !3306
  %403 = load i32, ptr %i_cbp_luma, align 8, !dbg !3307
  %or949 = or i32 %shl946, %403, !dbg !3308
    #dbg_value(i32 %or949, !2461, !DIExpression(), !2497)
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128, !dbg !3309
  %404 = load i32, ptr %b_cabac, align 16, !dbg !3309
  %tobool950.not = icmp eq i32 %404, 0, !dbg !3311
  br i1 %tobool950.not, label %if.end976, label %if.then951, !dbg !3312

if.then951:                                       ; preds = %if.end922
  %405 = load i8, ptr %arrayidx, align 1, !dbg !3313
  %conv957 = zext i8 %405 to i32, !dbg !3313
  %shl958 = shl nuw nsw i32 %conv957, 8, !dbg !3314
  %arrayidx963 = getelementptr inbounds i8, ptr %h, i64 25118, !dbg !3315
  %406 = load i8, ptr %arrayidx963, align 1, !dbg !3315
  %conv964 = zext i8 %406 to i32, !dbg !3315
  %shl965 = shl nuw nsw i32 %conv964, 9, !dbg !3316
  %arrayidx971 = getelementptr inbounds i8, ptr %h, i64 25119, !dbg !3317
  %407 = load i8, ptr %arrayidx971, align 1, !dbg !3317
  %conv972 = zext i8 %407 to i32, !dbg !3317
  %shl973 = shl nuw nsw i32 %conv972, 10, !dbg !3318
  %408 = or i32 %shl958, %shl965, !dbg !3319
  %409 = or i32 %408, %shl973, !dbg !3320
  %or975 = or i32 %409, %or949, !dbg !3320
    #dbg_value(i32 %or975, !2461, !DIExpression(), !2497)
  br label %if.end976, !dbg !3321

if.end976:                                        ; preds = %if.then951, %if.end922
  %cbp944.0 = phi i32 [ %or975, %if.then951 ], [ %or949, %if.end922 ], !dbg !2497
    #dbg_value(i32 %cbp944.0, !2461, !DIExpression(), !2497)
  %conv977 = trunc i32 %cbp944.0 to i16, !dbg !3322
  %cbp979 = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !3323
  %410 = load ptr, ptr %cbp979, align 16, !dbg !3323
  %i_mb_xy981 = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !3324
  %411 = load i32, ptr %i_mb_xy981, align 8, !dbg !3324
  %idxprom982 = sext i32 %411 to i64, !dbg !3325
  %arrayidx983 = getelementptr inbounds i16, ptr %410, i64 %idxprom982, !dbg !3325
  store i16 %conv977, ptr %arrayidx983, align 2, !dbg !3326
  br i1 %tobool984.not1454, label %if.then985, label %cleanup, !dbg !3327

if.then985:                                       ; preds = %if.end976
  %412 = load i32, ptr %i_type, align 8, !dbg !3328
  switch i32 %412, label %cleanup [
    i32 4, label %land.lhs.true990
    i32 7, label %land.lhs.true1030
  ], !dbg !3332

land.lhs.true990:                                 ; preds = %if.then985
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !3333
  %413 = load i32, ptr %i_partition, align 4, !dbg !3333
  %cmp992 = icmp eq i32 %413, 16, !dbg !3334
  br i1 %cmp992, label %land.lhs.true994, label %cleanup, !dbg !3335

land.lhs.true994:                                 ; preds = %land.lhs.true990
  %414 = load i32, ptr %i_cbp_luma, align 8, !dbg !3336
  %415 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3337
  %or999 = or i32 %415, %414, !dbg !3338
  %tobool1000.not = icmp eq i32 %or999, 0, !dbg !3338
  br i1 %tobool1000.not, label %land.lhs.true1001, label %cleanup, !dbg !3339

land.lhs.true1001:                                ; preds = %land.lhs.true994
  %arrayidx1006 = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !3340
  %416 = load i32, ptr %arrayidx1006, align 4, !dbg !3340
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764, !dbg !3341
  %417 = load i32, ptr %pskip_mv, align 4, !dbg !3341
  %cmp1011 = icmp eq i32 %416, %417, !dbg !3342
  br i1 %cmp1011, label %land.lhs.true1013, label %cleanup, !dbg !3343

land.lhs.true1013:                                ; preds = %land.lhs.true1001
  %arrayidx1018 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !3344
  %418 = load i8, ptr %arrayidx1018, align 1, !dbg !3344
  %cmp1020 = icmp eq i8 %418, 0, !dbg !3345
  br i1 %cmp1020, label %if.end1025.thread, label %cleanup, !dbg !3346

if.end1025.thread:                                ; preds = %land.lhs.true1013
  store i32 6, ptr %i_type, align 8, !dbg !3347
  br label %cleanup, !dbg !3349

land.lhs.true1030:                                ; preds = %if.then985
  %419 = load i32, ptr %i_cbp_luma, align 8, !dbg !3351
  %420 = load i32, ptr %i_cbp_chroma, align 4, !dbg !3352
  %or1035 = or i32 %420, %419, !dbg !3353
  %tobool1036.not = icmp eq i32 %or1035, 0, !dbg !3353
  br i1 %tobool1036.not, label %if.then1037, label %cleanup, !dbg !3354

if.then1037:                                      ; preds = %land.lhs.true1030
  store i32 18, ptr %i_type, align 8, !dbg !3355
  br label %cleanup, !dbg !3357

cleanup:                                          ; preds = %if.then985, %land.lhs.true990, %land.lhs.true994, %land.lhs.true1001, %land.lhs.true1013, %if.end1025.thread, %if.end976, %if.then1037, %land.lhs.true1030, %if.end98, %x264_macroblock_encode_pskip.exit, %if.then
  ret void, !dbg !3358
}

declare !dbg !3359 void @x264_mb_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_probe_skip(ptr noundef %h, i32 noundef %b_bidir) local_unnamed_addr #0 !dbg !3360 {
entry:
  %dct4x4 = alloca [4 x [16 x i16]], align 16, !DIAssignID !3391
    #dbg_assign(i1 undef, !3366, !DIExpression(), !3391, ptr %dct4x4, !DIExpression(), !3392)
  %dct2x2 = alloca [4 x i16], align 16, !DIAssignID !3393
    #dbg_assign(i1 undef, !3367, !DIExpression(), !3393, ptr %dct2x2, !DIExpression(), !3392)
  %dctscan = alloca [16 x i16], align 16, !DIAssignID !3394
    #dbg_assign(i1 undef, !3368, !DIExpression(), !3394, ptr %dctscan, !DIExpression(), !3392)
    #dbg_value(ptr %h, !3364, !DIExpression(), !3392)
    #dbg_value(i32 %b_bidir, !3365, !DIExpression(), !3392)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !3395
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6, !dbg !3396
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dctscan) #6, !dbg !3397
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3398
  %0 = load i32, ptr %i_qp1, align 16, !dbg !3398
    #dbg_value(i32 %0, !3370, !DIExpression(), !3392)
  %tobool.not = icmp eq i32 %b_bidir, 0, !dbg !3399
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3401

if.then:                                          ; preds = %entry
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764, !dbg !3402
  %1 = load i16, ptr %pskip_mv, align 4, !dbg !3404
  %conv = sext i16 %1 to i32, !dbg !3404
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440, !dbg !3405
  %2 = load i32, ptr %mv_min, align 8, !dbg !3406
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448, !dbg !3407
  %3 = load i32, ptr %mv_max, align 16, !dbg !3408
    #dbg_value(i32 %conv, !2560, !DIExpression(), !3409)
    #dbg_value(i32 %2, !2565, !DIExpression(), !3409)
    #dbg_value(i32 %3, !2566, !DIExpression(), !3409)
  %cmp.i = icmp sgt i32 %2, %conv, !dbg !3411
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv, i32 %3), !dbg !3412
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i, !dbg !3412
  %conv7 = trunc i32 %cond5.i to i16, !dbg !3413
    #dbg_value(i16 %conv7, !3369, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3392)
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25766, !dbg !3414
  %4 = load i16, ptr %arrayidx12, align 2, !dbg !3414
  %conv13 = sext i16 %4 to i32, !dbg !3414
  %arrayidx16 = getelementptr inbounds i8, ptr %h, i64 16444, !dbg !3415
  %5 = load i32, ptr %arrayidx16, align 4, !dbg !3415
  %arrayidx19 = getelementptr inbounds i8, ptr %h, i64 16452, !dbg !3416
  %6 = load i32, ptr %arrayidx19, align 4, !dbg !3416
    #dbg_value(i32 %conv13, !2560, !DIExpression(), !3417)
    #dbg_value(i32 %5, !2565, !DIExpression(), !3417)
    #dbg_value(i32 %6, !2566, !DIExpression(), !3417)
  %cmp.i412 = icmp sgt i32 %5, %conv13, !dbg !3419
  %cond.i413 = tail call i32 @llvm.smin.i32(i32 %conv13, i32 %6), !dbg !3420
  %cond5.i414 = select i1 %cmp.i412, i32 %5, i32 %cond.i413, !dbg !3420
  %conv21 = trunc i32 %cond5.i414 to i16, !dbg !3421
    #dbg_value(i16 %conv21, !3369, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3392)
  %mc = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !3422
  %7 = load ptr, ptr %mc, align 8, !dbg !3423
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3424
  %8 = load ptr, ptr %p_fdec, align 16, !dbg !3425
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424, !dbg !3426
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !3427
  %9 = load i32, ptr %i_stride, align 16, !dbg !3428
  %sext = shl i32 %cond5.i, 16, !dbg !3429
  %conv33 = ashr exact i32 %sext, 16, !dbg !3429
  %sext411 = shl i32 %cond5.i414, 16, !dbg !3430
  %conv35 = ashr exact i32 %sext411, 16, !dbg !3430
  %weight = getelementptr inbounds i8, ptr %h, i64 7584, !dbg !3431
  tail call void %7(ptr noundef %8, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %9, i32 noundef %conv33, i32 noundef %conv35, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %weight) #6, !dbg !3432
  br label %if.end, !dbg !3433

if.end:                                           ; preds = %if.then, %entry
  %mvp.sroa.0.0 = phi i16 [ undef, %entry ], [ %conv7, %if.then ]
  %mvp.sroa.6.0 = phi i16 [ undef, %entry ], [ %conv21, %if.then ]
    #dbg_value(i16 %mvp.sroa.6.0, !3369, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3392)
    #dbg_value(i16 %mvp.sroa.0.0, !3369, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3392)
    #dbg_value(i32 0, !3373, !DIExpression(), !3434)
    #dbg_value(i32 0, !3375, !DIExpression(), !3434)
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec53 = getelementptr inbounds i8, ptr %h, i64 21392
    #dbg_value(i32 0, !3375, !DIExpression(), !3434)
    #dbg_value(i32 0, !3373, !DIExpression(), !3434)
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx64 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom65 = sext i32 %0 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %h, i64 3496
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
  %arrayidx62.1 = getelementptr inbounds i8, ptr %dct4x4, i64 32
  %arrayidx62.2 = getelementptr inbounds i8, ptr %dct4x4, i64 64
  %arrayidx62.3 = getelementptr inbounds i8, ptr %dct4x4, i64 96
  br label %for.body, !dbg !3435

for.body:                                         ; preds = %if.end, %for.inc.3
  %i_decimate_mb.0424 = phi i32 [ 0, %if.end ], [ %i_decimate_mb.2.3, %for.inc.3 ]
  %i8x8.0423 = phi i32 [ 0, %if.end ], [ %inc92, %for.inc.3 ]
    #dbg_value(i32 %i_decimate_mb.0424, !3375, !DIExpression(), !3434)
    #dbg_value(i32 %i8x8.0423, !3373, !DIExpression(), !3434)
  %and = shl nuw nsw i32 %i8x8.0423, 3, !dbg !3436
  %mul = and i32 %and, 8, !dbg !3436
  %shr = lshr i32 %i8x8.0423, 1, !dbg !3437
  %mul40 = shl nuw nsw i32 %shr, 7, !dbg !3438
  %add = or disjoint i32 %mul, %mul40, !dbg !3439
    #dbg_value(i32 %add, !3376, !DIExpression(), !3440)
  %mul45 = shl nuw nsw i32 %shr, 8, !dbg !3441
  %add46 = or disjoint i32 %mul, %mul45, !dbg !3442
    #dbg_value(i32 %add46, !3379, !DIExpression(), !3440)
  %10 = load ptr, ptr %sub8x8_dct, align 16, !dbg !3443
  %11 = load ptr, ptr %p_fenc, align 16, !dbg !3444
  %idx.ext = zext nneg i32 %add to i64, !dbg !3445
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext, !dbg !3445
  %12 = load ptr, ptr %p_fdec53, align 16, !dbg !3446
  %idx.ext55 = zext nneg i32 %add46 to i64, !dbg !3447
  %add.ptr56 = getelementptr inbounds i8, ptr %12, i64 %idx.ext55, !dbg !3447
  call void %10(ptr noundef nonnull %dct4x4, ptr noundef %add.ptr, ptr noundef %add.ptr56) #6, !dbg !3448
    #dbg_value(i32 0, !3380, !DIExpression(), !3449)
    #dbg_value(i32 0, !3380, !DIExpression(), !3449)
    #dbg_value(i32 %i_decimate_mb.0424, !3375, !DIExpression(), !3434)
    #dbg_value(i64 0, !3380, !DIExpression(), !3449)
    #dbg_value(i32 %i_decimate_mb.0424, !3375, !DIExpression(), !3434)
  %13 = load ptr, ptr %quant_4x4, align 8, !dbg !3450
  %14 = load ptr, ptr %arrayidx64, align 8, !dbg !3454
  %arrayidx66 = getelementptr inbounds [16 x i16], ptr %14, i64 %idxprom65, !dbg !3454
  %15 = load ptr, ptr %arrayidx68, align 8, !dbg !3455
  %arrayidx70 = getelementptr inbounds [16 x i16], ptr %15, i64 %idxprom65, !dbg !3455
  %call72 = call i32 %13(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx66, ptr noundef %arrayidx70) #6, !dbg !3456
  %tobool73.not = icmp eq i32 %call72, 0, !dbg !3456
  br i1 %tobool73.not, label %for.inc, label %if.end75, !dbg !3457

if.end75:                                         ; preds = %for.body
  %16 = load ptr, ptr %scan_4x4, align 8, !dbg !3458
  call void %16(ptr noundef nonnull %dctscan, ptr noundef nonnull %dct4x4) #6, !dbg !3459
  %17 = load ptr, ptr %decimate_score16, align 8, !dbg !3460
  %call82 = call i32 %17(ptr noundef nonnull %dctscan) #6, !dbg !3461
  %add83 = add nsw i32 %call82, %i_decimate_mb.0424, !dbg !3462
    #dbg_value(i32 %add83, !3375, !DIExpression(), !3434)
  %cmp84 = icmp sgt i32 %add83, 5, !dbg !3463
  br i1 %cmp84, label %cleanup303, label %for.inc, !dbg !3465

for.inc:                                          ; preds = %if.end75, %for.body
  %i_decimate_mb.2 = phi i32 [ %add83, %if.end75 ], [ %i_decimate_mb.0424, %for.body ], !dbg !3434
    #dbg_value(i32 %i_decimate_mb.2, !3375, !DIExpression(), !3434)
    #dbg_value(i64 1, !3380, !DIExpression(), !3449)
  %18 = load ptr, ptr %quant_4x4, align 8, !dbg !3450
  %19 = load ptr, ptr %arrayidx64, align 8, !dbg !3454
  %arrayidx66.1 = getelementptr inbounds [16 x i16], ptr %19, i64 %idxprom65, !dbg !3454
  %20 = load ptr, ptr %arrayidx68, align 8, !dbg !3455
  %arrayidx70.1 = getelementptr inbounds [16 x i16], ptr %20, i64 %idxprom65, !dbg !3455
  %call72.1 = call i32 %18(ptr noundef nonnull %arrayidx62.1, ptr noundef %arrayidx66.1, ptr noundef %arrayidx70.1) #6, !dbg !3456
  %tobool73.not.1 = icmp eq i32 %call72.1, 0, !dbg !3456
  br i1 %tobool73.not.1, label %for.inc.1, label %if.end75.1, !dbg !3457

if.end75.1:                                       ; preds = %for.inc
  %21 = load ptr, ptr %scan_4x4, align 8, !dbg !3458
  call void %21(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.1) #6, !dbg !3459
  %22 = load ptr, ptr %decimate_score16, align 8, !dbg !3460
  %call82.1 = call i32 %22(ptr noundef nonnull %dctscan) #6, !dbg !3461
  %add83.1 = add nsw i32 %call82.1, %i_decimate_mb.2, !dbg !3462
    #dbg_value(i32 %add83.1, !3375, !DIExpression(), !3434)
  %cmp84.1 = icmp sgt i32 %add83.1, 5, !dbg !3463
  br i1 %cmp84.1, label %cleanup303, label %for.inc.1, !dbg !3465

for.inc.1:                                        ; preds = %if.end75.1, %for.inc
  %i_decimate_mb.2.1 = phi i32 [ %add83.1, %if.end75.1 ], [ %i_decimate_mb.2, %for.inc ], !dbg !3434
    #dbg_value(i32 %i_decimate_mb.2.1, !3375, !DIExpression(), !3434)
    #dbg_value(i64 2, !3380, !DIExpression(), !3449)
  %23 = load ptr, ptr %quant_4x4, align 8, !dbg !3450
  %24 = load ptr, ptr %arrayidx64, align 8, !dbg !3454
  %arrayidx66.2 = getelementptr inbounds [16 x i16], ptr %24, i64 %idxprom65, !dbg !3454
  %25 = load ptr, ptr %arrayidx68, align 8, !dbg !3455
  %arrayidx70.2 = getelementptr inbounds [16 x i16], ptr %25, i64 %idxprom65, !dbg !3455
  %call72.2 = call i32 %23(ptr noundef nonnull %arrayidx62.2, ptr noundef %arrayidx66.2, ptr noundef %arrayidx70.2) #6, !dbg !3456
  %tobool73.not.2 = icmp eq i32 %call72.2, 0, !dbg !3456
  br i1 %tobool73.not.2, label %for.inc.2, label %if.end75.2, !dbg !3457

if.end75.2:                                       ; preds = %for.inc.1
  %26 = load ptr, ptr %scan_4x4, align 8, !dbg !3458
  call void %26(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.2) #6, !dbg !3459
  %27 = load ptr, ptr %decimate_score16, align 8, !dbg !3460
  %call82.2 = call i32 %27(ptr noundef nonnull %dctscan) #6, !dbg !3461
  %add83.2 = add nsw i32 %call82.2, %i_decimate_mb.2.1, !dbg !3462
    #dbg_value(i32 %add83.2, !3375, !DIExpression(), !3434)
  %cmp84.2 = icmp sgt i32 %add83.2, 5, !dbg !3463
  br i1 %cmp84.2, label %cleanup303, label %for.inc.2, !dbg !3465

for.inc.2:                                        ; preds = %if.end75.2, %for.inc.1
  %i_decimate_mb.2.2 = phi i32 [ %add83.2, %if.end75.2 ], [ %i_decimate_mb.2.1, %for.inc.1 ], !dbg !3434
    #dbg_value(i32 %i_decimate_mb.2.2, !3375, !DIExpression(), !3434)
    #dbg_value(i64 3, !3380, !DIExpression(), !3449)
  %28 = load ptr, ptr %quant_4x4, align 8, !dbg !3450
  %29 = load ptr, ptr %arrayidx64, align 8, !dbg !3454
  %arrayidx66.3 = getelementptr inbounds [16 x i16], ptr %29, i64 %idxprom65, !dbg !3454
  %30 = load ptr, ptr %arrayidx68, align 8, !dbg !3455
  %arrayidx70.3 = getelementptr inbounds [16 x i16], ptr %30, i64 %idxprom65, !dbg !3455
  %call72.3 = call i32 %28(ptr noundef nonnull %arrayidx62.3, ptr noundef %arrayidx66.3, ptr noundef %arrayidx70.3) #6, !dbg !3456
  %tobool73.not.3 = icmp eq i32 %call72.3, 0, !dbg !3456
  br i1 %tobool73.not.3, label %for.inc.3, label %if.end75.3, !dbg !3457

if.end75.3:                                       ; preds = %for.inc.2
  %31 = load ptr, ptr %scan_4x4, align 8, !dbg !3458
  call void %31(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.3) #6, !dbg !3459
  %32 = load ptr, ptr %decimate_score16, align 8, !dbg !3460
  %call82.3 = call i32 %32(ptr noundef nonnull %dctscan) #6, !dbg !3461
  %add83.3 = add nsw i32 %call82.3, %i_decimate_mb.2.2, !dbg !3462
    #dbg_value(i32 %add83.3, !3375, !DIExpression(), !3434)
  %cmp84.3 = icmp sgt i32 %add83.3, 5, !dbg !3463
  br i1 %cmp84.3, label %cleanup303, label %for.inc.3, !dbg !3465

for.inc.3:                                        ; preds = %if.end75.3, %for.inc.2
  %i_decimate_mb.2.3 = phi i32 [ %add83.3, %if.end75.3 ], [ %i_decimate_mb.2.2, %for.inc.2 ], !dbg !3434
    #dbg_value(i32 %i_decimate_mb.2.3, !3375, !DIExpression(), !3434)
    #dbg_value(i64 4, !3380, !DIExpression(), !3449)
  %inc92 = add nuw nsw i32 %i8x8.0423, 1, !dbg !3466
    #dbg_value(i32 %inc92, !3373, !DIExpression(), !3434)
  %exitcond = icmp eq i32 %inc92, 4, !dbg !3467
  br i1 %exitcond, label %for.end96, label %for.body, !dbg !3435, !llvm.loop !3468

for.end96:                                        ; preds = %for.inc.3
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796, !dbg !3470
  %33 = load i32, ptr %i_chroma_qp, align 4, !dbg !3470
    #dbg_value(i32 %33, !3370, !DIExpression(), !3392)
  %idxprom98 = sext i32 %33 to i64, !dbg !3471
  %arrayidx99 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %idxprom98, !dbg !3471
  %34 = load i32, ptr %arrayidx99, align 4, !dbg !3471
  %add100 = add nsw i32 %34, 32, !dbg !3472
  %shr101 = ashr i32 %add100, 6, !dbg !3473
    #dbg_value(i32 %shr101, !3371, !DIExpression(), !3392)
    #dbg_value(i32 0, !3382, !DIExpression(), !3474)
    #dbg_value(i32 0, !3382, !DIExpression(), !3474)
  %mvp.sroa.6.0.insert.ext = zext i16 %mvp.sroa.6.0 to i32
  %mvp.sroa.6.0.insert.shift = shl nuw i32 %mvp.sroa.6.0.insert.ext, 16
  %mvp.sroa.0.0.insert.ext = zext i16 %mvp.sroa.0.0 to i32
  %mvp.sroa.0.0.insert.insert = or disjoint i32 %mvp.sroa.6.0.insert.shift, %mvp.sroa.0.0.insert.ext
  %tobool122.not = icmp eq i32 %mvp.sroa.0.0.insert.insert, 0
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %p_fref133 = getelementptr inbounds i8, ptr %h, i64 21424
  %i_stride141 = getelementptr inbounds i8, ptr %h, i64 25008
  %conv146 = sext i16 %mvp.sroa.0.0 to i32
  %conv148 = sext i16 %mvp.sroa.6.0 to i32
  %arrayidx150 = getelementptr inbounds i8, ptr %h, i64 32744
  %weight173 = getelementptr inbounds i8, ptr %h, i64 7584
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 31640
  %sub8x8_dct_dc = getelementptr inbounds i8, ptr %h, i64 32936
  %quant_2x2_dc = getelementptr inbounds i8, ptr %h, i64 33104
  %arrayidx220 = getelementptr inbounds i8, ptr %h, i64 3464
  %arrayidx227 = getelementptr inbounds i8, ptr %h, i64 3512
  %mul236 = shl nsw i32 %shr101, 2
  %decimate_score15 = getelementptr inbounds i8, ptr %h, i64 33144
  br label %for.body106, !dbg !3475

for.body106:                                      ; preds = %for.end96, %for.inc297
  %cmp103.not = phi i1 [ true, %for.end96 ], [ false, %for.inc297 ]
  %indvars.iv = phi i64 [ 0, %for.end96 ], [ 1, %for.inc297 ]
    #dbg_value(i64 %indvars.iv, !3382, !DIExpression(), !3474)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3476
  %arrayidx112 = getelementptr inbounds [3 x ptr], ptr %p_fenc, i64 0, i64 %indvars.iv.next, !dbg !3477
  %35 = load ptr, ptr %arrayidx112, align 8, !dbg !3477
    #dbg_value(ptr %35, !3384, !DIExpression(), !3478)
  %arrayidx118 = getelementptr inbounds [3 x ptr], ptr %p_fdec53, i64 0, i64 %indvars.iv.next, !dbg !3479
  %36 = load ptr, ptr %arrayidx118, align 8, !dbg !3479
    #dbg_value(ptr %36, !3387, !DIExpression(), !3478)
  br i1 %tobool.not, label %if.then120, label %if.end207, !dbg !3480

if.then120:                                       ; preds = %for.body106
  %37 = or disjoint i64 %indvars.iv, 4, !dbg !3481
  %arrayidx164 = getelementptr inbounds [6 x ptr], ptr %p_fref133, i64 0, i64 %37, !dbg !3481
  %38 = load ptr, ptr %arrayidx164, align 8, !dbg !3481
  %arrayidx170 = getelementptr inbounds [3 x i32], ptr %i_stride141, i64 0, i64 %indvars.iv.next, !dbg !3481
  %39 = load i32, ptr %arrayidx170, align 4, !dbg !3481
  br i1 %tobool122.not, label %if.else, label %if.then123, !dbg !3485

if.then123:                                       ; preds = %if.then120
  %40 = load ptr, ptr %mc_chroma, align 8, !dbg !3486
  call void %40(ptr noundef %36, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef %conv146, i32 noundef %conv148, i32 noundef 8, i32 noundef 8) #6, !dbg !3488
  br label %if.end171, !dbg !3489

if.else:                                          ; preds = %if.then120
  %41 = load ptr, ptr %arrayidx150, align 8, !dbg !3490
  call void %41(ptr noundef %36, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef 8) #6, !dbg !3490
  br label %if.end171

if.end171:                                        ; preds = %if.else, %if.then123
  %arrayidx177 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %weight173, i64 0, i64 %indvars.iv.next, !dbg !3491
  %weightfn = getelementptr inbounds i8, ptr %arrayidx177, i64 48, !dbg !3493
  %42 = load ptr, ptr %weightfn, align 16, !dbg !3493
  %tobool178.not = icmp eq ptr %42, null, !dbg !3491
  br i1 %tobool178.not, label %if.end207, label %if.then179, !dbg !3494

if.then179:                                       ; preds = %if.end171
  %arrayidx187 = getelementptr inbounds i8, ptr %42, i64 16, !dbg !3495
  %43 = load ptr, ptr %arrayidx187, align 8, !dbg !3495
  %44 = load ptr, ptr %arrayidx118, align 8, !dbg !3496
  call void %43(ptr noundef %44, i32 noundef 32, ptr noundef %44, i32 noundef 32, ptr noundef nonnull %arrayidx177, i32 noundef 8) #6, !dbg !3495
  br label %if.end207, !dbg !3495

if.end207:                                        ; preds = %if.end171, %if.then179, %for.body106
  %45 = load ptr, ptr %arrayidx209, align 8, !dbg !3497
  %call210 = call i32 %45(ptr noundef %36, i32 noundef 32, ptr noundef %35, i32 noundef 16) #6, !dbg !3497
    #dbg_value(i32 %call210, !3372, !DIExpression(), !3392)
  %cmp211 = icmp slt i32 %call210, %shr101, !dbg !3498
  br i1 %cmp211, label %for.inc297, label %if.end214, !dbg !3500

if.end214:                                        ; preds = %if.end207
  %46 = load ptr, ptr %sub8x8_dct_dc, align 8, !dbg !3501
  call void %46(ptr noundef nonnull %dct2x2, ptr noundef %35, ptr noundef %36) #6, !dbg !3502
  %47 = load ptr, ptr %quant_2x2_dc, align 8, !dbg !3503
  %48 = load ptr, ptr %arrayidx220, align 8, !dbg !3505
  %arrayidx222 = getelementptr inbounds [16 x i16], ptr %48, i64 %idxprom98, !dbg !3505
  %49 = load i16, ptr %arrayidx222, align 2, !dbg !3505
  %50 = lshr i16 %49, 1, !dbg !3506
  %shr225 = zext nneg i16 %50 to i32, !dbg !3506
  %51 = load ptr, ptr %arrayidx227, align 8, !dbg !3507
  %arrayidx229 = getelementptr inbounds [16 x i16], ptr %51, i64 %idxprom98, !dbg !3507
  %52 = load i16, ptr %arrayidx229, align 2, !dbg !3507
  %conv231 = zext i16 %52 to i32, !dbg !3507
  %shl = shl nuw nsw i32 %conv231, 1, !dbg !3508
  %call232 = call i32 %47(ptr noundef nonnull %dct2x2, i32 noundef %shr225, i32 noundef %shl) #6, !dbg !3509
  %tobool233.not = icmp eq i32 %call232, 0, !dbg !3509
  br i1 %tobool233.not, label %if.end235, label %cleanup303, !dbg !3510

if.end235:                                        ; preds = %if.end214
  %cmp237 = icmp slt i32 %call210, %mul236, !dbg !3511
  br i1 %cmp237, label %for.inc297, label %if.end240, !dbg !3513

if.end240:                                        ; preds = %if.end235
  %53 = load ptr, ptr %sub8x8_dct, align 16, !dbg !3514
  call void %53(ptr noundef nonnull %dct4x4, ptr noundef %35, ptr noundef %36) #6, !dbg !3515
    #dbg_value(i32 0, !3388, !DIExpression(), !3516)
    #dbg_value(i32 0, !3390, !DIExpression(), !3516)
    #dbg_value(i32 0, !3390, !DIExpression(), !3516)
    #dbg_value(i32 0, !3388, !DIExpression(), !3516)
    #dbg_value(i32 0, !3390, !DIExpression(), !3516)
    #dbg_value(i64 0, !3388, !DIExpression(), !3516)
  store i16 0, ptr %dct4x4, align 16, !dbg !3517
  %54 = load ptr, ptr %quant_4x4, align 8, !dbg !3520
  %55 = load ptr, ptr %arrayidx220, align 8, !dbg !3522
  %arrayidx262 = getelementptr inbounds [16 x i16], ptr %55, i64 %idxprom98, !dbg !3522
  %56 = load ptr, ptr %arrayidx227, align 8, !dbg !3523
  %arrayidx267 = getelementptr inbounds [16 x i16], ptr %56, i64 %idxprom98, !dbg !3523
  %call269 = call i32 %54(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx262, ptr noundef %arrayidx267) #6, !dbg !3524
  %tobool270.not = icmp eq i32 %call269, 0, !dbg !3524
  br i1 %tobool270.not, label %for.inc287, label %if.end272, !dbg !3525

if.end272:                                        ; preds = %if.end240
  %57 = load ptr, ptr %scan_4x4, align 8, !dbg !3526
  call void %57(ptr noundef nonnull %dctscan, ptr noundef nonnull %dct4x4) #6, !dbg !3527
  %58 = load ptr, ptr %decimate_score15, align 8, !dbg !3528
  %call281 = call i32 %58(ptr noundef nonnull %dctscan) #6, !dbg !3529
    #dbg_value(i32 %call281, !3390, !DIExpression(), !3516)
  %cmp283 = icmp sgt i32 %call281, 6, !dbg !3530
  br i1 %cmp283, label %cleanup303, label %for.inc287, !dbg !3532

for.inc287:                                       ; preds = %if.end272, %if.end240
  %i_decimate_mb245.1 = phi i32 [ %call281, %if.end272 ], [ 0, %if.end240 ], !dbg !3516
    #dbg_value(i32 %i_decimate_mb245.1, !3390, !DIExpression(), !3516)
    #dbg_value(i64 1, !3388, !DIExpression(), !3516)
  store i16 0, ptr %arrayidx62.1, align 16, !dbg !3517
  %59 = load ptr, ptr %quant_4x4, align 8, !dbg !3520
  %60 = load ptr, ptr %arrayidx220, align 8, !dbg !3522
  %arrayidx262.1 = getelementptr inbounds [16 x i16], ptr %60, i64 %idxprom98, !dbg !3522
  %61 = load ptr, ptr %arrayidx227, align 8, !dbg !3523
  %arrayidx267.1 = getelementptr inbounds [16 x i16], ptr %61, i64 %idxprom98, !dbg !3523
  %call269.1 = call i32 %59(ptr noundef nonnull %arrayidx62.1, ptr noundef %arrayidx262.1, ptr noundef %arrayidx267.1) #6, !dbg !3524
  %tobool270.not.1 = icmp eq i32 %call269.1, 0, !dbg !3524
  br i1 %tobool270.not.1, label %for.inc287.1, label %if.end272.1, !dbg !3525

if.end272.1:                                      ; preds = %for.inc287
  %62 = load ptr, ptr %scan_4x4, align 8, !dbg !3526
  call void %62(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.1) #6, !dbg !3527
  %63 = load ptr, ptr %decimate_score15, align 8, !dbg !3528
  %call281.1 = call i32 %63(ptr noundef nonnull %dctscan) #6, !dbg !3529
  %add282.1 = add nsw i32 %call281.1, %i_decimate_mb245.1, !dbg !3533
    #dbg_value(i32 %add282.1, !3390, !DIExpression(), !3516)
  %cmp283.1 = icmp sgt i32 %add282.1, 6, !dbg !3530
  br i1 %cmp283.1, label %cleanup303, label %for.inc287.1, !dbg !3532

for.inc287.1:                                     ; preds = %if.end272.1, %for.inc287
  %i_decimate_mb245.1.1 = phi i32 [ %add282.1, %if.end272.1 ], [ %i_decimate_mb245.1, %for.inc287 ], !dbg !3516
    #dbg_value(i32 %i_decimate_mb245.1.1, !3390, !DIExpression(), !3516)
    #dbg_value(i64 2, !3388, !DIExpression(), !3516)
  store i16 0, ptr %arrayidx62.2, align 16, !dbg !3517
  %64 = load ptr, ptr %quant_4x4, align 8, !dbg !3520
  %65 = load ptr, ptr %arrayidx220, align 8, !dbg !3522
  %arrayidx262.2 = getelementptr inbounds [16 x i16], ptr %65, i64 %idxprom98, !dbg !3522
  %66 = load ptr, ptr %arrayidx227, align 8, !dbg !3523
  %arrayidx267.2 = getelementptr inbounds [16 x i16], ptr %66, i64 %idxprom98, !dbg !3523
  %call269.2 = call i32 %64(ptr noundef nonnull %arrayidx62.2, ptr noundef %arrayidx262.2, ptr noundef %arrayidx267.2) #6, !dbg !3524
  %tobool270.not.2 = icmp eq i32 %call269.2, 0, !dbg !3524
  br i1 %tobool270.not.2, label %for.inc287.2, label %if.end272.2, !dbg !3525

if.end272.2:                                      ; preds = %for.inc287.1
  %67 = load ptr, ptr %scan_4x4, align 8, !dbg !3526
  call void %67(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.2) #6, !dbg !3527
  %68 = load ptr, ptr %decimate_score15, align 8, !dbg !3528
  %call281.2 = call i32 %68(ptr noundef nonnull %dctscan) #6, !dbg !3529
  %add282.2 = add nsw i32 %call281.2, %i_decimate_mb245.1.1, !dbg !3533
    #dbg_value(i32 %add282.2, !3390, !DIExpression(), !3516)
  %cmp283.2 = icmp sgt i32 %add282.2, 6, !dbg !3530
  br i1 %cmp283.2, label %cleanup303, label %for.inc287.2, !dbg !3532

for.inc287.2:                                     ; preds = %if.end272.2, %for.inc287.1
  %i_decimate_mb245.1.2 = phi i32 [ %add282.2, %if.end272.2 ], [ %i_decimate_mb245.1.1, %for.inc287.1 ], !dbg !3516
    #dbg_value(i32 %i_decimate_mb245.1.2, !3390, !DIExpression(), !3516)
    #dbg_value(i64 3, !3388, !DIExpression(), !3516)
  store i16 0, ptr %arrayidx62.3, align 16, !dbg !3517
  %69 = load ptr, ptr %quant_4x4, align 8, !dbg !3520
  %70 = load ptr, ptr %arrayidx220, align 8, !dbg !3522
  %arrayidx262.3 = getelementptr inbounds [16 x i16], ptr %70, i64 %idxprom98, !dbg !3522
  %71 = load ptr, ptr %arrayidx227, align 8, !dbg !3523
  %arrayidx267.3 = getelementptr inbounds [16 x i16], ptr %71, i64 %idxprom98, !dbg !3523
  %call269.3 = call i32 %69(ptr noundef nonnull %arrayidx62.3, ptr noundef %arrayidx262.3, ptr noundef %arrayidx267.3) #6, !dbg !3524
  %tobool270.not.3 = icmp eq i32 %call269.3, 0, !dbg !3524
  br i1 %tobool270.not.3, label %for.inc297, label %if.end272.3, !dbg !3525

if.end272.3:                                      ; preds = %for.inc287.2
  %72 = load ptr, ptr %scan_4x4, align 8, !dbg !3526
  call void %72(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.3) #6, !dbg !3527
  %73 = load ptr, ptr %decimate_score15, align 8, !dbg !3528
  %call281.3 = call i32 %73(ptr noundef nonnull %dctscan) #6, !dbg !3529
  %add282.3 = add nsw i32 %call281.3, %i_decimate_mb245.1.2, !dbg !3533
    #dbg_value(i32 %add282.3, !3390, !DIExpression(), !3516)
  %cmp283.3 = icmp sgt i32 %add282.3, 6, !dbg !3530
  br i1 %cmp283.3, label %cleanup303, label %for.inc297, !dbg !3532

for.inc297:                                       ; preds = %for.inc287.2, %if.end272.3, %if.end207, %if.end235
    #dbg_value(i64 %indvars.iv.next, !3382, !DIExpression(), !3474)
  br i1 %cmp103.not, label %for.body106, label %for.end301, !dbg !3475, !llvm.loop !3534

for.end301:                                       ; preds = %for.inc297
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !3536
  store i32 1, ptr %b_skip_mc, align 4, !dbg !3537
  br label %cleanup303, !dbg !3538

cleanup303:                                       ; preds = %if.end75, %if.end75.1, %if.end75.2, %if.end75.3, %if.end214, %if.end272, %if.end272.1, %if.end272.2, %if.end272.3, %for.end301
  %retval.7 = phi i32 [ 1, %for.end301 ], [ 0, %if.end272.3 ], [ 0, %if.end272.2 ], [ 0, %if.end272.1 ], [ 0, %if.end272 ], [ 0, %if.end214 ], [ 0, %if.end75.3 ], [ 0, %if.end75.2 ], [ 0, %if.end75.1 ], [ 0, %if.end75 ], !dbg !3392
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dctscan) #6, !dbg !3539
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dct2x2) #6, !dbg !3539
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !3539
  ret i32 %retval.7, !dbg !3539
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %h) local_unnamed_addr #4 !dbg !3540 {
entry:
    #dbg_value(ptr %h, !3542, !DIExpression(), !3556)
    #dbg_value(i32 0, !3543, !DIExpression(), !3557)
  %nr_count = getelementptr inbounds i8, ptr %h, i64 31168
  %i_noise_reduction = getelementptr inbounds i8, ptr %h, i64 452
  %0 = load i32, ptr %i_noise_reduction, align 4
  %conv = sext i32 %0 to i64
  %nr_residual_sum27 = getelementptr inbounds i8, ptr %h, i64 30400
  %nr_offset = getelementptr i8, ptr %h, i64 30912
    #dbg_value(i64 0, !3543, !DIExpression(), !3557)
    #dbg_value(i32 16, !3545, !DIExpression(), !3558)
    #dbg_value(ptr poison, !3548, !DIExpression(), !3558)
  %1 = load i32, ptr %nr_count, align 4, !dbg !3559
  %cmp5 = icmp ugt i32 %1, 262144, !dbg !3560
  %.pre = load i32, ptr %nr_residual_sum27, align 4, !dbg !3561
  br i1 %cmp5, label %for.body9.preheader, label %entry.if.end_crit_edge, !dbg !3563

entry.if.end_crit_edge:                           ; preds = %entry
  %arrayidx31.1101.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30404
  %.pre123 = load i32, ptr %arrayidx31.1101.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.2.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30408
  %.pre124 = load i32, ptr %arrayidx31.2.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.3.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30412
  %.pre125 = load i32, ptr %arrayidx31.3.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.4.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30416
  %.pre126 = load i32, ptr %arrayidx31.4.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.5.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30420
  %.pre127 = load i32, ptr %arrayidx31.5.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.6.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30424
  %.pre128 = load i32, ptr %arrayidx31.6.phi.trans.insert, align 4, !dbg !3561
  %arrayidx31.7.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30428
  %.pre129 = load i32, ptr %arrayidx31.7.phi.trans.insert, align 4, !dbg !3561
  br label %if.end, !dbg !3563

for.body9.preheader:                              ; preds = %entry
    #dbg_value(i64 0, !3550, !DIExpression(), !3564)
  %shr = lshr i32 %.pre, 1, !dbg !3565
  store i32 %shr, ptr %nr_residual_sum27, align 4, !dbg !3565
    #dbg_value(i64 1, !3550, !DIExpression(), !3564)
  %arrayidx13.1118 = getelementptr inbounds i8, ptr %h, i64 30404, !dbg !3567
    #dbg_value(i64 2, !3550, !DIExpression(), !3564)
    #dbg_value(i64 3, !3550, !DIExpression(), !3564)
    #dbg_value(i64 4, !3550, !DIExpression(), !3564)
  %2 = load <4 x i32>, ptr %arrayidx13.1118, align 4, !dbg !3565
  %3 = lshr <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %3, ptr %arrayidx13.1118, align 4, !dbg !3565
    #dbg_value(i64 5, !3550, !DIExpression(), !3564)
  %arrayidx13.5 = getelementptr inbounds i8, ptr %h, i64 30420, !dbg !3567
    #dbg_value(i64 6, !3550, !DIExpression(), !3564)
    #dbg_value(i64 7, !3550, !DIExpression(), !3564)
    #dbg_value(i64 8, !3550, !DIExpression(), !3564)
  %4 = load <4 x i32>, ptr %arrayidx13.5, align 4, !dbg !3565
  %5 = lshr <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %5, ptr %arrayidx13.5, align 4, !dbg !3565
    #dbg_value(i64 9, !3550, !DIExpression(), !3564)
  %arrayidx13.9 = getelementptr inbounds i8, ptr %h, i64 30436, !dbg !3567
    #dbg_value(i64 10, !3550, !DIExpression(), !3564)
    #dbg_value(i64 11, !3550, !DIExpression(), !3564)
    #dbg_value(i64 12, !3550, !DIExpression(), !3564)
  %6 = load <4 x i32>, ptr %arrayidx13.9, align 4, !dbg !3565
  %7 = lshr <4 x i32> %6, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %7, ptr %arrayidx13.9, align 4, !dbg !3565
    #dbg_value(i64 13, !3550, !DIExpression(), !3564)
  %arrayidx13.13 = getelementptr inbounds i8, ptr %h, i64 30452, !dbg !3567
    #dbg_value(i64 14, !3550, !DIExpression(), !3564)
  %8 = load <2 x i32>, ptr %arrayidx13.13, align 4, !dbg !3565
  %9 = lshr <2 x i32> %8, <i32 1, i32 1>, !dbg !3565
  store <2 x i32> %9, ptr %arrayidx13.13, align 4, !dbg !3565
    #dbg_value(i64 15, !3550, !DIExpression(), !3564)
  %arrayidx13.15 = getelementptr inbounds i8, ptr %h, i64 30460, !dbg !3567
  %10 = load i32, ptr %arrayidx13.15, align 4, !dbg !3565
  %shr.15 = lshr i32 %10, 1, !dbg !3565
  store i32 %shr.15, ptr %arrayidx13.15, align 4, !dbg !3565
    #dbg_value(i64 16, !3550, !DIExpression(), !3564)
  %shr17 = lshr i32 %1, 1, !dbg !3568
  store i32 %shr17, ptr %nr_count, align 4, !dbg !3568
  %11 = extractelement <4 x i32> %3, i64 0, !dbg !3569
  %12 = extractelement <4 x i32> %3, i64 1, !dbg !3569
  %13 = extractelement <4 x i32> %3, i64 2, !dbg !3569
  %14 = extractelement <4 x i32> %3, i64 3, !dbg !3569
  %15 = extractelement <4 x i32> %5, i64 0, !dbg !3569
  %16 = extractelement <4 x i32> %5, i64 1, !dbg !3569
  %17 = extractelement <4 x i32> %5, i64 2, !dbg !3569
  br label %if.end, !dbg !3569

if.end:                                           ; preds = %entry.if.end_crit_edge, %for.body9.preheader
  %18 = phi i32 [ %17, %for.body9.preheader ], [ %.pre129, %entry.if.end_crit_edge ], !dbg !3561
  %19 = phi i32 [ %16, %for.body9.preheader ], [ %.pre128, %entry.if.end_crit_edge ], !dbg !3561
  %20 = phi i32 [ %15, %for.body9.preheader ], [ %.pre127, %entry.if.end_crit_edge ], !dbg !3561
  %21 = phi i32 [ %14, %for.body9.preheader ], [ %.pre126, %entry.if.end_crit_edge ], !dbg !3561
  %22 = phi i32 [ %13, %for.body9.preheader ], [ %.pre125, %entry.if.end_crit_edge ], !dbg !3561
  %23 = phi i32 [ %12, %for.body9.preheader ], [ %.pre124, %entry.if.end_crit_edge ], !dbg !3561
  %24 = phi i32 [ %11, %for.body9.preheader ], [ %.pre123, %entry.if.end_crit_edge ], !dbg !3561
  %25 = phi i32 [ %shr, %for.body9.preheader ], [ %.pre, %entry.if.end_crit_edge ], !dbg !3561
  %26 = phi i32 [ %shr17, %for.body9.preheader ], [ %1, %entry.if.end_crit_edge ], !dbg !3570
    #dbg_value(i64 0, !3554, !DIExpression(), !3571)
  %conv26 = zext nneg i32 %26 to i64, !dbg !3570
  %mul = mul nsw i64 %conv26, %conv, !dbg !3572
  %div83 = lshr i32 %25, 1, !dbg !3573
  %conv32 = zext nneg i32 %div83 to i64, !dbg !3561
  %add = add nsw i64 %mul, %conv32, !dbg !3574
  %conv38 = zext i32 %25 to i64, !dbg !3575
  %mul42 = mul nuw nsw i64 %conv38, 800, !dbg !3576
  %div4384 = lshr i64 %mul42, 8, !dbg !3577
  %add44 = add nuw nsw i64 %div4384, 1, !dbg !3578
  %div45 = udiv i64 %add, %add44, !dbg !3579
  %conv46 = trunc i64 %div45 to i16, !dbg !3580
  store i16 %conv46, ptr %nr_offset, align 2, !dbg !3581
    #dbg_value(i64 1, !3554, !DIExpression(), !3571)
  %div83.1102 = lshr i32 %24, 1, !dbg !3573
  %conv32.1103 = zext nneg i32 %div83.1102 to i64, !dbg !3561
  %add.1104 = add nsw i64 %mul, %conv32.1103, !dbg !3574
  %conv38.1105 = zext i32 %24 to i64, !dbg !3575
  %mul42.1108 = mul nuw nsw i64 %conv38.1105, 320, !dbg !3576
  %div4384.1109 = lshr i64 %mul42.1108, 8, !dbg !3577
  %add44.1110 = add nuw nsw i64 %div4384.1109, 1, !dbg !3578
  %div45.1111 = udiv i64 %add.1104, %add44.1110, !dbg !3579
  %conv46.1112 = trunc i64 %div45.1111 to i16, !dbg !3580
  %arrayidx50.1113 = getelementptr inbounds i8, ptr %h, i64 30914, !dbg !3582
  store i16 %conv46.1112, ptr %arrayidx50.1113, align 2, !dbg !3581
    #dbg_value(i64 2, !3554, !DIExpression(), !3571)
  %div83.2 = lshr i32 %23, 1, !dbg !3573
  %conv32.2 = zext nneg i32 %div83.2 to i64, !dbg !3561
  %add.2 = add nsw i64 %mul, %conv32.2, !dbg !3574
  %conv38.2 = zext i32 %23 to i64, !dbg !3575
  %mul42.2 = mul nuw nsw i64 %conv38.2, 800, !dbg !3576
  %div4384.2 = lshr i64 %mul42.2, 8, !dbg !3577
  %add44.2 = add nuw nsw i64 %div4384.2, 1, !dbg !3578
  %div45.2 = udiv i64 %add.2, %add44.2, !dbg !3579
  %conv46.2 = trunc i64 %div45.2 to i16, !dbg !3580
  %arrayidx50.2 = getelementptr inbounds i8, ptr %h, i64 30916, !dbg !3582
  store i16 %conv46.2, ptr %arrayidx50.2, align 2, !dbg !3581
    #dbg_value(i64 3, !3554, !DIExpression(), !3571)
  %div83.3 = lshr i32 %22, 1, !dbg !3573
  %conv32.3 = zext nneg i32 %div83.3 to i64, !dbg !3561
  %add.3 = add nsw i64 %mul, %conv32.3, !dbg !3574
  %conv38.3 = zext i32 %22 to i64, !dbg !3575
  %mul42.3 = mul nuw nsw i64 %conv38.3, 320, !dbg !3576
  %div4384.3 = lshr i64 %mul42.3, 8, !dbg !3577
  %add44.3 = add nuw nsw i64 %div4384.3, 1, !dbg !3578
  %div45.3 = udiv i64 %add.3, %add44.3, !dbg !3579
  %conv46.3 = trunc i64 %div45.3 to i16, !dbg !3580
  %arrayidx50.3 = getelementptr inbounds i8, ptr %h, i64 30918, !dbg !3582
  store i16 %conv46.3, ptr %arrayidx50.3, align 2, !dbg !3581
    #dbg_value(i64 4, !3554, !DIExpression(), !3571)
  %div83.4 = lshr i32 %21, 1, !dbg !3573
  %conv32.4 = zext nneg i32 %div83.4 to i64, !dbg !3561
  %add.4 = add nsw i64 %mul, %conv32.4, !dbg !3574
  %conv38.4 = zext i32 %21 to i64, !dbg !3575
  %mul42.4 = mul nuw nsw i64 %conv38.4, 320, !dbg !3576
  %div4384.4 = lshr i64 %mul42.4, 8, !dbg !3577
  %add44.4 = add nuw nsw i64 %div4384.4, 1, !dbg !3578
  %div45.4 = udiv i64 %add.4, %add44.4, !dbg !3579
  %conv46.4 = trunc i64 %div45.4 to i16, !dbg !3580
  %arrayidx50.4 = getelementptr inbounds i8, ptr %h, i64 30920, !dbg !3582
  store i16 %conv46.4, ptr %arrayidx50.4, align 2, !dbg !3581
    #dbg_value(i64 5, !3554, !DIExpression(), !3571)
  %div83.5 = lshr i32 %20, 1, !dbg !3573
  %conv32.5 = zext nneg i32 %div83.5 to i64, !dbg !3561
  %add.5 = add nsw i64 %mul, %conv32.5, !dbg !3574
  %27 = lshr i32 %20, 1, !dbg !3577
  %narrow = add nuw i32 %27, 1, !dbg !3578
  %add44.5 = zext i32 %narrow to i64, !dbg !3578
  %div45.5 = udiv i64 %add.5, %add44.5, !dbg !3579
  %conv46.5 = trunc i64 %div45.5 to i16, !dbg !3580
  %arrayidx50.5 = getelementptr inbounds i8, ptr %h, i64 30922, !dbg !3582
  store i16 %conv46.5, ptr %arrayidx50.5, align 2, !dbg !3581
    #dbg_value(i64 6, !3554, !DIExpression(), !3571)
  %div83.6 = lshr i32 %19, 1, !dbg !3573
  %conv32.6 = zext nneg i32 %div83.6 to i64, !dbg !3561
  %add.6 = add nsw i64 %mul, %conv32.6, !dbg !3574
  %conv38.6 = zext i32 %19 to i64, !dbg !3575
  %mul42.6 = mul nuw nsw i64 %conv38.6, 320, !dbg !3576
  %div4384.6 = lshr i64 %mul42.6, 8, !dbg !3577
  %add44.6 = add nuw nsw i64 %div4384.6, 1, !dbg !3578
  %div45.6 = udiv i64 %add.6, %add44.6, !dbg !3579
  %conv46.6 = trunc i64 %div45.6 to i16, !dbg !3580
  %arrayidx50.6 = getelementptr inbounds i8, ptr %h, i64 30924, !dbg !3582
  store i16 %conv46.6, ptr %arrayidx50.6, align 2, !dbg !3581
    #dbg_value(i64 7, !3554, !DIExpression(), !3571)
  %div83.7 = lshr i32 %18, 1, !dbg !3573
  %conv32.7 = zext nneg i32 %div83.7 to i64, !dbg !3561
  %add.7 = add nsw i64 %mul, %conv32.7, !dbg !3574
  %28 = lshr i32 %18, 1, !dbg !3577
  %narrow130 = add nuw i32 %28, 1, !dbg !3578
  %add44.7 = zext i32 %narrow130 to i64, !dbg !3578
  %div45.7 = udiv i64 %add.7, %add44.7, !dbg !3579
  %conv46.7 = trunc i64 %div45.7 to i16, !dbg !3580
  %arrayidx50.7 = getelementptr inbounds i8, ptr %h, i64 30926, !dbg !3582
  store i16 %conv46.7, ptr %arrayidx50.7, align 2, !dbg !3581
    #dbg_value(i64 8, !3554, !DIExpression(), !3571)
  %29 = load i32, ptr %nr_count, align 4, !dbg !3570
  %conv26.8 = zext i32 %29 to i64, !dbg !3570
  %mul.8 = mul nsw i64 %conv26.8, %conv, !dbg !3572
  %arrayidx31.8 = getelementptr inbounds i8, ptr %h, i64 30432, !dbg !3561
  %30 = load i32, ptr %arrayidx31.8, align 4, !dbg !3561
  %div83.8 = lshr i32 %30, 1, !dbg !3573
  %conv32.8 = zext nneg i32 %div83.8 to i64, !dbg !3561
  %add.8 = add nsw i64 %mul.8, %conv32.8, !dbg !3574
  %conv38.8 = zext i32 %30 to i64, !dbg !3575
  %mul42.8 = mul nuw nsw i64 %conv38.8, 800, !dbg !3576
  %div4384.8 = lshr i64 %mul42.8, 8, !dbg !3577
  %add44.8 = add nuw nsw i64 %div4384.8, 1, !dbg !3578
  %div45.8 = udiv i64 %add.8, %add44.8, !dbg !3579
  %conv46.8 = trunc i64 %div45.8 to i16, !dbg !3580
  %arrayidx50.8 = getelementptr inbounds i8, ptr %h, i64 30928, !dbg !3582
  store i16 %conv46.8, ptr %arrayidx50.8, align 2, !dbg !3581
    #dbg_value(i64 9, !3554, !DIExpression(), !3571)
  %arrayidx31.9 = getelementptr inbounds i8, ptr %h, i64 30436, !dbg !3561
  %31 = load i32, ptr %arrayidx31.9, align 4, !dbg !3561
  %div83.9 = lshr i32 %31, 1, !dbg !3573
  %conv32.9 = zext nneg i32 %div83.9 to i64, !dbg !3561
  %add.9 = add nsw i64 %mul.8, %conv32.9, !dbg !3574
  %conv38.9 = zext i32 %31 to i64, !dbg !3575
  %mul42.9 = mul nuw nsw i64 %conv38.9, 320, !dbg !3576
  %div4384.9 = lshr i64 %mul42.9, 8, !dbg !3577
  %add44.9 = add nuw nsw i64 %div4384.9, 1, !dbg !3578
  %div45.9 = udiv i64 %add.9, %add44.9, !dbg !3579
  %conv46.9 = trunc i64 %div45.9 to i16, !dbg !3580
  %arrayidx50.9 = getelementptr inbounds i8, ptr %h, i64 30930, !dbg !3582
  store i16 %conv46.9, ptr %arrayidx50.9, align 2, !dbg !3581
    #dbg_value(i64 10, !3554, !DIExpression(), !3571)
  %arrayidx31.10 = getelementptr inbounds i8, ptr %h, i64 30440, !dbg !3561
  %32 = load i32, ptr %arrayidx31.10, align 4, !dbg !3561
  %div83.10 = lshr i32 %32, 1, !dbg !3573
  %conv32.10 = zext nneg i32 %div83.10 to i64, !dbg !3561
  %add.10 = add nsw i64 %mul.8, %conv32.10, !dbg !3574
  %conv38.10 = zext i32 %32 to i64, !dbg !3575
  %mul42.10 = mul nuw nsw i64 %conv38.10, 800, !dbg !3576
  %div4384.10 = lshr i64 %mul42.10, 8, !dbg !3577
  %add44.10 = add nuw nsw i64 %div4384.10, 1, !dbg !3578
  %div45.10 = udiv i64 %add.10, %add44.10, !dbg !3579
  %conv46.10 = trunc i64 %div45.10 to i16, !dbg !3580
  %arrayidx50.10 = getelementptr inbounds i8, ptr %h, i64 30932, !dbg !3582
  store i16 %conv46.10, ptr %arrayidx50.10, align 2, !dbg !3581
    #dbg_value(i64 11, !3554, !DIExpression(), !3571)
  %arrayidx31.11 = getelementptr inbounds i8, ptr %h, i64 30444, !dbg !3561
  %33 = load i32, ptr %arrayidx31.11, align 4, !dbg !3561
  %div83.11 = lshr i32 %33, 1, !dbg !3573
  %conv32.11 = zext nneg i32 %div83.11 to i64, !dbg !3561
  %add.11 = add nsw i64 %mul.8, %conv32.11, !dbg !3574
  %conv38.11 = zext i32 %33 to i64, !dbg !3575
  %mul42.11 = mul nuw nsw i64 %conv38.11, 320, !dbg !3576
  %div4384.11 = lshr i64 %mul42.11, 8, !dbg !3577
  %add44.11 = add nuw nsw i64 %div4384.11, 1, !dbg !3578
  %div45.11 = udiv i64 %add.11, %add44.11, !dbg !3579
  %conv46.11 = trunc i64 %div45.11 to i16, !dbg !3580
  %arrayidx50.11 = getelementptr inbounds i8, ptr %h, i64 30934, !dbg !3582
  store i16 %conv46.11, ptr %arrayidx50.11, align 2, !dbg !3581
    #dbg_value(i64 12, !3554, !DIExpression(), !3571)
  %arrayidx31.12 = getelementptr inbounds i8, ptr %h, i64 30448, !dbg !3561
  %34 = load i32, ptr %arrayidx31.12, align 4, !dbg !3561
  %div83.12 = lshr i32 %34, 1, !dbg !3573
  %conv32.12 = zext nneg i32 %div83.12 to i64, !dbg !3561
  %add.12 = add nsw i64 %mul.8, %conv32.12, !dbg !3574
  %conv38.12 = zext i32 %34 to i64, !dbg !3575
  %mul42.12 = mul nuw nsw i64 %conv38.12, 320, !dbg !3576
  %div4384.12 = lshr i64 %mul42.12, 8, !dbg !3577
  %add44.12 = add nuw nsw i64 %div4384.12, 1, !dbg !3578
  %div45.12 = udiv i64 %add.12, %add44.12, !dbg !3579
  %conv46.12 = trunc i64 %div45.12 to i16, !dbg !3580
  %arrayidx50.12 = getelementptr inbounds i8, ptr %h, i64 30936, !dbg !3582
  store i16 %conv46.12, ptr %arrayidx50.12, align 2, !dbg !3581
    #dbg_value(i64 13, !3554, !DIExpression(), !3571)
  %arrayidx31.13 = getelementptr inbounds i8, ptr %h, i64 30452, !dbg !3561
  %35 = load i32, ptr %arrayidx31.13, align 4, !dbg !3561
  %div83.13 = lshr i32 %35, 1, !dbg !3573
  %conv32.13 = zext nneg i32 %div83.13 to i64, !dbg !3561
  %add.13 = add nsw i64 %mul.8, %conv32.13, !dbg !3574
  %36 = lshr i32 %35, 1, !dbg !3577
  %narrow131 = add nuw i32 %36, 1, !dbg !3578
  %add44.13 = zext i32 %narrow131 to i64, !dbg !3578
  %div45.13 = udiv i64 %add.13, %add44.13, !dbg !3579
  %conv46.13 = trunc i64 %div45.13 to i16, !dbg !3580
  %arrayidx50.13 = getelementptr inbounds i8, ptr %h, i64 30938, !dbg !3582
  store i16 %conv46.13, ptr %arrayidx50.13, align 2, !dbg !3581
    #dbg_value(i64 14, !3554, !DIExpression(), !3571)
  %arrayidx31.14 = getelementptr inbounds i8, ptr %h, i64 30456, !dbg !3561
  %37 = load i32, ptr %arrayidx31.14, align 4, !dbg !3561
  %div83.14 = lshr i32 %37, 1, !dbg !3573
  %conv32.14 = zext nneg i32 %div83.14 to i64, !dbg !3561
  %add.14 = add nsw i64 %mul.8, %conv32.14, !dbg !3574
  %conv38.14 = zext i32 %37 to i64, !dbg !3575
  %mul42.14 = mul nuw nsw i64 %conv38.14, 320, !dbg !3576
  %div4384.14 = lshr i64 %mul42.14, 8, !dbg !3577
  %add44.14 = add nuw nsw i64 %div4384.14, 1, !dbg !3578
  %div45.14 = udiv i64 %add.14, %add44.14, !dbg !3579
  %conv46.14 = trunc i64 %div45.14 to i16, !dbg !3580
  %arrayidx50.14 = getelementptr inbounds i8, ptr %h, i64 30940, !dbg !3582
  store i16 %conv46.14, ptr %arrayidx50.14, align 2, !dbg !3581
    #dbg_value(i64 15, !3554, !DIExpression(), !3571)
  %arrayidx31.15 = getelementptr inbounds i8, ptr %h, i64 30460, !dbg !3561
  %38 = load i32, ptr %arrayidx31.15, align 4, !dbg !3561
  %div83.15 = lshr i32 %38, 1, !dbg !3573
  %conv32.15 = zext nneg i32 %div83.15 to i64, !dbg !3561
  %add.15 = add nsw i64 %mul.8, %conv32.15, !dbg !3574
  %39 = lshr i32 %38, 1, !dbg !3577
  %narrow132 = add nuw i32 %39, 1, !dbg !3578
  %add44.15 = zext i32 %narrow132 to i64, !dbg !3578
  %div45.15 = udiv i64 %add.15, %add44.15, !dbg !3579
  %conv46.15 = trunc i64 %div45.15 to i16, !dbg !3580
  %arrayidx50.15 = getelementptr inbounds i8, ptr %h, i64 30942, !dbg !3582
  store i16 %conv46.15, ptr %arrayidx50.15, align 2, !dbg !3581
    #dbg_value(i64 16, !3554, !DIExpression(), !3571)
    #dbg_value(i64 1, !3543, !DIExpression(), !3557)
    #dbg_value(i32 64, !3545, !DIExpression(), !3558)
    #dbg_value(ptr @x264_dct8_weight2_tab, !3548, !DIExpression(), !3558)
  %arrayidx.1 = getelementptr inbounds i8, ptr %h, i64 31172, !dbg !3559
  %40 = load i32, ptr %arrayidx.1, align 4, !dbg !3559
  %cmp5.1 = icmp ugt i32 %40, 65536, !dbg !3560
  br i1 %cmp5.1, label %vector.body, label %vector.memcheck, !dbg !3563

vector.body:                                      ; preds = %if.end
  %41 = getelementptr inbounds i8, ptr %h, i64 30656, !dbg !3567
  %42 = getelementptr inbounds i8, ptr %h, i64 30672, !dbg !3565
  %43 = getelementptr inbounds i8, ptr %h, i64 30688, !dbg !3565
  %44 = getelementptr inbounds i8, ptr %h, i64 30704, !dbg !3565
  %wide.load = load <4 x i32>, ptr %41, align 4, !dbg !3565
  %wide.load133 = load <4 x i32>, ptr %42, align 4, !dbg !3565
  %wide.load134 = load <4 x i32>, ptr %43, align 4, !dbg !3565
  %wide.load135 = load <4 x i32>, ptr %44, align 4, !dbg !3565
  %45 = lshr <4 x i32> %wide.load, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %46 = lshr <4 x i32> %wide.load133, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %47 = lshr <4 x i32> %wide.load134, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %48 = lshr <4 x i32> %wide.load135, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %45, ptr %41, align 4, !dbg !3565
  store <4 x i32> %46, ptr %42, align 4, !dbg !3565
  store <4 x i32> %47, ptr %43, align 4, !dbg !3565
  store <4 x i32> %48, ptr %44, align 4, !dbg !3565
  %49 = getelementptr inbounds i8, ptr %h, i64 30720, !dbg !3567
  %50 = getelementptr inbounds i8, ptr %h, i64 30736, !dbg !3565
  %51 = getelementptr inbounds i8, ptr %h, i64 30752, !dbg !3565
  %52 = getelementptr inbounds i8, ptr %h, i64 30768, !dbg !3565
  %wide.load.1 = load <4 x i32>, ptr %49, align 4, !dbg !3565
  %wide.load133.1 = load <4 x i32>, ptr %50, align 4, !dbg !3565
  %wide.load134.1 = load <4 x i32>, ptr %51, align 4, !dbg !3565
  %wide.load135.1 = load <4 x i32>, ptr %52, align 4, !dbg !3565
  %53 = lshr <4 x i32> %wide.load.1, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %54 = lshr <4 x i32> %wide.load133.1, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %55 = lshr <4 x i32> %wide.load134.1, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %56 = lshr <4 x i32> %wide.load135.1, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %53, ptr %49, align 4, !dbg !3565
  store <4 x i32> %54, ptr %50, align 4, !dbg !3565
  store <4 x i32> %55, ptr %51, align 4, !dbg !3565
  store <4 x i32> %56, ptr %52, align 4, !dbg !3565
  %57 = getelementptr inbounds i8, ptr %h, i64 30784, !dbg !3567
  %58 = getelementptr inbounds i8, ptr %h, i64 30800, !dbg !3565
  %59 = getelementptr inbounds i8, ptr %h, i64 30816, !dbg !3565
  %60 = getelementptr inbounds i8, ptr %h, i64 30832, !dbg !3565
  %wide.load.2 = load <4 x i32>, ptr %57, align 4, !dbg !3565
  %wide.load133.2 = load <4 x i32>, ptr %58, align 4, !dbg !3565
  %wide.load134.2 = load <4 x i32>, ptr %59, align 4, !dbg !3565
  %wide.load135.2 = load <4 x i32>, ptr %60, align 4, !dbg !3565
  %61 = lshr <4 x i32> %wide.load.2, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %62 = lshr <4 x i32> %wide.load133.2, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %63 = lshr <4 x i32> %wide.load134.2, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %64 = lshr <4 x i32> %wide.load135.2, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %61, ptr %57, align 4, !dbg !3565
  store <4 x i32> %62, ptr %58, align 4, !dbg !3565
  store <4 x i32> %63, ptr %59, align 4, !dbg !3565
  store <4 x i32> %64, ptr %60, align 4, !dbg !3565
  %65 = getelementptr inbounds i8, ptr %h, i64 30848, !dbg !3567
  %66 = getelementptr inbounds i8, ptr %h, i64 30864, !dbg !3565
  %67 = getelementptr inbounds i8, ptr %h, i64 30880, !dbg !3565
  %68 = getelementptr inbounds i8, ptr %h, i64 30896, !dbg !3565
  %wide.load.3 = load <4 x i32>, ptr %65, align 4, !dbg !3565
  %wide.load133.3 = load <4 x i32>, ptr %66, align 4, !dbg !3565
  %wide.load134.3 = load <4 x i32>, ptr %67, align 4, !dbg !3565
  %wide.load135.3 = load <4 x i32>, ptr %68, align 4, !dbg !3565
  %69 = lshr <4 x i32> %wide.load.3, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %70 = lshr <4 x i32> %wide.load133.3, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %71 = lshr <4 x i32> %wide.load134.3, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  %72 = lshr <4 x i32> %wide.load135.3, <i32 1, i32 1, i32 1, i32 1>, !dbg !3565
  store <4 x i32> %69, ptr %65, align 4, !dbg !3565
  store <4 x i32> %70, ptr %66, align 4, !dbg !3565
  store <4 x i32> %71, ptr %67, align 4, !dbg !3565
  store <4 x i32> %72, ptr %68, align 4, !dbg !3565
  %73 = load i32, ptr %arrayidx.1, align 4, !dbg !3568
  %shr17.1 = lshr i32 %73, 1, !dbg !3568
  store i32 %shr17.1, ptr %arrayidx.1, align 4, !dbg !3568
  br label %vector.memcheck, !dbg !3569

vector.memcheck:                                  ; preds = %if.end, %vector.body
    #dbg_value(i32 0, !3554, !DIExpression(), !3571)
  %scevgep = getelementptr i8, ptr %h, i64 31040, !dbg !3583
  %scevgep136 = getelementptr i8, ptr %h, i64 31168, !dbg !3583
  %scevgep137 = getelementptr i8, ptr %h, i64 31176, !dbg !3583
  %scevgep138 = getelementptr i8, ptr %h, i64 30656, !dbg !3583
  %bound0 = icmp ult ptr %scevgep, %scevgep137, !dbg !3583
  %bound1 = icmp ult ptr %arrayidx.1, %scevgep136, !dbg !3583
  %found.conflict = and i1 %bound0, %bound1, !dbg !3583
  %bound0139 = icmp ult ptr %scevgep, %nr_offset, !dbg !3583
  %bound1140 = icmp ult ptr %scevgep138, %scevgep136, !dbg !3583
  %found.conflict141 = and i1 %bound0139, %bound1140, !dbg !3583
  %conflict.rdx = or i1 %found.conflict, %found.conflict141, !dbg !3583
  br i1 %conflict.rdx, label %for.body22.1, label %vector.body146.preheader, !dbg !3583

vector.body146.preheader:                         ; preds = %vector.memcheck
  %74 = load i32, ptr %arrayidx.1, align 4, !alias.scope !3584
  %75 = zext i32 %74 to i64
  %76 = zext i32 %74 to i64
  %77 = zext i32 %74 to i64
  %78 = zext i32 %74 to i64
  %79 = mul nsw i64 %75, %conv
  %80 = mul nsw i64 %76, %conv
  %81 = mul nsw i64 %77, %conv
  %82 = mul nsw i64 %78, %conv
  br label %vector.body146, !dbg !3583

vector.body146:                                   ; preds = %vector.body146.preheader, %vector.body146
  %index147 = phi i64 [ %index.next148, %vector.body146 ], [ 0, %vector.body146.preheader ], !dbg !3587
  %83 = or disjoint i64 %index147, 1, !dbg !3583
  %84 = or disjoint i64 %index147, 2, !dbg !3583
  %85 = or disjoint i64 %index147, 3, !dbg !3583
  %86 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %index147, !dbg !3561
  %87 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %83, !dbg !3561
  %88 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %84, !dbg !3561
  %89 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %85, !dbg !3561
  %90 = load i32, ptr %86, align 4, !dbg !3561, !alias.scope !3588
  %91 = load i32, ptr %87, align 4, !dbg !3561, !alias.scope !3588
  %92 = load i32, ptr %88, align 4, !dbg !3561, !alias.scope !3588
  %93 = load i32, ptr %89, align 4, !dbg !3561, !alias.scope !3588
  %94 = lshr i32 %90, 1, !dbg !3573
  %95 = lshr i32 %91, 1, !dbg !3573
  %96 = lshr i32 %92, 1, !dbg !3573
  %97 = lshr i32 %93, 1, !dbg !3573
  %98 = zext nneg i32 %94 to i64, !dbg !3561
  %99 = zext nneg i32 %95 to i64, !dbg !3561
  %100 = zext nneg i32 %96 to i64, !dbg !3561
  %101 = zext nneg i32 %97 to i64, !dbg !3561
  %102 = add nsw i64 %79, %98, !dbg !3574
  %103 = add nsw i64 %80, %99, !dbg !3574
  %104 = add nsw i64 %81, %100, !dbg !3574
  %105 = add nsw i64 %82, %101, !dbg !3574
  %106 = zext i32 %90 to i64, !dbg !3575
  %107 = zext i32 %91 to i64, !dbg !3575
  %108 = zext i32 %92 to i64, !dbg !3575
  %109 = zext i32 %93 to i64, !dbg !3575
  %110 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %index147, !dbg !3590
  %111 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %83, !dbg !3590
  %112 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %84, !dbg !3590
  %113 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %85, !dbg !3590
  %114 = load i16, ptr %110, align 8, !dbg !3590
  %115 = load i16, ptr %111, align 2, !dbg !3590
  %116 = load i16, ptr %112, align 4, !dbg !3590
  %117 = load i16, ptr %113, align 2, !dbg !3590
  %118 = zext i16 %114 to i64, !dbg !3590
  %119 = zext i16 %115 to i64, !dbg !3590
  %120 = zext i16 %116 to i64, !dbg !3590
  %121 = zext i16 %117 to i64, !dbg !3590
  %122 = mul nuw nsw i64 %118, %106, !dbg !3576
  %123 = mul nuw nsw i64 %119, %107, !dbg !3576
  %124 = mul nuw nsw i64 %120, %108, !dbg !3576
  %125 = mul nuw nsw i64 %121, %109, !dbg !3576
  %126 = lshr i64 %122, 8, !dbg !3577
  %127 = lshr i64 %123, 8, !dbg !3577
  %128 = lshr i64 %124, 8, !dbg !3577
  %129 = lshr i64 %125, 8, !dbg !3577
  %130 = add nuw nsw i64 %126, 1, !dbg !3578
  %131 = add nuw nsw i64 %127, 1, !dbg !3578
  %132 = add nuw nsw i64 %128, 1, !dbg !3578
  %133 = add nuw nsw i64 %129, 1, !dbg !3578
  %134 = udiv i64 %102, %130, !dbg !3579
  %135 = udiv i64 %103, %131, !dbg !3579
  %136 = udiv i64 %104, %132, !dbg !3579
  %137 = udiv i64 %105, %133, !dbg !3579
  %138 = trunc i64 %134 to i16, !dbg !3580
  %139 = trunc i64 %135 to i16, !dbg !3580
  %140 = trunc i64 %136 to i16, !dbg !3580
  %141 = trunc i64 %137 to i16, !dbg !3580
  %142 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %index147, !dbg !3582
  %143 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %83, !dbg !3582
  %144 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %84, !dbg !3582
  %145 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %85, !dbg !3582
  store i16 %138, ptr %142, align 2, !dbg !3581, !alias.scope !3591, !noalias !3593
  store i16 %139, ptr %143, align 2, !dbg !3581, !alias.scope !3591, !noalias !3593
  store i16 %140, ptr %144, align 2, !dbg !3581, !alias.scope !3591, !noalias !3593
  store i16 %141, ptr %145, align 2, !dbg !3581, !alias.scope !3591, !noalias !3593
  %index.next148 = add nuw i64 %index147, 4, !dbg !3587
  %146 = icmp eq i64 %index.next148, 64, !dbg !3587
  br i1 %146, label %for.cond.cleanup21.1, label %vector.body146, !dbg !3587, !llvm.loop !3594

for.body22.1:                                     ; preds = %vector.memcheck, %for.body22.1
  %indvars.iv89.1 = phi i64 [ %indvars.iv.next90.1, %for.body22.1 ], [ 0, %vector.memcheck ]
    #dbg_value(i64 %indvars.iv89.1, !3554, !DIExpression(), !3571)
  %147 = load i32, ptr %arrayidx.1, align 4, !dbg !3570
  %conv26.1 = zext i32 %147 to i64, !dbg !3570
  %mul.1 = mul nsw i64 %conv26.1, %conv, !dbg !3572
  %arrayidx31.1 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %indvars.iv89.1, !dbg !3561
  %148 = load i32, ptr %arrayidx31.1, align 4, !dbg !3561
  %div83.1 = lshr i32 %148, 1, !dbg !3573
  %conv32.1 = zext nneg i32 %div83.1 to i64, !dbg !3561
  %add.1 = add nsw i64 %mul.1, %conv32.1, !dbg !3574
  %conv38.1 = zext i32 %148 to i64, !dbg !3575
  %arrayidx40.1 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %indvars.iv89.1, !dbg !3590
  %149 = load i16, ptr %arrayidx40.1, align 2, !dbg !3590
  %conv41.1 = zext i16 %149 to i64, !dbg !3590
  %mul42.1 = mul nuw nsw i64 %conv41.1, %conv38.1, !dbg !3576
  %div4384.1 = lshr i64 %mul42.1, 8, !dbg !3577
  %add44.1 = add nuw nsw i64 %div4384.1, 1, !dbg !3578
  %div45.1 = udiv i64 %add.1, %add44.1, !dbg !3579
  %conv46.1 = trunc i64 %div45.1 to i16, !dbg !3580
  %arrayidx50.1 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %indvars.iv89.1, !dbg !3582
  store i16 %conv46.1, ptr %arrayidx50.1, align 2, !dbg !3581
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89.1, 1, !dbg !3587
    #dbg_value(i64 %indvars.iv.next90.1, !3554, !DIExpression(), !3571)
  %exitcond94.1.not = icmp eq i64 %indvars.iv.next90.1, 64, !dbg !3598
  br i1 %exitcond94.1.not, label %for.cond.cleanup21.1, label %for.body22.1, !dbg !3583, !llvm.loop !3599

for.cond.cleanup21.1:                             ; preds = %vector.body146, %for.body22.1
    #dbg_value(i64 2, !3543, !DIExpression(), !3557)
  ret void, !dbg !3600
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %h, i32 noundef %i8) local_unnamed_addr #0 !dbg !3601 {
entry:
  %dc = alloca i16, align 2, !DIAssignID !3636
    #dbg_assign(i1 undef, !3619, !DIExpression(), !3636, ptr %dc, !DIExpression(), !3637)
  %dct8x8 = alloca [64 x i16], align 16, !DIAssignID !3638
    #dbg_assign(i1 undef, !3622, !DIExpression(), !3638, ptr %dct8x8, !DIExpression(), !3639)
  %dct4x4 = alloca [4 x [16 x i16]], align 16, !DIAssignID !3640
    #dbg_assign(i1 undef, !3628, !DIExpression(), !3640, ptr %dct4x4, !DIExpression(), !3641)
  %dct4x4337 = alloca [16 x i16], align 16, !DIAssignID !3642
    #dbg_assign(i1 undef, !3633, !DIExpression(), !3642, ptr %dct4x4337, !DIExpression(), !3643)
    #dbg_value(ptr %h, !3603, !DIExpression(), !3644)
    #dbg_value(i32 %i8, !3604, !DIExpression(), !3644)
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3645
  %0 = load i32, ptr %i_qp1, align 16, !dbg !3645
    #dbg_value(i32 %0, !3605, !DIExpression(), !3644)
  %p_fenc3 = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !3646
  %1 = load ptr, ptr %p_fenc3, align 16, !dbg !3647
  %and = and i32 %i8, 1, !dbg !3648
  %mul = shl nuw nsw i32 %and, 3, !dbg !3649
  %idx.ext = zext nneg i32 %mul to i64, !dbg !3650
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !3650
  %shr = ashr i32 %i8, 1, !dbg !3651
  %mul5 = shl nsw i32 %shr, 7, !dbg !3652
  %idx.ext6 = sext i32 %mul5 to i64, !dbg !3653
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6, !dbg !3653
    #dbg_value(ptr %add.ptr7, !3606, !DIExpression(), !3644)
  %p_fdec10 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3654
  %2 = load ptr, ptr %p_fdec10, align 16, !dbg !3655
  %add.ptr15 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !3656
  %mul18 = shl nsw i32 %shr, 8, !dbg !3657
  %idx.ext19 = sext i32 %mul18 to i64, !dbg !3658
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr15, i64 %idx.ext19, !dbg !3658
    #dbg_value(ptr %add.ptr20, !3607, !DIExpression(), !3644)
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424, !dbg !3659
  %3 = load i32, ptr %b_dct_decimate, align 8, !dbg !3659
    #dbg_value(i32 %3, !3608, !DIExpression(), !3644)
    #dbg_value(i32 0, !3609, !DIExpression(), !3644)
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !3660
  %4 = load i32, ptr %b_skip_mc, align 4, !dbg !3660
  %tobool.not = icmp eq i32 %4, 0, !dbg !3662
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3663

if.then:                                          ; preds = %entry
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef %i8) #6, !dbg !3664
  br label %if.end, !dbg !3664

if.end:                                           ; preds = %if.then, %entry
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !3665
  %5 = load i32, ptr %b_lossless, align 4, !dbg !3665
  %tobool24.not = icmp eq i32 %5, 0, !dbg !3666
  %b_transform_8x8146 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3667
  %6 = load i32, ptr %b_transform_8x8146, align 4, !dbg !3667
  %tobool147.not = icmp eq i32 %6, 0, !dbg !3667
  br i1 %tobool24.not, label %if.else144, label %if.then25, !dbg !3668

if.then25:                                        ; preds = %if.end
  br i1 %tobool147.not, label %if.else, label %if.then28, !dbg !3669

if.then28:                                        ; preds = %if.then25
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048, !dbg !3670
  %7 = load ptr, ptr %sub_8x8, align 8, !dbg !3670
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088, !dbg !3672
  %idxprom = sext i32 %i8 to i64, !dbg !3673
  %arrayidx29 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8, i64 0, i64 %idxprom, !dbg !3673
  %call = tail call i32 %7(ptr noundef nonnull %arrayidx29, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6, !dbg !3674
    #dbg_value(i32 %call, !3609, !DIExpression(), !3644)
  %8 = trunc i32 %call to i16, !dbg !3675
  %conv = mul i16 %8, 257, !dbg !3675
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3675
  %mul32 = shl nsw i32 %i8, 2, !dbg !3675
  %idxprom33 = sext i32 %mul32 to i64, !dbg !3675
  %arrayidx34 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom33, !dbg !3675
  %9 = load i32, ptr %arrayidx34, align 16, !dbg !3675
  %idxprom35 = sext i32 %9 to i64, !dbg !3675
  %arrayidx36 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom35, !dbg !3675
  store i16 %conv, ptr %arrayidx36, align 1, !dbg !3675
  %add43 = or disjoint i32 %mul32, 2, !dbg !3675
  %idxprom44 = sext i32 %add43 to i64, !dbg !3675
  %arrayidx45 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom44, !dbg !3675
  %10 = load i32, ptr %arrayidx45, align 8, !dbg !3675
  %idxprom46 = sext i32 %10 to i64, !dbg !3675
  %arrayidx47 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom46, !dbg !3675
  store i16 %conv, ptr %arrayidx47, align 1, !dbg !3675
  br label %if.end84, !dbg !3677

if.else:                                          ; preds = %if.then25
  %mul48 = shl i32 %i8, 2, !dbg !3678
    #dbg_value(i32 %mul48, !3611, !DIExpression(), !3679)
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
    #dbg_value(i32 %mul48, !3611, !DIExpression(), !3679)
    #dbg_value(i32 0, !3609, !DIExpression(), !3644)
  %non_zero_count79 = getelementptr inbounds i8, ptr %h, i64 25072
  %11 = sext i32 %mul48 to i64, !dbg !3680
    #dbg_value(i64 %11, !3611, !DIExpression(), !3679)
    #dbg_value(i32 0, !3609, !DIExpression(), !3644)
  %12 = load ptr, ptr %sub_4x4, align 8, !dbg !3681
  %arrayidx55 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %11, !dbg !3684
  %13 = load ptr, ptr %p_fenc3, align 16, !dbg !3685
  %arrayidx62 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %11, !dbg !3686
  %14 = load i8, ptr %arrayidx62, align 4, !dbg !3686
  %idx.ext64 = zext i8 %14 to i64, !dbg !3687
  %add.ptr65 = getelementptr inbounds i8, ptr %13, i64 %idx.ext64, !dbg !3687
  %15 = load ptr, ptr %p_fdec10, align 16, !dbg !3688
  %arrayidx71 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %11, !dbg !3689
  %16 = load i16, ptr %arrayidx71, align 8, !dbg !3689
  %idx.ext73 = zext i16 %16 to i64, !dbg !3690
  %add.ptr74 = getelementptr inbounds i8, ptr %15, i64 %idx.ext73, !dbg !3690
  %call75 = tail call i32 %12(ptr noundef nonnull %arrayidx55, ptr noundef %add.ptr65, ptr noundef %add.ptr74) #6, !dbg !3691
    #dbg_value(i32 %call75, !3610, !DIExpression(), !3644)
  %conv76 = trunc i32 %call75 to i8, !dbg !3692
  %arrayidx81 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %11, !dbg !3693
  %17 = load i32, ptr %arrayidx81, align 16, !dbg !3693
  %idxprom82 = sext i32 %17 to i64, !dbg !3694
  %arrayidx83 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82, !dbg !3694
  store i8 %conv76, ptr %arrayidx83, align 1, !dbg !3695
    #dbg_value(i32 %call75, !3609, !DIExpression(), !3644)
  %indvars.iv.next = or disjoint i64 %11, 1, !dbg !3696
    #dbg_value(i64 %indvars.iv.next, !3611, !DIExpression(), !3679)
  %18 = load ptr, ptr %sub_4x4, align 8, !dbg !3681
  %arrayidx55.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next, !dbg !3684
  %19 = load ptr, ptr %p_fenc3, align 16, !dbg !3685
  %arrayidx62.1 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next, !dbg !3686
  %20 = load i8, ptr %arrayidx62.1, align 1, !dbg !3686
  %idx.ext64.1 = zext i8 %20 to i64, !dbg !3687
  %add.ptr65.1 = getelementptr inbounds i8, ptr %19, i64 %idx.ext64.1, !dbg !3687
  %21 = load ptr, ptr %p_fdec10, align 16, !dbg !3688
  %arrayidx71.1 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next, !dbg !3689
  %22 = load i16, ptr %arrayidx71.1, align 2, !dbg !3689
  %idx.ext73.1 = zext i16 %22 to i64, !dbg !3690
  %add.ptr74.1 = getelementptr inbounds i8, ptr %21, i64 %idx.ext73.1, !dbg !3690
  %call75.1 = tail call i32 %18(ptr noundef nonnull %arrayidx55.1, ptr noundef %add.ptr65.1, ptr noundef %add.ptr74.1) #6, !dbg !3691
    #dbg_value(i32 %call75.1, !3610, !DIExpression(), !3644)
  %conv76.1 = trunc i32 %call75.1 to i8, !dbg !3692
  %arrayidx81.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next, !dbg !3693
  %23 = load i32, ptr %arrayidx81.1, align 4, !dbg !3693
  %idxprom82.1 = sext i32 %23 to i64, !dbg !3694
  %arrayidx83.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.1, !dbg !3694
  store i8 %conv76.1, ptr %arrayidx83.1, align 1, !dbg !3695
  %or.1 = or i32 %call75.1, %call75, !dbg !3697
    #dbg_value(i32 %or.1, !3609, !DIExpression(), !3644)
  %indvars.iv.next.1 = or disjoint i64 %11, 2, !dbg !3696
    #dbg_value(i64 %indvars.iv.next.1, !3611, !DIExpression(), !3679)
  %24 = load ptr, ptr %sub_4x4, align 8, !dbg !3681
  %arrayidx55.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next.1, !dbg !3684
  %25 = load ptr, ptr %p_fenc3, align 16, !dbg !3685
  %arrayidx62.2 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next.1, !dbg !3686
  %26 = load i8, ptr %arrayidx62.2, align 2, !dbg !3686
  %idx.ext64.2 = zext i8 %26 to i64, !dbg !3687
  %add.ptr65.2 = getelementptr inbounds i8, ptr %25, i64 %idx.ext64.2, !dbg !3687
  %27 = load ptr, ptr %p_fdec10, align 16, !dbg !3688
  %arrayidx71.2 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next.1, !dbg !3689
  %28 = load i16, ptr %arrayidx71.2, align 4, !dbg !3689
  %idx.ext73.2 = zext i16 %28 to i64, !dbg !3690
  %add.ptr74.2 = getelementptr inbounds i8, ptr %27, i64 %idx.ext73.2, !dbg !3690
  %call75.2 = tail call i32 %24(ptr noundef nonnull %arrayidx55.2, ptr noundef %add.ptr65.2, ptr noundef %add.ptr74.2) #6, !dbg !3691
    #dbg_value(i32 %call75.2, !3610, !DIExpression(), !3644)
  %conv76.2 = trunc i32 %call75.2 to i8, !dbg !3692
  %arrayidx81.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next.1, !dbg !3693
  %29 = load i32, ptr %arrayidx81.2, align 8, !dbg !3693
  %idxprom82.2 = sext i32 %29 to i64, !dbg !3694
  %arrayidx83.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.2, !dbg !3694
  store i8 %conv76.2, ptr %arrayidx83.2, align 1, !dbg !3695
  %or.2 = or i32 %call75.2, %or.1, !dbg !3697
    #dbg_value(i32 %or.2, !3609, !DIExpression(), !3644)
  %indvars.iv.next.2 = or disjoint i64 %11, 3, !dbg !3696
    #dbg_value(i64 %indvars.iv.next.2, !3611, !DIExpression(), !3679)
  %30 = load ptr, ptr %sub_4x4, align 8, !dbg !3681
  %arrayidx55.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next.2, !dbg !3684
  %31 = load ptr, ptr %p_fenc3, align 16, !dbg !3685
  %arrayidx62.3 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next.2, !dbg !3686
  %32 = load i8, ptr %arrayidx62.3, align 1, !dbg !3686
  %idx.ext64.3 = zext i8 %32 to i64, !dbg !3687
  %add.ptr65.3 = getelementptr inbounds i8, ptr %31, i64 %idx.ext64.3, !dbg !3687
  %33 = load ptr, ptr %p_fdec10, align 16, !dbg !3688
  %arrayidx71.3 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next.2, !dbg !3689
  %34 = load i16, ptr %arrayidx71.3, align 2, !dbg !3689
  %idx.ext73.3 = zext i16 %34 to i64, !dbg !3690
  %add.ptr74.3 = getelementptr inbounds i8, ptr %33, i64 %idx.ext73.3, !dbg !3690
  %call75.3 = tail call i32 %30(ptr noundef nonnull %arrayidx55.3, ptr noundef %add.ptr65.3, ptr noundef %add.ptr74.3) #6, !dbg !3691
    #dbg_value(i32 %call75.3, !3610, !DIExpression(), !3644)
  %conv76.3 = trunc i32 %call75.3 to i8, !dbg !3692
  %arrayidx81.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next.2, !dbg !3693
  %35 = load i32, ptr %arrayidx81.3, align 4, !dbg !3693
  %idxprom82.3 = sext i32 %35 to i64, !dbg !3694
  %arrayidx83.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.3, !dbg !3694
  store i8 %conv76.3, ptr %arrayidx83.3, align 1, !dbg !3695
  %or.3 = or i32 %call75.3, %or.2, !dbg !3697
    #dbg_value(i32 %or.3, !3609, !DIExpression(), !3644)
    #dbg_value(i64 %11, !3611, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !3679)
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then28
  %nnz8x8.1 = phi i32 [ %call, %if.then28 ], [ %or.3, %if.else ], !dbg !3644
    #dbg_value(i32 %nnz8x8.1, !3609, !DIExpression(), !3644)
    #dbg_value(i32 0, !3617, !DIExpression(), !3698)
  %mul97 = shl nuw nsw i32 %and, 2
  %idx.ext98 = zext nneg i32 %mul97 to i64
  %mul102 = shl nsw i32 %shr, 6
  %idx.ext103 = sext i32 %mul102 to i64
  %sub_4x4ac = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4122 = getelementptr inbounds i8, ptr %h, i64 15600
  %add123 = add nsw i32 %i8, 16
    #dbg_value(i32 0, !3617, !DIExpression(), !3698)
  %non_zero_count133 = getelementptr inbounds i8, ptr %h, i64 25072
  %36 = sext i32 %add123 to i64, !dbg !3699
    #dbg_value(i64 0, !3617, !DIExpression(), !3698)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dc) #6, !dbg !3700
  %arrayidx95 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !3701
  %37 = load ptr, ptr %arrayidx95, align 8, !dbg !3701
  %add.ptr99 = getelementptr inbounds i8, ptr %37, i64 %idx.ext98, !dbg !3702
  %add.ptr104 = getelementptr inbounds i8, ptr %add.ptr99, i64 %idx.ext103, !dbg !3703
    #dbg_value(ptr %add.ptr104, !3606, !DIExpression(), !3644)
  %arrayidx110 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3704
  %38 = load ptr, ptr %arrayidx110, align 8, !dbg !3704
  %add.ptr114 = getelementptr inbounds i8, ptr %38, i64 %idx.ext98, !dbg !3705
  %add.ptr119 = getelementptr inbounds i8, ptr %add.ptr114, i64 %idx.ext6, !dbg !3706
    #dbg_value(ptr %add.ptr119, !3607, !DIExpression(), !3644)
  %39 = load ptr, ptr %sub_4x4ac, align 8, !dbg !3707
  %arrayidx127 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4122, i64 0, i64 %36, !dbg !3708
  %call129 = call i32 %39(ptr noundef nonnull %arrayidx127, ptr noundef %add.ptr104, ptr noundef %add.ptr119, ptr noundef nonnull %dc) #6, !dbg !3709
    #dbg_value(i32 %call129, !3610, !DIExpression(), !3644)
  %conv130 = trunc i32 %call129 to i8, !dbg !3710
  %arrayidx138 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %36, !dbg !3711
  %40 = load i32, ptr %arrayidx138, align 4, !dbg !3711
  %idxprom139 = sext i32 %40 to i64, !dbg !3712
  %arrayidx140 = getelementptr inbounds [48 x i8], ptr %non_zero_count133, i64 0, i64 %idxprom139, !dbg !3712
  store i8 %conv130, ptr %arrayidx140, align 1, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dc) #6, !dbg !3714
    #dbg_value(i64 1, !3617, !DIExpression(), !3698)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dc) #6, !dbg !3700
  %arrayidx95.1 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !3701
  %41 = load ptr, ptr %arrayidx95.1, align 8, !dbg !3701
  %add.ptr99.1 = getelementptr inbounds i8, ptr %41, i64 %idx.ext98, !dbg !3702
  %add.ptr104.1 = getelementptr inbounds i8, ptr %add.ptr99.1, i64 %idx.ext103, !dbg !3703
    #dbg_value(ptr %add.ptr104.1, !3606, !DIExpression(), !3644)
  %arrayidx110.1 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3704
  %42 = load ptr, ptr %arrayidx110.1, align 8, !dbg !3704
  %add.ptr114.1 = getelementptr inbounds i8, ptr %42, i64 %idx.ext98, !dbg !3705
  %add.ptr119.1 = getelementptr inbounds i8, ptr %add.ptr114.1, i64 %idx.ext6, !dbg !3706
    #dbg_value(ptr %add.ptr119.1, !3607, !DIExpression(), !3644)
  %43 = load ptr, ptr %sub_4x4ac, align 8, !dbg !3707
  %44 = add nsw i64 %36, 4, !dbg !3715
  %arrayidx127.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4122, i64 0, i64 %44, !dbg !3708
  %call129.1 = call i32 %43(ptr noundef nonnull %arrayidx127.1, ptr noundef %add.ptr104.1, ptr noundef %add.ptr119.1, ptr noundef nonnull %dc) #6, !dbg !3709
    #dbg_value(i32 %call129.1, !3610, !DIExpression(), !3644)
  %conv130.1 = trunc i32 %call129.1 to i8, !dbg !3710
  %arrayidx138.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %44, !dbg !3711
  %45 = load i32, ptr %arrayidx138.1, align 4, !dbg !3711
  %idxprom139.1 = sext i32 %45 to i64, !dbg !3712
  %arrayidx140.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count133, i64 0, i64 %idxprom139.1, !dbg !3712
  store i8 %conv130.1, ptr %arrayidx140.1, align 1, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dc) #6, !dbg !3714
    #dbg_value(i64 2, !3617, !DIExpression(), !3698)
  br label %if.end425, !dbg !3716

if.else144:                                       ; preds = %if.end
  br i1 %tobool147.not, label %if.else239, label %if.then148, !dbg !3717

if.then148:                                       ; preds = %if.else144
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct8x8) #6, !dbg !3718
  %sub8x8_dct8 = getelementptr inbounds i8, ptr %h, i64 32984, !dbg !3719
  %46 = load ptr, ptr %sub8x8_dct8, align 8, !dbg !3719
  call void %46(ptr noundef nonnull %dct8x8, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6, !dbg !3720
    #dbg_value(ptr %h, !1645, !DIExpression(), !3721)
    #dbg_value(ptr %dct8x8, !1650, !DIExpression(), !3721)
    #dbg_value(i32 %0, !1651, !DIExpression(), !3721)
    #dbg_value(i32 0, !1652, !DIExpression(), !3721)
    #dbg_value(i32 %i8, !1653, !DIExpression(), !3721)
    #dbg_value(i1 true, !1654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3721)
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !3723
  %47 = load i32, ptr %b_trellis.i, align 16, !dbg !3723
  %tobool1.not.i = icmp eq i32 %47, 0, !dbg !3724
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i, !dbg !3725

if.then.i:                                        ; preds = %if.then148
    #dbg_value(i32 1, !1654, !DIExpression(), !3721)
  %call.i = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef %i8) #6, !dbg !3726
  br label %x264_quant_8x8.exit, !dbg !3727

if.else.i:                                        ; preds = %if.then148
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080, !dbg !3728
  %48 = load ptr, ptr %quantf.i, align 8, !dbg !3729
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 3480, !dbg !3730
  %49 = load ptr, ptr %arrayidx.i, align 8, !dbg !3730
  %idxprom2.i = sext i32 %0 to i64, !dbg !3730
  %arrayidx3.i = getelementptr inbounds [64 x i16], ptr %49, i64 %idxprom2.i, !dbg !3730
  %arrayidx5.i = getelementptr inbounds i8, ptr %h, i64 3528, !dbg !3731
  %50 = load ptr, ptr %arrayidx5.i, align 8, !dbg !3731
  %arrayidx7.i = getelementptr inbounds [64 x i16], ptr %50, i64 %idxprom2.i, !dbg !3731
  %call9.i = call i32 %48(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6, !dbg !3732
  br label %x264_quant_8x8.exit, !dbg !3733

x264_quant_8x8.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ], !dbg !3734
    #dbg_value(i32 %retval.0.i, !3609, !DIExpression(), !3644)
  %tobool152.not = icmp eq i32 %retval.0.i, 0, !dbg !3735
  br i1 %tobool152.not, label %if.end238, label %if.then153, !dbg !3737

if.then153:                                       ; preds = %x264_quant_8x8.exit
  %zigzagf154 = getelementptr inbounds i8, ptr %h, i64 33032, !dbg !3738
  %51 = load ptr, ptr %zigzagf154, align 8, !dbg !3740
  %luma8x8156 = getelementptr inbounds i8, ptr %h, i64 15088, !dbg !3741
  %idxprom157 = sext i32 %i8 to i64, !dbg !3742
  %arrayidx158 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8156, i64 0, i64 %idxprom157, !dbg !3742
  call void %51(ptr noundef nonnull %arrayidx158, ptr noundef nonnull %dct8x8) #6, !dbg !3743
  %tobool161.not = icmp eq i32 %3, 0, !dbg !3744
  br i1 %tobool161.not, label %if.then175, label %land.lhs.true, !dbg !3746

land.lhs.true:                                    ; preds = %if.then153
  %52 = load i32, ptr %b_trellis.i, align 16, !dbg !3747
  %tobool163.not = icmp eq i32 %52, 0, !dbg !3748
  br i1 %tobool163.not, label %if.end173, label %if.then175, !dbg !3749

if.end173:                                        ; preds = %land.lhs.true
  %decimate_score64 = getelementptr inbounds i8, ptr %h, i64 33160, !dbg !3750
  %53 = load ptr, ptr %decimate_score64, align 8, !dbg !3750
  %call170 = call i32 %53(ptr noundef nonnull %arrayidx158) #6, !dbg !3751
  %cmp171 = icmp slt i32 %call170, 4, !dbg !3752
    #dbg_value(i1 %cmp171, !3609, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3644)
  br i1 %cmp171, label %if.end238, label %if.then175, !dbg !3753

if.then175:                                       ; preds = %if.then153, %land.lhs.true, %if.end173
  %nnz8x8.2609 = phi i32 [ 1, %if.end173 ], [ %retval.0.i, %land.lhs.true ], [ %retval.0.i, %if.then153 ]
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112, !dbg !3754
  %54 = load ptr, ptr %dequant_8x8, align 8, !dbg !3754
  %arrayidx178 = getelementptr inbounds i8, ptr %h, i64 3384, !dbg !3757
  %55 = load ptr, ptr %arrayidx178, align 8, !dbg !3757
  call void %54(ptr noundef nonnull %dct8x8, ptr noundef %55, i32 noundef %0) #6, !dbg !3758
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992, !dbg !3759
  %56 = load ptr, ptr %add8x8_idct8, align 16, !dbg !3759
  call void %56(ptr noundef %add.ptr20, ptr noundef nonnull %dct8x8) #6, !dbg !3760
  br label %if.end238, !dbg !3761

if.end238:                                        ; preds = %x264_quant_8x8.exit, %if.end173, %if.then175
  %.sink632 = phi i16 [ 257, %if.then175 ], [ 0, %if.end173 ], [ 0, %x264_quant_8x8.exit ]
  %nnz8x8.3 = phi i32 [ %nnz8x8.2609, %if.then175 ], [ 0, %if.end173 ], [ 0, %x264_quant_8x8.exit ], !dbg !3762
  %non_zero_count183 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3763
  %mul184 = shl nsw i32 %i8, 2, !dbg !3763
  %idxprom186 = sext i32 %mul184 to i64, !dbg !3763
  %arrayidx187 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom186, !dbg !3763
  %57 = load i32, ptr %arrayidx187, align 16, !dbg !3763
  %idxprom188 = sext i32 %57 to i64, !dbg !3763
  %arrayidx189 = getelementptr inbounds [48 x i8], ptr %non_zero_count183, i64 0, i64 %idxprom188, !dbg !3763
  store i16 %.sink632, ptr %arrayidx189, align 1, !dbg !3763
  %add194 = or disjoint i32 %mul184, 2, !dbg !3763
  %idxprom195 = sext i32 %add194 to i64, !dbg !3763
  %arrayidx196 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom195, !dbg !3763
  %58 = load i32, ptr %arrayidx196, align 8, !dbg !3763
  %idxprom197 = sext i32 %58 to i64, !dbg !3763
  %arrayidx198 = getelementptr inbounds [48 x i8], ptr %non_zero_count183, i64 0, i64 %idxprom197, !dbg !3763
  store i16 %.sink632, ptr %arrayidx198, align 1, !dbg !3763
    #dbg_value(i32 %nnz8x8.3, !3609, !DIExpression(), !3644)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct8x8) #6, !dbg !3764
  br label %if.end329, !dbg !3765

if.else239:                                       ; preds = %if.else144
    #dbg_value(i32 0, !3626, !DIExpression(), !3641)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !3766
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928, !dbg !3767
  %59 = load ptr, ptr %sub8x8_dct, align 16, !dbg !3767
  call void %59(ptr noundef nonnull %dct4x4, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6, !dbg !3768
    #dbg_value(i32 0, !3629, !DIExpression(), !3769)
  %mul251 = shl nsw i32 %i8, 2
  %b_trellis.i595 = getelementptr inbounds i8, ptr %h, i64 16416
    #dbg_value(i32 0, !3629, !DIExpression(), !3769)
    #dbg_value(i32 0, !3626, !DIExpression(), !3641)
    #dbg_value(i32 0, !3609, !DIExpression(), !3644)
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx.i601 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom2.i602 = sext i32 %0 to i64
  %arrayidx5.i604 = getelementptr inbounds i8, ptr %h, i64 3496
  %non_zero_count257 = getelementptr inbounds i8, ptr %h, i64 25072
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4268 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx281 = getelementptr inbounds i8, ptr %h, i64 3352
  %tobool282.not = icmp eq i32 %3, 0
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
  %60 = sext i32 %mul251 to i64, !dbg !3770
    #dbg_value(i64 0, !3629, !DIExpression(), !3769)
    #dbg_value(i32 0, !3626, !DIExpression(), !3641)
    #dbg_value(i32 0, !3609, !DIExpression(), !3644)
    #dbg_value(ptr %h, !1552, !DIExpression(), !3771)
    #dbg_value(ptr %dct4x4, !1557, !DIExpression(), !3771)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3771)
    #dbg_value(i32 2, !1559, !DIExpression(), !3771)
    #dbg_value(i32 0, !1560, !DIExpression(), !3771)
    #dbg_value(i64 %60, !1561, !DIExpression(), !3771)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3771)
  %61 = load i32, ptr %b_trellis.i595, align 16, !dbg !3775
  %tobool1.not.i596 = icmp eq i32 %61, 0, !dbg !3776
  br i1 %tobool1.not.i596, label %if.else.i600, label %if.then.i597, !dbg !3777

if.then.i597:                                     ; preds = %if.else239
    #dbg_value(i32 1, !1562, !DIExpression(), !3771)
  %call.i598 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %mul251) #6, !dbg !3778
  br label %x264_quant_4x4.exit, !dbg !3779

if.else.i600:                                     ; preds = %if.else239
  %62 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3780
  %63 = load ptr, ptr %arrayidx.i601, align 8, !dbg !3781
  %arrayidx3.i603 = getelementptr inbounds [16 x i16], ptr %63, i64 %idxprom2.i602, !dbg !3781
  %64 = load ptr, ptr %arrayidx5.i604, align 8, !dbg !3782
  %arrayidx7.i605 = getelementptr inbounds [16 x i16], ptr %64, i64 %idxprom2.i602, !dbg !3782
  %call9.i606 = call i32 %62(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i603, ptr noundef %arrayidx7.i605) #6, !dbg !3783
  br label %x264_quant_4x4.exit, !dbg !3784

x264_quant_4x4.exit:                              ; preds = %if.then.i597, %if.else.i600
  %retval.0.i599 = phi i32 [ %call.i598, %if.then.i597 ], [ %call9.i606, %if.else.i600 ], !dbg !3785
    #dbg_value(i32 %retval.0.i599, !3610, !DIExpression(), !3644)
  %conv254 = trunc i32 %retval.0.i599 to i8, !dbg !3786
  %arrayidx261 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %60, !dbg !3787
  %65 = load i32, ptr %arrayidx261, align 16, !dbg !3787
  %idxprom262 = sext i32 %65 to i64, !dbg !3788
  %arrayidx263 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262, !dbg !3788
  store i8 %conv254, ptr %arrayidx263, align 1, !dbg !3789
  %tobool264.not = icmp eq i32 %retval.0.i599, 0, !dbg !3790
  br i1 %tobool264.not, label %for.inc296, label %if.then265, !dbg !3792

if.then265:                                       ; preds = %x264_quant_4x4.exit
  %66 = load ptr, ptr %scan_4x4, align 8, !dbg !3793
  %arrayidx272 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %60, !dbg !3795
  call void %66(ptr noundef nonnull %arrayidx272, ptr noundef nonnull %dct4x4) #6, !dbg !3796
  %67 = load ptr, ptr %dequant_4x4, align 8, !dbg !3797
  %68 = load ptr, ptr %arrayidx281, align 8, !dbg !3798
  call void %67(ptr noundef nonnull %dct4x4, ptr noundef %68, i32 noundef %0) #6, !dbg !3799
  br i1 %tobool282.not, label %for.inc296, label %if.then283, !dbg !3800

if.then283:                                       ; preds = %if.then265
  %69 = load ptr, ptr %decimate_score16, align 8, !dbg !3801
  %call292 = call i32 %69(ptr noundef nonnull %arrayidx272) #6, !dbg !3803
    #dbg_value(i32 %call292, !3626, !DIExpression(), !3641)
  br label %for.inc296, !dbg !3804

for.inc296:                                       ; preds = %if.then265, %if.then283, %x264_quant_4x4.exit
  %nnz8x8.5 = phi i32 [ 0, %x264_quant_4x4.exit ], [ 1, %if.then283 ], [ 1, %if.then265 ], !dbg !3644
  %i_decimate_8x8.2 = phi i32 [ 0, %x264_quant_4x4.exit ], [ %call292, %if.then283 ], [ 0, %if.then265 ], !dbg !3641
    #dbg_value(i32 %i_decimate_8x8.2, !3626, !DIExpression(), !3641)
    #dbg_value(i32 %nnz8x8.5, !3609, !DIExpression(), !3644)
    #dbg_value(i64 1, !3629, !DIExpression(), !3769)
  %arrayidx249.1 = getelementptr inbounds i8, ptr %dct4x4, i64 32, !dbg !3805
  %70 = or disjoint i64 %60, 1, !dbg !3806
    #dbg_value(ptr %h, !1552, !DIExpression(), !3771)
    #dbg_value(ptr %arrayidx249.1, !1557, !DIExpression(), !3771)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3771)
    #dbg_value(i32 2, !1559, !DIExpression(), !3771)
    #dbg_value(i32 0, !1560, !DIExpression(), !3771)
    #dbg_value(i64 %70, !1561, !DIExpression(), !3771)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3771)
  %71 = load i32, ptr %b_trellis.i595, align 16, !dbg !3775
  %tobool1.not.i596.1 = icmp eq i32 %71, 0, !dbg !3776
  br i1 %tobool1.not.i596.1, label %if.else.i600.1, label %if.then.i597.1, !dbg !3777

if.then.i597.1:                                   ; preds = %for.inc296
    #dbg_value(i32 1, !1562, !DIExpression(), !3771)
  %72 = trunc nsw i64 %70 to i32, !dbg !3778
  %call.i598.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.1, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %72) #6, !dbg !3778
  br label %x264_quant_4x4.exit.1, !dbg !3779

if.else.i600.1:                                   ; preds = %for.inc296
  %73 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3780
  %74 = load ptr, ptr %arrayidx.i601, align 8, !dbg !3781
  %arrayidx3.i603.1 = getelementptr inbounds [16 x i16], ptr %74, i64 %idxprom2.i602, !dbg !3781
  %75 = load ptr, ptr %arrayidx5.i604, align 8, !dbg !3782
  %arrayidx7.i605.1 = getelementptr inbounds [16 x i16], ptr %75, i64 %idxprom2.i602, !dbg !3782
  %call9.i606.1 = call i32 %73(ptr noundef nonnull %arrayidx249.1, ptr noundef %arrayidx3.i603.1, ptr noundef %arrayidx7.i605.1) #6, !dbg !3783
  br label %x264_quant_4x4.exit.1, !dbg !3784

x264_quant_4x4.exit.1:                            ; preds = %if.else.i600.1, %if.then.i597.1
  %retval.0.i599.1 = phi i32 [ %call.i598.1, %if.then.i597.1 ], [ %call9.i606.1, %if.else.i600.1 ], !dbg !3785
    #dbg_value(i32 %retval.0.i599.1, !3610, !DIExpression(), !3644)
  %conv254.1 = trunc i32 %retval.0.i599.1 to i8, !dbg !3786
  %arrayidx261.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %70, !dbg !3787
  %76 = load i32, ptr %arrayidx261.1, align 4, !dbg !3787
  %idxprom262.1 = sext i32 %76 to i64, !dbg !3788
  %arrayidx263.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.1, !dbg !3788
  store i8 %conv254.1, ptr %arrayidx263.1, align 1, !dbg !3789
  %tobool264.not.1 = icmp eq i32 %retval.0.i599.1, 0, !dbg !3790
  br i1 %tobool264.not.1, label %for.inc296.1, label %if.then265.1, !dbg !3792

if.then265.1:                                     ; preds = %x264_quant_4x4.exit.1
  %77 = load ptr, ptr %scan_4x4, align 8, !dbg !3793
  %arrayidx272.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %70, !dbg !3795
  call void %77(ptr noundef nonnull %arrayidx272.1, ptr noundef nonnull %arrayidx249.1) #6, !dbg !3796
  %78 = load ptr, ptr %dequant_4x4, align 8, !dbg !3797
  %79 = load ptr, ptr %arrayidx281, align 8, !dbg !3798
  call void %78(ptr noundef nonnull %arrayidx249.1, ptr noundef %79, i32 noundef %0) #6, !dbg !3799
  br i1 %tobool282.not, label %for.inc296.1, label %if.then283.1, !dbg !3800

if.then283.1:                                     ; preds = %if.then265.1
  %80 = load ptr, ptr %decimate_score16, align 8, !dbg !3801
  %call292.1 = call i32 %80(ptr noundef nonnull %arrayidx272.1) #6, !dbg !3803
  %add293.1 = add nsw i32 %call292.1, %i_decimate_8x8.2, !dbg !3807
    #dbg_value(i32 %add293.1, !3626, !DIExpression(), !3641)
  br label %for.inc296.1, !dbg !3804

for.inc296.1:                                     ; preds = %if.then283.1, %if.then265.1, %x264_quant_4x4.exit.1
  %nnz8x8.5.1 = phi i32 [ %nnz8x8.5, %x264_quant_4x4.exit.1 ], [ 1, %if.then283.1 ], [ 1, %if.then265.1 ], !dbg !3644
  %i_decimate_8x8.2.1 = phi i32 [ %i_decimate_8x8.2, %x264_quant_4x4.exit.1 ], [ %add293.1, %if.then283.1 ], [ %i_decimate_8x8.2, %if.then265.1 ], !dbg !3641
    #dbg_value(i32 %i_decimate_8x8.2.1, !3626, !DIExpression(), !3641)
    #dbg_value(i32 %nnz8x8.5.1, !3609, !DIExpression(), !3644)
    #dbg_value(i64 2, !3629, !DIExpression(), !3769)
  %arrayidx249.2 = getelementptr inbounds i8, ptr %dct4x4, i64 64, !dbg !3805
  %81 = or disjoint i64 %60, 2, !dbg !3806
    #dbg_value(ptr %h, !1552, !DIExpression(), !3771)
    #dbg_value(ptr %arrayidx249.2, !1557, !DIExpression(), !3771)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3771)
    #dbg_value(i32 2, !1559, !DIExpression(), !3771)
    #dbg_value(i32 0, !1560, !DIExpression(), !3771)
    #dbg_value(i64 %81, !1561, !DIExpression(), !3771)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3771)
  %82 = load i32, ptr %b_trellis.i595, align 16, !dbg !3775
  %tobool1.not.i596.2 = icmp eq i32 %82, 0, !dbg !3776
  br i1 %tobool1.not.i596.2, label %if.else.i600.2, label %if.then.i597.2, !dbg !3777

if.then.i597.2:                                   ; preds = %for.inc296.1
    #dbg_value(i32 1, !1562, !DIExpression(), !3771)
  %83 = trunc nsw i64 %81 to i32, !dbg !3778
  %call.i598.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.2, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %83) #6, !dbg !3778
  br label %x264_quant_4x4.exit.2, !dbg !3779

if.else.i600.2:                                   ; preds = %for.inc296.1
  %84 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3780
  %85 = load ptr, ptr %arrayidx.i601, align 8, !dbg !3781
  %arrayidx3.i603.2 = getelementptr inbounds [16 x i16], ptr %85, i64 %idxprom2.i602, !dbg !3781
  %86 = load ptr, ptr %arrayidx5.i604, align 8, !dbg !3782
  %arrayidx7.i605.2 = getelementptr inbounds [16 x i16], ptr %86, i64 %idxprom2.i602, !dbg !3782
  %call9.i606.2 = call i32 %84(ptr noundef nonnull %arrayidx249.2, ptr noundef %arrayidx3.i603.2, ptr noundef %arrayidx7.i605.2) #6, !dbg !3783
  br label %x264_quant_4x4.exit.2, !dbg !3784

x264_quant_4x4.exit.2:                            ; preds = %if.else.i600.2, %if.then.i597.2
  %retval.0.i599.2 = phi i32 [ %call.i598.2, %if.then.i597.2 ], [ %call9.i606.2, %if.else.i600.2 ], !dbg !3785
    #dbg_value(i32 %retval.0.i599.2, !3610, !DIExpression(), !3644)
  %conv254.2 = trunc i32 %retval.0.i599.2 to i8, !dbg !3786
  %arrayidx261.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %81, !dbg !3787
  %87 = load i32, ptr %arrayidx261.2, align 8, !dbg !3787
  %idxprom262.2 = sext i32 %87 to i64, !dbg !3788
  %arrayidx263.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.2, !dbg !3788
  store i8 %conv254.2, ptr %arrayidx263.2, align 1, !dbg !3789
  %tobool264.not.2 = icmp eq i32 %retval.0.i599.2, 0, !dbg !3790
  br i1 %tobool264.not.2, label %for.inc296.2, label %if.then265.2, !dbg !3792

if.then265.2:                                     ; preds = %x264_quant_4x4.exit.2
  %88 = load ptr, ptr %scan_4x4, align 8, !dbg !3793
  %arrayidx272.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %81, !dbg !3795
  call void %88(ptr noundef nonnull %arrayidx272.2, ptr noundef nonnull %arrayidx249.2) #6, !dbg !3796
  %89 = load ptr, ptr %dequant_4x4, align 8, !dbg !3797
  %90 = load ptr, ptr %arrayidx281, align 8, !dbg !3798
  call void %89(ptr noundef nonnull %arrayidx249.2, ptr noundef %90, i32 noundef %0) #6, !dbg !3799
  br i1 %tobool282.not, label %for.inc296.2, label %if.then283.2, !dbg !3800

if.then283.2:                                     ; preds = %if.then265.2
  %91 = load ptr, ptr %decimate_score16, align 8, !dbg !3801
  %call292.2 = call i32 %91(ptr noundef nonnull %arrayidx272.2) #6, !dbg !3803
  %add293.2 = add nsw i32 %call292.2, %i_decimate_8x8.2.1, !dbg !3807
    #dbg_value(i32 %add293.2, !3626, !DIExpression(), !3641)
  br label %for.inc296.2, !dbg !3804

for.inc296.2:                                     ; preds = %if.then283.2, %if.then265.2, %x264_quant_4x4.exit.2
  %nnz8x8.5.2 = phi i32 [ %nnz8x8.5.1, %x264_quant_4x4.exit.2 ], [ 1, %if.then283.2 ], [ 1, %if.then265.2 ], !dbg !3644
  %i_decimate_8x8.2.2 = phi i32 [ %i_decimate_8x8.2.1, %x264_quant_4x4.exit.2 ], [ %add293.2, %if.then283.2 ], [ %i_decimate_8x8.2.1, %if.then265.2 ], !dbg !3641
    #dbg_value(i32 %i_decimate_8x8.2.2, !3626, !DIExpression(), !3641)
    #dbg_value(i32 %nnz8x8.5.2, !3609, !DIExpression(), !3644)
    #dbg_value(i64 3, !3629, !DIExpression(), !3769)
  %arrayidx249.3 = getelementptr inbounds i8, ptr %dct4x4, i64 96, !dbg !3805
  %92 = or disjoint i64 %60, 3, !dbg !3806
    #dbg_value(ptr %h, !1552, !DIExpression(), !3771)
    #dbg_value(ptr %arrayidx249.3, !1557, !DIExpression(), !3771)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3771)
    #dbg_value(i32 2, !1559, !DIExpression(), !3771)
    #dbg_value(i32 0, !1560, !DIExpression(), !3771)
    #dbg_value(i64 %92, !1561, !DIExpression(), !3771)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3771)
  %93 = load i32, ptr %b_trellis.i595, align 16, !dbg !3775
  %tobool1.not.i596.3 = icmp eq i32 %93, 0, !dbg !3776
  br i1 %tobool1.not.i596.3, label %if.else.i600.3, label %if.then.i597.3, !dbg !3777

if.then.i597.3:                                   ; preds = %for.inc296.2
    #dbg_value(i32 1, !1562, !DIExpression(), !3771)
  %94 = trunc nsw i64 %92 to i32, !dbg !3778
  %call.i598.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.3, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %94) #6, !dbg !3778
  br label %x264_quant_4x4.exit.3, !dbg !3779

if.else.i600.3:                                   ; preds = %for.inc296.2
  %95 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3780
  %96 = load ptr, ptr %arrayidx.i601, align 8, !dbg !3781
  %arrayidx3.i603.3 = getelementptr inbounds [16 x i16], ptr %96, i64 %idxprom2.i602, !dbg !3781
  %97 = load ptr, ptr %arrayidx5.i604, align 8, !dbg !3782
  %arrayidx7.i605.3 = getelementptr inbounds [16 x i16], ptr %97, i64 %idxprom2.i602, !dbg !3782
  %call9.i606.3 = call i32 %95(ptr noundef nonnull %arrayidx249.3, ptr noundef %arrayidx3.i603.3, ptr noundef %arrayidx7.i605.3) #6, !dbg !3783
  br label %x264_quant_4x4.exit.3, !dbg !3784

x264_quant_4x4.exit.3:                            ; preds = %if.else.i600.3, %if.then.i597.3
  %retval.0.i599.3 = phi i32 [ %call.i598.3, %if.then.i597.3 ], [ %call9.i606.3, %if.else.i600.3 ], !dbg !3785
    #dbg_value(i32 %retval.0.i599.3, !3610, !DIExpression(), !3644)
  %conv254.3 = trunc i32 %retval.0.i599.3 to i8, !dbg !3786
  %arrayidx261.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %92, !dbg !3787
  %98 = load i32, ptr %arrayidx261.3, align 4, !dbg !3787
  %idxprom262.3 = sext i32 %98 to i64, !dbg !3788
  %arrayidx263.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.3, !dbg !3788
  store i8 %conv254.3, ptr %arrayidx263.3, align 1, !dbg !3789
  %tobool264.not.3 = icmp eq i32 %retval.0.i599.3, 0, !dbg !3790
  br i1 %tobool264.not.3, label %for.inc296.3, label %if.then265.3, !dbg !3792

if.then265.3:                                     ; preds = %x264_quant_4x4.exit.3
  %99 = load ptr, ptr %scan_4x4, align 8, !dbg !3793
  %arrayidx272.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %92, !dbg !3795
  call void %99(ptr noundef nonnull %arrayidx272.3, ptr noundef nonnull %arrayidx249.3) #6, !dbg !3796
  %100 = load ptr, ptr %dequant_4x4, align 8, !dbg !3797
  %101 = load ptr, ptr %arrayidx281, align 8, !dbg !3798
  call void %100(ptr noundef nonnull %arrayidx249.3, ptr noundef %101, i32 noundef %0) #6, !dbg !3799
  br i1 %tobool282.not, label %for.inc296.3, label %if.then283.3, !dbg !3800

if.then283.3:                                     ; preds = %if.then265.3
  %102 = load ptr, ptr %decimate_score16, align 8, !dbg !3801
  %call292.3 = call i32 %102(ptr noundef nonnull %arrayidx272.3) #6, !dbg !3803
  %add293.3 = add nsw i32 %call292.3, %i_decimate_8x8.2.2, !dbg !3807
    #dbg_value(i32 %add293.3, !3626, !DIExpression(), !3641)
  br label %for.inc296.3, !dbg !3804

for.inc296.3:                                     ; preds = %if.then283.3, %if.then265.3, %x264_quant_4x4.exit.3
  %nnz8x8.5.3 = phi i32 [ %nnz8x8.5.2, %x264_quant_4x4.exit.3 ], [ 1, %if.then283.3 ], [ 1, %if.then265.3 ], !dbg !3644
  %i_decimate_8x8.2.3 = phi i32 [ %i_decimate_8x8.2.2, %x264_quant_4x4.exit.3 ], [ %add293.3, %if.then283.3 ], [ %i_decimate_8x8.2.2, %if.then265.3 ], !dbg !3641
    #dbg_value(i32 %i_decimate_8x8.2.3, !3626, !DIExpression(), !3641)
    #dbg_value(i32 %nnz8x8.5.3, !3609, !DIExpression(), !3644)
    #dbg_value(i64 4, !3629, !DIExpression(), !3769)
  %tobool299 = icmp ne i32 %3, 0, !dbg !3808
  %cmp301 = icmp slt i32 %i_decimate_8x8.2.3, 4
  %or.cond = select i1 %tobool299, i1 %cmp301, i1 false, !dbg !3810
  %spec.select = select i1 %or.cond, i32 0, i32 %nnz8x8.5.3, !dbg !3810
    #dbg_value(i32 %spec.select, !3609, !DIExpression(), !3644)
  %tobool305.not = icmp eq i32 %spec.select, 0, !dbg !3811
  br i1 %tobool305.not, label %if.else309, label %if.then306, !dbg !3813

if.then306:                                       ; preds = %for.inc296.3
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944, !dbg !3814
  %103 = load ptr, ptr %add8x8_idct, align 16, !dbg !3814
  call void %103(ptr noundef %add.ptr20, ptr noundef nonnull %dct4x4) #6, !dbg !3815
  br label %if.end328, !dbg !3815

if.else309:                                       ; preds = %for.inc296.3
  store i16 0, ptr %arrayidx263, align 1, !dbg !3816
  %add323 = or disjoint i32 %mul251, 2, !dbg !3816
  %idxprom324 = sext i32 %add323 to i64, !dbg !3816
  %arrayidx325 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom324, !dbg !3816
  %104 = load i32, ptr %arrayidx325, align 8, !dbg !3816
  %idxprom326 = sext i32 %104 to i64, !dbg !3816
  %arrayidx327 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom326, !dbg !3816
  store i16 0, ptr %arrayidx327, align 1, !dbg !3816
  br label %if.end328

if.end328:                                        ; preds = %if.else309, %if.then306
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6, !dbg !3818
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end238
  %nnz8x8.7 = phi i32 [ %nnz8x8.3, %if.end238 ], [ %spec.select, %if.end328 ], !dbg !3819
    #dbg_value(i32 %nnz8x8.7, !3609, !DIExpression(), !3644)
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796, !dbg !3820
  %105 = load i32, ptr %i_chroma_qp, align 4, !dbg !3820
    #dbg_value(i32 %105, !3605, !DIExpression(), !3644)
    #dbg_value(i32 0, !3631, !DIExpression(), !3821)
  %mul345 = shl nuw nsw i32 %and, 2
  %idx.ext346 = zext nneg i32 %mul345 to i64
  %mul350 = shl nsw i32 %shr, 6
  %idx.ext351 = sext i32 %mul350 to i64
  %dctf368 = getelementptr inbounds i8, ptr %h, i64 32912
    #dbg_value(i32 0, !3631, !DIExpression(), !3821)
  %b_trellis372 = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx380 = getelementptr inbounds i8, ptr %h, i64 3464
  %idxprom381 = sext i32 %105 to i64
  %arrayidx384 = getelementptr inbounds i8, ptr %h, i64 3512
  %non_zero_count393 = getelementptr inbounds i8, ptr %h, i64 25072
  %add394 = add nsw i32 %i8, 16
  %scan_4x4404 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4406 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4415 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx418 = getelementptr inbounds i8, ptr %h, i64 3368
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920
  %106 = sext i32 %add394 to i64, !dbg !3822
    #dbg_value(i64 0, !3631, !DIExpression(), !3821)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4337) #6, !dbg !3823
  %arrayidx343 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !3824
  %107 = load ptr, ptr %arrayidx343, align 8, !dbg !3824
  %add.ptr347 = getelementptr inbounds i8, ptr %107, i64 %idx.ext346, !dbg !3825
  %add.ptr352 = getelementptr inbounds i8, ptr %add.ptr347, i64 %idx.ext351, !dbg !3826
    #dbg_value(ptr %add.ptr352, !3606, !DIExpression(), !3644)
  %arrayidx358 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3827
  %108 = load ptr, ptr %arrayidx358, align 8, !dbg !3827
  %add.ptr362 = getelementptr inbounds i8, ptr %108, i64 %idx.ext346, !dbg !3828
  %add.ptr367 = getelementptr inbounds i8, ptr %add.ptr362, i64 %idx.ext6, !dbg !3829
    #dbg_value(ptr %add.ptr367, !3607, !DIExpression(), !3644)
  %109 = load ptr, ptr %dctf368, align 16, !dbg !3830
  call void %109(ptr noundef nonnull %dct4x4337, ptr noundef %add.ptr352, ptr noundef %add.ptr367) #6, !dbg !3831
  store i16 0, ptr %dct4x4337, align 16, !dbg !3832, !DIAssignID !3833
    #dbg_assign(i16 0, !3633, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3833, ptr %dct4x4337, !DIExpression(), !3643)
  %110 = load i32, ptr %b_trellis372, align 16, !dbg !3834
  %tobool373.not = icmp eq i32 %110, 0, !dbg !3836
  br i1 %tobool373.not, label %if.else377, label %if.then374, !dbg !3837

if.then374:                                       ; preds = %if.end329
  %call376 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4337, i32 noundef 3, i32 noundef %105, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6, !dbg !3838
    #dbg_value(i32 %call376, !3610, !DIExpression(), !3644)
  br label %if.end389, !dbg !3839

if.else377:                                       ; preds = %if.end329
  %111 = load ptr, ptr %quant_4x4, align 8, !dbg !3840
  %112 = load ptr, ptr %arrayidx380, align 8, !dbg !3841
  %arrayidx382 = getelementptr inbounds [16 x i16], ptr %112, i64 %idxprom381, !dbg !3841
  %113 = load ptr, ptr %arrayidx384, align 8, !dbg !3842
  %arrayidx386 = getelementptr inbounds [16 x i16], ptr %113, i64 %idxprom381, !dbg !3842
  %call388 = call i32 %111(ptr noundef nonnull %dct4x4337, ptr noundef %arrayidx382, ptr noundef %arrayidx386) #6, !dbg !3843
    #dbg_value(i32 %call388, !3610, !DIExpression(), !3644)
  br label %if.end389

if.end389:                                        ; preds = %if.else377, %if.then374
  %nz.0 = phi i32 [ %call376, %if.then374 ], [ %call388, %if.else377 ], !dbg !3844
    #dbg_value(i32 %nz.0, !3610, !DIExpression(), !3644)
  %conv390 = trunc i32 %nz.0 to i8, !dbg !3845
  %arrayidx398 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %106, !dbg !3846
  %114 = load i32, ptr %arrayidx398, align 4, !dbg !3846
  %idxprom399 = sext i32 %114 to i64, !dbg !3847
  %arrayidx400 = getelementptr inbounds [48 x i8], ptr %non_zero_count393, i64 0, i64 %idxprom399, !dbg !3847
  store i8 %conv390, ptr %arrayidx400, align 1, !dbg !3848
  %tobool401.not = icmp eq i32 %nz.0, 0, !dbg !3849
  br i1 %tobool401.not, label %if.end421, label %if.then402, !dbg !3851

if.then402:                                       ; preds = %if.end389
  %115 = load ptr, ptr %scan_4x4404, align 8, !dbg !3852
  %arrayidx411 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4406, i64 0, i64 %106, !dbg !3854
  call void %115(ptr noundef nonnull %arrayidx411, ptr noundef nonnull %dct4x4337) #6, !dbg !3855
  %116 = load ptr, ptr %dequant_4x4415, align 8, !dbg !3856
  %117 = load ptr, ptr %arrayidx418, align 8, !dbg !3857
  call void %116(ptr noundef nonnull %dct4x4337, ptr noundef %117, i32 noundef %105) #6, !dbg !3858
  %118 = load ptr, ptr %add4x4_idct, align 8, !dbg !3859
  call void %118(ptr noundef %add.ptr367, ptr noundef nonnull %dct4x4337) #6, !dbg !3860
  br label %if.end421, !dbg !3861

if.end421:                                        ; preds = %if.then402, %if.end389
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4337) #6, !dbg !3862
    #dbg_value(i64 1, !3631, !DIExpression(), !3821)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4337) #6, !dbg !3823
  %arrayidx343.1 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !3824
  %119 = load ptr, ptr %arrayidx343.1, align 8, !dbg !3824
  %add.ptr347.1 = getelementptr inbounds i8, ptr %119, i64 %idx.ext346, !dbg !3825
  %add.ptr352.1 = getelementptr inbounds i8, ptr %add.ptr347.1, i64 %idx.ext351, !dbg !3826
    #dbg_value(ptr %add.ptr352.1, !3606, !DIExpression(), !3644)
  %arrayidx358.1 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3827
  %120 = load ptr, ptr %arrayidx358.1, align 8, !dbg !3827
  %add.ptr362.1 = getelementptr inbounds i8, ptr %120, i64 %idx.ext346, !dbg !3828
  %add.ptr367.1 = getelementptr inbounds i8, ptr %add.ptr362.1, i64 %idx.ext6, !dbg !3829
    #dbg_value(ptr %add.ptr367.1, !3607, !DIExpression(), !3644)
  %121 = load ptr, ptr %dctf368, align 16, !dbg !3830
  call void %121(ptr noundef nonnull %dct4x4337, ptr noundef %add.ptr352.1, ptr noundef %add.ptr367.1) #6, !dbg !3831
  store i16 0, ptr %dct4x4337, align 16, !dbg !3832, !DIAssignID !3833
    #dbg_assign(i16 0, !3633, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3833, ptr %dct4x4337, !DIExpression(), !3643)
  %122 = load i32, ptr %b_trellis372, align 16, !dbg !3834
  %tobool373.not.1 = icmp eq i32 %122, 0, !dbg !3836
  br i1 %tobool373.not.1, label %if.else377.1, label %if.then374.1, !dbg !3837

if.then374.1:                                     ; preds = %if.end421
  %call376.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4337, i32 noundef 3, i32 noundef %105, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6, !dbg !3838
    #dbg_value(i32 %call376.1, !3610, !DIExpression(), !3644)
  br label %if.end389.1, !dbg !3839

if.else377.1:                                     ; preds = %if.end421
  %123 = load ptr, ptr %quant_4x4, align 8, !dbg !3840
  %124 = load ptr, ptr %arrayidx380, align 8, !dbg !3841
  %arrayidx382.1 = getelementptr inbounds [16 x i16], ptr %124, i64 %idxprom381, !dbg !3841
  %125 = load ptr, ptr %arrayidx384, align 8, !dbg !3842
  %arrayidx386.1 = getelementptr inbounds [16 x i16], ptr %125, i64 %idxprom381, !dbg !3842
  %call388.1 = call i32 %123(ptr noundef nonnull %dct4x4337, ptr noundef %arrayidx382.1, ptr noundef %arrayidx386.1) #6, !dbg !3843
    #dbg_value(i32 %call388.1, !3610, !DIExpression(), !3644)
  br label %if.end389.1

if.end389.1:                                      ; preds = %if.else377.1, %if.then374.1
  %nz.0.1 = phi i32 [ %call376.1, %if.then374.1 ], [ %call388.1, %if.else377.1 ], !dbg !3844
    #dbg_value(i32 %nz.0.1, !3610, !DIExpression(), !3644)
  %conv390.1 = trunc i32 %nz.0.1 to i8, !dbg !3845
  %126 = add nsw i64 %106, 4, !dbg !3863
  %arrayidx398.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %126, !dbg !3846
  %127 = load i32, ptr %arrayidx398.1, align 4, !dbg !3846
  %idxprom399.1 = sext i32 %127 to i64, !dbg !3847
  %arrayidx400.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count393, i64 0, i64 %idxprom399.1, !dbg !3847
  store i8 %conv390.1, ptr %arrayidx400.1, align 1, !dbg !3848
  %tobool401.not.1 = icmp eq i32 %nz.0.1, 0, !dbg !3849
  br i1 %tobool401.not.1, label %if.end421.1, label %if.then402.1, !dbg !3851

if.then402.1:                                     ; preds = %if.end389.1
  %128 = load ptr, ptr %scan_4x4404, align 8, !dbg !3852
  %arrayidx411.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4406, i64 0, i64 %126, !dbg !3854
  call void %128(ptr noundef nonnull %arrayidx411.1, ptr noundef nonnull %dct4x4337) #6, !dbg !3855
  %129 = load ptr, ptr %dequant_4x4415, align 8, !dbg !3856
  %130 = load ptr, ptr %arrayidx418, align 8, !dbg !3857
  call void %129(ptr noundef nonnull %dct4x4337, ptr noundef %130, i32 noundef %105) #6, !dbg !3858
  %131 = load ptr, ptr %add4x4_idct, align 8, !dbg !3859
  call void %131(ptr noundef %add.ptr367.1, ptr noundef nonnull %dct4x4337) #6, !dbg !3860
  br label %if.end421.1, !dbg !3861

if.end421.1:                                      ; preds = %if.then402.1, %if.end389.1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4337) #6, !dbg !3862
    #dbg_value(i64 2, !3631, !DIExpression(), !3821)
  br label %if.end425, !dbg !3716

if.end425:                                        ; preds = %if.end84, %if.end421.1
  %nnz8x8.8 = phi i32 [ %nnz8x8.7, %if.end421.1 ], [ %nnz8x8.1, %if.end84 ], !dbg !3667
    #dbg_value(i32 %nnz8x8.8, !3609, !DIExpression(), !3644)
  %shl = shl nuw i32 1, %i8, !dbg !3716
  %not = xor i32 %shl, -1, !dbg !3864
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3865
  %132 = load i32, ptr %i_cbp_luma, align 8, !dbg !3866
  %and427 = and i32 %132, %not, !dbg !3866
  %shl428 = shl i32 %nnz8x8.8, %i8, !dbg !3867
  %or431 = or i32 %and427, %shl428, !dbg !3868
  store i32 %or431, ptr %i_cbp_luma, align 8, !dbg !3868
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3869
  store i32 2, ptr %i_cbp_chroma, align 4, !dbg !3870
  ret void, !dbg !3871
}

declare !dbg !3872 void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %h, i32 noundef %i4) local_unnamed_addr #0 !dbg !3873 {
entry:
  %dct4x4 = alloca [16 x i16], align 16, !DIAssignID !3884
    #dbg_assign(i1 undef, !3881, !DIExpression(), !3884, ptr %dct4x4, !DIExpression(), !3885)
    #dbg_value(ptr %h, !3875, !DIExpression(), !3886)
    #dbg_value(i32 %i4, !3876, !DIExpression(), !3886)
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3887
  %0 = load i32, ptr %i_qp1, align 16, !dbg !3887
    #dbg_value(i32 %0, !3877, !DIExpression(), !3886)
  %p_fenc3 = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !3888
  %1 = load ptr, ptr %p_fenc3, align 16, !dbg !3889
  %idxprom = sext i32 %i4 to i64, !dbg !3890
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %idxprom, !dbg !3890
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3890
  %idxprom5 = zext i8 %2 to i64, !dbg !3889
  %arrayidx6 = getelementptr inbounds i8, ptr %1, i64 %idxprom5, !dbg !3889
    #dbg_value(ptr %arrayidx6, !3878, !DIExpression(), !3886)
  %p_fdec9 = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3891
  %3 = load ptr, ptr %p_fdec9, align 16, !dbg !3892
  %arrayidx12 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom, !dbg !3893
  %4 = load i16, ptr %arrayidx12, align 2, !dbg !3893
  %idxprom13 = zext i16 %4 to i64, !dbg !3892
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 %idxprom13, !dbg !3892
    #dbg_value(ptr %arrayidx14, !3879, !DIExpression(), !3886)
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !3894
  %5 = load i32, ptr %b_lossless, align 4, !dbg !3894
  %tobool.not = icmp eq i32 %5, 0, !dbg !3895
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !3896

if.then:                                          ; preds = %entry
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056, !dbg !3897
  %6 = load ptr, ptr %sub_4x4, align 8, !dbg !3897
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600, !dbg !3899
  %arrayidx17 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %idxprom, !dbg !3900
  %call = tail call i32 %6(ptr noundef nonnull %arrayidx17, ptr noundef %arrayidx6, ptr noundef %arrayidx14) #6, !dbg !3901
    #dbg_value(i32 %call, !3880, !DIExpression(), !3886)
  %conv = trunc i32 %call to i8, !dbg !3902
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3903
  %arrayidx20 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !3904
  %7 = load i32, ptr %arrayidx20, align 4, !dbg !3904
  %idxprom21 = sext i32 %7 to i64, !dbg !3905
  %arrayidx22 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom21, !dbg !3905
  store i8 %conv, ptr %arrayidx22, align 1, !dbg !3906
  br label %if.end47, !dbg !3907

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4) #6, !dbg !3908
  %dctf = getelementptr inbounds i8, ptr %h, i64 32912, !dbg !3909
  %8 = load ptr, ptr %dctf, align 16, !dbg !3910
  call void %8(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx6, ptr noundef %arrayidx14) #6, !dbg !3911
    #dbg_value(ptr %h, !1552, !DIExpression(), !3912)
    #dbg_value(ptr %dct4x4, !1557, !DIExpression(), !3912)
    #dbg_value(i32 %0, !1558, !DIExpression(), !3912)
    #dbg_value(i32 2, !1559, !DIExpression(), !3912)
    #dbg_value(i32 0, !1560, !DIExpression(), !3912)
    #dbg_value(i32 %i4, !1561, !DIExpression(), !3912)
    #dbg_value(i1 true, !1562, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3912)
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416, !dbg !3914
  %9 = load i32, ptr %b_trellis.i, align 16, !dbg !3914
  %tobool1.not.i = icmp eq i32 %9, 0, !dbg !3915
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i, !dbg !3916

if.then.i:                                        ; preds = %if.else
    #dbg_value(i32 1, !1562, !DIExpression(), !3912)
  %call.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %i4) #6, !dbg !3917
  br label %x264_quant_4x4.exit, !dbg !3918

if.else.i:                                        ; preds = %if.else
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088, !dbg !3919
  %10 = load ptr, ptr %quant_4x4.i, align 8, !dbg !3919
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !3920
  %11 = load ptr, ptr %arrayidx.i, align 8, !dbg !3920
  %idxprom2.i = sext i32 %0 to i64, !dbg !3920
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %11, i64 %idxprom2.i, !dbg !3920
  %arrayidx5.i = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !3921
  %12 = load ptr, ptr %arrayidx5.i, align 8, !dbg !3921
  %arrayidx7.i = getelementptr inbounds [16 x i16], ptr %12, i64 %idxprom2.i, !dbg !3921
  %call9.i = call i32 %10(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6, !dbg !3922
  br label %x264_quant_4x4.exit, !dbg !3923

x264_quant_4x4.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ], !dbg !3924
    #dbg_value(i32 %retval.0.i, !3880, !DIExpression(), !3886)
  %conv26 = trunc i32 %retval.0.i to i8, !dbg !3925
  %non_zero_count29 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !3926
  %arrayidx31 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !3927
  %13 = load i32, ptr %arrayidx31, align 4, !dbg !3927
  %idxprom32 = sext i32 %13 to i64, !dbg !3928
  %arrayidx33 = getelementptr inbounds [48 x i8], ptr %non_zero_count29, i64 0, i64 %idxprom32, !dbg !3928
  store i8 %conv26, ptr %arrayidx33, align 1, !dbg !3929
  %tobool34.not = icmp eq i32 %retval.0.i, 0, !dbg !3930
  br i1 %tobool34.not, label %if.end, label %if.then35, !dbg !3932

if.then35:                                        ; preds = %x264_quant_4x4.exit
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040, !dbg !3933
  %14 = load ptr, ptr %scan_4x4, align 8, !dbg !3933
  %luma4x438 = getelementptr inbounds i8, ptr %h, i64 15600, !dbg !3935
  %arrayidx40 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x438, i64 0, i64 %idxprom, !dbg !3936
  call void %14(ptr noundef nonnull %arrayidx40, ptr noundef nonnull %dct4x4) #6, !dbg !3937
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120, !dbg !3938
  %15 = load ptr, ptr %dequant_4x4, align 8, !dbg !3938
  %arrayidx44 = getelementptr inbounds i8, ptr %h, i64 3352, !dbg !3939
  %16 = load ptr, ptr %arrayidx44, align 8, !dbg !3939
  call void %15(ptr noundef nonnull %dct4x4, ptr noundef %16, i32 noundef %0) #6, !dbg !3940
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920, !dbg !3941
  %17 = load ptr, ptr %add4x4_idct, align 8, !dbg !3941
  call void %17(ptr noundef %arrayidx14, ptr noundef nonnull %dct4x4) #6, !dbg !3942
  br label %if.end, !dbg !3943

if.end:                                           ; preds = %if.then35, %x264_quant_4x4.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4) #6, !dbg !3944
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then
  ret void, !dbg !3945
}

declare !dbg !3946 i32 @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "block_idx_xy_fenc", scope: !2, file: !6, line: 223, type: !200, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !184, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/encoder/macroblock.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "40142dbffb7c09e499f12300891de7c4")
!4 = !{!5, !15, !22, !26, !36, !49, !63, !77, !86, !108, !116}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 258, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!10 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!11 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!12 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!13 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!14 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm4_e", file: !16, line: 39, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "CQM_4IY", value: 0)
!19 = !DIEnumerator(name: "CQM_4PY", value: 1)
!20 = !DIEnumerator(name: "CQM_4IC", value: 2)
!21 = !DIEnumerator(name: "CQM_4PC", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm8_e", file: !16, line: 46, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CQM_8IY", value: 0)
!25 = !DIEnumerator(name: "CQM_8PY", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !27, line: 31, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!28 = !{!29, !30, !31, !32, !33, !34, !35}
!29 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!30 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!31 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!32 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!33 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!34 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!35 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 30, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!39 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!40 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!41 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!42 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!43 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!44 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!45 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!46 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!47 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!48 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !27, line: 65, baseType: !7, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!51 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!52 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!53 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!54 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!55 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!56 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!57 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!58 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!59 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!60 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!61 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!62 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra8x8_pred_e", file: !27, line: 92, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!65 = !DIEnumerator(name: "I_PRED_8x8_V", value: 0)
!66 = !DIEnumerator(name: "I_PRED_8x8_H", value: 1)
!67 = !DIEnumerator(name: "I_PRED_8x8_DC", value: 2)
!68 = !DIEnumerator(name: "I_PRED_8x8_DDL", value: 3)
!69 = !DIEnumerator(name: "I_PRED_8x8_DDR", value: 4)
!70 = !DIEnumerator(name: "I_PRED_8x8_VR", value: 5)
!71 = !DIEnumerator(name: "I_PRED_8x8_HD", value: 6)
!72 = !DIEnumerator(name: "I_PRED_8x8_VL", value: 7)
!73 = !DIEnumerator(name: "I_PRED_8x8_HU", value: 8)
!74 = !DIEnumerator(name: "I_PRED_8x8_DC_LEFT", value: 9)
!75 = !DIEnumerator(name: "I_PRED_8x8_DC_TOP", value: 10)
!76 = !DIEnumerator(name: "I_PRED_8x8_DC_128", value: 11)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra16x16_pred_e", file: !27, line: 48, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIEnumerator(name: "I_PRED_16x16_V", value: 0)
!80 = !DIEnumerator(name: "I_PRED_16x16_H", value: 1)
!81 = !DIEnumerator(name: "I_PRED_16x16_DC", value: 2)
!82 = !DIEnumerator(name: "I_PRED_16x16_P", value: 3)
!83 = !DIEnumerator(name: "I_PRED_16x16_DC_LEFT", value: 4)
!84 = !DIEnumerator(name: "I_PRED_16x16_DC_TOP", value: 5)
!85 = !DIEnumerator(name: "I_PRED_16x16_DC_128", value: 6)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!88 = !DIEnumerator(name: "I_4x4", value: 0)
!89 = !DIEnumerator(name: "I_8x8", value: 1)
!90 = !DIEnumerator(name: "I_16x16", value: 2)
!91 = !DIEnumerator(name: "I_PCM", value: 3)
!92 = !DIEnumerator(name: "P_L0", value: 4)
!93 = !DIEnumerator(name: "P_8x8", value: 5)
!94 = !DIEnumerator(name: "P_SKIP", value: 6)
!95 = !DIEnumerator(name: "B_DIRECT", value: 7)
!96 = !DIEnumerator(name: "B_L0_L0", value: 8)
!97 = !DIEnumerator(name: "B_L0_L1", value: 9)
!98 = !DIEnumerator(name: "B_L0_BI", value: 10)
!99 = !DIEnumerator(name: "B_L1_L0", value: 11)
!100 = !DIEnumerator(name: "B_L1_L1", value: 12)
!101 = !DIEnumerator(name: "B_L1_BI", value: 13)
!102 = !DIEnumerator(name: "B_BI_L0", value: 14)
!103 = !DIEnumerator(name: "B_BI_L1", value: 15)
!104 = !DIEnumerator(name: "B_BI_BI", value: 16)
!105 = !DIEnumerator(name: "B_8x8", value: 17)
!106 = !DIEnumerator(name: "B_SKIP", value: 18)
!107 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "MB_LEFT", value: 1)
!111 = !DIEnumerator(name: "MB_TOP", value: 2)
!112 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!113 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!114 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!115 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 117, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!118 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!119 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!120 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!121 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!122 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!123 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!124 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!125 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!126 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!127 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!128 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!129 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!130 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!131 = !DIEnumerator(name: "D_8x8", value: 13)
!132 = !DIEnumerator(name: "D_16x8", value: 14)
!133 = !DIEnumerator(name: "D_8x16", value: 15)
!134 = !DIEnumerator(name: "D_16x16", value: 16)
!135 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!136 = !{!137, !155, !168, !171}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !139, line: 88, baseType: !140)
!139 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !139, line: 88, size: 16, elements: !141)
!141 = !{!142, !148}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !140, file: !139, line: 88, baseType: !143, size: 16)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !144, line: 25, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !146, line: 40, baseType: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !140, file: !139, line: 88, baseType: !149, size: 16)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16, elements: !153)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !144, line: 24, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !146, line: 38, baseType: !152)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !139, line: 89, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !139, line: 89, size: 32, elements: !158)
!158 = !{!159, !162, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !157, file: !139, line: 89, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 26, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !146, line: 42, baseType: !7)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !157, file: !139, line: 89, baseType: !163, size: 32)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !153)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !157, file: !139, line: 89, baseType: !165, size: 32)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 4)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !144, line: 27, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !146, line: 45, baseType: !170)
!170 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !139, line: 90, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !139, line: 90, size: 64, elements: !174)
!174 = !{!175, !176, !178, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !173, file: !139, line: 90, baseType: !168, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !173, file: !139, line: 90, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !153)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !173, file: !139, line: 90, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !166)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !173, file: !139, line: 90, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !{!0, !185, !191, !198, !202, !204, !206, !208, !213, !219}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "block_idx_xy_fdec", scope: !2, file: !6, line: 234, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !189)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!189 = !{!190}
!190 = !DISubrange(count: 16)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !139, line: 125, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 864, elements: !196)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!196 = !{!197}
!197 = !DISubrange(count: 27)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !6, line: 200, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !189)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !6, line: 204, type: !200, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "block_idx_yx_1d", scope: !2, file: !6, line: 219, type: !200, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "block_idx_xy_1d", scope: !2, file: !6, line: 215, type: !200, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "x264_pred_i4x4_neighbors", scope: !2, file: !6, line: 45, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 96, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 12)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_tab", scope: !2, file: !215, line: 73, type: !216, isLocal: true, isDefinition: true)
!215 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 64)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_tab", scope: !2, file: !215, line: 59, type: !187, isLocal: true, isDefinition: true)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 4}
!224 = !{i32 8, !"PIC Level", i32 2}
!225 = !{i32 7, !"PIE Level", i32 2}
!226 = !{i32 7, !"uwtable", i32 2}
!227 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!228 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!229 = distinct !DISubprogram(name: "x264_mb_encode_i4x4", scope: !3, file: !3, line: 110, type: !230, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232, !195, !195}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !234, line: 46, baseType: !235)
!234 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !139, line: 381, size: 266752, elements: !236)
!236 = !{!237, !401, !405, !406, !407, !408, !409, !410, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !545, !547, !574, !576, !577, !578, !582, !586, !587, !588, !592, !596, !597, !598, !603, !606, !607, !684, !701, !862, !863, !864, !865, !869, !870, !871, !872, !873, !874, !875, !890, !1083, !1087, !1148, !1151, !1153, !1154, !1155, !1158, !1163, !1171, !1172, !1178, !1180, !1185, !1260, !1346, !1389, !1411, !1460, !1489}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !235, file: !139, line: 384, baseType: !238, size: 5632)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !234, line: 376, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !234, line: 176, size: 5632, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !284, !286, !287, !288, !289, !291, !292, !306, !307, !308, !309, !310, !339, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !239, file: !234, line: 179, baseType: !7, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !239, file: !234, line: 180, baseType: !195, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !239, file: !234, line: 181, baseType: !195, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !239, file: !234, line: 182, baseType: !195, size: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !239, file: !234, line: 183, baseType: !195, size: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !239, file: !234, line: 186, baseType: !195, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !239, file: !234, line: 187, baseType: !195, size: 32, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !239, file: !234, line: 188, baseType: !195, size: 32, offset: 224)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !239, file: !234, line: 189, baseType: !195, size: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !239, file: !234, line: 190, baseType: !195, size: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !239, file: !234, line: 198, baseType: !195, size: 32, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !239, file: !234, line: 215, baseType: !253, size: 288, offset: 352)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !234, line: 200, size: 288, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !253, file: !234, line: 203, baseType: !195, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !253, file: !234, line: 204, baseType: !195, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !253, file: !234, line: 206, baseType: !195, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !253, file: !234, line: 209, baseType: !195, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !253, file: !234, line: 210, baseType: !195, size: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !253, file: !234, line: 211, baseType: !195, size: 32, offset: 160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !253, file: !234, line: 212, baseType: !195, size: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !253, file: !234, line: 213, baseType: !195, size: 32, offset: 224)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !253, file: !234, line: 214, baseType: !195, size: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !239, file: !234, line: 218, baseType: !195, size: 32, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !239, file: !234, line: 219, baseType: !195, size: 32, offset: 672)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !239, file: !234, line: 220, baseType: !195, size: 32, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !239, file: !234, line: 221, baseType: !195, size: 32, offset: 736)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !239, file: !234, line: 222, baseType: !195, size: 32, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !239, file: !234, line: 224, baseType: !195, size: 32, offset: 800)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !239, file: !234, line: 225, baseType: !195, size: 32, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !239, file: !234, line: 226, baseType: !195, size: 32, offset: 864)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !239, file: !234, line: 227, baseType: !195, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !239, file: !234, line: 229, baseType: !195, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !239, file: !234, line: 230, baseType: !195, size: 32, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !239, file: !234, line: 231, baseType: !195, size: 32, offset: 992)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !239, file: !234, line: 233, baseType: !195, size: 32, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !239, file: !234, line: 234, baseType: !195, size: 32, offset: 1056)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !239, file: !234, line: 236, baseType: !195, size: 32, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !239, file: !234, line: 237, baseType: !195, size: 32, offset: 1120)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !239, file: !234, line: 239, baseType: !195, size: 32, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !239, file: !234, line: 240, baseType: !282, size: 64, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !239, file: !234, line: 241, baseType: !285, size: 128, offset: 1280)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !189)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !239, file: !234, line: 242, baseType: !285, size: 128, offset: 1408)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !239, file: !234, line: 243, baseType: !285, size: 128, offset: 1536)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !239, file: !234, line: 244, baseType: !285, size: 128, offset: 1664)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !239, file: !234, line: 245, baseType: !290, size: 512, offset: 1792)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512, elements: !217)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !239, file: !234, line: 246, baseType: !290, size: 512, offset: 2304)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !239, file: !234, line: 249, baseType: !293, size: 64, offset: 2816)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296, !195, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !301)
!301 = !{!302, !303, !304, !305}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !300, file: !3, baseType: !7, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !300, file: !3, baseType: !7, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !300, file: !3, baseType: !296, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !300, file: !3, baseType: !296, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !239, file: !234, line: 250, baseType: !296, size: 64, offset: 2880)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !239, file: !234, line: 251, baseType: !195, size: 32, offset: 2944)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !239, file: !234, line: 252, baseType: !195, size: 32, offset: 2976)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !239, file: !234, line: 253, baseType: !282, size: 64, offset: 3008)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !239, file: !234, line: 287, baseType: !311, size: 800, offset: 3072)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !234, line: 256, size: 800, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !333, !334, !335, !337, !338}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !311, file: !234, line: 258, baseType: !7, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !311, file: !234, line: 259, baseType: !7, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !311, file: !234, line: 261, baseType: !195, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !311, file: !234, line: 262, baseType: !195, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !311, file: !234, line: 263, baseType: !195, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !311, file: !234, line: 264, baseType: !195, size: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !311, file: !234, line: 265, baseType: !195, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !311, file: !234, line: 267, baseType: !195, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !311, file: !234, line: 268, baseType: !195, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !311, file: !234, line: 269, baseType: !195, size: 32, offset: 288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !311, file: !234, line: 270, baseType: !195, size: 32, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !311, file: !234, line: 271, baseType: !195, size: 32, offset: 352)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !311, file: !234, line: 272, baseType: !195, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !311, file: !234, line: 273, baseType: !195, size: 32, offset: 416)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !311, file: !234, line: 274, baseType: !195, size: 32, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !311, file: !234, line: 275, baseType: !195, size: 32, offset: 480)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !311, file: !234, line: 276, baseType: !195, size: 32, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !311, file: !234, line: 277, baseType: !195, size: 32, offset: 544)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !311, file: !234, line: 278, baseType: !332, size: 32, offset: 576)
!332 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !311, file: !234, line: 279, baseType: !332, size: 32, offset: 608)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !311, file: !234, line: 280, baseType: !195, size: 32, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !311, file: !234, line: 283, baseType: !336, size: 64, offset: 672)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !153)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !311, file: !234, line: 285, baseType: !195, size: 32, offset: 736)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !311, file: !234, line: 286, baseType: !195, size: 32, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !239, file: !234, line: 327, baseType: !340, size: 1152, offset: 3904)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !234, line: 290, size: 1152, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !379, !380}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !340, file: !234, line: 292, baseType: !195, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !340, file: !234, line: 294, baseType: !195, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !340, file: !234, line: 295, baseType: !195, size: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !340, file: !234, line: 296, baseType: !195, size: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !340, file: !234, line: 297, baseType: !195, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !340, file: !234, line: 299, baseType: !195, size: 32, offset: 160)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !340, file: !234, line: 300, baseType: !332, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !340, file: !234, line: 301, baseType: !332, size: 32, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !340, file: !234, line: 302, baseType: !332, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !340, file: !234, line: 303, baseType: !195, size: 32, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !340, file: !234, line: 304, baseType: !195, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !340, file: !234, line: 305, baseType: !332, size: 32, offset: 352)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !340, file: !234, line: 306, baseType: !332, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !340, file: !234, line: 307, baseType: !332, size: 32, offset: 416)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !340, file: !234, line: 309, baseType: !195, size: 32, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !340, file: !234, line: 310, baseType: !332, size: 32, offset: 480)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !340, file: !234, line: 311, baseType: !195, size: 32, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !340, file: !234, line: 312, baseType: !195, size: 32, offset: 544)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !340, file: !234, line: 315, baseType: !195, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !340, file: !234, line: 316, baseType: !282, size: 64, offset: 640)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !340, file: !234, line: 317, baseType: !195, size: 32, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !340, file: !234, line: 318, baseType: !282, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !340, file: !234, line: 321, baseType: !332, size: 32, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !340, file: !234, line: 322, baseType: !332, size: 32, offset: 864)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !340, file: !234, line: 323, baseType: !332, size: 32, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !340, file: !234, line: 324, baseType: !368, size: 64, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !234, line: 174, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 167, size: 256, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !370, file: !234, line: 169, baseType: !195, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !370, file: !234, line: 169, baseType: !195, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !370, file: !234, line: 170, baseType: !195, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !370, file: !234, line: 171, baseType: !195, size: 32, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !370, file: !234, line: 172, baseType: !332, size: 32, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !370, file: !234, line: 173, baseType: !378, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !340, file: !234, line: 325, baseType: !195, size: 32, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !340, file: !234, line: 326, baseType: !282, size: 64, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !239, file: !234, line: 330, baseType: !195, size: 32, offset: 5056)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !239, file: !234, line: 331, baseType: !195, size: 32, offset: 5088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !239, file: !234, line: 332, baseType: !195, size: 32, offset: 5120)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !239, file: !234, line: 334, baseType: !195, size: 32, offset: 5152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !239, file: !234, line: 335, baseType: !195, size: 32, offset: 5184)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !239, file: !234, line: 336, baseType: !160, size: 32, offset: 5216)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !239, file: !234, line: 337, baseType: !160, size: 32, offset: 5248)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !239, file: !234, line: 338, baseType: !160, size: 32, offset: 5280)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !239, file: !234, line: 339, baseType: !160, size: 32, offset: 5312)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !239, file: !234, line: 340, baseType: !195, size: 32, offset: 5344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !239, file: !234, line: 344, baseType: !195, size: 32, offset: 5376)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !239, file: !234, line: 356, baseType: !195, size: 32, offset: 5408)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !239, file: !234, line: 364, baseType: !195, size: 32, offset: 5440)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !239, file: !234, line: 367, baseType: !195, size: 32, offset: 5472)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !239, file: !234, line: 368, baseType: !195, size: 32, offset: 5504)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !239, file: !234, line: 369, baseType: !195, size: 32, offset: 5536)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !239, file: !234, line: 375, baseType: !398, size: 64, offset: 5568)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !296}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !235, file: !139, line: 386, baseType: !402, size: 8256, offset: 5632)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 8256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 129)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !235, file: !139, line: 387, baseType: !195, size: 32, offset: 13888)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !235, file: !139, line: 388, baseType: !195, size: 32, offset: 13920)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !235, file: !139, line: 389, baseType: !195, size: 32, offset: 13952)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !235, file: !139, line: 390, baseType: !195, size: 32, offset: 13984)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !235, file: !139, line: 391, baseType: !195, size: 32, offset: 14016)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !235, file: !139, line: 402, baseType: !411, size: 576, offset: 14080)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !139, line: 394, size: 576, elements: !412)
!412 = !{!413, !414, !415, !425, !426, !427}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !411, file: !139, line: 396, baseType: !195, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !411, file: !139, line: 397, baseType: !195, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !411, file: !139, line: 398, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !234, line: 604, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 593, size: 192, elements: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !418, file: !234, line: 595, baseType: !195, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !418, file: !234, line: 596, baseType: !195, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !418, file: !234, line: 599, baseType: !195, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !418, file: !234, line: 603, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !411, file: !139, line: 399, baseType: !195, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !411, file: !139, line: 400, baseType: !424, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !411, file: !139, line: 401, baseType: !428, size: 320, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !429, line: 56, baseType: !430)
!429 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !429, line: 47, size: 320, elements: !431)
!431 = !{!432, !433, !434, !435, !439, !440}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !430, file: !429, line: 49, baseType: !424, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !430, file: !429, line: 50, baseType: !424, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !430, file: !429, line: 51, baseType: !424, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !430, file: !429, line: 53, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !437, line: 87, baseType: !438)
!437 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!438 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !430, file: !429, line: 54, baseType: !195, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !430, file: !429, line: 55, baseType: !195, size: 32, offset: 288)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !235, file: !139, line: 404, baseType: !424, size: 64, offset: 14656)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !235, file: !139, line: 405, baseType: !195, size: 32, offset: 14720)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !235, file: !139, line: 410, baseType: !195, size: 32, offset: 14752)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !235, file: !139, line: 411, baseType: !195, size: 32, offset: 14784)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !235, file: !139, line: 413, baseType: !195, size: 32, offset: 14816)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !235, file: !139, line: 415, baseType: !195, size: 32, offset: 14848)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !235, file: !139, line: 416, baseType: !195, size: 32, offset: 14880)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !235, file: !139, line: 418, baseType: !195, size: 32, offset: 14912)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !235, file: !139, line: 419, baseType: !195, size: 32, offset: 14944)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !235, file: !139, line: 420, baseType: !195, size: 32, offset: 14976)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !235, file: !139, line: 421, baseType: !195, size: 32, offset: 15008)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !235, file: !139, line: 422, baseType: !195, size: 32, offset: 15040)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !235, file: !139, line: 424, baseType: !195, size: 32, offset: 15072)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !235, file: !139, line: 425, baseType: !195, size: 32, offset: 15104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !235, file: !139, line: 427, baseType: !195, size: 32, offset: 15136)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !235, file: !139, line: 430, baseType: !457, size: 10400, offset: 15168)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 10400, elements: !543)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !16, line: 154, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 52, size: 10400, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !478, !479, !480, !481, !482, !483, !484, !485, !486, !493, !494, !542}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !459, file: !16, line: 54, baseType: !195, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !459, file: !16, line: 56, baseType: !195, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !459, file: !16, line: 57, baseType: !195, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !459, file: !16, line: 59, baseType: !195, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !459, file: !16, line: 60, baseType: !195, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !459, file: !16, line: 61, baseType: !195, size: 32, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !459, file: !16, line: 63, baseType: !195, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !459, file: !16, line: 65, baseType: !195, size: 32, offset: 224)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !459, file: !16, line: 67, baseType: !195, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !459, file: !16, line: 69, baseType: !195, size: 32, offset: 288)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !459, file: !16, line: 70, baseType: !195, size: 32, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !459, file: !16, line: 71, baseType: !195, size: 32, offset: 352)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !459, file: !16, line: 72, baseType: !195, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !459, file: !16, line: 73, baseType: !475, size: 8192, offset: 416)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 8192, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !459, file: !16, line: 75, baseType: !195, size: 32, offset: 8608)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !459, file: !16, line: 76, baseType: !195, size: 32, offset: 8640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !459, file: !16, line: 77, baseType: !195, size: 32, offset: 8672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !459, file: !16, line: 78, baseType: !195, size: 32, offset: 8704)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !459, file: !16, line: 79, baseType: !195, size: 32, offset: 8736)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !459, file: !16, line: 80, baseType: !195, size: 32, offset: 8768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !459, file: !16, line: 81, baseType: !195, size: 32, offset: 8800)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !459, file: !16, line: 83, baseType: !195, size: 32, offset: 8832)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !459, file: !16, line: 90, baseType: !487, size: 128, offset: 8864)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !16, line: 84, size: 128, elements: !488)
!488 = !{!489, !490, !491, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !487, file: !16, line: 86, baseType: !195, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !487, file: !16, line: 87, baseType: !195, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !487, file: !16, line: 88, baseType: !195, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !487, file: !16, line: 89, baseType: !195, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !459, file: !16, line: 92, baseType: !195, size: 32, offset: 8992)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !459, file: !16, line: 150, baseType: !495, size: 1344, offset: 9024)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !16, line: 93, size: 1344, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !495, file: !16, line: 95, baseType: !195, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !495, file: !16, line: 96, baseType: !195, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !495, file: !16, line: 97, baseType: !195, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !495, file: !16, line: 99, baseType: !195, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !495, file: !16, line: 100, baseType: !195, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !495, file: !16, line: 102, baseType: !195, size: 32, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !495, file: !16, line: 103, baseType: !195, size: 32, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !495, file: !16, line: 104, baseType: !195, size: 32, offset: 224)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !495, file: !16, line: 105, baseType: !195, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !495, file: !16, line: 106, baseType: !195, size: 32, offset: 288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !495, file: !16, line: 107, baseType: !195, size: 32, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !495, file: !16, line: 108, baseType: !195, size: 32, offset: 352)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !495, file: !16, line: 110, baseType: !195, size: 32, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !495, file: !16, line: 111, baseType: !195, size: 32, offset: 416)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !495, file: !16, line: 112, baseType: !195, size: 32, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !495, file: !16, line: 114, baseType: !195, size: 32, offset: 480)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !495, file: !16, line: 115, baseType: !160, size: 32, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !495, file: !16, line: 116, baseType: !160, size: 32, offset: 544)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !495, file: !16, line: 117, baseType: !195, size: 32, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !495, file: !16, line: 119, baseType: !195, size: 32, offset: 608)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !495, file: !16, line: 120, baseType: !195, size: 32, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !495, file: !16, line: 137, baseType: !519, size: 384, offset: 672)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !16, line: 122, size: 384, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !519, file: !16, line: 124, baseType: !195, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !519, file: !16, line: 125, baseType: !195, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !519, file: !16, line: 126, baseType: !195, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !519, file: !16, line: 127, baseType: !195, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !519, file: !16, line: 128, baseType: !195, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !519, file: !16, line: 129, baseType: !195, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !519, file: !16, line: 130, baseType: !195, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !519, file: !16, line: 131, baseType: !195, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !519, file: !16, line: 133, baseType: !195, size: 32, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !519, file: !16, line: 134, baseType: !195, size: 32, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !519, file: !16, line: 135, baseType: !195, size: 32, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !519, file: !16, line: 136, baseType: !195, size: 32, offset: 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !495, file: !16, line: 139, baseType: !195, size: 32, offset: 1056)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !495, file: !16, line: 140, baseType: !195, size: 32, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !495, file: !16, line: 141, baseType: !195, size: 32, offset: 1120)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !495, file: !16, line: 142, baseType: !195, size: 32, offset: 1152)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !495, file: !16, line: 143, baseType: !195, size: 32, offset: 1184)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !495, file: !16, line: 144, baseType: !195, size: 32, offset: 1216)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !495, file: !16, line: 145, baseType: !195, size: 32, offset: 1248)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !495, file: !16, line: 146, baseType: !195, size: 32, offset: 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !495, file: !16, line: 147, baseType: !195, size: 32, offset: 1312)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !459, file: !16, line: 152, baseType: !195, size: 32, offset: 10368)
!543 = !{!544}
!544 = !DISubrange(count: 1)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !235, file: !139, line: 431, baseType: !546, size: 64, offset: 25600)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !235, file: !139, line: 432, baseType: !548, size: 960, offset: 25664)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 960, elements: !543)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !16, line: 186, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 156, size: 960, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !550, file: !16, line: 158, baseType: !195, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !550, file: !16, line: 159, baseType: !195, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !550, file: !16, line: 161, baseType: !195, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !550, file: !16, line: 163, baseType: !195, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !550, file: !16, line: 164, baseType: !195, size: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !550, file: !16, line: 166, baseType: !195, size: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !550, file: !16, line: 167, baseType: !195, size: 32, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !550, file: !16, line: 169, baseType: !195, size: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !550, file: !16, line: 170, baseType: !195, size: 32, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !550, file: !16, line: 172, baseType: !195, size: 32, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !550, file: !16, line: 173, baseType: !195, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !550, file: !16, line: 175, baseType: !195, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !550, file: !16, line: 177, baseType: !195, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !550, file: !16, line: 178, baseType: !195, size: 32, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !550, file: !16, line: 179, baseType: !195, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !550, file: !16, line: 181, baseType: !195, size: 32, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !550, file: !16, line: 183, baseType: !195, size: 32, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !550, file: !16, line: 184, baseType: !570, size: 384, offset: 576)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 384, elements: !572)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!572 = !{!573}
!573 = !DISubrange(count: 6)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !235, file: !139, line: 433, baseType: !575, size: 64, offset: 26624)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !235, file: !139, line: 434, baseType: !195, size: 32, offset: 26688)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !235, file: !139, line: 437, baseType: !195, size: 32, offset: 26720)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !235, file: !139, line: 440, baseType: !579, size: 256, offset: 26752)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 256, elements: !166)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 512, elements: !189)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !235, file: !139, line: 441, baseType: !583, size: 128, offset: 27008)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 128, elements: !153)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2048, elements: !217)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !235, file: !139, line: 443, baseType: !579, size: 256, offset: 27136)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !235, file: !139, line: 444, baseType: !583, size: 128, offset: 27392)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !235, file: !139, line: 446, baseType: !589, size: 256, offset: 27520)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 256, elements: !166)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !189)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !235, file: !139, line: 447, baseType: !593, size: 128, offset: 27776)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 128, elements: !153)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !217)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !235, file: !139, line: 448, baseType: !589, size: 256, offset: 27904)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !235, file: !139, line: 449, baseType: !593, size: 128, offset: 28160)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !235, file: !139, line: 454, baseType: !599, size: 5888, offset: 28288)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 5888, elements: !601)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!601 = !{!602}
!602 = !DISubrange(count: 92)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !235, file: !139, line: 455, baseType: !604, size: 23552, offset: 34176)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 23552, elements: !605)
!605 = !{!602, !167}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !235, file: !139, line: 457, baseType: !571, size: 64, offset: 57728)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !235, file: !139, line: 460, baseType: !608, size: 53376, offset: 57856)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !139, line: 364, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 302, size: 53376, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !639, !668, !669, !670, !676, !677, !678, !679, !680, !681, !682, !683}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !609, file: !139, line: 304, baseType: !546, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !609, file: !139, line: 305, baseType: !575, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !609, file: !139, line: 307, baseType: !195, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !609, file: !139, line: 308, baseType: !195, size: 32, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !609, file: !139, line: 309, baseType: !195, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !609, file: !139, line: 311, baseType: !195, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !609, file: !139, line: 313, baseType: !195, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !609, file: !139, line: 315, baseType: !195, size: 32, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !609, file: !139, line: 316, baseType: !195, size: 32, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !609, file: !139, line: 317, baseType: !195, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !609, file: !139, line: 319, baseType: !195, size: 32, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !609, file: !139, line: 321, baseType: !195, size: 32, offset: 416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !609, file: !139, line: 322, baseType: !195, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !609, file: !139, line: 324, baseType: !336, size: 64, offset: 480)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !609, file: !139, line: 325, baseType: !195, size: 32, offset: 544)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !609, file: !139, line: 327, baseType: !195, size: 32, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !609, file: !139, line: 329, baseType: !195, size: 32, offset: 608)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !609, file: !139, line: 330, baseType: !195, size: 32, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !609, file: !139, line: 331, baseType: !195, size: 32, offset: 672)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !609, file: !139, line: 333, baseType: !195, size: 32, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !609, file: !139, line: 334, baseType: !195, size: 32, offset: 736)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !609, file: !139, line: 339, baseType: !633, size: 2048, offset: 768)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 2048, elements: !638)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !139, line: 335, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !634, file: !139, line: 337, baseType: !195, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !634, file: !139, line: 338, baseType: !195, size: 32, offset: 32)
!638 = !{!154, !190}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !609, file: !139, line: 342, baseType: !640, size: 49152, align: 128, offset: 2816)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 49152, align: 128, elements: !665)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !642, line: 36, baseType: !643, align: 128)
!642 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !642, line: 26, size: 512, elements: !644)
!644 = !{!645, !651, !652, !655, !656, !657}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !643, file: !642, line: 30, baseType: !646, size: 128, align: 128)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !182)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !648, line: 25, baseType: !649)
!648 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !146, line: 39, baseType: !650)
!650 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !643, file: !642, line: 31, baseType: !646, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !643, file: !642, line: 32, baseType: !653, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !648, line: 26, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !146, line: 41, baseType: !195)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !643, file: !642, line: 33, baseType: !653, size: 32, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !643, file: !642, line: 34, baseType: !653, size: 32, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !643, file: !642, line: 35, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !642, line: 25, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !424, !195, !424, !195, !663, !195}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!665 = !{!666, !667}
!666 = !DISubrange(count: 32)
!667 = !DISubrange(count: 3)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !609, file: !139, line: 344, baseType: !195, size: 32, offset: 51968)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !609, file: !139, line: 345, baseType: !195, size: 32, offset: 52000)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !609, file: !139, line: 350, baseType: !671, size: 1024, offset: 52032)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 1024, elements: !189)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !139, line: 346, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !672, file: !139, line: 348, baseType: !195, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !672, file: !139, line: 349, baseType: !195, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !609, file: !139, line: 352, baseType: !195, size: 32, offset: 53056)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !609, file: !139, line: 354, baseType: !195, size: 32, offset: 53088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !609, file: !139, line: 355, baseType: !195, size: 32, offset: 53120)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !609, file: !139, line: 356, baseType: !195, size: 32, offset: 53152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !609, file: !139, line: 357, baseType: !195, size: 32, offset: 53184)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !609, file: !139, line: 360, baseType: !195, size: 32, offset: 53216)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !609, file: !139, line: 361, baseType: !195, size: 32, offset: 53248)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !609, file: !139, line: 362, baseType: !195, size: 32, offset: 53280)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !235, file: !139, line: 463, baseType: !685, size: 4096, offset: 111232)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !686, line: 46, baseType: !687)
!686 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 27, size: 4096, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !687, file: !686, line: 30, baseType: !195, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !687, file: !686, line: 31, baseType: !195, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !687, file: !686, line: 34, baseType: !195, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !687, file: !686, line: 35, baseType: !195, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !687, file: !686, line: 37, baseType: !424, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !687, file: !686, line: 38, baseType: !424, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !687, file: !686, line: 39, baseType: !424, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !687, file: !686, line: 42, baseType: !195, size: 32, align: 128, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !687, file: !686, line: 45, baseType: !698, size: 3680, offset: 416)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 3680, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 460)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !235, file: !139, line: 494, baseType: !702, size: 2112, offset: 115328)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !139, line: 465, size: 2112, elements: !703)
!703 = !{!704, !842, !844, !845, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !858, !859, !860, !861}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !702, file: !139, line: 468, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !708, line: 146, baseType: !709)
!708 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !708, line: 31, size: 125056, elements: !710)
!710 = !{!711, !712, !713, !714, !717, !718, !719, !720, !721, !722, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !741, !742, !743, !744, !745, !746, !748, !750, !751, !752, !753, !754, !757, !759, !760, !762, !767, !768, !772, !773, !777, !781, !784, !786, !787, !789, !790, !792, !793, !794, !797, !799, !800, !801, !803, !804, !805, !806, !807, !808, !809, !810, !812, !813, !814, !823, !827, !829, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !709, file: !708, line: 34, baseType: !195, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !709, file: !708, line: 35, baseType: !195, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !709, file: !708, line: 36, baseType: !195, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !709, file: !708, line: 37, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !648, line: 27, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !146, line: 44, baseType: !438)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !709, file: !708, line: 38, baseType: !715, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !709, file: !708, line: 39, baseType: !195, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !709, file: !708, line: 40, baseType: !195, size: 32, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !709, file: !708, line: 41, baseType: !195, size: 32, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !709, file: !708, line: 42, baseType: !195, size: 32, offset: 352)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !709, file: !708, line: 43, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !709, file: !708, line: 45, baseType: !195, size: 32, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !709, file: !708, line: 46, baseType: !195, size: 32, offset: 480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !709, file: !708, line: 47, baseType: !195, size: 32, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !709, file: !708, line: 48, baseType: !195, size: 32, offset: 544)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !709, file: !708, line: 49, baseType: !195, size: 32, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !709, file: !708, line: 50, baseType: !195, size: 32, offset: 608)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !709, file: !708, line: 51, baseType: !195, size: 32, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !709, file: !708, line: 52, baseType: !150, size: 8, offset: 672)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !709, file: !708, line: 53, baseType: !150, size: 8, offset: 680)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !709, file: !708, line: 54, baseType: !150, size: 8, offset: 688)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !709, file: !708, line: 55, baseType: !332, size: 32, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !709, file: !708, line: 56, baseType: !332, size: 32, offset: 736)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !709, file: !708, line: 57, baseType: !195, size: 32, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !709, file: !708, line: 60, baseType: !195, size: 32, offset: 800)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !709, file: !708, line: 61, baseType: !739, size: 96, offset: 832)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 96, elements: !740)
!740 = !{!667}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !709, file: !708, line: 62, baseType: !739, size: 96, offset: 928)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !709, file: !708, line: 63, baseType: !739, size: 96, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !709, file: !708, line: 64, baseType: !195, size: 32, offset: 1120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !709, file: !708, line: 65, baseType: !195, size: 32, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !709, file: !708, line: 66, baseType: !195, size: 32, offset: 1184)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !709, file: !708, line: 67, baseType: !747, size: 192, offset: 1216)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !740)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !709, file: !708, line: 68, baseType: !749, size: 256, offset: 1408)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !166)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !709, file: !708, line: 69, baseType: !749, size: 256, offset: 1664)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !709, file: !708, line: 70, baseType: !600, size: 64, offset: 1920)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !709, file: !708, line: 74, baseType: !749, size: 256, offset: 1984)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !709, file: !708, line: 75, baseType: !749, size: 256, offset: 2240)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !709, file: !708, line: 77, baseType: !755, size: 24576, align: 128, offset: 2560)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 24576, align: 128, elements: !756)
!756 = !{!190, !667}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !709, file: !708, line: 78, baseType: !758, size: 1024, offset: 27136)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1024, elements: !189)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !709, file: !708, line: 79, baseType: !195, size: 32, offset: 28160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !709, file: !708, line: 80, baseType: !761, size: 64, offset: 28224)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !709, file: !708, line: 83, baseType: !763, size: 64, offset: 28288)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !648, line: 24, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !146, line: 37, baseType: !766)
!766 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !709, file: !708, line: 84, baseType: !424, size: 64, offset: 28352)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !709, file: !708, line: 85, baseType: !769, size: 128, offset: 28416)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 128, elements: !153)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 32, elements: !153)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !709, file: !708, line: 86, baseType: !770, size: 64, offset: 28544)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !709, file: !708, line: 87, baseType: !774, size: 2176, offset: 28608)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 2176, elements: !775)
!775 = !{!154, !776}
!776 = !DISubrange(count: 17)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !709, file: !708, line: 92, baseType: !778, size: 20736, offset: 30784)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 20736, elements: !779)
!779 = !{!780, !780}
!780 = !DISubrange(count: 18)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !709, file: !708, line: 96, baseType: !782, size: 2176, offset: 51520)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 2176, elements: !775)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !709, file: !708, line: 97, baseType: !785, size: 128, offset: 53696)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 128, elements: !153)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !709, file: !708, line: 98, baseType: !336, size: 64, offset: 53824)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !709, file: !708, line: 99, baseType: !788, size: 1024, offset: 53888)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1024, elements: !638)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !709, file: !708, line: 100, baseType: !771, size: 32, offset: 54912)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !709, file: !708, line: 105, baseType: !791, size: 10368, offset: 54944)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 10368, elements: !779)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !709, file: !708, line: 106, baseType: !791, size: 10368, offset: 65312)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !709, file: !708, line: 107, baseType: !195, size: 32, offset: 75680)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !709, file: !708, line: 108, baseType: !795, size: 576, offset: 75712)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 576, elements: !796)
!796 = !{!780}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !709, file: !708, line: 109, baseType: !798, size: 20736, offset: 76288)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 20736, elements: !779)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !709, file: !708, line: 110, baseType: !783, size: 64, offset: 97024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !709, file: !708, line: 111, baseType: !783, size: 64, offset: 97088)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !709, file: !708, line: 112, baseType: !802, size: 64, offset: 97152)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !709, file: !708, line: 113, baseType: !802, size: 64, offset: 97216)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !709, file: !708, line: 114, baseType: !802, size: 64, offset: 97280)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !709, file: !708, line: 115, baseType: !195, size: 32, offset: 97344)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !709, file: !708, line: 116, baseType: !600, size: 64, offset: 97408)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !709, file: !708, line: 117, baseType: !600, size: 64, offset: 97472)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !709, file: !708, line: 118, baseType: !600, size: 64, offset: 97536)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !709, file: !708, line: 119, baseType: !195, size: 32, offset: 97600)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !709, file: !708, line: 120, baseType: !811, size: 576, offset: 97632)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 576, elements: !796)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !709, file: !708, line: 121, baseType: !160, size: 32, offset: 98208)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !709, file: !708, line: 122, baseType: !168, size: 64, offset: 98240)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !709, file: !708, line: 125, baseType: !815, size: 256, offset: 98304)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !234, line: 503, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 496, size: 256, elements: !817)
!817 = !{!818, !820, !821, !822}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !816, file: !234, line: 498, baseType: !819, size: 64)
!819 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !816, file: !234, line: 499, baseType: !819, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !816, file: !234, line: 500, baseType: !819, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !816, file: !234, line: 502, baseType: !819, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !709, file: !708, line: 128, baseType: !824, size: 2008, offset: 98560)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2008, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 251)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !709, file: !708, line: 129, baseType: !828, size: 8032, offset: 100576)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 8032, elements: !825)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !709, file: !708, line: 130, baseType: !830, size: 16064, offset: 108608)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 16064, elements: !825)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !709, file: !708, line: 131, baseType: !195, size: 32, offset: 124672)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !709, file: !708, line: 132, baseType: !195, size: 32, offset: 124704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !709, file: !708, line: 135, baseType: !195, size: 32, offset: 124736)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !709, file: !708, line: 136, baseType: !195, size: 32, offset: 124768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !709, file: !708, line: 137, baseType: !195, size: 32, offset: 124800)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !709, file: !708, line: 138, baseType: !195, size: 32, offset: 124832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !709, file: !708, line: 139, baseType: !195, size: 32, offset: 124864)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !709, file: !708, line: 142, baseType: !332, size: 32, offset: 124896)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !709, file: !708, line: 143, baseType: !195, size: 32, offset: 124928)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !709, file: !708, line: 144, baseType: !195, size: 32, offset: 124960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !709, file: !708, line: 145, baseType: !195, size: 32, offset: 124992)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !702, file: !139, line: 470, baseType: !843, size: 128, offset: 64)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 128, elements: !153)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !702, file: !139, line: 473, baseType: !705, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !702, file: !139, line: 476, baseType: !846, size: 1152, offset: 256)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 1152, elements: !796)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !702, file: !139, line: 478, baseType: !195, size: 32, offset: 1408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !702, file: !139, line: 480, baseType: !195, size: 32, offset: 1440)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !702, file: !139, line: 482, baseType: !195, size: 32, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !702, file: !139, line: 483, baseType: !195, size: 32, offset: 1504)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !702, file: !139, line: 484, baseType: !195, size: 32, offset: 1536)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !702, file: !139, line: 485, baseType: !195, size: 32, offset: 1568)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !702, file: !139, line: 486, baseType: !195, size: 32, offset: 1600)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !702, file: !139, line: 487, baseType: !715, size: 64, offset: 1664)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !702, file: !139, line: 488, baseType: !715, size: 64, offset: 1728)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !702, file: !139, line: 489, baseType: !857, size: 128, offset: 1792)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 128, elements: !153)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !702, file: !139, line: 490, baseType: !715, size: 64, offset: 1920)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !702, file: !139, line: 491, baseType: !715, size: 64, offset: 1984)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !702, file: !139, line: 492, baseType: !195, size: 32, offset: 2048)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !702, file: !139, line: 493, baseType: !195, size: 32, offset: 2080)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !235, file: !139, line: 497, baseType: !706, size: 64, offset: 117440)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !235, file: !139, line: 500, baseType: !706, size: 64, offset: 117504)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !235, file: !139, line: 503, baseType: !195, size: 32, offset: 117568)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !235, file: !139, line: 504, baseType: !866, size: 1216, offset: 117632)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 1216, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 19)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !235, file: !139, line: 505, baseType: !195, size: 32, offset: 118848)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !235, file: !139, line: 506, baseType: !866, size: 1216, offset: 118912)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !235, file: !139, line: 507, baseType: !336, size: 64, offset: 120128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !235, file: !139, line: 510, baseType: !195, size: 32, offset: 120192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !235, file: !139, line: 511, baseType: !195, size: 32, offset: 120224)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !235, file: !139, line: 512, baseType: !715, size: 64, offset: 120256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !235, file: !139, line: 522, baseType: !876, size: 10624, offset: 120320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !139, line: 515, size: 10624, elements: !877)
!877 = !{!878, !880, !883, !886}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !876, file: !139, line: 517, baseType: !879, size: 256, align: 128)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !189)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !876, file: !139, line: 518, baseType: !881, size: 128, align: 128, offset: 256)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !882)
!882 = !{!154, !167}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !876, file: !139, line: 520, baseType: !884, size: 4096, align: 128, offset: 384)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 4096, elements: !885)
!885 = !{!167, !218}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !876, file: !139, line: 521, baseType: !887, size: 6144, align: 128, offset: 4480)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 6144, elements: !888)
!888 = !{!889, !190}
!889 = !DISubrange(count: 24)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !235, file: !139, line: 732, baseType: !891, size: 82688, offset: 130944)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !139, line: 525, size: 82688, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !920, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !938, !941, !945, !946, !947, !952, !953, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !1021, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1063, !1064, !1065, !1068, !1071, !1073, !1076, !1078, !1079}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !891, file: !139, line: 527, baseType: !195, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !891, file: !139, line: 530, baseType: !195, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !891, file: !139, line: 531, baseType: !195, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !891, file: !139, line: 532, baseType: !195, size: 32, offset: 96)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !891, file: !139, line: 535, baseType: !195, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !891, file: !139, line: 536, baseType: !195, size: 32, offset: 160)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !891, file: !139, line: 537, baseType: !195, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !891, file: !139, line: 538, baseType: !195, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !891, file: !139, line: 539, baseType: !195, size: 32, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !891, file: !139, line: 542, baseType: !195, size: 32, offset: 288)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !891, file: !139, line: 543, baseType: !195, size: 32, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !891, file: !139, line: 544, baseType: !195, size: 32, offset: 352)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !891, file: !139, line: 545, baseType: !195, size: 32, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !891, file: !139, line: 546, baseType: !195, size: 32, offset: 416)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !891, file: !139, line: 547, baseType: !195, size: 32, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !891, file: !139, line: 548, baseType: !195, size: 32, offset: 480)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !891, file: !139, line: 549, baseType: !195, size: 32, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !891, file: !139, line: 551, baseType: !195, size: 32, offset: 544)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !891, file: !139, line: 554, baseType: !336, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !891, file: !139, line: 555, baseType: !336, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !891, file: !139, line: 558, baseType: !336, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !891, file: !139, line: 559, baseType: !336, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !891, file: !139, line: 561, baseType: !336, size: 64, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !891, file: !139, line: 562, baseType: !336, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !891, file: !139, line: 565, baseType: !7, size: 32, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !891, file: !139, line: 566, baseType: !919, size: 128, offset: 992)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !166)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !891, file: !139, line: 567, baseType: !921, size: 512, offset: 1120)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !189)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !891, file: !139, line: 568, baseType: !7, size: 32, offset: 1632)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !891, file: !139, line: 569, baseType: !7, size: 32, offset: 1664)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !891, file: !139, line: 570, baseType: !195, size: 32, offset: 1696)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !891, file: !139, line: 571, baseType: !195, size: 32, offset: 1728)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !891, file: !139, line: 572, baseType: !195, size: 32, offset: 1760)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !891, file: !139, line: 573, baseType: !195, size: 32, offset: 1792)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !891, file: !139, line: 574, baseType: !195, size: 32, offset: 1824)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !891, file: !139, line: 575, baseType: !195, size: 32, offset: 1856)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !891, file: !139, line: 576, baseType: !195, size: 32, offset: 1888)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !891, file: !139, line: 577, baseType: !195, size: 32, offset: 1920)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !891, file: !139, line: 578, baseType: !195, size: 32, offset: 1952)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !139, line: 585, baseType: !763, size: 64, offset: 1984)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !891, file: !139, line: 586, baseType: !424, size: 64, offset: 2048)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !891, file: !139, line: 587, baseType: !763, size: 64, offset: 2112)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !891, file: !139, line: 588, baseType: !937, size: 64, offset: 2176)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !891, file: !139, line: 589, baseType: !939, size: 64, offset: 2240)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 64, elements: !182)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !891, file: !139, line: 591, baseType: !942, size: 64, offset: 2304)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 192, elements: !944)
!944 = !{!889}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !891, file: !139, line: 592, baseType: !763, size: 64, offset: 2368)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !891, file: !139, line: 593, baseType: !769, size: 128, offset: 2432)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !891, file: !139, line: 594, baseType: !948, size: 128, offset: 2560)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 128, elements: !153)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !951)
!951 = !{!183, !154}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !891, file: !139, line: 595, baseType: !785, size: 128, offset: 2688)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !891, file: !139, line: 596, baseType: !954, size: 4096, offset: 2816)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 4096, elements: !955)
!955 = !{!154, !666}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !891, file: !139, line: 597, baseType: !763, size: 64, offset: 6912)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !891, file: !139, line: 598, baseType: !763, size: 64, offset: 6976)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !891, file: !139, line: 599, baseType: !600, size: 64, offset: 7040)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !891, file: !139, line: 603, baseType: !758, size: 1024, offset: 7104)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !891, file: !139, line: 606, baseType: !195, size: 32, offset: 8128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !891, file: !139, line: 607, baseType: !195, size: 32, offset: 8160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !891, file: !139, line: 608, baseType: !165, size: 32, align: 32, offset: 8192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !891, file: !139, line: 609, baseType: !195, size: 32, offset: 8224)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !891, file: !139, line: 611, baseType: !195, size: 32, offset: 8256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !891, file: !139, line: 612, baseType: !195, size: 32, offset: 8288)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !891, file: !139, line: 614, baseType: !195, size: 32, offset: 8320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !891, file: !139, line: 615, baseType: !195, size: 32, offset: 8352)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !891, file: !139, line: 621, baseType: !195, size: 32, offset: 8384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !891, file: !139, line: 624, baseType: !195, size: 32, offset: 8416)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !891, file: !139, line: 626, baseType: !195, size: 32, offset: 8448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !891, file: !139, line: 627, baseType: !195, size: 32, offset: 8480)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !891, file: !139, line: 671, baseType: !973, size: 60672, offset: 8576)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !139, line: 629, size: 60672, elements: !974)
!974 = !{!975, !979, !983, !985, !986, !989, !993, !995, !996, !997, !998, !999, !1002, !1006, !1009, !1010, !1011, !1012, !1013, !1016, !1018, !1020}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !973, file: !139, line: 634, baseType: !976, size: 3072, align: 128)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 3072, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !973, file: !139, line: 635, baseType: !980, size: 6912, align: 128, offset: 3072)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 6912, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 864)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !973, file: !139, line: 638, baseType: !984, size: 2048, align: 128, offset: 9984)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, elements: !476)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !973, file: !139, line: 639, baseType: !984, size: 2048, align: 128, offset: 12032)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !973, file: !139, line: 640, baseType: !987, size: 3072, align: 128, offset: 14080)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 3072, elements: !988)
!988 = !{!667, !218}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !973, file: !139, line: 641, baseType: !990, size: 3840, align: 128, offset: 17152)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 3840, elements: !991)
!991 = !{!992, !190}
!992 = !DISubrange(count: 15)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !973, file: !139, line: 642, baseType: !994, size: 128, offset: 20992)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !166)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !973, file: !139, line: 643, baseType: !994, size: 128, offset: 21120)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !973, file: !139, line: 644, baseType: !195, size: 32, offset: 21248)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !973, file: !139, line: 645, baseType: !195, size: 32, offset: 21280)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !973, file: !139, line: 648, baseType: !884, size: 4096, align: 128, offset: 21376)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !973, file: !139, line: 649, baseType: !1000, size: 4096, align: 128, offset: 25472)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 4096, elements: !1001)
!1001 = !{!190, !190}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !973, file: !139, line: 652, baseType: !1003, size: 576, align: 128, offset: 29568)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 576, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 9)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !973, file: !139, line: 653, baseType: !1007, size: 1024, align: 128, offset: 30208)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1024, elements: !1008)
!1008 = !{!666}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !973, file: !139, line: 656, baseType: !747, size: 192, offset: 31232)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !973, file: !139, line: 658, baseType: !747, size: 192, offset: 31424)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !973, file: !139, line: 661, baseType: !747, size: 192, offset: 31616)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !973, file: !139, line: 664, baseType: !336, size: 64, offset: 31808)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !973, file: !139, line: 665, baseType: !1014, size: 24576, offset: 31872)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 24576, elements: !1015)
!1015 = !{!154, !666, !573}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !973, file: !139, line: 666, baseType: !1017, size: 2048, offset: 56448)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !1008)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !973, file: !139, line: 667, baseType: !1019, size: 2048, offset: 58496)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 2048, elements: !638)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !973, file: !139, line: 670, baseType: !739, size: 96, offset: 60544)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !891, file: !139, line: 704, baseType: !1022, size: 6144, offset: 69248)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !139, line: 674, size: 6144, elements: !1023)
!1023 = !{!1024, !1028, !1032, !1035, !1038, !1040, !1041, !1044, !1046, !1047, !1048, !1049, !1050, !1051}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1022, file: !139, line: 677, baseType: !1025, size: 320, align: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 320, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 40)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1022, file: !139, line: 680, baseType: !1029, size: 384, align: 128, offset: 384)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 48)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1022, file: !139, line: 683, baseType: !1033, size: 640, align: 32, offset: 768)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 640, elements: !1034)
!1034 = !{!154, !1027}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1022, file: !139, line: 686, baseType: !1036, size: 2560, align: 128, offset: 1408)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 2560, elements: !1037)
!1037 = !{!154, !1027, !154}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1022, file: !139, line: 687, baseType: !1039, size: 1280, align: 64, offset: 3968)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1280, elements: !1037)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1022, file: !139, line: 690, baseType: !1025, size: 320, align: 32, offset: 5248)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !1022, file: !139, line: 692, baseType: !1042, size: 256, align: 32, offset: 5568)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !1043)
!1043 = !{!154, !167, !154}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !1022, file: !139, line: 693, baseType: !1045, size: 64, align: 32, offset: 5824)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 64, elements: !882)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !1022, file: !139, line: 694, baseType: !195, size: 32, offset: 5888)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !1022, file: !139, line: 695, baseType: !771, size: 32, align: 32, offset: 5920)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !1022, file: !139, line: 698, baseType: !195, size: 32, offset: 5952)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !1022, file: !139, line: 699, baseType: !195, size: 32, offset: 5984)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !1022, file: !139, line: 702, baseType: !195, size: 32, offset: 6016)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !1022, file: !139, line: 703, baseType: !195, size: 32, offset: 6048)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !891, file: !139, line: 707, baseType: !195, size: 32, offset: 75392)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !891, file: !139, line: 708, baseType: !195, size: 32, offset: 75424)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !891, file: !139, line: 709, baseType: !195, size: 32, offset: 75456)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !891, file: !139, line: 710, baseType: !195, size: 32, offset: 75488)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !891, file: !139, line: 711, baseType: !195, size: 32, offset: 75520)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !891, file: !139, line: 712, baseType: !195, size: 32, offset: 75552)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !891, file: !139, line: 713, baseType: !195, size: 32, offset: 75584)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !891, file: !139, line: 714, baseType: !195, size: 32, offset: 75616)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !891, file: !139, line: 717, baseType: !1061, size: 128, offset: 75648)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !1062)
!1062 = !{!154, !154}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !891, file: !139, line: 718, baseType: !195, size: 32, offset: 75776)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !891, file: !139, line: 719, baseType: !195, size: 32, offset: 75808)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !891, file: !139, line: 722, baseType: !1066, size: 4096, offset: 75840)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 4096, elements: !1067)
!1067 = !{!154, !666, !167}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !891, file: !139, line: 723, baseType: !1069, size: 64, offset: 79936)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 64, elements: !166)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !891, file: !139, line: 724, baseType: !1072, size: 2048, offset: 80000)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 2048, elements: !1067)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !891, file: !139, line: 725, baseType: !1074, size: 64, offset: 82048)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 32, elements: !166)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !891, file: !139, line: 728, baseType: !1077, size: 144, offset: 82112)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 144, elements: !796)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !891, file: !139, line: 729, baseType: !195, size: 32, offset: 82272)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !891, file: !139, line: 730, baseType: !1080, size: 272, offset: 82304)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 272, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 34)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !235, file: !139, line: 735, baseType: !1084, size: 64, offset: 213632)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !139, line: 379, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !139, line: 379, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !235, file: !139, line: 793, baseType: !1088, size: 29504, offset: 213696)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !139, line: 738, size: 29504, elements: !1089)
!1089 = !{!1090, !1117, !1121, !1123, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1135, !1137, !1138, !1141, !1143, !1145, !1146, !1147}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1088, file: !139, line: 764, baseType: !1091, size: 5632)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !139, line: 741, size: 5632, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1098, !1099, !1100, !1101, !1102, !1104, !1107, !1109, !1113, !1114, !1116}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1091, file: !139, line: 744, baseType: !195, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1091, file: !139, line: 746, baseType: !195, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1091, file: !139, line: 748, baseType: !195, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1091, file: !139, line: 750, baseType: !1097, size: 608, offset: 96)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 608, elements: !867)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1091, file: !139, line: 751, baseType: !195, size: 32, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1091, file: !139, line: 752, baseType: !195, size: 32, offset: 736)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1091, file: !139, line: 753, baseType: !195, size: 32, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1091, file: !139, line: 754, baseType: !336, size: 64, offset: 800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1091, file: !139, line: 755, baseType: !1103, size: 2048, offset: 864)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2048, elements: !955)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1091, file: !139, line: 756, baseType: !1105, size: 544, offset: 2912)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 544, elements: !1106)
!1106 = !{!776}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1091, file: !139, line: 757, baseType: !1108, size: 192, offset: 3456)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 192, elements: !572)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1091, file: !139, line: 758, baseType: !1110, size: 1664, offset: 3648)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1664, elements: !1111)
!1111 = !{!167, !1112}
!1112 = !DISubrange(count: 13)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1091, file: !139, line: 760, baseType: !336, size: 64, offset: 5312)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1091, file: !139, line: 762, baseType: !1115, size: 192, offset: 5376)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 192, elements: !740)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1091, file: !139, line: 763, baseType: !819, size: 64, offset: 5568)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1088, file: !139, line: 769, baseType: !1118, size: 160, offset: 5632)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 160, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 5)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1088, file: !139, line: 770, baseType: !1122, size: 320, offset: 5824)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 320, elements: !1119)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1088, file: !139, line: 771, baseType: !1124, size: 320, offset: 6144)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 320, elements: !1119)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1088, file: !139, line: 772, baseType: !1105, size: 544, offset: 6464)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1088, file: !139, line: 774, baseType: !1122, size: 320, offset: 7040)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1088, file: !139, line: 775, baseType: !1124, size: 320, offset: 7360)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1088, file: !139, line: 776, baseType: !1124, size: 320, offset: 7680)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1088, file: !139, line: 777, baseType: !1124, size: 320, offset: 8000)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1088, file: !139, line: 778, baseType: !1124, size: 320, offset: 8320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1088, file: !139, line: 779, baseType: !1124, size: 320, offset: 8640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1088, file: !139, line: 781, baseType: !1133, size: 6080, offset: 8960)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 6080, elements: !1134)
!1134 = !{!1120, !868}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1088, file: !139, line: 782, baseType: !1136, size: 2176, offset: 15040)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 2176, elements: !775)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1088, file: !139, line: 783, baseType: !857, size: 128, offset: 17216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1088, file: !139, line: 784, baseType: !1139, size: 8192, offset: 17344)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 8192, elements: !1140)
!1140 = !{!154, !154, !666}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1088, file: !139, line: 785, baseType: !1142, size: 384, offset: 25536)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 384, elements: !572)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1088, file: !139, line: 786, baseType: !1144, size: 3328, offset: 25920)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 3328, elements: !1111)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1088, file: !139, line: 788, baseType: !336, size: 64, offset: 29248)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1088, file: !139, line: 789, baseType: !336, size: 64, offset: 29312)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1088, file: !139, line: 791, baseType: !739, size: 96, offset: 29376)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !235, file: !139, line: 795, baseType: !1149, size: 4096, align: 128, offset: 243200)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 4096, elements: !1150)
!1150 = !{!154, !218}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !235, file: !139, line: 796, baseType: !1152, size: 2048, align: 128, offset: 247296)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !1150)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !235, file: !139, line: 797, baseType: !177, size: 64, offset: 249344)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !235, file: !139, line: 800, baseType: !296, size: 64, offset: 249408)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !235, file: !139, line: 801, baseType: !1156, size: 384, offset: 249472)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !1157)
!1157 = !{!154, !667}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !235, file: !139, line: 802, baseType: !1159, size: 128, offset: 249856)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 128, elements: !153)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !1162)
!1162 = !{!154, !167, !167}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !235, file: !139, line: 805, baseType: !1164, size: 448, offset: 249984)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 448, elements: !1169)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !27, line: 27, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !424}
!1169 = !{!1170}
!1170 = !DISubrange(count: 7)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !235, file: !139, line: 806, baseType: !1164, size: 448, offset: 250432)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !235, file: !139, line: 807, baseType: !1173, size: 768, offset: 250880)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 768, elements: !211)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !27, line: 28, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !424, !424}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !235, file: !139, line: 808, baseType: !1179, size: 768, offset: 251648)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 768, elements: !211)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !235, file: !139, line: 809, baseType: !1181, size: 64, offset: 252416)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !27, line: 29, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !424, !424, !195, !195}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !235, file: !139, line: 811, baseType: !1186, size: 8448, offset: 252480)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !37, line: 110, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 63, size: 8448, elements: !1188)
!1188 = !{!1189, !1195, !1196, !1197, !1198, !1200, !1201, !1202, !1203, !1209, !1215, !1216, !1220, !1225, !1226, !1232, !1236, !1237, !1238, !1239, !1240, !1245, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1187, file: !37, line: 65, baseType: !1190, size: 448)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 448, elements: !1169)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !37, line: 26, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!195, !424, !195, !424, !195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1187, file: !37, line: 66, baseType: !1190, size: 448, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1187, file: !37, line: 67, baseType: !1190, size: 448, offset: 896)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1187, file: !37, line: 68, baseType: !1190, size: 448, offset: 1344)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1187, file: !37, line: 69, baseType: !1199, size: 256, offset: 1792)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 256, elements: !166)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1187, file: !37, line: 70, baseType: !1190, size: 448, offset: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1187, file: !37, line: 71, baseType: !1190, size: 448, offset: 2496)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1187, file: !37, line: 72, baseType: !1190, size: 448, offset: 2944)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1187, file: !37, line: 73, baseType: !1204, size: 448, offset: 3392)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1205, size: 448, elements: !1169)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !37, line: 27, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !424, !424, !424, !424, !195, !783}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1187, file: !37, line: 74, baseType: !1210, size: 448, offset: 3840)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 448, elements: !1169)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !37, line: 28, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !424, !424, !424, !424, !424, !195, !783}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1187, file: !37, line: 75, baseType: !1190, size: 448, offset: 4288)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1187, file: !37, line: 76, baseType: !1217, size: 64, offset: 4736)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!195, !424, !195, !424, !195, !783}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1187, file: !37, line: 78, baseType: !1221, size: 256, offset: 4800)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 256, elements: !166)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!168, !424, !195}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1187, file: !37, line: 79, baseType: !1221, size: 256, offset: 5056)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1187, file: !37, line: 81, baseType: !1227, size: 64, offset: 5312)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !571, !195, !571, !195, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !166)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1187, file: !37, line: 83, baseType: !1233, size: 64, offset: 5376)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!332, !1230, !1230, !195}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1187, file: !37, line: 86, baseType: !1204, size: 448, offset: 5440)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1187, file: !37, line: 87, baseType: !1210, size: 448, offset: 5888)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1187, file: !37, line: 88, baseType: !1204, size: 448, offset: 6336)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1187, file: !37, line: 89, baseType: !1210, size: 448, offset: 6784)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1187, file: !37, line: 93, baseType: !1241, size: 448, offset: 7232)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 448, elements: !1169)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!195, !783, !600, !195, !600, !937, !195, !195}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1187, file: !37, line: 98, baseType: !1246, size: 64, offset: 7680)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !424, !424, !783}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1187, file: !37, line: 99, baseType: !1246, size: 64, offset: 7744)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1187, file: !37, line: 100, baseType: !1246, size: 64, offset: 7808)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1187, file: !37, line: 101, baseType: !1246, size: 64, offset: 7872)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1187, file: !37, line: 102, baseType: !1246, size: 64, offset: 7936)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1187, file: !37, line: 103, baseType: !1246, size: 64, offset: 8000)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1187, file: !37, line: 104, baseType: !1246, size: 64, offset: 8064)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1187, file: !37, line: 105, baseType: !1246, size: 64, offset: 8128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1187, file: !37, line: 106, baseType: !1246, size: 64, offset: 8192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1187, file: !37, line: 107, baseType: !1246, size: 64, offset: 8256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1187, file: !37, line: 108, baseType: !1246, size: 64, offset: 8320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1187, file: !37, line: 109, baseType: !1246, size: 64, offset: 8384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !235, file: !139, line: 812, baseType: !1261, size: 2368, offset: 260928)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !642, line: 111, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 58, size: 2368, elements: !1263)
!1263 = !{!1264, !1271, !1275, !1279, !1286, !1291, !1292, !1296, !1300, !1301, !1305, !1313, !1317, !1321, !1322, !1326, !1330, !1334, !1335, !1336, !1337, !1342}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1262, file: !642, line: 60, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !424, !195, !1268, !195, !195, !195, !195, !195, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1262, file: !642, line: 65, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!424, !424, !783, !1268, !195, !195, !195, !195, !195, !1269}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1262, file: !642, line: 71, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !424, !195, !424, !195, !195, !195, !195, !195}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1262, file: !642, line: 75, baseType: !1280, size: 640, offset: 192)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 640, elements: !1284)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !424, !195, !424, !195, !424, !195, !195}
!1284 = !{!1285}
!1285 = !DISubrange(count: 10)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1262, file: !642, line: 78, baseType: !1287, size: 448, offset: 832)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 448, elements: !1169)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !424, !195, !424, !195, !195}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1262, file: !642, line: 79, baseType: !1288, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1262, file: !642, line: 81, baseType: !1293, size: 64, offset: 1344)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !424, !195, !424, !195, !195, !195}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1262, file: !642, line: 84, baseType: !1297, size: 64, offset: 1408)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !424, !424, !424, !424, !195, !195, !195, !937}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1262, file: !642, line: 88, baseType: !1288, size: 64, offset: 1472)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1262, file: !642, line: 91, baseType: !1302, size: 64, offset: 1536)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !424, !195, !195}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1262, file: !642, line: 93, baseType: !1306, size: 64, offset: 1600)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!296, !296, !1309, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1312, line: 18, baseType: !170)
!1312 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1262, file: !642, line: 94, baseType: !1314, size: 64, offset: 1664)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !296, !195}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1262, file: !642, line: 97, baseType: !1318, size: 64, offset: 1728)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !600, !424, !195}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1262, file: !642, line: 98, baseType: !1318, size: 64, offset: 1792)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1262, file: !642, line: 99, baseType: !1323, size: 64, offset: 1856)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !600, !600, !195}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1262, file: !642, line: 100, baseType: !1327, size: 64, offset: 1920)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !600, !195}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1262, file: !642, line: 102, baseType: !1331, size: 64, offset: 1984)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !424, !424, !424, !424, !424, !195, !195, !195, !195}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1262, file: !642, line: 104, baseType: !658, size: 64, offset: 2048)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1262, file: !642, line: 105, baseType: !658, size: 64, offset: 2112)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1262, file: !642, line: 106, baseType: !658, size: 64, offset: 2176)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1262, file: !642, line: 107, baseType: !1338, size: 64, offset: 2240)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !232, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1262, file: !642, line: 109, baseType: !1343, size: 64, offset: 2304)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !783, !600, !600, !600, !600, !195}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !235, file: !139, line: 813, baseType: !1347, size: 960, offset: 263296)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !215, line: 115, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 89, size: 960, elements: !1349)
!1349 = !{!1350, !1354, !1358, !1363, !1364, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1380, !1384, !1388}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1348, file: !215, line: 94, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !937, !424, !424}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1348, file: !215, line: 95, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !424, !937}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1348, file: !215, line: 97, baseType: !1359, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1362, !424, !424}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1348, file: !215, line: 98, baseType: !1351, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1348, file: !215, line: 99, baseType: !1365, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !424, !1362}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1348, file: !215, line: 100, baseType: !1355, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1348, file: !215, line: 102, baseType: !1359, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1348, file: !215, line: 103, baseType: !1365, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1348, file: !215, line: 104, baseType: !1355, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1348, file: !215, line: 106, baseType: !1351, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1348, file: !215, line: 107, baseType: !1355, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1348, file: !215, line: 109, baseType: !1375, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1378, !424, !424}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 1024, elements: !217)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1348, file: !215, line: 110, baseType: !1381, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !424, !1378}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1348, file: !215, line: 112, baseType: !1385, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !937}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1348, file: !215, line: 113, baseType: !1385, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !235, file: !139, line: 814, baseType: !1390, size: 384, offset: 264256)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !215, line: 126, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 117, size: 384, elements: !1392)
!1392 = !{!1393, !1397, !1398, !1402, !1403, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1391, file: !215, line: 119, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !937, !937}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1391, file: !215, line: 120, baseType: !1394, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1391, file: !215, line: 121, baseType: !1399, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!195, !937, !571, !424}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1391, file: !215, line: 122, baseType: !1399, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1391, file: !215, line: 123, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!195, !937, !571, !424, !937}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1391, file: !215, line: 124, baseType: !1408, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !937, !937, !424}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !235, file: !139, line: 815, baseType: !1412, size: 1408, offset: 264640)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1413, line: 44, baseType: !1414)
!1413 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 26, size: 1408, elements: !1415)
!1415 = !{!1416, !1420, !1421, !1425, !1426, !1430, !1434, !1435, !1440, !1444, !1445, !1446, !1448}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1414, file: !1413, line: 28, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!195, !937, !600, !600}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1414, file: !1413, line: 29, baseType: !1417, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1414, file: !1413, line: 30, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!195, !937, !195, !195}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1414, file: !1413, line: 31, baseType: !1422, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1414, file: !1413, line: 33, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !937, !584, !195}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1414, file: !1413, line: 34, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !937, !580, !195}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1414, file: !1413, line: 35, baseType: !1431, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1414, file: !1413, line: 37, baseType: !1436, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !937, !1439, !600, !195}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1414, file: !1413, line: 39, baseType: !1441, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!195, !937}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1414, file: !1413, line: 40, baseType: !1441, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1414, file: !1413, line: 41, baseType: !1441, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1414, file: !1413, line: 42, baseType: !1447, size: 384, offset: 704)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 384, elements: !572)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1414, file: !1413, line: 43, baseType: !1449, size: 320, offset: 1088)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 320, elements: !1119)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!195, !937, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !429, line: 63, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 58, size: 416, elements: !1456)
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1455, file: !429, line: 60, baseType: !195, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1455, file: !429, line: 61, baseType: !879, size: 256, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1455, file: !429, line: 62, baseType: !285, size: 128, offset: 288)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !235, file: !139, line: 816, baseType: !1461, size: 576, offset: 266048)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !708, line: 170, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 161, size: 576, elements: !1463)
!1463 = !{!1464, !1470, !1471, !1477, !1478}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1462, file: !708, line: 163, baseType: !1465, size: 128)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 128, elements: !153)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !708, line: 159, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !424, !195, !195, !195, !763}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1462, file: !708, line: 164, baseType: !1465, size: 128, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1462, file: !708, line: 165, baseType: !1472, size: 128, offset: 256)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 128, elements: !153)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !708, line: 160, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !424, !195, !195, !195}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1462, file: !708, line: 166, baseType: !1472, size: 128, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1462, file: !708, line: 167, baseType: !1479, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !424, !1482, !1483, !1486, !195, !195}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 1280, elements: !1485)
!1485 = !{!1027, !154}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !1488)
!1488 = !{!167, !167}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !235, file: !139, line: 821, baseType: !1490, size: 64, offset: 266624)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !139, line: 377, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !139, line: 366, size: 960, elements: !1493)
!1493 = !{!1494, !1496, !1497, !1498, !1499, !1500, !1501, !1511, !1512}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1492, file: !139, line: 368, baseType: !1495, size: 8)
!1495 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1492, file: !139, line: 369, baseType: !150, size: 8, offset: 8)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1492, file: !139, line: 370, baseType: !150, size: 8, offset: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1492, file: !139, line: 371, baseType: !195, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1492, file: !139, line: 372, baseType: !195, size: 32, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1492, file: !139, line: 373, baseType: !706, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1492, file: !139, line: 374, baseType: !1502, size: 256, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !708, line: 157, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 149, size: 256, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1503, file: !708, line: 151, baseType: !705, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1503, file: !708, line: 152, baseType: !195, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1503, file: !708, line: 153, baseType: !195, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1503, file: !708, line: 154, baseType: !195, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1503, file: !708, line: 155, baseType: !195, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1503, file: !708, line: 156, baseType: !195, size: 32, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1492, file: !139, line: 375, baseType: !1502, size: 256, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1492, file: !139, line: 376, baseType: !1502, size: 256, offset: 704)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1514 = !DILocalVariable(name: "h", arg: 1, scope: !229, file: !3, line: 110, type: !232)
!1515 = !DILocalVariable(name: "idx", arg: 2, scope: !229, file: !3, line: 110, type: !195)
!1516 = !DILocalVariable(name: "i_qp", arg: 3, scope: !229, file: !3, line: 110, type: !195)
!1517 = !DILocalVariable(name: "nz", scope: !229, file: !3, line: 112, type: !195)
!1518 = !DILocalVariable(name: "p_src", scope: !229, file: !3, line: 113, type: !424)
!1519 = !DILocalVariable(name: "p_dst", scope: !229, file: !3, line: 114, type: !424)
!1520 = !DILocalVariable(name: "dct4x4", scope: !229, file: !3, line: 115, type: !879, align: 128)
!1521 = distinct !DIAssignID()
!1522 = !DILocation(line: 0, scope: !229)
!1523 = !DILocation(line: 113, column: 33, scope: !229)
!1524 = !DILocation(line: 113, column: 23, scope: !229)
!1525 = !DILocation(line: 113, column: 43, scope: !229)
!1526 = !DILocation(line: 114, column: 33, scope: !229)
!1527 = !DILocation(line: 114, column: 23, scope: !229)
!1528 = !DILocation(line: 114, column: 43, scope: !229)
!1529 = !DILocation(line: 115, column: 5, scope: !229)
!1530 = !DILocation(line: 117, column: 15, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !229, file: !3, line: 117, column: 9)
!1532 = !DILocation(line: 117, column: 9, scope: !1531)
!1533 = !DILocation(line: 117, column: 9, scope: !229)
!1534 = !DILocation(line: 119, column: 25, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 118, column: 5)
!1536 = !DILocation(line: 119, column: 41, scope: !1535)
!1537 = !DILocation(line: 119, column: 34, scope: !1535)
!1538 = !DILocation(line: 119, column: 14, scope: !1535)
!1539 = !DILocation(line: 120, column: 55, scope: !1535)
!1540 = !DILocation(line: 120, column: 21, scope: !1535)
!1541 = !DILocation(line: 120, column: 36, scope: !1535)
!1542 = !DILocation(line: 120, column: 9, scope: !1535)
!1543 = !DILocation(line: 120, column: 53, scope: !1535)
!1544 = !DILocation(line: 121, column: 37, scope: !1535)
!1545 = !DILocation(line: 121, column: 31, scope: !1535)
!1546 = !DILocation(line: 121, column: 15, scope: !1535)
!1547 = !DILocation(line: 121, column: 26, scope: !1535)
!1548 = !DILocation(line: 122, column: 9, scope: !1535)
!1549 = !DILocation(line: 125, column: 8, scope: !229)
!1550 = !DILocation(line: 125, column: 13, scope: !229)
!1551 = !DILocation(line: 125, column: 5, scope: !229)
!1552 = !DILocalVariable(name: "h", arg: 1, scope: !1553, file: !3, line: 81, type: !232)
!1553 = distinct !DISubprogram(name: "x264_quant_4x4", scope: !3, file: !3, line: 81, type: !1554, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!195, !232, !937, !195, !195, !195, !195}
!1556 = !{!1552, !1557, !1558, !1559, !1560, !1561, !1562}
!1557 = !DILocalVariable(name: "dct", arg: 2, scope: !1553, file: !3, line: 81, type: !937)
!1558 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1553, file: !3, line: 81, type: !195)
!1559 = !DILocalVariable(name: "i_ctxBlockCat", arg: 4, scope: !1553, file: !3, line: 81, type: !195)
!1560 = !DILocalVariable(name: "b_intra", arg: 5, scope: !1553, file: !3, line: 81, type: !195)
!1561 = !DILocalVariable(name: "idx", arg: 6, scope: !1553, file: !3, line: 81, type: !195)
!1562 = !DILocalVariable(name: "i_quant_cat", scope: !1553, file: !3, line: 83, type: !195)
!1563 = !DILocation(line: 0, scope: !1553, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 127, column: 10, scope: !229)
!1565 = !DILocation(line: 84, column: 15, scope: !1566, inlinedAt: !1564)
!1566 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 84, column: 9)
!1567 = !DILocation(line: 84, column: 9, scope: !1566, inlinedAt: !1564)
!1568 = !DILocation(line: 84, column: 9, scope: !1553, inlinedAt: !1564)
!1569 = !DILocation(line: 85, column: 16, scope: !1566, inlinedAt: !1564)
!1570 = !DILocation(line: 85, column: 9, scope: !1566, inlinedAt: !1564)
!1571 = !DILocation(line: 87, column: 26, scope: !1566, inlinedAt: !1564)
!1572 = !DILocation(line: 87, column: 45, scope: !1566, inlinedAt: !1564)
!1573 = !DILocation(line: 87, column: 42, scope: !1566, inlinedAt: !1564)
!1574 = !DILocation(line: 87, column: 78, scope: !1566, inlinedAt: !1564)
!1575 = !DILocation(line: 87, column: 75, scope: !1566, inlinedAt: !1564)
!1576 = !DILocation(line: 87, column: 16, scope: !1566, inlinedAt: !1564)
!1577 = !DILocation(line: 87, column: 9, scope: !1566, inlinedAt: !1564)
!1578 = !DILocation(line: 0, scope: !1566, inlinedAt: !1564)
!1579 = !DILocation(line: 128, column: 51, scope: !229)
!1580 = !DILocation(line: 128, column: 17, scope: !229)
!1581 = !DILocation(line: 128, column: 32, scope: !229)
!1582 = !DILocation(line: 128, column: 5, scope: !229)
!1583 = !DILocation(line: 128, column: 49, scope: !229)
!1584 = !DILocation(line: 129, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !229, file: !3, line: 129, column: 9)
!1586 = !DILocation(line: 129, column: 9, scope: !229)
!1587 = !DILocation(line: 131, column: 36, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 130, column: 5)
!1589 = !DILocation(line: 131, column: 30, scope: !1588)
!1590 = !DILocation(line: 131, column: 15, scope: !1588)
!1591 = !DILocation(line: 131, column: 26, scope: !1588)
!1592 = !DILocation(line: 132, column: 20, scope: !1588)
!1593 = !DILocation(line: 132, column: 37, scope: !1588)
!1594 = !DILocation(line: 132, column: 30, scope: !1588)
!1595 = !DILocation(line: 132, column: 9, scope: !1588)
!1596 = !DILocation(line: 133, column: 19, scope: !1588)
!1597 = !DILocation(line: 133, column: 43, scope: !1588)
!1598 = !DILocation(line: 133, column: 40, scope: !1588)
!1599 = !DILocation(line: 133, column: 9, scope: !1588)
!1600 = !DILocation(line: 134, column: 17, scope: !1588)
!1601 = !DILocation(line: 134, column: 9, scope: !1588)
!1602 = !DILocation(line: 135, column: 5, scope: !1588)
!1603 = !DILocation(line: 136, column: 1, scope: !229)
!1604 = distinct !DISubprogram(name: "x264_mb_encode_i8x8", scope: !3, file: !3, line: 152, type: !230, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614}
!1606 = !DILocalVariable(name: "h", arg: 1, scope: !1604, file: !3, line: 152, type: !232)
!1607 = !DILocalVariable(name: "idx", arg: 2, scope: !1604, file: !3, line: 152, type: !195)
!1608 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1604, file: !3, line: 152, type: !195)
!1609 = !DILocalVariable(name: "x", scope: !1604, file: !3, line: 154, type: !195)
!1610 = !DILocalVariable(name: "y", scope: !1604, file: !3, line: 155, type: !195)
!1611 = !DILocalVariable(name: "nz", scope: !1604, file: !3, line: 156, type: !195)
!1612 = !DILocalVariable(name: "p_src", scope: !1604, file: !3, line: 157, type: !424)
!1613 = !DILocalVariable(name: "p_dst", scope: !1604, file: !3, line: 158, type: !424)
!1614 = !DILocalVariable(name: "dct8x8", scope: !1604, file: !3, line: 159, type: !1379, align: 128)
!1615 = distinct !DIAssignID()
!1616 = !DILocation(line: 0, scope: !1604)
!1617 = !DILocation(line: 154, column: 15, scope: !1604)
!1618 = !DILocation(line: 155, column: 15, scope: !1604)
!1619 = !DILocation(line: 157, column: 33, scope: !1604)
!1620 = !DILocation(line: 157, column: 23, scope: !1604)
!1621 = !DILocation(line: 157, column: 46, scope: !1604)
!1622 = !DILocation(line: 157, column: 44, scope: !1604)
!1623 = !DILocation(line: 158, column: 33, scope: !1604)
!1624 = !DILocation(line: 158, column: 23, scope: !1604)
!1625 = !DILocation(line: 158, column: 46, scope: !1604)
!1626 = !DILocation(line: 158, column: 44, scope: !1604)
!1627 = !DILocation(line: 159, column: 5, scope: !1604)
!1628 = !DILocation(line: 161, column: 15, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 161, column: 9)
!1630 = !DILocation(line: 161, column: 9, scope: !1629)
!1631 = !DILocation(line: 161, column: 9, scope: !1604)
!1632 = !DILocation(line: 163, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 162, column: 5)
!1634 = !DILocation(line: 163, column: 41, scope: !1633)
!1635 = !DILocation(line: 163, column: 34, scope: !1633)
!1636 = !DILocation(line: 163, column: 14, scope: !1633)
!1637 = !DILocation(line: 164, column: 9, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 164, column: 9)
!1639 = !DILocation(line: 165, column: 31, scope: !1633)
!1640 = !DILocation(line: 165, column: 15, scope: !1633)
!1641 = !DILocation(line: 165, column: 26, scope: !1633)
!1642 = !DILocation(line: 166, column: 9, scope: !1633)
!1643 = !DILocation(line: 169, column: 13, scope: !1604)
!1644 = !DILocation(line: 169, column: 5, scope: !1604)
!1645 = !DILocalVariable(name: "h", arg: 1, scope: !1646, file: !3, line: 90, type: !232)
!1646 = distinct !DISubprogram(name: "x264_quant_8x8", scope: !3, file: !3, line: 90, type: !1647, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!195, !232, !937, !195, !195, !195}
!1649 = !{!1645, !1650, !1651, !1652, !1653, !1654}
!1650 = !DILocalVariable(name: "dct", arg: 2, scope: !1646, file: !3, line: 90, type: !937)
!1651 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1646, file: !3, line: 90, type: !195)
!1652 = !DILocalVariable(name: "b_intra", arg: 4, scope: !1646, file: !3, line: 90, type: !195)
!1653 = !DILocalVariable(name: "idx", arg: 5, scope: !1646, file: !3, line: 90, type: !195)
!1654 = !DILocalVariable(name: "i_quant_cat", scope: !1646, file: !3, line: 92, type: !195)
!1655 = !DILocation(line: 0, scope: !1646, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 171, column: 10, scope: !1604)
!1657 = !DILocation(line: 93, column: 15, scope: !1658, inlinedAt: !1656)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 93, column: 9)
!1659 = !DILocation(line: 93, column: 9, scope: !1658, inlinedAt: !1656)
!1660 = !DILocation(line: 93, column: 9, scope: !1646, inlinedAt: !1656)
!1661 = !DILocation(line: 94, column: 16, scope: !1658, inlinedAt: !1656)
!1662 = !DILocation(line: 94, column: 9, scope: !1658, inlinedAt: !1656)
!1663 = !DILocation(line: 96, column: 19, scope: !1658, inlinedAt: !1656)
!1664 = !DILocation(line: 96, column: 26, scope: !1658, inlinedAt: !1656)
!1665 = !DILocation(line: 96, column: 45, scope: !1658, inlinedAt: !1656)
!1666 = !DILocation(line: 96, column: 42, scope: !1658, inlinedAt: !1656)
!1667 = !DILocation(line: 96, column: 78, scope: !1658, inlinedAt: !1656)
!1668 = !DILocation(line: 96, column: 75, scope: !1658, inlinedAt: !1656)
!1669 = !DILocation(line: 96, column: 16, scope: !1658, inlinedAt: !1656)
!1670 = !DILocation(line: 96, column: 9, scope: !1658, inlinedAt: !1656)
!1671 = !DILocation(line: 0, scope: !1658, inlinedAt: !1656)
!1672 = !DILocation(line: 172, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 172, column: 9)
!1674 = !DILocation(line: 172, column: 9, scope: !1604)
!1675 = !DILocation(line: 174, column: 30, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 173, column: 5)
!1677 = !DILocation(line: 174, column: 15, scope: !1676)
!1678 = !DILocation(line: 174, column: 26, scope: !1676)
!1679 = !DILocation(line: 175, column: 12, scope: !1676)
!1680 = !DILocation(line: 175, column: 20, scope: !1676)
!1681 = !DILocation(line: 175, column: 37, scope: !1676)
!1682 = !DILocation(line: 175, column: 30, scope: !1676)
!1683 = !DILocation(line: 175, column: 9, scope: !1676)
!1684 = !DILocation(line: 176, column: 19, scope: !1676)
!1685 = !DILocation(line: 176, column: 43, scope: !1676)
!1686 = !DILocation(line: 176, column: 40, scope: !1676)
!1687 = !DILocation(line: 176, column: 9, scope: !1676)
!1688 = !DILocation(line: 177, column: 17, scope: !1676)
!1689 = !DILocation(line: 177, column: 9, scope: !1676)
!1690 = !DILocation(line: 178, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 178, column: 9)
!1692 = !DILocation(line: 179, column: 5, scope: !1676)
!1693 = !DILocation(line: 181, column: 9, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 181, column: 9)
!1695 = !DILocation(line: 182, column: 1, scope: !1604)
!1696 = distinct !DISubprogram(name: "x264_mb_encode_8x8_chroma", scope: !3, file: !3, line: 320, type: !230, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1708, !1709, !1710, !1714, !1716, !1719, !1720, !1721, !1722, !1725, !1729, !1732, !1733}
!1698 = !DILocalVariable(name: "h", arg: 1, scope: !1696, file: !3, line: 320, type: !232)
!1699 = !DILocalVariable(name: "b_inter", arg: 2, scope: !1696, file: !3, line: 320, type: !195)
!1700 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1696, file: !3, line: 320, type: !195)
!1701 = !DILocalVariable(name: "nz", scope: !1696, file: !3, line: 322, type: !195)
!1702 = !DILocalVariable(name: "nz_dc", scope: !1696, file: !3, line: 322, type: !195)
!1703 = !DILocalVariable(name: "b_decimate", scope: !1696, file: !3, line: 323, type: !195)
!1704 = !DILocalVariable(name: "dct2x2", scope: !1696, file: !3, line: 324, type: !1070, align: 128)
!1705 = !DILocalVariable(name: "thresh", scope: !1706, file: !3, line: 332, type: !195)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 331, column: 5)
!1707 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 330, column: 9)
!1708 = !DILocalVariable(name: "ssd", scope: !1706, file: !3, line: 333, type: !336)
!1709 = !DILocalVariable(name: "score", scope: !1706, file: !3, line: 334, type: !195)
!1710 = !DILocalVariable(name: "ch", scope: !1711, file: !3, line: 349, type: !195)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 349, column: 13)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 338, column: 9)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 337, column: 13)
!1714 = !DILocalVariable(name: "ch", scope: !1715, file: !3, line: 375, type: !195)
!1715 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 375, column: 5)
!1716 = !DILocalVariable(name: "p_src", scope: !1717, file: !3, line: 377, type: !424)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 376, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 375, column: 5)
!1719 = !DILocalVariable(name: "p_dst", scope: !1717, file: !3, line: 378, type: !424)
!1720 = !DILocalVariable(name: "i_decimate_score", scope: !1717, file: !3, line: 379, type: !195)
!1721 = !DILocalVariable(name: "nz_ac", scope: !1717, file: !3, line: 380, type: !195)
!1722 = !DILocalVariable(name: "dct4x4", scope: !1717, file: !3, line: 382, type: !1723, align: 128)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 1024, elements: !1724)
!1724 = !{!167, !190}
!1725 = !DILocalVariable(name: "i", scope: !1726, file: !3, line: 386, type: !195)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 386, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 385, column: 9)
!1728 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 384, column: 13)
!1729 = !DILocalVariable(name: "oe", scope: !1730, file: !3, line: 388, type: !195)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 387, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 386, column: 13)
!1732 = !DILocalVariable(name: "od", scope: !1730, file: !3, line: 389, type: !195)
!1733 = !DILocalVariable(name: "i", scope: !1734, file: !3, line: 401, type: !195)
!1734 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 401, column: 9)
!1735 = distinct !DIAssignID()
!1736 = !DILocation(line: 0, scope: !1696)
!1737 = distinct !DIAssignID()
!1738 = !DILocation(line: 0, scope: !1706)
!1739 = distinct !DIAssignID()
!1740 = !DILocation(line: 0, scope: !1717)
!1741 = !DILocation(line: 323, column: 22, scope: !1696)
!1742 = !DILocation(line: 323, column: 30, scope: !1696)
!1743 = !DILocation(line: 324, column: 5, scope: !1696)
!1744 = !DILocation(line: 325, column: 11, scope: !1696)
!1745 = !DILocation(line: 325, column: 24, scope: !1696)
!1746 = !DILocation(line: 330, column: 20, scope: !1707)
!1747 = !DILocation(line: 323, column: 39, scope: !1696)
!1748 = !DILocation(line: 330, column: 38, scope: !1707)
!1749 = !DILocation(line: 330, column: 32, scope: !1707)
!1750 = !DILocation(line: 330, column: 28, scope: !1707)
!1751 = !DILocation(line: 330, column: 9, scope: !1696)
!1752 = !DILocation(line: 332, column: 23, scope: !1706)
!1753 = !DILocation(line: 332, column: 46, scope: !1706)
!1754 = !DILocation(line: 332, column: 52, scope: !1706)
!1755 = !DILocation(line: 333, column: 9, scope: !1706)
!1756 = !DILocation(line: 334, column: 29, scope: !1706)
!1757 = !DILocation(line: 334, column: 39, scope: !1706)
!1758 = !DILocation(line: 334, column: 73, scope: !1706)
!1759 = !DILocation(line: 334, column: 21, scope: !1706)
!1760 = !DILocation(line: 335, column: 27, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 335, column: 13)
!1762 = !DILocation(line: 335, column: 19, scope: !1761)
!1763 = !DILocation(line: 335, column: 13, scope: !1706)
!1764 = !DILocation(line: 336, column: 30, scope: !1761)
!1765 = !DILocation(line: 336, column: 40, scope: !1761)
!1766 = !DILocation(line: 336, column: 74, scope: !1761)
!1767 = !DILocation(line: 336, column: 109, scope: !1761)
!1768 = !DILocation(line: 336, column: 22, scope: !1761)
!1769 = !DILocation(line: 336, column: 19, scope: !1761)
!1770 = !DILocation(line: 336, column: 13, scope: !1761)
!1771 = !DILocation(line: 337, column: 19, scope: !1713)
!1772 = !DILocation(line: 337, column: 13, scope: !1706)
!1773 = !DILocation(line: 339, column: 13, scope: !1712)
!1774 = !DILocation(line: 339, column: 56, scope: !1712)
!1775 = !DILocation(line: 340, column: 13, scope: !1712)
!1776 = !DILocation(line: 340, column: 56, scope: !1712)
!1777 = !DILocation(line: 341, column: 13, scope: !1712)
!1778 = !DILocation(line: 341, column: 56, scope: !1712)
!1779 = !DILocation(line: 342, column: 13, scope: !1712)
!1780 = !DILocation(line: 342, column: 56, scope: !1712)
!1781 = !DILocation(line: 343, column: 13, scope: !1712)
!1782 = !DILocation(line: 343, column: 56, scope: !1712)
!1783 = !DILocation(line: 344, column: 13, scope: !1712)
!1784 = !DILocation(line: 344, column: 56, scope: !1712)
!1785 = !DILocation(line: 345, column: 13, scope: !1712)
!1786 = !DILocation(line: 345, column: 56, scope: !1712)
!1787 = !DILocation(line: 346, column: 13, scope: !1712)
!1788 = !DILocation(line: 346, column: 56, scope: !1712)
!1789 = !DILocation(line: 347, column: 13, scope: !1712)
!1790 = !DILocation(line: 347, column: 64, scope: !1712)
!1791 = !DILocation(line: 0, scope: !1711)
!1792 = !DILocation(line: 351, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 351, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 350, column: 13)
!1795 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 349, column: 13)
!1796 = !DILocation(line: 351, column: 29, scope: !1793)
!1797 = !DILocation(line: 351, column: 21, scope: !1794)
!1798 = !DILocation(line: 353, column: 29, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 352, column: 17)
!1800 = !DILocation(line: 353, column: 52, scope: !1799)
!1801 = !DILocation(line: 353, column: 76, scope: !1799)
!1802 = !DILocation(line: 353, column: 21, scope: !1799)
!1803 = !DILocation(line: 354, column: 31, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 354, column: 25)
!1805 = !DILocation(line: 354, column: 25, scope: !1804)
!1806 = !DILocation(line: 354, column: 25, scope: !1799)
!1807 = !DILocation(line: 355, column: 33, scope: !1804)
!1808 = !DILocation(line: 355, column: 25, scope: !1804)
!1809 = !DILocation(line: 357, column: 43, scope: !1804)
!1810 = !DILocation(line: 357, column: 65, scope: !1804)
!1811 = !DILocation(line: 357, column: 103, scope: !1804)
!1812 = !DILocation(line: 357, column: 108, scope: !1804)
!1813 = !DILocation(line: 357, column: 148, scope: !1804)
!1814 = !DILocation(line: 357, column: 33, scope: !1804)
!1815 = !DILocation(line: 0, scope: !1804)
!1816 = !DILocation(line: 359, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 359, column: 25)
!1818 = !DILocation(line: 359, column: 25, scope: !1799)
!1819 = !DILocation(line: 361, column: 30, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 361, column: 29)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 360, column: 21)
!1822 = !DILocation(line: 361, column: 29, scope: !1821)
!1823 = !DILocation(line: 363, column: 25, scope: !1821)
!1824 = !DILocation(line: 363, column: 71, scope: !1821)
!1825 = !DILocalVariable(name: "level", arg: 1, scope: !1826, file: !3, line: 31, type: !937)
!1826 = distinct !DISubprogram(name: "zigzag_scan_2x2_dc", scope: !3, file: !3, line: 31, type: !1395, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1825, !1828}
!1828 = !DILocalVariable(name: "dct", arg: 2, scope: !1826, file: !3, line: 31, type: !937)
!1829 = !DILocation(line: 0, scope: !1826, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 364, column: 25, scope: !1821)
!1831 = !DILocation(line: 33, column: 5, scope: !1826, inlinedAt: !1830)
!1832 = !DILocation(line: 365, column: 66, scope: !1821)
!1833 = !DILocalVariable(name: "out", arg: 1, scope: !1834, file: !3, line: 56, type: !937)
!1834 = distinct !DISubprogram(name: "idct_dequant_2x2_dconly", scope: !3, file: !3, line: 56, type: !1835, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !937, !937, !580, !195}
!1837 = !{!1833, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845}
!1838 = !DILocalVariable(name: "dct", arg: 2, scope: !1834, file: !3, line: 56, type: !937)
!1839 = !DILocalVariable(name: "dequant_mf", arg: 3, scope: !1834, file: !3, line: 56, type: !580)
!1840 = !DILocalVariable(name: "i_qp", arg: 4, scope: !1834, file: !3, line: 56, type: !195)
!1841 = !DILocalVariable(name: "d0", scope: !1834, file: !3, line: 58, type: !195)
!1842 = !DILocalVariable(name: "d1", scope: !1834, file: !3, line: 58, type: !195)
!1843 = !DILocalVariable(name: "d2", scope: !1834, file: !3, line: 58, type: !195)
!1844 = !DILocalVariable(name: "d3", scope: !1834, file: !3, line: 58, type: !195)
!1845 = !DILocalVariable(name: "dmf", scope: !1834, file: !3, line: 58, type: !195)
!1846 = !DILocation(line: 0, scope: !1834, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 365, column: 25, scope: !1821)
!1848 = !DILocation(line: 58, column: 5, scope: !1834, inlinedAt: !1847)
!1849 = distinct !DIAssignID()
!1850 = !DILocation(line: 59, column: 18, scope: !1834, inlinedAt: !1847)
!1851 = !DILocation(line: 59, column: 24, scope: !1834, inlinedAt: !1847)
!1852 = !DILocation(line: 59, column: 30, scope: !1834, inlinedAt: !1847)
!1853 = !DILocation(line: 59, column: 14, scope: !1834, inlinedAt: !1847)
!1854 = !DILocation(line: 59, column: 12, scope: !1834, inlinedAt: !1847)
!1855 = !DILocation(line: 366, column: 33, scope: !1821)
!1856 = !DILocation(line: 366, column: 49, scope: !1821)
!1857 = !DILocation(line: 366, column: 25, scope: !1821)
!1858 = !DILocation(line: 367, column: 44, scope: !1821)
!1859 = !DILocation(line: 368, column: 21, scope: !1821)
!1860 = !DILocation(line: 364, column: 45, scope: !1821)
!1861 = !DILocation(line: 373, column: 5, scope: !1707)
!1862 = !DILocation(line: 0, scope: !1715)
!1863 = !DILocation(line: 375, column: 5, scope: !1715)
!1864 = !DILocation(line: 457, column: 30, scope: !1696)
!1865 = !DILocation(line: 457, column: 29, scope: !1696)
!1866 = !DILocation(line: 457, column: 28, scope: !1696)
!1867 = !DILocation(line: 457, column: 90, scope: !1696)
!1868 = !DILocation(line: 457, column: 82, scope: !1696)
!1869 = !DILocation(line: 457, column: 104, scope: !1696)
!1870 = !DILocation(line: 457, column: 24, scope: !1696)
!1871 = !DILocation(line: 458, column: 1, scope: !1696)
!1872 = !DILocation(line: 377, column: 45, scope: !1717)
!1873 = !DILocation(line: 377, column: 27, scope: !1717)
!1874 = !DILocation(line: 378, column: 27, scope: !1717)
!1875 = !DILocation(line: 382, column: 9, scope: !1717)
!1876 = !DILocation(line: 384, column: 19, scope: !1728)
!1877 = !DILocation(line: 384, column: 13, scope: !1728)
!1878 = !DILocation(line: 384, column: 13, scope: !1717)
!1879 = !DILocation(line: 0, scope: !1726)
!1880 = !DILocation(line: 0, scope: !1730)
!1881 = !DILocation(line: 390, column: 33, scope: !1730)
!1882 = !DILocation(line: 390, column: 63, scope: !1730)
!1883 = !DILocation(line: 390, column: 44, scope: !1730)
!1884 = !DILocation(line: 390, column: 92, scope: !1730)
!1885 = !DILocation(line: 390, column: 22, scope: !1730)
!1886 = !DILocation(line: 391, column: 69, scope: !1730)
!1887 = !DILocation(line: 391, column: 44, scope: !1730)
!1888 = !DILocation(line: 391, column: 17, scope: !1730)
!1889 = !DILocation(line: 391, column: 67, scope: !1730)
!1890 = !DILocation(line: 392, column: 36, scope: !1730)
!1891 = !DILocation(line: 390, column: 76, scope: !1730)
!1892 = !DILocation(line: 390, column: 86, scope: !1730)
!1893 = !DILocalVariable(name: "v", arg: 1, scope: !1894, file: !6, line: 351, type: !937)
!1894 = distinct !DISubprogram(name: "array_non_zero_int", scope: !6, file: !6, line: 351, type: !1895, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!195, !937, !195}
!1897 = !{!1893, !1898, !1899}
!1898 = !DILocalVariable(name: "i_count", arg: 2, scope: !1894, file: !6, line: 351, type: !195)
!1899 = !DILocalVariable(name: "i", scope: !1900, file: !6, line: 361, type: !195)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !6, line: 361, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !6, line: 360, column: 5)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 357, column: 13)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !6, line: 355, column: 13)
!1904 = distinct !DILexicalBlock(scope: !1894, file: !6, line: 353, column: 8)
!1905 = !DILocation(line: 0, scope: !1894, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 394, column: 61, scope: !1727)
!1907 = !DILocation(line: 354, column: 18, scope: !1904, inlinedAt: !1906)
!1908 = !DILocation(line: 354, column: 17, scope: !1904, inlinedAt: !1906)
!1909 = !DILocation(line: 394, column: 61, scope: !1727)
!1910 = !DILocation(line: 394, column: 54, scope: !1727)
!1911 = !DILocation(line: 394, column: 13, scope: !1727)
!1912 = !DILocation(line: 394, column: 59, scope: !1727)
!1913 = !DILocation(line: 395, column: 13, scope: !1727)
!1914 = !DILocation(line: 398, column: 17, scope: !1717)
!1915 = !DILocation(line: 398, column: 9, scope: !1717)
!1916 = !DILocalVariable(name: "d", arg: 1, scope: !1917, file: !3, line: 65, type: !937)
!1917 = distinct !DISubprogram(name: "dct2x2dc", scope: !3, file: !3, line: 65, type: !1918, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !937, !1362}
!1920 = !{!1916, !1921, !1922, !1923, !1924, !1925}
!1921 = !DILocalVariable(name: "dct4x4", arg: 2, scope: !1917, file: !3, line: 65, type: !1362)
!1922 = !DILocalVariable(name: "d0", scope: !1917, file: !3, line: 67, type: !195)
!1923 = !DILocalVariable(name: "d1", scope: !1917, file: !3, line: 68, type: !195)
!1924 = !DILocalVariable(name: "d2", scope: !1917, file: !3, line: 69, type: !195)
!1925 = !DILocalVariable(name: "d3", scope: !1917, file: !3, line: 70, type: !195)
!1926 = !DILocation(line: 0, scope: !1917, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 399, column: 9, scope: !1717)
!1928 = !DILocation(line: 67, column: 14, scope: !1917, inlinedAt: !1927)
!1929 = !DILocation(line: 67, column: 29, scope: !1917, inlinedAt: !1927)
!1930 = !DILocation(line: 67, column: 27, scope: !1917, inlinedAt: !1927)
!1931 = !DILocation(line: 68, column: 14, scope: !1917, inlinedAt: !1927)
!1932 = !DILocation(line: 68, column: 29, scope: !1917, inlinedAt: !1927)
!1933 = !DILocation(line: 68, column: 27, scope: !1917, inlinedAt: !1927)
!1934 = !DILocation(line: 69, column: 27, scope: !1917, inlinedAt: !1927)
!1935 = !DILocation(line: 70, column: 27, scope: !1917, inlinedAt: !1927)
!1936 = !DILocation(line: 71, column: 15, scope: !1917, inlinedAt: !1927)
!1937 = !DILocation(line: 71, column: 12, scope: !1917, inlinedAt: !1927)
!1938 = !DILocation(line: 71, column: 10, scope: !1917, inlinedAt: !1927)
!1939 = distinct !DIAssignID()
!1940 = !DILocation(line: 72, column: 15, scope: !1917, inlinedAt: !1927)
!1941 = !DILocation(line: 72, column: 12, scope: !1917, inlinedAt: !1927)
!1942 = !DILocation(line: 72, column: 10, scope: !1917, inlinedAt: !1927)
!1943 = distinct !DIAssignID()
!1944 = !DILocation(line: 73, column: 15, scope: !1917, inlinedAt: !1927)
!1945 = !DILocation(line: 73, column: 12, scope: !1917, inlinedAt: !1927)
!1946 = !DILocation(line: 73, column: 10, scope: !1917, inlinedAt: !1927)
!1947 = distinct !DIAssignID()
!1948 = !DILocation(line: 74, column: 15, scope: !1917, inlinedAt: !1927)
!1949 = !DILocation(line: 74, column: 12, scope: !1917, inlinedAt: !1927)
!1950 = !DILocation(line: 74, column: 10, scope: !1917, inlinedAt: !1927)
!1951 = distinct !DIAssignID()
!1952 = !DILocation(line: 75, column: 18, scope: !1917, inlinedAt: !1927)
!1953 = distinct !DIAssignID()
!1954 = !DILocation(line: 76, column: 18, scope: !1917, inlinedAt: !1927)
!1955 = distinct !DIAssignID()
!1956 = !DILocation(line: 77, column: 18, scope: !1917, inlinedAt: !1927)
!1957 = distinct !DIAssignID()
!1958 = !DILocation(line: 78, column: 18, scope: !1917, inlinedAt: !1927)
!1959 = distinct !DIAssignID()
!1960 = !DILocation(line: 0, scope: !1734)
!1961 = !DILocation(line: 403, column: 23, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 403, column: 17)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 402, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 401, column: 9)
!1965 = !DILocation(line: 403, column: 17, scope: !1962)
!1966 = !DILocation(line: 403, column: 17, scope: !1963)
!1967 = !DILocation(line: 404, column: 22, scope: !1962)
!1968 = !DILocation(line: 404, column: 17, scope: !1962)
!1969 = !DILocation(line: 406, column: 32, scope: !1962)
!1970 = !DILocation(line: 406, column: 54, scope: !1962)
!1971 = !DILocation(line: 406, column: 91, scope: !1962)
!1972 = !DILocation(line: 406, column: 22, scope: !1962)
!1973 = !DILocation(line: 0, scope: !1962)
!1974 = !DILocation(line: 407, column: 65, scope: !1963)
!1975 = !DILocation(line: 407, column: 55, scope: !1963)
!1976 = !DILocation(line: 407, column: 40, scope: !1963)
!1977 = !DILocation(line: 407, column: 13, scope: !1963)
!1978 = !DILocation(line: 407, column: 63, scope: !1963)
!1979 = !DILocation(line: 408, column: 17, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 408, column: 17)
!1981 = !DILocation(line: 408, column: 17, scope: !1963)
!1982 = !DILocation(line: 411, column: 28, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 409, column: 13)
!1984 = !DILocation(line: 411, column: 38, scope: !1983)
!1985 = !DILocation(line: 411, column: 17, scope: !1983)
!1986 = !DILocation(line: 412, column: 27, scope: !1983)
!1987 = !DILocation(line: 412, column: 51, scope: !1983)
!1988 = !DILocation(line: 412, column: 17, scope: !1983)
!1989 = !DILocation(line: 413, column: 21, scope: !1983)
!1990 = !DILocation(line: 414, column: 51, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 413, column: 21)
!1992 = !DILocation(line: 414, column: 41, scope: !1991)
!1993 = !DILocation(line: 414, column: 21, scope: !1991)
!1994 = !DILocation(line: 414, column: 38, scope: !1991)
!1995 = !DILocation(line: 418, column: 19, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 418, column: 13)
!1997 = !DILocation(line: 418, column: 13, scope: !1996)
!1998 = !DILocation(line: 418, column: 13, scope: !1717)
!1999 = !DILocation(line: 419, column: 21, scope: !1996)
!2000 = !DILocation(line: 419, column: 13, scope: !1996)
!2001 = !DILocation(line: 421, column: 31, scope: !1996)
!2002 = !DILocation(line: 421, column: 53, scope: !1996)
!2003 = !DILocation(line: 421, column: 91, scope: !1996)
!2004 = !DILocation(line: 421, column: 96, scope: !1996)
!2005 = !DILocation(line: 421, column: 136, scope: !1996)
!2006 = !DILocation(line: 421, column: 21, scope: !1996)
!2007 = !DILocation(line: 0, scope: !1996)
!2008 = !DILocation(line: 423, column: 57, scope: !1717)
!2009 = !DILocation(line: 423, column: 50, scope: !1717)
!2010 = !DILocation(line: 423, column: 9, scope: !1717)
!2011 = !DILocation(line: 423, column: 55, scope: !1717)
!2012 = !DILocation(line: 425, column: 25, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 425, column: 13)
!2014 = !DILocation(line: 428, column: 59, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 426, column: 9)
!2016 = !DILocation(line: 428, column: 56, scope: !2015)
!2017 = !DILocation(line: 428, column: 13, scope: !2015)
!2018 = !DILocation(line: 428, column: 64, scope: !2015)
!2019 = !DILocation(line: 429, column: 56, scope: !2015)
!2020 = !DILocation(line: 429, column: 13, scope: !2015)
!2021 = !DILocation(line: 429, column: 64, scope: !2015)
!2022 = !DILocation(line: 430, column: 56, scope: !2015)
!2023 = !DILocation(line: 430, column: 13, scope: !2015)
!2024 = !DILocation(line: 430, column: 64, scope: !2015)
!2025 = !DILocation(line: 431, column: 56, scope: !2015)
!2026 = !DILocation(line: 431, column: 13, scope: !2015)
!2027 = !DILocation(line: 431, column: 64, scope: !2015)
!2028 = !DILocation(line: 432, column: 18, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 432, column: 17)
!2030 = !DILocation(line: 432, column: 17, scope: !2015)
!2031 = !DILocation(line: 434, column: 18, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 434, column: 17)
!2033 = !DILocation(line: 434, column: 17, scope: !2015)
!2034 = !DILocation(line: 436, column: 63, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 435, column: 13)
!2036 = !DILocation(line: 437, column: 17, scope: !2035)
!2037 = !DILocation(line: 440, column: 33, scope: !2015)
!2038 = !DILocation(line: 0, scope: !1826, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 440, column: 13, scope: !2015)
!2040 = !DILocation(line: 33, column: 5, scope: !1826, inlinedAt: !2039)
!2041 = !DILocation(line: 441, column: 54, scope: !2015)
!2042 = !DILocation(line: 0, scope: !1834, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 441, column: 13, scope: !2015)
!2044 = !DILocation(line: 58, column: 5, scope: !1834, inlinedAt: !2043)
!2045 = distinct !DIAssignID()
!2046 = !DILocation(line: 59, column: 18, scope: !1834, inlinedAt: !2043)
!2047 = !DILocation(line: 59, column: 24, scope: !1834, inlinedAt: !2043)
!2048 = !DILocation(line: 59, column: 30, scope: !1834, inlinedAt: !2043)
!2049 = !DILocation(line: 59, column: 14, scope: !1834, inlinedAt: !2043)
!2050 = !DILocation(line: 59, column: 12, scope: !1834, inlinedAt: !2043)
!2051 = !DILocation(line: 442, column: 21, scope: !2015)
!2052 = !DILocation(line: 442, column: 13, scope: !2015)
!2053 = !DILocation(line: 443, column: 9, scope: !2015)
!2054 = !DILocation(line: 446, column: 32, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 445, column: 9)
!2056 = !DILocation(line: 447, column: 17, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 447, column: 17)
!2058 = !DILocation(line: 447, column: 17, scope: !2055)
!2059 = !DILocation(line: 449, column: 37, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 448, column: 13)
!2061 = !DILocation(line: 0, scope: !1826, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 449, column: 17, scope: !2060)
!2063 = !DILocation(line: 33, column: 5, scope: !1826, inlinedAt: !2062)
!2064 = !DILocation(line: 450, column: 54, scope: !2060)
!2065 = !DILocalVariable(name: "dct", arg: 1, scope: !2066, file: !3, line: 47, type: !937)
!2066 = distinct !DISubprogram(name: "idct_dequant_2x2_dc", scope: !3, file: !3, line: 47, type: !2067, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !937, !1362, !580, !195}
!2069 = !{!2065, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2070 = !DILocalVariable(name: "dct4x4", arg: 2, scope: !2066, file: !3, line: 47, type: !1362)
!2071 = !DILocalVariable(name: "dequant_mf", arg: 3, scope: !2066, file: !3, line: 47, type: !580)
!2072 = !DILocalVariable(name: "i_qp", arg: 4, scope: !2066, file: !3, line: 47, type: !195)
!2073 = !DILocalVariable(name: "d0", scope: !2066, file: !3, line: 49, type: !195)
!2074 = !DILocalVariable(name: "d1", scope: !2066, file: !3, line: 49, type: !195)
!2075 = !DILocalVariable(name: "d2", scope: !2066, file: !3, line: 49, type: !195)
!2076 = !DILocalVariable(name: "d3", scope: !2066, file: !3, line: 49, type: !195)
!2077 = !DILocalVariable(name: "dmf", scope: !2066, file: !3, line: 49, type: !195)
!2078 = !DILocation(line: 0, scope: !2066, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 450, column: 17, scope: !2060)
!2080 = !DILocation(line: 49, column: 5, scope: !2066, inlinedAt: !2079)
!2081 = !DILocation(line: 50, column: 24, scope: !2066, inlinedAt: !2079)
!2082 = !DILocation(line: 50, column: 30, scope: !2066, inlinedAt: !2079)
!2083 = !DILocation(line: 50, column: 36, scope: !2066, inlinedAt: !2079)
!2084 = !DILocation(line: 50, column: 20, scope: !2066, inlinedAt: !2079)
!2085 = !DILocation(line: 50, column: 18, scope: !2066, inlinedAt: !2079)
!2086 = distinct !DIAssignID()
!2087 = !DILocation(line: 51, column: 24, scope: !2066, inlinedAt: !2079)
!2088 = !DILocation(line: 51, column: 30, scope: !2066, inlinedAt: !2079)
!2089 = !DILocation(line: 51, column: 36, scope: !2066, inlinedAt: !2079)
!2090 = !DILocation(line: 51, column: 20, scope: !2066, inlinedAt: !2079)
!2091 = !DILocation(line: 51, column: 18, scope: !2066, inlinedAt: !2079)
!2092 = distinct !DIAssignID()
!2093 = !DILocation(line: 52, column: 24, scope: !2066, inlinedAt: !2079)
!2094 = !DILocation(line: 52, column: 30, scope: !2066, inlinedAt: !2079)
!2095 = !DILocation(line: 52, column: 36, scope: !2066, inlinedAt: !2079)
!2096 = !DILocation(line: 52, column: 20, scope: !2066, inlinedAt: !2079)
!2097 = !DILocation(line: 52, column: 18, scope: !2066, inlinedAt: !2079)
!2098 = distinct !DIAssignID()
!2099 = !DILocation(line: 53, column: 24, scope: !2066, inlinedAt: !2079)
!2100 = !DILocation(line: 53, column: 30, scope: !2066, inlinedAt: !2079)
!2101 = !DILocation(line: 53, column: 36, scope: !2066, inlinedAt: !2079)
!2102 = !DILocation(line: 53, column: 20, scope: !2066, inlinedAt: !2079)
!2103 = !DILocation(line: 53, column: 18, scope: !2066, inlinedAt: !2079)
!2104 = distinct !DIAssignID()
!2105 = !DILocation(line: 451, column: 13, scope: !2060)
!2106 = !DILocation(line: 452, column: 21, scope: !2055)
!2107 = !DILocation(line: 452, column: 13, scope: !2055)
!2108 = !DILocation(line: 454, column: 5, scope: !1718)
!2109 = distinct !{!2109, !1863, !2110}
!2110 = !DILocation(line: 454, column: 5, scope: !1715)
!2111 = !DISubprogram(name: "x264_quant_dc_trellis", scope: !2112, file: !2112, line: 58, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2112 = !DIFile(filename: "x264_src/encoder/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "18b1d8cf424109157590a0769f6470b5")
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!195, !232, !937, !195, !195, !195, !195, !195}
!2115 = distinct !DISubprogram(name: "x264_mb_optimize_chroma_dc", scope: !3, file: !3, line: 279, type: !2116, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!195, !232, !195, !195, !937}
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2130}
!2119 = !DILocalVariable(name: "h", arg: 1, scope: !2115, file: !3, line: 279, type: !232)
!2120 = !DILocalVariable(name: "b_inter", arg: 2, scope: !2115, file: !3, line: 279, type: !195)
!2121 = !DILocalVariable(name: "i_qp", arg: 3, scope: !2115, file: !3, line: 279, type: !195)
!2122 = !DILocalVariable(name: "dct2x2", arg: 4, scope: !2115, file: !3, line: 279, type: !937)
!2123 = !DILocalVariable(name: "dct2x2_orig", scope: !2115, file: !3, line: 281, type: !1070)
!2124 = !DILocalVariable(name: "coeff", scope: !2115, file: !3, line: 282, type: !195)
!2125 = !DILocalVariable(name: "nz", scope: !2115, file: !3, line: 282, type: !195)
!2126 = !DILocalVariable(name: "level", scope: !2127, file: !3, line: 301, type: !195)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 300, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 299, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 299, column: 5)
!2130 = !DILocalVariable(name: "sign", scope: !2127, file: !3, line: 302, type: !195)
!2131 = !DILocation(line: 0, scope: !2115)
!2132 = !DILocation(line: 285, column: 12, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 285, column: 9)
!2134 = !DILocation(line: 285, column: 32, scope: !2133)
!2135 = !DILocation(line: 285, column: 9, scope: !2133)
!2136 = !DILocation(line: 285, column: 47, scope: !2133)
!2137 = !DILocation(line: 285, column: 62, scope: !2133)
!2138 = !DILocation(line: 285, column: 54, scope: !2133)
!2139 = !DILocation(line: 285, column: 66, scope: !2133)
!2140 = !DILocation(line: 285, column: 9, scope: !2115)
!2141 = !DILocation(line: 0, scope: !1834, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 288, column: 5, scope: !2115)
!2143 = !DILocation(line: 58, column: 5, scope: !1834, inlinedAt: !2142)
!2144 = !DILocation(line: 59, column: 18, scope: !1834, inlinedAt: !2142)
!2145 = !DILocation(line: 59, column: 24, scope: !1834, inlinedAt: !2142)
!2146 = !DILocation(line: 59, column: 30, scope: !1834, inlinedAt: !2142)
!2147 = !DILocation(line: 59, column: 14, scope: !1834, inlinedAt: !2142)
!2148 = !DILocation(line: 60, column: 18, scope: !1834, inlinedAt: !2142)
!2149 = !DILocation(line: 60, column: 24, scope: !1834, inlinedAt: !2142)
!2150 = !DILocation(line: 60, column: 30, scope: !1834, inlinedAt: !2142)
!2151 = !DILocation(line: 60, column: 14, scope: !1834, inlinedAt: !2142)
!2152 = !DILocation(line: 61, column: 18, scope: !1834, inlinedAt: !2142)
!2153 = !DILocation(line: 61, column: 24, scope: !1834, inlinedAt: !2142)
!2154 = !DILocation(line: 61, column: 30, scope: !1834, inlinedAt: !2142)
!2155 = !DILocation(line: 61, column: 14, scope: !1834, inlinedAt: !2142)
!2156 = !DILocation(line: 62, column: 18, scope: !1834, inlinedAt: !2142)
!2157 = !DILocation(line: 62, column: 24, scope: !1834, inlinedAt: !2142)
!2158 = !DILocation(line: 62, column: 30, scope: !1834, inlinedAt: !2142)
!2159 = !DILocation(line: 62, column: 14, scope: !1834, inlinedAt: !2142)
!2160 = !DILocation(line: 289, column: 20, scope: !2115)
!2161 = !DILocation(line: 290, column: 20, scope: !2115)
!2162 = !DILocation(line: 291, column: 20, scope: !2115)
!2163 = !DILocation(line: 292, column: 20, scope: !2115)
!2164 = !DILocation(line: 295, column: 26, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 295, column: 9)
!2166 = !DILocation(line: 295, column: 41, scope: !2165)
!2167 = !DILocation(line: 295, column: 56, scope: !2165)
!2168 = !DILocation(line: 295, column: 72, scope: !2165)
!2169 = !DILocation(line: 295, column: 9, scope: !2115)
!2170 = !DILocation(line: 299, column: 26, scope: !2129)
!2171 = !DILocation(line: 299, column: 79, scope: !2128)
!2172 = !DILocation(line: 299, column: 5, scope: !2129)
!2173 = !DILocation(line: 301, column: 21, scope: !2127)
!2174 = !DILocation(line: 0, scope: !2127)
!2175 = !DILocation(line: 302, column: 25, scope: !2127)
!2176 = !DILocation(line: 302, column: 30, scope: !2127)
!2177 = !DILocation(line: 304, column: 9, scope: !2127)
!2178 = !DILocation(line: 306, column: 35, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 305, column: 9)
!2180 = !DILocation(line: 306, column: 29, scope: !2179)
!2181 = !DILocation(line: 306, column: 27, scope: !2179)
!2182 = !DILocation(line: 307, column: 65, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 307, column: 17)
!2184 = !DILocalVariable(name: "ref", arg: 1, scope: !2185, file: !3, line: 265, type: !937)
!2185 = distinct !DISubprogram(name: "idct_dequant_round_2x2_dc", scope: !3, file: !3, line: 265, type: !2186, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!195, !937, !937, !580, !195}
!2188 = !{!2184, !2189, !2190, !2191, !2192}
!2189 = !DILocalVariable(name: "dct", arg: 2, scope: !2185, file: !3, line: 265, type: !937)
!2190 = !DILocalVariable(name: "dequant_mf", arg: 3, scope: !2185, file: !3, line: 265, type: !580)
!2191 = !DILocalVariable(name: "i_qp", arg: 4, scope: !2185, file: !3, line: 265, type: !195)
!2192 = !DILocalVariable(name: "out", scope: !2185, file: !3, line: 267, type: !1070)
!2193 = !DILocation(line: 0, scope: !2185, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 307, column: 17, scope: !2183)
!2195 = !DILocation(line: 0, scope: !1834, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 268, column: 5, scope: !2185, inlinedAt: !2194)
!2197 = !DILocation(line: 58, column: 5, scope: !1834, inlinedAt: !2196)
!2198 = !DILocation(line: 59, column: 18, scope: !1834, inlinedAt: !2196)
!2199 = !DILocation(line: 60, column: 18, scope: !1834, inlinedAt: !2196)
!2200 = !DILocation(line: 61, column: 18, scope: !1834, inlinedAt: !2196)
!2201 = !DILocation(line: 62, column: 18, scope: !1834, inlinedAt: !2196)
!2202 = !DILocation(line: 59, column: 24, scope: !1834, inlinedAt: !2196)
!2203 = !DILocation(line: 269, column: 24, scope: !2185, inlinedAt: !2194)
!2204 = !DILocation(line: 269, column: 30, scope: !2185, inlinedAt: !2194)
!2205 = !DILocation(line: 269, column: 21, scope: !2185, inlinedAt: !2194)
!2206 = !DILocation(line: 270, column: 24, scope: !2185, inlinedAt: !2194)
!2207 = !DILocation(line: 270, column: 30, scope: !2185, inlinedAt: !2194)
!2208 = !DILocation(line: 270, column: 21, scope: !2185, inlinedAt: !2194)
!2209 = !DILocation(line: 270, column: 11, scope: !2185, inlinedAt: !2194)
!2210 = !DILocation(line: 271, column: 24, scope: !2185, inlinedAt: !2194)
!2211 = !DILocation(line: 271, column: 30, scope: !2185, inlinedAt: !2194)
!2212 = !DILocation(line: 271, column: 21, scope: !2185, inlinedAt: !2194)
!2213 = !DILocation(line: 271, column: 11, scope: !2185, inlinedAt: !2194)
!2214 = !DILocation(line: 272, column: 24, scope: !2185, inlinedAt: !2194)
!2215 = !DILocation(line: 272, column: 30, scope: !2185, inlinedAt: !2194)
!2216 = !DILocation(line: 272, column: 21, scope: !2185, inlinedAt: !2194)
!2217 = !DILocation(line: 272, column: 11, scope: !2185, inlinedAt: !2194)
!2218 = !DILocation(line: 307, column: 17, scope: !2183)
!2219 = !DILocation(line: 307, column: 17, scope: !2179)
!2220 = distinct !{!2220, !2177, !2221}
!2221 = !DILocation(line: 314, column: 9, scope: !2127)
!2222 = !DILocation(line: 310, column: 33, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 308, column: 13)
!2224 = !DILocation(line: 310, column: 31, scope: !2223)
!2225 = !DILocation(line: 311, column: 17, scope: !2223)
!2226 = !DILocation(line: 0, scope: !2129)
!2227 = !DILocation(line: 299, column: 90, scope: !2128)
!2228 = distinct !{!2228, !2172, !2229}
!2229 = !DILocation(line: 315, column: 5, scope: !2129)
!2230 = !DILocation(line: 318, column: 1, scope: !2115)
!2231 = !DISubprogram(name: "x264_quant_4x4_trellis", scope: !2112, file: !2112, line: 60, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!195, !232, !937, !195, !195, !195, !195, !195, !195}
!2234 = distinct !DISubprogram(name: "x264_predict_lossless_8x8_chroma", scope: !3, file: !3, line: 532, type: !2235, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !232, !195}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "h", arg: 1, scope: !2234, file: !3, line: 532, type: !232)
!2239 = !DILocalVariable(name: "i_mode", arg: 2, scope: !2234, file: !3, line: 532, type: !195)
!2240 = !DILocalVariable(name: "stride", scope: !2234, file: !3, line: 534, type: !195)
!2241 = !DILocation(line: 0, scope: !2234)
!2242 = !DILocation(line: 534, column: 21, scope: !2234)
!2243 = !DILocation(line: 534, column: 18, scope: !2234)
!2244 = !DILocation(line: 534, column: 48, scope: !2234)
!2245 = !DILocation(line: 534, column: 39, scope: !2234)
!2246 = !DILocation(line: 535, column: 9, scope: !2234)
!2247 = !DILocation(line: 537, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 536, column: 5)
!2249 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 535, column: 9)
!2250 = !DILocation(line: 537, column: 32, scope: !2248)
!2251 = !DILocation(line: 537, column: 66, scope: !2248)
!2252 = !DILocation(line: 537, column: 91, scope: !2248)
!2253 = !DILocation(line: 538, column: 9, scope: !2248)
!2254 = !DILocation(line: 538, column: 32, scope: !2248)
!2255 = !DILocation(line: 538, column: 66, scope: !2248)
!2256 = !DILocation(line: 538, column: 91, scope: !2248)
!2257 = !DILocation(line: 539, column: 5, scope: !2248)
!2258 = !DILocation(line: 542, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 541, column: 5)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 540, column: 14)
!2261 = !DILocation(line: 542, column: 32, scope: !2259)
!2262 = !DILocation(line: 542, column: 66, scope: !2259)
!2263 = !DILocation(line: 542, column: 91, scope: !2259)
!2264 = !DILocation(line: 543, column: 9, scope: !2259)
!2265 = !DILocation(line: 543, column: 32, scope: !2259)
!2266 = !DILocation(line: 543, column: 66, scope: !2259)
!2267 = !DILocation(line: 543, column: 91, scope: !2259)
!2268 = !DILocation(line: 544, column: 5, scope: !2259)
!2269 = !DILocation(line: 547, column: 12, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 546, column: 5)
!2271 = !DILocation(line: 547, column: 9, scope: !2270)
!2272 = !DILocation(line: 547, column: 34, scope: !2270)
!2273 = !DILocation(line: 548, column: 9, scope: !2270)
!2274 = !DILocation(line: 548, column: 34, scope: !2270)
!2275 = !DILocation(line: 550, column: 1, scope: !2234)
!2276 = distinct !DISubprogram(name: "x264_predict_lossless_4x4", scope: !3, file: !3, line: 552, type: !2277, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !232, !424, !195, !195}
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285}
!2280 = !DILocalVariable(name: "h", arg: 1, scope: !2276, file: !3, line: 552, type: !232)
!2281 = !DILocalVariable(name: "p_dst", arg: 2, scope: !2276, file: !3, line: 552, type: !424)
!2282 = !DILocalVariable(name: "idx", arg: 3, scope: !2276, file: !3, line: 552, type: !195)
!2283 = !DILocalVariable(name: "i_mode", arg: 4, scope: !2276, file: !3, line: 552, type: !195)
!2284 = !DILocalVariable(name: "stride", scope: !2276, file: !3, line: 554, type: !195)
!2285 = !DILocalVariable(name: "p_src", scope: !2276, file: !3, line: 555, type: !424)
!2286 = !DILocation(line: 0, scope: !2276)
!2287 = !DILocation(line: 554, column: 21, scope: !2276)
!2288 = !DILocation(line: 554, column: 27, scope: !2276)
!2289 = !DILocation(line: 554, column: 18, scope: !2276)
!2290 = !DILocation(line: 554, column: 48, scope: !2276)
!2291 = !DILocation(line: 554, column: 39, scope: !2276)
!2292 = !DILocation(line: 555, column: 32, scope: !2276)
!2293 = !DILocation(line: 555, column: 22, scope: !2276)
!2294 = !DILocation(line: 555, column: 50, scope: !2276)
!2295 = !DILocation(line: 555, column: 66, scope: !2276)
!2296 = !DILocation(line: 555, column: 48, scope: !2276)
!2297 = !DILocation(line: 555, column: 71, scope: !2276)
!2298 = !DILocation(line: 555, column: 87, scope: !2276)
!2299 = !DILocation(line: 555, column: 90, scope: !2276)
!2300 = !DILocation(line: 555, column: 69, scope: !2276)
!2301 = !DILocation(line: 557, column: 9, scope: !2276)
!2302 = !DILocation(line: 558, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 557, column: 9)
!2304 = !DILocation(line: 558, column: 57, scope: !2303)
!2305 = !DILocation(line: 560, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 559, column: 14)
!2307 = !DILocation(line: 560, column: 57, scope: !2306)
!2308 = !DILocation(line: 562, column: 12, scope: !2306)
!2309 = !DILocation(line: 562, column: 9, scope: !2306)
!2310 = !DILocation(line: 563, column: 1, scope: !2276)
!2311 = distinct !DISubprogram(name: "x264_predict_lossless_8x8", scope: !3, file: !3, line: 565, type: !2312, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !232, !424, !195, !195, !424}
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2315 = !DILocalVariable(name: "h", arg: 1, scope: !2311, file: !3, line: 565, type: !232)
!2316 = !DILocalVariable(name: "p_dst", arg: 2, scope: !2311, file: !3, line: 565, type: !424)
!2317 = !DILocalVariable(name: "idx", arg: 3, scope: !2311, file: !3, line: 565, type: !195)
!2318 = !DILocalVariable(name: "i_mode", arg: 4, scope: !2311, file: !3, line: 565, type: !195)
!2319 = !DILocalVariable(name: "edge", arg: 5, scope: !2311, file: !3, line: 565, type: !424)
!2320 = !DILocalVariable(name: "stride", scope: !2311, file: !3, line: 567, type: !195)
!2321 = !DILocalVariable(name: "p_src", scope: !2311, file: !3, line: 568, type: !424)
!2322 = !DILocation(line: 0, scope: !2311)
!2323 = !DILocation(line: 567, column: 21, scope: !2311)
!2324 = !DILocation(line: 567, column: 27, scope: !2311)
!2325 = !DILocation(line: 567, column: 18, scope: !2311)
!2326 = !DILocation(line: 567, column: 48, scope: !2311)
!2327 = !DILocation(line: 567, column: 39, scope: !2311)
!2328 = !DILocation(line: 568, column: 32, scope: !2311)
!2329 = !DILocation(line: 568, column: 22, scope: !2311)
!2330 = !DILocation(line: 568, column: 57, scope: !2311)
!2331 = !DILocation(line: 568, column: 48, scope: !2311)
!2332 = !DILocation(line: 568, column: 70, scope: !2311)
!2333 = !DILocation(line: 568, column: 72, scope: !2311)
!2334 = !DILocation(line: 568, column: 60, scope: !2311)
!2335 = !DILocation(line: 570, column: 9, scope: !2311)
!2336 = !DILocation(line: 571, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 570, column: 9)
!2338 = !DILocation(line: 571, column: 57, scope: !2337)
!2339 = !DILocation(line: 573, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 572, column: 14)
!2341 = !DILocation(line: 573, column: 57, scope: !2340)
!2342 = !DILocation(line: 575, column: 12, scope: !2340)
!2343 = !DILocation(line: 575, column: 9, scope: !2340)
!2344 = !DILocation(line: 576, column: 1, scope: !2311)
!2345 = distinct !DISubprogram(name: "x264_predict_lossless_16x16", scope: !3, file: !3, line: 578, type: !2235, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "h", arg: 1, scope: !2345, file: !3, line: 578, type: !232)
!2348 = !DILocalVariable(name: "i_mode", arg: 2, scope: !2345, file: !3, line: 578, type: !195)
!2349 = !DILocalVariable(name: "stride", scope: !2345, file: !3, line: 580, type: !195)
!2350 = !DILocation(line: 0, scope: !2345)
!2351 = !DILocation(line: 580, column: 21, scope: !2345)
!2352 = !DILocation(line: 580, column: 27, scope: !2345)
!2353 = !DILocation(line: 580, column: 18, scope: !2345)
!2354 = !DILocation(line: 580, column: 48, scope: !2345)
!2355 = !DILocation(line: 580, column: 39, scope: !2345)
!2356 = !DILocation(line: 581, column: 9, scope: !2345)
!2357 = !DILocation(line: 582, column: 15, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 581, column: 9)
!2359 = !DILocation(line: 582, column: 9, scope: !2358)
!2360 = !DILocation(line: 582, column: 44, scope: !2358)
!2361 = !DILocation(line: 582, column: 34, scope: !2358)
!2362 = !DILocation(line: 582, column: 78, scope: !2358)
!2363 = !DILocation(line: 582, column: 68, scope: !2358)
!2364 = !DILocation(line: 582, column: 93, scope: !2358)
!2365 = !DILocation(line: 584, column: 15, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 583, column: 14)
!2367 = !DILocation(line: 584, column: 47, scope: !2366)
!2368 = !DILocation(line: 584, column: 37, scope: !2366)
!2369 = !DILocation(line: 584, column: 81, scope: !2366)
!2370 = !DILocation(line: 584, column: 71, scope: !2366)
!2371 = !DILocation(line: 584, column: 96, scope: !2366)
!2372 = !DILocation(line: 584, column: 9, scope: !2366)
!2373 = !DILocation(line: 586, column: 12, scope: !2366)
!2374 = !DILocation(line: 586, column: 9, scope: !2366)
!2375 = !DILocation(line: 586, column: 45, scope: !2366)
!2376 = !DILocation(line: 586, column: 35, scope: !2366)
!2377 = !DILocation(line: 587, column: 1, scope: !2345)
!2378 = distinct !DISubprogram(name: "x264_macroblock_encode", scope: !3, file: !3, line: 592, type: !2379, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !232}
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2390, !2396, !2398, !2401, !2402, !2406, !2409, !2410, !2412, !2417, !2420, !2421, !2423, !2426, !2428, !2435, !2439, !2441, !2443, !2446, !2447, !2449, !2452, !2458, !2461}
!2382 = !DILocalVariable(name: "h", arg: 1, scope: !2378, file: !3, line: 592, type: !232)
!2383 = !DILocalVariable(name: "i_qp", scope: !2378, file: !3, line: 594, type: !195)
!2384 = !DILocalVariable(name: "b_decimate", scope: !2378, file: !3, line: 595, type: !195)
!2385 = !DILocalVariable(name: "b_force_no_skip", scope: !2378, file: !3, line: 596, type: !195)
!2386 = !DILocalVariable(name: "nz", scope: !2378, file: !3, line: 597, type: !195)
!2387 = !DILocalVariable(name: "i_mode", scope: !2388, file: !3, line: 644, type: !194)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 643, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 642, column: 9)
!2390 = !DILocalVariable(name: "edge", scope: !2391, file: !3, line: 657, type: !2393, align: 128)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 656, column: 5)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 655, column: 14)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 264, elements: !2394)
!2394 = !{!2395}
!2395 = !DISubrange(count: 33)
!2396 = !DILocalVariable(name: "i", scope: !2397, file: !3, line: 672, type: !195)
!2397 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 672, column: 9)
!2398 = !DILocalVariable(name: "p_dst", scope: !2399, file: !3, line: 674, type: !424)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 673, column: 9)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 672, column: 9)
!2401 = !DILocalVariable(name: "i_mode", scope: !2399, file: !3, line: 675, type: !195)
!2402 = !DILocalVariable(name: "i", scope: !2403, file: !3, line: 702, type: !195)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 702, column: 9)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 687, column: 5)
!2405 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 686, column: 14)
!2406 = !DILocalVariable(name: "p_dst", scope: !2407, file: !3, line: 704, type: !424)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 703, column: 9)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 702, column: 9)
!2409 = !DILocalVariable(name: "i_mode", scope: !2407, file: !3, line: 705, type: !195)
!2410 = !DILocalVariable(name: "i_decimate_mb", scope: !2411, file: !3, line: 720, type: !195)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 719, column: 5)
!2412 = !DILocalVariable(name: "i8x8", scope: !2413, file: !3, line: 729, type: !195)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 729, column: 17)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 728, column: 17)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 727, column: 9)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 726, column: 13)
!2417 = !DILocalVariable(name: "x", scope: !2418, file: !3, line: 731, type: !195)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 730, column: 17)
!2419 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 729, column: 17)
!2420 = !DILocalVariable(name: "y", scope: !2418, file: !3, line: 732, type: !195)
!2421 = !DILocalVariable(name: "i4x4", scope: !2422, file: !3, line: 740, type: !195)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 740, column: 17)
!2423 = !DILocalVariable(name: "dct8x8", scope: !2424, file: !3, line: 751, type: !884, align: 128)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 750, column: 9)
!2425 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 749, column: 18)
!2426 = !DILocalVariable(name: "idx", scope: !2427, file: !3, line: 756, type: !195)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 756, column: 13)
!2428 = !DILocalVariable(name: "i_decimate_8x8", scope: !2429, file: !3, line: 767, type: !195)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 766, column: 21)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 765, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 763, column: 17)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 762, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 757, column: 13)
!2434 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 756, column: 13)
!2435 = !DILocalVariable(name: "idx", scope: !2436, file: !3, line: 784, type: !195)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 784, column: 17)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 783, column: 13)
!2438 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 777, column: 17)
!2439 = !DILocalVariable(name: "dct4x4", scope: !2440, file: !3, line: 799, type: !1000, align: 128)
!2440 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 798, column: 9)
!2441 = !DILocalVariable(name: "i8x8", scope: !2442, file: !3, line: 803, type: !195)
!2442 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 803, column: 13)
!2443 = !DILocalVariable(name: "i_decimate_8x8", scope: !2444, file: !3, line: 805, type: !195)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 804, column: 13)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 803, column: 13)
!2446 = !DILocalVariable(name: "cbp", scope: !2444, file: !3, line: 806, type: !195)
!2447 = !DILocalVariable(name: "i4x4", scope: !2448, file: !3, line: 809, type: !195)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 809, column: 17)
!2449 = !DILocalVariable(name: "idx", scope: !2450, file: !3, line: 811, type: !195)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 810, column: 17)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 809, column: 17)
!2452 = !DILocalVariable(name: "i8x8", scope: !2453, file: !3, line: 853, type: !195)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 853, column: 21)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 852, column: 17)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 846, column: 21)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 845, column: 13)
!2457 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 844, column: 17)
!2458 = !DILocalVariable(name: "i_mode", scope: !2459, file: !3, line: 864, type: !194)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 863, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 862, column: 9)
!2461 = !DILocalVariable(name: "cbp", scope: !2378, file: !3, line: 878, type: !195)
!2462 = distinct !DIAssignID()
!2463 = !DILocalVariable(name: "dct4x4", scope: !2464, file: !3, line: 189, type: !1000, align: 128)
!2464 = distinct !DISubprogram(name: "x264_mb_encode_i16x16", scope: !3, file: !3, line: 184, type: !2235, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2463, !2470, !2471, !2472, !2473, !2477, !2480, !2481, !2483}
!2466 = !DILocalVariable(name: "h", arg: 1, scope: !2464, file: !3, line: 184, type: !232)
!2467 = !DILocalVariable(name: "i_qp", arg: 2, scope: !2464, file: !3, line: 184, type: !195)
!2468 = !DILocalVariable(name: "p_src", scope: !2464, file: !3, line: 186, type: !424)
!2469 = !DILocalVariable(name: "p_dst", scope: !2464, file: !3, line: 187, type: !424)
!2470 = !DILocalVariable(name: "dct_dc4x4", scope: !2464, file: !3, line: 190, type: !879, align: 128)
!2471 = !DILocalVariable(name: "nz", scope: !2464, file: !3, line: 192, type: !195)
!2472 = !DILocalVariable(name: "decimate_score", scope: !2464, file: !3, line: 193, type: !195)
!2473 = !DILocalVariable(name: "i", scope: !2474, file: !3, line: 197, type: !195)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 197, column: 9)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 196, column: 5)
!2476 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 195, column: 9)
!2477 = !DILocalVariable(name: "oe", scope: !2478, file: !3, line: 199, type: !195)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 198, column: 9)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 197, column: 9)
!2480 = !DILocalVariable(name: "od", scope: !2478, file: !3, line: 200, type: !195)
!2481 = !DILocalVariable(name: "i", scope: !2482, file: !3, line: 213, type: !195)
!2482 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 213, column: 5)
!2483 = !DILocalVariable(name: "i", scope: !2484, file: !3, line: 254, type: !195)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 254, column: 13)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 253, column: 13)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 247, column: 5)
!2487 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 246, column: 9)
!2488 = !DILocation(line: 0, scope: !2464, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 653, column: 9, scope: !2388)
!2490 = distinct !DIAssignID()
!2491 = distinct !DIAssignID()
!2492 = !DILocation(line: 0, scope: !2391)
!2493 = distinct !DIAssignID()
!2494 = !DILocation(line: 0, scope: !2424)
!2495 = distinct !DIAssignID()
!2496 = !DILocation(line: 0, scope: !2440)
!2497 = !DILocation(line: 0, scope: !2378)
!2498 = !DILocation(line: 594, column: 22, scope: !2378)
!2499 = !DILocation(line: 595, column: 28, scope: !2378)
!2500 = !DILocation(line: 598, column: 11, scope: !2378)
!2501 = !DILocation(line: 598, column: 22, scope: !2378)
!2502 = !DILocation(line: 599, column: 11, scope: !2378)
!2503 = !DILocation(line: 599, column: 17, scope: !2378)
!2504 = !DILocation(line: 599, column: 5, scope: !2378)
!2505 = !DILocation(line: 599, column: 48, scope: !2378)
!2506 = !DILocation(line: 601, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 601, column: 9)
!2508 = !DILocation(line: 601, column: 22, scope: !2507)
!2509 = !DILocation(line: 601, column: 9, scope: !2378)
!2510 = !DILocation(line: 604, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 602, column: 5)
!2512 = !DILocation(line: 604, column: 9, scope: !2511)
!2513 = !DILocation(line: 604, column: 44, scope: !2511)
!2514 = !DILocation(line: 604, column: 34, scope: !2511)
!2515 = !DILocation(line: 604, column: 78, scope: !2511)
!2516 = !DILocation(line: 604, column: 68, scope: !2511)
!2517 = !DILocation(line: 605, column: 9, scope: !2511)
!2518 = !DILocation(line: 605, column: 34, scope: !2511)
!2519 = !DILocation(line: 605, column: 68, scope: !2511)
!2520 = !DILocation(line: 606, column: 9, scope: !2511)
!2521 = !DILocation(line: 606, column: 34, scope: !2511)
!2522 = !DILocation(line: 606, column: 68, scope: !2511)
!2523 = !DILocation(line: 607, column: 9, scope: !2511)
!2524 = !DILocation(line: 610, column: 15, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 610, column: 9)
!2526 = !DILocation(line: 610, column: 9, scope: !2525)
!2527 = !DILocation(line: 611, column: 9, scope: !2525)
!2528 = !DILocation(line: 611, column: 18, scope: !2525)
!2529 = !DILocation(line: 611, column: 35, scope: !2525)
!2530 = !DILocation(line: 611, column: 54, scope: !2525)
!2531 = !DILocation(line: 611, column: 46, scope: !2525)
!2532 = !DILocation(line: 611, column: 26, scope: !2525)
!2533 = !DILocation(line: 612, column: 9, scope: !2525)
!2534 = !DILocation(line: 612, column: 12, scope: !2525)
!2535 = !DILocation(line: 618, column: 13, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 618, column: 13)
!2537 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 613, column: 5)
!2538 = !DILocation(line: 623, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 622, column: 22)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 620, column: 17)
!2541 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 619, column: 9)
!2542 = !DILocation(line: 627, column: 9, scope: !2378)
!2543 = !DILocalVariable(name: "h", arg: 1, scope: !2544, file: !3, line: 477, type: !232)
!2544 = distinct !DISubprogram(name: "x264_macroblock_encode_pskip", scope: !3, file: !3, line: 477, type: !2379, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2545)
!2545 = !{!2543, !2546, !2549}
!2546 = !DILocalVariable(name: "mvx", scope: !2547, file: !3, line: 482, type: !195)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 481, column: 5)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 480, column: 9)
!2549 = !DILocalVariable(name: "mvy", scope: !2547, file: !3, line: 484, type: !195)
!2550 = !DILocation(line: 0, scope: !2544, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 630, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 628, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 627, column: 9)
!2554 = !DILocation(line: 480, column: 16, scope: !2548, inlinedAt: !2551)
!2555 = !DILocation(line: 480, column: 10, scope: !2548, inlinedAt: !2551)
!2556 = !DILocation(line: 480, column: 9, scope: !2544, inlinedAt: !2551)
!2557 = !DILocation(line: 482, column: 31, scope: !2547, inlinedAt: !2551)
!2558 = !DILocation(line: 483, column: 37, scope: !2547, inlinedAt: !2551)
!2559 = !DILocation(line: 483, column: 54, scope: !2547, inlinedAt: !2551)
!2560 = !DILocalVariable(name: "v", arg: 1, scope: !2561, file: !139, line: 200, type: !195)
!2561 = distinct !DISubprogram(name: "x264_clip3", scope: !139, file: !139, line: 200, type: !2562, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!195, !195, !195, !195}
!2564 = !{!2560, !2565, !2566}
!2565 = !DILocalVariable(name: "i_min", arg: 2, scope: !2561, file: !139, line: 200, type: !195)
!2566 = !DILocalVariable(name: "i_max", arg: 3, scope: !2561, file: !139, line: 200, type: !195)
!2567 = !DILocation(line: 0, scope: !2561, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 482, column: 19, scope: !2547, inlinedAt: !2551)
!2569 = !DILocation(line: 0, scope: !2547, inlinedAt: !2551)
!2570 = !DILocation(line: 483, column: 31, scope: !2547, inlinedAt: !2551)
!2571 = !DILocation(line: 483, column: 48, scope: !2547, inlinedAt: !2551)
!2572 = !DILocation(line: 0, scope: !2561, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 484, column: 19, scope: !2547, inlinedAt: !2551)
!2574 = !DILocation(line: 202, column: 17, scope: !2561, inlinedAt: !2573)
!2575 = !DILocation(line: 202, column: 14, scope: !2561, inlinedAt: !2573)
!2576 = !DILocation(line: 487, column: 12, scope: !2547, inlinedAt: !2551)
!2577 = !DILocation(line: 487, column: 15, scope: !2547, inlinedAt: !2551)
!2578 = !DILocation(line: 487, column: 34, scope: !2547, inlinedAt: !2551)
!2579 = !DILocation(line: 487, column: 24, scope: !2547, inlinedAt: !2551)
!2580 = !DILocation(line: 488, column: 34, scope: !2547, inlinedAt: !2551)
!2581 = !DILocation(line: 488, column: 58, scope: !2547, inlinedAt: !2551)
!2582 = !DILocation(line: 488, column: 48, scope: !2547, inlinedAt: !2551)
!2583 = !DILocation(line: 489, column: 49, scope: !2547, inlinedAt: !2551)
!2584 = !DILocation(line: 492, column: 17, scope: !2585, inlinedAt: !2551)
!2585 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 492, column: 13)
!2586 = !DILocation(line: 487, column: 9, scope: !2547, inlinedAt: !2551)
!2587 = !DILocation(line: 0, scope: !2585, inlinedAt: !2551)
!2588 = !DILocation(line: 492, column: 13, scope: !2547, inlinedAt: !2551)
!2589 = !DILocation(line: 494, column: 19, scope: !2590, inlinedAt: !2551)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 493, column: 9)
!2591 = !DILocation(line: 494, column: 13, scope: !2590, inlinedAt: !2551)
!2592 = !DILocation(line: 497, column: 19, scope: !2590, inlinedAt: !2551)
!2593 = !DILocation(line: 497, column: 30, scope: !2590, inlinedAt: !2551)
!2594 = !DILocation(line: 498, column: 30, scope: !2590, inlinedAt: !2551)
!2595 = !DILocation(line: 498, column: 57, scope: !2590, inlinedAt: !2551)
!2596 = !DILocation(line: 497, column: 13, scope: !2590, inlinedAt: !2551)
!2597 = !DILocation(line: 500, column: 9, scope: !2590, inlinedAt: !2551)
!2598 = !DILocation(line: 503, column: 13, scope: !2599, inlinedAt: !2551)
!2599 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 502, column: 9)
!2600 = !DILocation(line: 504, column: 13, scope: !2599, inlinedAt: !2551)
!2601 = !DILocation(line: 504, column: 36, scope: !2599, inlinedAt: !2551)
!2602 = !DILocation(line: 504, column: 70, scope: !2599, inlinedAt: !2551)
!2603 = !DILocation(line: 504, column: 97, scope: !2599, inlinedAt: !2551)
!2604 = !DILocation(line: 507, column: 32, scope: !2605, inlinedAt: !2551)
!2605 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 507, column: 13)
!2606 = !DILocation(line: 507, column: 13, scope: !2605, inlinedAt: !2551)
!2607 = !DILocation(line: 507, column: 13, scope: !2547, inlinedAt: !2551)
!2608 = !DILocation(line: 508, column: 13, scope: !2605, inlinedAt: !2551)
!2609 = !DILocation(line: 508, column: 48, scope: !2605, inlinedAt: !2551)
!2610 = !DILocation(line: 512, column: 32, scope: !2611, inlinedAt: !2551)
!2611 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 512, column: 13)
!2612 = !DILocation(line: 512, column: 13, scope: !2611, inlinedAt: !2551)
!2613 = !DILocation(line: 512, column: 13, scope: !2547, inlinedAt: !2551)
!2614 = !DILocation(line: 513, column: 13, scope: !2611, inlinedAt: !2551)
!2615 = !DILocation(line: 513, column: 48, scope: !2611, inlinedAt: !2551)
!2616 = !DILocalVariable(name: "h", arg: 1, scope: !2617, file: !3, line: 460, type: !232)
!2617 = distinct !DISubprogram(name: "x264_macroblock_encode_skip", scope: !3, file: !3, line: 460, type: !2379, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2618)
!2618 = !{!2616, !2619}
!2619 = !DILocalVariable(name: "i", scope: !2620, file: !3, line: 466, type: !195)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 466, column: 5)
!2621 = !DILocation(line: 0, scope: !2617, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 518, column: 5, scope: !2544, inlinedAt: !2551)
!2623 = !DILocation(line: 462, column: 5, scope: !2617, inlinedAt: !2622)
!2624 = !DILocation(line: 462, column: 59, scope: !2617, inlinedAt: !2622)
!2625 = !DILocation(line: 463, column: 5, scope: !2617, inlinedAt: !2622)
!2626 = !DILocation(line: 463, column: 59, scope: !2617, inlinedAt: !2622)
!2627 = !DILocation(line: 464, column: 5, scope: !2617, inlinedAt: !2622)
!2628 = !DILocation(line: 464, column: 59, scope: !2617, inlinedAt: !2622)
!2629 = !DILocation(line: 465, column: 5, scope: !2617, inlinedAt: !2622)
!2630 = !DILocation(line: 465, column: 59, scope: !2617, inlinedAt: !2622)
!2631 = !DILocation(line: 0, scope: !2620, inlinedAt: !2622)
!2632 = !DILocation(line: 467, column: 9, scope: !2633, inlinedAt: !2622)
!2633 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 466, column: 5)
!2634 = !DILocation(line: 467, column: 51, scope: !2633, inlinedAt: !2622)
!2635 = !DILocation(line: 468, column: 22, scope: !2617, inlinedAt: !2622)
!2636 = !DILocation(line: 469, column: 11, scope: !2617, inlinedAt: !2622)
!2637 = !DILocation(line: 469, column: 24, scope: !2617, inlinedAt: !2622)
!2638 = !DILocation(line: 470, column: 11, scope: !2617, inlinedAt: !2622)
!2639 = !DILocation(line: 470, column: 21, scope: !2617, inlinedAt: !2622)
!2640 = !DILocation(line: 470, column: 5, scope: !2617, inlinedAt: !2622)
!2641 = !DILocation(line: 470, column: 30, scope: !2617, inlinedAt: !2622)
!2642 = !DILocation(line: 631, column: 9, scope: !2552)
!2643 = !DILocation(line: 636, column: 20, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 636, column: 13)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 634, column: 5)
!2646 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 633, column: 9)
!2647 = !DILocation(line: 636, column: 14, scope: !2644)
!2648 = !DILocation(line: 636, column: 13, scope: !2645)
!2649 = !DILocation(line: 637, column: 13, scope: !2644)
!2650 = !DILocation(line: 0, scope: !2617, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 638, column: 9, scope: !2645)
!2652 = !DILocation(line: 462, column: 5, scope: !2617, inlinedAt: !2651)
!2653 = !DILocation(line: 462, column: 59, scope: !2617, inlinedAt: !2651)
!2654 = !DILocation(line: 463, column: 5, scope: !2617, inlinedAt: !2651)
!2655 = !DILocation(line: 463, column: 59, scope: !2617, inlinedAt: !2651)
!2656 = !DILocation(line: 464, column: 5, scope: !2617, inlinedAt: !2651)
!2657 = !DILocation(line: 464, column: 59, scope: !2617, inlinedAt: !2651)
!2658 = !DILocation(line: 465, column: 5, scope: !2617, inlinedAt: !2651)
!2659 = !DILocation(line: 465, column: 59, scope: !2617, inlinedAt: !2651)
!2660 = !DILocation(line: 0, scope: !2620, inlinedAt: !2651)
!2661 = !DILocation(line: 467, column: 9, scope: !2633, inlinedAt: !2651)
!2662 = !DILocation(line: 467, column: 51, scope: !2633, inlinedAt: !2651)
!2663 = !DILocation(line: 468, column: 22, scope: !2617, inlinedAt: !2651)
!2664 = !DILocation(line: 469, column: 11, scope: !2617, inlinedAt: !2651)
!2665 = !DILocation(line: 469, column: 24, scope: !2617, inlinedAt: !2651)
!2666 = !DILocation(line: 470, column: 11, scope: !2617, inlinedAt: !2651)
!2667 = !DILocation(line: 470, column: 21, scope: !2617, inlinedAt: !2651)
!2668 = !DILocation(line: 470, column: 5, scope: !2617, inlinedAt: !2651)
!2669 = !DILocation(line: 470, column: 30, scope: !2617, inlinedAt: !2651)
!2670 = !DILocation(line: 639, column: 9, scope: !2645)
!2671 = !DILocation(line: 644, column: 34, scope: !2388)
!2672 = !DILocation(line: 0, scope: !2388)
!2673 = !DILocation(line: 645, column: 15, scope: !2388)
!2674 = !DILocation(line: 645, column: 31, scope: !2388)
!2675 = !DILocation(line: 647, column: 19, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 647, column: 13)
!2677 = !DILocation(line: 647, column: 13, scope: !2676)
!2678 = !DILocation(line: 647, column: 13, scope: !2388)
!2679 = !DILocation(line: 0, scope: !2345, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 648, column: 13, scope: !2676)
!2681 = !DILocation(line: 580, column: 21, scope: !2345, inlinedAt: !2680)
!2682 = !DILocation(line: 580, column: 27, scope: !2345, inlinedAt: !2680)
!2683 = !DILocation(line: 580, column: 18, scope: !2345, inlinedAt: !2680)
!2684 = !DILocation(line: 580, column: 48, scope: !2345, inlinedAt: !2680)
!2685 = !DILocation(line: 580, column: 39, scope: !2345, inlinedAt: !2680)
!2686 = !DILocation(line: 581, column: 9, scope: !2345, inlinedAt: !2680)
!2687 = !DILocation(line: 582, column: 15, scope: !2358, inlinedAt: !2680)
!2688 = !DILocation(line: 582, column: 9, scope: !2358, inlinedAt: !2680)
!2689 = !DILocation(line: 582, column: 44, scope: !2358, inlinedAt: !2680)
!2690 = !DILocation(line: 582, column: 34, scope: !2358, inlinedAt: !2680)
!2691 = !DILocation(line: 582, column: 78, scope: !2358, inlinedAt: !2680)
!2692 = !DILocation(line: 582, column: 68, scope: !2358, inlinedAt: !2680)
!2693 = !DILocation(line: 582, column: 93, scope: !2358, inlinedAt: !2680)
!2694 = !DILocation(line: 584, column: 15, scope: !2366, inlinedAt: !2680)
!2695 = !DILocation(line: 584, column: 47, scope: !2366, inlinedAt: !2680)
!2696 = !DILocation(line: 584, column: 37, scope: !2366, inlinedAt: !2680)
!2697 = !DILocation(line: 584, column: 81, scope: !2366, inlinedAt: !2680)
!2698 = !DILocation(line: 584, column: 71, scope: !2366, inlinedAt: !2680)
!2699 = !DILocation(line: 584, column: 96, scope: !2366, inlinedAt: !2680)
!2700 = !DILocation(line: 584, column: 9, scope: !2366, inlinedAt: !2680)
!2701 = !DILocation(line: 586, column: 12, scope: !2366, inlinedAt: !2680)
!2702 = !DILocation(line: 586, column: 9, scope: !2366, inlinedAt: !2680)
!2703 = !DILocation(line: 586, column: 45, scope: !2366, inlinedAt: !2680)
!2704 = !DILocation(line: 586, column: 35, scope: !2366, inlinedAt: !2680)
!2705 = !DILocation(line: 650, column: 16, scope: !2676)
!2706 = !DILocation(line: 650, column: 13, scope: !2676)
!2707 = !DILocation(line: 650, column: 49, scope: !2676)
!2708 = !DILocation(line: 650, column: 39, scope: !2676)
!2709 = !DILocation(line: 186, column: 33, scope: !2464, inlinedAt: !2489)
!2710 = !DILocation(line: 186, column: 23, scope: !2464, inlinedAt: !2489)
!2711 = !DILocation(line: 187, column: 33, scope: !2464, inlinedAt: !2489)
!2712 = !DILocation(line: 187, column: 23, scope: !2464, inlinedAt: !2489)
!2713 = !DILocation(line: 189, column: 5, scope: !2464, inlinedAt: !2489)
!2714 = !DILocation(line: 190, column: 5, scope: !2464, inlinedAt: !2489)
!2715 = !DILocation(line: 195, column: 15, scope: !2476, inlinedAt: !2489)
!2716 = !DILocation(line: 195, column: 9, scope: !2476, inlinedAt: !2489)
!2717 = !DILocation(line: 195, column: 9, scope: !2464, inlinedAt: !2489)
!2718 = !DILocation(line: 0, scope: !2474, inlinedAt: !2489)
!2719 = !DILocation(line: 197, column: 9, scope: !2474, inlinedAt: !2489)
!2720 = !DILocation(line: 205, column: 26, scope: !2475, inlinedAt: !2489)
!2721 = !DILocation(line: 0, scope: !1894, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 206, column: 54, scope: !2475, inlinedAt: !2489)
!2723 = !DILocation(line: 358, column: 19, scope: !1902, inlinedAt: !2722)
!2724 = !DILocation(line: 358, column: 62, scope: !1902, inlinedAt: !2722)
!2725 = !DILocation(line: 358, column: 17, scope: !1902, inlinedAt: !2722)
!2726 = !DILocation(line: 206, column: 54, scope: !2475, inlinedAt: !2489)
!2727 = !DILocation(line: 206, column: 52, scope: !2475, inlinedAt: !2489)
!2728 = !DILocation(line: 207, column: 20, scope: !2475, inlinedAt: !2489)
!2729 = !DILocation(line: 207, column: 33, scope: !2475, inlinedAt: !2489)
!2730 = !DILocation(line: 207, column: 9, scope: !2475, inlinedAt: !2489)
!2731 = !DILocation(line: 208, column: 9, scope: !2475, inlinedAt: !2489)
!2732 = !DILocation(line: 199, column: 22, scope: !2478, inlinedAt: !2489)
!2733 = !DILocation(line: 0, scope: !2478, inlinedAt: !2489)
!2734 = !DILocation(line: 200, column: 22, scope: !2478, inlinedAt: !2489)
!2735 = !DILocation(line: 201, column: 29, scope: !2478, inlinedAt: !2489)
!2736 = !DILocation(line: 201, column: 40, scope: !2478, inlinedAt: !2489)
!2737 = !DILocation(line: 201, column: 64, scope: !2478, inlinedAt: !2489)
!2738 = !DILocation(line: 201, column: 74, scope: !2478, inlinedAt: !2489)
!2739 = !DILocation(line: 201, column: 90, scope: !2478, inlinedAt: !2489)
!2740 = !DILocation(line: 201, column: 80, scope: !2478, inlinedAt: !2489)
!2741 = !DILocation(line: 201, column: 18, scope: !2478, inlinedAt: !2489)
!2742 = !DILocation(line: 202, column: 57, scope: !2478, inlinedAt: !2489)
!2743 = !DILocation(line: 202, column: 40, scope: !2478, inlinedAt: !2489)
!2744 = !DILocation(line: 202, column: 13, scope: !2478, inlinedAt: !2489)
!2745 = !DILocation(line: 202, column: 55, scope: !2478, inlinedAt: !2489)
!2746 = !DILocation(line: 203, column: 30, scope: !2478, inlinedAt: !2489)
!2747 = !DILocation(line: 197, column: 34, scope: !2479, inlinedAt: !2489)
!2748 = !DILocation(line: 197, column: 27, scope: !2479, inlinedAt: !2489)
!2749 = distinct !{!2749, !2719, !2750}
!2750 = !DILocation(line: 204, column: 9, scope: !2474, inlinedAt: !2489)
!2751 = !DILocation(line: 193, column: 32, scope: !2464, inlinedAt: !2489)
!2752 = !DILocation(line: 193, column: 26, scope: !2464, inlinedAt: !2489)
!2753 = !DILocation(line: 211, column: 13, scope: !2464, inlinedAt: !2489)
!2754 = !DILocation(line: 211, column: 5, scope: !2464, inlinedAt: !2489)
!2755 = !DILocation(line: 0, scope: !2482, inlinedAt: !2489)
!2756 = !DILocation(line: 213, column: 5, scope: !2482, inlinedAt: !2489)
!2757 = !DILocation(line: 233, column: 24, scope: !2758, inlinedAt: !2489)
!2758 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 233, column: 9)
!2759 = !DILocation(line: 233, column: 9, scope: !2464, inlinedAt: !2489)
!2760 = !DILocation(line: 216, column: 41, scope: !2761, inlinedAt: !2489)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 214, column: 5)
!2762 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 213, column: 5)
!2763 = !DILocation(line: 216, column: 19, scope: !2761, inlinedAt: !2489)
!2764 = !DILocation(line: 216, column: 9, scope: !2761, inlinedAt: !2489)
!2765 = !DILocation(line: 216, column: 39, scope: !2761, inlinedAt: !2489)
!2766 = !DILocation(line: 217, column: 22, scope: !2761, inlinedAt: !2489)
!2767 = !DILocation(line: 0, scope: !1553, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 220, column: 14, scope: !2761, inlinedAt: !2489)
!2769 = !DILocation(line: 84, column: 15, scope: !1566, inlinedAt: !2768)
!2770 = !DILocation(line: 84, column: 9, scope: !1566, inlinedAt: !2768)
!2771 = !DILocation(line: 84, column: 9, scope: !1553, inlinedAt: !2768)
!2772 = !DILocation(line: 85, column: 16, scope: !1566, inlinedAt: !2768)
!2773 = !DILocation(line: 85, column: 9, scope: !1566, inlinedAt: !2768)
!2774 = !DILocation(line: 87, column: 26, scope: !1566, inlinedAt: !2768)
!2775 = !DILocation(line: 87, column: 42, scope: !1566, inlinedAt: !2768)
!2776 = !DILocation(line: 87, column: 75, scope: !1566, inlinedAt: !2768)
!2777 = !DILocation(line: 87, column: 16, scope: !1566, inlinedAt: !2768)
!2778 = !DILocation(line: 87, column: 9, scope: !1566, inlinedAt: !2768)
!2779 = !DILocation(line: 0, scope: !1566, inlinedAt: !2768)
!2780 = !DILocation(line: 221, column: 53, scope: !2761, inlinedAt: !2489)
!2781 = !DILocation(line: 221, column: 36, scope: !2761, inlinedAt: !2489)
!2782 = !DILocation(line: 221, column: 9, scope: !2761, inlinedAt: !2489)
!2783 = !DILocation(line: 221, column: 51, scope: !2761, inlinedAt: !2489)
!2784 = !DILocation(line: 222, column: 13, scope: !2785, inlinedAt: !2489)
!2785 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 222, column: 13)
!2786 = !DILocation(line: 222, column: 13, scope: !2761, inlinedAt: !2489)
!2787 = !DILocation(line: 224, column: 24, scope: !2788, inlinedAt: !2489)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 223, column: 9)
!2789 = !DILocation(line: 224, column: 34, scope: !2788, inlinedAt: !2489)
!2790 = !DILocation(line: 224, column: 13, scope: !2788, inlinedAt: !2489)
!2791 = !DILocation(line: 225, column: 23, scope: !2788, inlinedAt: !2489)
!2792 = !DILocation(line: 225, column: 47, scope: !2788, inlinedAt: !2489)
!2793 = !DILocation(line: 225, column: 13, scope: !2788, inlinedAt: !2489)
!2794 = !DILocation(line: 226, column: 32, scope: !2795, inlinedAt: !2489)
!2795 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 226, column: 17)
!2796 = !DILocation(line: 226, column: 17, scope: !2788, inlinedAt: !2489)
!2797 = !DILocation(line: 226, column: 66, scope: !2795, inlinedAt: !2489)
!2798 = !DILocation(line: 226, column: 56, scope: !2795, inlinedAt: !2489)
!2799 = !DILocation(line: 226, column: 53, scope: !2795, inlinedAt: !2489)
!2800 = !DILocation(line: 226, column: 38, scope: !2795, inlinedAt: !2489)
!2801 = !DILocation(line: 227, column: 30, scope: !2788, inlinedAt: !2489)
!2802 = !DILocation(line: 228, column: 9, scope: !2788, inlinedAt: !2489)
!2803 = !DILocation(line: 213, column: 30, scope: !2762, inlinedAt: !2489)
!2804 = !DILocation(line: 213, column: 23, scope: !2762, inlinedAt: !2489)
!2805 = distinct !{!2805, !2756, !2806}
!2806 = !DILocation(line: 229, column: 5, scope: !2482, inlinedAt: !2489)
!2807 = !DILocation(line: 235, column: 26, scope: !2808, inlinedAt: !2489)
!2808 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 234, column: 5)
!2809 = !DILocation(line: 236, column: 9, scope: !2810, inlinedAt: !2489)
!2810 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 236, column: 9)
!2811 = !DILocation(line: 237, column: 5, scope: !2808, inlinedAt: !2489)
!2812 = !DILocation(line: 239, column: 13, scope: !2464, inlinedAt: !2489)
!2813 = !DILocation(line: 239, column: 5, scope: !2464, inlinedAt: !2489)
!2814 = !DILocation(line: 240, column: 15, scope: !2815, inlinedAt: !2489)
!2815 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 240, column: 9)
!2816 = !DILocation(line: 240, column: 9, scope: !2815, inlinedAt: !2489)
!2817 = !DILocation(line: 240, column: 9, scope: !2464, inlinedAt: !2489)
!2818 = !DILocation(line: 241, column: 14, scope: !2815, inlinedAt: !2489)
!2819 = !DILocation(line: 241, column: 9, scope: !2815, inlinedAt: !2489)
!2820 = !DILocation(line: 243, column: 24, scope: !2815, inlinedAt: !2489)
!2821 = !DILocation(line: 243, column: 49, scope: !2815, inlinedAt: !2489)
!2822 = !DILocation(line: 243, column: 79, scope: !2815, inlinedAt: !2489)
!2823 = !DILocation(line: 243, column: 84, scope: !2815, inlinedAt: !2489)
!2824 = !DILocation(line: 243, column: 116, scope: !2815, inlinedAt: !2489)
!2825 = !DILocation(line: 243, column: 14, scope: !2815, inlinedAt: !2489)
!2826 = !DILocation(line: 0, scope: !2815, inlinedAt: !2489)
!2827 = !DILocation(line: 245, column: 50, scope: !2464, inlinedAt: !2489)
!2828 = !DILocation(line: 245, column: 48, scope: !2464, inlinedAt: !2489)
!2829 = !DILocation(line: 246, column: 9, scope: !2487, inlinedAt: !2489)
!2830 = !DILocation(line: 246, column: 9, scope: !2464, inlinedAt: !2489)
!2831 = !DILocation(line: 248, column: 20, scope: !2486, inlinedAt: !2489)
!2832 = !DILocation(line: 248, column: 33, scope: !2486, inlinedAt: !2489)
!2833 = !DILocation(line: 248, column: 9, scope: !2486, inlinedAt: !2489)
!2834 = !DILocation(line: 251, column: 17, scope: !2486, inlinedAt: !2489)
!2835 = !DILocation(line: 251, column: 9, scope: !2486, inlinedAt: !2489)
!2836 = !DILocation(line: 252, column: 19, scope: !2486, inlinedAt: !2489)
!2837 = !DILocation(line: 252, column: 46, scope: !2486, inlinedAt: !2489)
!2838 = !DILocation(line: 252, column: 9, scope: !2486, inlinedAt: !2489)
!2839 = !DILocation(line: 253, column: 19, scope: !2485, inlinedAt: !2489)
!2840 = !DILocation(line: 253, column: 13, scope: !2485, inlinedAt: !2489)
!2841 = !DILocation(line: 253, column: 13, scope: !2486, inlinedAt: !2489)
!2842 = !DILocation(line: 0, scope: !2484, inlinedAt: !2489)
!2843 = !DILocation(line: 255, column: 32, scope: !2844, inlinedAt: !2489)
!2844 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 254, column: 13)
!2845 = !DILocation(line: 255, column: 30, scope: !2844, inlinedAt: !2489)
!2846 = !DILocation(line: 255, column: 17, scope: !2844, inlinedAt: !2489)
!2847 = !DILocation(line: 259, column: 9, scope: !2464, inlinedAt: !2489)
!2848 = !DILocation(line: 259, column: 15, scope: !2849, inlinedAt: !2489)
!2849 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 259, column: 9)
!2850 = !DILocation(line: 259, column: 9, scope: !2849, inlinedAt: !2489)
!2851 = !DILocation(line: 260, column: 17, scope: !2849, inlinedAt: !2489)
!2852 = !DILocation(line: 260, column: 9, scope: !2849, inlinedAt: !2489)
!2853 = !DILocation(line: 262, column: 17, scope: !2854, inlinedAt: !2489)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 261, column: 14)
!2855 = !DILocation(line: 262, column: 9, scope: !2854, inlinedAt: !2489)
!2856 = !DILocation(line: 263, column: 1, scope: !2464, inlinedAt: !2489)
!2857 = !DILocation(line: 654, column: 5, scope: !2388)
!2858 = !DILocation(line: 657, column: 9, scope: !2391)
!2859 = !DILocation(line: 658, column: 15, scope: !2391)
!2860 = !DILocation(line: 658, column: 31, scope: !2391)
!2861 = !DILocation(line: 660, column: 19, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 660, column: 13)
!2863 = !DILocation(line: 660, column: 13, scope: !2862)
!2864 = !DILocation(line: 660, column: 13, scope: !2391)
!2865 = !DILocation(line: 662, column: 19, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 661, column: 9)
!2867 = !DILocation(line: 662, column: 13, scope: !2866)
!2868 = !DILocation(line: 662, column: 48, scope: !2866)
!2869 = !DILocation(line: 662, column: 38, scope: !2866)
!2870 = !DILocation(line: 662, column: 82, scope: !2866)
!2871 = !DILocation(line: 663, column: 76, scope: !2866)
!2872 = !DILocation(line: 663, column: 66, scope: !2866)
!2873 = !DILocation(line: 663, column: 13, scope: !2866)
!2874 = !DILocation(line: 663, column: 64, scope: !2866)
!2875 = !DILocation(line: 664, column: 66, scope: !2866)
!2876 = !DILocation(line: 664, column: 13, scope: !2866)
!2877 = !DILocation(line: 664, column: 64, scope: !2866)
!2878 = !DILocation(line: 665, column: 66, scope: !2866)
!2879 = !DILocation(line: 665, column: 13, scope: !2866)
!2880 = !DILocation(line: 665, column: 64, scope: !2866)
!2881 = !DILocation(line: 666, column: 66, scope: !2866)
!2882 = !DILocation(line: 666, column: 13, scope: !2866)
!2883 = !DILocation(line: 666, column: 64, scope: !2866)
!2884 = !DILocation(line: 667, column: 42, scope: !2866)
!2885 = !DILocation(line: 667, column: 30, scope: !2866)
!2886 = !DILocation(line: 669, column: 23, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 669, column: 17)
!2888 = !DILocation(line: 669, column: 36, scope: !2887)
!2889 = !DILocation(line: 669, column: 17, scope: !2866)
!2890 = !DILocation(line: 670, column: 23, scope: !2887)
!2891 = !DILocation(line: 670, column: 46, scope: !2887)
!2892 = !DILocation(line: 670, column: 65, scope: !2887)
!2893 = !DILocation(line: 670, column: 17, scope: !2887)
!2894 = !DILocation(line: 672, column: 28, scope: !2397)
!2895 = !DILocation(line: 672, column: 22, scope: !2397)
!2896 = !DILocation(line: 0, scope: !2397)
!2897 = !DILocation(line: 672, column: 9, scope: !2397)
!2898 = !DILocation(line: 685, column: 5, scope: !2392)
!2899 = !DILocation(line: 685, column: 5, scope: !2391)
!2900 = !DILocation(line: 674, column: 32, scope: !2399)
!2901 = !DILocation(line: 674, column: 54, scope: !2399)
!2902 = !DILocation(line: 674, column: 66, scope: !2399)
!2903 = !DILocation(line: 674, column: 62, scope: !2399)
!2904 = !DILocation(line: 0, scope: !2399)
!2905 = !DILocation(line: 675, column: 74, scope: !2399)
!2906 = !DILocation(line: 675, column: 62, scope: !2399)
!2907 = !DILocation(line: 675, column: 31, scope: !2399)
!2908 = !DILocation(line: 676, column: 16, scope: !2399)
!2909 = !DILocation(line: 676, column: 49, scope: !2399)
!2910 = !DILocation(line: 676, column: 72, scope: !2399)
!2911 = !DILocation(line: 676, column: 13, scope: !2399)
!2912 = !DILocation(line: 678, column: 23, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 678, column: 17)
!2914 = !DILocation(line: 678, column: 17, scope: !2913)
!2915 = !DILocation(line: 678, column: 17, scope: !2399)
!2916 = !DILocation(line: 0, scope: !2311, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 679, column: 17, scope: !2913)
!2918 = !DILocation(line: 567, column: 21, scope: !2311, inlinedAt: !2917)
!2919 = !DILocation(line: 567, column: 27, scope: !2311, inlinedAt: !2917)
!2920 = !DILocation(line: 567, column: 18, scope: !2311, inlinedAt: !2917)
!2921 = !DILocation(line: 567, column: 48, scope: !2311, inlinedAt: !2917)
!2922 = !DILocation(line: 567, column: 39, scope: !2311, inlinedAt: !2917)
!2923 = !DILocation(line: 568, column: 22, scope: !2311, inlinedAt: !2917)
!2924 = !DILocation(line: 568, column: 48, scope: !2311, inlinedAt: !2917)
!2925 = !DILocation(line: 568, column: 70, scope: !2311, inlinedAt: !2917)
!2926 = !DILocation(line: 568, column: 72, scope: !2311, inlinedAt: !2917)
!2927 = !DILocation(line: 568, column: 60, scope: !2311, inlinedAt: !2917)
!2928 = !DILocation(line: 570, column: 9, scope: !2311, inlinedAt: !2917)
!2929 = !DILocation(line: 571, column: 9, scope: !2337, inlinedAt: !2917)
!2930 = !DILocation(line: 571, column: 57, scope: !2337, inlinedAt: !2917)
!2931 = !DILocation(line: 573, column: 9, scope: !2340, inlinedAt: !2917)
!2932 = !DILocation(line: 573, column: 57, scope: !2340, inlinedAt: !2917)
!2933 = !DILocation(line: 575, column: 9, scope: !2340, inlinedAt: !2917)
!2934 = !DILocation(line: 681, column: 17, scope: !2913)
!2935 = !DILocation(line: 683, column: 13, scope: !2399)
!2936 = !DILocation(line: 672, column: 59, scope: !2400)
!2937 = !DILocation(line: 672, column: 53, scope: !2400)
!2938 = distinct !{!2938, !2897, !2939}
!2939 = !DILocation(line: 684, column: 9, scope: !2397)
!2940 = !DILocation(line: 688, column: 15, scope: !2404)
!2941 = !DILocation(line: 688, column: 31, scope: !2404)
!2942 = !DILocation(line: 690, column: 19, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 690, column: 13)
!2944 = !DILocation(line: 690, column: 13, scope: !2943)
!2945 = !DILocation(line: 690, column: 13, scope: !2404)
!2946 = !DILocation(line: 692, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 691, column: 9)
!2948 = !DILocation(line: 692, column: 13, scope: !2947)
!2949 = !DILocation(line: 692, column: 48, scope: !2947)
!2950 = !DILocation(line: 692, column: 38, scope: !2947)
!2951 = !DILocation(line: 692, column: 82, scope: !2947)
!2952 = !DILocation(line: 693, column: 76, scope: !2947)
!2953 = !DILocation(line: 693, column: 66, scope: !2947)
!2954 = !DILocation(line: 693, column: 13, scope: !2947)
!2955 = !DILocation(line: 693, column: 64, scope: !2947)
!2956 = !DILocation(line: 694, column: 66, scope: !2947)
!2957 = !DILocation(line: 694, column: 13, scope: !2947)
!2958 = !DILocation(line: 694, column: 64, scope: !2947)
!2959 = !DILocation(line: 695, column: 66, scope: !2947)
!2960 = !DILocation(line: 695, column: 13, scope: !2947)
!2961 = !DILocation(line: 695, column: 64, scope: !2947)
!2962 = !DILocation(line: 696, column: 66, scope: !2947)
!2963 = !DILocation(line: 696, column: 13, scope: !2947)
!2964 = !DILocation(line: 696, column: 64, scope: !2947)
!2965 = !DILocation(line: 697, column: 42, scope: !2947)
!2966 = !DILocation(line: 697, column: 30, scope: !2947)
!2967 = !DILocation(line: 699, column: 23, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 699, column: 17)
!2969 = !DILocation(line: 699, column: 36, scope: !2968)
!2970 = !DILocation(line: 699, column: 17, scope: !2947)
!2971 = !DILocation(line: 700, column: 23, scope: !2968)
!2972 = !DILocation(line: 700, column: 46, scope: !2968)
!2973 = !DILocation(line: 700, column: 65, scope: !2968)
!2974 = !DILocation(line: 700, column: 17, scope: !2968)
!2975 = !DILocation(line: 702, column: 28, scope: !2403)
!2976 = !DILocation(line: 702, column: 22, scope: !2403)
!2977 = !DILocation(line: 0, scope: !2403)
!2978 = !DILocation(line: 702, column: 9, scope: !2403)
!2979 = !DILocation(line: 704, column: 32, scope: !2407)
!2980 = !DILocation(line: 704, column: 52, scope: !2407)
!2981 = !DILocation(line: 0, scope: !2407)
!2982 = !DILocation(line: 705, column: 62, scope: !2407)
!2983 = !DILocation(line: 705, column: 31, scope: !2407)
!2984 = !DILocation(line: 707, column: 18, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 707, column: 17)
!2986 = !DILocation(line: 707, column: 40, scope: !2985)
!2987 = !DILocation(line: 707, column: 64, scope: !2985)
!2988 = !DILocation(line: 707, column: 17, scope: !2407)
!2989 = !DILocation(line: 709, column: 48, scope: !2985)
!2990 = !DILocation(line: 709, column: 69, scope: !2985)
!2991 = !DILocation(line: 709, column: 17, scope: !2985)
!2992 = !DILocation(line: 709, column: 46, scope: !2985)
!2993 = !DILocation(line: 711, column: 23, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 711, column: 17)
!2995 = !DILocation(line: 711, column: 17, scope: !2994)
!2996 = !DILocation(line: 711, column: 17, scope: !2407)
!2997 = !DILocation(line: 0, scope: !2276, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 712, column: 17, scope: !2994)
!2999 = !DILocation(line: 554, column: 21, scope: !2276, inlinedAt: !2998)
!3000 = !DILocation(line: 554, column: 27, scope: !2276, inlinedAt: !2998)
!3001 = !DILocation(line: 554, column: 18, scope: !2276, inlinedAt: !2998)
!3002 = !DILocation(line: 554, column: 48, scope: !2276, inlinedAt: !2998)
!3003 = !DILocation(line: 554, column: 39, scope: !2276, inlinedAt: !2998)
!3004 = !DILocation(line: 555, column: 22, scope: !2276, inlinedAt: !2998)
!3005 = !DILocation(line: 555, column: 50, scope: !2276, inlinedAt: !2998)
!3006 = !DILocation(line: 555, column: 66, scope: !2276, inlinedAt: !2998)
!3007 = !DILocation(line: 555, column: 48, scope: !2276, inlinedAt: !2998)
!3008 = !DILocation(line: 555, column: 71, scope: !2276, inlinedAt: !2998)
!3009 = !DILocation(line: 555, column: 87, scope: !2276, inlinedAt: !2998)
!3010 = !DILocation(line: 555, column: 90, scope: !2276, inlinedAt: !2998)
!3011 = !DILocation(line: 555, column: 69, scope: !2276, inlinedAt: !2998)
!3012 = !DILocation(line: 557, column: 9, scope: !2276, inlinedAt: !2998)
!3013 = !DILocation(line: 558, column: 9, scope: !2303, inlinedAt: !2998)
!3014 = !DILocation(line: 558, column: 57, scope: !2303, inlinedAt: !2998)
!3015 = !DILocation(line: 560, column: 9, scope: !2306, inlinedAt: !2998)
!3016 = !DILocation(line: 560, column: 57, scope: !2306, inlinedAt: !2998)
!3017 = !DILocation(line: 562, column: 9, scope: !2306, inlinedAt: !2998)
!3018 = !DILocation(line: 714, column: 17, scope: !2994)
!3019 = !DILocation(line: 715, column: 13, scope: !2407)
!3020 = !DILocation(line: 702, column: 61, scope: !2408)
!3021 = !DILocation(line: 702, column: 54, scope: !2408)
!3022 = distinct !{!3022, !2978, !3023}
!3023 = !DILocation(line: 716, column: 9, scope: !2403)
!3024 = !DILocation(line: 0, scope: !2540)
!3025 = !DILocation(line: 723, column: 20, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 723, column: 13)
!3027 = !DILocation(line: 0, scope: !2411)
!3028 = !DILocation(line: 723, column: 14, scope: !3026)
!3029 = !DILocation(line: 723, column: 13, scope: !2411)
!3030 = !DILocation(line: 724, column: 13, scope: !3026)
!3031 = !DILocation(line: 726, column: 19, scope: !2416)
!3032 = !DILocation(line: 726, column: 13, scope: !2416)
!3033 = !DILocation(line: 0, scope: !2416)
!3034 = !DILocation(line: 726, column: 13, scope: !2411)
!3035 = !DILocation(line: 728, column: 17, scope: !2415)
!3036 = !DILocation(line: 0, scope: !2413)
!3037 = !DILocation(line: 0, scope: !2418)
!3038 = !DILocation(line: 733, column: 37, scope: !2418)
!3039 = !DILocation(line: 734, column: 41, scope: !2418)
!3040 = !DILocation(line: 735, column: 41, scope: !2418)
!3041 = !DILocation(line: 733, column: 26, scope: !2418)
!3042 = !DILocation(line: 736, column: 21, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 736, column: 21)
!3044 = !DILocation(line: 737, column: 38, scope: !2418)
!3045 = !DILocation(line: 733, column: 46, scope: !2418)
!3046 = !DILocation(line: 734, column: 60, scope: !2418)
!3047 = !DILocation(line: 735, column: 60, scope: !2418)
!3048 = !DILocation(line: 737, column: 44, scope: !2418)
!3049 = !DILocation(line: 734, column: 62, scope: !2418)
!3050 = !DILocation(line: 735, column: 62, scope: !2418)
!3051 = !DILocation(line: 862, column: 9, scope: !2460)
!3052 = !DILocation(line: 0, scope: !2422)
!3053 = !DILocation(line: 740, column: 17, scope: !2422)
!3054 = !DILocation(line: 742, column: 37, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 741, column: 17)
!3056 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 740, column: 17)
!3057 = !DILocation(line: 742, column: 46, scope: !3055)
!3058 = !DILocation(line: 743, column: 41, scope: !3055)
!3059 = !DILocation(line: 743, column: 61, scope: !3055)
!3060 = !DILocation(line: 743, column: 60, scope: !3055)
!3061 = !DILocation(line: 744, column: 41, scope: !3055)
!3062 = !DILocation(line: 744, column: 61, scope: !3055)
!3063 = !DILocation(line: 744, column: 60, scope: !3055)
!3064 = !DILocation(line: 742, column: 26, scope: !3055)
!3065 = !DILocation(line: 745, column: 68, scope: !3055)
!3066 = !DILocation(line: 745, column: 48, scope: !3055)
!3067 = !DILocation(line: 745, column: 21, scope: !3055)
!3068 = !DILocation(line: 745, column: 66, scope: !3055)
!3069 = !DILocation(line: 746, column: 52, scope: !3055)
!3070 = !DILocation(line: 746, column: 44, scope: !3055)
!3071 = !DILocation(line: 746, column: 38, scope: !3055)
!3072 = !DILocation(line: 740, column: 51, scope: !3056)
!3073 = !DILocation(line: 740, column: 41, scope: !3056)
!3074 = distinct !{!3074, !3053, !3075}
!3075 = !DILocation(line: 747, column: 17, scope: !2422)
!3076 = !DILocation(line: 749, column: 18, scope: !2416)
!3077 = !DILocation(line: 751, column: 13, scope: !2424)
!3078 = !DILocation(line: 752, column: 34, scope: !2424)
!3079 = !DILocation(line: 752, column: 27, scope: !2424)
!3080 = !DILocation(line: 752, column: 24, scope: !2424)
!3081 = !DILocation(line: 753, column: 21, scope: !2424)
!3082 = !DILocation(line: 753, column: 54, scope: !2424)
!3083 = !DILocation(line: 753, column: 44, scope: !2424)
!3084 = !DILocation(line: 753, column: 75, scope: !2424)
!3085 = !DILocation(line: 753, column: 65, scope: !2424)
!3086 = !DILocation(line: 753, column: 13, scope: !2424)
!3087 = !DILocation(line: 754, column: 37, scope: !2424)
!3088 = !DILocation(line: 754, column: 55, scope: !2424)
!3089 = !DILocation(line: 754, column: 13, scope: !2424)
!3090 = !DILocation(line: 754, column: 28, scope: !2424)
!3091 = !DILocation(line: 0, scope: !2427)
!3092 = !DILocation(line: 758, column: 21, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 758, column: 21)
!3094 = !DILocation(line: 758, column: 21, scope: !2433)
!3095 = !DILocation(line: 0, scope: !2436)
!3096 = !DILocation(line: 786, column: 31, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 786, column: 25)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 785, column: 17)
!3099 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 784, column: 17)
!3100 = !DILocation(line: 786, column: 41, scope: !3097)
!3101 = !DILocation(line: 786, column: 25, scope: !3098)
!3102 = !DILocation(line: 759, column: 31, scope: !3093)
!3103 = !DILocation(line: 759, column: 21, scope: !3093)
!3104 = !DILocation(line: 0, scope: !1646, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 760, column: 22, scope: !2433)
!3106 = !DILocation(line: 93, column: 15, scope: !1658, inlinedAt: !3105)
!3107 = !DILocation(line: 93, column: 9, scope: !1658, inlinedAt: !3105)
!3108 = !DILocation(line: 93, column: 9, scope: !1646, inlinedAt: !3105)
!3109 = !DILocation(line: 94, column: 16, scope: !1658, inlinedAt: !3105)
!3110 = !DILocation(line: 94, column: 9, scope: !1658, inlinedAt: !3105)
!3111 = !DILocation(line: 96, column: 26, scope: !1658, inlinedAt: !3105)
!3112 = !DILocation(line: 96, column: 42, scope: !1658, inlinedAt: !3105)
!3113 = !DILocation(line: 96, column: 75, scope: !1658, inlinedAt: !3105)
!3114 = !DILocation(line: 96, column: 16, scope: !1658, inlinedAt: !3105)
!3115 = !DILocation(line: 96, column: 9, scope: !1658, inlinedAt: !3105)
!3116 = !DILocation(line: 0, scope: !1658, inlinedAt: !3105)
!3117 = !DILocation(line: 762, column: 21, scope: !2432)
!3118 = !DILocation(line: 762, column: 21, scope: !2433)
!3119 = !DILocation(line: 764, column: 32, scope: !2431)
!3120 = !DILocation(line: 764, column: 21, scope: !2431)
!3121 = !DILocation(line: 765, column: 25, scope: !2431)
!3122 = !DILocation(line: 767, column: 56, scope: !2429)
!3123 = !DILocation(line: 767, column: 46, scope: !2429)
!3124 = !DILocation(line: 0, scope: !2429)
!3125 = !DILocation(line: 769, column: 44, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 769, column: 29)
!3127 = !DILocation(line: 769, column: 29, scope: !2429)
!3128 = !DILocation(line: 0, scope: !2430)
!3129 = !DILocation(line: 758, column: 27, scope: !3093)
!3130 = !DILocation(line: 759, column: 44, scope: !3093)
!3131 = !DILocation(line: 760, column: 41, scope: !2433)
!3132 = !DILocation(line: 764, column: 42, scope: !2431)
!3133 = !DILocation(line: 768, column: 39, scope: !2429)
!3134 = !DILocation(line: 770, column: 46, scope: !3126)
!3135 = !DILocation(line: 770, column: 29, scope: !3126)
!3136 = !DILocation(line: 773, column: 42, scope: !2430)
!3137 = !DILocation(line: 777, column: 35, scope: !2438)
!3138 = !DILocation(line: 777, column: 31, scope: !2438)
!3139 = !DILocation(line: 779, column: 34, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 778, column: 13)
!3141 = !DILocation(line: 780, column: 17, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 780, column: 17)
!3143 = !DILocation(line: 781, column: 13, scope: !3140)
!3144 = !DILocation(line: 788, column: 35, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 787, column: 21)
!3146 = !DILocation(line: 788, column: 61, scope: !3145)
!3147 = !DILocation(line: 788, column: 25, scope: !3145)
!3148 = !DILocation(line: 789, column: 33, scope: !3145)
!3149 = !DILocation(line: 789, column: 48, scope: !3145)
!3150 = !DILocation(line: 789, column: 25, scope: !3145)
!3151 = !DILocation(line: 791, column: 21, scope: !3145)
!3152 = !DILocation(line: 0, scope: !3097)
!3153 = !DILocation(line: 796, column: 9, scope: !2425)
!3154 = !DILocation(line: 796, column: 9, scope: !2424)
!3155 = !DILocation(line: 799, column: 13, scope: !2440)
!3156 = !DILocation(line: 800, column: 21, scope: !2440)
!3157 = !DILocation(line: 800, column: 53, scope: !2440)
!3158 = !DILocation(line: 800, column: 43, scope: !2440)
!3159 = !DILocation(line: 800, column: 74, scope: !2440)
!3160 = !DILocation(line: 800, column: 64, scope: !2440)
!3161 = !DILocation(line: 800, column: 13, scope: !2440)
!3162 = !DILocation(line: 801, column: 37, scope: !2440)
!3163 = !DILocation(line: 801, column: 55, scope: !2440)
!3164 = !DILocation(line: 801, column: 16, scope: !2440)
!3165 = !DILocation(line: 801, column: 28, scope: !2440)
!3166 = !DILocation(line: 0, scope: !2442)
!3167 = !DILocation(line: 803, column: 13, scope: !2442)
!3168 = !DILocation(line: 0, scope: !2448)
!3169 = !DILocation(line: 0, scope: !2444)
!3170 = !DILocation(line: 0, scope: !2450)
!3171 = !DILocation(line: 813, column: 31, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 813, column: 25)
!3173 = !DILocation(line: 813, column: 25, scope: !3172)
!3174 = !DILocation(line: 813, column: 25, scope: !2450)
!3175 = !DILocation(line: 844, column: 17, scope: !2440)
!3176 = !DILocation(line: 814, column: 35, scope: !3172)
!3177 = !DILocation(line: 814, column: 48, scope: !3172)
!3178 = !DILocation(line: 814, column: 25, scope: !3172)
!3179 = !DILocation(line: 815, column: 45, scope: !2450)
!3180 = !DILocation(line: 0, scope: !1553, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 815, column: 26, scope: !2450)
!3182 = !DILocation(line: 84, column: 15, scope: !1566, inlinedAt: !3181)
!3183 = !DILocation(line: 84, column: 9, scope: !1566, inlinedAt: !3181)
!3184 = !DILocation(line: 84, column: 9, scope: !1553, inlinedAt: !3181)
!3185 = !DILocation(line: 85, column: 16, scope: !1566, inlinedAt: !3181)
!3186 = !DILocation(line: 85, column: 9, scope: !1566, inlinedAt: !3181)
!3187 = !DILocation(line: 87, column: 26, scope: !1566, inlinedAt: !3181)
!3188 = !DILocation(line: 87, column: 42, scope: !1566, inlinedAt: !3181)
!3189 = !DILocation(line: 87, column: 75, scope: !1566, inlinedAt: !3181)
!3190 = !DILocation(line: 87, column: 16, scope: !1566, inlinedAt: !3181)
!3191 = !DILocation(line: 87, column: 9, scope: !1566, inlinedAt: !3181)
!3192 = !DILocation(line: 0, scope: !1566, inlinedAt: !3181)
!3193 = !DILocation(line: 816, column: 67, scope: !2450)
!3194 = !DILocation(line: 816, column: 48, scope: !2450)
!3195 = !DILocation(line: 816, column: 21, scope: !2450)
!3196 = !DILocation(line: 816, column: 65, scope: !2450)
!3197 = !DILocation(line: 818, column: 25, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 818, column: 25)
!3199 = !DILocation(line: 818, column: 25, scope: !2450)
!3200 = !DILocation(line: 820, column: 36, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 819, column: 21)
!3202 = !DILocation(line: 820, column: 46, scope: !3201)
!3203 = !DILocation(line: 820, column: 25, scope: !3201)
!3204 = !DILocation(line: 821, column: 35, scope: !3201)
!3205 = !DILocation(line: 821, column: 61, scope: !3201)
!3206 = !DILocation(line: 821, column: 25, scope: !3201)
!3207 = !DILocation(line: 822, column: 40, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 822, column: 29)
!3209 = !DILocation(line: 823, column: 57, scope: !3208)
!3210 = !DILocation(line: 823, column: 47, scope: !3208)
!3211 = !DILocation(line: 823, column: 29, scope: !3208)
!3212 = !DILocation(line: 811, column: 40, scope: !2450)
!3213 = !DILocation(line: 823, column: 44, scope: !3208)
!3214 = !DILocation(line: 829, column: 31, scope: !2444)
!3215 = !DILocation(line: 830, column: 21, scope: !2444)
!3216 = !DILocation(line: 832, column: 40, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 832, column: 25)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 831, column: 17)
!3219 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 830, column: 21)
!3220 = !DILocation(line: 832, column: 25, scope: !3218)
!3221 = !DILocation(line: 833, column: 25, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 833, column: 25)
!3223 = !DILocation(line: 835, column: 46, scope: !3217)
!3224 = !DILocation(line: 835, column: 42, scope: !3217)
!3225 = !DILocation(line: 837, column: 26, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 837, column: 26)
!3227 = !DILocation(line: 837, column: 26, scope: !3219)
!3228 = !DILocation(line: 839, column: 29, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 838, column: 17)
!3230 = !DILocation(line: 839, column: 43, scope: !3229)
!3231 = !DILocation(line: 839, column: 71, scope: !3229)
!3232 = !DILocation(line: 839, column: 85, scope: !3229)
!3233 = !DILocation(line: 839, column: 74, scope: !3229)
!3234 = !DILocation(line: 839, column: 21, scope: !3229)
!3235 = !DILocation(line: 840, column: 42, scope: !3229)
!3236 = !DILocation(line: 840, column: 38, scope: !3229)
!3237 = !DILocation(line: 841, column: 17, scope: !3229)
!3238 = !DILocation(line: 803, column: 46, scope: !2445)
!3239 = !DILocation(line: 803, column: 37, scope: !2445)
!3240 = distinct !{!3240, !3167, !3241}
!3241 = !DILocation(line: 842, column: 13, scope: !2442)
!3242 = !DILocation(line: 846, column: 35, scope: !2455)
!3243 = !DILocation(line: 846, column: 21, scope: !2456)
!3244 = !DILocation(line: 0, scope: !2453)
!3245 = !DILocation(line: 854, column: 35, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 854, column: 29)
!3247 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 853, column: 21)
!3248 = !DILocation(line: 854, column: 45, scope: !3246)
!3249 = !DILocation(line: 854, column: 29, scope: !3247)
!3250 = !DILocation(line: 848, column: 38, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 847, column: 17)
!3252 = !DILocation(line: 849, column: 21, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 849, column: 21)
!3254 = !DILocation(line: 850, column: 17, scope: !3251)
!3255 = !DILocation(line: 855, column: 37, scope: !3246)
!3256 = !DILocation(line: 855, column: 51, scope: !3246)
!3257 = !DILocation(line: 855, column: 29, scope: !3246)
!3258 = !DILocation(line: 855, column: 111, scope: !3246)
!3259 = !DILocation(line: 858, column: 9, scope: !2425)
!3260 = !DILocation(line: 864, column: 34, scope: !2459)
!3261 = !DILocation(line: 0, scope: !2459)
!3262 = !DILocation(line: 865, column: 19, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 865, column: 13)
!3264 = !DILocation(line: 865, column: 13, scope: !3263)
!3265 = !DILocation(line: 865, column: 13, scope: !2459)
!3266 = !DILocation(line: 0, scope: !2234, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 866, column: 13, scope: !3263)
!3268 = !DILocation(line: 534, column: 21, scope: !2234, inlinedAt: !3267)
!3269 = !DILocation(line: 534, column: 18, scope: !2234, inlinedAt: !3267)
!3270 = !DILocation(line: 534, column: 48, scope: !2234, inlinedAt: !3267)
!3271 = !DILocation(line: 534, column: 39, scope: !2234, inlinedAt: !3267)
!3272 = !DILocation(line: 535, column: 9, scope: !2234, inlinedAt: !3267)
!3273 = !DILocation(line: 537, column: 9, scope: !2248, inlinedAt: !3267)
!3274 = !DILocation(line: 537, column: 32, scope: !2248, inlinedAt: !3267)
!3275 = !DILocation(line: 537, column: 66, scope: !2248, inlinedAt: !3267)
!3276 = !DILocation(line: 537, column: 91, scope: !2248, inlinedAt: !3267)
!3277 = !DILocation(line: 538, column: 9, scope: !2248, inlinedAt: !3267)
!3278 = !DILocation(line: 538, column: 32, scope: !2248, inlinedAt: !3267)
!3279 = !DILocation(line: 538, column: 66, scope: !2248, inlinedAt: !3267)
!3280 = !DILocation(line: 538, column: 91, scope: !2248, inlinedAt: !3267)
!3281 = !DILocation(line: 539, column: 5, scope: !2248, inlinedAt: !3267)
!3282 = !DILocation(line: 542, column: 9, scope: !2259, inlinedAt: !3267)
!3283 = !DILocation(line: 542, column: 32, scope: !2259, inlinedAt: !3267)
!3284 = !DILocation(line: 542, column: 66, scope: !2259, inlinedAt: !3267)
!3285 = !DILocation(line: 542, column: 91, scope: !2259, inlinedAt: !3267)
!3286 = !DILocation(line: 543, column: 9, scope: !2259, inlinedAt: !3267)
!3287 = !DILocation(line: 543, column: 32, scope: !2259, inlinedAt: !3267)
!3288 = !DILocation(line: 543, column: 66, scope: !2259, inlinedAt: !3267)
!3289 = !DILocation(line: 543, column: 91, scope: !2259, inlinedAt: !3267)
!3290 = !DILocation(line: 544, column: 5, scope: !2259, inlinedAt: !3267)
!3291 = !DILocation(line: 547, column: 12, scope: !2270, inlinedAt: !3267)
!3292 = !DILocation(line: 547, column: 9, scope: !2270, inlinedAt: !3267)
!3293 = !DILocation(line: 547, column: 34, scope: !2270, inlinedAt: !3267)
!3294 = !DILocation(line: 548, column: 9, scope: !2270, inlinedAt: !3267)
!3295 = !DILocation(line: 548, column: 34, scope: !2270, inlinedAt: !3267)
!3296 = !DILocation(line: 869, column: 16, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 868, column: 9)
!3298 = !DILocation(line: 869, column: 13, scope: !3297)
!3299 = !DILocation(line: 869, column: 38, scope: !3297)
!3300 = !DILocation(line: 870, column: 13, scope: !3297)
!3301 = !DILocation(line: 870, column: 38, scope: !3297)
!3302 = !DILocation(line: 875, column: 36, scope: !2378)
!3303 = !DILocation(line: 875, column: 68, scope: !2378)
!3304 = !DILocation(line: 875, column: 5, scope: !2378)
!3305 = !DILocation(line: 878, column: 21, scope: !2378)
!3306 = !DILocation(line: 878, column: 34, scope: !2378)
!3307 = !DILocation(line: 878, column: 47, scope: !2378)
!3308 = !DILocation(line: 878, column: 39, scope: !2378)
!3309 = !DILocation(line: 879, column: 18, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 879, column: 9)
!3311 = !DILocation(line: 879, column: 9, scope: !3310)
!3312 = !DILocation(line: 879, column: 9, scope: !2378)
!3313 = !DILocation(line: 880, column: 16, scope: !3310)
!3314 = !DILocation(line: 880, column: 59, scope: !3310)
!3315 = !DILocation(line: 881, column: 16, scope: !3310)
!3316 = !DILocation(line: 881, column: 59, scope: !3310)
!3317 = !DILocation(line: 882, column: 16, scope: !3310)
!3318 = !DILocation(line: 882, column: 59, scope: !3310)
!3319 = !DILocation(line: 882, column: 13, scope: !3310)
!3320 = !DILocation(line: 880, column: 13, scope: !3310)
!3321 = !DILocation(line: 880, column: 9, scope: !3310)
!3322 = !DILocation(line: 883, column: 32, scope: !2378)
!3323 = !DILocation(line: 883, column: 11, scope: !2378)
!3324 = !DILocation(line: 883, column: 21, scope: !2378)
!3325 = !DILocation(line: 883, column: 5, scope: !2378)
!3326 = !DILocation(line: 883, column: 30, scope: !2378)
!3327 = !DILocation(line: 888, column: 9, scope: !2378)
!3328 = !DILocation(line: 890, column: 19, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 890, column: 13)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 889, column: 5)
!3331 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 888, column: 9)
!3332 = !DILocation(line: 890, column: 34, scope: !3329)
!3333 = !DILocation(line: 890, column: 43, scope: !3329)
!3334 = !DILocation(line: 890, column: 55, scope: !3329)
!3335 = !DILocation(line: 890, column: 66, scope: !3329)
!3336 = !DILocation(line: 891, column: 21, scope: !3329)
!3337 = !DILocation(line: 891, column: 40, scope: !3329)
!3338 = !DILocation(line: 891, column: 32, scope: !3329)
!3339 = !DILocation(line: 891, column: 54, scope: !3329)
!3340 = !DILocation(line: 892, column: 13, scope: !3329)
!3341 = !DILocation(line: 892, column: 56, scope: !3329)
!3342 = !DILocation(line: 892, column: 53, scope: !3329)
!3343 = !DILocation(line: 893, column: 13, scope: !3329)
!3344 = !DILocation(line: 893, column: 16, scope: !3329)
!3345 = !DILocation(line: 893, column: 50, scope: !3329)
!3346 = !DILocation(line: 890, column: 13, scope: !3330)
!3347 = !DILocation(line: 895, column: 26, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 894, column: 9)
!3349 = !DILocation(line: 899, column: 38, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 899, column: 13)
!3351 = !DILocation(line: 899, column: 49, scope: !3350)
!3352 = !DILocation(line: 899, column: 68, scope: !3350)
!3353 = !DILocation(line: 899, column: 60, scope: !3350)
!3354 = !DILocation(line: 899, column: 13, scope: !3330)
!3355 = !DILocation(line: 901, column: 26, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 900, column: 9)
!3357 = !DILocation(line: 902, column: 9, scope: !3356)
!3358 = !DILocation(line: 904, column: 1, scope: !2378)
!3359 = !DISubprogram(name: "x264_mb_mc", scope: !6, file: !6, line: 313, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3360 = distinct !DISubprogram(name: "x264_macroblock_probe_skip", scope: !3, file: !3, line: 910, type: !3361, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!195, !232, !195}
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3375, !3376, !3379, !3380, !3382, !3384, !3387, !3388, !3390}
!3364 = !DILocalVariable(name: "h", arg: 1, scope: !3360, file: !3, line: 910, type: !232)
!3365 = !DILocalVariable(name: "b_bidir", arg: 2, scope: !3360, file: !3, line: 910, type: !195)
!3366 = !DILocalVariable(name: "dct4x4", scope: !3360, file: !3, line: 912, type: !1723, align: 128)
!3367 = !DILocalVariable(name: "dct2x2", scope: !3360, file: !3, line: 913, type: !1070, align: 128)
!3368 = !DILocalVariable(name: "dctscan", scope: !3360, file: !3, line: 914, type: !879, align: 128)
!3369 = !DILocalVariable(name: "mvp", scope: !3360, file: !3, line: 915, type: !771, align: 32)
!3370 = !DILocalVariable(name: "i_qp", scope: !3360, file: !3, line: 917, type: !195)
!3371 = !DILocalVariable(name: "thresh", scope: !3360, file: !3, line: 918, type: !195)
!3372 = !DILocalVariable(name: "ssd", scope: !3360, file: !3, line: 918, type: !195)
!3373 = !DILocalVariable(name: "i8x8", scope: !3374, file: !3, line: 932, type: !195)
!3374 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 932, column: 5)
!3375 = !DILocalVariable(name: "i_decimate_mb", scope: !3374, file: !3, line: 932, type: !195)
!3376 = !DILocalVariable(name: "fenc_offset", scope: !3377, file: !3, line: 934, type: !195)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 933, column: 5)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 932, column: 5)
!3379 = !DILocalVariable(name: "fdec_offset", scope: !3377, file: !3, line: 935, type: !195)
!3380 = !DILocalVariable(name: "i4x4", scope: !3381, file: !3, line: 940, type: !195)
!3381 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 940, column: 9)
!3382 = !DILocalVariable(name: "ch", scope: !3383, file: !3, line: 955, type: !195)
!3383 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 955, column: 5)
!3384 = !DILocalVariable(name: "p_src", scope: !3385, file: !3, line: 957, type: !424)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 956, column: 5)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 955, column: 5)
!3387 = !DILocalVariable(name: "p_dst", scope: !3385, file: !3, line: 958, type: !424)
!3388 = !DILocalVariable(name: "i4x4", scope: !3389, file: !3, line: 998, type: !195)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 998, column: 9)
!3390 = !DILocalVariable(name: "i_decimate_mb", scope: !3389, file: !3, line: 998, type: !195)
!3391 = distinct !DIAssignID()
!3392 = !DILocation(line: 0, scope: !3360)
!3393 = distinct !DIAssignID()
!3394 = distinct !DIAssignID()
!3395 = !DILocation(line: 912, column: 5, scope: !3360)
!3396 = !DILocation(line: 913, column: 5, scope: !3360)
!3397 = !DILocation(line: 914, column: 5, scope: !3360)
!3398 = !DILocation(line: 917, column: 22, scope: !3360)
!3399 = !DILocation(line: 920, column: 10, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 920, column: 9)
!3401 = !DILocation(line: 920, column: 9, scope: !3360)
!3402 = !DILocation(line: 923, column: 42, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 921, column: 5)
!3404 = !DILocation(line: 923, column: 30, scope: !3403)
!3405 = !DILocation(line: 923, column: 61, scope: !3403)
!3406 = !DILocation(line: 923, column: 55, scope: !3403)
!3407 = !DILocation(line: 923, column: 78, scope: !3403)
!3408 = !DILocation(line: 923, column: 72, scope: !3403)
!3409 = !DILocation(line: 0, scope: !2561, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 923, column: 18, scope: !3403)
!3411 = !DILocation(line: 202, column: 17, scope: !2561, inlinedAt: !3410)
!3412 = !DILocation(line: 202, column: 14, scope: !2561, inlinedAt: !3410)
!3413 = !DILocation(line: 923, column: 18, scope: !3403)
!3414 = !DILocation(line: 924, column: 30, scope: !3403)
!3415 = !DILocation(line: 924, column: 55, scope: !3403)
!3416 = !DILocation(line: 924, column: 72, scope: !3403)
!3417 = !DILocation(line: 0, scope: !2561, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 924, column: 18, scope: !3403)
!3419 = !DILocation(line: 202, column: 17, scope: !2561, inlinedAt: !3418)
!3420 = !DILocation(line: 202, column: 14, scope: !2561, inlinedAt: !3418)
!3421 = !DILocation(line: 924, column: 18, scope: !3403)
!3422 = !DILocation(line: 927, column: 12, scope: !3403)
!3423 = !DILocation(line: 927, column: 15, scope: !3403)
!3424 = !DILocation(line: 927, column: 34, scope: !3403)
!3425 = !DILocation(line: 927, column: 24, scope: !3403)
!3426 = !DILocation(line: 928, column: 34, scope: !3403)
!3427 = !DILocation(line: 928, column: 58, scope: !3403)
!3428 = !DILocation(line: 928, column: 48, scope: !3403)
!3429 = !DILocation(line: 929, column: 24, scope: !3403)
!3430 = !DILocation(line: 929, column: 32, scope: !3403)
!3431 = !DILocation(line: 929, column: 55, scope: !3403)
!3432 = !DILocation(line: 927, column: 9, scope: !3403)
!3433 = !DILocation(line: 930, column: 5, scope: !3403)
!3434 = !DILocation(line: 0, scope: !3374)
!3435 = !DILocation(line: 932, column: 5, scope: !3374)
!3436 = !DILocation(line: 934, column: 36, scope: !3377)
!3437 = !DILocation(line: 934, column: 47, scope: !3377)
!3438 = !DILocation(line: 934, column: 66, scope: !3377)
!3439 = !DILocation(line: 934, column: 40, scope: !3377)
!3440 = !DILocation(line: 0, scope: !3377)
!3441 = !DILocation(line: 935, column: 66, scope: !3377)
!3442 = !DILocation(line: 935, column: 40, scope: !3377)
!3443 = !DILocation(line: 937, column: 17, scope: !3377)
!3444 = !DILocation(line: 937, column: 37, scope: !3377)
!3445 = !DILocation(line: 937, column: 57, scope: !3377)
!3446 = !DILocation(line: 938, column: 37, scope: !3377)
!3447 = !DILocation(line: 938, column: 57, scope: !3377)
!3448 = !DILocation(line: 937, column: 9, scope: !3377)
!3449 = !DILocation(line: 0, scope: !3381)
!3450 = !DILocation(line: 942, column: 28, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 942, column: 17)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 941, column: 9)
!3453 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 940, column: 9)
!3454 = !DILocation(line: 942, column: 53, scope: !3451)
!3455 = !DILocation(line: 942, column: 82, scope: !3451)
!3456 = !DILocation(line: 942, column: 18, scope: !3451)
!3457 = !DILocation(line: 942, column: 17, scope: !3452)
!3458 = !DILocation(line: 944, column: 24, scope: !3452)
!3459 = !DILocation(line: 944, column: 13, scope: !3452)
!3460 = !DILocation(line: 945, column: 40, scope: !3452)
!3461 = !DILocation(line: 945, column: 30, scope: !3452)
!3462 = !DILocation(line: 945, column: 27, scope: !3452)
!3463 = !DILocation(line: 946, column: 31, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 946, column: 17)
!3465 = !DILocation(line: 946, column: 17, scope: !3452)
!3466 = !DILocation(line: 932, column: 57, scope: !3378)
!3467 = !DILocation(line: 932, column: 48, scope: !3378)
!3468 = distinct !{!3468, !3435, !3469}
!3469 = !DILocation(line: 949, column: 5, scope: !3374)
!3470 = !DILocation(line: 952, column: 18, scope: !3360)
!3471 = !DILocation(line: 953, column: 15, scope: !3360)
!3472 = !DILocation(line: 953, column: 38, scope: !3360)
!3473 = !DILocation(line: 953, column: 44, scope: !3360)
!3474 = !DILocation(line: 0, scope: !3383)
!3475 = !DILocation(line: 955, column: 5, scope: !3383)
!3476 = !DILocation(line: 957, column: 45, scope: !3385)
!3477 = !DILocation(line: 957, column: 27, scope: !3385)
!3478 = !DILocation(line: 0, scope: !3385)
!3479 = !DILocation(line: 958, column: 27, scope: !3385)
!3480 = !DILocation(line: 960, column: 13, scope: !3385)
!3481 = !DILocation(line: 0, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 963, column: 17)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 961, column: 9)
!3484 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 960, column: 13)
!3485 = !DILocation(line: 963, column: 17, scope: !3483)
!3486 = !DILocation(line: 965, column: 23, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 964, column: 13)
!3488 = !DILocation(line: 965, column: 17, scope: !3487)
!3489 = !DILocation(line: 968, column: 13, scope: !3487)
!3490 = !DILocation(line: 970, column: 17, scope: !3482)
!3491 = !DILocation(line: 972, column: 17, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 972, column: 17)
!3493 = !DILocation(line: 972, column: 39, scope: !3492)
!3494 = !DILocation(line: 972, column: 17, scope: !3483)
!3495 = !DILocation(line: 973, column: 17, scope: !3492)
!3496 = !DILocation(line: 973, column: 55, scope: !3492)
!3497 = !DILocation(line: 980, column: 15, scope: !3385)
!3498 = !DILocation(line: 981, column: 17, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 981, column: 13)
!3500 = !DILocation(line: 981, column: 13, scope: !3385)
!3501 = !DILocation(line: 986, column: 17, scope: !3385)
!3502 = !DILocation(line: 986, column: 9, scope: !3385)
!3503 = !DILocation(line: 988, column: 23, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 988, column: 13)
!3505 = !DILocation(line: 988, column: 45, scope: !3504)
!3506 = !DILocation(line: 988, column: 75, scope: !3504)
!3507 = !DILocation(line: 988, column: 80, scope: !3504)
!3508 = !DILocation(line: 988, column: 112, scope: !3504)
!3509 = !DILocation(line: 988, column: 13, scope: !3504)
!3510 = !DILocation(line: 988, column: 13, scope: !3385)
!3511 = !DILocation(line: 992, column: 17, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 992, column: 13)
!3513 = !DILocation(line: 992, column: 13, scope: !3385)
!3514 = !DILocation(line: 995, column: 17, scope: !3385)
!3515 = !DILocation(line: 995, column: 9, scope: !3385)
!3516 = !DILocation(line: 0, scope: !3389)
!3517 = !DILocation(line: 1000, column: 29, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 999, column: 9)
!3519 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 998, column: 9)
!3520 = !DILocation(line: 1001, column: 28, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1001, column: 17)
!3522 = !DILocation(line: 1001, column: 53, scope: !3521)
!3523 = !DILocation(line: 1001, column: 82, scope: !3521)
!3524 = !DILocation(line: 1001, column: 18, scope: !3521)
!3525 = !DILocation(line: 1001, column: 17, scope: !3518)
!3526 = !DILocation(line: 1003, column: 24, scope: !3518)
!3527 = !DILocation(line: 1003, column: 13, scope: !3518)
!3528 = !DILocation(line: 1004, column: 40, scope: !3518)
!3529 = !DILocation(line: 1004, column: 30, scope: !3518)
!3530 = !DILocation(line: 1005, column: 31, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1005, column: 17)
!3532 = !DILocation(line: 1005, column: 17, scope: !3518)
!3533 = !DILocation(line: 1004, column: 27, scope: !3518)
!3534 = distinct !{!3534, !3475, !3535}
!3535 = !DILocation(line: 1008, column: 5, scope: !3383)
!3536 = !DILocation(line: 1010, column: 11, scope: !3360)
!3537 = !DILocation(line: 1010, column: 21, scope: !3360)
!3538 = !DILocation(line: 1011, column: 5, scope: !3360)
!3539 = !DILocation(line: 1012, column: 1, scope: !3360)
!3540 = distinct !DISubprogram(name: "x264_noise_reduction_update", scope: !3, file: !3, line: 1019, type: !2379, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3541 = !{!3542, !3543, !3545, !3548, !3550, !3554}
!3542 = !DILocalVariable(name: "h", arg: 1, scope: !3540, file: !3, line: 1019, type: !232)
!3543 = !DILocalVariable(name: "cat", scope: !3544, file: !3, line: 1021, type: !195)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1021, column: 5)
!3545 = !DILocalVariable(name: "size", scope: !3546, file: !3, line: 1023, type: !195)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1022, column: 5)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1021, column: 5)
!3548 = !DILocalVariable(name: "weight", scope: !3546, file: !3, line: 1024, type: !3549)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3550 = !DILocalVariable(name: "i", scope: !3551, file: !3, line: 1028, type: !195)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 1028, column: 13)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 1027, column: 9)
!3553 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1026, column: 13)
!3554 = !DILocalVariable(name: "i", scope: !3555, file: !3, line: 1033, type: !195)
!3555 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1033, column: 9)
!3556 = !DILocation(line: 0, scope: !3540)
!3557 = !DILocation(line: 0, scope: !3544)
!3558 = !DILocation(line: 0, scope: !3546)
!3559 = !DILocation(line: 1026, column: 13, scope: !3553)
!3560 = !DILocation(line: 1026, column: 30, scope: !3553)
!3561 = !DILocation(line: 1036, column: 20, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1033, column: 9)
!3563 = !DILocation(line: 1026, column: 13, scope: !3546)
!3564 = !DILocation(line: 0, scope: !3551)
!3565 = !DILocation(line: 1029, column: 44, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1028, column: 13)
!3567 = !DILocation(line: 1029, column: 17, scope: !3566)
!3568 = !DILocation(line: 1030, column: 30, scope: !3552)
!3569 = !DILocation(line: 1031, column: 9, scope: !3552)
!3570 = !DILocation(line: 1035, column: 65, scope: !3562)
!3571 = !DILocation(line: 0, scope: !3555)
!3572 = !DILocation(line: 1035, column: 63, scope: !3562)
!3573 = !DILocation(line: 1036, column: 46, scope: !3562)
!3574 = !DILocation(line: 1036, column: 18, scope: !3562)
!3575 = !DILocation(line: 1037, column: 18, scope: !3562)
!3576 = !DILocation(line: 1037, column: 55, scope: !3562)
!3577 = !DILocation(line: 1037, column: 66, scope: !3562)
!3578 = !DILocation(line: 1037, column: 71, scope: !3562)
!3579 = !DILocation(line: 1037, column: 15, scope: !3562)
!3580 = !DILocation(line: 1035, column: 17, scope: !3562)
!3581 = !DILocation(line: 1034, column: 34, scope: !3562)
!3582 = !DILocation(line: 1034, column: 13, scope: !3562)
!3583 = !DILocation(line: 1033, column: 9, scope: !3555)
!3584 = !{!3585}
!3585 = distinct !{!3585, !3586}
!3586 = distinct !{!3586, !"LVerDomain"}
!3587 = !DILocation(line: 1033, column: 36, scope: !3562)
!3588 = !{!3589}
!3589 = distinct !{!3589, !3586}
!3590 = !DILocation(line: 1037, column: 57, scope: !3562)
!3591 = !{!3592}
!3592 = distinct !{!3592, !3586}
!3593 = !{!3585, !3589}
!3594 = distinct !{!3594, !3583, !3595, !3596, !3597}
!3595 = !DILocation(line: 1037, column: 74, scope: !3555)
!3596 = !{!"llvm.loop.isvectorized", i32 1}
!3597 = !{!"llvm.loop.unroll.runtime.disable"}
!3598 = !DILocation(line: 1033, column: 27, scope: !3562)
!3599 = distinct !{!3599, !3583, !3595, !3596}
!3600 = !DILocation(line: 1039, column: 1, scope: !3540)
!3601 = distinct !DISubprogram(name: "x264_macroblock_encode_p8x8", scope: !3, file: !3, line: 1045, type: !2235, scopeLine: 1046, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3617, !3619, !3622, !3626, !3628, !3629, !3631, !3633}
!3603 = !DILocalVariable(name: "h", arg: 1, scope: !3601, file: !3, line: 1045, type: !232)
!3604 = !DILocalVariable(name: "i8", arg: 2, scope: !3601, file: !3, line: 1045, type: !195)
!3605 = !DILocalVariable(name: "i_qp", scope: !3601, file: !3, line: 1047, type: !195)
!3606 = !DILocalVariable(name: "p_fenc", scope: !3601, file: !3, line: 1048, type: !424)
!3607 = !DILocalVariable(name: "p_fdec", scope: !3601, file: !3, line: 1049, type: !424)
!3608 = !DILocalVariable(name: "b_decimate", scope: !3601, file: !3, line: 1050, type: !195)
!3609 = !DILocalVariable(name: "nnz8x8", scope: !3601, file: !3, line: 1051, type: !195)
!3610 = !DILocalVariable(name: "nz", scope: !3601, file: !3, line: 1052, type: !195)
!3611 = !DILocalVariable(name: "i4", scope: !3612, file: !3, line: 1066, type: !195)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1066, column: 13)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 1065, column: 9)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1059, column: 13)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1058, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1057, column: 9)
!3617 = !DILocalVariable(name: "ch", scope: !3618, file: !3, line: 1075, type: !195)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1075, column: 9)
!3619 = !DILocalVariable(name: "dc", scope: !3620, file: !3, line: 1077, type: !647)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1076, column: 9)
!3621 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 1075, column: 9)
!3622 = !DILocalVariable(name: "dct8x8", scope: !3623, file: !3, line: 1088, type: !1379, align: 128)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1087, column: 9)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1086, column: 13)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1085, column: 5)
!3626 = !DILocalVariable(name: "i_decimate_8x8", scope: !3627, file: !3, line: 1112, type: !195)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1111, column: 9)
!3628 = !DILocalVariable(name: "dct4x4", scope: !3627, file: !3, line: 1113, type: !1723, align: 128)
!3629 = !DILocalVariable(name: "i4", scope: !3630, file: !3, line: 1115, type: !195)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1115, column: 13)
!3631 = !DILocalVariable(name: "ch", scope: !3632, file: !3, line: 1140, type: !195)
!3632 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1140, column: 9)
!3633 = !DILocalVariable(name: "dct4x4", scope: !3634, file: !3, line: 1142, type: !879, align: 128)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1141, column: 9)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1140, column: 9)
!3636 = distinct !DIAssignID()
!3637 = !DILocation(line: 0, scope: !3620)
!3638 = distinct !DIAssignID()
!3639 = !DILocation(line: 0, scope: !3623)
!3640 = distinct !DIAssignID()
!3641 = !DILocation(line: 0, scope: !3627)
!3642 = distinct !DIAssignID()
!3643 = !DILocation(line: 0, scope: !3634)
!3644 = !DILocation(line: 0, scope: !3601)
!3645 = !DILocation(line: 1047, column: 22, scope: !3601)
!3646 = !DILocation(line: 1048, column: 33, scope: !3601)
!3647 = !DILocation(line: 1048, column: 23, scope: !3601)
!3648 = !DILocation(line: 1048, column: 48, scope: !3601)
!3649 = !DILocation(line: 1048, column: 51, scope: !3601)
!3650 = !DILocation(line: 1048, column: 43, scope: !3601)
!3651 = !DILocation(line: 1048, column: 59, scope: !3601)
!3652 = !DILocation(line: 1048, column: 65, scope: !3601)
!3653 = !DILocation(line: 1048, column: 54, scope: !3601)
!3654 = !DILocation(line: 1049, column: 33, scope: !3601)
!3655 = !DILocation(line: 1049, column: 23, scope: !3601)
!3656 = !DILocation(line: 1049, column: 43, scope: !3601)
!3657 = !DILocation(line: 1049, column: 65, scope: !3601)
!3658 = !DILocation(line: 1049, column: 54, scope: !3601)
!3659 = !DILocation(line: 1050, column: 28, scope: !3601)
!3660 = !DILocation(line: 1054, column: 16, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1054, column: 9)
!3662 = !DILocation(line: 1054, column: 10, scope: !3661)
!3663 = !DILocation(line: 1054, column: 9, scope: !3601)
!3664 = !DILocation(line: 1055, column: 9, scope: !3661)
!3665 = !DILocation(line: 1057, column: 15, scope: !3616)
!3666 = !DILocation(line: 1057, column: 9, scope: !3616)
!3667 = !DILocation(line: 0, scope: !3616)
!3668 = !DILocation(line: 1057, column: 9, scope: !3601)
!3669 = !DILocation(line: 1059, column: 13, scope: !3615)
!3670 = !DILocation(line: 1061, column: 33, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 1060, column: 9)
!3672 = !DILocation(line: 1061, column: 49, scope: !3671)
!3673 = !DILocation(line: 1061, column: 42, scope: !3671)
!3674 = !DILocation(line: 1061, column: 22, scope: !3671)
!3675 = !DILocation(line: 1062, column: 13, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1062, column: 13)
!3677 = !DILocation(line: 1063, column: 9, scope: !3671)
!3678 = !DILocation(line: 1066, column: 29, scope: !3612)
!3679 = !DILocation(line: 0, scope: !3612)
!3680 = !DILocation(line: 1066, column: 13, scope: !3612)
!3681 = !DILocation(line: 1068, column: 33, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1067, column: 13)
!3683 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 1066, column: 13)
!3684 = !DILocation(line: 1068, column: 42, scope: !3682)
!3685 = !DILocation(line: 1069, column: 37, scope: !3682)
!3686 = !DILocation(line: 1069, column: 57, scope: !3682)
!3687 = !DILocation(line: 1069, column: 56, scope: !3682)
!3688 = !DILocation(line: 1070, column: 37, scope: !3682)
!3689 = !DILocation(line: 1070, column: 57, scope: !3682)
!3690 = !DILocation(line: 1070, column: 56, scope: !3682)
!3691 = !DILocation(line: 1068, column: 22, scope: !3682)
!3692 = !DILocation(line: 1071, column: 62, scope: !3682)
!3693 = !DILocation(line: 1071, column: 44, scope: !3682)
!3694 = !DILocation(line: 1071, column: 17, scope: !3682)
!3695 = !DILocation(line: 1071, column: 60, scope: !3682)
!3696 = !DILocation(line: 1066, column: 48, scope: !3683)
!3697 = !DILocation(line: 1072, column: 24, scope: !3682)
!3698 = !DILocation(line: 0, scope: !3618)
!3699 = !DILocation(line: 1075, column: 9, scope: !3618)
!3700 = !DILocation(line: 1077, column: 13, scope: !3620)
!3701 = !DILocation(line: 1078, column: 22, scope: !3620)
!3702 = !DILocation(line: 1078, column: 45, scope: !3620)
!3703 = !DILocation(line: 1078, column: 56, scope: !3620)
!3704 = !DILocation(line: 1079, column: 22, scope: !3620)
!3705 = !DILocation(line: 1079, column: 45, scope: !3620)
!3706 = !DILocation(line: 1079, column: 56, scope: !3620)
!3707 = !DILocation(line: 1080, column: 29, scope: !3620)
!3708 = !DILocation(line: 1080, column: 40, scope: !3620)
!3709 = !DILocation(line: 1080, column: 18, scope: !3620)
!3710 = !DILocation(line: 1081, column: 66, scope: !3620)
!3711 = !DILocation(line: 1081, column: 40, scope: !3620)
!3712 = !DILocation(line: 1081, column: 13, scope: !3620)
!3713 = !DILocation(line: 1081, column: 64, scope: !3620)
!3714 = !DILocation(line: 1082, column: 9, scope: !3621)
!3715 = !DILocation(line: 1080, column: 60, scope: !3620)
!3716 = !DILocation(line: 1163, column: 29, scope: !3601)
!3717 = !DILocation(line: 1086, column: 13, scope: !3625)
!3718 = !DILocation(line: 1088, column: 13, scope: !3623)
!3719 = !DILocation(line: 1089, column: 21, scope: !3623)
!3720 = !DILocation(line: 1089, column: 13, scope: !3623)
!3721 = !DILocation(line: 0, scope: !1646, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 1090, column: 22, scope: !3623)
!3723 = !DILocation(line: 93, column: 15, scope: !1658, inlinedAt: !3722)
!3724 = !DILocation(line: 93, column: 9, scope: !1658, inlinedAt: !3722)
!3725 = !DILocation(line: 93, column: 9, scope: !1646, inlinedAt: !3722)
!3726 = !DILocation(line: 94, column: 16, scope: !1658, inlinedAt: !3722)
!3727 = !DILocation(line: 94, column: 9, scope: !1658, inlinedAt: !3722)
!3728 = !DILocation(line: 96, column: 19, scope: !1658, inlinedAt: !3722)
!3729 = !DILocation(line: 96, column: 26, scope: !1658, inlinedAt: !3722)
!3730 = !DILocation(line: 96, column: 42, scope: !1658, inlinedAt: !3722)
!3731 = !DILocation(line: 96, column: 75, scope: !1658, inlinedAt: !3722)
!3732 = !DILocation(line: 96, column: 16, scope: !1658, inlinedAt: !3722)
!3733 = !DILocation(line: 96, column: 9, scope: !1658, inlinedAt: !3722)
!3734 = !DILocation(line: 0, scope: !1658, inlinedAt: !3722)
!3735 = !DILocation(line: 1091, column: 17, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1091, column: 17)
!3737 = !DILocation(line: 1091, column: 17, scope: !3623)
!3738 = !DILocation(line: 1093, column: 20, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 1092, column: 13)
!3740 = !DILocation(line: 1093, column: 28, scope: !3739)
!3741 = !DILocation(line: 1093, column: 45, scope: !3739)
!3742 = !DILocation(line: 1093, column: 38, scope: !3739)
!3743 = !DILocation(line: 1093, column: 17, scope: !3739)
!3744 = !DILocation(line: 1095, column: 21, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1095, column: 21)
!3746 = !DILocation(line: 1095, column: 32, scope: !3745)
!3747 = !DILocation(line: 1095, column: 42, scope: !3745)
!3748 = !DILocation(line: 1095, column: 36, scope: !3745)
!3749 = !DILocation(line: 1095, column: 21, scope: !3739)
!3750 = !DILocation(line: 1096, column: 45, scope: !3745)
!3751 = !DILocation(line: 1096, column: 35, scope: !3745)
!3752 = !DILocation(line: 1096, column: 32, scope: !3745)
!3753 = !DILocation(line: 1098, column: 21, scope: !3739)
!3754 = !DILocation(line: 1100, column: 31, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1099, column: 17)
!3756 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1098, column: 21)
!3757 = !DILocation(line: 1100, column: 52, scope: !3755)
!3758 = !DILocation(line: 1100, column: 21, scope: !3755)
!3759 = !DILocation(line: 1101, column: 29, scope: !3755)
!3760 = !DILocation(line: 1101, column: 21, scope: !3755)
!3761 = !DILocation(line: 1103, column: 17, scope: !3755)
!3762 = !DILocation(line: 1090, column: 20, scope: !3623)
!3763 = !DILocation(line: 0, scope: !3736)
!3764 = !DILocation(line: 1109, column: 9, scope: !3624)
!3765 = !DILocation(line: 1109, column: 9, scope: !3623)
!3766 = !DILocation(line: 1113, column: 13, scope: !3627)
!3767 = !DILocation(line: 1114, column: 21, scope: !3627)
!3768 = !DILocation(line: 1114, column: 13, scope: !3627)
!3769 = !DILocation(line: 0, scope: !3630)
!3770 = !DILocation(line: 1115, column: 13, scope: !3630)
!3771 = !DILocation(line: 0, scope: !1553, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 1117, column: 22, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 1116, column: 13)
!3774 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1115, column: 13)
!3775 = !DILocation(line: 84, column: 15, scope: !1566, inlinedAt: !3772)
!3776 = !DILocation(line: 84, column: 9, scope: !1566, inlinedAt: !3772)
!3777 = !DILocation(line: 84, column: 9, scope: !1553, inlinedAt: !3772)
!3778 = !DILocation(line: 85, column: 16, scope: !1566, inlinedAt: !3772)
!3779 = !DILocation(line: 85, column: 9, scope: !1566, inlinedAt: !3772)
!3780 = !DILocation(line: 87, column: 26, scope: !1566, inlinedAt: !3772)
!3781 = !DILocation(line: 87, column: 42, scope: !1566, inlinedAt: !3772)
!3782 = !DILocation(line: 87, column: 75, scope: !1566, inlinedAt: !3772)
!3783 = !DILocation(line: 87, column: 16, scope: !1566, inlinedAt: !3772)
!3784 = !DILocation(line: 87, column: 9, scope: !1566, inlinedAt: !3772)
!3785 = !DILocation(line: 0, scope: !1566, inlinedAt: !3772)
!3786 = !DILocation(line: 1118, column: 67, scope: !3773)
!3787 = !DILocation(line: 1118, column: 44, scope: !3773)
!3788 = !DILocation(line: 1118, column: 17, scope: !3773)
!3789 = !DILocation(line: 1118, column: 65, scope: !3773)
!3790 = !DILocation(line: 1119, column: 21, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 1119, column: 21)
!3792 = !DILocation(line: 1119, column: 21, scope: !3773)
!3793 = !DILocation(line: 1121, column: 32, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1120, column: 17)
!3795 = !DILocation(line: 1121, column: 42, scope: !3794)
!3796 = !DILocation(line: 1121, column: 21, scope: !3794)
!3797 = !DILocation(line: 1122, column: 31, scope: !3794)
!3798 = !DILocation(line: 1122, column: 56, scope: !3794)
!3799 = !DILocation(line: 1122, column: 21, scope: !3794)
!3800 = !DILocation(line: 1123, column: 25, scope: !3794)
!3801 = !DILocation(line: 1124, column: 53, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 1123, column: 25)
!3803 = !DILocation(line: 1124, column: 43, scope: !3802)
!3804 = !DILocation(line: 1124, column: 25, scope: !3802)
!3805 = !DILocation(line: 1117, column: 41, scope: !3773)
!3806 = !DILocation(line: 1117, column: 80, scope: !3773)
!3807 = !DILocation(line: 1124, column: 40, scope: !3802)
!3808 = !DILocation(line: 1129, column: 17, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1129, column: 17)
!3810 = !DILocation(line: 1129, column: 28, scope: !3809)
!3811 = !DILocation(line: 1132, column: 17, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1132, column: 17)
!3813 = !DILocation(line: 1132, column: 17, scope: !3627)
!3814 = !DILocation(line: 1133, column: 25, scope: !3812)
!3815 = !DILocation(line: 1133, column: 17, scope: !3812)
!3816 = !DILocation(line: 1135, column: 17, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 1135, column: 17)
!3818 = !DILocation(line: 1136, column: 9, scope: !3624)
!3819 = !DILocation(line: 0, scope: !3624)
!3820 = !DILocation(line: 1138, column: 22, scope: !3625)
!3821 = !DILocation(line: 0, scope: !3632)
!3822 = !DILocation(line: 1140, column: 9, scope: !3632)
!3823 = !DILocation(line: 1142, column: 13, scope: !3634)
!3824 = !DILocation(line: 1143, column: 22, scope: !3634)
!3825 = !DILocation(line: 1143, column: 45, scope: !3634)
!3826 = !DILocation(line: 1143, column: 56, scope: !3634)
!3827 = !DILocation(line: 1144, column: 22, scope: !3634)
!3828 = !DILocation(line: 1144, column: 45, scope: !3634)
!3829 = !DILocation(line: 1144, column: 56, scope: !3634)
!3830 = !DILocation(line: 1146, column: 21, scope: !3634)
!3831 = !DILocation(line: 1146, column: 13, scope: !3634)
!3832 = !DILocation(line: 1147, column: 23, scope: !3634)
!3833 = distinct !DIAssignID()
!3834 = !DILocation(line: 1149, column: 23, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1149, column: 17)
!3836 = !DILocation(line: 1149, column: 17, scope: !3835)
!3837 = !DILocation(line: 1149, column: 17, scope: !3634)
!3838 = !DILocation(line: 1150, column: 22, scope: !3835)
!3839 = !DILocation(line: 1150, column: 17, scope: !3835)
!3840 = !DILocation(line: 1152, column: 32, scope: !3835)
!3841 = !DILocation(line: 1152, column: 51, scope: !3835)
!3842 = !DILocation(line: 1152, column: 80, scope: !3835)
!3843 = !DILocation(line: 1152, column: 22, scope: !3835)
!3844 = !DILocation(line: 0, scope: !3835)
!3845 = !DILocation(line: 1154, column: 66, scope: !3634)
!3846 = !DILocation(line: 1154, column: 40, scope: !3634)
!3847 = !DILocation(line: 1154, column: 13, scope: !3634)
!3848 = !DILocation(line: 1154, column: 64, scope: !3634)
!3849 = !DILocation(line: 1155, column: 17, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1155, column: 17)
!3851 = !DILocation(line: 1155, column: 17, scope: !3634)
!3852 = !DILocation(line: 1157, column: 28, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 1156, column: 13)
!3854 = !DILocation(line: 1157, column: 38, scope: !3853)
!3855 = !DILocation(line: 1157, column: 17, scope: !3853)
!3856 = !DILocation(line: 1158, column: 27, scope: !3853)
!3857 = !DILocation(line: 1158, column: 48, scope: !3853)
!3858 = !DILocation(line: 1158, column: 17, scope: !3853)
!3859 = !DILocation(line: 1159, column: 25, scope: !3853)
!3860 = !DILocation(line: 1159, column: 17, scope: !3853)
!3861 = !DILocation(line: 1160, column: 13, scope: !3853)
!3862 = !DILocation(line: 1161, column: 9, scope: !3635)
!3863 = !DILocation(line: 1154, column: 56, scope: !3634)
!3864 = !DILocation(line: 1163, column: 25, scope: !3601)
!3865 = !DILocation(line: 1163, column: 11, scope: !3601)
!3866 = !DILocation(line: 1163, column: 22, scope: !3601)
!3867 = !DILocation(line: 1164, column: 32, scope: !3601)
!3868 = !DILocation(line: 1164, column: 22, scope: !3601)
!3869 = !DILocation(line: 1165, column: 11, scope: !3601)
!3870 = !DILocation(line: 1165, column: 24, scope: !3601)
!3871 = !DILocation(line: 1166, column: 1, scope: !3601)
!3872 = !DISubprogram(name: "x264_mb_mc_8x8", scope: !6, file: !6, line: 314, type: !2235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3873 = distinct !DISubprogram(name: "x264_macroblock_encode_p4x4", scope: !3, file: !3, line: 1171, type: !2235, scopeLine: 1172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3875 = !DILocalVariable(name: "h", arg: 1, scope: !3873, file: !3, line: 1171, type: !232)
!3876 = !DILocalVariable(name: "i4", arg: 2, scope: !3873, file: !3, line: 1171, type: !195)
!3877 = !DILocalVariable(name: "i_qp", scope: !3873, file: !3, line: 1173, type: !195)
!3878 = !DILocalVariable(name: "p_fenc", scope: !3873, file: !3, line: 1174, type: !424)
!3879 = !DILocalVariable(name: "p_fdec", scope: !3873, file: !3, line: 1175, type: !424)
!3880 = !DILocalVariable(name: "nz", scope: !3873, file: !3, line: 1176, type: !195)
!3881 = !DILocalVariable(name: "dct4x4", scope: !3882, file: !3, line: 1187, type: !879, align: 128)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1186, column: 5)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1180, column: 9)
!3884 = distinct !DIAssignID()
!3885 = !DILocation(line: 0, scope: !3882)
!3886 = !DILocation(line: 0, scope: !3873)
!3887 = !DILocation(line: 1173, column: 22, scope: !3873)
!3888 = !DILocation(line: 1174, column: 34, scope: !3873)
!3889 = !DILocation(line: 1174, column: 24, scope: !3873)
!3890 = !DILocation(line: 1174, column: 44, scope: !3873)
!3891 = !DILocation(line: 1175, column: 34, scope: !3873)
!3892 = !DILocation(line: 1175, column: 24, scope: !3873)
!3893 = !DILocation(line: 1175, column: 44, scope: !3873)
!3894 = !DILocation(line: 1180, column: 15, scope: !3883)
!3895 = !DILocation(line: 1180, column: 9, scope: !3883)
!3896 = !DILocation(line: 1180, column: 9, scope: !3873)
!3897 = !DILocation(line: 1182, column: 25, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1181, column: 5)
!3899 = !DILocation(line: 1182, column: 41, scope: !3898)
!3900 = !DILocation(line: 1182, column: 34, scope: !3898)
!3901 = !DILocation(line: 1182, column: 14, scope: !3898)
!3902 = !DILocation(line: 1183, column: 54, scope: !3898)
!3903 = !DILocation(line: 1183, column: 21, scope: !3898)
!3904 = !DILocation(line: 1183, column: 36, scope: !3898)
!3905 = !DILocation(line: 1183, column: 9, scope: !3898)
!3906 = !DILocation(line: 1183, column: 52, scope: !3898)
!3907 = !DILocation(line: 1184, column: 5, scope: !3898)
!3908 = !DILocation(line: 1187, column: 9, scope: !3882)
!3909 = !DILocation(line: 1188, column: 12, scope: !3882)
!3910 = !DILocation(line: 1188, column: 17, scope: !3882)
!3911 = !DILocation(line: 1188, column: 9, scope: !3882)
!3912 = !DILocation(line: 0, scope: !1553, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1189, column: 14, scope: !3882)
!3914 = !DILocation(line: 84, column: 15, scope: !1566, inlinedAt: !3913)
!3915 = !DILocation(line: 84, column: 9, scope: !1566, inlinedAt: !3913)
!3916 = !DILocation(line: 84, column: 9, scope: !1553, inlinedAt: !3913)
!3917 = !DILocation(line: 85, column: 16, scope: !1566, inlinedAt: !3913)
!3918 = !DILocation(line: 85, column: 9, scope: !1566, inlinedAt: !3913)
!3919 = !DILocation(line: 87, column: 26, scope: !1566, inlinedAt: !3913)
!3920 = !DILocation(line: 87, column: 42, scope: !1566, inlinedAt: !3913)
!3921 = !DILocation(line: 87, column: 75, scope: !1566, inlinedAt: !3913)
!3922 = !DILocation(line: 87, column: 16, scope: !1566, inlinedAt: !3913)
!3923 = !DILocation(line: 87, column: 9, scope: !1566, inlinedAt: !3913)
!3924 = !DILocation(line: 0, scope: !1566, inlinedAt: !3913)
!3925 = !DILocation(line: 1190, column: 54, scope: !3882)
!3926 = !DILocation(line: 1190, column: 21, scope: !3882)
!3927 = !DILocation(line: 1190, column: 36, scope: !3882)
!3928 = !DILocation(line: 1190, column: 9, scope: !3882)
!3929 = !DILocation(line: 1190, column: 52, scope: !3882)
!3930 = !DILocation(line: 1191, column: 13, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 1191, column: 13)
!3932 = !DILocation(line: 1191, column: 13, scope: !3882)
!3933 = !DILocation(line: 1193, column: 24, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1192, column: 9)
!3935 = !DILocation(line: 1193, column: 41, scope: !3934)
!3936 = !DILocation(line: 1193, column: 34, scope: !3934)
!3937 = !DILocation(line: 1193, column: 13, scope: !3934)
!3938 = !DILocation(line: 1194, column: 23, scope: !3934)
!3939 = !DILocation(line: 1194, column: 44, scope: !3934)
!3940 = !DILocation(line: 1194, column: 13, scope: !3934)
!3941 = !DILocation(line: 1195, column: 21, scope: !3934)
!3942 = !DILocation(line: 1195, column: 13, scope: !3934)
!3943 = !DILocation(line: 1196, column: 9, scope: !3934)
!3944 = !DILocation(line: 1197, column: 5, scope: !3883)
!3945 = !DILocation(line: 1198, column: 1, scope: !3873)
!3946 = !DISubprogram(name: "x264_quant_8x8_trellis", scope: !2112, file: !2112, line: 62, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
